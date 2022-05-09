; ModuleID = '/llk/IR_all_yes/fs/ufs/cylinder.c_pt.bc'
source_filename = "../fs/ufs/cylinder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
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
%struct.ufs_sb_info = type { ptr, ptr, i32, i32, ptr, [8 x ptr], [8 x i32], i16, i32, ptr, i32, %struct.delayed_work, %struct.spinlock, %struct.mutex }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ufs_buffer_head = type { i64, i64, [8 x ptr] }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ufs_sb_private_info = type { %struct.ufs_buffer_head, %struct.ufs_csum_core, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.ufs_csum_core = type { i64, i64, i64, i64, i64 }
%struct.ufs_cg_private_info = type { %struct.ufs_buffer_head, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ufs_cylinder_group = type { i32, i32, i32, i32, i16, i16, i32, %struct.ufs_csum, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, %union.anon.70, [1 x i8] }
%struct.ufs_csum = type { i32, i32, i32, i32 }
%union.anon.70 = type { %struct.anon.72 }
%struct.anon.72 = type { i32, i32, i32, i32, i32, [3 x i32], i64, [3 x i64] }

@ufs_put_cylinder.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 22, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ufs\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ufs_put_cylinder\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/ufs/cylinder.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"UFSD (%s, %d): %s:\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ufs: UFSD (%s, %d): %s:\00", [40 x i8] zeroinitializer }, align 32
@ufs_put_cylinder.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 22, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ENTER, bitmap_nr %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ufs: ENTER, bitmap_nr %u\0A\00", [38 x i8] zeroinitializer }, align 32
@ufs_put_cylinder.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 23, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_put_cylinder.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 23, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EXIT\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ufs: EXIT\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"internal error\00", [17 x i8] zeroinitializer }, align 32
@ufs_put_cylinder.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 29, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_put_cylinder.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 29, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_load_cylinder.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.3, i8 0, i8 33, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ufs_load_cylinder\00", [46 x i8] zeroinitializer }, align 32
@ufs_load_cylinder.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 33, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ENTER, cgno %u\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ufs: ENTER, cgno %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"internal error, high number of cg\00", [62 x i8] zeroinitializer }, align 32
@ufs_load_cylinder.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.3, i8 0, i8 36, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_load_cylinder.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.7, i8 0, i8 36, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"internal error, wrong number of cg in cache\00", [52 x i8] zeroinitializer }, align 32
@ufs_load_cylinder.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.3, i8 0, i8 39, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_load_cylinder.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.15, i8 0, i8 39, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EXIT (FAILED)\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ufs: EXIT (FAILED)\0A\00", [44 x i8] zeroinitializer }, align 32
@ufs_load_cylinder.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.3, i8 0, i8 40, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_load_cylinder.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.7, i8 0, i8 40, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_load_cylinder.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.3, i8 0, i8 41, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_load_cylinder.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.7, i8 0, i8 41, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_load_cylinder.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.3, i8 0, i8 50, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_load_cylinder.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.7, i8 0, i8 50, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_read_cylinder.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.3, i8 0, i8 9, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ufs_read_cylinder\00", [46 x i8] zeroinitializer }, align 32
@ufs_read_cylinder.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 9, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ENTER, cgno %u, bitmap_nr %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ufs: ENTER, cgno %u, bitmap_nr %u\0A\00", [61 x i8] zeroinitializer }, align 32
@ufs_read_cylinder.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.3, i8 0, i8 17, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_read_cylinder.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.7, i8 0, i8 17, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"can't read cylinder group block %u\00", [61 x i8] zeroinitializer }, align 32
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 91, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 95, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 102, i32 38 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 135, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 139, i32 39 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 155, i32 41 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 156, i32 5 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 38, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [21 x i8] c"../fs/ufs/cylinder.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 76, i32 38 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufs_put_cylinder(ptr noundef %sb, i32 noundef %bitmap_nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_put_cylinder.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_put_cylinder, %do.body5)) #3
          to label %if.then [label %do.body5], !srcloc !67

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_put_cylinder.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 91, ptr noundef nonnull @.str.1) #3
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_put_cylinder.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_put_cylinder, %do.end22)) #3
          to label %if.then19 [label %do.end22], !srcloc !67

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_put_cylinder.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.6, i32 noundef %bitmap_nr) #3
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body5
  %arrayidx = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 6, i32 %bitmap_nr
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %do.body24, label %if.end60

do.body24:                                        ; preds = %do.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_put_cylinder.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_put_cylinder, %do.body42)) #3
          to label %if.then38 [label %do.body42], !srcloc !67

if.then38:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_put_cylinder.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 95, ptr noundef nonnull @.str.1) #3
  br label %do.body42

do.body42:                                        ; preds = %if.then38, %do.body24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_put_cylinder.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_put_cylinder, %cleanup)) #3
          to label %if.then56 [label %cleanup], !srcloc !67

if.then56:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_put_cylinder.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.8) #3
  br label %cleanup

if.end60:                                         ; preds = %do.end22
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %arrayidx61 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 %bitmap_nr
  %6 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx61, align 4
  %bh = getelementptr inbounds %struct.ufs_buffer_head, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bh, align 8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data, align 4
  %s_ncg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %5, i32 0, i32 10
  %12 = ptrtoint ptr %s_ncg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_ncg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %13)
  %cmp64 = icmp ugt i32 %13, 8
  br i1 %cmp64, label %land.lhs.true, label %if.end60.if.end68_crit_edge

if.end60.if.end68_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end68

land.lhs.true:                                    ; preds = %if.end60
  %s_cg_loaded = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %s_cg_loaded to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %s_cg_loaded, align 4
  %conv = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %bitmap_nr)
  %cmp65.not = icmp ugt i32 %conv, %bitmap_nr
  br i1 %cmp65.not, label %land.lhs.true.if.end68_crit_edge, label %if.then67

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end68

if.then67:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @ufs_panic(ptr noundef %sb, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9) #3
  br label %cleanup

if.end68:                                         ; preds = %land.lhs.true.if.end68_crit_edge, %if.end60.if.end68_crit_edge
  %c_rotor = getelementptr inbounds %struct.ufs_cg_private_info, ptr %7, i32 0, i32 5
  %16 = ptrtoint ptr %c_rotor to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %c_rotor, align 4
  %18 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  %22 = tail call i32 @llvm.bswap.i32(i32 %17) #3
  %retval.0.i159 = select i1 %cmp.i, i32 %22, i32 %17
  %cg_rotor = getelementptr inbounds %struct.ufs_cylinder_group, ptr %11, i32 0, i32 8
  %23 = ptrtoint ptr %cg_rotor to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i159, ptr %cg_rotor, align 8
  %c_frotor = getelementptr inbounds %struct.ufs_cg_private_info, ptr %7, i32 0, i32 6
  %24 = ptrtoint ptr %c_frotor to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %c_frotor, align 8
  %26 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i161 = getelementptr inbounds %struct.ufs_sb_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %s_bytesex.i161 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_bytesex.i161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i162 = icmp eq i32 %29, 0
  %30 = tail call i32 @llvm.bswap.i32(i32 %25) #3
  %retval.0.i163 = select i1 %cmp.i162, i32 %30, i32 %25
  %cg_frotor = getelementptr inbounds %struct.ufs_cylinder_group, ptr %11, i32 0, i32 9
  %31 = ptrtoint ptr %cg_frotor to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %retval.0.i163, ptr %cg_frotor, align 4
  %c_irotor = getelementptr inbounds %struct.ufs_cg_private_info, ptr %7, i32 0, i32 7
  %32 = ptrtoint ptr %c_irotor to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %c_irotor, align 4
  %34 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i165 = getelementptr inbounds %struct.ufs_sb_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %s_bytesex.i165 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_bytesex.i165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i166 = icmp eq i32 %37, 0
  %38 = tail call i32 @llvm.bswap.i32(i32 %33) #3
  %retval.0.i167 = select i1 %cmp.i166, i32 %38, i32 %33
  %cg_irotor = getelementptr inbounds %struct.ufs_cylinder_group, ptr %11, i32 0, i32 10
  %39 = ptrtoint ptr %cg_irotor to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %retval.0.i167, ptr %cg_irotor, align 8
  tail call void @ubh_mark_buffer_dirty(ptr noundef %7) #3
  %count = getelementptr inbounds %struct.ufs_buffer_head, ptr %7, i32 0, i32 1
  %40 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %41)
  %cmp75174 = icmp ugt i64 %41, 1
  br i1 %cmp75174, label %if.end68.for.body_crit_edge, label %if.end68.for.end_crit_edge

if.end68.for.end_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end68.for.body_crit_edge:                      ; preds = %if.end68
  br label %for.body

for.body:                                         ; preds = %brelse.exit.for.body_crit_edge, %if.end68.for.body_crit_edge
  %i.0175 = phi i32 [ %inc, %brelse.exit.for.body_crit_edge ], [ 1, %if.end68.for.body_crit_edge ]
  %arrayidx79 = getelementptr %struct.ufs_buffer_head, ptr %7, i32 0, i32 2, i32 %i.0175
  %42 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx79, align 4
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %for.body.brelse.exit_crit_edge, label %if.then.i

for.body.brelse.exit_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %brelse.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @__brelse(ptr noundef nonnull %43) #3
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %for.body.brelse.exit_crit_edge
  %inc = add i32 %i.0175, 1
  %conv73 = zext i32 %inc to i64
  %44 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %count, align 8
  %cmp75 = icmp ugt i64 %45, %conv73
  br i1 %cmp75, label %brelse.exit.for.body_crit_edge, label %brelse.exit.for.end_crit_edge

brelse.exit.for.end_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

brelse.exit.for.body_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %brelse.exit.for.end_crit_edge, %if.end68.for.end_crit_edge
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_put_cylinder.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_put_cylinder, %do.body100)) #3
          to label %if.then96 [label %do.body100], !srcloc !67

if.then96:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_put_cylinder.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 118, ptr noundef nonnull @.str.1) #3
  br label %do.body100

do.body100:                                       ; preds = %if.then96, %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_put_cylinder.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_put_cylinder, %cleanup)) #3
          to label %if.then114 [label %cleanup], !srcloc !67

if.then114:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_put_cylinder.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.8) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then114, %do.body100, %if.then67, %if.then56, %do.body42
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufs_panic(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubh_mark_buffer_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ufs_load_cylinder(ptr noundef %sb, i32 noundef %cgno) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_load_cylinder.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_load_cylinder, %do.body5)) #3
          to label %if.then [label %do.body5], !srcloc !67

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_load_cylinder.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 135, ptr noundef nonnull @.str.10) #3
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_load_cylinder.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_load_cylinder, %do.end22)) #3
          to label %if.then19 [label %do.end22], !srcloc !67

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_load_cylinder.__UNIQUE_ID_ddebug249, ptr noundef nonnull @.str.12, i32 noundef %cgno) #3
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %s_ncg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %s_ncg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_ncg, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %cgno)
  %cmp.not = icmp ugt i32 %5, %cgno
  br i1 %cmp.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @ufs_panic(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.13) #3
  br label %cleanup

if.end24:                                         ; preds = %do.end22
  %s_cgno = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %s_cgno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_cgno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %cgno)
  %cmp25 = icmp eq i32 %7, %cgno
  br i1 %cmp25, label %do.body27, label %if.end64

do.body27:                                        ; preds = %if.end24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_load_cylinder.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_load_cylinder, %do.body45)) #3
          to label %if.then41 [label %do.body45], !srcloc !67

if.then41:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_load_cylinder.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 146, ptr noundef nonnull @.str.10) #3
  br label %do.body45

do.body45:                                        ; preds = %if.then41, %do.body27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_load_cylinder.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_load_cylinder, %do.end62)) #3
          to label %if.then59 [label %do.end62], !srcloc !67

if.then59:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_load_cylinder.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.8) #3
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %do.body45
  %s_ucpi = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %s_ucpi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_ucpi, align 4
  br label %cleanup

if.end64:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cmp66 = icmp ult i32 %5, 9
  br i1 %cmp66, label %if.then67, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end64
  %s_cg_loaded = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %s_cg_loaded to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %s_cg_loaded, align 4
  %conv = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp190427.not = icmp eq i16 %11, 0
  br i1 %cmp190427.not, label %for.cond.preheader.if.then233_crit_edge, label %for.cond.preheader.land.rhs_crit_edge

for.cond.preheader.land.rhs_crit_edge:            ; preds = %for.cond.preheader
  br label %land.rhs

for.cond.preheader.if.then233_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then233

if.then67:                                        ; preds = %if.end64
  %arrayidx69 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 6, i32 %cgno
  %12 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp70.not = icmp eq i32 %13, -1
  br i1 %cmp70.not, label %if.else150, label %if.then71

if.then71:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %cgno)
  %cmp74.not = icmp eq i32 %13, %cgno
  br i1 %cmp74.not, label %do.body112, label %if.then75

if.then75:                                        ; preds = %if.then71
  tail call void (ptr, ptr, ptr, ...) @ufs_panic(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.14) #3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_load_cylinder.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_load_cylinder, %do.body94)) #3
          to label %if.then90 [label %do.body94], !srcloc !67

if.then90:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_load_cylinder.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 156, ptr noundef nonnull @.str.10) #3
  br label %do.body94

do.body94:                                        ; preds = %if.then90, %if.then75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_load_cylinder.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_load_cylinder, %cleanup)) #3
          to label %if.then108 [label %cleanup], !srcloc !67

if.then108:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_load_cylinder.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.16) #3
  br label %cleanup

do.body112:                                       ; preds = %if.then71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_load_cylinder.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_load_cylinder, %do.body130)) #3
          to label %if.then126 [label %do.body130], !srcloc !67

if.then126:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_load_cylinder.__UNIQUE_ID_ddebug254, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 160, ptr noundef nonnull @.str.10) #3
  br label %do.body130

do.body130:                                       ; preds = %if.then126, %do.body112
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_load_cylinder.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_load_cylinder, %do.end147)) #3
          to label %if.then144 [label %do.end147], !srcloc !67

if.then144:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_load_cylinder.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.8) #3
  br label %do.end147

do.end147:                                        ; preds = %if.then144, %do.body130
  %arrayidx149 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 %cgno
  %14 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx149, align 4
  br label %cleanup

if.else150:                                       ; preds = %if.then67
  tail call fastcc void @ufs_read_cylinder(ptr noundef %sb, i32 noundef %cgno, i32 noundef %cgno)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_load_cylinder.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_load_cylinder, %do.body169)) #3
          to label %if.then165 [label %do.body169], !srcloc !67

if.then165:                                       ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_load_cylinder.__UNIQUE_ID_ddebug256, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 165, ptr noundef nonnull @.str.10) #3
  br label %do.body169

do.body169:                                       ; preds = %if.then165, %if.else150
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_load_cylinder.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_load_cylinder, %do.end186)) #3
          to label %if.then183 [label %do.end186], !srcloc !67

if.then183:                                       ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_load_cylinder.__UNIQUE_ID_ddebug257, ptr noundef nonnull @.str.8) #3
  br label %do.end186

do.end186:                                        ; preds = %if.then183, %do.body169
  %arrayidx188 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 %cgno
  %16 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx188, align 4
  br label %cleanup

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.cond.preheader.land.rhs_crit_edge
  %i.0428 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %for.cond.preheader.land.rhs_crit_edge ]
  %arrayidx193 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 6, i32 %i.0428
  %18 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx193, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %cgno)
  %cmp194.not = icmp eq i32 %19, %cgno
  br i1 %cmp194.not, label %land.lhs.true, label %for.inc

for.inc:                                          ; preds = %land.rhs
  %inc = add nuw nsw i32 %i.0428, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.if.else228_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs

for.inc.if.else228_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else228

land.lhs.true:                                    ; preds = %land.rhs
  %20 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx193, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %cgno)
  %cmp202 = icmp eq i32 %21, %cgno
  br i1 %cmp202, label %if.then204, label %land.lhs.true.if.else228_crit_edge

land.lhs.true.if.else228_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else228

if.then204:                                       ; preds = %land.lhs.true
  %s_ucpi207 = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 5
  %arrayidx208 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 %i.0428
  %22 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx208, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0428)
  %cmp210.not431 = icmp eq i32 %i.0428, 0
  br i1 %cmp210.not431, label %if.then204.for.end223_crit_edge, label %if.then204.for.body212_crit_edge

if.then204.for.body212_crit_edge:                 ; preds = %if.then204
  br label %for.body212

if.then204.for.end223_crit_edge:                  ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end223

for.body212:                                      ; preds = %for.body212.for.body212_crit_edge, %if.then204.for.body212_crit_edge
  %j.0432 = phi i32 [ %sub, %for.body212.for.body212_crit_edge ], [ %i.0428, %if.then204.for.body212_crit_edge ]
  %sub = add nsw i32 %j.0432, -1
  %arrayidx214 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 6, i32 %sub
  %24 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx214, align 4
  %arrayidx216 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 6, i32 %j.0432
  %26 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx216, align 4
  %arrayidx219 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 %sub
  %27 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx219, align 4
  %arrayidx221 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 %j.0432
  %29 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %arrayidx221, align 4
  %cmp210.not = icmp eq i32 %sub, 0
  br i1 %cmp210.not, label %for.body212.for.end223_crit_edge, label %for.body212.for.body212_crit_edge

for.body212.for.body212_crit_edge:                ; preds = %for.body212
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body212

for.body212.for.end223_crit_edge:                 ; preds = %for.body212
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end223

for.end223:                                       ; preds = %for.body212.for.end223_crit_edge, %if.then204.for.end223_crit_edge
  %30 = ptrtoint ptr %s_cgno to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cgno, ptr %s_cgno, align 4
  %31 = ptrtoint ptr %s_ucpi207 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %23, ptr %s_ucpi207, align 4
  br label %do.body266

if.else228:                                       ; preds = %land.lhs.true.if.else228_crit_edge, %for.inc.if.else228_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %11)
  %cmp231 = icmp ult i16 %11, 8
  br i1 %cmp231, label %if.else228.if.then233_crit_edge, label %if.else236

if.else228.if.then233_crit_edge:                  ; preds = %if.else228
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then233

if.then233:                                       ; preds = %if.else228.if.then233_crit_edge, %for.cond.preheader.if.then233_crit_edge
  %inc235 = add nuw nsw i16 %11, 1
  %32 = ptrtoint ptr %s_cg_loaded to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %inc235, ptr %s_cg_loaded, align 4
  br label %if.end237

if.else236:                                       ; preds = %if.else228
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @ufs_put_cylinder(ptr noundef %sb, i32 noundef 7)
  br label %if.end237

if.end237:                                        ; preds = %if.else236, %if.then233
  %s_ucpi238 = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %s_cg_loaded to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %s_cg_loaded, align 4
  %conv240 = zext i16 %34 to i32
  %sub241 = add nsw i32 %conv240, -1
  %arrayidx242 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 %sub241
  %35 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx242, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub241)
  %cmp247.not429 = icmp eq i32 %sub241, 0
  br i1 %cmp247.not429, label %if.end237.for.end262_crit_edge, label %if.end237.for.body249_crit_edge

if.end237.for.body249_crit_edge:                  ; preds = %if.end237
  br label %for.body249

if.end237.for.end262_crit_edge:                   ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end262

for.body249:                                      ; preds = %for.body249.for.body249_crit_edge, %if.end237.for.body249_crit_edge
  %j.1430 = phi i32 [ %sub251, %for.body249.for.body249_crit_edge ], [ %sub241, %if.end237.for.body249_crit_edge ]
  %sub251 = add i32 %j.1430, -1
  %arrayidx252 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 6, i32 %sub251
  %37 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx252, align 4
  %arrayidx254 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 6, i32 %j.1430
  %39 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx254, align 4
  %arrayidx257 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 %sub251
  %40 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx257, align 4
  %arrayidx259 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 %j.1430
  %42 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %arrayidx259, align 4
  %cmp247.not = icmp eq i32 %sub251, 0
  br i1 %cmp247.not, label %for.body249.for.end262_crit_edge, label %for.body249.for.body249_crit_edge

for.body249.for.body249_crit_edge:                ; preds = %for.body249
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body249

for.body249.for.end262_crit_edge:                 ; preds = %for.body249
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end262

for.end262:                                       ; preds = %for.body249.for.end262_crit_edge, %if.end237.for.end262_crit_edge
  %43 = ptrtoint ptr %s_ucpi238 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %36, ptr %s_ucpi238, align 4
  tail call fastcc void @ufs_read_cylinder(ptr noundef %sb, i32 noundef %cgno, i32 noundef 0)
  br label %do.body266

do.body266:                                       ; preds = %for.end262, %for.end223
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_load_cylinder.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_load_cylinder, %do.body284)) #3
          to label %if.then280 [label %do.body284], !srcloc !67

if.then280:                                       ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_load_cylinder.__UNIQUE_ID_ddebug258, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 200, ptr noundef nonnull @.str.10) #3
  br label %do.body284

do.body284:                                       ; preds = %if.then280, %do.body266
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_load_cylinder.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_load_cylinder, %do.end301)) #3
          to label %if.then298 [label %do.end301], !srcloc !67

if.then298:                                       ; preds = %do.body284
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_load_cylinder.__UNIQUE_ID_ddebug259, ptr noundef nonnull @.str.8) #3
  br label %do.end301

do.end301:                                        ; preds = %if.then298, %do.body284
  %s_ucpi302 = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 5
  %44 = ptrtoint ptr %s_ucpi302 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_ucpi302, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end301, %do.end186, %do.end147, %if.then108, %do.body94, %do.end62, %if.then23
  %retval.0 = phi ptr [ null, %if.then23 ], [ %9, %do.end62 ], [ %15, %do.end147 ], [ %17, %do.end186 ], [ %45, %do.end301 ], [ null, %if.then108 ], [ null, %do.body94 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufs_read_cylinder(ptr noundef %sb, i32 noundef %cgno, i32 noundef %bitmap_nr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_read_cylinder.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_read_cylinder, %do.body5)) #3
          to label %if.then [label %do.body5], !srcloc !67

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_read_cylinder.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 38, ptr noundef nonnull @.str.17) #3
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_read_cylinder.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_read_cylinder, %do.end22)) #3
          to label %if.then19 [label %do.end22], !srcloc !67

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_read_cylinder.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.19, i32 noundef %cgno, i32 noundef %bitmap_nr) #3
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 5, i32 %bitmap_nr
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %s_ucg = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %s_ucg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_ucg, align 4
  %arrayidx23 = getelementptr ptr, ptr %7, i32 %cgno
  %8 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx23, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data, align 4
  %fs_magic = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 62
  %12 = ptrtoint ptr %fs_magic to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fs_magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %13)
  %cmp = icmp eq i32 %13, 424935705
  %s_fpg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 37
  %14 = ptrtoint ptr %s_fpg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_fpg, align 8
  %mul = mul i32 %15, %cgno
  br i1 %cmp, label %do.end22.cond.end_crit_edge, label %cond.false

do.end22.cond.end_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

cond.false:                                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #5
  %s_cgoffset = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %s_cgoffset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_cgoffset, align 8
  %s_cgmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %s_cgmask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_cgmask, align 4
  %neg = xor i32 %19, -1
  %and = and i32 %neg, %cgno
  %mul26 = mul i32 %and, %17
  %add = add i32 %mul26, %mul
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.end22.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ %mul, %do.end22.cond.end_crit_edge ]
  %s_cblkno = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %s_cblkno to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_cblkno, align 4
  %add27 = add i32 %21, %cond
  %conv = zext i32 %add27 to i64
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv, ptr %5, align 8
  %s_cgsize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 32
  %23 = ptrtoint ptr %s_cgsize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_cgsize, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %25 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %s_blocksize_bits, align 4
  %conv29 = zext i8 %26 to i32
  %shr = lshr i32 %24, %conv29
  %conv30 = zext i32 %shr to i64
  %count = getelementptr inbounds %struct.ufs_buffer_head, ptr %5, i32 0, i32 1
  %27 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv30, ptr %count, align 8
  %28 = ptrtoint ptr %s_ucg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_ucg, align 4
  %arrayidx33 = getelementptr ptr, ptr %29, i32 %cgno
  %30 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx33, align 4
  %bh = getelementptr inbounds %struct.ufs_buffer_head, ptr %5, i32 0, i32 2
  %32 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %bh, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cmp39273 = icmp ugt i32 %shr, 1
  br i1 %cmp39273, label %for.body.lr.ph, label %cond.end.for.end_crit_edge

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv36275 = phi i64 [ 1, %for.body.lr.ph ], [ %conv36, %for.inc.for.body_crit_edge ]
  %indvars = trunc i64 %conv36275 to i32
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %5, align 8
  %add44 = add i64 %34, %conv36275
  %35 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_bdev.i, align 4
  %37 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %36, i64 noundef %add44, i32 noundef %38, i32 noundef 8) #3
  %arrayidx48 = getelementptr %struct.ufs_buffer_head, ptr %5, i32 0, i32 2, i32 %indvars
  %39 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %arrayidx48, align 4
  %tobool49.not = icmp eq ptr %call.i, null
  br i1 %tobool49.not, label %for.cond106.preheader, label %for.inc

for.cond106.preheader:                            ; preds = %for.body
  %indvars.le = trunc i64 %conv36275 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %indvars.le)
  %cmp107276 = icmp ugt i32 %indvars.le, 1
  br i1 %cmp107276, label %for.cond106.preheader.for.body109_crit_edge, label %for.cond106.preheader.for.end114_crit_edge

for.cond106.preheader.for.end114_crit_edge:       ; preds = %for.cond106.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end114

for.cond106.preheader.for.body109_crit_edge:      ; preds = %for.cond106.preheader
  br label %for.body109

for.inc:                                          ; preds = %for.body
  %inc = add i32 %indvars, 1
  %conv36 = zext i32 %inc to i64
  %40 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %count, align 8
  %cmp39 = icmp ugt i64 %41, %conv36
  br i1 %cmp39, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cond.end.for.end_crit_edge
  %arrayidx52 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 6, i32 %bitmap_nr
  %42 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %cgno, ptr %arrayidx52, align 4
  %cg_cgx = getelementptr inbounds %struct.ufs_cylinder_group, ptr %11, i32 0, i32 3
  %43 = ptrtoint ptr %cg_cgx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cg_cgx, align 4
  %45 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i = icmp eq i32 %48, 0
  %49 = tail call i32 @llvm.bswap.i32(i32 %44) #3
  %retval.0.i211 = select i1 %cmp.i, i32 %49, i32 %44
  %c_cgx = getelementptr inbounds %struct.ufs_cg_private_info, ptr %5, i32 0, i32 1
  %50 = ptrtoint ptr %c_cgx to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %retval.0.i211, ptr %c_cgx, align 8
  %cg_ncyl = getelementptr inbounds %struct.ufs_cylinder_group, ptr %11, i32 0, i32 4
  %51 = ptrtoint ptr %cg_ncyl to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %cg_ncyl, align 8
  %53 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i213 = getelementptr inbounds %struct.ufs_sb_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %s_bytesex.i213 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %s_bytesex.i213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i214 = icmp eq i32 %56, 0
  %57 = tail call i16 @llvm.bswap.i16(i16 %52) #3
  %retval.0.i215 = select i1 %cmp.i214, i16 %57, i16 %52
  %c_ncyl = getelementptr inbounds %struct.ufs_cg_private_info, ptr %5, i32 0, i32 2
  %58 = ptrtoint ptr %c_ncyl to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %retval.0.i215, ptr %c_ncyl, align 4
  %cg_niblk = getelementptr inbounds %struct.ufs_cylinder_group, ptr %11, i32 0, i32 5
  %59 = ptrtoint ptr %cg_niblk to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %cg_niblk, align 2
  %61 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i217 = getelementptr inbounds %struct.ufs_sb_info, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %s_bytesex.i217 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %s_bytesex.i217, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp.i218 = icmp eq i32 %64, 0
  %65 = tail call i16 @llvm.bswap.i16(i16 %60) #3
  %retval.0.i219 = select i1 %cmp.i218, i16 %65, i16 %60
  %c_niblk = getelementptr inbounds %struct.ufs_cg_private_info, ptr %5, i32 0, i32 3
  %66 = ptrtoint ptr %c_niblk to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %retval.0.i219, ptr %c_niblk, align 2
  %cg_ndblk = getelementptr inbounds %struct.ufs_cylinder_group, ptr %11, i32 0, i32 6
  %67 = ptrtoint ptr %cg_ndblk to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cg_ndblk, align 4
  %69 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i221 = getelementptr inbounds %struct.ufs_sb_info, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %s_bytesex.i221 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %s_bytesex.i221, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp.i222 = icmp eq i32 %72, 0
  %73 = tail call i32 @llvm.bswap.i32(i32 %68) #3
  %retval.0.i223 = select i1 %cmp.i222, i32 %73, i32 %68
  %c_ndblk = getelementptr inbounds %struct.ufs_cg_private_info, ptr %5, i32 0, i32 4
  %74 = ptrtoint ptr %c_ndblk to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %retval.0.i223, ptr %c_ndblk, align 8
  %cg_rotor = getelementptr inbounds %struct.ufs_cylinder_group, ptr %11, i32 0, i32 8
  %75 = ptrtoint ptr %cg_rotor to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cg_rotor, align 8
  %77 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i225 = getelementptr inbounds %struct.ufs_sb_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %s_bytesex.i225 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %s_bytesex.i225, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp.i226 = icmp eq i32 %80, 0
  %81 = tail call i32 @llvm.bswap.i32(i32 %76) #3
  %retval.0.i227 = select i1 %cmp.i226, i32 %81, i32 %76
  %c_rotor = getelementptr inbounds %struct.ufs_cg_private_info, ptr %5, i32 0, i32 5
  %82 = ptrtoint ptr %c_rotor to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %retval.0.i227, ptr %c_rotor, align 4
  %cg_frotor = getelementptr inbounds %struct.ufs_cylinder_group, ptr %11, i32 0, i32 9
  %83 = ptrtoint ptr %cg_frotor to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cg_frotor, align 4
  %85 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i229 = getelementptr inbounds %struct.ufs_sb_info, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %s_bytesex.i229 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %s_bytesex.i229, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.i230 = icmp eq i32 %88, 0
  %89 = tail call i32 @llvm.bswap.i32(i32 %84) #3
  %retval.0.i231 = select i1 %cmp.i230, i32 %89, i32 %84
  %c_frotor = getelementptr inbounds %struct.ufs_cg_private_info, ptr %5, i32 0, i32 6
  %90 = ptrtoint ptr %c_frotor to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %retval.0.i231, ptr %c_frotor, align 8
  %cg_irotor = getelementptr inbounds %struct.ufs_cylinder_group, ptr %11, i32 0, i32 10
  %91 = ptrtoint ptr %cg_irotor to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cg_irotor, align 8
  %93 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i233 = getelementptr inbounds %struct.ufs_sb_info, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %s_bytesex.i233 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %s_bytesex.i233, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp.i234 = icmp eq i32 %96, 0
  %97 = tail call i32 @llvm.bswap.i32(i32 %92) #3
  %retval.0.i235 = select i1 %cmp.i234, i32 %97, i32 %92
  %c_irotor = getelementptr inbounds %struct.ufs_cg_private_info, ptr %5, i32 0, i32 7
  %98 = ptrtoint ptr %c_irotor to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %retval.0.i235, ptr %c_irotor, align 4
  %cg_btotoff = getelementptr inbounds %struct.ufs_cylinder_group, ptr %11, i32 0, i32 12
  %99 = ptrtoint ptr %cg_btotoff to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cg_btotoff, align 4
  %101 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i237 = getelementptr inbounds %struct.ufs_sb_info, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %s_bytesex.i237 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %s_bytesex.i237, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp.i238 = icmp eq i32 %104, 0
  %105 = tail call i32 @llvm.bswap.i32(i32 %100) #3
  %retval.0.i239 = select i1 %cmp.i238, i32 %105, i32 %100
  %c_btotoff = getelementptr inbounds %struct.ufs_cg_private_info, ptr %5, i32 0, i32 8
  %106 = ptrtoint ptr %c_btotoff to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %retval.0.i239, ptr %c_btotoff, align 8
  %cg_boff = getelementptr inbounds %struct.ufs_cylinder_group, ptr %11, i32 0, i32 13
  %107 = ptrtoint ptr %cg_boff to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cg_boff, align 8
  %109 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i241 = getelementptr inbounds %struct.ufs_sb_info, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %s_bytesex.i241 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %s_bytesex.i241, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp.i242 = icmp eq i32 %112, 0
  %113 = tail call i32 @llvm.bswap.i32(i32 %108) #3
  %retval.0.i243 = select i1 %cmp.i242, i32 %113, i32 %108
  %c_boff = getelementptr inbounds %struct.ufs_cg_private_info, ptr %5, i32 0, i32 9
  %114 = ptrtoint ptr %c_boff to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %retval.0.i243, ptr %c_boff, align 4
  %cg_iusedoff = getelementptr inbounds %struct.ufs_cylinder_group, ptr %11, i32 0, i32 14
  %115 = ptrtoint ptr %cg_iusedoff to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %cg_iusedoff, align 4
  %117 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i245 = getelementptr inbounds %struct.ufs_sb_info, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %s_bytesex.i245 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %s_bytesex.i245, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp.i246 = icmp eq i32 %120, 0
  %121 = tail call i32 @llvm.bswap.i32(i32 %116) #3
  %retval.0.i247 = select i1 %cmp.i246, i32 %121, i32 %116
  %c_iusedoff = getelementptr inbounds %struct.ufs_cg_private_info, ptr %5, i32 0, i32 10
  %122 = ptrtoint ptr %c_iusedoff to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %retval.0.i247, ptr %c_iusedoff, align 8
  %cg_freeoff = getelementptr inbounds %struct.ufs_cylinder_group, ptr %11, i32 0, i32 15
  %123 = ptrtoint ptr %cg_freeoff to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %cg_freeoff, align 8
  %125 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i249 = getelementptr inbounds %struct.ufs_sb_info, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %s_bytesex.i249 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %s_bytesex.i249, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp.i250 = icmp eq i32 %128, 0
  %129 = tail call i32 @llvm.bswap.i32(i32 %124) #3
  %retval.0.i251 = select i1 %cmp.i250, i32 %129, i32 %124
  %c_freeoff = getelementptr inbounds %struct.ufs_cg_private_info, ptr %5, i32 0, i32 11
  %130 = ptrtoint ptr %c_freeoff to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %retval.0.i251, ptr %c_freeoff, align 4
  %cg_nextfreeoff = getelementptr inbounds %struct.ufs_cylinder_group, ptr %11, i32 0, i32 16
  %131 = ptrtoint ptr %cg_nextfreeoff to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %cg_nextfreeoff, align 4
  %133 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i253 = getelementptr inbounds %struct.ufs_sb_info, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %s_bytesex.i253 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %s_bytesex.i253, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %cmp.i254 = icmp eq i32 %136, 0
  %137 = tail call i32 @llvm.bswap.i32(i32 %132) #3
  %retval.0.i255 = select i1 %cmp.i254, i32 %137, i32 %132
  %c_nextfreeoff = getelementptr inbounds %struct.ufs_cg_private_info, ptr %5, i32 0, i32 12
  %138 = ptrtoint ptr %c_nextfreeoff to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %retval.0.i255, ptr %c_nextfreeoff, align 8
  %cg_u = getelementptr inbounds %struct.ufs_cylinder_group, ptr %11, i32 0, i32 17
  %139 = ptrtoint ptr %cg_u to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %cg_u, align 8
  %141 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i257 = getelementptr inbounds %struct.ufs_sb_info, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %s_bytesex.i257 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %s_bytesex.i257, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp.i258 = icmp eq i32 %144, 0
  %145 = tail call i32 @llvm.bswap.i32(i32 %140) #3
  %retval.0.i259 = select i1 %cmp.i258, i32 %145, i32 %140
  %c_clustersumoff = getelementptr inbounds %struct.ufs_cg_private_info, ptr %5, i32 0, i32 13
  %146 = ptrtoint ptr %c_clustersumoff to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %retval.0.i259, ptr %c_clustersumoff, align 4
  %cg_clusteroff = getelementptr inbounds %struct.ufs_cylinder_group, ptr %11, i32 0, i32 17, i32 0, i32 1
  %147 = ptrtoint ptr %cg_clusteroff to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %cg_clusteroff, align 4
  %149 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i261 = getelementptr inbounds %struct.ufs_sb_info, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %s_bytesex.i261 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %s_bytesex.i261, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp.i262 = icmp eq i32 %152, 0
  %153 = tail call i32 @llvm.bswap.i32(i32 %148) #3
  %retval.0.i263 = select i1 %cmp.i262, i32 %153, i32 %148
  %c_clusteroff = getelementptr inbounds %struct.ufs_cg_private_info, ptr %5, i32 0, i32 14
  %154 = ptrtoint ptr %c_clusteroff to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %retval.0.i263, ptr %c_clusteroff, align 8
  %cg_nclusterblks = getelementptr inbounds %struct.ufs_cylinder_group, ptr %11, i32 0, i32 17, i32 0, i32 2
  %155 = ptrtoint ptr %cg_nclusterblks to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %cg_nclusterblks, align 8
  %157 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i265 = getelementptr inbounds %struct.ufs_sb_info, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %s_bytesex.i265 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %s_bytesex.i265, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp.i266 = icmp eq i32 %160, 0
  %161 = tail call i32 @llvm.bswap.i32(i32 %156) #3
  %retval.0.i267 = select i1 %cmp.i266, i32 %161, i32 %156
  %c_nclusterblks = getelementptr inbounds %struct.ufs_cg_private_info, ptr %5, i32 0, i32 15
  %162 = ptrtoint ptr %c_nclusterblks to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %retval.0.i267, ptr %c_nclusterblks, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_read_cylinder.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_read_cylinder, %do.body88)) #3
          to label %if.then84 [label %do.body88], !srcloc !67

if.then84:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_read_cylinder.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 69, ptr noundef nonnull @.str.17) #3
  br label %do.body88

do.body88:                                        ; preds = %if.then84, %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_read_cylinder.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_read_cylinder, %cleanup)) #3
          to label %if.then102 [label %cleanup], !srcloc !67

if.then102:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_read_cylinder.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.8) #3
  br label %cleanup

for.body109:                                      ; preds = %brelse.exit.for.body109_crit_edge, %for.cond106.preheader.for.body109_crit_edge
  %j.0277 = phi i32 [ %inc113, %brelse.exit.for.body109_crit_edge ], [ 1, %for.cond106.preheader.for.body109_crit_edge ]
  %163 = ptrtoint ptr %s_ucg to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %s_ucg, align 4
  %arrayidx111 = getelementptr ptr, ptr %164, i32 %j.0277
  %165 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %arrayidx111, align 4
  %tobool.not.i = icmp eq ptr %166, null
  br i1 %tobool.not.i, label %for.body109.brelse.exit_crit_edge, label %if.then.i

for.body109.brelse.exit_crit_edge:                ; preds = %for.body109
  call void @__sanitizer_cov_trace_pc() #5
  br label %brelse.exit

if.then.i:                                        ; preds = %for.body109
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @__brelse(ptr noundef nonnull %166) #3
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %for.body109.brelse.exit_crit_edge
  %inc113 = add nuw i32 %j.0277, 1
  %exitcond.not = icmp eq i32 %inc113, %indvars.le
  br i1 %exitcond.not, label %brelse.exit.for.end114_crit_edge, label %brelse.exit.for.body109_crit_edge

brelse.exit.for.body109_crit_edge:                ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body109

brelse.exit.for.end114_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end114

for.end114:                                       ; preds = %brelse.exit.for.end114_crit_edge, %for.cond106.preheader.for.end114_crit_edge
  %arrayidx116 = getelementptr %struct.ufs_sb_info, ptr %1, i32 0, i32 6, i32 %bitmap_nr
  %167 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 -1, ptr %arrayidx116, align 4
  tail call void (ptr, ptr, ptr, ...) @ufs_error(ptr noundef %sb, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.20, i32 noundef %cgno) #3
  br label %cleanup

cleanup:                                          ; preds = %for.end114, %if.then102, %do.body88
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !19, !20, !22, !23, !24, !25, !26, !28, !30, !31, !33, !35, !36, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !51, !52, !53, !55, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ufs/cylinder.c", i32 91, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ufs_put_cylinder.__UNIQUE_ID_ddebug242, !1, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ufs_put_cylinder.__UNIQUE_ID_ddebug243, !1, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!9 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ufs_put_cylinder.__UNIQUE_ID_ddebug244, !11, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!11 = !{!"../fs/ufs/cylinder.c", i32 95, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ufs_put_cylinder.__UNIQUE_ID_ddebug245, !11, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ufs/cylinder.c", i32 102, i32 38}
!17 = !{ptr @ufs_put_cylinder.__UNIQUE_ID_ddebug246, !18, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!18 = !{!"../fs/ufs/cylinder.c", i32 118, i32 2}
!19 = !{ptr @ufs_put_cylinder.__UNIQUE_ID_ddebug247, !18, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ufs/cylinder.c", i32 135, i32 2}
!22 = !{ptr @ufs_load_cylinder.__UNIQUE_ID_ddebug248, !21, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!23 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ufs_load_cylinder.__UNIQUE_ID_ddebug249, !21, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!25 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ufs/cylinder.c", i32 139, i32 39}
!28 = !{ptr @ufs_load_cylinder.__UNIQUE_ID_ddebug250, !29, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!29 = !{!"../fs/ufs/cylinder.c", i32 146, i32 3}
!30 = !{ptr @ufs_load_cylinder.__UNIQUE_ID_ddebug251, !29, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ufs/cylinder.c", i32 155, i32 41}
!33 = !{ptr @ufs_load_cylinder.__UNIQUE_ID_ddebug252, !34, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!34 = !{!"../fs/ufs/cylinder.c", i32 156, i32 5}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ufs_load_cylinder.__UNIQUE_ID_ddebug253, !34, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!37 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ufs_load_cylinder.__UNIQUE_ID_ddebug254, !39, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!39 = !{!"../fs/ufs/cylinder.c", i32 160, i32 5}
!40 = !{ptr @ufs_load_cylinder.__UNIQUE_ID_ddebug255, !39, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!41 = !{ptr @ufs_load_cylinder.__UNIQUE_ID_ddebug256, !42, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!42 = !{!"../fs/ufs/cylinder.c", i32 165, i32 4}
!43 = !{ptr @ufs_load_cylinder.__UNIQUE_ID_ddebug257, !42, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!44 = !{ptr @ufs_load_cylinder.__UNIQUE_ID_ddebug258, !45, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!45 = !{!"../fs/ufs/cylinder.c", i32 200, i32 2}
!46 = !{ptr @ufs_load_cylinder.__UNIQUE_ID_ddebug259, !45, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ufs/cylinder.c", i32 38, i32 2}
!49 = !{ptr @ufs_read_cylinder.__UNIQUE_ID_ddebug238, !48, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!50 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ufs_read_cylinder.__UNIQUE_ID_ddebug239, !48, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!52 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ufs_read_cylinder.__UNIQUE_ID_ddebug240, !54, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!54 = !{!"../fs/ufs/cylinder.c", i32 69, i32 2}
!55 = !{ptr @ufs_read_cylinder.__UNIQUE_ID_ddebug241, !54, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ufs/cylinder.c", i32 76, i32 38}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 2148480786, i64 2148480791, i64 2148480804, i64 2148480848, i64 2148480882, i64 2148480903}
