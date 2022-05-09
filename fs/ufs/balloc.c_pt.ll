; ModuleID = '/llk/IR_all_yes/fs/ufs/balloc.c_pt.bc'
source_filename = "../fs/ufs/balloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.67 }
%union.anon.67 = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
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
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ufs_sb_private_info = type { %struct.ufs_buffer_head, %struct.ufs_csum_core, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.ufs_buffer_head = type { i64, i64, [8 x ptr] }
%struct.ufs_csum_core = type { i64, i64, i64, i64, i64 }
%struct.ufs_sb_info = type { ptr, ptr, i32, i32, ptr, [8 x ptr], [8 x i32], i16, i32, ptr, i32, %struct.delayed_work, %struct.spinlock, %struct.mutex }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ufs_cylinder_group = type { i32, i32, i32, i32, i16, i16, i32, %struct.ufs_csum, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, %union.anon.77, [1 x i8] }
%struct.ufs_csum = type { i32, i32, i32, i32 }
%union.anon.77 = type { %struct.anon.79 }
%struct.anon.79 = type { i32, i32, i32, i32, i32, [3 x i32], i64, [3 x i64] }
%struct.ufs_cg_private_info = type { %struct.ufs_buffer_head, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ufs_super_block_first = type { %union.anon.81, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.84, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ufs_csum, i8, i8, i8, i8, [300 x i8] }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32 }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { i32 }
%struct.page = type { i32, %union.anon.6, %union.anon.64, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }

@ufs_free_fragments.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 13, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ufs\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ufs_free_fragments\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ufs/balloc.c\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"UFSD (%s, %d): %s:\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ufs: UFSD (%s, %d): %s:\00", [40 x i8] zeroinitializer }, align 32
@ufs_free_fragments.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 13, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ENTER, fragment %llu, count %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ufs: ENTER, fragment %llu, count %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"internal error\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"freeing blocks are outside device\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"internal error, bad magic number on cg %u\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bit already cleared for fragment %u\00", [60 x i8] zeroinitializer }, align 32
@ufs_free_fragments.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 30, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_free_fragments.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 0, i8 30, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EXIT\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ufs: EXIT\0A\00", [21 x i8] zeroinitializer }, align 32
@ufs_free_fragments.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 32, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_free_fragments.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 0, i8 32, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EXIT (FAILED)\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ufs: EXIT (FAILED)\0A\00", [44 x i8] zeroinitializer }, align 32
@ufs_free_blocks.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.3, i8 0, i8 37, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ufs_free_blocks\00", [16 x i8] zeroinitializer }, align 32
@ufs_free_blocks.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.5, i8 0, i8 37, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"internal error, fragment %llu, count %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"freeing free fragment\00", [42 x i8] zeroinitializer }, align 32
@ufs_free_blocks.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.3, i8 0, i8 54, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_free_blocks.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.11, i8 0, i8 54, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_free_blocks.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.3, i8 0, i8 56, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_free_blocks.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.13, i8 0, i8 56, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_new_fragments.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.3, i8 0, i8 89, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ufs_new_fragments\00", [46 x i8] zeroinitializer }, align 32
@ufs_new_fragments.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 89, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ENTER, ino %lu, fragment %llu, goal %llu, count %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ufs: ENTER, ino %lu, fragment %llu, goal %llu, count %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"internal warning fragment %llu, count %u\00", [55 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"internal error, fragment %llu, tmp %llu\0A\00", [55 x i8] zeroinitializer }, align 32
@ufs_new_fragments.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.3, i8 0, i8 97, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_new_fragments.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.23, i8 0, i8 97, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"EXIT (ALREADY ALLOCATED)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ufs: EXIT (ALREADY ALLOCATED)\0A\00", [33 x i8] zeroinitializer }, align 32
@ufs_new_fragments.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.3, i8 0, i8 98, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_new_fragments.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.23, i8 0, i8 98, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_new_fragments.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.3, i8 0, i8 101, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_new_fragments.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.13, i8 0, i8 101, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_new_fragments.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.3, i8 0, i8 108, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_new_fragments.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.25, i8 0, i8 108, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EXIT, result %llu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ufs: EXIT, result %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@ufs_new_fragments.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.3, i8 0, i8 113, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_new_fragments.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.25, i8 0, i8 113, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_new_fragments.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.3, i8 0, i8 121, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_new_fragments.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.25, i8 0, i8 121, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_new_fragments.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.3, i8 0, i8 122, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_new_fragments.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.13, i8 0, i8 122, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@ufs_change_blocknr.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.3, i8 0, i8 63, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ufs_change_blocknr\00", [45 x i8] zeroinitializer }, align 32
@ufs_change_blocknr.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 63, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ENTER, ino %lu, count %u, oldb %llu, newb %llu\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ufs: ENTER, ino %lu, count %u, oldb %llu, newb %llu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"read of page %llu failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"read of block failed\0A\00", [42 x i8] zeroinitializer }, align 32
@ufs_change_blocknr.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.3, i8 0, i8 77, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_change_blocknr.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.33, i8 0, i8 77, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c" change from %llu to %llu, pos %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ufs:  change from %llu to %llu, pos %u\0A\00", [56 x i8] zeroinitializer }, align 32
@ufs_change_blocknr.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.3, i8 0, i8 80, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_change_blocknr.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.11, i8 0, i8 80, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@ufs_add_fragments.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.3, i8 0, i8 -127, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ufs_add_fragments\00", [46 x i8] zeroinitializer }, align 32
@ufs_add_fragments.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 -127, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ENTER, fragment %llu, oldcount %u, newcount %u\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ufs: ENTER, fragment %llu, oldcount %u, newcount %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"internal error or corrupted bitmap on cg %u\00", [52 x i8] zeroinitializer }, align 32
@ufs_add_fragments.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.3, i8 0, i8 -113, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_add_fragments.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.42, i8 0, i8 -113, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EXIT, fragment %llu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ufs: EXIT, fragment %llu\0A\00", [38 x i8] zeroinitializer }, align 32
@ufs_alloc_fragments.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.3, i8 0, i8 -107, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ufs_alloc_fragments\00", [44 x i8] zeroinitializer }, align 32
@ufs_alloc_fragments.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 -107, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ENTER, ino %lu, cgno %u, goal %llu, count %u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ufs: ENTER, ino %lu, cgno %u, goal %llu, count %u\0A\00", [45 x i8] zeroinitializer }, align 32
@ufs_alloc_fragments.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.3, i8 0, i8 -99, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_alloc_fragments.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.13, i8 0, i8 -99, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_alloc_fragments.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.3, i8 0, i8 -82, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_alloc_fragments.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.47, i8 0, i8 -82, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EXIT3, result %llu\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ufs: EXIT3, result %llu\0A\00", [39 x i8] zeroinitializer }, align 32
@ufs_alloccg_block.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.3, i8 0, i8 -79, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ufs_alloccg_block\00", [46 x i8] zeroinitializer }, align 32
@ufs_alloccg_block.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 -79, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ENTER, goal %llu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs: ENTER, goal %llu\0A\00", [41 x i8] zeroinitializer }, align 32
@ufs_alloccg_block.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.3, i8 0, i8 -68, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_alloccg_block.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.25, i8 0, i8 -68, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_bitmap_search.mask_arr = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023], [60 x i8] zeroinitializer }, align 32
@ufs_bitmap_search.want_arr = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 2, i32 6, i32 14, i32 30, i32 62, i32 126, i32 254, i32 510], [60 x i8] zeroinitializer }, align 32
@ufs_bitmap_search.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.3, i8 0, i8 -53, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ufs_bitmap_search\00", [46 x i8] zeroinitializer }, align 32
@ufs_bitmap_search.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 0, i8 -53, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ENTER, cg %u, goal %llu, count %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ufs: ENTER, cg %u, goal %llu, count %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"bitmap corrupted on cg %u, start %u, length %u, count %u, freeoff %u\0A\00", [58 x i8] zeroinitializer }, align 32
@ufs_bitmap_search.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.3, i8 0, i8 -42, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_bitmap_search.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.25, i8 0, i8 -42, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"block not in map on cg %u\0A\00", [37 x i8] zeroinitializer }, align 32
@ufs_bitmap_search.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.3, i8 0, i8 -40, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_bitmap_search.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.13, i8 0, i8 -40, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_fragtable_8fpb = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\01\01\02\01\01\02\04\01\01\01\03\02\03\04\08\01\01\01\03\01\01\03\05\02\03\03\02\04\05\08\10\01\01\01\03\01\01\03\05\01\01\01\03\03\03\05\09\02\03\03\02\03\03\02\06\04\05\05\06\08\09\10 \01\01\01\03\01\01\03\05\01\01\01\03\03\03\05\09\01\01\01\03\01\01\03\05\03\03\03\03\05\05\09\11\02\03\03\02\03\03\02\06\03\03\03\03\02\03\06\0A\04\05\05\06\05\05\06\04\08\09\09\0A\10\11 @\01\01\01\03\01\01\03\05\01\01\01\03\03\03\05\09\01\01\01\03\01\01\03\05\03\03\03\03\05\05\09\11\01\01\01\03\01\01\03\05\01\01\01\03\03\03\05\09\03\03\03\03\03\03\03\07\05\05\05\07\09\09\11!\02\03\03\02\03\03\02\06\03\03\03\03\02\03\06\0A\03\03\03\03\03\03\03\07\02\03\03\02\06\07\0A\12\04\05\05\06\05\05\06\04\05\05\05\07\06\07\04\0C\08\09\09\0A\09\09\0A\0C\10\11\11\12 !@\80", [64 x i8] zeroinitializer }, align 32
@ufs_fragtable_other = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\16\16*\16\16&N\16\16\16>*>N\8A\16\16\16>\16\166^\16\16\16>>>^\9E\16\16\16>\16\166^\16\16\16>>>^\9E*>>*>>.n>>>>*>n\AA\16\16\16>\16\166^\16\16\16>>>^\9E\16\16\16>\16\166^\16\16\16>>>^\9E&66.66&n666>.>n\AEN^^n^^nN^^^~n~N\CE\16\16\16>\16\166^\16\16\16>>>^\9E\16\16\16>\16\166^\16\16\16>>>^\9E\16\16\16>\16\166^\16\16\16>>>^\9E>>>>>>>~>>>>>>~\BE*>>*>>.n>>>>*>n\AA>>>>>>>~>>>>>>~\BEN^^n^^nN^^^~n~N\CE\8A\9E\9E\AA\9E\9E\AE\CE\9E\9E\9E\BE\AA\BE\CE\8A", [64 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.59 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.60 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 51, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 55, i32 40 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 62, i32 40 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 71, i32 40 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 84, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 123, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 128, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 147, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 151, i32 37 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 186, i32 37 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 354, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 367, i32 40 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 380, i32 39 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 388, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 435, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 366, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 253, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 272, i32 8 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 303, i32 9 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 308, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 414, i32 1 }
@___asan_gen_.172 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 452, i32 1 }
@___asan_gen_.175 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 717, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 517, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 557, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 574, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 597, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 696, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 709, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [9 x i8] c"mask_arr\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 803, i32 19 }
@___asan_gen_.222 = private unnamed_addr constant [9 x i8] c"want_arr\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 806, i32 19 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 814, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 834, i32 7 }
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 865, i32 37 }
@___asan_gen_.240 = private unnamed_addr constant [19 x i8] c"ufs_fragtable_8fpb\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 925, i32 22 }
@___asan_gen_.243 = private unnamed_addr constant [20 x i8] c"ufs_fragtable_other\00", align 1
@___asan_gen_.244 = private constant [19 x i8] c"../fs/ufs/balloc.c\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 944, i32 22 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @ufs_bitmap_search.mask_arr, ptr @ufs_bitmap_search.want_arr, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @ufs_fragtable_8fpb, ptr @ufs_fragtable_other], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_bitmap_search.mask_arr to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_bitmap_search.want_arr to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fragtable_8fpb to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_fragtable_other to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufs_free_fragments(ptr noundef %inode, i64 noundef %fragment, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_free_fragments.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_free_fragments, %do.body5)) #7
          to label %if.then [label %do.body5], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_free_fragments.__UNIQUE_ID_ddebug260, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 52, ptr noundef nonnull @.str.1) #7
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_free_fragments.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_free_fragments, %do.end22)) #7
          to label %if.then19 [label %do.end22], !srcloc !172

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_free_fragments.__UNIQUE_ID_ddebug261, ptr noundef nonnull @.str.6, i64 noundef %fragment, i32 noundef %count) #7
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body5
  %s_fpbmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 46
  %6 = ptrtoint ptr %s_fpbmask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_fpbmask, align 8
  %conv = zext i32 %7 to i64
  %and = and i64 %conv, %fragment
  %conv23 = zext i32 %count to i64
  %add = add nuw nsw i64 %and, %conv23
  %s_fpg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 37
  %8 = ptrtoint ptr %s_fpg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_fpg, align 8
  %conv24 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv24)
  %cmp = icmp ugt i64 %add, %conv24
  br i1 %cmp, label %if.then26, label %do.end22.if.end27_crit_edge

do.end22.if.end27_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then26:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @ufs_error(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %do.end22.if.end27_crit_edge
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.ufs_sb_info, ptr %11, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #7
  %12 = ptrtoint ptr %s_fpg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_fpg, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %fragment)
  %cmp164.i = icmp ult i64 %fragment, 4294967296
  br i1 %cmp164.i, label %if.then168.i666, label %if.else174.i667, !prof !173

if.then168.i666:                                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i = trunc i64 %fragment to i32
  %.frozen = freeze i32 %13
  %div172.i = udiv i32 %conv169.i, %.frozen
  %14 = mul i32 %div172.i, %.frozen
  %rem170.i.decomposed = sub i32 %conv169.i, %14
  br label %ufs_dtogd.exit

if.else174.i667:                                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %fragment) #10
  %asmresult1.i.i = extractvalue { i64, i64 } %15, 1
  %conv30778 = trunc i64 %asmresult1.i.i to i32
  %asmresult.i261.i = extractvalue { i64, i64 } %15, 0
  %shr.i.i = lshr i64 %asmresult.i261.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %ufs_dtogd.exit

ufs_dtogd.exit:                                   ; preds = %if.else174.i667, %if.then168.i666
  %conv30779 = phi i32 [ %div172.i, %if.then168.i666 ], [ %conv30778, %if.else174.i667 ]
  %__rem.0.i = phi i32 [ %rem170.i.decomposed, %if.then168.i666 ], [ %conv.i.i, %if.else174.i667 ]
  %s_ncg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 10
  %16 = ptrtoint ptr %s_ncg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_ncg, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv30779)
  %cmp32.not = icmp ugt i32 %17, %conv30779
  br i1 %cmp32.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %ufs_dtogd.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @ufs_panic(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #7
  br label %failed

if.end35:                                         ; preds = %ufs_dtogd.exit
  %call36 = tail call ptr @ufs_load_cylinder(ptr noundef %1, i32 noundef %conv30779) #7
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.end35.failed_crit_edge, label %if.end39

if.end35.failed_crit_edge:                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

if.end39:                                         ; preds = %if.end35
  %bh = getelementptr inbounds %struct.ufs_buffer_head, ptr %call36, i32 0, i32 2
  %18 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bh, align 8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_data, align 4
  %cg_magic = getelementptr inbounds %struct.ufs_cylinder_group, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %cg_magic to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cg_magic, align 4
  %24 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i668 = icmp eq i32 %27, 0
  %28 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  %retval.0.i669 = select i1 %cmp.i668, i32 %28, i32 %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 590421, i32 %retval.0.i669)
  %cmp42 = icmp eq i32 %retval.0.i669, 590421
  br i1 %cmp42, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @ufs_panic(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9, i32 noundef %conv30779) #7
  br label %failed

if.end45:                                         ; preds = %if.end39
  %add46 = add i32 %__rem.0.i, %count
  %29 = ptrtoint ptr %s_fpbmask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_fpbmask, align 8
  %neg = xor i32 %30, -1
  %and48 = and i32 %__rem.0.i, %neg
  %c_freeoff = getelementptr inbounds %struct.ufs_cg_private_info, ptr %call36, i32 0, i32 11
  %31 = ptrtoint ptr %c_freeoff to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %c_freeoff, align 4
  %shr = lshr i32 %and48, 3
  %add51 = add i32 %shr, %32
  %s_fshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 18
  %33 = ptrtoint ptr %s_fshift to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_fshift, align 8
  %shr52 = lshr i32 %add51, %34
  %arrayidx53 = getelementptr %struct.ufs_buffer_head, ptr %call36, i32 0, i32 2, i32 %shr52
  %35 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx53, align 4
  %b_data54 = getelementptr inbounds %struct.buffer_head, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %b_data54 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %b_data54, align 4
  %s_fmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 16
  %39 = ptrtoint ptr %s_fmask to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_fmask, align 8
  %neg58 = xor i32 %40, -1
  %and59 = and i32 %add51, %neg58
  %add.ptr = getelementptr i8, ptr %38, i32 %and59
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %add.ptr, align 1
  %conv60 = zext i8 %42 to i32
  %and61 = and i32 %and48, 7
  %shr62 = lshr i32 %conv60, %and61
  %s_fpb = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 13
  %43 = ptrtoint ptr %s_fpb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %s_fpb, align 4
  %sub = sub i32 8, %44
  %shr63 = lshr i32 255, %sub
  %and64 = and i32 %shr63, %shr62
  %cg_frsum = getelementptr inbounds %struct.ufs_cylinder_group, ptr %21, i32 0, i32 11
  %45 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %25, align 4
  %s_fpb.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %46, i32 0, i32 13
  %47 = ptrtoint ptr %s_fpb.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_fpb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp29.not.i = icmp eq i32 %48, 0
  br i1 %cmp29.not.i, label %if.end45.ufs_fragacct.exit_crit_edge, label %if.end45.for.body.i_crit_edge

if.end45.for.body.i_crit_edge:                    ; preds = %if.end45
  br label %for.body.i

if.end45.ufs_fragacct.exit_crit_edge:             ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %ufs_fragacct.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end45.for.body.i_crit_edge
  %pos.031.i = phi i32 [ %inc4.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end45.for.body.i_crit_edge ]
  %fragsize.030.i = phi i32 [ %fragsize.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end45.for.body.i_crit_edge ]
  %shl.i671 = shl nuw i32 1, %pos.031.i
  %and.i = and i32 %and64, %shl.i671
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i672 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i672, label %if.else.i, label %if.then.i673

if.then.i673:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i = add i32 %fragsize.030.i, 1
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fragsize.030.i)
  %cmp1.not.i = icmp eq i32 %fragsize.030.i, 0
  br i1 %cmp1.not.i, label %if.else.i.for.inc.i_crit_edge, label %if.then2.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr i32, ptr %cg_frsum, i32 %fragsize.030.i
  %49 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %s_bytesex.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_bytesex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i.i = icmp eq i32 %52, 0
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i, align 4
  %add.i3.i.i = add i32 %54, -1
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #7
  %add.i.i.i = add i32 %55, -1
  %56 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i) #7
  %storemerge.i.i = select i1 %cmp.i.i, i32 %56, i32 %add.i3.i.i
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %storemerge.i.i, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then2.i, %if.else.i.for.inc.i_crit_edge, %if.then.i673
  %fragsize.1.i = phi i32 [ %inc.i, %if.then.i673 ], [ 0, %if.then2.i ], [ 0, %if.else.i.for.inc.i_crit_edge ]
  %inc4.i = add nuw i32 %pos.031.i, 1
  %58 = ptrtoint ptr %s_fpb.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %s_fpb.i, align 4
  %cmp.i674 = icmp ult i32 %inc4.i, %59
  br i1 %cmp.i674, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fragsize.1.i)
  %cmp5.not.i = icmp ne i32 %fragsize.1.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %fragsize.1.i, i32 %59)
  %cmp7.i = icmp ult i32 %fragsize.1.i, %59
  %or.cond.i675 = select i1 %cmp5.not.i, i1 %cmp7.i, i1 false
  br i1 %or.cond.i675, label %if.then8.i, label %for.end.i.ufs_fragacct.exit_crit_edge

for.end.i.ufs_fragacct.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ufs_fragacct.exit

if.then8.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx9.i = getelementptr i32, ptr %cg_frsum, i32 %fragsize.1.i
  %60 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i24.i = getelementptr inbounds %struct.ufs_sb_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %s_bytesex.i24.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %s_bytesex.i24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.i25.i = icmp eq i32 %63, 0
  %64 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx9.i, align 4
  %add.i3.i26.i = add i32 %65, -1
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #7
  %add.i.i27.i = add i32 %66, -1
  %67 = tail call i32 @llvm.bswap.i32(i32 %add.i.i27.i) #7
  %storemerge.i28.i = select i1 %cmp.i25.i, i32 %67, i32 %add.i3.i26.i
  %68 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %storemerge.i28.i, ptr %arrayidx9.i, align 4
  br label %ufs_fragacct.exit

ufs_fragacct.exit:                                ; preds = %if.then8.i, %for.end.i.ufs_fragacct.exit_crit_edge, %if.end45.ufs_fragacct.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %__rem.0.i, i32 %add46)
  %cmp65794 = icmp ult i32 %__rem.0.i, %add46
  br i1 %cmp65794, label %ufs_fragacct.exit.for.body_crit_edge, label %ufs_fragacct.exit.for.end_crit_edge

ufs_fragacct.exit.for.end_crit_edge:              ; preds = %ufs_fragacct.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

ufs_fragacct.exit.for.body_crit_edge:             ; preds = %ufs_fragacct.exit
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %ufs_fragacct.exit.for.body_crit_edge
  %i.0795 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %__rem.0.i, %ufs_fragacct.exit.for.body_crit_edge ]
  %69 = ptrtoint ptr %c_freeoff to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %c_freeoff, align 4
  %shr70 = lshr i32 %i.0795, 3
  %add71 = add i32 %70, %shr70
  %71 = ptrtoint ptr %s_fshift to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %s_fshift, align 8
  %shr73 = lshr i32 %add71, %72
  %arrayidx74 = getelementptr %struct.ufs_buffer_head, ptr %call36, i32 0, i32 2, i32 %shr73
  %73 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx74, align 4
  %b_data75 = getelementptr inbounds %struct.buffer_head, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %b_data75 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %b_data75, align 4
  %77 = ptrtoint ptr %s_fmask to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %s_fmask, align 8
  %neg80 = xor i32 %78, -1
  %and81 = and i32 %add71, %neg80
  %add.ptr82 = getelementptr i8, ptr %76, i32 %and81
  %79 = ptrtoint ptr %add.ptr82 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %add.ptr82, align 1
  %conv83 = zext i8 %80 to i32
  %and84 = and i32 %i.0795, 7
  %shl = shl nuw nsw i32 1, %and84
  %and85 = and i32 %shl, %conv83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.then87, label %if.else

if.then87:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %81 = trunc i32 %shl to i8
  %conv107 = or i8 %80, %81
  %82 = ptrtoint ptr %add.ptr82 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv107, ptr %add.ptr82, align 1
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @ufs_error(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, i32 noundef %i.0795) #7
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then87
  %inc = add i32 %i.0795, 1
  %exitcond.not = icmp eq i32 %inc, %add46
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %ufs_fragacct.exit.for.end_crit_edge
  %83 = ptrtoint ptr %s_fshift to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %s_fshift, align 8
  %shl110 = shl i32 %count, %84
  %conv111 = zext i32 %shl110 to i64
  tail call void @inode_sub_bytes(ptr noundef %inode, i64 noundef %conv111) #7
  %cs_nffree = getelementptr inbounds %struct.ufs_cylinder_group, ptr %21, i32 0, i32 7, i32 3
  %85 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i677 = getelementptr inbounds %struct.ufs_sb_info, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %s_bytesex.i677 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %s_bytesex.i677, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.i678 = icmp eq i32 %88, 0
  %89 = ptrtoint ptr %cs_nffree to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cs_nffree, align 4
  %add.i3.i = add i32 %90, %count
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #7
  %add.i.i = add i32 %91, %count
  %92 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #7
  %storemerge.i = select i1 %cmp.i678, i32 %92, i32 %add.i3.i
  %93 = ptrtoint ptr %cs_nffree to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %storemerge.i, ptr %cs_nffree, align 4
  %cs_nffree113 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 1, i32 3
  %94 = ptrtoint ptr %cs_nffree113 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %cs_nffree113, align 8
  %add114 = add i64 %95, %conv23
  store i64 %add114, ptr %cs_nffree113, align 8
  %96 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %s_fs_info.i, align 16
  %s_csp = getelementptr inbounds %struct.ufs_sb_info, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %s_csp to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %s_csp, align 4
  %cs_nffree117 = getelementptr %struct.ufs_csum, ptr %99, i32 %conv30779, i32 3
  %s_bytesex.i681 = getelementptr inbounds %struct.ufs_sb_info, ptr %97, i32 0, i32 2
  %100 = ptrtoint ptr %s_bytesex.i681 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %s_bytesex.i681, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp.i682 = icmp eq i32 %101, 0
  %102 = ptrtoint ptr %cs_nffree117 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cs_nffree117, align 4
  %add.i3.i683 = add i32 %103, %count
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #7
  %add.i.i684 = add i32 %104, %count
  %105 = tail call i32 @llvm.bswap.i32(i32 %add.i.i684) #7
  %storemerge.i685 = select i1 %cmp.i682, i32 %105, i32 %add.i3.i683
  %106 = ptrtoint ptr %cs_nffree117 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %storemerge.i685, ptr %cs_nffree117, align 4
  %107 = ptrtoint ptr %c_freeoff to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %c_freeoff, align 4
  %add122 = add i32 %108, %shr
  %109 = ptrtoint ptr %s_fshift to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %s_fshift, align 8
  %shr124 = lshr i32 %add122, %110
  %arrayidx125 = getelementptr %struct.ufs_buffer_head, ptr %call36, i32 0, i32 2, i32 %shr124
  %111 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx125, align 4
  %b_data126 = getelementptr inbounds %struct.buffer_head, ptr %112, i32 0, i32 5
  %113 = ptrtoint ptr %b_data126 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %b_data126, align 4
  %115 = ptrtoint ptr %s_fmask to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %s_fmask, align 8
  %neg131 = xor i32 %116, -1
  %and132 = and i32 %add122, %neg131
  %add.ptr133 = getelementptr i8, ptr %114, i32 %and132
  %117 = ptrtoint ptr %add.ptr133 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %add.ptr133, align 1
  %conv134 = zext i8 %118 to i32
  %shr136 = lshr i32 %conv134, %and61
  %119 = ptrtoint ptr %s_fpb to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %s_fpb, align 4
  %sub138 = sub i32 8, %120
  %shr139 = lshr i32 255, %sub138
  %and140 = and i32 %shr139, %shr136
  %121 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %s_fs_info.i, align 16
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  %s_fpb.i687 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %124, i32 0, i32 13
  %125 = ptrtoint ptr %s_fpb.i687 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %s_fpb.i687, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp29.not.i688 = icmp eq i32 %126, 0
  br i1 %cmp29.not.i688, label %for.end.ufs_fragacct.exit721_crit_edge, label %for.end.for.body.i694_crit_edge

for.end.for.body.i694_crit_edge:                  ; preds = %for.end
  br label %for.body.i694

for.end.ufs_fragacct.exit721_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ufs_fragacct.exit721

for.body.i694:                                    ; preds = %for.inc.i709.for.body.i694_crit_edge, %for.end.for.body.i694_crit_edge
  %pos.031.i689 = phi i32 [ %inc4.i707, %for.inc.i709.for.body.i694_crit_edge ], [ 0, %for.end.for.body.i694_crit_edge ]
  %fragsize.030.i690 = phi i32 [ %fragsize.1.i706, %for.inc.i709.for.body.i694_crit_edge ], [ 0, %for.end.for.body.i694_crit_edge ]
  %shl.i691 = shl nuw i32 1, %pos.031.i689
  %and.i692 = and i32 %and140, %shl.i691
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i692)
  %tobool.not.i693 = icmp eq i32 %and.i692, 0
  br i1 %tobool.not.i693, label %if.else.i698, label %if.then.i696

if.then.i696:                                     ; preds = %for.body.i694
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i695 = add i32 %fragsize.030.i690, 1
  br label %for.inc.i709

if.else.i698:                                     ; preds = %for.body.i694
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fragsize.030.i690)
  %cmp1.not.i697 = icmp eq i32 %fragsize.030.i690, 0
  br i1 %cmp1.not.i697, label %if.else.i698.for.inc.i709_crit_edge, label %if.then2.i705

if.else.i698.for.inc.i709_crit_edge:              ; preds = %if.else.i698
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i709

if.then2.i705:                                    ; preds = %if.else.i698
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i699 = getelementptr i32, ptr %cg_frsum, i32 %fragsize.030.i690
  %127 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i.i700 = getelementptr inbounds %struct.ufs_sb_info, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %s_bytesex.i.i700 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %s_bytesex.i.i700, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp.i.i701 = icmp eq i32 %130, 0
  %131 = ptrtoint ptr %arrayidx.i699 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx.i699, align 4
  %add.i3.i.i702 = add i32 %132, 1
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #7
  %add.i.i.i703 = add i32 %133, 1
  %134 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i703) #7
  %storemerge.i.i704 = select i1 %cmp.i.i701, i32 %134, i32 %add.i3.i.i702
  %135 = ptrtoint ptr %arrayidx.i699 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %storemerge.i.i704, ptr %arrayidx.i699, align 4
  br label %for.inc.i709

for.inc.i709:                                     ; preds = %if.then2.i705, %if.else.i698.for.inc.i709_crit_edge, %if.then.i696
  %fragsize.1.i706 = phi i32 [ %inc.i695, %if.then.i696 ], [ 0, %if.then2.i705 ], [ 0, %if.else.i698.for.inc.i709_crit_edge ]
  %inc4.i707 = add nuw i32 %pos.031.i689, 1
  %136 = ptrtoint ptr %s_fpb.i687 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %s_fpb.i687, align 4
  %cmp.i708 = icmp ult i32 %inc4.i707, %137
  br i1 %cmp.i708, label %for.inc.i709.for.body.i694_crit_edge, label %for.end.i713

for.inc.i709.for.body.i694_crit_edge:             ; preds = %for.inc.i709
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i694

for.end.i713:                                     ; preds = %for.inc.i709
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fragsize.1.i706)
  %cmp5.not.i710 = icmp ne i32 %fragsize.1.i706, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %fragsize.1.i706, i32 %137)
  %cmp7.i711 = icmp ult i32 %fragsize.1.i706, %137
  %or.cond.i712 = select i1 %cmp5.not.i710, i1 %cmp7.i711, i1 false
  br i1 %or.cond.i712, label %if.then8.i720, label %for.end.i713.ufs_fragacct.exit721_crit_edge

for.end.i713.ufs_fragacct.exit721_crit_edge:      ; preds = %for.end.i713
  call void @__sanitizer_cov_trace_pc() #9
  br label %ufs_fragacct.exit721

if.then8.i720:                                    ; preds = %for.end.i713
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx9.i714 = getelementptr i32, ptr %cg_frsum, i32 %fragsize.1.i706
  %138 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i24.i715 = getelementptr inbounds %struct.ufs_sb_info, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %s_bytesex.i24.i715 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %s_bytesex.i24.i715, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp.i25.i716 = icmp eq i32 %141, 0
  %142 = ptrtoint ptr %arrayidx9.i714 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx9.i714, align 4
  %add.i3.i26.i717 = add i32 %143, 1
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #7
  %add.i.i27.i718 = add i32 %144, 1
  %145 = tail call i32 @llvm.bswap.i32(i32 %add.i.i27.i718) #7
  %storemerge.i28.i719 = select i1 %cmp.i25.i716, i32 %145, i32 %add.i3.i26.i717
  %146 = ptrtoint ptr %arrayidx9.i714 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %storemerge.i28.i719, ptr %arrayidx9.i714, align 4
  br label %ufs_fragacct.exit721

ufs_fragacct.exit721:                             ; preds = %if.then8.i720, %for.end.i713.ufs_fragacct.exit721_crit_edge, %for.end.ufs_fragacct.exit721_crit_edge
  %s_fpbshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 19
  %147 = ptrtoint ptr %s_fpbshift to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %s_fpbshift, align 4
  %shr143 = lshr i32 %and48, %148
  %149 = ptrtoint ptr %c_freeoff to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %c_freeoff, align 4
  %151 = ptrtoint ptr %s_fpb to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %s_fpb, align 4
  %153 = zext i32 %152 to i64
  call void @__sanitizer_cov_trace_switch(i64 %153, ptr @__sancov_gen_cov_switch_values)
  switch i32 %152, label %ufs_fragacct.exit721.if.end291_crit_edge [
    i32 8, label %_ubh_isblockset_.exit
    i32 4, label %sw.bb3.i
    i32 2, label %sw.bb26.i
    i32 1, label %sw.bb50.i
  ]

ufs_fragacct.exit721.if.end291_crit_edge:         ; preds = %ufs_fragacct.exit721
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end291

sw.bb3.i:                                         ; preds = %ufs_fragacct.exit721
  %and4.i = shl i32 %shr143, 2
  %shl.i729 = and i32 %and4.i, 4
  %shl5.i = shl nuw nsw i32 15, %shl.i729
  %shr8.i = lshr i32 %shr143, 1
  %add9.i = add i32 %shr8.i, %150
  %154 = ptrtoint ptr %s_fshift to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %s_fshift, align 8
  %shr11.i = lshr i32 %add9.i, %155
  %arrayidx12.i = getelementptr %struct.ufs_buffer_head, ptr %call36, i32 0, i32 2, i32 %shr11.i
  %156 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx12.i, align 4
  %b_data13.i = getelementptr inbounds %struct.buffer_head, ptr %157, i32 0, i32 5
  %158 = ptrtoint ptr %b_data13.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %b_data13.i, align 4
  %160 = ptrtoint ptr %s_fmask to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %s_fmask, align 8
  %neg17.i = xor i32 %161, -1
  %and18.i = and i32 %add9.i, %neg17.i
  %add.ptr19.i = getelementptr i8, ptr %159, i32 %and18.i
  %162 = ptrtoint ptr %add.ptr19.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %add.ptr19.i, align 1
  %conv20.i = zext i8 %163 to i32
  %and22.i = and i32 %shl5.i, %conv20.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and22.i, i32 %shl5.i)
  %cmp24.i = icmp eq i32 %and22.i, %shl5.i
  br i1 %cmp24.i, label %sw.bb3.i.if.then150_crit_edge, label %sw.bb3.i.if.end291_crit_edge

sw.bb3.i.if.end291_crit_edge:                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end291

sw.bb3.i.if.then150_crit_edge:                    ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then150

sw.bb26.i:                                        ; preds = %ufs_fragacct.exit721
  %and27.i = shl i32 %shr143, 1
  %shl28.i = and i32 %and27.i, 6
  %shl29.i = shl nuw nsw i32 3, %shl28.i
  %shr32.i = lshr i32 %shr143, 2
  %add33.i = add i32 %shr32.i, %150
  %164 = ptrtoint ptr %s_fshift to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %s_fshift, align 8
  %shr35.i = lshr i32 %add33.i, %165
  %arrayidx36.i = getelementptr %struct.ufs_buffer_head, ptr %call36, i32 0, i32 2, i32 %shr35.i
  %166 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx36.i, align 4
  %b_data37.i = getelementptr inbounds %struct.buffer_head, ptr %167, i32 0, i32 5
  %168 = ptrtoint ptr %b_data37.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %b_data37.i, align 4
  %170 = ptrtoint ptr %s_fmask to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %s_fmask, align 8
  %neg41.i = xor i32 %171, -1
  %and42.i = and i32 %add33.i, %neg41.i
  %add.ptr43.i = getelementptr i8, ptr %169, i32 %and42.i
  %172 = ptrtoint ptr %add.ptr43.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %add.ptr43.i, align 1
  %conv44.i = zext i8 %173 to i32
  %and46.i730 = and i32 %shl29.i, %conv44.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and46.i730, i32 %shl29.i)
  %cmp48.i = icmp eq i32 %and46.i730, %shl29.i
  br i1 %cmp48.i, label %sw.bb26.i.if.then150_crit_edge, label %sw.bb26.i.if.end291_crit_edge

sw.bb26.i.if.end291_crit_edge:                    ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end291

sw.bb26.i.if.then150_crit_edge:                   ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then150

sw.bb50.i:                                        ; preds = %ufs_fragacct.exit721
  %and51.i = and i32 %shr143, 7
  %shl52.i = shl nuw nsw i32 1, %and51.i
  %shr55.i = lshr i32 %shr143, 3
  %add56.i731 = add i32 %shr55.i, %150
  %174 = ptrtoint ptr %s_fshift to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %s_fshift, align 8
  %shr58.i = lshr i32 %add56.i731, %175
  %arrayidx59.i = getelementptr %struct.ufs_buffer_head, ptr %call36, i32 0, i32 2, i32 %shr58.i
  %176 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %arrayidx59.i, align 4
  %b_data60.i = getelementptr inbounds %struct.buffer_head, ptr %177, i32 0, i32 5
  %178 = ptrtoint ptr %b_data60.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %b_data60.i, align 4
  %180 = ptrtoint ptr %s_fmask to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %s_fmask, align 8
  %neg64.i = xor i32 %181, -1
  %and65.i = and i32 %add56.i731, %neg64.i
  %add.ptr66.i = getelementptr i8, ptr %179, i32 %and65.i
  %182 = ptrtoint ptr %add.ptr66.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %add.ptr66.i, align 1
  %conv67.i = zext i8 %183 to i32
  %and69.i732 = and i32 %shl52.i, %conv67.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and69.i732, i32 %shl52.i)
  %cmp71.i = icmp eq i32 %and69.i732, %shl52.i
  br i1 %cmp71.i, label %sw.bb50.i.if.then150_crit_edge, label %sw.bb50.i.if.end291_crit_edge

sw.bb50.i.if.end291_crit_edge:                    ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end291

sw.bb50.i.if.then150_crit_edge:                   ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then150

_ubh_isblockset_.exit:                            ; preds = %ufs_fragacct.exit721
  %add.i723 = add i32 %shr143, %150
  %184 = ptrtoint ptr %s_fshift to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %s_fshift, align 8
  %shr.i724 = lshr i32 %add.i723, %185
  %arrayidx.i725 = getelementptr %struct.ufs_buffer_head, ptr %call36, i32 0, i32 2, i32 %shr.i724
  %186 = ptrtoint ptr %arrayidx.i725 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx.i725, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %187, i32 0, i32 5
  %188 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %b_data.i, align 4
  %190 = ptrtoint ptr %s_fmask to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %s_fmask, align 8
  %neg.i726 = xor i32 %191, -1
  %and.i727 = and i32 %add.i723, %neg.i726
  %add.ptr.i = getelementptr i8, ptr %189, i32 %and.i727
  %192 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %193)
  %cmp.i728 = icmp eq i8 %193, -1
  br i1 %cmp.i728, label %_ubh_isblockset_.exit.if.then150_crit_edge, label %_ubh_isblockset_.exit.if.end291_crit_edge

_ubh_isblockset_.exit.if.end291_crit_edge:        ; preds = %_ubh_isblockset_.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end291

_ubh_isblockset_.exit.if.then150_crit_edge:       ; preds = %_ubh_isblockset_.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then150

if.then150:                                       ; preds = %_ubh_isblockset_.exit.if.then150_crit_edge, %sw.bb50.i.if.then150_crit_edge, %sw.bb26.i.if.then150_crit_edge, %sw.bb3.i.if.then150_crit_edge
  %194 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i735 = getelementptr inbounds %struct.ufs_sb_info, ptr %195, i32 0, i32 2
  %196 = ptrtoint ptr %s_bytesex.i735 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %s_bytesex.i735, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %cmp.i736 = icmp eq i32 %197, 0
  %198 = ptrtoint ptr %cs_nffree to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %cs_nffree, align 4
  %add.i4.i = sub i32 %199, %152
  %200 = tail call i32 @llvm.bswap.i32(i32 %199) #7
  %add.i.i737 = sub i32 %200, %152
  %201 = tail call i32 @llvm.bswap.i32(i32 %add.i.i737) #7
  %storemerge.i738 = select i1 %cmp.i736, i32 %201, i32 %add.i4.i
  %202 = ptrtoint ptr %cs_nffree to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %storemerge.i738, ptr %cs_nffree, align 4
  %203 = ptrtoint ptr %s_fpb to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %s_fpb, align 4
  %conv155 = zext i32 %204 to i64
  %205 = ptrtoint ptr %cs_nffree113 to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %cs_nffree113, align 8
  %sub158 = sub i64 %206, %conv155
  store i64 %sub158, ptr %cs_nffree113, align 8
  %207 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %s_fs_info.i, align 16
  %s_csp160 = getelementptr inbounds %struct.ufs_sb_info, ptr %208, i32 0, i32 1
  %209 = ptrtoint ptr %s_csp160 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %s_csp160, align 4
  %cs_nffree162 = getelementptr %struct.ufs_csum, ptr %210, i32 %conv30779, i32 3
  %s_bytesex.i741 = getelementptr inbounds %struct.ufs_sb_info, ptr %208, i32 0, i32 2
  %211 = ptrtoint ptr %s_bytesex.i741 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %s_bytesex.i741, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %cmp.i742 = icmp eq i32 %212, 0
  %213 = ptrtoint ptr %cs_nffree162 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %cs_nffree162, align 4
  %add.i4.i743 = sub i32 %214, %204
  %215 = tail call i32 @llvm.bswap.i32(i32 %214) #7
  %add.i.i744 = sub i32 %215, %204
  %216 = tail call i32 @llvm.bswap.i32(i32 %add.i.i744) #7
  %storemerge.i745 = select i1 %cmp.i742, i32 %216, i32 %add.i4.i743
  %217 = ptrtoint ptr %cs_nffree162 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %storemerge.i745, ptr %cs_nffree162, align 4
  %218 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags = getelementptr inbounds %struct.ufs_sb_info, ptr %219, i32 0, i32 3
  %220 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %s_flags, align 4
  %and165 = and i32 %221, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %and165)
  %cmp166 = icmp eq i32 %and165, 8192
  br i1 %cmp166, label %if.then168, label %if.then150.if.end170_crit_edge

if.then150.if.end170_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end170

if.then168:                                       ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ufs_clusteracct(ptr noundef %1, ptr noundef nonnull %call36, i32 noundef %shr143, i32 noundef 1)
  br label %if.end170

if.end170:                                        ; preds = %if.then168, %if.then150.if.end170_crit_edge
  %cs_nbfree = getelementptr inbounds %struct.ufs_cylinder_group, ptr %21, i32 0, i32 7, i32 1
  %222 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i748 = getelementptr inbounds %struct.ufs_sb_info, ptr %223, i32 0, i32 2
  %224 = ptrtoint ptr %s_bytesex.i748 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %s_bytesex.i748, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %cmp.i749 = icmp eq i32 %225, 0
  %226 = ptrtoint ptr %cs_nbfree to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %cs_nbfree, align 4
  %add.i3.i750 = add i32 %227, 1
  %228 = tail call i32 @llvm.bswap.i32(i32 %227) #7
  %add.i.i751 = add i32 %228, 1
  %229 = tail call i32 @llvm.bswap.i32(i32 %add.i.i751) #7
  %storemerge.i752 = select i1 %cmp.i749, i32 %229, i32 %add.i3.i750
  %230 = ptrtoint ptr %cs_nbfree to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %storemerge.i752, ptr %cs_nbfree, align 4
  %cs_nbfree173 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 1, i32 1
  %231 = ptrtoint ptr %cs_nbfree173 to i32
  call void @__asan_load8_noabort(i32 %231)
  %232 = load i64, ptr %cs_nbfree173, align 8
  %inc174 = add i64 %232, 1
  store i64 %inc174, ptr %cs_nbfree173, align 8
  %233 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %s_fs_info.i, align 16
  %s_csp176 = getelementptr inbounds %struct.ufs_sb_info, ptr %234, i32 0, i32 1
  %235 = ptrtoint ptr %s_csp176 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %s_csp176, align 4
  %cs_nbfree178 = getelementptr %struct.ufs_csum, ptr %236, i32 %conv30779, i32 1
  %s_bytesex.i755 = getelementptr inbounds %struct.ufs_sb_info, ptr %234, i32 0, i32 2
  %237 = ptrtoint ptr %s_bytesex.i755 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %s_bytesex.i755, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %cmp.i756 = icmp eq i32 %238, 0
  %239 = ptrtoint ptr %cs_nbfree178 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %cs_nbfree178, align 4
  %add.i3.i757 = add i32 %240, 1
  %241 = tail call i32 @llvm.bswap.i32(i32 %240) #7
  %add.i.i758 = add i32 %241, 1
  %242 = tail call i32 @llvm.bswap.i32(i32 %add.i.i758) #7
  %storemerge.i759 = select i1 %cmp.i756, i32 %242, i32 %add.i3.i757
  %243 = ptrtoint ptr %cs_nbfree178 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %storemerge.i759, ptr %cs_nbfree178, align 4
  %fs_magic = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 62
  %244 = ptrtoint ptr %fs_magic to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %fs_magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %245)
  %cmp179.not = icmp eq i32 %245, 424935705
  br i1 %cmp179.not, label %if.end170.if.end291_crit_edge, label %if.then181

if.end170.if.end291_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end291

if.then181:                                       ; preds = %if.end170
  %s_nspf = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 26
  %246 = ptrtoint ptr %s_nspf to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %s_nspf, align 8
  %mul = mul i32 %247, %and48
  %s_spc = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 35
  %248 = ptrtoint ptr %s_spc to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %s_spc, align 8
  %mul.frozen = freeze i32 %mul
  %.frozen804 = freeze i32 %249
  %div = udiv i32 %mul.frozen, %.frozen804
  %c_boff = getelementptr inbounds %struct.ufs_cg_private_info, ptr %call36, i32 0, i32 9
  %250 = ptrtoint ptr %c_boff to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %c_boff, align 4
  %s_nrpos = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 43
  %252 = ptrtoint ptr %s_nrpos to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %s_nrpos, align 4
  %mul184 = mul i32 %253, %div
  %254 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags186 = getelementptr inbounds %struct.ufs_sb_info, ptr %255, i32 0, i32 3
  %256 = ptrtoint ptr %s_flags186 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %s_flags186, align 4
  %and187 = and i32 %257, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp eq i32 %and187, 0
  %rem200 = urem i32 %mul, %249
  %s_nsect201 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 34
  %258 = ptrtoint ptr %s_nsect201 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %s_nsect201, align 4
  br i1 %tobool188.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #9
  %rem192 = urem i32 %rem200, %259
  %mul194 = mul i32 %rem192, %253
  %div196 = udiv i32 %mul194, %259
  br label %cond.end

cond.false:                                       ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #9
  %rem200.frozen = freeze i32 %rem200
  %.frozen805 = freeze i32 %259
  %div202 = udiv i32 %rem200.frozen, %.frozen805
  %s_trackskew = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 29
  %260 = ptrtoint ptr %s_trackskew to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %s_trackskew, align 4
  %mul203 = mul i32 %261, %div202
  %262 = mul i32 %div202, %.frozen805
  %rem209.decomposed = sub i32 %rem200.frozen, %262
  %s_interleave = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 28
  %263 = ptrtoint ptr %s_interleave to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %s_interleave, align 8
  %mul210 = mul i32 %264, %rem209.decomposed
  %add211 = add i32 %mul210, %mul203
  %rem213 = urem i32 %add211, %259
  %mul215 = mul i32 %rem213, %253
  %s_npsect = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 27
  %265 = ptrtoint ptr %s_npsect to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %s_npsect, align 4
  %div216 = udiv i32 %mul215, %266
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div196, %cond.true ], [ %div216, %cond.false ]
  %add217 = add i32 %cond, %mul184
  %shl218 = shl i32 %add217, 1
  %add219 = add i32 %shl218, %251
  %267 = ptrtoint ptr %s_fshift to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %s_fshift, align 8
  %shr221 = lshr i32 %add219, %268
  %arrayidx222 = getelementptr %struct.ufs_buffer_head, ptr %call36, i32 0, i32 2, i32 %shr221
  %269 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %arrayidx222, align 4
  %b_data223 = getelementptr inbounds %struct.buffer_head, ptr %270, i32 0, i32 5
  %271 = ptrtoint ptr %b_data223 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %b_data223, align 4
  %273 = mul i32 %div, %.frozen804
  %rem246.decomposed = sub i32 %mul.frozen, %273
  %s_nsect247 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 34
  %274 = ptrtoint ptr %s_nsect247 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %s_nsect247, align 4
  br i1 %tobool188.not, label %cond.false242, label %cond.true231

cond.true231:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %rem237 = urem i32 %rem246.decomposed, %275
  %mul239 = mul i32 %rem237, %253
  %div241 = udiv i32 %mul239, %275
  br label %cond.end266

cond.false242:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %.frozen806 = freeze i32 %275
  %div248 = udiv i32 %rem246.decomposed, %.frozen806
  %s_trackskew249 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 29
  %276 = ptrtoint ptr %s_trackskew249 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %s_trackskew249, align 4
  %mul250 = mul i32 %277, %div248
  %278 = mul i32 %div248, %.frozen806
  %rem256.decomposed = sub i32 %rem246.decomposed, %278
  %s_interleave257 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 28
  %279 = ptrtoint ptr %s_interleave257 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %s_interleave257, align 8
  %mul258 = mul i32 %280, %rem256.decomposed
  %add259 = add i32 %mul258, %mul250
  %rem261 = urem i32 %add259, %275
  %mul263 = mul i32 %rem261, %253
  %s_npsect264 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 27
  %281 = ptrtoint ptr %s_npsect264 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %s_npsect264, align 4
  %div265 = udiv i32 %mul263, %282
  br label %cond.end266

cond.end266:                                      ; preds = %cond.false242, %cond.true231
  %cond267 = phi i32 [ %div241, %cond.true231 ], [ %div265, %cond.false242 ]
  %add268 = add i32 %cond267, %mul184
  %shl269 = shl i32 %add268, 1
  %add270 = add i32 %shl269, %251
  %283 = ptrtoint ptr %s_fmask to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %s_fmask, align 8
  %neg272 = xor i32 %284, -1
  %and273 = and i32 %add270, %neg272
  %add.ptr274 = getelementptr i8, ptr %272, i32 %and273
  %s_bytesex.i763 = getelementptr inbounds %struct.ufs_sb_info, ptr %255, i32 0, i32 2
  %285 = ptrtoint ptr %s_bytesex.i763 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %s_bytesex.i763, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %286)
  %cmp.i764 = icmp eq i32 %286, 0
  %287 = ptrtoint ptr %add.ptr274 to i32
  call void @__asan_load2_noabort(i32 %287)
  %288 = load i16, ptr %add.ptr274, align 2
  %add.i1.i = add i16 %288, 1
  %289 = tail call i16 @llvm.bswap.i16(i16 %288) #7
  %add.i.i765 = add i16 %289, 1
  %290 = tail call i16 @llvm.bswap.i16(i16 %add.i.i765) #7
  %storemerge.i766 = select i1 %cmp.i764, i16 %290, i16 %add.i1.i
  %291 = ptrtoint ptr %add.ptr274 to i32
  call void @__asan_store2_noabort(i32 %291)
  store i16 %storemerge.i766, ptr %add.ptr274, align 2
  %c_btotoff = getelementptr inbounds %struct.ufs_cg_private_info, ptr %call36, i32 0, i32 8
  %292 = ptrtoint ptr %c_btotoff to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %c_btotoff, align 8
  %shl277 = shl i32 %div, 2
  %add278 = add i32 %293, %shl277
  %294 = ptrtoint ptr %s_fshift to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %s_fshift, align 8
  %shr280 = lshr i32 %add278, %295
  %arrayidx281 = getelementptr %struct.ufs_buffer_head, ptr %call36, i32 0, i32 2, i32 %shr280
  %296 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %arrayidx281, align 4
  %b_data282 = getelementptr inbounds %struct.buffer_head, ptr %297, i32 0, i32 5
  %298 = ptrtoint ptr %b_data282 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %b_data282, align 4
  %300 = ptrtoint ptr %s_fmask to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %s_fmask, align 8
  %neg287 = xor i32 %301, -1
  %and288 = and i32 %add278, %neg287
  %add.ptr289 = getelementptr i8, ptr %299, i32 %and288
  %302 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i768 = getelementptr inbounds %struct.ufs_sb_info, ptr %303, i32 0, i32 2
  %304 = ptrtoint ptr %s_bytesex.i768 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %s_bytesex.i768, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %305)
  %cmp.i769 = icmp eq i32 %305, 0
  %306 = ptrtoint ptr %add.ptr289 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %add.ptr289, align 4
  %add.i3.i770 = add i32 %307, 1
  %308 = tail call i32 @llvm.bswap.i32(i32 %307) #7
  %add.i.i771 = add i32 %308, 1
  %309 = tail call i32 @llvm.bswap.i32(i32 %add.i.i771) #7
  %storemerge.i772 = select i1 %cmp.i769, i32 %309, i32 %add.i3.i770
  %310 = ptrtoint ptr %add.ptr289 to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %storemerge.i772, ptr %add.ptr289, align 4
  br label %if.end291

if.end291:                                        ; preds = %cond.end266, %if.end170.if.end291_crit_edge, %_ubh_isblockset_.exit.if.end291_crit_edge, %sw.bb50.i.if.end291_crit_edge, %sw.bb26.i.if.end291_crit_edge, %sw.bb3.i.if.end291_crit_edge, %ufs_fragacct.exit721.if.end291_crit_edge
  tail call void @ubh_mark_buffer_dirty(ptr noundef %5) #7
  tail call void @ubh_mark_buffer_dirty(ptr noundef nonnull %call36) #7
  %s_flags294 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %311 = ptrtoint ptr %s_flags294 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %s_flags294, align 4
  %and295 = and i32 %312, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and295)
  %tobool296.not = icmp eq i32 %and295, 0
  br i1 %tobool296.not, label %if.end291.if.end299_crit_edge, label %if.then297

if.end291.if.end299_crit_edge:                    ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end299

if.then297:                                       ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubh_sync_block(ptr noundef nonnull %call36) #7
  br label %if.end299

if.end299:                                        ; preds = %if.then297, %if.end291.if.end299_crit_edge
  tail call void @ufs_mark_sb_dirty(ptr noundef %1) #7
  %313 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock301 = getelementptr inbounds %struct.ufs_sb_info, ptr %314, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %s_lock301) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_free_fragments.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_free_fragments, %do.body320)) #7
          to label %if.then316 [label %do.body320], !srcloc !172

if.then316:                                       ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_free_fragments.__UNIQUE_ID_ddebug262, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 123, ptr noundef nonnull @.str.1) #7
  br label %do.body320

do.body320:                                       ; preds = %if.then316, %if.end299
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_free_fragments.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_free_fragments, %cleanup)) #7
          to label %if.then334 [label %cleanup], !srcloc !172

if.then334:                                       ; preds = %do.body320
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_free_fragments.__UNIQUE_ID_ddebug263, ptr noundef nonnull @.str.12) #7
  br label %cleanup

failed:                                           ; preds = %if.then44, %if.end35.failed_crit_edge, %if.then34
  %315 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock339 = getelementptr inbounds %struct.ufs_sb_info, ptr %316, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %s_lock339) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_free_fragments.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_free_fragments, %do.body358)) #7
          to label %if.then354 [label %do.body358], !srcloc !172

if.then354:                                       ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_free_fragments.__UNIQUE_ID_ddebug264, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 128, ptr noundef nonnull @.str.1) #7
  br label %do.body358

do.body358:                                       ; preds = %if.then354, %failed
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_free_fragments.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_free_fragments, %cleanup)) #7
          to label %if.then372 [label %cleanup], !srcloc !172

if.then372:                                       ; preds = %do.body358
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_free_fragments.__UNIQUE_ID_ddebug265, ptr noundef nonnull @.str.14) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then372, %do.body358, %if.then334, %do.body320
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufs_panic(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ufs_load_cylinder(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_sub_bytes(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufs_clusteracct(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %ucpi, i32 noundef %blkno, i32 noundef %cnt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %s_contigsumsize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 39
  %4 = ptrtoint ptr %s_contigsumsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_contigsumsize, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp slt i32 %5, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %cmp1 = icmp sgt i32 %cnt, 0
  %and = and i32 %blkno, 7
  %shl = shl nuw nsw i32 1, %and
  %c_clusteroff = getelementptr inbounds %struct.ufs_cg_private_info, ptr %ucpi, i32 0, i32 14
  %6 = ptrtoint ptr %c_clusteroff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c_clusteroff, align 8
  %shr = lshr i32 %blkno, 3
  %add = add i32 %7, %shr
  %s_fshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %s_fshift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_fshift, align 8
  %shr4 = lshr i32 %add, %9
  %arrayidx = getelementptr %struct.ufs_buffer_head, ptr %ucpi, i32 0, i32 2, i32 %shr4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data, align 4
  %s_fmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 16
  %14 = ptrtoint ptr %s_fmask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_fmask, align 8
  %neg = xor i32 %15, -1
  %and8 = and i32 %add, %neg
  %add.ptr = getelementptr i8, ptr %13, i32 %and8
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr, align 1
  %18 = trunc i32 %shl to i8
  %19 = xor i8 %18, -1
  %conv31 = and i8 %17, %19
  %conv9 = or i8 %17, %18
  %conv31.sink = select i1 %cmp1, i8 %conv9, i8 %conv31
  store i8 %conv31.sink, ptr %add.ptr, align 1
  %add33 = add i32 %blkno, 1
  %20 = ptrtoint ptr %s_contigsumsize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_contigsumsize, align 8
  %add35 = add i32 %21, %add33
  %c_nclusterblks = getelementptr inbounds %struct.ufs_cg_private_info, ptr %ucpi, i32 0, i32 15
  %22 = ptrtoint ptr %c_nclusterblks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %c_nclusterblks, align 4
  %24 = tail call i32 @llvm.umin.i32(i32 %add35, i32 %23)
  %c_clusteroff42 = getelementptr inbounds %struct.ufs_cg_private_info, ptr %ucpi, i32 0, i32 14
  %25 = ptrtoint ptr %c_clusteroff42 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %c_clusteroff42, align 8
  %sub.i = sub i32 %24, %add33
  %shl.i = shl i32 %26, 3
  %add.i = add i32 %shl.i, %add33
  %s_bpfshift.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 59
  %27 = ptrtoint ptr %s_bpfshift.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_bpfshift.i, align 4
  %shr.i = lshr i32 %add.i, %28
  %s_bpfmask.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 60
  %29 = ptrtoint ptr %s_bpfmask.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_bpfmask.i, align 8
  %and.i = and i32 %30, %add.i
  %s_bpf.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 58
  %add1.peel.i = add i32 %and.i, %sub.i
  %31 = ptrtoint ptr %s_bpf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_bpf.i, align 8
  %33 = tail call i32 @llvm.umin.i32(i32 %add1.peel.i, i32 %32) #7
  %sub2.neg.peel.i = sub i32 %and.i, %33
  %sub3.peel.i = add i32 %sub2.neg.peel.i, %sub.i
  %arrayidx.peel.i = getelementptr %struct.ufs_buffer_head, ptr %ucpi, i32 0, i32 2, i32 %shr.i
  %34 = ptrtoint ptr %arrayidx.peel.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.peel.i, align 4
  %b_data.peel.i = getelementptr inbounds %struct.buffer_head, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %b_data.peel.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %b_data.peel.i, align 4
  %call.i.peel.i = tail call i32 @_find_next_zero_bit_le(ptr noundef %37, i32 noundef %33, i32 noundef %and.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.peel.i, i32 %33)
  %cmp4.peel.i = icmp ult i32 %call.i.peel.i, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3.peel.i)
  %tobool.not.peel.i = icmp eq i32 %sub3.peel.i, 0
  %or.cond.peel.i = or i1 %cmp4.peel.i, %tobool.not.peel.i
  br i1 %or.cond.peel.i, label %if.end._ubh_find_next_zero_bit_.exit_crit_edge, label %if.end.for.cond.i_crit_edge

if.end.for.cond.i_crit_edge:                      ; preds = %if.end
  br label %for.cond.i

if.end._ubh_find_next_zero_bit_.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %_ubh_find_next_zero_bit_.exit

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.end.for.cond.i_crit_edge
  %size.addr.0.i = phi i32 [ %sub3.i, %for.cond.i.for.cond.i_crit_edge ], [ %sub3.peel.i, %if.end.for.cond.i_crit_edge ]
  %base.0.in.i = phi i32 [ %base.0.i, %for.cond.i.for.cond.i_crit_edge ], [ %shr.i, %if.end.for.cond.i_crit_edge ]
  %base.0.i = add i32 %base.0.in.i, 1
  %38 = ptrtoint ptr %s_bpf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %s_bpf.i, align 8
  %40 = tail call i32 @llvm.umin.i32(i32 %size.addr.0.i, i32 %39) #7
  %sub3.i = sub i32 %size.addr.0.i, %40
  %arrayidx.i = getelementptr %struct.ufs_buffer_head, ptr %ucpi, i32 0, i32 2, i32 %base.0.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %b_data.i, align 4
  %call.i.i = tail call i32 @_find_next_zero_bit_le(ptr noundef %44, i32 noundef %40, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %40)
  %cmp4.i = icmp ult i32 %call.i.i, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3.i)
  %tobool.not.i = icmp eq i32 %sub3.i, 0
  %or.cond.i = select i1 %cmp4.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %for.cond.i._ubh_find_next_zero_bit_.exit_crit_edge, label %for.cond.i.for.cond.i_crit_edge, !llvm.loop !174

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.cond.i._ubh_find_next_zero_bit_.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_ubh_find_next_zero_bit_.exit

_ubh_find_next_zero_bit_.exit:                    ; preds = %for.cond.i._ubh_find_next_zero_bit_.exit_crit_edge, %if.end._ubh_find_next_zero_bit_.exit_crit_edge
  %base.0.lcssa.i = phi i32 [ %shr.i, %if.end._ubh_find_next_zero_bit_.exit_crit_edge ], [ %base.0.i, %for.cond.i._ubh_find_next_zero_bit_.exit_crit_edge ]
  %call.i.lcssa.i = phi i32 [ %call.i.peel.i, %if.end._ubh_find_next_zero_bit_.exit_crit_edge ], [ %call.i.i, %for.cond.i._ubh_find_next_zero_bit_.exit_crit_edge ]
  %45 = ptrtoint ptr %s_bpfshift.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %s_bpfshift.i, align 4
  %shl6.i = shl i32 %base.0.lcssa.i, %46
  %add7.i = sub i32 %call.i.lcssa.i, %shl.i
  %sub8.i = add i32 %add7.i, %shl6.i
  %47 = tail call i32 @llvm.smin.i32(i32 %sub8.i, i32 %24)
  %sub48 = add i32 %blkno, -1
  %48 = ptrtoint ptr %s_contigsumsize to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %s_contigsumsize, align 8
  %sub50 = sub i32 %sub48, %49
  %50 = tail call i32 @llvm.smax.i32(i32 %sub50, i32 -1)
  %51 = ptrtoint ptr %c_clusteroff42 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %c_clusteroff42, align 8
  %sub.i205 = sub i32 %sub48, %50
  %shl.i206 = shl i32 %52, 3
  %add.i207 = add i32 %shl.i206, %sub48
  %shr.i209 = lshr i32 %add.i207, %46
  %53 = ptrtoint ptr %s_bpfmask.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %s_bpfmask.i, align 8
  %and.i211 = and i32 %add.i207, %54
  %55 = ptrtoint ptr %s_bpf.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %s_bpf.i, align 8
  br label %for.cond.i215

for.cond.i215:                                    ; preds = %find_last_zero_bit.exit.i.for.cond.i215_crit_edge, %_ubh_find_next_zero_bit_.exit
  %start.addr.0.i = phi i32 [ %and.i211, %_ubh_find_next_zero_bit_.exit ], [ %56, %find_last_zero_bit.exit.i.for.cond.i215_crit_edge ]
  %base.0.i213 = phi i32 [ %shr.i209, %_ubh_find_next_zero_bit_.exit ], [ %dec.i, %find_last_zero_bit.exit.i.for.cond.i215_crit_edge ]
  %size.0.i = phi i32 [ %sub.i205, %_ubh_find_next_zero_bit_.exit ], [ %sub7.i, %find_last_zero_bit.exit.i.for.cond.i215_crit_edge ]
  %sub1.i = sub i32 %56, %start.addr.0.i
  %add2.i = add i32 %sub1.i, %size.0.i
  %57 = tail call i32 @llvm.umin.i32(i32 %add2.i, i32 %56) #7
  %sub5.neg.i = sub i32 %start.addr.0.i, %56
  %sub6.i = add i32 %57, %sub5.neg.i
  %sub7.i = sub i32 %size.0.i, %sub6.i
  %sub8.i214 = sub i32 %start.addr.0.i, %sub6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %start.addr.0.i, i32 %sub8.i214)
  %cmp18.i.i = icmp ugt i32 %start.addr.0.i, %sub8.i214
  br i1 %cmp18.i.i, label %for.body.preheader.i.i, label %for.cond.i215.find_last_zero_bit.exit.i_crit_edge

for.cond.i215.find_last_zero_bit.exit.i_crit_edge: ; preds = %for.cond.i215
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_last_zero_bit.exit.i

for.body.preheader.i.i:                           ; preds = %for.cond.i215
  %arrayidx.i216 = getelementptr %struct.ufs_buffer_head, ptr %ucpi, i32 0, i32 2, i32 %base.0.i213
  %58 = ptrtoint ptr %arrayidx.i216 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i216, align 4
  %b_data.i217 = getelementptr inbounds %struct.buffer_head, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %b_data.i217 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %b_data.i217, align 4
  %and.i.i = and i32 %start.addr.0.i, 7
  %shl.i.i = shl nuw nsw i32 1, %and.i.i
  %shr.i.i = lshr i32 %start.addr.0.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %61, i32 %shr.i.i
  %62 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %add.ptr.i.i, align 1
  %incdec.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %map.022.i.i = phi i8 [ %map.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %63, %for.body.preheader.i.i ]
  %mapp.021.i.i = phi ptr [ %mapp.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %incdec.ptr.i.i, %for.body.preheader.i.i ]
  %i.020.i.i = phi i32 [ %dec.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %start.addr.0.i, %for.body.preheader.i.i ]
  %bit.019.i.i = phi i32 [ %bit.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %shl.i.i, %for.body.preheader.i.i ]
  %conv.i.i = zext i8 %map.022.i.i to i32
  %and1.i.i = and i32 %bit.019.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp2.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp2.i.i, label %for.body.i.i.find_last_zero_bit.exit.i_crit_edge, label %if.end.i.i

for.body.i.i.find_last_zero_bit.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_last_zero_bit.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %and4.i.i = and i32 %i.020.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %cmp5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %cmp5.not.i.i, label %if.else.i.i, label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr8.i.i = lshr i32 %bit.019.i.i, 1
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr9.i.i = getelementptr i8, ptr %mapp.021.i.i, i32 -1
  %64 = ptrtoint ptr %mapp.021.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %mapp.021.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %if.then7.i.i
  %bit.1.i.i = phi i32 [ %shr8.i.i, %if.then7.i.i ], [ 128, %if.else.i.i ]
  %mapp.1.i.i = phi ptr [ %mapp.021.i.i, %if.then7.i.i ], [ %incdec.ptr9.i.i, %if.else.i.i ]
  %map.1.i.i = phi i8 [ %map.022.i.i, %if.then7.i.i ], [ %65, %if.else.i.i ]
  %dec.i.i = add i32 %i.020.i.i, -1
  %cmp.i.i = icmp ugt i32 %dec.i.i, %sub8.i214
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.find_last_zero_bit.exit.i_crit_edge

for.inc.i.i.find_last_zero_bit.exit.i_crit_edge:  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_last_zero_bit.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

find_last_zero_bit.exit.i:                        ; preds = %for.inc.i.i.find_last_zero_bit.exit.i_crit_edge, %for.body.i.i.find_last_zero_bit.exit.i_crit_edge, %for.cond.i215.find_last_zero_bit.exit.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ %start.addr.0.i, %for.cond.i215.find_last_zero_bit.exit.i_crit_edge ], [ %i.020.i.i, %for.body.i.i.find_last_zero_bit.exit.i_crit_edge ], [ %sub8.i214, %for.inc.i.i.find_last_zero_bit.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i.i, i32 %sub8.i214)
  %cmp10.i = icmp ugt i32 %i.0.lcssa.i.i, %sub8.i214
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7.i)
  %tobool.not.i218 = icmp eq i32 %sub7.i, 0
  %or.cond.i219 = select i1 %cmp10.i, i1 true, i1 %tobool.not.i218
  %dec.i = add i32 %base.0.i213, -1
  br i1 %or.cond.i219, label %_ubh_find_last_zero_bit_.exit, label %find_last_zero_bit.exit.i.for.cond.i215_crit_edge

find_last_zero_bit.exit.i.for.cond.i215_crit_edge: ; preds = %find_last_zero_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i215

_ubh_find_last_zero_bit_.exit:                    ; preds = %find_last_zero_bit.exit.i
  %sub = sub i32 %47, %add33
  %shl13.i = shl i32 %base.0.i213, %46
  %add14.i = sub i32 %shl13.i, %shl.i206
  %sub15.i = add i32 %add14.i, %i.0.lcssa.i.i
  %66 = tail call i32 @llvm.smax.i32(i32 %sub15.i, i32 %50)
  %sub62 = sub i32 %sub48, %66
  %add63 = add i32 %sub, 1
  %add64 = add i32 %add63, %sub62
  %67 = tail call i32 @llvm.smin.i32(i32 %add64, i32 %49)
  %c_clustersumoff = getelementptr inbounds %struct.ufs_cg_private_info, ptr %ucpi, i32 0, i32 13
  %68 = ptrtoint ptr %c_clustersumoff to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %c_clustersumoff, align 4
  %shl73 = shl i32 %67, 2
  %add74 = add i32 %69, %shl73
  %s_fshift75 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 18
  %70 = ptrtoint ptr %s_fshift75 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %s_fshift75, align 8
  %shr76 = lshr i32 %add74, %71
  %arrayidx77 = getelementptr %struct.ufs_buffer_head, ptr %ucpi, i32 0, i32 2, i32 %shr76
  %72 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx77, align 4
  %b_data78 = getelementptr inbounds %struct.buffer_head, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %b_data78 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %b_data78, align 4
  %s_fmask82 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 16
  %76 = ptrtoint ptr %s_fmask82 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %s_fmask82, align 8
  %neg83 = xor i32 %77, -1
  %and84 = and i32 %add74, %neg83
  %add.ptr85 = getelementptr i8, ptr %75, i32 %and84
  %78 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp.i = icmp eq i32 %81, 0
  %82 = ptrtoint ptr %add.ptr85 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr85, align 4
  %add.i3.i = add i32 %83, %cnt
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #7
  %add.i.i = add i32 %84, %cnt
  %85 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #7
  %storemerge.i = select i1 %cmp.i, i32 %85, i32 %add.i3.i
  %86 = ptrtoint ptr %add.ptr85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %storemerge.i, ptr %add.ptr85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub62)
  %cmp86 = icmp sgt i32 %sub62, 0
  br i1 %cmp86, label %if.then88, label %_ubh_find_last_zero_bit_.exit.if.end105_crit_edge

_ubh_find_last_zero_bit_.exit.if.end105_crit_edge: ; preds = %_ubh_find_last_zero_bit_.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

if.then88:                                        ; preds = %_ubh_find_last_zero_bit_.exit
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %c_clustersumoff to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %c_clustersumoff, align 4
  %shl92 = shl i32 %sub62, 2
  %add93 = add i32 %88, %shl92
  %89 = ptrtoint ptr %s_fshift75 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %s_fshift75, align 8
  %shr95 = lshr i32 %add93, %90
  %arrayidx96 = getelementptr %struct.ufs_buffer_head, ptr %ucpi, i32 0, i32 2, i32 %shr95
  %91 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx96, align 4
  %b_data97 = getelementptr inbounds %struct.buffer_head, ptr %92, i32 0, i32 5
  %93 = ptrtoint ptr %b_data97 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %b_data97, align 4
  %95 = ptrtoint ptr %s_fmask82 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %s_fmask82, align 8
  %neg102 = xor i32 %96, -1
  %and103 = and i32 %add93, %neg102
  %add.ptr104 = getelementptr i8, ptr %94, i32 %and103
  %97 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i221 = getelementptr inbounds %struct.ufs_sb_info, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %s_bytesex.i221 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %s_bytesex.i221, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp.i222 = icmp eq i32 %100, 0
  %101 = ptrtoint ptr %add.ptr104 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %add.ptr104, align 4
  %add.i4.i = sub i32 %102, %cnt
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #7
  %add.i.i223 = sub i32 %103, %cnt
  %104 = tail call i32 @llvm.bswap.i32(i32 %add.i.i223) #7
  %storemerge.i224 = select i1 %cmp.i222, i32 %104, i32 %add.i4.i
  %105 = ptrtoint ptr %add.ptr104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %storemerge.i224, ptr %add.ptr104, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then88, %_ubh_find_last_zero_bit_.exit.if.end105_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp106 = icmp sgt i32 %sub, 0
  br i1 %cmp106, label %if.then108, label %if.end105.cleanup_crit_edge

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then108:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %c_clustersumoff to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %c_clustersumoff, align 4
  %shl112 = shl i32 %sub, 2
  %add113 = add i32 %107, %shl112
  %108 = ptrtoint ptr %s_fshift75 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %s_fshift75, align 8
  %shr115 = lshr i32 %add113, %109
  %arrayidx116 = getelementptr %struct.ufs_buffer_head, ptr %ucpi, i32 0, i32 2, i32 %shr115
  %110 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx116, align 4
  %b_data117 = getelementptr inbounds %struct.buffer_head, ptr %111, i32 0, i32 5
  %112 = ptrtoint ptr %b_data117 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %b_data117, align 4
  %114 = ptrtoint ptr %s_fmask82 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %s_fmask82, align 8
  %neg122 = xor i32 %115, -1
  %and123 = and i32 %add113, %neg122
  %add.ptr124 = getelementptr i8, ptr %113, i32 %and123
  %116 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i226 = getelementptr inbounds %struct.ufs_sb_info, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %s_bytesex.i226 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %s_bytesex.i226, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp.i227 = icmp eq i32 %119, 0
  %120 = ptrtoint ptr %add.ptr124 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %add.ptr124, align 4
  %add.i4.i228 = sub i32 %121, %cnt
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #7
  %add.i.i229 = sub i32 %122, %cnt
  %123 = tail call i32 @llvm.bswap.i32(i32 %add.i.i229) #7
  %storemerge.i230 = select i1 %cmp.i227, i32 %123, i32 %add.i4.i228
  %124 = ptrtoint ptr %add.ptr124 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %storemerge.i230, ptr %add.ptr124, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then108, %if.end105.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubh_mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubh_sync_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufs_mark_sb_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufs_free_blocks(ptr noundef %inode, i64 noundef %fragment, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_free_blocks.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_free_blocks, %do.body5)) #7
          to label %if.then [label %do.body5], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_free_blocks.__UNIQUE_ID_ddebug266, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 148, ptr noundef nonnull @.str.15) #7
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_free_blocks.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_free_blocks, %do.end22)) #7
          to label %if.then19 [label %do.end22], !srcloc !172

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_free_blocks.__UNIQUE_ID_ddebug267, ptr noundef nonnull @.str.6, i64 noundef %fragment, i32 noundef %count) #7
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body5
  %s_fpbmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 46
  %6 = ptrtoint ptr %s_fpbmask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_fpbmask, align 8
  %conv = zext i32 %7 to i64
  %and = and i64 %conv, %fragment
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool23.not = icmp eq i64 %and, 0
  %and25 = and i32 %7, %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %or.cond = select i1 %tobool23.not, i1 %tobool26.not, i1 false
  br i1 %or.cond, label %if.end28, label %if.then27

if.then27:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @ufs_error(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i64 noundef %fragment, i32 noundef %count) #7
  br label %do.body242

if.end28:                                         ; preds = %do.end22
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.ufs_sb_info, ptr %9, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #7
  %s_fpg.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 37
  %s_ncg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 10
  %s_fpbshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 19
  %s_fpb.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 13
  %s_fshift57.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 18
  %s_fmask63.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 16
  %cs_nbfree74 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 1, i32 1
  %fs_magic = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 62
  %s_nspf = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 26
  %s_spc = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 35
  %s_nrpos = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 43
  %s_nsect = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 34
  %s_trackskew = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 29
  %s_interleave = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 28
  %s_npsect = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 27
  %s_flags191 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  br label %do_more

do_more:                                          ; preds = %if.end196.do_more_crit_edge, %if.end28
  %count.addr.0 = phi i32 [ %count, %if.end28 ], [ %sub, %if.end196.do_more_crit_edge ]
  %fragment.addr.0 = phi i64 [ %fragment, %if.end28 ], [ %add200, %if.end196.do_more_crit_edge ]
  %10 = ptrtoint ptr %s_fpg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_fpg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %fragment.addr.0)
  %cmp164.i = icmp ult i64 %fragment.addr.0, 4294967296
  br i1 %cmp164.i, label %if.then168.i527, label %if.else174.i528, !prof !173

if.then168.i527:                                  ; preds = %do_more
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i = trunc i64 %fragment.addr.0 to i32
  %conv169.i.frozen = freeze i32 %conv169.i
  %.frozen = freeze i32 %11
  %div172.i = udiv i32 %conv169.i.frozen, %.frozen
  %12 = mul i32 %div172.i, %.frozen
  %rem170.i.decomposed = sub i32 %conv169.i.frozen, %12
  br label %ufs_dtogd.exit

if.else174.i528:                                  ; preds = %do_more
  call void @__sanitizer_cov_trace_pc() #9
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %11, i64 %fragment.addr.0) #10
  %asmresult1.i.i = extractvalue { i64, i64 } %13, 1
  %conv31581 = trunc i64 %asmresult1.i.i to i32
  %asmresult.i261.i = extractvalue { i64, i64 } %13, 0
  %shr.i.i = lshr i64 %asmresult.i261.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %ufs_dtogd.exit

ufs_dtogd.exit:                                   ; preds = %if.else174.i528, %if.then168.i527
  %conv31582 = phi i32 [ %div172.i, %if.then168.i527 ], [ %conv31581, %if.else174.i528 ]
  %__rem.0.i = phi i32 [ %rem170.i.decomposed, %if.then168.i527 ], [ %conv.i.i, %if.else174.i528 ]
  %14 = ptrtoint ptr %s_ncg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_ncg, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv31582)
  %cmp.not = icmp ugt i32 %15, %conv31582
  br i1 %cmp.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %ufs_dtogd.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @ufs_panic(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8) #7
  br label %failed_unlock

if.end35:                                         ; preds = %ufs_dtogd.exit
  %add = add i32 %__rem.0.i, %count.addr.0
  %sub = sub i32 %add, %11
  %16 = tail call i32 @llvm.umin.i32(i32 %add, i32 %11)
  %17 = tail call i32 @llvm.usub.sat.i32(i32 %add, i32 %11)
  %count.addr.1 = sub i32 %count.addr.0, %17
  %call44 = tail call ptr @ufs_load_cylinder(ptr noundef %1, i32 noundef %conv31582) #7
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %if.end35.failed_unlock_crit_edge, label %if.end47

if.end35.failed_unlock_crit_edge:                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed_unlock

if.end47:                                         ; preds = %if.end35
  %bh = getelementptr inbounds %struct.ufs_buffer_head, ptr %call44, i32 0, i32 2
  %18 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bh, align 8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_data, align 4
  %cg_magic = getelementptr inbounds %struct.ufs_cylinder_group, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %cg_magic to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cg_magic, align 4
  %24 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i529 = icmp eq i32 %27, 0
  %28 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  %retval.0.i530 = select i1 %cmp.i529, i32 %28, i32 %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 590421, i32 %retval.0.i530)
  %cmp50 = icmp eq i32 %retval.0.i530, 590421
  br i1 %cmp50, label %for.cond.preheader, label %if.then52

for.cond.preheader:                               ; preds = %if.end47
  call void @__sanitizer_cov_trace_cmp4(i32 %__rem.0.i, i32 %16)
  %cmp54599 = icmp ult i32 %__rem.0.i, %16
  br i1 %cmp54599, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %c_freeoff = getelementptr inbounds %struct.ufs_cg_private_info, ptr %call44, i32 0, i32 11
  %cs_nbfree = getelementptr inbounds %struct.ufs_cylinder_group, ptr %21, i32 0, i32 7, i32 1
  %c_boff = getelementptr inbounds %struct.ufs_cg_private_info, ptr %call44, i32 0, i32 9
  %c_btotoff = getelementptr inbounds %struct.ufs_cg_private_info, ptr %call44, i32 0, i32 8
  %29 = ptrtoint ptr %s_fpb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr607 = load i32, ptr %s_fpb.i, align 4
  br label %for.body

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @ufs_panic(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.9, i32 noundef %conv31582) #7
  br label %failed_unlock

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %30 = phi i32 [ %.pr607, %for.body.lr.ph ], [ %221, %for.inc.for.body_crit_edge ]
  %i.0600 = phi i32 [ %__rem.0.i, %for.body.lr.ph ], [ %add188, %for.inc.for.body_crit_edge ]
  %31 = ptrtoint ptr %s_fpbshift to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_fpbshift, align 4
  %shr = lshr i32 %i.0600, %32
  %33 = ptrtoint ptr %c_freeoff to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %c_freeoff, align 4
  %35 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %30, label %for.body.if.end62_crit_edge [
    i32 8, label %_ubh_isblockset_.exit
    i32 4, label %sw.bb3.i
    i32 2, label %sw.bb26.i
    i32 1, label %sw.bb50.i
  ]

for.body.if.end62_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

sw.bb3.i:                                         ; preds = %for.body
  %and4.i = shl i32 %shr, 2
  %shl.i535 = and i32 %and4.i, 4
  %shl5.i = shl nuw nsw i32 15, %shl.i535
  %shr8.i = lshr i32 %shr, 1
  %add9.i = add i32 %shr8.i, %34
  %36 = ptrtoint ptr %s_fshift57.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_fshift57.i, align 8
  %shr11.i = lshr i32 %add9.i, %37
  %arrayidx12.i = getelementptr %struct.ufs_buffer_head, ptr %call44, i32 0, i32 2, i32 %shr11.i
  %38 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx12.i, align 4
  %b_data13.i = getelementptr inbounds %struct.buffer_head, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %b_data13.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %b_data13.i, align 4
  %42 = ptrtoint ptr %s_fmask63.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s_fmask63.i, align 8
  %neg17.i = xor i32 %43, -1
  %and18.i = and i32 %add9.i, %neg17.i
  %add.ptr19.i = getelementptr i8, ptr %41, i32 %and18.i
  %44 = ptrtoint ptr %add.ptr19.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %add.ptr19.i, align 1
  %conv20.i = zext i8 %45 to i32
  %and22.i = and i32 %shl5.i, %conv20.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and22.i, i32 %shl5.i)
  %cmp24.i = icmp eq i32 %and22.i, %shl5.i
  br i1 %cmp24.i, label %sw.bb3.i.if.then61_crit_edge, label %sw.bb3.i.if.end62thread-pre-split_crit_edge

sw.bb3.i.if.end62thread-pre-split_crit_edge:      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62thread-pre-split

sw.bb3.i.if.then61_crit_edge:                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then61

sw.bb26.i:                                        ; preds = %for.body
  %and27.i = shl i32 %shr, 1
  %shl28.i = and i32 %and27.i, 6
  %shl29.i = shl nuw nsw i32 3, %shl28.i
  %shr32.i = lshr i32 %shr, 2
  %add33.i = add i32 %shr32.i, %34
  %46 = ptrtoint ptr %s_fshift57.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_fshift57.i, align 8
  %shr35.i = lshr i32 %add33.i, %47
  %arrayidx36.i = getelementptr %struct.ufs_buffer_head, ptr %call44, i32 0, i32 2, i32 %shr35.i
  %48 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx36.i, align 4
  %b_data37.i = getelementptr inbounds %struct.buffer_head, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %b_data37.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %b_data37.i, align 4
  %52 = ptrtoint ptr %s_fmask63.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %s_fmask63.i, align 8
  %neg41.i = xor i32 %53, -1
  %and42.i = and i32 %add33.i, %neg41.i
  %add.ptr43.i = getelementptr i8, ptr %51, i32 %and42.i
  %54 = ptrtoint ptr %add.ptr43.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %add.ptr43.i, align 1
  %conv44.i = zext i8 %55 to i32
  %and46.i536 = and i32 %shl29.i, %conv44.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and46.i536, i32 %shl29.i)
  %cmp48.i = icmp eq i32 %and46.i536, %shl29.i
  br i1 %cmp48.i, label %sw.bb26.i.if.then61_crit_edge, label %sw.bb26.i.if.end62thread-pre-split_crit_edge

sw.bb26.i.if.end62thread-pre-split_crit_edge:     ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62thread-pre-split

sw.bb26.i.if.then61_crit_edge:                    ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then61

sw.bb50.i:                                        ; preds = %for.body
  %and51.i = and i32 %shr, 7
  %shl52.i = shl nuw nsw i32 1, %and51.i
  %shr55.i = lshr i32 %shr, 3
  %add56.i537 = add i32 %shr55.i, %34
  %56 = ptrtoint ptr %s_fshift57.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %s_fshift57.i, align 8
  %shr58.i = lshr i32 %add56.i537, %57
  %arrayidx59.i = getelementptr %struct.ufs_buffer_head, ptr %call44, i32 0, i32 2, i32 %shr58.i
  %58 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx59.i, align 4
  %b_data60.i = getelementptr inbounds %struct.buffer_head, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %b_data60.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %b_data60.i, align 4
  %62 = ptrtoint ptr %s_fmask63.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %s_fmask63.i, align 8
  %neg64.i = xor i32 %63, -1
  %and65.i = and i32 %add56.i537, %neg64.i
  %add.ptr66.i = getelementptr i8, ptr %61, i32 %and65.i
  %64 = ptrtoint ptr %add.ptr66.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %add.ptr66.i, align 1
  %conv67.i = zext i8 %65 to i32
  %and69.i538 = and i32 %shl52.i, %conv67.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and69.i538, i32 %shl52.i)
  %cmp71.i = icmp eq i32 %and69.i538, %shl52.i
  br i1 %cmp71.i, label %sw.bb50.i.if.then61_crit_edge, label %sw.bb50.i.if.end62thread-pre-split_crit_edge

sw.bb50.i.if.end62thread-pre-split_crit_edge:     ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62thread-pre-split

sw.bb50.i.if.then61_crit_edge:                    ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then61

_ubh_isblockset_.exit:                            ; preds = %for.body
  %add.i531 = add i32 %shr, %34
  %66 = ptrtoint ptr %s_fshift57.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %s_fshift57.i, align 8
  %shr.i532 = lshr i32 %add.i531, %67
  %arrayidx.i = getelementptr %struct.ufs_buffer_head, ptr %call44, i32 0, i32 2, i32 %shr.i532
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %b_data.i, align 4
  %72 = ptrtoint ptr %s_fmask63.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %s_fmask63.i, align 8
  %neg.i533 = xor i32 %73, -1
  %and.i = and i32 %add.i531, %neg.i533
  %add.ptr.i = getelementptr i8, ptr %71, i32 %and.i
  %74 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %75)
  %cmp.i534 = icmp eq i8 %75, -1
  br i1 %cmp.i534, label %_ubh_isblockset_.exit.if.then61_crit_edge, label %_ubh_isblockset_.exit.if.end62thread-pre-split_crit_edge

_ubh_isblockset_.exit.if.end62thread-pre-split_crit_edge: ; preds = %_ubh_isblockset_.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62thread-pre-split

_ubh_isblockset_.exit.if.then61_crit_edge:        ; preds = %_ubh_isblockset_.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then61

if.then61:                                        ; preds = %_ubh_isblockset_.exit.if.then61_crit_edge, %sw.bb50.i.if.then61_crit_edge, %sw.bb26.i.if.then61_crit_edge, %sw.bb3.i.if.then61_crit_edge
  tail call void (ptr, ptr, ptr, ...) @ufs_error(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17) #7
  br label %if.end62thread-pre-split

if.end62thread-pre-split:                         ; preds = %if.then61, %_ubh_isblockset_.exit.if.end62thread-pre-split_crit_edge, %sw.bb50.i.if.end62thread-pre-split_crit_edge, %sw.bb26.i.if.end62thread-pre-split_crit_edge, %sw.bb3.i.if.end62thread-pre-split_crit_edge
  %76 = ptrtoint ptr %s_fpb.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pr = load i32, ptr %s_fpb.i, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.end62thread-pre-split, %for.body.if.end62_crit_edge
  %77 = phi i32 [ %.pr, %if.end62thread-pre-split ], [ %30, %for.body.if.end62_crit_edge ]
  %78 = ptrtoint ptr %c_freeoff to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %c_freeoff, align 4
  %80 = zext i32 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %77, label %if.end62._ubh_setblock_.exit_crit_edge [
    i32 8, label %sw.bb.i550
    i32 4, label %sw.bb2.i
    i32 2, label %sw.bb19.i
    i32 1, label %sw.bb39.i
  ]

if.end62._ubh_setblock_.exit_crit_edge:           ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %_ubh_setblock_.exit

sw.bb.i550:                                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %add.i541 = add i32 %79, %shr
  %81 = ptrtoint ptr %s_fshift57.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %s_fshift57.i, align 8
  %shr.i543 = lshr i32 %add.i541, %82
  %arrayidx.i544 = getelementptr %struct.ufs_buffer_head, ptr %call44, i32 0, i32 2, i32 %shr.i543
  %83 = ptrtoint ptr %arrayidx.i544 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i544, align 4
  %b_data.i545 = getelementptr inbounds %struct.buffer_head, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %b_data.i545 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %b_data.i545, align 4
  %87 = ptrtoint ptr %s_fmask63.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %s_fmask63.i, align 8
  %neg.i547 = xor i32 %88, -1
  %and.i548 = and i32 %add.i541, %neg.i547
  %add.ptr.i549 = getelementptr i8, ptr %86, i32 %and.i548
  %89 = ptrtoint ptr %add.ptr.i549 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -1, ptr %add.ptr.i549, align 1
  br label %_ubh_setblock_.exit

sw.bb2.i:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %and3.i = shl i32 %shr, 2
  %shl.i551 = and i32 %and3.i, 4
  %shl4.i = shl nuw nsw i32 15, %shl.i551
  %shr6.i = lshr i32 %shr, 1
  %add7.i = add i32 %79, %shr6.i
  %90 = ptrtoint ptr %s_fshift57.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %s_fshift57.i, align 8
  %shr9.i = lshr i32 %add7.i, %91
  %arrayidx10.i = getelementptr %struct.ufs_buffer_head, ptr %call44, i32 0, i32 2, i32 %shr9.i
  %92 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx10.i, align 4
  %b_data11.i = getelementptr inbounds %struct.buffer_head, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %b_data11.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %b_data11.i, align 4
  %96 = ptrtoint ptr %s_fmask63.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %s_fmask63.i, align 8
  %neg15.i = xor i32 %97, -1
  %and16.i = and i32 %add7.i, %neg15.i
  %add.ptr17.i = getelementptr i8, ptr %95, i32 %and16.i
  %98 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %add.ptr17.i, align 1
  %100 = trunc i32 %shl4.i to i8
  %conv18.i = or i8 %99, %100
  store i8 %conv18.i, ptr %add.ptr17.i, align 1
  br label %_ubh_setblock_.exit

sw.bb19.i:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %and20.i = shl i32 %shr, 1
  %shl21.i = and i32 %and20.i, 6
  %shl22.i = shl nuw nsw i32 3, %shl21.i
  %shr24.i = lshr i32 %shr, 2
  %add25.i = add i32 %79, %shr24.i
  %101 = ptrtoint ptr %s_fshift57.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %s_fshift57.i, align 8
  %shr27.i = lshr i32 %add25.i, %102
  %arrayidx28.i = getelementptr %struct.ufs_buffer_head, ptr %call44, i32 0, i32 2, i32 %shr27.i
  %103 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx28.i, align 4
  %b_data29.i = getelementptr inbounds %struct.buffer_head, ptr %104, i32 0, i32 5
  %105 = ptrtoint ptr %b_data29.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %b_data29.i, align 4
  %107 = ptrtoint ptr %s_fmask63.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %s_fmask63.i, align 8
  %neg33.i = xor i32 %108, -1
  %and34.i = and i32 %add25.i, %neg33.i
  %add.ptr35.i = getelementptr i8, ptr %106, i32 %and34.i
  %109 = ptrtoint ptr %add.ptr35.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %add.ptr35.i, align 1
  %111 = trunc i32 %shl22.i to i8
  %conv38.i = or i8 %110, %111
  store i8 %conv38.i, ptr %add.ptr35.i, align 1
  br label %_ubh_setblock_.exit

sw.bb39.i:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %and40.i = and i32 %shr, 7
  %shl41.i = shl nuw nsw i32 1, %and40.i
  %shr43.i = lshr i32 %shr, 3
  %add44.i = add i32 %79, %shr43.i
  %112 = ptrtoint ptr %s_fshift57.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %s_fshift57.i, align 8
  %shr46.i = lshr i32 %add44.i, %113
  %arrayidx47.i = getelementptr %struct.ufs_buffer_head, ptr %call44, i32 0, i32 2, i32 %shr46.i
  %114 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx47.i, align 4
  %b_data48.i = getelementptr inbounds %struct.buffer_head, ptr %115, i32 0, i32 5
  %116 = ptrtoint ptr %b_data48.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %b_data48.i, align 4
  %118 = ptrtoint ptr %s_fmask63.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %s_fmask63.i, align 8
  %neg52.i = xor i32 %119, -1
  %and53.i = and i32 %add44.i, %neg52.i
  %add.ptr54.i = getelementptr i8, ptr %117, i32 %and53.i
  %120 = ptrtoint ptr %add.ptr54.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %add.ptr54.i, align 1
  %122 = trunc i32 %shl41.i to i8
  %conv57.i = or i8 %121, %122
  store i8 %conv57.i, ptr %add.ptr54.i, align 1
  br label %_ubh_setblock_.exit

_ubh_setblock_.exit:                              ; preds = %sw.bb39.i, %sw.bb19.i, %sw.bb2.i, %sw.bb.i550, %if.end62._ubh_setblock_.exit_crit_edge
  %123 = ptrtoint ptr %s_fpb.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %s_fpb.i, align 4
  %125 = ptrtoint ptr %s_fshift57.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %s_fshift57.i, align 8
  %shl = shl i32 %124, %126
  %conv66 = zext i32 %shl to i64
  tail call void @inode_sub_bytes(ptr noundef %inode, i64 noundef %conv66) #7
  %127 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags = getelementptr inbounds %struct.ufs_sb_info, ptr %128, i32 0, i32 3
  %129 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %s_flags, align 4
  %and68 = and i32 %130, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %and68)
  %cmp69 = icmp eq i32 %and68, 8192
  br i1 %cmp69, label %if.then71, label %_ubh_setblock_.exit.if.end73_crit_edge

_ubh_setblock_.exit.if.end73_crit_edge:           ; preds = %_ubh_setblock_.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then71:                                        ; preds = %_ubh_setblock_.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ufs_clusteracct(ptr noundef %1, ptr noundef nonnull %call44, i32 noundef %shr, i32 noundef 1)
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %_ubh_setblock_.exit.if.end73_crit_edge
  %131 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i554 = getelementptr inbounds %struct.ufs_sb_info, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %s_bytesex.i554 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %s_bytesex.i554, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp.i555 = icmp eq i32 %134, 0
  %135 = ptrtoint ptr %cs_nbfree to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %cs_nbfree, align 4
  %add.i3.i = add i32 %136, 1
  %137 = tail call i32 @llvm.bswap.i32(i32 %136) #7
  %add.i.i = add i32 %137, 1
  %138 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #7
  %storemerge.i = select i1 %cmp.i555, i32 %138, i32 %add.i3.i
  %139 = ptrtoint ptr %cs_nbfree to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %storemerge.i, ptr %cs_nbfree, align 4
  %140 = ptrtoint ptr %cs_nbfree74 to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %cs_nbfree74, align 8
  %inc = add i64 %141, 1
  store i64 %inc, ptr %cs_nbfree74, align 8
  %142 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %s_fs_info.i, align 16
  %s_csp = getelementptr inbounds %struct.ufs_sb_info, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %s_csp to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %s_csp, align 4
  %cs_nbfree77 = getelementptr %struct.ufs_csum, ptr %145, i32 %conv31582, i32 1
  %s_bytesex.i558 = getelementptr inbounds %struct.ufs_sb_info, ptr %143, i32 0, i32 2
  %146 = ptrtoint ptr %s_bytesex.i558 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %s_bytesex.i558, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp.i559 = icmp eq i32 %147, 0
  %148 = ptrtoint ptr %cs_nbfree77 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %cs_nbfree77, align 4
  %add.i3.i560 = add i32 %149, 1
  %150 = tail call i32 @llvm.bswap.i32(i32 %149) #7
  %add.i.i561 = add i32 %150, 1
  %151 = tail call i32 @llvm.bswap.i32(i32 %add.i.i561) #7
  %storemerge.i562 = select i1 %cmp.i559, i32 %151, i32 %add.i3.i560
  %152 = ptrtoint ptr %cs_nbfree77 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %storemerge.i562, ptr %cs_nbfree77, align 4
  %153 = ptrtoint ptr %fs_magic to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %fs_magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %154)
  %cmp78.not = icmp eq i32 %154, 424935705
  br i1 %cmp78.not, label %if.end73.for.inc_crit_edge, label %if.then80

if.end73.for.inc_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then80:                                        ; preds = %if.end73
  %155 = ptrtoint ptr %s_nspf to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %s_nspf, align 8
  %mul = mul i32 %156, %i.0600
  %157 = ptrtoint ptr %s_spc to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %s_spc, align 8
  %mul.frozen = freeze i32 %mul
  %.frozen620 = freeze i32 %158
  %div = udiv i32 %mul.frozen, %.frozen620
  %159 = ptrtoint ptr %c_boff to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %c_boff, align 4
  %161 = ptrtoint ptr %s_nrpos to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %s_nrpos, align 4
  %mul83 = mul i32 %162, %div
  %163 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags85 = getelementptr inbounds %struct.ufs_sb_info, ptr %164, i32 0, i32 3
  %165 = ptrtoint ptr %s_flags85 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %s_flags85, align 4
  %and86 = and i32 %166, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  %rem99 = urem i32 %mul, %158
  %167 = ptrtoint ptr %s_nsect to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %s_nsect, align 4
  br i1 %tobool87.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  %rem91 = urem i32 %rem99, %168
  %mul93 = mul i32 %rem91, %162
  %div95 = udiv i32 %mul93, %168
  br label %cond.end

cond.false:                                       ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  %rem99.frozen = freeze i32 %rem99
  %.frozen621 = freeze i32 %168
  %div101 = udiv i32 %rem99.frozen, %.frozen621
  %169 = ptrtoint ptr %s_trackskew to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %s_trackskew, align 4
  %mul102 = mul i32 %170, %div101
  %171 = mul i32 %div101, %.frozen621
  %rem108.decomposed = sub i32 %rem99.frozen, %171
  %172 = ptrtoint ptr %s_interleave to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %s_interleave, align 8
  %mul109 = mul i32 %173, %rem108.decomposed
  %add110 = add i32 %mul109, %mul102
  %rem112 = urem i32 %add110, %168
  %mul114 = mul i32 %rem112, %162
  %174 = ptrtoint ptr %s_npsect to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %s_npsect, align 4
  %div115 = udiv i32 %mul114, %175
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div95, %cond.true ], [ %div115, %cond.false ]
  %add116 = add i32 %cond, %mul83
  %shl117 = shl i32 %add116, 1
  %add118 = add i32 %shl117, %160
  %176 = ptrtoint ptr %s_fshift57.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %s_fshift57.i, align 8
  %shr120 = lshr i32 %add118, %177
  %arrayidx121 = getelementptr %struct.ufs_buffer_head, ptr %call44, i32 0, i32 2, i32 %shr120
  %178 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx121, align 4
  %b_data122 = getelementptr inbounds %struct.buffer_head, ptr %179, i32 0, i32 5
  %180 = ptrtoint ptr %b_data122 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %b_data122, align 4
  %182 = mul i32 %div, %.frozen620
  %rem145.decomposed = sub i32 %mul.frozen, %182
  %183 = ptrtoint ptr %s_nsect to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %s_nsect, align 4
  br i1 %tobool87.not, label %cond.false141, label %cond.true130

cond.true130:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %rem136 = urem i32 %rem145.decomposed, %184
  %mul138 = mul i32 %rem136, %162
  %div140 = udiv i32 %mul138, %184
  br label %cond.end165

cond.false141:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %.frozen622 = freeze i32 %184
  %div147 = udiv i32 %rem145.decomposed, %.frozen622
  %185 = ptrtoint ptr %s_trackskew to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %s_trackskew, align 4
  %mul149 = mul i32 %186, %div147
  %187 = mul i32 %div147, %.frozen622
  %rem155.decomposed = sub i32 %rem145.decomposed, %187
  %188 = ptrtoint ptr %s_interleave to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %s_interleave, align 8
  %mul157 = mul i32 %189, %rem155.decomposed
  %add158 = add i32 %mul157, %mul149
  %rem160 = urem i32 %add158, %184
  %mul162 = mul i32 %rem160, %162
  %190 = ptrtoint ptr %s_npsect to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %s_npsect, align 4
  %div164 = udiv i32 %mul162, %191
  br label %cond.end165

cond.end165:                                      ; preds = %cond.false141, %cond.true130
  %cond166 = phi i32 [ %div140, %cond.true130 ], [ %div164, %cond.false141 ]
  %add167 = add i32 %cond166, %mul83
  %shl168 = shl i32 %add167, 1
  %add169 = add i32 %shl168, %160
  %192 = ptrtoint ptr %s_fmask63.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %s_fmask63.i, align 8
  %neg = xor i32 %193, -1
  %and170 = and i32 %add169, %neg
  %add.ptr = getelementptr i8, ptr %181, i32 %and170
  %s_bytesex.i566 = getelementptr inbounds %struct.ufs_sb_info, ptr %164, i32 0, i32 2
  %194 = ptrtoint ptr %s_bytesex.i566 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %s_bytesex.i566, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %cmp.i567 = icmp eq i32 %195, 0
  %196 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %add.ptr, align 2
  %add.i1.i = add i16 %197, 1
  %198 = tail call i16 @llvm.bswap.i16(i16 %197) #7
  %add.i.i568 = add i16 %198, 1
  %199 = tail call i16 @llvm.bswap.i16(i16 %add.i.i568) #7
  %storemerge.i569 = select i1 %cmp.i567, i16 %199, i16 %add.i1.i
  %200 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %storemerge.i569, ptr %add.ptr, align 2
  %201 = ptrtoint ptr %c_btotoff to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %c_btotoff, align 8
  %shl173 = shl i32 %div, 2
  %add174 = add i32 %202, %shl173
  %203 = ptrtoint ptr %s_fshift57.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %s_fshift57.i, align 8
  %shr176 = lshr i32 %add174, %204
  %arrayidx177 = getelementptr %struct.ufs_buffer_head, ptr %call44, i32 0, i32 2, i32 %shr176
  %205 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %arrayidx177, align 4
  %b_data178 = getelementptr inbounds %struct.buffer_head, ptr %206, i32 0, i32 5
  %207 = ptrtoint ptr %b_data178 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %b_data178, align 4
  %209 = ptrtoint ptr %s_fmask63.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %s_fmask63.i, align 8
  %neg183 = xor i32 %210, -1
  %and184 = and i32 %add174, %neg183
  %add.ptr185 = getelementptr i8, ptr %208, i32 %and184
  %211 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i571 = getelementptr inbounds %struct.ufs_sb_info, ptr %212, i32 0, i32 2
  %213 = ptrtoint ptr %s_bytesex.i571 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %s_bytesex.i571, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %cmp.i572 = icmp eq i32 %214, 0
  %215 = ptrtoint ptr %add.ptr185 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %add.ptr185, align 4
  %add.i3.i573 = add i32 %216, 1
  %217 = tail call i32 @llvm.bswap.i32(i32 %216) #7
  %add.i.i574 = add i32 %217, 1
  %218 = tail call i32 @llvm.bswap.i32(i32 %add.i.i574) #7
  %storemerge.i575 = select i1 %cmp.i572, i32 %218, i32 %add.i3.i573
  %219 = ptrtoint ptr %add.ptr185 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %storemerge.i575, ptr %add.ptr185, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end165, %if.end73.for.inc_crit_edge
  %220 = ptrtoint ptr %s_fpb.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %s_fpb.i, align 4
  %add188 = add i32 %221, %i.0600
  %cmp54 = icmp ult i32 %add188, %16
  br i1 %cmp54, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @ubh_mark_buffer_dirty(ptr noundef %5) #7
  tail call void @ubh_mark_buffer_dirty(ptr noundef nonnull %call44) #7
  %222 = ptrtoint ptr %s_flags191 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %s_flags191, align 4
  %and192 = and i32 %223, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192)
  %tobool193.not = icmp eq i32 %and192, 0
  br i1 %tobool193.not, label %for.end.if.end196_crit_edge, label %if.then194

for.end.if.end196_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end196

if.then194:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubh_sync_block(ptr noundef nonnull %call44) #7
  br label %if.end196

if.end196:                                        ; preds = %if.then194, %for.end.if.end196_crit_edge
  %tobool197.not.not = icmp ugt i32 %add, %11
  %conv199 = zext i32 %count.addr.1 to i64
  %add200 = add i64 %fragment.addr.0, %conv199
  br i1 %tobool197.not.not, label %if.end196.do_more_crit_edge, label %if.end201

if.end196.do_more_crit_edge:                      ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_more

if.end201:                                        ; preds = %if.end196
  tail call void @ufs_mark_sb_dirty(ptr noundef %1) #7
  %224 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock203 = getelementptr inbounds %struct.ufs_sb_info, ptr %225, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %s_lock203) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_free_blocks.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_free_blocks, %do.body222)) #7
          to label %if.then218 [label %do.body222], !srcloc !172

if.then218:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_free_blocks.__UNIQUE_ID_ddebug268, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 219, ptr noundef nonnull @.str.15) #7
  br label %do.body222

do.body222:                                       ; preds = %if.then218, %if.end201
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_free_blocks.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_free_blocks, %cleanup)) #7
          to label %if.then236 [label %cleanup], !srcloc !172

if.then236:                                       ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_free_blocks.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.12) #7
  br label %cleanup

failed_unlock:                                    ; preds = %if.then52, %if.end35.failed_unlock_crit_edge, %if.then34
  %226 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock241 = getelementptr inbounds %struct.ufs_sb_info, ptr %227, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %s_lock241) #7
  br label %do.body242

do.body242:                                       ; preds = %failed_unlock, %if.then27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_free_blocks.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_free_blocks, %do.body260)) #7
          to label %if.then256 [label %do.body260], !srcloc !172

if.then256:                                       ; preds = %do.body242
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_free_blocks.__UNIQUE_ID_ddebug270, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 225, ptr noundef nonnull @.str.15) #7
  br label %do.body260

do.body260:                                       ; preds = %if.then256, %do.body242
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_free_blocks.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_free_blocks, %cleanup)) #7
          to label %if.then274 [label %cleanup], !srcloc !172

if.then274:                                       ; preds = %do.body260
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_free_blocks.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.14) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then274, %do.body260, %if.then236, %do.body222
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ufs_new_fragments(ptr noundef %inode, ptr nocapture noundef %p, i64 noundef %fragment, i64 noundef %goal, i32 noundef %count, ptr nocapture noundef writeonly %err, ptr noundef %locked_page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_fragments.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_fragments, %do.body5)) #7
          to label %if.then [label %do.body5], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_fragments.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 356, ptr noundef nonnull @.str.18) #7
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_fragments.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_fragments, %do.end22)) #7
          to label %if.then19 [label %do.end22], !srcloc !172

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_fragments.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.20, i32 noundef %1, i64 noundef %fragment, i64 noundef %goal, i32 noundef %count) #7
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body5
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %bh.i = getelementptr inbounds %struct.ufs_buffer_head, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bh.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data.i, align 4
  %12 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -28, ptr %err, align 4
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.ufs_sb_info, ptr %13, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #7
  %14 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i, align 16
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %fs_magic.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %17, i32 0, i32 62
  %18 = ptrtoint ptr %fs_magic.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fs_magic.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %19)
  %cmp.i = icmp eq i32 %19, 424935705
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %p to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %p, align 8
  %s_bytesex.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %15, i32 0, i32 2
  %22 = ptrtoint ptr %s_bytesex.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_bytesex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.i = icmp eq i32 %23, 0
  %24 = tail call i64 @llvm.bswap.i64(i64 %21) #7
  %retval.0.i.i = select i1 %cmp.i.i, i64 %24, i64 %21
  br label %ufs_data_ptr_to_cpu.exit

cond.false.i:                                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %p, align 4
  %s_bytesex.i7.i = getelementptr inbounds %struct.ufs_sb_info, ptr %15, i32 0, i32 2
  %27 = ptrtoint ptr %s_bytesex.i7.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_bytesex.i7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i8.i = icmp eq i32 %28, 0
  %29 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  %retval.0.i9.i = select i1 %cmp.i8.i, i32 %29, i32 %26
  %conv.i = zext i32 %retval.0.i9.i to i64
  br label %ufs_data_ptr_to_cpu.exit

ufs_data_ptr_to_cpu.exit:                         ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i64 [ %retval.0.i.i, %cond.true.i ], [ %conv.i, %cond.false.i ]
  %conv = zext i32 %count to i64
  %s_fpbmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 46
  %30 = ptrtoint ptr %s_fpbmask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_fpbmask, align 8
  %conv27 = zext i32 %31 to i64
  %and = and i64 %conv27, %fragment
  %add = add nuw nsw i64 %and, %conv
  %s_fpb = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 13
  %32 = ptrtoint ptr %s_fpb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_fpb, align 4
  %conv28 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv28)
  %cmp = icmp ugt i64 %add, %conv28
  br i1 %cmp, label %if.then30, label %ufs_data_ptr_to_cpu.exit.if.end37_crit_edge

ufs_data_ptr_to_cpu.exit.if.end37_crit_edge:      ; preds = %ufs_data_ptr_to_cpu.exit
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = trunc i64 %fragment to i32
  br label %if.end37

if.then30:                                        ; preds = %ufs_data_ptr_to_cpu.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @ufs_warning(ptr noundef %3, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.21, i64 noundef %fragment, i32 noundef %count) #7
  %34 = ptrtoint ptr %s_fpb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_fpb, align 4
  %36 = ptrtoint ptr %s_fpbmask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_fpbmask, align 8
  %38 = trunc i64 %fragment to i32
  %39 = and i32 %37, %38
  %conv36 = sub i32 %35, %39
  br label %if.end37

if.end37:                                         ; preds = %if.then30, %ufs_data_ptr_to_cpu.exit.if.end37_crit_edge
  %.pre-phi = phi i32 [ %.pre, %ufs_data_ptr_to_cpu.exit.if.end37_crit_edge ], [ %38, %if.then30 ]
  %count.addr.0 = phi i32 [ %count, %ufs_data_ptr_to_cpu.exit.if.end37_crit_edge ], [ %conv36, %if.then30 ]
  %40 = ptrtoint ptr %s_fpbmask to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %s_fpbmask, align 8
  %conv41 = and i32 %41, %.pre-phi
  %add42 = add i32 %conv41, %count.addr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv41)
  %tobool43.not = icmp eq i32 %conv41, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i)
  %tobool93.not = icmp eq i64 %cond.i, 0
  br i1 %tobool43.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %if.end37
  br i1 %tobool93.not, label %if.then46, label %if.end49

if.then46:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @ufs_error(ptr noundef %3, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.22, i64 noundef %fragment, i64 noundef 0) #7
  %42 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock48 = getelementptr inbounds %struct.ufs_sb_info, ptr %43, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %s_lock48) #7
  br label %cleanup

if.end49:                                         ; preds = %if.then44
  %i_lastfrag = getelementptr i8, ptr %inode, i32 -184
  %44 = ptrtoint ptr %i_lastfrag to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %i_lastfrag, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %45, i64 %fragment)
  %cmp51 = icmp ugt i64 %45, %fragment
  br i1 %cmp51, label %do.body54, label %if.end49.if.end134_crit_edge

if.end49.if.end134_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end134

do.body54:                                        ; preds = %if.end49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_fragments.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_fragments, %do.body72)) #7
          to label %if.then68 [label %do.body72], !srcloc !172

if.then68:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_fragments.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 388, ptr noundef nonnull @.str.18) #7
  br label %do.body72

do.body72:                                        ; preds = %if.then68, %do.body54
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_fragments.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_fragments, %do.end89)) #7
          to label %if.then86 [label %do.end89], !srcloc !172

if.then86:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_fragments.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.24) #7
  br label %do.end89

do.end89:                                         ; preds = %if.then86, %do.body72
  %46 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock91 = getelementptr inbounds %struct.ufs_sb_info, ptr %47, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %s_lock91) #7
  br label %cleanup

if.else:                                          ; preds = %if.end37
  br i1 %tobool93.not, label %if.else.if.end134_crit_edge, label %do.body95

if.else.if.end134_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end134

do.body95:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_fragments.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_fragments, %do.body113)) #7
          to label %if.then109 [label %do.body113], !srcloc !172

if.then109:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_fragments.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 395, ptr noundef nonnull @.str.18) #7
  br label %do.body113

do.body113:                                       ; preds = %if.then109, %do.body95
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_fragments.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_fragments, %do.end130)) #7
          to label %if.then127 [label %do.end130], !srcloc !172

if.then127:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_fragments.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.24) #7
  br label %do.end130

do.end130:                                        ; preds = %if.then127, %do.body113
  %48 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock132 = getelementptr inbounds %struct.ufs_sb_info, ptr %49, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %s_lock132) #7
  br label %cleanup

if.end134:                                        ; preds = %if.else.if.end134_crit_edge, %if.end49.if.end134_crit_edge
  %cs_nbfree.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %cs_nbfree.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %cs_nbfree.i, align 8
  %s_fpbshift.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 19
  %52 = ptrtoint ptr %s_fpbshift.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %s_fpbshift.i, align 4
  %sh_prom.i = zext i32 %53 to i64
  %shl.i = shl i64 %51, %sh_prom.i
  %cs_nffree.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 1, i32 3
  %54 = ptrtoint ptr %cs_nffree.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %cs_nffree.i, align 8
  %add.i = add i64 %shl.i, %55
  %s_root_blocks = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 64
  %56 = ptrtoint ptr %s_root_blocks to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %s_root_blocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %57)
  %cmp136.not = icmp ugt i64 %add.i, %57
  br i1 %cmp136.not, label %if.end134.if.end186_crit_edge, label %if.then144, !prof !173

if.end134.if.end186_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end186

if.then144:                                       ; preds = %if.end134
  %call145 = tail call zeroext i1 @capable(i32 noundef 24) #7
  br i1 %call145, label %if.then144.if.end186_crit_edge, label %if.then146

if.then144.if.end186_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end186

if.then146:                                       ; preds = %if.then144
  %58 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock148 = getelementptr inbounds %struct.ufs_sb_info, ptr %59, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %s_lock148) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_fragments.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_fragments, %do.body167)) #7
          to label %if.then163 [label %do.body167], !srcloc !172

if.then163:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_fragments.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 407, ptr noundef nonnull @.str.18) #7
  br label %do.body167

do.body167:                                       ; preds = %if.then163, %if.then146
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_fragments.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_fragments, %cleanup)) #7
          to label %if.then181 [label %cleanup], !srcloc !172

if.then181:                                       ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_fragments.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.14) #7
  br label %cleanup

if.end186:                                        ; preds = %if.then144.if.end186_crit_edge, %if.end134.if.end186_crit_edge
  %s_size = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 8
  %60 = ptrtoint ptr %s_size to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %s_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %61, i64 %goal)
  %cmp187.not = icmp ugt i64 %61, %goal
  %spec.store.select = select i1 %cmp187.not, i64 %goal, i64 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %spec.store.select)
  %cmp191 = icmp eq i64 %spec.store.select, 0
  br i1 %cmp191, label %if.then193, label %if.else195

if.then193:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino194 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %62 = ptrtoint ptr %i_ino194 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %i_ino194, align 8
  %s_ipg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 36
  %64 = ptrtoint ptr %s_ipg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %s_ipg, align 4
  %div = udiv i32 %63, %65
  br label %if.end198

if.else195:                                       ; preds = %if.end186
  %s_fpg.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 37
  %66 = ptrtoint ptr %s_fpg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %s_fpg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %spec.store.select)
  %cmp164.i = icmp ult i64 %spec.store.select, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !173

if.then168.i:                                     ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i = trunc i64 %spec.store.select to i32
  %div172.i = udiv i32 %conv169.i, %67
  br label %if.end198

if.else174.i:                                     ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #9
  %68 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %67, i64 %spec.store.select) #10, !srcloc !176
  %asmresult1.i.i = extractvalue { i64, i64 } %68, 1
  %extract.t746 = trunc i64 %asmresult1.i.i to i32
  br label %if.end198

if.end198:                                        ; preds = %if.else174.i, %if.then168.i, %if.then193
  %cgno.0 = phi i32 [ %div, %if.then193 ], [ %div172.i, %if.then168.i ], [ %extract.t746, %if.else174.i ]
  br i1 %tobool43.not, label %if.then201, label %if.end261

if.then201:                                       ; preds = %if.end198
  %call202 = tail call fastcc i64 @ufs_alloc_fragments(ptr noundef %inode, i32 noundef %cgno.0, i64 noundef %spec.store.select, i32 noundef %count.addr.0)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call202)
  %tobool203.not = icmp eq i64 %call202, 0
  br i1 %tobool203.not, label %if.then201.if.end222_crit_edge, label %if.then204

if.then201.if.end222_crit_edge:                   ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end222

if.then204:                                       ; preds = %if.then201
  %cmp208 = icmp ne ptr %locked_page, null
  %conv209 = zext i1 %cmp208 to i32
  tail call fastcc void @ufs_clear_frags(ptr noundef %inode, i64 noundef %call202, i32 noundef %count.addr.0, i32 noundef %conv209)
  %69 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %err, align 4
  %meta_lock = getelementptr i8, ptr %inode, i32 -176
  %lock.i = getelementptr i8, ptr %inode, i32 -140
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %70 = ptrtoint ptr %meta_lock to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %meta_lock, align 4
  %inc.i.i.i.i = add i32 %71, 1
  store i32 %inc.i.i.i.i, ptr %meta_lock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !177
  %dep_map.i.i.i = getelementptr i8, ptr %inode, i32 -172
  %72 = tail call ptr @llvm.returnaddress(i32 0) #7
  %73 = ptrtoint ptr %72 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %73) #7
  %74 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %s_fs_info.i, align 16
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %fs_magic.i676 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %77, i32 0, i32 62
  %78 = ptrtoint ptr %fs_magic.i676 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %fs_magic.i676, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %79)
  %cmp.i677 = icmp eq i32 %79, 424935705
  br i1 %cmp.i677, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #9
  %s_bytesex.i.i678 = getelementptr inbounds %struct.ufs_sb_info, ptr %75, i32 0, i32 2
  %80 = ptrtoint ptr %s_bytesex.i.i678 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %s_bytesex.i.i678, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp.i.i679 = icmp eq i32 %81, 0
  %82 = tail call i64 @llvm.bswap.i64(i64 %call202) #7
  %retval.0.i.i680 = select i1 %cmp.i.i679, i64 %82, i64 %call202
  %83 = ptrtoint ptr %p to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %retval.0.i.i680, ptr %p, align 8
  br label %ufs_cpu_to_data_ptr.exit

if.else.i:                                        ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i681 = trunc i64 %call202 to i32
  %s_bytesex.i8.i = getelementptr inbounds %struct.ufs_sb_info, ptr %75, i32 0, i32 2
  %84 = ptrtoint ptr %s_bytesex.i8.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %s_bytesex.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp.i9.i = icmp eq i32 %85, 0
  %86 = tail call i32 @llvm.bswap.i32(i32 %conv.i681) #7
  %retval.0.i10.i = select i1 %cmp.i9.i, i32 %86, i32 %conv.i681
  %87 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %retval.0.i10.i, ptr %p, align 4
  br label %ufs_cpu_to_data_ptr.exit

ufs_cpu_to_data_ptr.exit:                         ; preds = %if.else.i, %if.then.i
  %i_lastfrag212 = getelementptr i8, ptr %inode, i32 -184
  %88 = ptrtoint ptr %i_lastfrag212 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %i_lastfrag212, align 8
  %conv213 = zext i32 %count.addr.0 to i64
  %add214 = add i64 %conv213, %fragment
  %90 = tail call i64 @llvm.umax.i64(i64 %89, i64 %add214)
  %91 = ptrtoint ptr %i_lastfrag212 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %90, ptr %i_lastfrag212, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %73) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !178
  %92 = ptrtoint ptr %meta_lock to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %meta_lock, align 4
  %inc.i.i.i = add i32 %93, 1
  store i32 %inc.i.i.i, ptr %meta_lock, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  br label %if.end222

if.end222:                                        ; preds = %ufs_cpu_to_data_ptr.exit, %if.then201.if.end222_crit_edge
  %94 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock224 = getelementptr inbounds %struct.ufs_sb_info, ptr %95, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %s_lock224) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_fragments.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_fragments, %do.body243)) #7
          to label %if.then239 [label %do.body243], !srcloc !172

if.then239:                                       ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_fragments.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 435, ptr noundef nonnull @.str.18) #7
  br label %do.body243

do.body243:                                       ; preds = %if.then239, %if.end222
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_fragments.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_fragments, %cleanup)) #7
          to label %if.then257 [label %cleanup], !srcloc !172

if.then257:                                       ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_fragments.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.26, i64 noundef %call202) #7
  br label %cleanup

if.end261:                                        ; preds = %if.end198
  %call262 = tail call fastcc i64 @ufs_add_fragments(ptr noundef %inode, i64 noundef %cond.i, i32 noundef %conv41, i32 noundef %add42)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call262)
  %tobool263.not = icmp eq i64 %call262, 0
  br i1 %tobool263.not, label %if.end325, label %if.then264

if.then264:                                       ; preds = %if.end261
  %96 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %err, align 4
  %lock.i688 = getelementptr i8, ptr %inode, i32 -140
  tail call void @_raw_spin_lock(ptr noundef %lock.i688) #7
  %i_lastfrag268 = getelementptr i8, ptr %inode, i32 -184
  %97 = ptrtoint ptr %i_lastfrag268 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %i_lastfrag268, align 8
  %conv269 = zext i32 %count.addr.0 to i64
  %add270 = add i64 %conv269, %fragment
  %99 = tail call i64 @llvm.umax.i64(i64 %98, i64 %add270)
  %100 = ptrtoint ptr %i_lastfrag268 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %99, ptr %i_lastfrag268, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock.i688) #7
  %conv282 = zext i32 %conv41 to i64
  %add283 = add i64 %call262, %conv282
  %cmp285 = icmp ne ptr %locked_page, null
  %conv286 = zext i1 %cmp285 to i32
  tail call fastcc void @ufs_clear_frags(ptr noundef %inode, i64 noundef %add283, i32 noundef %count.addr.0, i32 noundef %conv286)
  %101 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock288 = getelementptr inbounds %struct.ufs_sb_info, ptr %102, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %s_lock288) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_fragments.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_fragments, %do.body307)) #7
          to label %if.then303 [label %do.body307], !srcloc !172

if.then303:                                       ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_fragments.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 452, ptr noundef nonnull @.str.18) #7
  br label %do.body307

do.body307:                                       ; preds = %if.then303, %if.then264
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_fragments.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_fragments, %cleanup)) #7
          to label %if.then321 [label %cleanup], !srcloc !172

if.then321:                                       ; preds = %do.body307
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_fragments.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.26, i64 noundef %call262) #7
  br label %cleanup

if.end325:                                        ; preds = %if.end261
  %fs_optim = getelementptr inbounds %struct.ufs_super_block_first, ptr %11, i32 0, i32 32
  %103 = ptrtoint ptr %fs_optim to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %fs_optim, align 4
  %105 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp.i695 = icmp eq i32 %108, 0
  %109 = tail call i32 @llvm.bswap.i32(i32 %104) #7
  %retval.0.i696 = select i1 %cmp.i695, i32 %109, i32 %104
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i696)
  %cmp327 = icmp eq i32 %retval.0.i696, 1
  br i1 %cmp327, label %if.then329, label %if.else337

if.then329:                                       ; preds = %if.end325
  %110 = ptrtoint ptr %cs_nffree.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %cs_nffree.i, align 8
  %s_space_to_time = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 66
  %112 = ptrtoint ptr %s_space_to_time to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %s_space_to_time, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %111, i64 %113)
  %cmp331 = icmp ult i64 %111, %113
  br i1 %cmp331, label %if.then329.if.end348.sink.split_crit_edge, label %if.then329.if.end348_crit_edge

if.then329.if.end348_crit_edge:                   ; preds = %if.then329
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end348

if.then329.if.end348.sink.split_crit_edge:        ; preds = %if.then329
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end348.sink.split

if.else337:                                       ; preds = %if.end325
  %114 = ptrtoint ptr %s_fpb to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %s_fpb, align 4
  %116 = ptrtoint ptr %cs_nffree.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %cs_nffree.i, align 8
  %s_time_to_space = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 65
  %118 = ptrtoint ptr %s_time_to_space to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %s_time_to_space, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %117, i64 %119)
  %cmp342 = icmp ugt i64 %117, %119
  br i1 %cmp342, label %if.then344, label %if.else337.if.end348_crit_edge

if.else337.if.end348_crit_edge:                   ; preds = %if.else337
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end348

if.then344:                                       ; preds = %if.else337
  call void @__sanitizer_cov_trace_pc() #9
  %retval.0.i703 = select i1 %cmp.i695, i32 16777216, i32 1
  br label %if.end348.sink.split

if.end348.sink.split:                             ; preds = %if.then344, %if.then329.if.end348.sink.split_crit_edge
  %retval.0.i703.sink = phi i32 [ %retval.0.i703, %if.then344 ], [ 0, %if.then329.if.end348.sink.split_crit_edge ]
  %request.0.in.ph = phi i32 [ %115, %if.then344 ], [ %add42, %if.then329.if.end348.sink.split_crit_edge ]
  %120 = ptrtoint ptr %fs_optim to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %retval.0.i703.sink, ptr %fs_optim, align 4
  br label %if.end348

if.end348:                                        ; preds = %if.end348.sink.split, %if.else337.if.end348_crit_edge, %if.then329.if.end348_crit_edge
  %request.0.in = phi i32 [ %add42, %if.then329.if.end348_crit_edge ], [ %115, %if.else337.if.end348_crit_edge ], [ %request.0.in.ph, %if.end348.sink.split ]
  %call350 = tail call fastcc i64 @ufs_alloc_fragments(ptr noundef %inode, i32 noundef %cgno.0, i64 noundef %spec.store.select, i32 noundef %request.0.in)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call350)
  %tobool351.not = icmp eq i64 %call350, 0
  br i1 %tobool351.not, label %if.end430, label %if.then352

if.then352:                                       ; preds = %if.end348
  %conv353 = zext i32 %conv41 to i64
  %add354 = add i64 %call350, %conv353
  %cmp356 = icmp ne ptr %locked_page, null
  %conv357 = zext i1 %cmp356 to i32
  tail call fastcc void @ufs_clear_frags(ptr noundef %inode, i64 noundef %add354, i32 noundef %count.addr.0, i32 noundef %conv357)
  %121 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock359 = getelementptr inbounds %struct.ufs_sb_info, ptr %122, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %s_lock359) #7
  %sub361 = sub i64 %fragment, %conv353
  %s_sbbase = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 57
  %123 = ptrtoint ptr %s_sbbase to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %s_sbbase, align 4
  %conv362 = zext i32 %124 to i64
  %add363 = add i64 %cond.i, %conv362
  %add366 = add i64 %call350, %conv362
  tail call fastcc void @ufs_change_blocknr(ptr noundef %inode, i64 noundef %sub361, i32 noundef %conv41, i64 noundef %add363, i64 noundef %add366, ptr noundef %locked_page)
  %125 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %err, align 4
  %meta_lock368 = getelementptr i8, ptr %inode, i32 -176
  %lock.i706 = getelementptr i8, ptr %inode, i32 -140
  tail call void @_raw_spin_lock(ptr noundef %lock.i706) #7
  %126 = ptrtoint ptr %meta_lock368 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %meta_lock368, align 4
  %inc.i.i.i.i707 = add i32 %127, 1
  store i32 %inc.i.i.i.i707, ptr %meta_lock368, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !177
  %dep_map.i.i.i708 = getelementptr i8, ptr %inode, i32 -172
  %128 = tail call ptr @llvm.returnaddress(i32 0) #7
  %129 = ptrtoint ptr %128 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i708, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %129) #7
  %130 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %s_fs_info.i, align 16
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 4
  %fs_magic.i710 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %133, i32 0, i32 62
  %134 = ptrtoint ptr %fs_magic.i710 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %fs_magic.i710, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %135)
  %cmp.i711 = icmp eq i32 %135, 424935705
  br i1 %cmp.i711, label %if.then.i715, label %if.else.i720

if.then.i715:                                     ; preds = %if.then352
  call void @__sanitizer_cov_trace_pc() #9
  %s_bytesex.i.i712 = getelementptr inbounds %struct.ufs_sb_info, ptr %131, i32 0, i32 2
  %136 = ptrtoint ptr %s_bytesex.i.i712 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %s_bytesex.i.i712, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp.i.i713 = icmp eq i32 %137, 0
  %138 = tail call i64 @llvm.bswap.i64(i64 %call350) #7
  %retval.0.i.i714 = select i1 %cmp.i.i713, i64 %138, i64 %call350
  %139 = ptrtoint ptr %p to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %retval.0.i.i714, ptr %p, align 8
  br label %ufs_cpu_to_data_ptr.exit721

if.else.i720:                                     ; preds = %if.then352
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i716 = trunc i64 %call350 to i32
  %s_bytesex.i8.i717 = getelementptr inbounds %struct.ufs_sb_info, ptr %131, i32 0, i32 2
  %140 = ptrtoint ptr %s_bytesex.i8.i717 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %s_bytesex.i8.i717, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp.i9.i718 = icmp eq i32 %141, 0
  %142 = tail call i32 @llvm.bswap.i32(i32 %conv.i716) #7
  %retval.0.i10.i719 = select i1 %cmp.i9.i718, i32 %142, i32 %conv.i716
  %143 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %retval.0.i10.i719, ptr %p, align 4
  br label %ufs_cpu_to_data_ptr.exit721

ufs_cpu_to_data_ptr.exit721:                      ; preds = %if.else.i720, %if.then.i715
  %i_lastfrag370 = getelementptr i8, ptr %inode, i32 -184
  %144 = ptrtoint ptr %i_lastfrag370 to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %i_lastfrag370, align 8
  %conv371 = zext i32 %count.addr.0 to i64
  %add372 = add i64 %conv371, %fragment
  %146 = tail call i64 @llvm.umax.i64(i64 %145, i64 %add372)
  %147 = ptrtoint ptr %i_lastfrag370 to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 %146, ptr %i_lastfrag370, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i708, i32 noundef %129) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !178
  %148 = ptrtoint ptr %meta_lock368 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %meta_lock368, align 4
  %inc.i.i.i726 = add i32 %149, 1
  store i32 %inc.i.i.i726, ptr %meta_lock368, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i706) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %request.0.in, i32 %add42)
  %cmp385 = icmp ugt i32 %request.0.in, %add42
  br i1 %cmp385, label %if.then387, label %ufs_cpu_to_data_ptr.exit721.if.end393_crit_edge

ufs_cpu_to_data_ptr.exit721.if.end393_crit_edge:  ; preds = %ufs_cpu_to_data_ptr.exit721
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end393

if.then387:                                       ; preds = %ufs_cpu_to_data_ptr.exit721
  call void @__sanitizer_cov_trace_pc() #9
  %conv384 = zext i32 %add42 to i64
  %add389 = add i64 %call350, %conv384
  %sub391 = sub i32 %request.0.in, %add42
  tail call void @ufs_free_fragments(ptr noundef %inode, i64 noundef %add389, i32 noundef %sub391)
  br label %if.end393

if.end393:                                        ; preds = %if.then387, %ufs_cpu_to_data_ptr.exit721.if.end393_crit_edge
  tail call void @ufs_free_fragments(ptr noundef %inode, i64 noundef %cond.i, i32 noundef %conv41)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_fragments.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_fragments, %do.body412)) #7
          to label %if.then408 [label %do.body412], !srcloc !172

if.then408:                                       ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_fragments.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 485, ptr noundef nonnull @.str.18) #7
  br label %do.body412

do.body412:                                       ; preds = %if.then408, %if.end393
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_fragments.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_fragments, %cleanup)) #7
          to label %if.then426 [label %cleanup], !srcloc !172

if.then426:                                       ; preds = %do.body412
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_fragments.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.26, i64 noundef %call350) #7
  br label %cleanup

if.end430:                                        ; preds = %if.end348
  %150 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock432 = getelementptr inbounds %struct.ufs_sb_info, ptr %151, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %s_lock432) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_fragments.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_fragments, %do.body451)) #7
          to label %if.then447 [label %do.body451], !srcloc !172

if.then447:                                       ; preds = %if.end430
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_fragments.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 490, ptr noundef nonnull @.str.18) #7
  br label %do.body451

do.body451:                                       ; preds = %if.then447, %if.end430
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_fragments.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_fragments, %cleanup)) #7
          to label %if.then465 [label %cleanup], !srcloc !172

if.then465:                                       ; preds = %do.body451
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_fragments.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.14) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then465, %do.body451, %if.then426, %do.body412, %if.then321, %do.body307, %if.then257, %do.body243, %if.then181, %do.body167, %do.end130, %do.end89, %if.then46
  %retval.0 = phi i64 [ 0, %do.end89 ], [ -1, %if.then46 ], [ 0, %do.end130 ], [ 0, %if.then181 ], [ %call202, %if.then257 ], [ %call262, %if.then321 ], [ %call350, %if.then426 ], [ 0, %if.then465 ], [ 0, %do.body167 ], [ %call202, %do.body243 ], [ %call262, %do.body307 ], [ %call350, %do.body412 ], [ 0, %do.body451 ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufs_warning(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @ufs_alloc_fragments(ptr noundef %inode, i32 noundef %cgno, i64 noundef %goal, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_alloc_fragments.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_alloc_fragments, %do.body4)) #7
          to label %if.then [label %do.body4], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_alloc_fragments.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 598, ptr noundef nonnull @.str.44) #7
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_alloc_fragments.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_alloc_fragments, %do.end21)) #7
          to label %if.then18 [label %do.end21], !srcloc !172

if.then18:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_alloc_fragments.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.46, i32 noundef %1, i32 noundef %cgno, i64 noundef %goal, i32 noundef %count) #7
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %do.body4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %s_ucg = getelementptr inbounds %struct.ufs_sb_info, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %s_ucg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_ucg, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 %cgno
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data, align 4
  %cs_nbfree = getelementptr inbounds %struct.ufs_cylinder_group, ptr %13, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %cs_nbfree to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cs_nbfree, align 4
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  %18 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  %retval.0.i17 = select i1 %cmp.i, i32 %18, i32 %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i17)
  %tobool25.not = icmp eq i32 %retval.0.i17, 0
  br i1 %tobool25.not, label %for.cond.preheader, label %do.end21.cg_found_crit_edge

do.end21.cg_found_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cg_found

for.cond.preheader:                               ; preds = %do.end21
  %s_fpb = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 13
  %19 = ptrtoint ptr %s_fpb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_fpb, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %count)
  %cmp109 = icmp ugt i32 %20, %count
  br i1 %cmp109, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.cond33.preheader_crit_edge

for.cond.preheader.for.cond33.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond33.preheader

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add i32 %k.0110, 1
  %exitcond.not = icmp eq i32 %inc, %20
  br i1 %exitcond.not, label %for.cond.for.cond33.preheader_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.for.cond33.preheader_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond33.preheader

for.cond33.preheader:                             ; preds = %for.cond.for.cond33.preheader_crit_edge, %for.cond.preheader.for.cond33.preheader_crit_edge
  %s_ncg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 10
  %21 = ptrtoint ptr %s_ncg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_ncg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp34113 = icmp ugt i32 %22, 1
  br i1 %cmp34113, label %for.cond33.preheader.for.body35_crit_edge, label %for.cond33.preheader.do.body103_crit_edge

for.cond33.preheader.do.body103_crit_edge:        ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body103

for.cond33.preheader.for.body35_crit_edge:        ; preds = %for.cond33.preheader
  br label %for.body35

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %k.0110 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ %count, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx28 = getelementptr %struct.ufs_cylinder_group, ptr %13, i32 0, i32 11, i32 %k.0110
  %23 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx28, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  %retval.0.i21 = select i1 %cmp.i, i32 %25, i32 %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i21)
  %tobool30.not = icmp eq i32 %retval.0.i21, 0
  br i1 %tobool30.not, label %for.cond, label %for.body.cg_found_crit_edge

for.body.cg_found_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cg_found

for.body35:                                       ; preds = %for.inc64.for.body35_crit_edge, %for.cond33.preheader.for.body35_crit_edge
  %cgno.addr.0115 = phi i32 [ %spec.select, %for.inc64.for.body35_crit_edge ], [ %cgno, %for.cond33.preheader.for.body35_crit_edge ]
  %j.0114 = phi i32 [ %mul, %for.inc64.for.body35_crit_edge ], [ 1, %for.cond33.preheader.for.body35_crit_edge ]
  %add = add i32 %cgno.addr.0115, %j.0114
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %22)
  %cmp37.not = icmp ult i32 %add, %22
  %sub = select i1 %cmp37.not, i32 0, i32 %22
  %spec.select = sub i32 %add, %sub
  %arrayidx43 = getelementptr ptr, ptr %9, i32 %spec.select
  %26 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx43, align 4
  %b_data44 = getelementptr inbounds %struct.buffer_head, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %b_data44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_data44, align 4
  %cs_nbfree46 = getelementptr inbounds %struct.ufs_cylinder_group, ptr %29, i32 0, i32 7, i32 1
  %30 = ptrtoint ptr %cs_nbfree46 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cs_nbfree46, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  %retval.0.i26 = select i1 %cmp.i, i32 %32, i32 %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i26)
  %tobool48.not = icmp eq i32 %retval.0.i26, 0
  br i1 %tobool48.not, label %for.cond51.preheader, label %for.body35.cg_found_crit_edge

for.body35.cg_found_crit_edge:                    ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cg_found

for.cond51.preheader:                             ; preds = %for.body35
  br i1 %cmp109, label %for.cond51.preheader.for.body54_crit_edge, label %for.cond51.preheader.for.inc64_crit_edge

for.cond51.preheader.for.inc64_crit_edge:         ; preds = %for.cond51.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc64

for.cond51.preheader.for.body54_crit_edge:        ; preds = %for.cond51.preheader
  br label %for.body54

for.cond51:                                       ; preds = %for.body54
  %inc62 = add i32 %k.1112, 1
  %exitcond140.not = icmp eq i32 %inc62, %20
  br i1 %exitcond140.not, label %for.cond51.for.inc64_crit_edge, label %for.cond51.for.body54_crit_edge

for.cond51.for.body54_crit_edge:                  ; preds = %for.cond51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body54

for.cond51.for.inc64_crit_edge:                   ; preds = %for.cond51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc64

for.body54:                                       ; preds = %for.cond51.for.body54_crit_edge, %for.cond51.preheader.for.body54_crit_edge
  %k.1112 = phi i32 [ %inc62, %for.cond51.for.body54_crit_edge ], [ %count, %for.cond51.preheader.for.body54_crit_edge ]
  %arrayidx56 = getelementptr %struct.ufs_cylinder_group, ptr %29, i32 0, i32 11, i32 %k.1112
  %33 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx56, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  %retval.0.i30 = select i1 %cmp.i, i32 %35, i32 %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i30)
  %tobool58.not = icmp eq i32 %retval.0.i30, 0
  br i1 %tobool58.not, label %for.cond51, label %for.body54.cg_found_crit_edge

for.body54.cg_found_crit_edge:                    ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cg_found

for.inc64:                                        ; preds = %for.cond51.for.inc64_crit_edge, %for.cond51.preheader.for.inc64_crit_edge
  %mul = shl i32 %j.0114, 1
  %cmp34 = icmp ult i32 %mul, %22
  br i1 %cmp34, label %for.inc64.for.body35_crit_edge, label %for.end65

for.inc64.for.body35_crit_edge:                   ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body35

for.end65:                                        ; preds = %for.inc64
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp70119 = icmp ugt i32 %22, 2
  br i1 %cmp70119, label %for.body71.lr.ph, label %for.end65.do.body103_crit_edge

for.end65.do.body103_crit_edge:                   ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body103

for.body71.lr.ph:                                 ; preds = %for.end65
  %add66 = add i32 %cgno, 1
  %rem = urem i32 %add66, %22
  br label %for.body71

for.body71:                                       ; preds = %for.inc100.for.body71_crit_edge, %for.body71.lr.ph
  %cgno.addr.2121 = phi i32 [ %rem, %for.body71.lr.ph ], [ %spec.store.select, %for.inc100.for.body71_crit_edge ]
  %j.1120 = phi i32 [ 2, %for.body71.lr.ph ], [ %inc101, %for.inc100.for.body71_crit_edge ]
  %inc72 = add i32 %cgno.addr.2121, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc72, i32 %22)
  %cmp74.not = icmp ult i32 %inc72, %22
  %spec.store.select = select i1 %cmp74.not, i32 %inc72, i32 0
  %arrayidx79 = getelementptr ptr, ptr %9, i32 %spec.store.select
  %36 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx79, align 4
  %b_data80 = getelementptr inbounds %struct.buffer_head, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %b_data80 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %b_data80, align 4
  %cs_nbfree82 = getelementptr inbounds %struct.ufs_cylinder_group, ptr %39, i32 0, i32 7, i32 1
  %40 = ptrtoint ptr %cs_nbfree82 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cs_nbfree82, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #7
  %retval.0.i35 = select i1 %cmp.i, i32 %42, i32 %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i35)
  %tobool84.not = icmp eq i32 %retval.0.i35, 0
  br i1 %tobool84.not, label %for.cond87.preheader, label %for.body71.cg_found_crit_edge

for.body71.cg_found_crit_edge:                    ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cg_found

for.cond87.preheader:                             ; preds = %for.body71
  br i1 %cmp109, label %for.cond87.preheader.for.body90_crit_edge, label %for.cond87.preheader.for.inc100_crit_edge

for.cond87.preheader.for.inc100_crit_edge:        ; preds = %for.cond87.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc100

for.cond87.preheader.for.body90_crit_edge:        ; preds = %for.cond87.preheader
  br label %for.body90

for.cond87:                                       ; preds = %for.body90
  %inc98 = add i32 %k.2118, 1
  %exitcond141.not = icmp eq i32 %inc98, %20
  br i1 %exitcond141.not, label %for.cond87.for.inc100_crit_edge, label %for.cond87.for.body90_crit_edge

for.cond87.for.body90_crit_edge:                  ; preds = %for.cond87
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body90

for.cond87.for.inc100_crit_edge:                  ; preds = %for.cond87
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc100

for.body90:                                       ; preds = %for.cond87.for.body90_crit_edge, %for.cond87.preheader.for.body90_crit_edge
  %k.2118 = phi i32 [ %inc98, %for.cond87.for.body90_crit_edge ], [ %count, %for.cond87.preheader.for.body90_crit_edge ]
  %arrayidx92 = getelementptr %struct.ufs_cylinder_group, ptr %39, i32 0, i32 11, i32 %k.2118
  %43 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx92, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  %retval.0.i39 = select i1 %cmp.i, i32 %45, i32 %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i39)
  %tobool94.not = icmp eq i32 %retval.0.i39, 0
  br i1 %tobool94.not, label %for.cond87, label %for.body90.cg_found_crit_edge

for.body90.cg_found_crit_edge:                    ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #9
  br label %cg_found

for.inc100:                                       ; preds = %for.cond87.for.inc100_crit_edge, %for.cond87.preheader.for.inc100_crit_edge
  %inc101 = add nuw i32 %j.1120, 1
  %exitcond142.not = icmp eq i32 %inc101, %22
  br i1 %exitcond142.not, label %for.inc100.do.body103_crit_edge, label %for.inc100.for.body71_crit_edge

for.inc100.for.body71_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body71

for.inc100.do.body103_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body103

do.body103:                                       ; preds = %for.inc100.do.body103_crit_edge, %for.end65.do.body103_crit_edge, %for.cond33.preheader.do.body103_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_alloc_fragments.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_alloc_fragments, %do.body121)) #7
          to label %if.then117 [label %do.body121], !srcloc !172

if.then117:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_alloc_fragments.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 631, ptr noundef nonnull @.str.44) #7
  br label %do.body121

do.body121:                                       ; preds = %if.then117, %do.body103
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_alloc_fragments.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_alloc_fragments, %cleanup)) #7
          to label %if.then135 [label %cleanup], !srcloc !172

if.then135:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_alloc_fragments.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.14) #7
  br label %cleanup

cg_found:                                         ; preds = %for.body90.cg_found_crit_edge, %for.body71.cg_found_crit_edge, %for.body54.cg_found_crit_edge, %for.body35.cg_found_crit_edge, %for.body.cg_found_crit_edge, %do.end21.cg_found_crit_edge
  %cgno.addr.3 = phi i32 [ %cgno, %do.end21.cg_found_crit_edge ], [ %spec.store.select, %for.body90.cg_found_crit_edge ], [ %spec.store.select, %for.body71.cg_found_crit_edge ], [ %spec.select, %for.body54.cg_found_crit_edge ], [ %spec.select, %for.body35.cg_found_crit_edge ], [ %cgno, %for.body.cg_found_crit_edge ]
  %call139 = tail call ptr @ufs_load_cylinder(ptr noundef %3, i32 noundef %cgno.addr.3) #7
  %tobool140.not = icmp eq ptr %call139, null
  br i1 %tobool140.not, label %cg_found.cleanup_crit_edge, label %if.end142

cg_found.cleanup_crit_edge:                       ; preds = %cg_found
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end142:                                        ; preds = %cg_found
  %bh = getelementptr inbounds %struct.ufs_buffer_head, ptr %call139, i32 0, i32 2
  %46 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bh, align 8
  %b_data145 = getelementptr inbounds %struct.buffer_head, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %b_data145 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %b_data145, align 4
  %cg_magic = getelementptr inbounds %struct.ufs_cylinder_group, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %cg_magic to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cg_magic, align 4
  %52 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i41 = getelementptr inbounds %struct.ufs_sb_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %s_bytesex.i41 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_bytesex.i41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i42 = icmp eq i32 %55, 0
  %56 = tail call i32 @llvm.bswap.i32(i32 %51) #7
  %retval.0.i43 = select i1 %cmp.i42, i32 %56, i32 %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 590421, i32 %retval.0.i43)
  %cmp147 = icmp eq i32 %retval.0.i43, 590421
  br i1 %cmp147, label %if.end142.if.end149_crit_edge, label %if.then148

if.end142.if.end149_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149

if.then148:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @ufs_panic(ptr noundef %3, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.9, i32 noundef %cgno.addr.3) #7
  br label %if.end149

if.end149:                                        ; preds = %if.then148, %if.end142.if.end149_crit_edge
  %call.i = tail call i64 @ktime_get_real_seconds() #7
  %conv.i = trunc i64 %call.i to i32
  %57 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %s_bytesex.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %s_bytesex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i.i = icmp eq i32 %60, 0
  %61 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #7
  %retval.0.i.i = select i1 %cmp.i.i, i32 %61, i32 %conv.i
  %cg_time = getelementptr inbounds %struct.ufs_cylinder_group, ptr %49, i32 0, i32 2
  %62 = ptrtoint ptr %cg_time to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %retval.0.i.i, ptr %cg_time, align 8
  %s_fpb151 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 13
  %63 = ptrtoint ptr %s_fpb151 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %s_fpb151, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %count)
  %cmp152 = icmp eq i32 %64, %count
  br i1 %cmp152, label %if.then153, label %for.cond159.preheader

for.cond159.preheader:                            ; preds = %if.end149
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %count)
  %cmp161122 = icmp ugt i32 %64, %count
  br i1 %cmp161122, label %for.body162.lr.ph, label %for.cond159.preheader.for.end171_crit_edge

for.cond159.preheader.for.end171_crit_edge:       ; preds = %for.cond159.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end171

for.body162.lr.ph:                                ; preds = %for.cond159.preheader
  %65 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i45 = getelementptr inbounds %struct.ufs_sb_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %s_bytesex.i45 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %s_bytesex.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp.i46 = icmp eq i32 %68, 0
  br label %for.body162

if.then153:                                       ; preds = %if.end149
  %call154 = tail call fastcc i64 @ufs_alloccg_block(ptr noundef %inode, ptr noundef nonnull %call139, i64 noundef %goal)
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call154)
  %cmp155 = icmp eq i64 %call154, -1
  br i1 %cmp155, label %if.then153.cleanup_crit_edge, label %if.then153.succed_crit_edge

if.then153.succed_crit_edge:                      ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #9
  br label %succed

if.then153.cleanup_crit_edge:                     ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body162:                                      ; preds = %for.inc169.for.body162_crit_edge, %for.body162.lr.ph
  %allocsize.0123 = phi i32 [ %count, %for.body162.lr.ph ], [ %inc170, %for.inc169.for.body162_crit_edge ]
  %arrayidx164 = getelementptr %struct.ufs_cylinder_group, ptr %49, i32 0, i32 11, i32 %allocsize.0123
  %69 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx164, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #7
  %retval.0.i47 = select i1 %cmp.i46, i32 %71, i32 %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i47)
  %cmp166.not = icmp eq i32 %retval.0.i47, 0
  br i1 %cmp166.not, label %for.inc169, label %for.body162.for.end171_crit_edge

for.body162.for.end171_crit_edge:                 ; preds = %for.body162
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end171

for.inc169:                                       ; preds = %for.body162
  %inc170 = add i32 %allocsize.0123, 1
  %exitcond143.not = icmp eq i32 %inc170, %64
  br i1 %exitcond143.not, label %for.inc169.if.then174_crit_edge, label %for.inc169.for.body162_crit_edge

for.inc169.for.body162_crit_edge:                 ; preds = %for.inc169
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body162

for.inc169.if.then174_crit_edge:                  ; preds = %for.inc169
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then174

for.end171:                                       ; preds = %for.body162.for.end171_crit_edge, %for.cond159.preheader.for.end171_crit_edge
  %allocsize.0.lcssa = phi i32 [ %count, %for.cond159.preheader.for.end171_crit_edge ], [ %allocsize.0123, %for.body162.for.end171_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %allocsize.0.lcssa, i32 %64)
  %cmp173 = icmp eq i32 %allocsize.0.lcssa, %64
  br i1 %cmp173, label %for.end171.if.then174_crit_edge, label %if.end224

for.end171.if.then174_crit_edge:                  ; preds = %for.end171
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then174

if.then174:                                       ; preds = %for.end171.if.then174_crit_edge, %for.inc169.if.then174_crit_edge
  %call175 = tail call fastcc i64 @ufs_alloccg_block(ptr noundef %inode, ptr noundef nonnull %call139, i64 noundef %goal)
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call175)
  %cmp176 = icmp eq i64 %call175, -1
  br i1 %cmp176, label %if.then174.cleanup_crit_edge, label %if.end178

if.then174.cleanup_crit_edge:                     ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end178:                                        ; preds = %if.then174
  %s_fpg.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 37
  %72 = ptrtoint ptr %s_fpg.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %s_fpg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %call175)
  %cmp164.i = icmp ult i64 %call175, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !173

if.then168.i:                                     ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i = trunc i64 %call175 to i32
  %rem170.i = urem i32 %conv169.i, %73
  br label %ufs_dtogd.exit

if.else174.i:                                     ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #9
  %74 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %73, i64 %call175) #10, !srcloc !176
  %asmresult.i261.i = extractvalue { i64, i64 } %74, 0
  %shr.i.i = lshr i64 %asmresult.i261.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %ufs_dtogd.exit

ufs_dtogd.exit:                                   ; preds = %if.else174.i, %if.then168.i
  %__rem.0.i = phi i32 [ %rem170.i, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  %conv = zext i32 %__rem.0.i to i64
  %75 = ptrtoint ptr %s_fpb151 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %s_fpb151, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %count)
  %cmp182128 = icmp ugt i32 %76, %count
  br i1 %cmp182128, label %for.body184.lr.ph, label %ufs_dtogd.exit.for.end209_crit_edge

ufs_dtogd.exit.for.end209_crit_edge:              ; preds = %ufs_dtogd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end209

for.body184.lr.ph:                                ; preds = %ufs_dtogd.exit
  %c_freeoff = getelementptr inbounds %struct.ufs_cg_private_info, ptr %call139, i32 0, i32 11
  %s_fshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 18
  %s_fmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 16
  br label %for.body184

for.body184:                                      ; preds = %for.body184.for.body184_crit_edge, %for.body184.lr.ph
  %i.0129 = phi i32 [ %count, %for.body184.lr.ph ], [ %inc208, %for.body184.for.body184_crit_edge ]
  %conv185 = zext i32 %i.0129 to i64
  %add186 = add nuw nsw i64 %conv185, %conv
  %77 = trunc i64 %add186 to i8
  %sh_prom = and i8 %77, 7
  %shl = shl nuw i8 1, %sh_prom
  %78 = ptrtoint ptr %c_freeoff to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %c_freeoff, align 4
  %conv189 = zext i32 %79 to i64
  %shr = lshr i64 %add186, 3
  %add192 = add nuw nsw i64 %shr, %conv189
  %80 = ptrtoint ptr %s_fshift to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %s_fshift, align 8
  %sh_prom193 = zext i32 %81 to i64
  %shr194 = lshr i64 %add192, %sh_prom193
  %idxprom = trunc i64 %shr194 to i32
  %arrayidx195 = getelementptr %struct.ufs_buffer_head, ptr %call139, i32 0, i32 2, i32 %idxprom
  %82 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx195, align 4
  %b_data196 = getelementptr inbounds %struct.buffer_head, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %b_data196 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %b_data196, align 4
  %86 = ptrtoint ptr %s_fmask to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %s_fmask, align 8
  %neg = xor i32 %87, -1
  %88 = trunc i64 %add192 to i32
  %idx.ext = and i32 %neg, %88
  %add.ptr = getelementptr i8, ptr %85, i32 %idx.ext
  %89 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %add.ptr, align 1
  %or = or i8 %90, %shl
  store i8 %or, ptr %add.ptr, align 1
  %inc208 = add nuw i32 %i.0129, 1
  %91 = ptrtoint ptr %s_fpb151 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %s_fpb151, align 4
  %cmp182 = icmp ult i32 %inc208, %92
  br i1 %cmp182, label %for.body184.for.body184_crit_edge, label %for.body184.for.end209_crit_edge

for.body184.for.end209_crit_edge:                 ; preds = %for.body184
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end209

for.body184.for.body184_crit_edge:                ; preds = %for.body184
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body184

for.end209:                                       ; preds = %for.body184.for.end209_crit_edge, %ufs_dtogd.exit.for.end209_crit_edge
  %.lcssa = phi i32 [ %76, %ufs_dtogd.exit.for.end209_crit_edge ], [ %92, %for.body184.for.end209_crit_edge ]
  %sub211 = sub i32 %.lcssa, %count
  %s_fshift212 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 18
  %93 = ptrtoint ptr %s_fshift212 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %s_fshift212, align 8
  %shl213 = shl i32 %sub211, %94
  %conv214 = zext i32 %shl213 to i64
  tail call void @inode_sub_bytes(ptr noundef %inode, i64 noundef %conv214) #7
  %cs_nffree = getelementptr inbounds %struct.ufs_cylinder_group, ptr %49, i32 0, i32 7, i32 3
  %95 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i49 = getelementptr inbounds %struct.ufs_sb_info, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %s_bytesex.i49 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %s_bytesex.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp.i50 = icmp eq i32 %98, 0
  %99 = ptrtoint ptr %cs_nffree to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cs_nffree, align 4
  %add.i3.i = add i32 %100, %sub211
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #7
  %add.i.i = add i32 %101, %sub211
  %102 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #7
  %storemerge.i = select i1 %cmp.i50, i32 %102, i32 %add.i3.i
  %103 = ptrtoint ptr %cs_nffree to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %storemerge.i, ptr %cs_nffree, align 4
  %conv216 = zext i32 %sub211 to i64
  %cs_nffree217 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 1, i32 3
  %104 = ptrtoint ptr %cs_nffree217 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %cs_nffree217, align 8
  %add218 = add i64 %105, %conv216
  store i64 %add218, ptr %cs_nffree217, align 8
  %106 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %s_fs_info.i, align 16
  %s_csp = getelementptr inbounds %struct.ufs_sb_info, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %s_csp to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %s_csp, align 4
  %cs_nffree221 = getelementptr %struct.ufs_csum, ptr %109, i32 %cgno.addr.3, i32 3
  %s_bytesex.i53 = getelementptr inbounds %struct.ufs_sb_info, ptr %107, i32 0, i32 2
  %110 = ptrtoint ptr %s_bytesex.i53 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %s_bytesex.i53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp.i54 = icmp eq i32 %111, 0
  %112 = ptrtoint ptr %cs_nffree221 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cs_nffree221, align 4
  %add.i3.i55 = add i32 %113, %sub211
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #7
  %add.i.i56 = add i32 %114, %sub211
  %115 = tail call i32 @llvm.bswap.i32(i32 %add.i.i56) #7
  %storemerge.i57 = select i1 %cmp.i54, i32 %115, i32 %add.i3.i55
  %116 = ptrtoint ptr %cs_nffree221 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %storemerge.i57, ptr %cs_nffree221, align 4
  br label %succed.sink.split

if.end224:                                        ; preds = %for.end171
  %call225 = tail call fastcc i64 @ufs_bitmap_search(ptr noundef %3, ptr noundef nonnull %call139, i64 noundef %goal, i32 noundef %allocsize.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call225)
  %cmp226 = icmp eq i64 %call225, -1
  br i1 %cmp226, label %if.end224.cleanup_crit_edge, label %if.end229

if.end224.cleanup_crit_edge:                      ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end229:                                        ; preds = %if.end224
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %117 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i.i64 = zext i8 %118 to i32
  %mul.i65 = shl i32 %count, %conv.i.i64
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock.i) #7
  %conv.i66 = zext i32 %mul.i65 to i64
  tail call void @__inode_add_bytes(ptr noundef %inode, i64 noundef %conv.i66) #7
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %119 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %i_blocks.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %120)
  %121 = icmp ult i64 %120, 4294967296
  br i1 %121, label %try_add_frags.exit, label %try_add_frags.exit.thread, !prof !173

try_add_frags.exit.thread:                        ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__inode_sub_bytes(ptr noundef %inode, i64 noundef %conv.i66) #7
  tail call void @_raw_spin_unlock(ptr noundef %i_lock.i) #7
  br label %cleanup

try_add_frags.exit:                               ; preds = %if.end229
  tail call void @_raw_spin_unlock(ptr noundef %i_lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp234126.not = icmp eq i32 %count, 0
  br i1 %cmp234126.not, label %try_add_frags.exit.for.end274_crit_edge, label %for.body236.lr.ph

try_add_frags.exit.for.end274_crit_edge:          ; preds = %try_add_frags.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end274

for.body236.lr.ph:                                ; preds = %try_add_frags.exit
  %c_freeoff245 = getelementptr inbounds %struct.ufs_cg_private_info, ptr %call139, i32 0, i32 11
  %s_fshift251 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 18
  %s_fmask263 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 16
  br label %for.body236

for.body236:                                      ; preds = %for.body236.for.body236_crit_edge, %for.body236.lr.ph
  %i.1127 = phi i32 [ 0, %for.body236.lr.ph ], [ %inc273, %for.body236.for.body236_crit_edge ]
  %conv237 = zext i32 %i.1127 to i64
  %add238 = add i64 %call225, %conv237
  %122 = trunc i64 %add238 to i8
  %sh_prom240 = and i8 %122, 7
  %shl241 = shl nuw i8 1, %sh_prom240
  %neg242 = xor i8 %shl241, -1
  %123 = ptrtoint ptr %c_freeoff245 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %c_freeoff245, align 4
  %conv246 = zext i32 %124 to i64
  %shr249 = lshr i64 %add238, 3
  %add250 = add nuw nsw i64 %shr249, %conv246
  %125 = ptrtoint ptr %s_fshift251 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %s_fshift251, align 8
  %sh_prom252 = zext i32 %126 to i64
  %shr253 = lshr i64 %add250, %sh_prom252
  %idxprom254 = trunc i64 %shr253 to i32
  %arrayidx255 = getelementptr %struct.ufs_buffer_head, ptr %call139, i32 0, i32 2, i32 %idxprom254
  %127 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx255, align 4
  %b_data256 = getelementptr inbounds %struct.buffer_head, ptr %128, i32 0, i32 5
  %129 = ptrtoint ptr %b_data256 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %b_data256, align 4
  %131 = ptrtoint ptr %s_fmask263 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %s_fmask263, align 8
  %neg264 = xor i32 %132, -1
  %133 = trunc i64 %add250 to i32
  %idx.ext267 = and i32 %neg264, %133
  %add.ptr268 = getelementptr i8, ptr %130, i32 %idx.ext267
  %134 = ptrtoint ptr %add.ptr268 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %add.ptr268, align 1
  %and270 = and i8 %135, %neg242
  store i8 %and270, ptr %add.ptr268, align 1
  %inc273 = add nuw i32 %i.1127, 1
  %exitcond144.not = icmp eq i32 %inc273, %count
  br i1 %exitcond144.not, label %for.body236.for.end274_crit_edge, label %for.body236.for.body236_crit_edge

for.body236.for.body236_crit_edge:                ; preds = %for.body236
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body236

for.body236.for.end274_crit_edge:                 ; preds = %for.body236
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end274

for.end274:                                       ; preds = %for.body236.for.end274_crit_edge, %try_add_frags.exit.for.end274_crit_edge
  %cs_nffree276 = getelementptr inbounds %struct.ufs_cylinder_group, ptr %49, i32 0, i32 7, i32 3
  %136 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i69 = getelementptr inbounds %struct.ufs_sb_info, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %s_bytesex.i69 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %s_bytesex.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp.i70 = icmp eq i32 %139, 0
  %140 = ptrtoint ptr %cs_nffree276 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %cs_nffree276, align 4
  %add.i4.i = sub i32 %141, %count
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #7
  %add.i.i71 = sub i32 %142, %count
  %143 = tail call i32 @llvm.bswap.i32(i32 %add.i.i71) #7
  %storemerge.i72 = select i1 %cmp.i70, i32 %143, i32 %add.i4.i
  %144 = ptrtoint ptr %cs_nffree276 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %storemerge.i72, ptr %cs_nffree276, align 4
  %conv277 = zext i32 %count to i64
  %cs_nffree279 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 1, i32 3
  %145 = ptrtoint ptr %cs_nffree279 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %cs_nffree279, align 8
  %sub280 = sub i64 %146, %conv277
  store i64 %sub280, ptr %cs_nffree279, align 8
  %147 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %s_fs_info.i, align 16
  %s_csp282 = getelementptr inbounds %struct.ufs_sb_info, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %s_csp282 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %s_csp282, align 4
  %cs_nffree284 = getelementptr %struct.ufs_csum, ptr %150, i32 %cgno.addr.3, i32 3
  %s_bytesex.i75 = getelementptr inbounds %struct.ufs_sb_info, ptr %148, i32 0, i32 2
  %151 = ptrtoint ptr %s_bytesex.i75 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %s_bytesex.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp.i76 = icmp eq i32 %152, 0
  %153 = ptrtoint ptr %cs_nffree284 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %cs_nffree284, align 4
  %add.i4.i77 = sub i32 %154, %count
  %155 = tail call i32 @llvm.bswap.i32(i32 %154) #7
  %add.i.i78 = sub i32 %155, %count
  %156 = tail call i32 @llvm.bswap.i32(i32 %add.i.i78) #7
  %storemerge.i79 = select i1 %cmp.i76, i32 %156, i32 %add.i4.i77
  %157 = ptrtoint ptr %cs_nffree284 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %storemerge.i79, ptr %cs_nffree284, align 4
  %arrayidx286 = getelementptr %struct.ufs_cylinder_group, ptr %49, i32 0, i32 11, i32 %allocsize.0.lcssa
  %158 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i81 = getelementptr inbounds %struct.ufs_sb_info, ptr %159, i32 0, i32 2
  %160 = ptrtoint ptr %s_bytesex.i81 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %s_bytesex.i81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %cmp.i82 = icmp eq i32 %161, 0
  %162 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx286, align 4
  %add.i4.i83 = add i32 %163, -1
  %164 = tail call i32 @llvm.bswap.i32(i32 %163) #7
  %add.i.i84 = add i32 %164, -1
  %165 = tail call i32 @llvm.bswap.i32(i32 %add.i.i84) #7
  %storemerge.i85 = select i1 %cmp.i82, i32 %165, i32 %add.i4.i83
  %166 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %storemerge.i85, ptr %arrayidx286, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %allocsize.0.lcssa, i32 %count)
  %cmp287.not = icmp eq i32 %allocsize.0.lcssa, %count
  br i1 %cmp287.not, label %for.end274.succed_crit_edge, label %if.then289

for.end274.succed_crit_edge:                      ; preds = %for.end274
  call void @__sanitizer_cov_trace_pc() #9
  br label %succed

if.then289:                                       ; preds = %for.end274
  call void @__sanitizer_cov_trace_pc() #9
  %sub291 = sub i32 %allocsize.0.lcssa, %count
  br label %succed.sink.split

succed.sink.split:                                ; preds = %if.then289, %for.end209
  %sub211.pn = phi i32 [ %sub211, %for.end209 ], [ %sub291, %if.then289 ]
  %result.0.ph = phi i64 [ %call175, %for.end209 ], [ %call225, %if.then289 ]
  %arrayidx223.sink = getelementptr %struct.ufs_cylinder_group, ptr %49, i32 0, i32 11, i32 %sub211.pn
  %167 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i59 = getelementptr inbounds %struct.ufs_sb_info, ptr %168, i32 0, i32 2
  %169 = ptrtoint ptr %s_bytesex.i59 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %s_bytesex.i59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %cmp.i60 = icmp eq i32 %170, 0
  %171 = ptrtoint ptr %arrayidx223.sink to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx223.sink, align 4
  %add.i3.i89 = add i32 %172, 1
  %173 = tail call i32 @llvm.bswap.i32(i32 %172) #7
  %add.i.i90 = add i32 %173, 1
  %174 = tail call i32 @llvm.bswap.i32(i32 %add.i.i90) #7
  %storemerge.i91 = select i1 %cmp.i60, i32 %174, i32 %add.i3.i89
  %175 = ptrtoint ptr %arrayidx223.sink to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %storemerge.i91, ptr %arrayidx223.sink, align 4
  br label %succed

succed:                                           ; preds = %succed.sink.split, %for.end274.succed_crit_edge, %if.then153.succed_crit_edge
  %result.0 = phi i64 [ %call154, %if.then153.succed_crit_edge ], [ %call225, %for.end274.succed_crit_edge ], [ %result.0.ph, %succed.sink.split ]
  tail call void @ubh_mark_buffer_dirty(ptr noundef %7) #7
  tail call void @ubh_mark_buffer_dirty(ptr noundef nonnull %call139) #7
  %s_flags = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 10
  %176 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %s_flags, align 4
  %and296 = and i32 %177, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and296)
  %tobool297.not = icmp eq i32 %and296, 0
  br i1 %tobool297.not, label %succed.if.end300_crit_edge, label %if.then298

succed.if.end300_crit_edge:                       ; preds = %succed
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end300

if.then298:                                       ; preds = %succed
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubh_sync_block(ptr noundef nonnull %call139) #7
  br label %if.end300

if.end300:                                        ; preds = %if.then298, %succed.if.end300_crit_edge
  tail call void @ufs_mark_sb_dirty(ptr noundef %3) #7
  %s_fpg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 37
  %178 = ptrtoint ptr %s_fpg to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %s_fpg, align 8
  %mul301 = mul i32 %179, %cgno.addr.3
  %conv302 = zext i32 %mul301 to i64
  %add303 = add i64 %result.0, %conv302
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_alloc_fragments.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_alloc_fragments, %do.body322)) #7
          to label %if.then318 [label %do.body322], !srcloc !172

if.then318:                                       ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_alloc_fragments.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.44) #7
  br label %do.body322

do.body322:                                       ; preds = %if.then318, %if.end300
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_alloc_fragments.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_alloc_fragments, %cleanup)) #7
          to label %if.then336 [label %cleanup], !srcloc !172

if.then336:                                       ; preds = %do.body322
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_alloc_fragments.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.48, i64 noundef %add303) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then336, %do.body322, %try_add_frags.exit.thread, %if.end224.cleanup_crit_edge, %if.then174.cleanup_crit_edge, %if.then153.cleanup_crit_edge, %cg_found.cleanup_crit_edge, %if.then135, %do.body121
  %retval.0 = phi i64 [ 0, %if.then135 ], [ 0, %cg_found.cleanup_crit_edge ], [ 0, %if.then153.cleanup_crit_edge ], [ 0, %if.then174.cleanup_crit_edge ], [ 0, %if.end224.cleanup_crit_edge ], [ %add303, %if.then336 ], [ 0, %try_add_frags.exit.thread ], [ 0, %do.body121 ], [ %add303, %do.body322 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufs_clear_frags(ptr nocapture noundef readonly %inode, i64 noundef %beg, i32 noundef %n, i32 noundef %sync) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %n to i64
  %add = add i64 %conv, %beg
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %beg)
  %cmp24 = icmp ugt i64 %add, %beg
  br i1 %cmp24, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %brelse.exit.for.body_crit_edge, %for.body.lr.ph
  %beg.addr.025 = phi i64 [ %beg, %for.body.lr.ph ], [ %inc, %brelse.exit.for.body_crit_edge ]
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__getblk_gfp(ptr noundef %3, i64 noundef %beg.addr.025, i32 noundef %5, i32 noundef 8) #7
  tail call void @__might_sleep(ptr noundef nonnull @.str.27, i32 noundef 366) #7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call.i, i32 noundef 4) #7
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %call.i, align 4
  %and.i.i.i.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %for.body.if.then.i21_crit_edge

for.body.if.then.i21_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i21

trylock_buffer.exit.i:                            ; preds = %for.body
  tail call void @llvm.prefetch.p0(ptr %call.i, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call.i, ptr %call.i, i32 4, ptr elementtype(i32) %call.i) #7, !srcloc !179
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !180
  %9 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i21_crit_edge

trylock_buffer.exit.i.if.then.i21_crit_edge:      ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i21

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lock_buffer.exit

if.then.i21:                                      ; preds = %trylock_buffer.exit.i.if.then.i21_crit_edge, %for.body.if.then.i21_crit_edge
  tail call void @__lock_buffer(ptr noundef %call.i) #7
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i21, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data, align 4
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_blocksize, align 16
  %16 = call ptr @memset(ptr %11, i32 0, i32 %15)
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %call.i, align 4
  %and1.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge

lock_buffer.exit.set_buffer_uptodate.exit_crit_edge: ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %call.i) #7
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge
  tail call void @mark_buffer_dirty(ptr noundef %call.i) #7
  tail call void @unlock_buffer(ptr noundef %call.i) #7
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_flags, align 4
  %and = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %set_buffer_uptodate.exit.if.then_crit_edge

set_buffer_uptodate.exit.if.then_crit_edge:       ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %set_buffer_uptodate.exit
  %23 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_flags, align 4
  %and4 = and i32 %24, 1
  %25 = or i32 %and4, %sync
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %set_buffer_uptodate.exit.if.then_crit_edge
  %call8 = tail call i32 @sync_dirty_buffer(ptr noundef %call.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %tobool.not.i22 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i22, label %if.end.brelse.exit_crit_edge, label %if.then.i23

if.end.brelse.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit

if.then.i23:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %call.i) #7
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i23, %if.end.brelse.exit_crit_edge
  %inc = add nuw i64 %beg.addr.025, 1
  %cmp = icmp ult i64 %inc, %add
  br i1 %cmp, label %brelse.exit.for.body_crit_edge, label %brelse.exit.for.end_crit_edge

brelse.exit.for.end_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

brelse.exit.for.body_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %brelse.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @ufs_add_fragments(ptr noundef %inode, i64 noundef %fragment, i32 noundef %oldcount, i32 noundef %newcount) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_add_fragments.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_add_fragments, %do.body4)) #7
          to label %if.then [label %do.body4], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_add_fragments.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 518, ptr noundef nonnull @.str.38) #7
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_add_fragments.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_add_fragments, %do.end21)) #7
          to label %if.then18 [label %do.end21], !srcloc !172

if.then18:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_add_fragments.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.40, i64 noundef %fragment, i32 noundef %oldcount, i32 noundef %newcount) #7
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %do.body4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %sub = sub i32 %newcount, %oldcount
  %s_fpg.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 37
  %6 = ptrtoint ptr %s_fpg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_fpg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %fragment)
  %cmp164.i = icmp ult i64 %fragment, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !173

if.then168.i:                                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i = trunc i64 %fragment to i32
  %div172.i = udiv i32 %conv169.i, %7
  br label %ufs_dtog.exit

if.else174.i:                                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %fragment) #10, !srcloc !176
  %asmresult1.i.i = extractvalue { i64, i64 } %8, 1
  %extract.t464 = trunc i64 %asmresult1.i.i to i32
  br label %ufs_dtog.exit

ufs_dtog.exit:                                    ; preds = %if.else174.i, %if.then168.i
  %b.addr.0.i.off0 = phi i32 [ %div172.i, %if.then168.i ], [ %extract.t464, %if.else174.i ]
  %s_csp = getelementptr inbounds %struct.ufs_sb_info, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %s_csp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_csp, align 4
  %cs_nffree = getelementptr %struct.ufs_csum, ptr %10, i32 %b.addr.0.i.off0, i32 3
  %11 = ptrtoint ptr %cs_nffree to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cs_nffree, align 4
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i324 = icmp eq i32 %14, 0
  %15 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  %retval.0.i325 = select i1 %cmp.i324, i32 %15, i32 %12
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i325, i32 %sub)
  %cmp = icmp ult i32 %retval.0.i325, %sub
  br i1 %cmp, label %ufs_dtog.exit.cleanup_crit_edge, label %if.end28

ufs_dtog.exit.cleanup_crit_edge:                  ; preds = %ufs_dtog.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %ufs_dtog.exit
  %s_fpbmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 46
  %16 = ptrtoint ptr %s_fpbmask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_fpbmask, align 8
  %conv29 = zext i32 %17 to i64
  %and = and i64 %conv29, %fragment
  %conv30 = zext i32 %newcount to i64
  %add = add nuw nsw i64 %and, %conv30
  %s_fpb = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 13
  %18 = ptrtoint ptr %s_fpb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_fpb, align 4
  %conv31 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv31)
  %cmp32 = icmp ugt i64 %add, %conv31
  br i1 %cmp32, label %if.end28.cleanup_crit_edge, label %if.end35

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  %call36 = tail call ptr @ufs_load_cylinder(ptr noundef %1, i32 noundef %b.addr.0.i.off0) #7
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.end35.cleanup_crit_edge, label %if.end39

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  %bh = getelementptr inbounds %struct.ufs_buffer_head, ptr %call36, i32 0, i32 2
  %20 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bh, align 8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data, align 4
  %cg_magic = getelementptr inbounds %struct.ufs_cylinder_group, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %cg_magic to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cg_magic, align 4
  %26 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i327 = getelementptr inbounds %struct.ufs_sb_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %s_bytesex.i327 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_bytesex.i327, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i328 = icmp eq i32 %29, 0
  %30 = tail call i32 @llvm.bswap.i32(i32 %25) #7
  %retval.0.i329 = select i1 %cmp.i328, i32 %30, i32 %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 590421, i32 %retval.0.i329)
  %cmp43 = icmp eq i32 %retval.0.i329, 590421
  br i1 %cmp43, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @ufs_panic(ptr noundef %1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.9, i32 noundef %b.addr.0.i.off0) #7
  br label %cleanup

if.end46:                                         ; preds = %if.end39
  %31 = ptrtoint ptr %s_fpg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_fpg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %fragment)
  %cmp164.i425 = icmp ult i64 %fragment, 4294967296
  br i1 %cmp164.i425, label %if.then168.i428, label %if.else174.i429, !prof !173

if.then168.i428:                                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i427 = trunc i64 %fragment to i32
  %rem170.i = urem i32 %conv169.i427, %32
  br label %ufs_dtogd.exit

if.else174.i429:                                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %33 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %32, i64 %fragment) #10, !srcloc !176
  %asmresult.i261.i = extractvalue { i64, i64 } %33, 0
  %shr.i.i = lshr i64 %asmresult.i261.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %ufs_dtogd.exit

ufs_dtogd.exit:                                   ; preds = %if.else174.i429, %if.then168.i428
  %__rem.0.i = phi i32 [ %rem170.i, %if.then168.i428 ], [ %conv.i.i, %if.else174.i429 ]
  %34 = ptrtoint ptr %s_fpbmask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_fpbmask, align 8
  %and49 = and i32 %35, %__rem.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %newcount, i32 %oldcount)
  %cmp50466 = icmp ugt i32 %newcount, %oldcount
  br i1 %cmp50466, label %for.body.lr.ph, label %ufs_dtogd.exit.for.end_crit_edge

ufs_dtogd.exit.for.end_crit_edge:                 ; preds = %ufs_dtogd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %ufs_dtogd.exit
  %c_freeoff = getelementptr inbounds %struct.ufs_cg_private_info, ptr %call36, i32 0, i32 11
  %36 = ptrtoint ptr %c_freeoff to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %c_freeoff, align 4
  %s_fshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 18
  %38 = ptrtoint ptr %s_fshift to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %s_fshift, align 8
  %s_fmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 16
  %40 = ptrtoint ptr %s_fmask to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %s_fmask, align 8
  %neg = xor i32 %41, -1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add i32 %i.0467, 1
  %exitcond.not = icmp eq i32 %inc, %newcount
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0467 = phi i32 [ %oldcount, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %add54 = add i32 %i.0467, %__rem.0.i
  %shr = lshr i32 %add54, 3
  %add55 = add i32 %37, %shr
  %shr56 = lshr i32 %add55, %39
  %arrayidx57 = getelementptr %struct.ufs_buffer_head, ptr %call36, i32 0, i32 2, i32 %shr56
  %42 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx57, align 4
  %b_data58 = getelementptr inbounds %struct.buffer_head, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %b_data58 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %b_data58, align 4
  %and63 = and i32 %add55, %neg
  %add.ptr = getelementptr i8, ptr %45, i32 %and63
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr, align 1
  %conv64 = zext i8 %47 to i32
  %and66 = and i32 %add54, 7
  %shl = shl nuw nsw i32 1, %and66
  %and67 = and i32 %shl, %conv64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %ufs_dtogd.exit.for.end_crit_edge
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %48 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i.i430 = zext i8 %49 to i32
  %mul.i431 = shl i32 %sub, %conv.i.i430
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock.i) #7
  %conv.i = zext i32 %mul.i431 to i64
  tail call void @__inode_add_bytes(ptr noundef %inode, i64 noundef %conv.i) #7
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %50 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %i_blocks.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %51)
  %52 = icmp ult i64 %51, 4294967296
  br i1 %52, label %if.end73, label %try_add_frags.exit, !prof !173

try_add_frags.exit:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__inode_sub_bytes(ptr noundef %inode, i64 noundef %conv.i) #7
  tail call void @_raw_spin_unlock(ptr noundef %i_lock.i) #7
  br label %cleanup

if.end73:                                         ; preds = %for.end
  tail call void @_raw_spin_unlock(ptr noundef %i_lock.i) #7
  %call.i = tail call i64 @ktime_get_real_seconds() #7
  %conv.i433 = trunc i64 %call.i to i32
  %53 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %s_bytesex.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %s_bytesex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i.i = icmp eq i32 %56, 0
  %57 = tail call i32 @llvm.bswap.i32(i32 %conv.i433) #7
  %retval.0.i.i = select i1 %cmp.i.i, i32 %57, i32 %conv.i433
  %cg_time = getelementptr inbounds %struct.ufs_cylinder_group, ptr %23, i32 0, i32 2
  %58 = ptrtoint ptr %cg_time to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %retval.0.i.i, ptr %cg_time, align 8
  %59 = ptrtoint ptr %s_fpb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %s_fpb, align 4
  %sub77 = sub i32 %60, %and49
  call void @__sanitizer_cov_trace_cmp4(i32 %sub77, i32 %newcount)
  %cmp78468 = icmp ugt i32 %sub77, %newcount
  br i1 %cmp78468, label %for.body80.lr.ph, label %if.end73.for.end109_crit_edge

if.end73.for.end109_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end109

for.body80.lr.ph:                                 ; preds = %if.end73
  %c_freeoff83 = getelementptr inbounds %struct.ufs_cg_private_info, ptr %call36, i32 0, i32 11
  %61 = ptrtoint ptr %c_freeoff83 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %c_freeoff83, align 4
  %s_fshift87 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 18
  %63 = ptrtoint ptr %s_fshift87 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %s_fshift87, align 8
  %s_fmask95 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 16
  %65 = ptrtoint ptr %s_fmask95 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %s_fmask95, align 8
  %neg96 = xor i32 %66, -1
  br label %for.body80

for.body80:                                       ; preds = %for.inc107.for.body80_crit_edge, %for.body80.lr.ph
  %i.1469 = phi i32 [ %newcount, %for.body80.lr.ph ], [ %inc108, %for.inc107.for.body80_crit_edge ]
  %add84 = add i32 %i.1469, %__rem.0.i
  %shr85 = lshr i32 %add84, 3
  %add86 = add i32 %62, %shr85
  %shr88 = lshr i32 %add86, %64
  %arrayidx89 = getelementptr %struct.ufs_buffer_head, ptr %call36, i32 0, i32 2, i32 %shr88
  %67 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx89, align 4
  %b_data90 = getelementptr inbounds %struct.buffer_head, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %b_data90 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %b_data90, align 4
  %and97 = and i32 %add86, %neg96
  %add.ptr98 = getelementptr i8, ptr %70, i32 %and97
  %71 = ptrtoint ptr %add.ptr98 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %add.ptr98, align 1
  %conv99 = zext i8 %72 to i32
  %and101 = and i32 %add84, 7
  %shl102 = shl nuw nsw i32 1, %and101
  %and103 = and i32 %shl102, %conv99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %for.body80.for.end109.loopexit_crit_edge, label %for.inc107

for.body80.for.end109.loopexit_crit_edge:         ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end109.loopexit

for.inc107:                                       ; preds = %for.body80
  %inc108 = add nuw i32 %i.1469, 1
  %cmp78 = icmp ult i32 %inc108, %sub77
  br i1 %cmp78, label %for.inc107.for.body80_crit_edge, label %for.inc107.for.end109.loopexit_crit_edge

for.inc107.for.end109.loopexit_crit_edge:         ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end109.loopexit

for.inc107.for.body80_crit_edge:                  ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body80

for.end109.loopexit:                              ; preds = %for.inc107.for.end109.loopexit_crit_edge, %for.body80.for.end109.loopexit_crit_edge
  %i.1.lcssa.ph = phi i32 [ %sub77, %for.inc107.for.end109.loopexit_crit_edge ], [ %i.1469, %for.body80.for.end109.loopexit_crit_edge ]
  %.pre = sub i32 %i.1.lcssa.ph, %oldcount
  br label %for.end109

for.end109:                                       ; preds = %for.end109.loopexit, %if.end73.for.end109_crit_edge
  %sub110.pre-phi = phi i32 [ %.pre, %for.end109.loopexit ], [ %sub, %if.end73.for.end109_crit_edge ]
  %i.1.lcssa = phi i32 [ %i.1.lcssa.ph, %for.end109.loopexit ], [ %newcount, %if.end73.for.end109_crit_edge ]
  %arrayidx111 = getelementptr %struct.ufs_cylinder_group, ptr %23, i32 0, i32 11, i32 %sub110.pre-phi
  %73 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx111, align 4
  %75 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i435 = getelementptr inbounds %struct.ufs_sb_info, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %s_bytesex.i435 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %s_bytesex.i435, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.i436 = icmp eq i32 %78, 0
  %79 = tail call i32 @llvm.bswap.i32(i32 %74) #7
  %retval.0.i437 = select i1 %cmp.i436, i32 %79, i32 %74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i437)
  %tobool113.not = icmp eq i32 %retval.0.i437, 0
  br i1 %tobool113.not, label %if.then114, label %for.end109.if.end115_crit_edge

for.end109.if.end115_crit_edge:                   ; preds = %for.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115

if.then114:                                       ; preds = %for.end109
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @ufs_panic(ptr noundef %1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.41, i32 noundef %b.addr.0.i.off0) #7
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %for.end109.if.end115_crit_edge
  %80 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i439 = getelementptr inbounds %struct.ufs_sb_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %s_bytesex.i439 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %s_bytesex.i439, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp.i440 = icmp eq i32 %83, 0
  %84 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx111, align 4
  %add.i4.i = add i32 %85, -1
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #7
  %add.i.i = add i32 %86, -1
  %87 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #7
  %storemerge.i = select i1 %cmp.i440, i32 %87, i32 %add.i4.i
  %88 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %storemerge.i, ptr %arrayidx111, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa, i32 %newcount)
  %cmp118.not = icmp eq i32 %i.1.lcssa, %newcount
  br i1 %cmp118.not, label %if.end115.if.end124_crit_edge, label %if.then120

if.end115.if.end124_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

if.then120:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  %sub122 = sub i32 %sub110.pre-phi, %sub
  %arrayidx123 = getelementptr %struct.ufs_cylinder_group, ptr %23, i32 0, i32 11, i32 %sub122
  %89 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i442 = getelementptr inbounds %struct.ufs_sb_info, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %s_bytesex.i442 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %s_bytesex.i442, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp.i443 = icmp eq i32 %92, 0
  %93 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx123, align 4
  %add.i3.i = add i32 %94, 1
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #7
  %add.i.i444 = add i32 %95, 1
  %96 = tail call i32 @llvm.bswap.i32(i32 %add.i.i444) #7
  %storemerge.i445 = select i1 %cmp.i443, i32 %96, i32 %add.i3.i
  %97 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %storemerge.i445, ptr %arrayidx123, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then120, %if.end115.if.end124_crit_edge
  br i1 %cmp50466, label %for.body128.lr.ph, label %if.end124.for.end156_crit_edge

if.end124.for.end156_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end156

for.body128.lr.ph:                                ; preds = %if.end124
  %c_freeoff135 = getelementptr inbounds %struct.ufs_cg_private_info, ptr %call36, i32 0, i32 11
  %s_fshift139 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 18
  %s_fmask147 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 16
  br label %for.body128

for.body128:                                      ; preds = %for.body128.for.body128_crit_edge, %for.body128.lr.ph
  %i.2472 = phi i32 [ %oldcount, %for.body128.lr.ph ], [ %inc155, %for.body128.for.body128_crit_edge ]
  %add129 = add i32 %i.2472, %__rem.0.i
  %and130 = and i32 %add129, 7
  %shl131 = shl nuw nsw i32 1, %and130
  %98 = ptrtoint ptr %c_freeoff135 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %c_freeoff135, align 4
  %shr137 = lshr i32 %add129, 3
  %add138 = add i32 %99, %shr137
  %100 = ptrtoint ptr %s_fshift139 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %s_fshift139, align 8
  %shr140 = lshr i32 %add138, %101
  %arrayidx141 = getelementptr %struct.ufs_buffer_head, ptr %call36, i32 0, i32 2, i32 %shr140
  %102 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx141, align 4
  %b_data142 = getelementptr inbounds %struct.buffer_head, ptr %103, i32 0, i32 5
  %104 = ptrtoint ptr %b_data142 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %b_data142, align 4
  %106 = ptrtoint ptr %s_fmask147 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %s_fmask147, align 8
  %neg148 = xor i32 %107, -1
  %and149 = and i32 %add138, %neg148
  %add.ptr150 = getelementptr i8, ptr %105, i32 %and149
  %108 = ptrtoint ptr %add.ptr150 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %add.ptr150, align 1
  %110 = trunc i32 %shl131 to i8
  %111 = xor i8 %110, -1
  %conv153 = and i8 %109, %111
  store i8 %conv153, ptr %add.ptr150, align 1
  %inc155 = add nuw i32 %i.2472, 1
  %exitcond473.not = icmp eq i32 %inc155, %newcount
  br i1 %exitcond473.not, label %for.body128.for.end156_crit_edge, label %for.body128.for.body128_crit_edge

for.body128.for.body128_crit_edge:                ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body128

for.body128.for.end156_crit_edge:                 ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end156

for.end156:                                       ; preds = %for.body128.for.end156_crit_edge, %if.end124.for.end156_crit_edge
  %cs_nffree157 = getelementptr inbounds %struct.ufs_cylinder_group, ptr %23, i32 0, i32 7, i32 3
  %112 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i447 = getelementptr inbounds %struct.ufs_sb_info, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %s_bytesex.i447 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %s_bytesex.i447, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp.i448 = icmp eq i32 %115, 0
  %116 = ptrtoint ptr %cs_nffree157 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %cs_nffree157, align 4
  %add.i4.i449 = sub i32 %117, %sub
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #7
  %add.i.i450 = sub i32 %118, %sub
  %119 = tail call i32 @llvm.bswap.i32(i32 %add.i.i450) #7
  %storemerge.i451 = select i1 %cmp.i448, i32 %119, i32 %add.i4.i449
  %120 = ptrtoint ptr %cs_nffree157 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %storemerge.i451, ptr %cs_nffree157, align 4
  %121 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %s_fs_info.i, align 16
  %s_csp159 = getelementptr inbounds %struct.ufs_sb_info, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %s_csp159 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %s_csp159, align 4
  %cs_nffree161 = getelementptr %struct.ufs_csum, ptr %124, i32 %b.addr.0.i.off0, i32 3
  %s_bytesex.i454 = getelementptr inbounds %struct.ufs_sb_info, ptr %122, i32 0, i32 2
  %125 = ptrtoint ptr %s_bytesex.i454 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %s_bytesex.i454, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp.i455 = icmp eq i32 %126, 0
  %127 = ptrtoint ptr %cs_nffree161 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %cs_nffree161, align 4
  %add.i4.i456 = sub i32 %128, %sub
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #7
  %add.i.i457 = sub i32 %129, %sub
  %130 = tail call i32 @llvm.bswap.i32(i32 %add.i.i457) #7
  %storemerge.i458 = select i1 %cmp.i455, i32 %130, i32 %add.i4.i456
  %131 = ptrtoint ptr %cs_nffree161 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %storemerge.i458, ptr %cs_nffree161, align 4
  %conv162 = zext i32 %sub to i64
  %cs_nffree163 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 1, i32 3
  %132 = ptrtoint ptr %cs_nffree163 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %cs_nffree163, align 8
  %sub164 = sub i64 %133, %conv162
  store i64 %sub164, ptr %cs_nffree163, align 8
  tail call void @ubh_mark_buffer_dirty(ptr noundef %5) #7
  tail call void @ubh_mark_buffer_dirty(ptr noundef nonnull %call36) #7
  %s_flags = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %134 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %s_flags, align 4
  %and167 = and i32 %135, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %for.end156.if.end171_crit_edge, label %if.then169

for.end156.if.end171_crit_edge:                   ; preds = %for.end156
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end171

if.then169:                                       ; preds = %for.end156
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ubh_sync_block(ptr noundef nonnull %call36) #7
  br label %if.end171

if.end171:                                        ; preds = %if.then169, %for.end156.if.end171_crit_edge
  tail call void @ufs_mark_sb_dirty(ptr noundef %1) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_add_fragments.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_add_fragments, %do.body190)) #7
          to label %if.then186 [label %do.body190], !srcloc !172

if.then186:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_add_fragments.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 574, ptr noundef nonnull @.str.38) #7
  br label %do.body190

do.body190:                                       ; preds = %if.then186, %if.end171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_add_fragments.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_add_fragments, %cleanup)) #7
          to label %if.then204 [label %cleanup], !srcloc !172

if.then204:                                       ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_add_fragments.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.43, i64 noundef %fragment) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then204, %do.body190, %try_add_frags.exit, %for.body.cleanup_crit_edge, %if.then45, %if.end35.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %ufs_dtog.exit.cleanup_crit_edge
  %retval.0 = phi i64 [ 0, %if.then45 ], [ 0, %ufs_dtog.exit.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ], [ 0, %try_add_frags.exit ], [ %fragment, %if.then204 ], [ %fragment, %do.body190 ], [ 0, %for.body.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufs_change_blocknr(ptr nocapture noundef readonly %inode, i64 noundef %beg, i32 noundef %count, i64 noundef %oldb, i64 noundef %newb, ptr noundef %locked_page) unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %0 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %1 to i32
  %sub = sub nsw i32 12, %conv
  %shl = shl nuw nsw i32 1, %sub
  %sub1 = add i32 %shl, -1
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #7
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !181
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_change_blocknr.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_change_blocknr, %do.body5)) #7
          to label %if.then [label %do.body5], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_change_blocknr.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 255, ptr noundef nonnull @.str.28) #7
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_change_blocknr.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_change_blocknr, %do.body23)) #7
          to label %if.then19 [label %do.body23], !srcloc !172

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %5 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_change_blocknr.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.30, i32 noundef %6, i32 noundef %count, i64 noundef %oldb, i64 noundef %newb) #7
  br label %do.body23

do.body23:                                        ; preds = %if.then19, %do.body5
  %tobool24.not = icmp eq ptr %locked_page, null
  br i1 %tobool24.not, label %do.body34, label %do.body43, !prof !182

do.body34:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ufs/balloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 257, 0\0A.popsection", ""() #7, !srcloc !183
  unreachable

do.body43:                                        ; preds = %do.body23
  %7 = getelementptr inbounds %struct.page, ptr %locked_page, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !173

if.then.i.i:                                      ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %9, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %locked_page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %10, %if.end.i.i ]
  %11 = inttoptr i32 %retval.0.i.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i.not.i = icmp eq i32 %13, -1
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %7, align 4
  %and.i16.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !182

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !173

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i18.i = add i32 %15, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %locked_page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %16, %if.end.i20.i ]
  %17 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %17, ptr noundef nonnull @.str.35) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #7, !srcloc !184
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !173

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i25.i = add i32 %15, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %locked_page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %18, %if.end.i27.i ]
  %19 = inttoptr i32 %retval.0.i28.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %and1.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool45.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool45.not, label %do.body55, label %do.end63, !prof !182

do.body55:                                        ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ufs/balloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 258, 0\0A.popsection", ""() #7, !srcloc !185
  unreachable

do.end63:                                         ; preds = %PageLocked.exit
  %index64 = getelementptr inbounds %struct.page, ptr %locked_page, i32 0, i32 1, i32 0, i32 2
  %22 = ptrtoint ptr %index64 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index64, align 4
  %conv65 = zext i32 %count to i64
  %add = add i64 %conv65, %beg
  %24 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %i_blkbits, align 2
  %conv67 = zext i8 %25 to i32
  %sub68 = sub nsw i32 12, %conv67
  %sh_prom = zext i32 %sub68 to i64
  %shr = lshr i64 %add, %sh_prom
  %conv69 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %beg)
  %cmp342 = icmp ugt i64 %add, %beg
  br i1 %cmp342, label %for.body.lr.ph, label %do.end63.do.body224_crit_edge

do.end63.do.body224_crit_edge:                    ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body224

for.body.lr.ph:                                   ; preds = %do.end63
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %26 = trunc i64 %add to i32
  %conv134 = and i32 %sub1, %26
  %conv221 = zext i32 %sub1 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc220.for.body_crit_edge, %for.body.lr.ph
  %i.0343 = phi i64 [ %beg, %for.body.lr.ph ], [ %add222, %for.inc220.for.body_crit_edge ]
  %27 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %i_blkbits, align 2
  %conv72 = zext i8 %28 to i32
  %sub73 = sub nsw i32 12, %conv72
  %sh_prom74 = zext i32 %sub73 to i64
  %shr75 = lshr i64 %i.0343, %sh_prom74
  %conv76 = trunc i64 %shr75 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv76)
  %cmp77.not = icmp eq i32 %23, %conv76
  br i1 %cmp77.not, label %for.body.do.body95_crit_edge, label %if.then85, !prof !182

for.body.do.body95_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body95

if.then85:                                        ; preds = %for.body
  %call86 = call ptr @ufs_get_locked_page(ptr noundef %3, i32 noundef %conv76) #7
  %tobool87.not = icmp eq ptr %call86, null
  br i1 %tobool87.not, label %if.then85.for.inc220_crit_edge, label %if.end89

if.then85.for.inc220_crit_edge:                   ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc220

if.end89:                                         ; preds = %if.then85
  %cmp.i = icmp ugt ptr %call86, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then91, label %if.end89.do.body95_crit_edge

if.end89.do.body95_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body95

if.then91:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb, align 4
  %conv92 = and i64 %shr75, 4294967295
  call void (ptr, ptr, ptr, ...) @ufs_error(ptr noundef %30, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.31, i64 noundef %conv92) #7
  br label %for.inc220

do.body95:                                        ; preds = %if.end89.do.body95_crit_edge, %for.body.do.body95_crit_edge
  %page.0 = phi ptr [ %call86, %if.end89.do.body95_crit_edge ], [ %locked_page, %for.body.do.body95_crit_edge ]
  %31 = ptrtoint ptr %page.0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %page.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp.i.not.i308 = icmp eq i32 %32, -1
  br i1 %cmp.i.not.i308, label %if.then.i309, label %PagePrivate.exit, !prof !182

if.then.i309:                                     ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef nonnull %page.0, ptr noundef nonnull @.str.36) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #7, !srcloc !186
  unreachable

PagePrivate.exit:                                 ; preds = %do.body95
  %33 = ptrtoint ptr %page.0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %page.0, align 4
  %35 = and i32 %34, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool97.not = icmp eq i32 %35, 0
  br i1 %tobool97.not, label %do.body107, label %do.end115, !prof !182

do.body107:                                       ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ufs/balloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 279, 0\0A.popsection", ""() #7, !srcloc !187
  unreachable

do.end115:                                        ; preds = %PagePrivate.exit
  %private = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1, i32 0, i32 3
  %36 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %private, align 4
  %38 = inttoptr i32 %37 to ptr
  %39 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %bh, align 4
  %40 = trunc i64 %i.0343 to i32
  %conv118 = and i32 %sub1, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv118)
  %cmp120339.not = icmp eq i32 %conv118, 0
  br i1 %cmp120339.not, label %do.end115.for.end_crit_edge, label %do.end115.for.body122_crit_edge

do.end115.for.body122_crit_edge:                  ; preds = %do.end115
  br label %for.body122

do.end115.for.end_crit_edge:                      ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body122:                                      ; preds = %for.body122.for.body122_crit_edge, %do.end115.for.body122_crit_edge
  %j.0340 = phi i32 [ %inc, %for.body122.for.body122_crit_edge ], [ 0, %do.end115.for.body122_crit_edge ]
  %41 = phi ptr [ %43, %for.body122.for.body122_crit_edge ], [ %38, %do.end115.for.body122_crit_edge ]
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %b_this_page, align 4
  %inc = add nuw i32 %j.0340, 1
  %exitcond.not = icmp eq i32 %inc, %conv118
  br i1 %exitcond.not, label %for.cond119.for.end_crit_edge, label %for.body122.for.body122_crit_edge

for.body122.for.body122_crit_edge:                ; preds = %for.body122
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body122

for.cond119.for.end_crit_edge:                    ; preds = %for.body122
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %bh, align 4
  br label %for.end

for.end:                                          ; preds = %for.cond119.for.end_crit_edge, %do.end115.for.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %conv76, i32 %conv69)
  %cmp123 = icmp eq i32 %conv76, %conv69
  br i1 %cmp123, label %if.then131, label %for.end.if.end136_crit_edge, !prof !182

for.end.if.end136_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

if.then131:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

if.end136:                                        ; preds = %if.then131, %for.end.if.end136_crit_edge
  %lblock.0 = phi i32 [ %conv134, %if.then131 ], [ %shl, %for.end.if.end136_crit_edge ]
  %sub142 = sub i64 %i.0343, %beg
  %45 = trunc i64 %sub142 to i32
  %umax = call i32 @llvm.umax.i32(i32 %conv118, i32 %lblock.0)
  br label %do.body137

do.body137:                                       ; preds = %do.end201.do.body137_crit_edge, %if.end136
  %j.1 = phi i32 [ %conv118, %if.end136 ], [ %inc204, %do.end201.do.body137_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1, i32 %umax)
  %exitcond346.not = icmp eq i32 %j.1, %umax
  br i1 %exitcond346.not, label %do.body137.do.end209_crit_edge, label %if.end141

do.body137.do.end209_crit_edge:                   ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end209

if.end141:                                        ; preds = %do.body137
  %conv145 = add i32 %j.1, %45
  %46 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bh, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  %50 = and i32 %49, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool147.not = icmp eq i32 %50, 0
  br i1 %tobool147.not, label %if.then148, label %if.end141.if.end152_crit_edge

if.end141.if.end152_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end152

if.then148:                                       ; preds = %if.end141
  %51 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_sb, align 4
  %conv150 = zext i32 %conv145 to i64
  %add151 = add i64 %conv150, %oldb
  %53 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %47, align 4
  %55 = and i32 %54, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i327 = icmp eq i32 %55, 0
  br i1 %tobool.not.i.i327, label %if.then.i.i328, label %if.then148.map_bh.exit_crit_edge

if.then148.map_bh.exit_crit_edge:                 ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #9
  br label %map_bh.exit

if.then.i.i328:                                   ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef 4, ptr noundef %47) #7
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i328, %if.then148.map_bh.exit_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 26
  %56 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %47, i32 0, i32 6
  %58 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %47, i32 0, i32 3
  %59 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %add151, ptr %b_blocknr.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 3
  %60 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %s_blocksize.i, align 16
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %47, i32 0, i32 4
  %62 = ptrtoint ptr %b_size.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %b_size.i, align 8
  br label %if.end152

if.end152:                                        ; preds = %map_bh.exit, %if.end141.if.end152_crit_edge
  %63 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bh, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %64, align 4
  %and1.i.i313 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i313)
  %tobool154.not = icmp eq i32 %and1.i.i313, 0
  br i1 %tobool154.not, label %if.then155, label %if.end152.do.body162_crit_edge

if.end152.do.body162_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body162

if.then155:                                       ; preds = %if.end152
  call void @ll_rw_block(i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %bh) #7
  %67 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bh, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.27, i32 noundef 354) #7
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %68, align 4
  %71 = and i32 %70, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i = icmp eq i32 %71, 0
  br i1 %tobool.not.i, label %if.then155.wait_on_buffer.exit_crit_edge, label %if.then.i329

if.then155.wait_on_buffer.exit_crit_edge:         ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #9
  br label %wait_on_buffer.exit

if.then.i329:                                     ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #9
  call void @__wait_on_buffer(ptr noundef %68) #7
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              ; preds = %if.then.i329, %if.then155.wait_on_buffer.exit_crit_edge
  %72 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bh, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %73, align 4
  %and1.i.i314 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i314)
  %tobool157.not = icmp eq i32 %and1.i.i314, 0
  br i1 %tobool157.not, label %if.then158, label %wait_on_buffer.exit.do.body162_crit_edge

wait_on_buffer.exit.do.body162_crit_edge:         ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body162

if.then158:                                       ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ptr, ...) @ufs_error(ptr noundef %77, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.32) #7
  br label %do.end209

do.body162:                                       ; preds = %wait_on_buffer.exit.do.body162_crit_edge, %if.end152.do.body162_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_change_blocknr.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_change_blocknr, %do.body180)) #7
          to label %if.then176 [label %do.body180], !srcloc !172

if.then176:                                       ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_change_blocknr.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 310, ptr noundef nonnull @.str.28) #7
  br label %do.body180

do.body180:                                       ; preds = %if.then176, %do.body162
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_change_blocknr.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_change_blocknr, %do.end201)) #7
          to label %if.then194 [label %do.end201], !srcloc !172

if.then194:                                       ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #9
  %conv195 = zext i32 %conv145 to i64
  %add196 = add i64 %conv195, %oldb
  %add198 = add i64 %conv195, %newb
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_change_blocknr.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.34, i64 noundef %add196, i64 noundef %add198, i32 noundef %conv145) #7
  br label %do.end201

do.end201:                                        ; preds = %if.then194, %do.body180
  %conv202 = zext i32 %conv145 to i64
  %add203 = add i64 %conv202, %newb
  %78 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bh, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %add203, ptr %b_blocknr, align 8
  %b_bdev.i330 = getelementptr inbounds %struct.buffer_head, ptr %79, i32 0, i32 6
  %81 = ptrtoint ptr %b_bdev.i330 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %b_bdev.i330, align 8
  call void @clean_bdev_aliases(ptr noundef %82, i64 noundef %add203, i64 noundef 1) #7
  %83 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %84) #7
  %inc204 = add i32 %j.1, 1
  %85 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bh, align 4
  %b_this_page205 = getelementptr inbounds %struct.buffer_head, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %b_this_page205 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %b_this_page205, align 4
  store ptr %88, ptr %bh, align 4
  %cmp207.not = icmp eq ptr %88, %38
  br i1 %cmp207.not, label %do.end201.do.end209_crit_edge, label %do.end201.do.body137_crit_edge

do.end201.do.body137_crit_edge:                   ; preds = %do.end201
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body137

do.end201.do.end209_crit_edge:                    ; preds = %do.end201
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end209

do.end209:                                        ; preds = %do.end201.do.end209_crit_edge, %if.then158, %do.body137.do.end209_crit_edge
  br i1 %cmp77.not, label %do.end209.for.inc220_crit_edge, label %if.then218, !prof !182

do.end209.for.inc220_crit_edge:                   ; preds = %do.end209
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc220

if.then218:                                       ; preds = %do.end209
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @ufs_put_locked_page(ptr noundef nonnull %page.0)
  br label %for.inc220

for.inc220:                                       ; preds = %if.then218, %do.end209.for.inc220_crit_edge, %if.then91, %if.then85.for.inc220_crit_edge
  %or = or i64 %i.0343, %conv221
  %add222 = add i64 %or, 1
  %cmp = icmp ult i64 %add222, %add
  br i1 %cmp, label %for.inc220.for.body_crit_edge, label %for.inc220.do.body224_crit_edge

for.inc220.do.body224_crit_edge:                  ; preds = %for.inc220
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body224

for.inc220.for.body_crit_edge:                    ; preds = %for.inc220
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body224:                                       ; preds = %for.inc220.do.body224_crit_edge, %do.end63.do.body224_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_change_blocknr.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_change_blocknr, %do.body242)) #7
          to label %if.then238 [label %do.body242], !srcloc !172

if.then238:                                       ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_change_blocknr.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 322, ptr noundef nonnull @.str.28) #7
  br label %do.body242

do.body242:                                       ; preds = %if.then238, %do.body224
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_change_blocknr.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_change_blocknr, %do.end259)) #7
          to label %if.then256 [label %do.end259], !srcloc !172

if.then256:                                       ; preds = %do.body242
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_change_blocknr.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.12) #7
  br label %do.end259

do.end259:                                        ; preds = %if.then256, %do.body242
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ufs_get_locked_page(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ll_rw_block(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufs_put_locked_page(ptr noundef %page) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @unlock_page(ptr noundef %page) #7
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !173

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  %5 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !182

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.37) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !188
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !189
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #7, !srcloc !190
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ufs_put_locked_page, %if.then.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !172

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_page(ptr noundef %4) #7
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clean_bdev_aliases(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__inode_add_bytes(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__inode_sub_bytes(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @ufs_alloccg_block(ptr noundef %inode, ptr nocapture noundef %ucpi, i64 noundef %goal) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_alloccg_block.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_alloccg_block, %do.body4)) #7
          to label %if.then [label %do.body4], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_alloccg_block.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 709, ptr noundef nonnull @.str.49) #7
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_alloccg_block.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_alloccg_block, %do.end21)) #7
          to label %if.then18 [label %do.end21], !srcloc !172

if.then18:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_alloccg_block.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.51, i64 noundef %goal) #7
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %do.body4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bh = getelementptr inbounds %struct.ufs_buffer_head, ptr %ucpi, i32 0, i32 2
  %6 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bh, align 8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %goal)
  %cmp = icmp eq i64 %goal, 0
  br i1 %cmp, label %if.then24, label %ufs_dtogd.exit

if.then24:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  %c_rotor = getelementptr inbounds %struct.ufs_cg_private_info, ptr %ucpi, i32 0, i32 5
  %10 = ptrtoint ptr %c_rotor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %c_rotor, align 4
  %conv = zext i32 %11 to i64
  br label %norot

ufs_dtogd.exit:                                   ; preds = %do.end21
  %s_fpbmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 46
  %12 = ptrtoint ptr %s_fpbmask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_fpbmask, align 8
  %neg = xor i32 %13, -1
  %14 = trunc i64 %goal to i32
  %conv169.i = and i32 %neg, %14
  %s_fpg.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 37
  %15 = ptrtoint ptr %s_fpg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_fpg.i, align 8
  %rem170.i = urem i32 %conv169.i, %16
  %conv28 = zext i32 %rem170.i to i64
  %c_freeoff = getelementptr inbounds %struct.ufs_cg_private_info, ptr %ucpi, i32 0, i32 11
  %17 = ptrtoint ptr %c_freeoff to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %c_freeoff, align 4
  %s_fpbshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 19
  %19 = ptrtoint ptr %s_fpbshift to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_fpbshift, align 4
  %sh_prom = zext i32 %20 to i64
  %shr = lshr i64 %conv28, %sh_prom
  %conv30 = trunc i64 %shr to i32
  %s_fpb.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 13
  %21 = ptrtoint ptr %s_fpb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_fpb.i, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %22, label %ufs_dtogd.exit.norot_crit_edge [
    i32 8, label %_ubh_isblockset_.exit
    i32 4, label %sw.bb3.i
    i32 2, label %sw.bb26.i
    i32 1, label %sw.bb50.i
  ]

ufs_dtogd.exit.norot_crit_edge:                   ; preds = %ufs_dtogd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %norot

sw.bb3.i:                                         ; preds = %ufs_dtogd.exit
  %and4.i = shl i32 %conv30, 2
  %shl.i12 = and i32 %and4.i, 4
  %shl5.i = shl nuw nsw i32 15, %shl.i12
  %shr8.i = lshr i32 %conv30, 1
  %add9.i = add i32 %shr8.i, %18
  %s_fshift10.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 18
  %24 = ptrtoint ptr %s_fshift10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_fshift10.i, align 8
  %shr11.i = lshr i32 %add9.i, %25
  %arrayidx12.i = getelementptr %struct.ufs_buffer_head, ptr %ucpi, i32 0, i32 2, i32 %shr11.i
  %26 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx12.i, align 4
  %b_data13.i = getelementptr inbounds %struct.buffer_head, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %b_data13.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_data13.i, align 4
  %s_fmask16.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 16
  %30 = ptrtoint ptr %s_fmask16.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_fmask16.i, align 8
  %neg17.i = xor i32 %31, -1
  %and18.i = and i32 %add9.i, %neg17.i
  %add.ptr19.i = getelementptr i8, ptr %29, i32 %and18.i
  %32 = ptrtoint ptr %add.ptr19.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr19.i, align 1
  %conv20.i = zext i8 %33 to i32
  %and22.i = and i32 %shl5.i, %conv20.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and22.i, i32 %shl5.i)
  %cmp24.i = icmp eq i32 %and22.i, %shl5.i
  br i1 %cmp24.i, label %sw.bb3.i.gotit_crit_edge, label %sw.bb3.i.norot_crit_edge

sw.bb3.i.norot_crit_edge:                         ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %norot

sw.bb3.i.gotit_crit_edge:                         ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gotit

sw.bb26.i:                                        ; preds = %ufs_dtogd.exit
  %and27.i = shl i32 %conv30, 1
  %shl28.i = and i32 %and27.i, 6
  %shl29.i = shl nuw nsw i32 3, %shl28.i
  %shr32.i = lshr i32 %conv30, 2
  %add33.i = add i32 %shr32.i, %18
  %s_fshift34.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 18
  %34 = ptrtoint ptr %s_fshift34.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_fshift34.i, align 8
  %shr35.i = lshr i32 %add33.i, %35
  %arrayidx36.i = getelementptr %struct.ufs_buffer_head, ptr %ucpi, i32 0, i32 2, i32 %shr35.i
  %36 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx36.i, align 4
  %b_data37.i = getelementptr inbounds %struct.buffer_head, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %b_data37.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %b_data37.i, align 4
  %s_fmask40.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 16
  %40 = ptrtoint ptr %s_fmask40.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %s_fmask40.i, align 8
  %neg41.i = xor i32 %41, -1
  %and42.i = and i32 %add33.i, %neg41.i
  %add.ptr43.i = getelementptr i8, ptr %39, i32 %and42.i
  %42 = ptrtoint ptr %add.ptr43.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr43.i, align 1
  %conv44.i = zext i8 %43 to i32
  %and46.i13 = and i32 %shl29.i, %conv44.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and46.i13, i32 %shl29.i)
  %cmp48.i = icmp eq i32 %and46.i13, %shl29.i
  br i1 %cmp48.i, label %sw.bb26.i.gotit_crit_edge, label %sw.bb26.i.norot_crit_edge

sw.bb26.i.norot_crit_edge:                        ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %norot

sw.bb26.i.gotit_crit_edge:                        ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gotit

sw.bb50.i:                                        ; preds = %ufs_dtogd.exit
  %and51.i = and i32 %conv30, 7
  %shl52.i = shl nuw nsw i32 1, %and51.i
  %shr55.i = lshr i32 %conv30, 3
  %add56.i14 = add i32 %shr55.i, %18
  %s_fshift57.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 18
  %44 = ptrtoint ptr %s_fshift57.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %s_fshift57.i, align 8
  %shr58.i = lshr i32 %add56.i14, %45
  %arrayidx59.i = getelementptr %struct.ufs_buffer_head, ptr %ucpi, i32 0, i32 2, i32 %shr58.i
  %46 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx59.i, align 4
  %b_data60.i = getelementptr inbounds %struct.buffer_head, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %b_data60.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %b_data60.i, align 4
  %s_fmask63.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 16
  %50 = ptrtoint ptr %s_fmask63.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %s_fmask63.i, align 8
  %neg64.i = xor i32 %51, -1
  %and65.i = and i32 %add56.i14, %neg64.i
  %add.ptr66.i = getelementptr i8, ptr %49, i32 %and65.i
  %52 = ptrtoint ptr %add.ptr66.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %add.ptr66.i, align 1
  %conv67.i = zext i8 %53 to i32
  %and69.i15 = and i32 %shl52.i, %conv67.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and69.i15, i32 %shl52.i)
  %cmp71.i = icmp eq i32 %and69.i15, %shl52.i
  br i1 %cmp71.i, label %sw.bb50.i.gotit_crit_edge, label %sw.bb50.i.norot_crit_edge

sw.bb50.i.norot_crit_edge:                        ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %norot

sw.bb50.i.gotit_crit_edge:                        ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gotit

_ubh_isblockset_.exit:                            ; preds = %ufs_dtogd.exit
  %add.i10 = add i32 %18, %conv30
  %s_fshift.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 18
  %54 = ptrtoint ptr %s_fshift.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_fshift.i, align 8
  %shr.i = lshr i32 %add.i10, %55
  %arrayidx.i = getelementptr %struct.ufs_buffer_head, ptr %ucpi, i32 0, i32 2, i32 %shr.i
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %b_data.i, align 4
  %s_fmask.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 16
  %60 = ptrtoint ptr %s_fmask.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %s_fmask.i, align 8
  %neg.i11 = xor i32 %61, -1
  %and.i = and i32 %add.i10, %neg.i11
  %add.ptr.i = getelementptr i8, ptr %59, i32 %and.i
  %62 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %63)
  %cmp.i = icmp eq i8 %63, -1
  br i1 %cmp.i, label %_ubh_isblockset_.exit.gotit_crit_edge, label %_ubh_isblockset_.exit.norot_crit_edge

_ubh_isblockset_.exit.norot_crit_edge:            ; preds = %_ubh_isblockset_.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %norot

_ubh_isblockset_.exit.gotit_crit_edge:            ; preds = %_ubh_isblockset_.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %gotit

norot:                                            ; preds = %_ubh_isblockset_.exit.norot_crit_edge, %sw.bb50.i.norot_crit_edge, %sw.bb26.i.norot_crit_edge, %sw.bb3.i.norot_crit_edge, %ufs_dtogd.exit.norot_crit_edge, %if.then24
  %goal.addr.0 = phi i64 [ %conv, %if.then24 ], [ %conv28, %_ubh_isblockset_.exit.norot_crit_edge ], [ %conv28, %ufs_dtogd.exit.norot_crit_edge ], [ %conv28, %sw.bb50.i.norot_crit_edge ], [ %conv28, %sw.bb26.i.norot_crit_edge ], [ %conv28, %sw.bb3.i.norot_crit_edge ]
  %s_fpb = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 13
  %64 = ptrtoint ptr %s_fpb to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %s_fpb, align 4
  %call35 = tail call fastcc i64 @ufs_bitmap_search(ptr noundef %1, ptr noundef %ucpi, i64 noundef %goal.addr.0, i32 noundef %65)
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call35)
  %cmp36 = icmp eq i64 %call35, -1
  br i1 %cmp36, label %norot.cleanup_crit_edge, label %if.end39

norot.cleanup_crit_edge:                          ; preds = %norot
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39:                                         ; preds = %norot
  call void @__sanitizer_cov_trace_pc() #9
  %conv40 = trunc i64 %call35 to i32
  %c_rotor41 = getelementptr inbounds %struct.ufs_cg_private_info, ptr %ucpi, i32 0, i32 5
  %66 = ptrtoint ptr %c_rotor41 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv40, ptr %c_rotor41, align 4
  br label %gotit

gotit:                                            ; preds = %if.end39, %_ubh_isblockset_.exit.gotit_crit_edge, %sw.bb50.i.gotit_crit_edge, %sw.bb26.i.gotit_crit_edge, %sw.bb3.i.gotit_crit_edge
  %result.0 = phi i64 [ %call35, %if.end39 ], [ %conv28, %_ubh_isblockset_.exit.gotit_crit_edge ], [ %conv28, %sw.bb50.i.gotit_crit_edge ], [ %conv28, %sw.bb26.i.gotit_crit_edge ], [ %conv28, %sw.bb3.i.gotit_crit_edge ]
  %s_fpb42 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 13
  %67 = ptrtoint ptr %s_fpb42 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %s_fpb42, align 4
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %69 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i.i17 = zext i8 %70 to i32
  %mul.i18 = shl i32 %68, %conv.i.i17
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock.i) #7
  %conv.i = zext i32 %mul.i18 to i64
  tail call void @__inode_add_bytes(ptr noundef %inode, i64 noundef %conv.i) #7
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %71 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %i_blocks.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %72)
  %73 = icmp ult i64 %72, 4294967296
  br i1 %73, label %if.end45, label %try_add_frags.exit, !prof !173

try_add_frags.exit:                               ; preds = %gotit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__inode_sub_bytes(ptr noundef %inode, i64 noundef %conv.i) #7
  tail call void @_raw_spin_unlock(ptr noundef %i_lock.i) #7
  br label %cleanup

if.end45:                                         ; preds = %gotit
  tail call void @_raw_spin_unlock(ptr noundef %i_lock.i) #7
  %s_fpbshift46 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 19
  %74 = ptrtoint ptr %s_fpbshift46 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %s_fpbshift46, align 4
  %sh_prom47 = zext i32 %75 to i64
  %shr48 = lshr i64 %result.0, %sh_prom47
  %c_freeoff50 = getelementptr inbounds %struct.ufs_cg_private_info, ptr %ucpi, i32 0, i32 11
  %76 = ptrtoint ptr %c_freeoff50 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %c_freeoff50, align 4
  %conv51 = trunc i64 %shr48 to i32
  %78 = ptrtoint ptr %s_fpb42 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %s_fpb42, align 4
  %80 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %79, label %if.end45._ubh_clrblock_.exit_crit_edge [
    i32 8, label %sw.bb.i30
    i32 4, label %sw.bb2.i
    i32 2, label %sw.bb21.i
    i32 1, label %sw.bb42.i
  ]

if.end45._ubh_clrblock_.exit_crit_edge:           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %_ubh_clrblock_.exit

sw.bb.i30:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %add.i21 = add i32 %77, %conv51
  %s_fshift.i22 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 18
  %81 = ptrtoint ptr %s_fshift.i22 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %s_fshift.i22, align 8
  %shr.i23 = lshr i32 %add.i21, %82
  %arrayidx.i24 = getelementptr %struct.ufs_buffer_head, ptr %ucpi, i32 0, i32 2, i32 %shr.i23
  %83 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i24, align 4
  %b_data.i25 = getelementptr inbounds %struct.buffer_head, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %b_data.i25 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %b_data.i25, align 4
  %s_fmask.i26 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 16
  %87 = ptrtoint ptr %s_fmask.i26 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %s_fmask.i26, align 8
  %neg.i27 = xor i32 %88, -1
  %and.i28 = and i32 %add.i21, %neg.i27
  %add.ptr.i29 = getelementptr i8, ptr %86, i32 %and.i28
  %89 = ptrtoint ptr %add.ptr.i29 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %add.ptr.i29, align 1
  br label %_ubh_clrblock_.exit

sw.bb2.i:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %and3.i = shl i32 %conv51, 2
  %shl.i31 = and i32 %and3.i, 4
  %shl4.i = shl nuw nsw i32 15, %shl.i31
  %shr7.i = lshr i32 %conv51, 1
  %add8.i = add i32 %shr7.i, %77
  %s_fshift9.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 18
  %90 = ptrtoint ptr %s_fshift9.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %s_fshift9.i, align 8
  %shr10.i = lshr i32 %add8.i, %91
  %arrayidx11.i = getelementptr %struct.ufs_buffer_head, ptr %ucpi, i32 0, i32 2, i32 %shr10.i
  %92 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx11.i, align 4
  %b_data12.i = getelementptr inbounds %struct.buffer_head, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %b_data12.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %b_data12.i, align 4
  %s_fmask15.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 16
  %96 = ptrtoint ptr %s_fmask15.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %s_fmask15.i, align 8
  %neg16.i = xor i32 %97, -1
  %and17.i = and i32 %add8.i, %neg16.i
  %add.ptr18.i = getelementptr i8, ptr %95, i32 %and17.i
  %98 = ptrtoint ptr %add.ptr18.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %add.ptr18.i, align 1
  %100 = trunc i32 %shl4.i to i8
  %101 = xor i8 %100, -1
  %conv20.i32 = and i8 %99, %101
  store i8 %conv20.i32, ptr %add.ptr18.i, align 1
  br label %_ubh_clrblock_.exit

sw.bb21.i:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %and22.i33 = shl i32 %conv51, 1
  %shl23.i = and i32 %and22.i33, 6
  %shl24.i = shl nuw nsw i32 3, %shl23.i
  %shr27.i = lshr i32 %conv51, 2
  %add28.i = add i32 %shr27.i, %77
  %s_fshift29.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 18
  %102 = ptrtoint ptr %s_fshift29.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %s_fshift29.i, align 8
  %shr30.i = lshr i32 %add28.i, %103
  %arrayidx31.i = getelementptr %struct.ufs_buffer_head, ptr %ucpi, i32 0, i32 2, i32 %shr30.i
  %104 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx31.i, align 4
  %b_data32.i = getelementptr inbounds %struct.buffer_head, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %b_data32.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %b_data32.i, align 4
  %s_fmask35.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 16
  %108 = ptrtoint ptr %s_fmask35.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %s_fmask35.i, align 8
  %neg36.i = xor i32 %109, -1
  %and37.i = and i32 %add28.i, %neg36.i
  %add.ptr38.i = getelementptr i8, ptr %107, i32 %and37.i
  %110 = ptrtoint ptr %add.ptr38.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %add.ptr38.i, align 1
  %112 = trunc i32 %shl24.i to i8
  %113 = xor i8 %112, -1
  %conv41.i = and i8 %111, %113
  store i8 %conv41.i, ptr %add.ptr38.i, align 1
  br label %_ubh_clrblock_.exit

sw.bb42.i:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %and43.i = and i32 %conv51, 7
  %shl44.i = shl nuw nsw i32 1, %and43.i
  %shr47.i = lshr i32 %conv51, 3
  %add48.i = add i32 %shr47.i, %77
  %s_fshift49.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 18
  %114 = ptrtoint ptr %s_fshift49.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %s_fshift49.i, align 8
  %shr50.i34 = lshr i32 %add48.i, %115
  %arrayidx51.i = getelementptr %struct.ufs_buffer_head, ptr %ucpi, i32 0, i32 2, i32 %shr50.i34
  %116 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx51.i, align 4
  %b_data52.i = getelementptr inbounds %struct.buffer_head, ptr %117, i32 0, i32 5
  %118 = ptrtoint ptr %b_data52.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %b_data52.i, align 4
  %s_fmask55.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 16
  %120 = ptrtoint ptr %s_fmask55.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %s_fmask55.i, align 8
  %neg56.i = xor i32 %121, -1
  %and57.i = and i32 %add48.i, %neg56.i
  %add.ptr58.i = getelementptr i8, ptr %119, i32 %and57.i
  %122 = ptrtoint ptr %add.ptr58.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %add.ptr58.i, align 1
  %124 = trunc i32 %shl44.i to i8
  %125 = xor i8 %124, -1
  %conv61.i = and i8 %123, %125
  store i8 %conv61.i, ptr %add.ptr58.i, align 1
  br label %_ubh_clrblock_.exit

_ubh_clrblock_.exit:                              ; preds = %sw.bb42.i, %sw.bb21.i, %sw.bb2.i, %sw.bb.i30, %if.end45._ubh_clrblock_.exit_crit_edge
  %126 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags = getelementptr inbounds %struct.ufs_sb_info, ptr %127, i32 0, i32 3
  %128 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %s_flags, align 4
  %and53 = and i32 %129, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %and53)
  %cmp54 = icmp eq i32 %and53, 8192
  br i1 %cmp54, label %if.then56, label %_ubh_clrblock_.exit.if.end58_crit_edge

_ubh_clrblock_.exit.if.end58_crit_edge:           ; preds = %_ubh_clrblock_.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then56:                                        ; preds = %_ubh_clrblock_.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ufs_clusteracct(ptr noundef %1, ptr noundef %ucpi, i32 noundef %conv51, i32 noundef -1)
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %_ubh_clrblock_.exit.if.end58_crit_edge
  %cs_nbfree = getelementptr inbounds %struct.ufs_cylinder_group, ptr %9, i32 0, i32 7, i32 1
  %130 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp.i36 = icmp eq i32 %133, 0
  %134 = ptrtoint ptr %cs_nbfree to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %cs_nbfree, align 4
  %add.i4.i = add i32 %135, -1
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #7
  %add.i.i = add i32 %136, -1
  %137 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #7
  %storemerge.i = select i1 %cmp.i36, i32 %137, i32 %add.i4.i
  %138 = ptrtoint ptr %cs_nbfree to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %storemerge.i, ptr %cs_nbfree, align 4
  %cs_nbfree59 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 1, i32 1
  %139 = ptrtoint ptr %cs_nbfree59 to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %cs_nbfree59, align 8
  %dec = add i64 %140, -1
  store i64 %dec, ptr %cs_nbfree59, align 8
  %141 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %s_fs_info.i, align 16
  %s_csp = getelementptr inbounds %struct.ufs_sb_info, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %s_csp to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %s_csp, align 4
  %c_cgx = getelementptr inbounds %struct.ufs_cg_private_info, ptr %ucpi, i32 0, i32 1
  %145 = ptrtoint ptr %c_cgx to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %c_cgx, align 8
  %cs_nbfree62 = getelementptr %struct.ufs_csum, ptr %144, i32 %146, i32 1
  %s_bytesex.i39 = getelementptr inbounds %struct.ufs_sb_info, ptr %142, i32 0, i32 2
  %147 = ptrtoint ptr %s_bytesex.i39 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %s_bytesex.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %cmp.i40 = icmp eq i32 %148, 0
  %149 = ptrtoint ptr %cs_nbfree62 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %cs_nbfree62, align 4
  %add.i4.i41 = add i32 %150, -1
  %151 = tail call i32 @llvm.bswap.i32(i32 %150) #7
  %add.i.i42 = add i32 %151, -1
  %152 = tail call i32 @llvm.bswap.i32(i32 %add.i.i42) #7
  %storemerge.i43 = select i1 %cmp.i40, i32 %152, i32 %add.i4.i41
  %153 = ptrtoint ptr %cs_nbfree62 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %storemerge.i43, ptr %cs_nbfree62, align 4
  %fs_magic = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 62
  %154 = ptrtoint ptr %fs_magic to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %fs_magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %155)
  %cmp63.not = icmp eq i32 %155, 424935705
  br i1 %cmp63.not, label %if.end58.do.body177_crit_edge, label %if.then65

if.end58.do.body177_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body177

if.then65:                                        ; preds = %if.end58
  %conv66 = trunc i64 %result.0 to i32
  %s_nspf = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 26
  %156 = ptrtoint ptr %s_nspf to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %s_nspf, align 8
  %mul = mul i32 %157, %conv66
  %s_spc = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 35
  %158 = ptrtoint ptr %s_spc to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %s_spc, align 8
  %mul.frozen = freeze i32 %mul
  %.frozen = freeze i32 %159
  %div = udiv i32 %mul.frozen, %.frozen
  %c_boff = getelementptr inbounds %struct.ufs_cg_private_info, ptr %ucpi, i32 0, i32 9
  %160 = ptrtoint ptr %c_boff to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %c_boff, align 4
  %s_nrpos = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 43
  %162 = ptrtoint ptr %s_nrpos to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %s_nrpos, align 4
  %mul69 = mul i32 %163, %div
  %164 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags71 = getelementptr inbounds %struct.ufs_sb_info, ptr %165, i32 0, i32 3
  %166 = ptrtoint ptr %s_flags71 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %s_flags71, align 4
  %and72 = and i32 %167, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  %rem87 = urem i32 %mul, %159
  %s_nsect88 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 34
  %168 = ptrtoint ptr %s_nsect88 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %s_nsect88, align 4
  br i1 %tobool73.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  %rem78 = urem i32 %rem87, %169
  %mul80 = mul i32 %rem78, %163
  %div82 = udiv i32 %mul80, %169
  br label %cond.end

cond.false:                                       ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  %rem87.frozen = freeze i32 %rem87
  %.frozen65 = freeze i32 %169
  %div89 = udiv i32 %rem87.frozen, %.frozen65
  %s_trackskew = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 29
  %170 = ptrtoint ptr %s_trackskew to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %s_trackskew, align 4
  %mul90 = mul i32 %171, %div89
  %172 = mul i32 %div89, %.frozen65
  %rem97.decomposed = sub i32 %rem87.frozen, %172
  %s_interleave = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 28
  %173 = ptrtoint ptr %s_interleave to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %s_interleave, align 8
  %mul98 = mul i32 %174, %rem97.decomposed
  %add = add i32 %mul98, %mul90
  %rem100 = urem i32 %add, %169
  %mul102 = mul i32 %rem100, %163
  %s_npsect = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 27
  %175 = ptrtoint ptr %s_npsect to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %s_npsect, align 4
  %div103 = udiv i32 %mul102, %176
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div82, %cond.true ], [ %div103, %cond.false ]
  %add104 = add i32 %cond, %mul69
  %shl = shl i32 %add104, 1
  %add105 = add i32 %shl, %161
  %s_fshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 18
  %177 = ptrtoint ptr %s_fshift to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %s_fshift, align 8
  %shr106 = lshr i32 %add105, %178
  %arrayidx107 = getelementptr %struct.ufs_buffer_head, ptr %ucpi, i32 0, i32 2, i32 %shr106
  %179 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %arrayidx107, align 4
  %b_data108 = getelementptr inbounds %struct.buffer_head, ptr %180, i32 0, i32 5
  %181 = ptrtoint ptr %b_data108 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %b_data108, align 4
  %183 = mul i32 %div, %.frozen
  %rem133.decomposed = sub i32 %mul.frozen, %183
  %s_nsect134 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 34
  %184 = ptrtoint ptr %s_nsect134 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %s_nsect134, align 4
  br i1 %tobool73.not, label %cond.false128, label %cond.true116

cond.true116:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %rem123 = urem i32 %rem133.decomposed, %185
  %mul125 = mul i32 %rem123, %163
  %div127 = udiv i32 %mul125, %185
  br label %cond.end154

cond.false128:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %.frozen66 = freeze i32 %185
  %div135 = udiv i32 %rem133.decomposed, %.frozen66
  %s_trackskew136 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 29
  %186 = ptrtoint ptr %s_trackskew136 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %s_trackskew136, align 4
  %mul137 = mul i32 %187, %div135
  %188 = mul i32 %div135, %.frozen66
  %rem144.decomposed = sub i32 %rem133.decomposed, %188
  %s_interleave145 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 28
  %189 = ptrtoint ptr %s_interleave145 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %s_interleave145, align 8
  %mul146 = mul i32 %190, %rem144.decomposed
  %add147 = add i32 %mul146, %mul137
  %rem149 = urem i32 %add147, %185
  %mul151 = mul i32 %rem149, %163
  %s_npsect152 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 27
  %191 = ptrtoint ptr %s_npsect152 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %s_npsect152, align 4
  %div153 = udiv i32 %mul151, %192
  br label %cond.end154

cond.end154:                                      ; preds = %cond.false128, %cond.true116
  %cond155 = phi i32 [ %div127, %cond.true116 ], [ %div153, %cond.false128 ]
  %add156 = add i32 %cond155, %mul69
  %shl157 = shl i32 %add156, 1
  %add158 = add i32 %shl157, %161
  %s_fmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 16
  %193 = ptrtoint ptr %s_fmask to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %s_fmask, align 8
  %neg159 = xor i32 %194, -1
  %and160 = and i32 %add158, %neg159
  %add.ptr = getelementptr i8, ptr %182, i32 %and160
  %s_bytesex.i47 = getelementptr inbounds %struct.ufs_sb_info, ptr %165, i32 0, i32 2
  %195 = ptrtoint ptr %s_bytesex.i47 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %s_bytesex.i47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %cmp.i48 = icmp eq i32 %196, 0
  %197 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %add.ptr, align 2
  %add.i1.i = add i16 %198, -1
  %199 = tail call i16 @llvm.bswap.i16(i16 %198) #7
  %add.i.i49 = add i16 %199, -1
  %200 = tail call i16 @llvm.bswap.i16(i16 %add.i.i49) #7
  %storemerge.i50 = select i1 %cmp.i48, i16 %200, i16 %add.i1.i
  %201 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %storemerge.i50, ptr %add.ptr, align 2
  %c_btotoff = getelementptr inbounds %struct.ufs_cg_private_info, ptr %ucpi, i32 0, i32 8
  %202 = ptrtoint ptr %c_btotoff to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %c_btotoff, align 8
  %shl163 = shl i32 %div, 2
  %add164 = add i32 %203, %shl163
  %204 = ptrtoint ptr %s_fshift to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %s_fshift, align 8
  %shr166 = lshr i32 %add164, %205
  %arrayidx167 = getelementptr %struct.ufs_buffer_head, ptr %ucpi, i32 0, i32 2, i32 %shr166
  %206 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %arrayidx167, align 4
  %b_data168 = getelementptr inbounds %struct.buffer_head, ptr %207, i32 0, i32 5
  %208 = ptrtoint ptr %b_data168 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %b_data168, align 4
  %210 = ptrtoint ptr %s_fmask to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %s_fmask, align 8
  %neg173 = xor i32 %211, -1
  %and174 = and i32 %add164, %neg173
  %add.ptr175 = getelementptr i8, ptr %209, i32 %and174
  %212 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i52 = getelementptr inbounds %struct.ufs_sb_info, ptr %213, i32 0, i32 2
  %214 = ptrtoint ptr %s_bytesex.i52 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %s_bytesex.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %cmp.i53 = icmp eq i32 %215, 0
  %216 = ptrtoint ptr %add.ptr175 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %add.ptr175, align 4
  %add.i4.i54 = add i32 %217, -1
  %218 = tail call i32 @llvm.bswap.i32(i32 %217) #7
  %add.i.i55 = add i32 %218, -1
  %219 = tail call i32 @llvm.bswap.i32(i32 %add.i.i55) #7
  %storemerge.i56 = select i1 %cmp.i53, i32 %219, i32 %add.i4.i54
  %220 = ptrtoint ptr %add.ptr175 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %storemerge.i56, ptr %add.ptr175, align 4
  br label %do.body177

do.body177:                                       ; preds = %cond.end154, %if.end58.do.body177_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_alloccg_block.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_alloccg_block, %do.body195)) #7
          to label %if.then191 [label %do.body195], !srcloc !172

if.then191:                                       ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_alloccg_block.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 755, ptr noundef nonnull @.str.49) #7
  br label %do.body195

do.body195:                                       ; preds = %if.then191, %do.body177
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_alloccg_block.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_alloccg_block, %cleanup)) #7
          to label %if.then209 [label %cleanup], !srcloc !172

if.then209:                                       ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_alloccg_block.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.26, i64 noundef %result.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then209, %do.body195, %try_add_frags.exit, %norot.cleanup_crit_edge
  %retval.0 = phi i64 [ -1, %norot.cleanup_crit_edge ], [ 0, %try_add_frags.exit ], [ %result.0, %if.then209 ], [ %result.0, %do.body195 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @ufs_bitmap_search(ptr noundef %sb, ptr nocapture noundef %ucpi, i64 noundef %goal, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_bitmap_search.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_bitmap_search, %do.body5)) #7
          to label %if.then [label %do.body5], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_bitmap_search.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 815, ptr noundef nonnull @.str.52) #7
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_bitmap_search.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_bitmap_search, %do.end22)) #7
          to label %if.then19 [label %do.end22], !srcloc !172

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %c_cgx = getelementptr inbounds %struct.ufs_cg_private_info, ptr %ucpi, i32 0, i32 1
  %4 = ptrtoint ptr %c_cgx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_cgx, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_bitmap_search.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.54, i32 noundef %5, i64 noundef %goal, i32 noundef %count) #7
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %goal)
  %tobool23.not = icmp eq i64 %goal, 0
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %do.end22
  %s_fpg.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 37
  %6 = ptrtoint ptr %s_fpg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_fpg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %goal)
  %cmp164.i = icmp ult i64 %goal, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !173

if.then168.i:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i = trunc i64 %goal to i32
  %rem170.i = urem i32 %conv169.i, %7
  br label %if.end27

if.else174.i:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %goal) #10, !srcloc !176
  %asmresult.i261.i = extractvalue { i64, i64 } %8, 0
  %shr.i.i = lshr i64 %asmresult.i261.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %if.end27

if.else:                                          ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  %c_frotor = getelementptr inbounds %struct.ufs_cg_private_info, ptr %ucpi, i32 0, i32 6
  %9 = ptrtoint ptr %c_frotor to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %c_frotor, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.else174.i, %if.then168.i
  %start.0.in = phi i32 [ %10, %if.else ], [ %rem170.i, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  %start.0 = lshr i32 %start.0.in, 3
  %s_fpg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 37
  %11 = ptrtoint ptr %s_fpg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_fpg, align 8
  %add = add i32 %12, 7
  %shr28 = lshr i32 %add, 3
  %sub = sub nsw i32 %shr28, %start.0
  %c_freeoff = getelementptr inbounds %struct.ufs_cg_private_info, ptr %ucpi, i32 0, i32 11
  %13 = ptrtoint ptr %c_freeoff to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %c_freeoff, align 4
  %add30 = add i32 %14, %start.0
  %s_fpb = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 13
  %15 = ptrtoint ptr %s_fpb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_fpb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %16)
  %cmp = icmp eq i32 %16, 8
  %cond = select i1 %cmp, ptr @ufs_fragtable_8fpb, ptr @ufs_fragtable_other
  %sub31 = add i32 %count, -1
  %and = and i32 %16, 7
  %add33 = add i32 %sub31, %and
  %shl = shl nuw i32 1, %add33
  %conv = trunc i32 %shl to i8
  %s_fmask.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 16
  %17 = ptrtoint ptr %s_fmask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_fmask.i, align 8
  %neg.i266 = xor i32 %18, -1
  %and.i = and i32 %add30, %neg.i266
  %s_fshift.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 18
  %19 = ptrtoint ptr %s_fshift.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_fshift.i, align 8
  %shr.i = lshr i32 %add30, %20
  %s_fsize.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 12
  %21 = ptrtoint ptr %s_fsize.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_fsize.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %while.end.i.for.cond.i_crit_edge, %if.end27
  %size.addr.0.i = phi i32 [ %sub, %if.end27 ], [ %sub2.i, %while.end.i.for.cond.i_crit_edge ]
  %begin.addr.0.i = phi i32 [ %shr.i, %if.end27 ], [ %inc.i, %while.end.i.for.cond.i_crit_edge ]
  %offset.0.i = phi i32 [ %and.i, %if.end27 ], [ 0, %while.end.i.for.cond.i_crit_edge ]
  %add.i267 = add i32 %offset.0.i, %size.addr.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i267, i32 %22)
  %cmp.i = icmp ult i32 %add.i267, %22
  %sub.i268 = sub i32 %22, %offset.0.i
  %rest.0.i = select i1 %cmp.i, i32 %size.addr.0.i, i32 %sub.i268
  %sub2.i = sub i32 %size.addr.0.i, %rest.0.i
  %arrayidx.i = getelementptr %struct.ufs_buffer_head, ptr %ucpi, i32 0, i32 2, i32 %begin.addr.0.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 %offset.0.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %for.cond.i
  %rest.1.i = phi i32 [ %rest.0.i, %for.cond.i ], [ %dec.i, %land.rhs.i.while.cond.i_crit_edge ]
  %cp.0.i = phi ptr [ %add.ptr.i, %for.cond.i ], [ %incdec.ptr.i, %land.rhs.i.while.cond.i_crit_edge ]
  %27 = ptrtoint ptr %cp.0.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %cp.0.i, align 1
  %idxprom.i = zext i8 %28 to i32
  %arrayidx3.i = getelementptr i8, ptr %cond, i32 %idxprom.i
  %29 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx3.i, align 1
  %and528.i = and i8 %30, %conv
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and528.i)
  %cmp6.i = icmp eq i8 %and528.i, 0
  br i1 %cmp6.i, label %land.rhs.i, label %while.cond.i.while.end.i_crit_edge

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

land.rhs.i:                                       ; preds = %while.cond.i
  %incdec.ptr.i = getelementptr i8, ptr %cp.0.i, i32 1
  %dec.i = add i32 %rest.1.i, -1
  %tobool.not.i269 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i269, label %land.rhs.i.while.end.i_crit_edge, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %land.rhs.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %rest.2.i = phi i32 [ 0, %land.rhs.i.while.end.i_crit_edge ], [ %rest.1.i, %while.cond.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rest.2.i)
  %tobool8.not.i = icmp ne i32 %rest.2.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2.i)
  %tobool9.not.i = icmp eq i32 %sub2.i, 0
  %or.cond.i270 = select i1 %tobool8.not.i, i1 true, i1 %tobool9.not.i
  %inc.i = add i32 %begin.addr.0.i, 1
  br i1 %or.cond.i270, label %ubh_scanc.exit, label %while.end.i.for.cond.i_crit_edge

while.end.i.for.cond.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

ubh_scanc.exit:                                   ; preds = %while.end.i
  %add12.i = add i32 %rest.2.i, %sub2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add12.i)
  %cmp35 = icmp eq i32 %add12.i, 0
  br i1 %cmp35, label %if.then37, label %ubh_scanc.exit.if.end58_crit_edge

ubh_scanc.exit.if.end58_crit_edge:                ; preds = %ubh_scanc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then37:                                        ; preds = %ubh_scanc.exit
  %add38 = add nuw nsw i32 %start.0, 1
  %and.i273 = and i32 %14, %neg.i266
  %shr.i275 = lshr i32 %14, %20
  br label %for.cond.i288

for.cond.i288:                                    ; preds = %while.end.i305.for.cond.i288_crit_edge, %if.then37
  %size.addr.0.i277 = phi i32 [ %add38, %if.then37 ], [ %sub2.i284, %while.end.i305.for.cond.i288_crit_edge ]
  %begin.addr.0.i278 = phi i32 [ %shr.i275, %if.then37 ], [ %inc.i304, %while.end.i305.for.cond.i288_crit_edge ]
  %offset.0.i279 = phi i32 [ %and.i273, %if.then37 ], [ 0, %while.end.i305.for.cond.i288_crit_edge ]
  %add.i280 = add i32 %offset.0.i279, %size.addr.0.i277
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i280, i32 %22)
  %cmp.i281 = icmp ult i32 %add.i280, %22
  %sub.i282 = sub i32 %22, %offset.0.i279
  %rest.0.i283 = select i1 %cmp.i281, i32 %size.addr.0.i277, i32 %sub.i282
  %sub2.i284 = sub i32 %size.addr.0.i277, %rest.0.i283
  %arrayidx.i285 = getelementptr %struct.ufs_buffer_head, ptr %ucpi, i32 0, i32 2, i32 %begin.addr.0.i278
  %31 = ptrtoint ptr %arrayidx.i285 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i285, align 4
  %b_data.i286 = getelementptr inbounds %struct.buffer_head, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %b_data.i286 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_data.i286, align 4
  %add.ptr.i287 = getelementptr i8, ptr %34, i32 %offset.0.i279
  br label %while.cond.i295

while.cond.i295:                                  ; preds = %land.rhs.i299.while.cond.i295_crit_edge, %for.cond.i288
  %rest.1.i289 = phi i32 [ %rest.0.i283, %for.cond.i288 ], [ %dec.i297, %land.rhs.i299.while.cond.i295_crit_edge ]
  %cp.0.i290 = phi ptr [ %add.ptr.i287, %for.cond.i288 ], [ %incdec.ptr.i296, %land.rhs.i299.while.cond.i295_crit_edge ]
  %35 = ptrtoint ptr %cp.0.i290 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %cp.0.i290, align 1
  %idxprom.i291 = zext i8 %36 to i32
  %arrayidx3.i292 = getelementptr i8, ptr %cond, i32 %idxprom.i291
  %37 = ptrtoint ptr %arrayidx3.i292 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx3.i292, align 1
  %and528.i293 = and i8 %38, %conv
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and528.i293)
  %cmp6.i294 = icmp eq i8 %and528.i293, 0
  br i1 %cmp6.i294, label %land.rhs.i299, label %while.cond.i295.while.end.i305_crit_edge

while.cond.i295.while.end.i305_crit_edge:         ; preds = %while.cond.i295
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i305

land.rhs.i299:                                    ; preds = %while.cond.i295
  %incdec.ptr.i296 = getelementptr i8, ptr %cp.0.i290, i32 1
  %dec.i297 = add i32 %rest.1.i289, -1
  %tobool.not.i298 = icmp eq i32 %dec.i297, 0
  br i1 %tobool.not.i298, label %land.rhs.i299.while.end.i305_crit_edge, label %land.rhs.i299.while.cond.i295_crit_edge

land.rhs.i299.while.cond.i295_crit_edge:          ; preds = %land.rhs.i299
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i295

land.rhs.i299.while.end.i305_crit_edge:           ; preds = %land.rhs.i299
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i305

while.end.i305:                                   ; preds = %land.rhs.i299.while.end.i305_crit_edge, %while.cond.i295.while.end.i305_crit_edge
  %rest.2.i300 = phi i32 [ 0, %land.rhs.i299.while.end.i305_crit_edge ], [ %rest.1.i289, %while.cond.i295.while.end.i305_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rest.2.i300)
  %tobool8.not.i301 = icmp ne i32 %rest.2.i300, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2.i284)
  %tobool9.not.i302 = icmp eq i32 %sub2.i284, 0
  %or.cond.i303 = select i1 %tobool8.not.i301, i1 true, i1 %tobool9.not.i302
  %inc.i304 = add i32 %begin.addr.0.i278, 1
  br i1 %or.cond.i303, label %ubh_scanc.exit307, label %while.end.i305.for.cond.i288_crit_edge

while.end.i305.for.cond.i288_crit_edge:           ; preds = %while.end.i305
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i288

ubh_scanc.exit307:                                ; preds = %while.end.i305
  %add12.i306 = add i32 %rest.2.i300, %sub2.i284
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add12.i306)
  %cmp52 = icmp eq i32 %add12.i306, 0
  br i1 %cmp52, label %if.then54, label %ubh_scanc.exit307.if.end58_crit_edge

ubh_scanc.exit307.if.end58_crit_edge:             ; preds = %ubh_scanc.exit307
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then54:                                        ; preds = %ubh_scanc.exit307
  call void @__sanitizer_cov_trace_pc() #9
  %c_cgx55 = getelementptr inbounds %struct.ufs_cg_private_info, ptr %ucpi, i32 0, i32 1
  %39 = ptrtoint ptr %c_cgx55 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %c_cgx55, align 8
  tail call void (ptr, ptr, ptr, ...) @ufs_error(ptr noundef %sb, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.55, i32 noundef %40, i32 noundef %start.0, i32 noundef %add38, i32 noundef %count, i32 noundef %14) #7
  br label %cleanup

if.end58:                                         ; preds = %ubh_scanc.exit307.if.end58_crit_edge, %ubh_scanc.exit.if.end58_crit_edge
  %loc.0 = phi i32 [ %add12.i, %ubh_scanc.exit.if.end58_crit_edge ], [ %add12.i306, %ubh_scanc.exit307.if.end58_crit_edge ]
  %length.0 = phi i32 [ %sub, %ubh_scanc.exit.if.end58_crit_edge ], [ %add38, %ubh_scanc.exit307.if.end58_crit_edge ]
  %start.1 = phi i32 [ %start.0, %ubh_scanc.exit.if.end58_crit_edge ], [ 0, %ubh_scanc.exit307.if.end58_crit_edge ]
  %add59 = sub i32 %length.0, %loc.0
  %sub60 = add i32 %add59, %start.1
  %shl61 = shl i32 %sub60, 3
  %c_frotor64 = getelementptr inbounds %struct.ufs_cg_private_info, ptr %ucpi, i32 0, i32 6
  %41 = ptrtoint ptr %c_frotor64 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shl61, ptr %c_frotor64, align 8
  %add65 = add i32 %shl61, 8
  %conv67 = zext i32 %add65 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %shl61)
  %cmp68320.not = icmp eq i32 %shl61, -8
  br i1 %cmp68320.not, label %if.end58.for.end148_crit_edge, label %for.body.lr.ph

if.end58.for.end148_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end148

for.body.lr.ph:                                   ; preds = %if.end58
  %conv62 = zext i32 %shl61 to i64
  %conv72 = zext i32 %14 to i64
  %42 = ptrtoint ptr %s_fshift.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s_fshift.i, align 8
  %sh_prom = zext i32 %43 to i64
  %44 = ptrtoint ptr %s_fmask.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %s_fmask.i, align 8
  %neg = xor i32 %45, -1
  %46 = ptrtoint ptr %s_fpb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_fpb, align 4
  %sub87 = sub i32 8, %47
  %shr88 = lshr i32 255, %sub87
  %arrayidx91 = getelementptr [9 x i32], ptr @ufs_bitmap_search.mask_arr, i32 0, i32 %count
  %48 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx91, align 4
  %arrayidx92 = getelementptr [9 x i32], ptr @ufs_bitmap_search.want_arr, i32 0, i32 %count
  %50 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx92, align 4
  %sub95 = sub i32 %47, %count
  %conv146 = zext i32 %47 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc144.for.body_crit_edge, %for.body.lr.ph
  %result.0321 = phi i64 [ %conv62, %for.body.lr.ph ], [ %add147, %for.inc144.for.body_crit_edge ]
  %shr73 = lshr i64 %result.0321, 3
  %add74 = add nuw nsw i64 %shr73, %conv72
  %shr75 = lshr i64 %add74, %sh_prom
  %idxprom = trunc i64 %shr75 to i32
  %arrayidx = getelementptr %struct.ufs_buffer_head, ptr %ucpi, i32 0, i32 2, i32 %idxprom
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %b_data, align 4
  %56 = trunc i64 %add74 to i32
  %idx.ext = and i32 %neg, %56
  %add.ptr = getelementptr i8, ptr %55, i32 %idx.ext
  %57 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %add.ptr, align 1
  %conv82 = zext i8 %58 to i32
  %59 = trunc i64 %result.0321 to i32
  %sh_prom84 = and i32 %59, 7
  %shr85 = lshr i32 %conv82, %sh_prom84
  %and89 = and i32 %shr88, %shr85
  %shl90 = shl nuw nsw i32 %and89, 1
  br label %for.body98

for.body98:                                       ; preds = %if.end141.for.body98_crit_edge, %for.body
  %pos.0319 = phi i32 [ 0, %for.body ], [ %inc, %if.end141.for.body98_crit_edge ]
  %want.0318 = phi i32 [ %51, %for.body ], [ %shl143, %if.end141.for.body98_crit_edge ]
  %mask.0317 = phi i32 [ %49, %for.body ], [ %shl142, %if.end141.for.body98_crit_edge ]
  %and99 = and i32 %mask.0317, %shl90
  call void @__sanitizer_cov_trace_cmp4(i32 %and99, i32 %want.0318)
  %cmp100 = icmp eq i32 %and99, %want.0318
  br i1 %cmp100, label %do.body103, label %if.end141

do.body103:                                       ; preds = %for.body98
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_bitmap_search.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_bitmap_search, %do.body121)) #7
          to label %if.then117 [label %do.body121], !srcloc !172

if.then117:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_bitmap_search.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 857, ptr noundef nonnull @.str.52) #7
  br label %do.body121

do.body121:                                       ; preds = %if.then117, %do.body103
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_bitmap_search.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_bitmap_search, %do.end138)) #7
          to label %if.then135 [label %do.end138], !srcloc !172

if.then135:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_bitmap_search.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.26, i64 noundef %result.0321) #7
  br label %do.end138

do.end138:                                        ; preds = %if.then135, %do.body121
  %conv139 = zext i32 %pos.0319 to i64
  %add140 = add i64 %result.0321, %conv139
  br label %cleanup

if.end141:                                        ; preds = %for.body98
  %shl142 = shl i32 %mask.0317, 1
  %shl143 = shl i32 %want.0318, 1
  %inc = add i32 %pos.0319, 1
  %cmp96.not = icmp ugt i32 %inc, %sub95
  br i1 %cmp96.not, label %for.inc144, label %if.end141.for.body98_crit_edge

if.end141.for.body98_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body98

for.inc144:                                       ; preds = %if.end141
  %add147 = add i64 %result.0321, %conv146
  %cmp68 = icmp ult i64 %add147, %conv67
  br i1 %cmp68, label %for.inc144.for.body_crit_edge, label %for.inc144.for.end148_crit_edge

for.inc144.for.end148_crit_edge:                  ; preds = %for.inc144
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end148

for.inc144.for.body_crit_edge:                    ; preds = %for.inc144
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end148:                                       ; preds = %for.inc144.for.end148_crit_edge, %if.end58.for.end148_crit_edge
  %c_cgx149 = getelementptr inbounds %struct.ufs_cg_private_info, ptr %ucpi, i32 0, i32 1
  %60 = ptrtoint ptr %c_cgx149 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %c_cgx149, align 8
  tail call void (ptr, ptr, ptr, ...) @ufs_error(ptr noundef %sb, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.56, i32 noundef %61) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_bitmap_search.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_bitmap_search, %do.body168)) #7
          to label %if.then164 [label %do.body168], !srcloc !172

if.then164:                                       ; preds = %for.end148
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_bitmap_search.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 867, ptr noundef nonnull @.str.52) #7
  br label %do.body168

do.body168:                                       ; preds = %if.then164, %for.end148
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_bitmap_search.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_bitmap_search, %cleanup)) #7
          to label %if.then182 [label %cleanup], !srcloc !172

if.then182:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_bitmap_search.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.14) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then182, %do.body168, %do.end138, %if.then54
  %retval.0 = phi i64 [ -1, %if.then54 ], [ %add140, %do.end138 ], [ -1, %if.then182 ], [ -1, %do.body168 ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !36, !38, !39, !41, !42, !44, !45, !46, !47, !48, !50, !52, !54, !55, !56, !57, !59, !60, !62, !63, !65, !66, !67, !68, !70, !71, !73, !74, !76, !77, !79, !81, !82, !83, !84, !85, !87, !89, !91, !92, !93, !94, !96, !97, !99, !101, !103, !105, !106, !107, !108, !109, !111, !113, !114, !115, !116, !118, !119, !120, !121, !122, !124, !125, !127, !128, !129, !130, !132, !133, !134, !135, !136, !138, !139, !141, !143, !145, !146, !147, !148, !149, !151, !153, !154, !156, !158, !159, !161}
!llvm.module.flags = !{!163, !164, !165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ufs/balloc.c", i32 51, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ufs_free_fragments.__UNIQUE_ID_ddebug260, !1, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ufs_free_fragments.__UNIQUE_ID_ddebug261, !1, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!9 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ufs/balloc.c", i32 55, i32 40}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ufs/balloc.c", i32 62, i32 40}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ufs/balloc.c", i32 71, i32 40}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ufs/balloc.c", i32 84, i32 8}
!18 = !{ptr @ufs_free_fragments.__UNIQUE_ID_ddebug262, !19, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!19 = !{!"../fs/ufs/balloc.c", i32 123, i32 2}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ufs_free_fragments.__UNIQUE_ID_ddebug263, !19, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!22 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ufs_free_fragments.__UNIQUE_ID_ddebug264, !24, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!24 = !{!"../fs/ufs/balloc.c", i32 128, i32 2}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ufs_free_fragments.__UNIQUE_ID_ddebug265, !24, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!27 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ufs/balloc.c", i32 147, i32 2}
!30 = !{ptr @ufs_free_blocks.__UNIQUE_ID_ddebug266, !29, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!31 = !{ptr @ufs_free_blocks.__UNIQUE_ID_ddebug267, !29, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ufs/balloc.c", i32 151, i32 37}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ufs/balloc.c", i32 186, i32 37}
!36 = !{ptr @ufs_free_blocks.__UNIQUE_ID_ddebug268, !37, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!37 = !{!"../fs/ufs/balloc.c", i32 219, i32 2}
!38 = !{ptr @ufs_free_blocks.__UNIQUE_ID_ddebug269, !37, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!39 = !{ptr @ufs_free_blocks.__UNIQUE_ID_ddebug270, !40, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!40 = !{!"../fs/ufs/balloc.c", i32 225, i32 2}
!41 = !{ptr @ufs_free_blocks.__UNIQUE_ID_ddebug271, !40, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ufs/balloc.c", i32 354, i32 2}
!44 = !{ptr @ufs_new_fragments.__UNIQUE_ID_ddebug278, !43, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!45 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ufs_new_fragments.__UNIQUE_ID_ddebug279, !43, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!47 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ufs/balloc.c", i32 367, i32 40}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ufs/balloc.c", i32 380, i32 39}
!52 = !{ptr @ufs_new_fragments.__UNIQUE_ID_ddebug280, !53, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!53 = !{!"../fs/ufs/balloc.c", i32 388, i32 4}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ufs_new_fragments.__UNIQUE_ID_ddebug281, !53, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!56 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ufs_new_fragments.__UNIQUE_ID_ddebug282, !58, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!58 = !{!"../fs/ufs/balloc.c", i32 395, i32 4}
!59 = !{ptr @ufs_new_fragments.__UNIQUE_ID_ddebug283, !58, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!60 = !{ptr @ufs_new_fragments.__UNIQUE_ID_ddebug284, !61, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!61 = !{!"../fs/ufs/balloc.c", i32 407, i32 4}
!62 = !{ptr @ufs_new_fragments.__UNIQUE_ID_ddebug285, !61, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!63 = !{ptr @ufs_new_fragments.__UNIQUE_ID_ddebug288, !64, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!64 = !{!"../fs/ufs/balloc.c", i32 435, i32 3}
!65 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ufs_new_fragments.__UNIQUE_ID_ddebug289, !64, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!67 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ufs_new_fragments.__UNIQUE_ID_ddebug292, !69, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!69 = !{!"../fs/ufs/balloc.c", i32 452, i32 3}
!70 = !{ptr @ufs_new_fragments.__UNIQUE_ID_ddebug293, !69, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!71 = !{ptr @ufs_new_fragments.__UNIQUE_ID_ddebug296, !72, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!72 = !{!"../fs/ufs/balloc.c", i32 485, i32 3}
!73 = !{ptr @ufs_new_fragments.__UNIQUE_ID_ddebug297, !72, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!74 = !{ptr @ufs_new_fragments.__UNIQUE_ID_ddebug298, !75, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!75 = !{!"../fs/ufs/balloc.c", i32 490, i32 2}
!76 = !{ptr @ufs_new_fragments.__UNIQUE_ID_ddebug299, !75, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/ufs/balloc.c", i32 253, i32 2}
!81 = !{ptr @ufs_change_blocknr.__UNIQUE_ID_ddebug272, !80, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!82 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @ufs_change_blocknr.__UNIQUE_ID_ddebug273, !80, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!84 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/ufs/balloc.c", i32 272, i32 8}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/ufs/balloc.c", i32 303, i32 9}
!89 = !{ptr @ufs_change_blocknr.__UNIQUE_ID_ddebug274, !90, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!90 = !{!"../fs/ufs/balloc.c", i32 308, i32 4}
!91 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @ufs_change_blocknr.__UNIQUE_ID_ddebug275, !90, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!93 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @ufs_change_blocknr.__UNIQUE_ID_ddebug276, !95, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!95 = !{!"../fs/ufs/balloc.c", i32 322, i32 2}
!96 = !{ptr @ufs_change_blocknr.__UNIQUE_ID_ddebug277, !95, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!101 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../include/linux/mm.h", i32 717, i32 2}
!103 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/ufs/balloc.c", i32 517, i32 2}
!105 = !{ptr @ufs_add_fragments.__UNIQUE_ID_ddebug300, !104, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!106 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @ufs_add_fragments.__UNIQUE_ID_ddebug301, !104, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!108 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/ufs/balloc.c", i32 557, i32 4}
!111 = !{ptr @ufs_add_fragments.__UNIQUE_ID_ddebug302, !112, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!112 = !{!"../fs/ufs/balloc.c", i32 574, i32 2}
!113 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @ufs_add_fragments.__UNIQUE_ID_ddebug303, !112, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!115 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.44, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/ufs/balloc.c", i32 597, i32 2}
!118 = !{ptr @ufs_alloc_fragments.__UNIQUE_ID_ddebug304, !117, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!119 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @ufs_alloc_fragments.__UNIQUE_ID_ddebug305, !117, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!121 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @ufs_alloc_fragments.__UNIQUE_ID_ddebug306, !123, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!123 = !{!"../fs/ufs/balloc.c", i32 631, i32 2}
!124 = !{ptr @ufs_alloc_fragments.__UNIQUE_ID_ddebug307, !123, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!125 = !{ptr @ufs_alloc_fragments.__UNIQUE_ID_ddebug308, !126, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!126 = !{!"../fs/ufs/balloc.c", i32 696, i32 2}
!127 = !{ptr @.str.47, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @ufs_alloc_fragments.__UNIQUE_ID_ddebug309, !126, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!129 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.49, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/ufs/balloc.c", i32 709, i32 2}
!132 = !{ptr @ufs_alloccg_block.__UNIQUE_ID_ddebug310, !131, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!133 = !{ptr @.str.50, !131, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @ufs_alloccg_block.__UNIQUE_ID_ddebug311, !131, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!135 = !{ptr @.str.51, !131, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @ufs_alloccg_block.__UNIQUE_ID_ddebug312, !137, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!137 = !{!"../fs/ufs/balloc.c", i32 755, i32 2}
!138 = !{ptr @ufs_alloccg_block.__UNIQUE_ID_ddebug313, !137, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!139 = !{ptr @ufs_bitmap_search.mask_arr, !140, !"mask_arr", i1 false, i1 false}
!140 = !{!"../fs/ufs/balloc.c", i32 803, i32 19}
!141 = !{ptr @ufs_bitmap_search.want_arr, !142, !"want_arr", i1 false, i1 false}
!142 = !{!"../fs/ufs/balloc.c", i32 806, i32 19}
!143 = !{ptr @.str.52, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/ufs/balloc.c", i32 814, i32 2}
!145 = !{ptr @ufs_bitmap_search.__UNIQUE_ID_ddebug314, !144, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!146 = !{ptr @.str.53, !144, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @ufs_bitmap_search.__UNIQUE_ID_ddebug315, !144, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!148 = !{ptr @.str.54, !144, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.55, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/ufs/balloc.c", i32 834, i32 7}
!151 = !{ptr @ufs_bitmap_search.__UNIQUE_ID_ddebug316, !152, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!152 = !{!"../fs/ufs/balloc.c", i32 856, i32 5}
!153 = !{ptr @ufs_bitmap_search.__UNIQUE_ID_ddebug317, !152, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!154 = !{ptr @.str.56, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/ufs/balloc.c", i32 865, i32 37}
!156 = !{ptr @ufs_bitmap_search.__UNIQUE_ID_ddebug318, !157, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!157 = !{!"../fs/ufs/balloc.c", i32 867, i32 2}
!158 = !{ptr @ufs_bitmap_search.__UNIQUE_ID_ddebug319, !157, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!159 = !{ptr @ufs_fragtable_8fpb, !160, !"ufs_fragtable_8fpb", i1 false, i1 false}
!160 = !{!"../fs/ufs/balloc.c", i32 925, i32 22}
!161 = !{ptr @ufs_fragtable_other, !162, !"ufs_fragtable_other", i1 false, i1 false}
!162 = !{!"../fs/ufs/balloc.c", i32 944, i32 22}
!163 = !{i32 1, !"wchar_size", i32 2}
!164 = !{i32 1, !"min_enum_size", i32 4}
!165 = !{i32 8, !"branch-target-enforcement", i32 0}
!166 = !{i32 8, !"sign-return-address", i32 0}
!167 = !{i32 8, !"sign-return-address-all", i32 0}
!168 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!169 = !{i32 7, !"uwtable", i32 1}
!170 = !{i32 7, !"frame-pointer", i32 2}
!171 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!172 = !{i64 2148503268, i64 2148503273, i64 2148503286, i64 2148503330, i64 2148503364, i64 2148503385}
!173 = !{!"branch_weights", i32 2000, i32 1}
!174 = distinct !{!174, !175}
!175 = !{!"llvm.loop.peeled.count", i32 1}
!176 = !{i64 2148528455, i64 2148528735, i64 2148529069, i64 2148529403}
!177 = !{i64 2150107810}
!178 = !{i64 2150108135}
!179 = !{i64 2148687528, i64 2148687560, i64 2148687589, i64 2148687623, i64 2148687654, i64 2148687677}
!180 = !{i64 2148776633}
!181 = !{!"auto-init"}
!182 = !{!"branch_weights", i32 1, i32 2000}
!183 = !{i64 2154406058, i64 2154406538, i64 2154406095, i64 2154406151, i64 2154406185, i64 2154406209, i64 2154406250, i64 2154406271, i64 2154406299, i64 2154406333}
!184 = !{i64 2150594848, i64 2150595339, i64 2150594885, i64 2150594941, i64 2150594975, i64 2150594999, i64 2150595040, i64 2150595061, i64 2150595089, i64 2150595123}
!185 = !{i64 2154407650, i64 2154408130, i64 2154407687, i64 2154407743, i64 2154407777, i64 2154407801, i64 2154407842, i64 2154407863, i64 2154407891, i64 2154407925}
!186 = !{i64 2151046121, i64 2151046612, i64 2151046158, i64 2151046214, i64 2151046248, i64 2151046272, i64 2151046313, i64 2151046334, i64 2151046362, i64 2151046396}
!187 = !{i64 2154409393, i64 2154409873, i64 2154409430, i64 2154409486, i64 2154409520, i64 2154409544, i64 2154409585, i64 2154409606, i64 2154409634, i64 2154409668}
!188 = !{i64 2153190356, i64 2153190839, i64 2153190393, i64 2153190449, i64 2153190483, i64 2153190507, i64 2153190548, i64 2153190569, i64 2153190597, i64 2153190631}
!189 = !{i64 2148767146}
!190 = !{i64 2148681855, i64 2148681887, i64 2148681916, i64 2148681950, i64 2148681981, i64 2148682004}
!191 = !{i64 2148767375}
