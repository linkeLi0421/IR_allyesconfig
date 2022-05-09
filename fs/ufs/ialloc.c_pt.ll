; ModuleID = '/llk/IR_all_yes/fs/ufs/ialloc.c_pt.bc'
source_filename = "../fs/ufs/ialloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.user_namespace = type opaque
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
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
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.67 = type { ptr }
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
%struct.ufs_sb_info = type { ptr, ptr, i32, i32, ptr, [8 x ptr], [8 x i32], i16, i32, ptr, i32, %struct.delayed_work, %struct.spinlock, %struct.mutex }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ufs_sb_private_info = type { %struct.ufs_buffer_head, %struct.ufs_csum_core, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.ufs_buffer_head = type { i64, i64, [8 x ptr] }
%struct.ufs_csum_core = type { i64, i64, i64, i64, i64 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ufs_cylinder_group = type { i32, i32, i32, i32, i16, i16, i32, %struct.ufs_csum, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, %union.anon.70, [1 x i8] }
%struct.ufs_csum = type { i32, i32, i32, i32 }
%union.anon.70 = type { %struct.anon.72 }
%struct.anon.72 = type { i32, i32, i32, i32, i32, [3 x i32], i64, [3 x i64] }
%struct.ufs_cg_private_info = type { %struct.ufs_buffer_head, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ufs2_inode = type { i16, i16, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i64], %union.anon.76, [3 x i64] }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { [12 x i64], [3 x i64] }

@ufs_free_inode.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 16, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ufs\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ufs_free_inode\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ufs/ialloc.c\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"UFSD (%s, %d): %s:\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ufs: UFSD (%s, %d): %s:\00", [40 x i8] zeroinitializer }, align 32
@ufs_free_inode.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 16, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ENTER, ino %lu\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ufs: ENTER, ino %lu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"reserved inode or nonexistent inode %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ufs_free_fragments\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"internal error, bad cg magic number\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bit already cleared for inode %u\00", [63 x i8] zeroinitializer }, align 32
@ufs_free_inode.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 30, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_free_inode.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 0, i8 30, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EXIT\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ufs: EXIT\0A\00", [21 x i8] zeroinitializer }, align 32
@ufs_new_inode.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.3, i8 0, i8 46, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ufs_new_inode\00", [18 x i8] zeroinitializer }, align 32
@ufs_new_inode.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 46, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ENTER\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ufs: ENTER\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"cylinder group %u corrupted - error in inode bitmap\0A\00", [43 x i8] zeroinitializer }, align 32
@ufs_new_inode.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.3, i8 0, i8 64, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_new_inode.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.17, i8 0, i8 64, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"start = %u, bit = %u, ipg = %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ufs: start = %u, bit = %u, ipg = %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"internal error\00", [17 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ufs_read_inode\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to read inode %lu\0A\00", [38 x i8] zeroinitializer }, align 32
@ufs_new_inode.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.3, i8 0, i8 84, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_new_inode.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.22, i8 0, i8 84, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"allocating inode %lu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ufs: allocating inode %lu\0A\00", [37 x i8] zeroinitializer }, align 32
@ufs_new_inode.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.3, i8 0, i8 85, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_new_inode.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.11, i8 0, i8 85, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_new_inode.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.3, i8 0, i8 86, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_new_inode.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.24, i8 0, i8 86, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EXIT (FAILED): err %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ufs: EXIT (FAILED): err %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ufs_new_inode.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.3, i8 0, i8 88, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs_new_inode.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.24, i8 0, i8 88, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs2_init_inodes_chunk.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.3, i8 0, i8 35, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufs2_init_inodes_chunk\00", [41 x i8] zeroinitializer }, align 32
@ufs2_init_inodes_chunk.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 35, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ENTER cgno %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ufs: ENTER cgno %d\0A\00", [44 x i8] zeroinitializer }, align 32
@ufs2_init_inodes_chunk.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.3, i8 0, i8 39, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ufs2_init_inodes_chunk.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.11, i8 0, i8 39, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 66, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 76, i32 37 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 90, i32 18 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 90, i32 40 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 97, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 120, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 185, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 254, i32 8 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 259, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 263, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 319, i32 20 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 320, i32 9 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 339, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 347, i32 2 }
@___asan_gen_.115 = private constant [19 x i8] c"../fs/ufs/ialloc.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 140, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 366, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufs_free_inode(ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_free_inode.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_free_inode, %do.body4)) #6
          to label %if.then [label %do.body4], !srcloc !78

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_free_inode.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 66, ptr noundef nonnull @.str.1) #6
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_free_inode.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_free_inode, %do.end21)) #6
          to label %if.then18 [label %do.end21], !srcloc !78

if.then18:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_free_inode.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.6, i32 noundef %1) #6
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
  %i_ino23 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino23, align 8
  %s_lock = getelementptr inbounds %struct.ufs_sb_info, ptr %5, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp ugt i32 %9, 1
  br i1 %cmp, label %land.lhs.true, label %do.end21.if.then26_crit_edge

do.end21.if.then26_crit_edge:                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

land.lhs.true:                                    ; preds = %do.end21
  %s_ncg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 10
  %10 = ptrtoint ptr %s_ncg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_ncg, align 8
  %s_ipg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 36
  %12 = ptrtoint ptr %s_ipg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_ipg, align 4
  %mul = mul i32 %13, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %mul)
  %cmp25 = icmp ult i32 %9, %mul
  br i1 %cmp25, label %if.end29, label %land.lhs.true.if.then26_crit_edge

land.lhs.true.if.then26_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

if.then26:                                        ; preds = %land.lhs.true.if.then26_crit_edge, %do.end21.if.then26_crit_edge
  tail call void (ptr, ptr, ptr, ...) @ufs_warning(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7, i32 noundef %9) #6
  %14 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock28 = getelementptr inbounds %struct.ufs_sb_info, ptr %15, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %s_lock28) #6
  br label %cleanup

if.end29:                                         ; preds = %land.lhs.true
  %.frozen = freeze i32 %9
  %.frozen253 = freeze i32 %13
  %div = udiv i32 %.frozen, %.frozen253
  %16 = mul i32 %div, %.frozen253
  %rem.decomposed = sub i32 %.frozen, %16
  %call32 = tail call ptr @ufs_load_cylinder(ptr noundef %3, i32 noundef %div) #6
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock36 = getelementptr inbounds %struct.ufs_sb_info, ptr %18, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %s_lock36) #6
  br label %cleanup

if.end37:                                         ; preds = %if.end29
  %bh = getelementptr inbounds %struct.ufs_buffer_head, ptr %call32, i32 0, i32 2
  %19 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bh, align 8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_data, align 4
  %cg_magic = getelementptr inbounds %struct.ufs_cylinder_group, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %cg_magic to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cg_magic, align 4
  %25 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i = icmp eq i32 %28, 0
  %29 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  %retval.0.i225 = select i1 %cmp.i, i32 %29, i32 %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 590421, i32 %retval.0.i225)
  %cmp40 = icmp eq i32 %retval.0.i225, 590421
  br i1 %cmp40, label %if.end37.if.end42_crit_edge, label %if.then41

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ufs_panic(ptr noundef %3, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #6
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end37.if.end42_crit_edge
  %call.i = tail call i64 @ktime_get_real_seconds() #6
  %conv.i = trunc i64 %call.i to i32
  %30 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i.i = getelementptr inbounds %struct.ufs_sb_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %s_bytesex.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_bytesex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.i = icmp eq i32 %33, 0
  %34 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #6
  %retval.0.i.i = select i1 %cmp.i.i, i32 %34, i32 %conv.i
  %cg_time = getelementptr inbounds %struct.ufs_cylinder_group, ptr %22, i32 0, i32 2
  %35 = ptrtoint ptr %cg_time to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i.i, ptr %cg_time, align 8
  %36 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %inode, align 8
  %38 = and i16 %37, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %38)
  %cmp44 = icmp eq i16 %38, 16384
  %c_iusedoff = getelementptr inbounds %struct.ufs_cg_private_info, ptr %call32, i32 0, i32 10
  %39 = ptrtoint ptr %c_iusedoff to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %c_iusedoff, align 8
  %shr = lshr i32 %rem.decomposed, 3
  %add = add i32 %40, %shr
  %s_fshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 18
  %41 = ptrtoint ptr %s_fshift to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_fshift, align 8
  %shr48 = lshr i32 %add, %42
  %arrayidx49 = getelementptr %struct.ufs_buffer_head, ptr %call32, i32 0, i32 2, i32 %shr48
  %43 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx49, align 4
  %b_data50 = getelementptr inbounds %struct.buffer_head, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %b_data50 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %b_data50, align 4
  %s_fmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 16
  %47 = ptrtoint ptr %s_fmask to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_fmask, align 8
  %neg = xor i32 %48, -1
  %and54 = and i32 %add, %neg
  %add.ptr = getelementptr i8, ptr %46, i32 %and54
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %add.ptr, align 1
  %conv55 = zext i8 %50 to i32
  %and56 = and i32 %rem.decomposed, 7
  %shl = shl nuw nsw i32 1, %and56
  %and57 = and i32 %shl, %conv55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.then59, label %if.else

if.then59:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ufs_error(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, i32 noundef %9) #6
  br label %if.end101

if.else:                                          ; preds = %if.end42
  %51 = trunc i32 %shl to i8
  %52 = xor i8 %51, -1
  %conv81 = and i8 %50, %52
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv81, ptr %add.ptr, align 1
  %c_irotor = getelementptr inbounds %struct.ufs_cg_private_info, ptr %call32, i32 0, i32 7
  %54 = ptrtoint ptr %c_irotor to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %c_irotor, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %55)
  %cmp82 = icmp ult i32 %9, %55
  br i1 %cmp82, label %if.then84, label %if.else.if.end86_crit_edge

if.else.if.end86_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.then84:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %c_irotor to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %9, ptr %c_irotor, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.else.if.end86_crit_edge
  %cs_nifree = getelementptr inbounds %struct.ufs_cylinder_group, ptr %22, i32 0, i32 7, i32 2
  %57 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i227 = getelementptr inbounds %struct.ufs_sb_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %s_bytesex.i227 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %s_bytesex.i227, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i228 = icmp eq i32 %60, 0
  %61 = ptrtoint ptr %cs_nifree to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cs_nifree, align 4
  %add.i3.i = add i32 %62, 1
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #6
  %add.i.i = add i32 %63, 1
  %64 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #6
  %storemerge.i = select i1 %cmp.i228, i32 %64, i32 %add.i3.i
  %65 = ptrtoint ptr %cs_nifree to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %storemerge.i, ptr %cs_nifree, align 4
  %cs_nifree87 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 1, i32 2
  %66 = ptrtoint ptr %cs_nifree87 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %cs_nifree87, align 8
  %inc = add i64 %67, 1
  store i64 %inc, ptr %cs_nifree87, align 8
  %68 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %s_fs_info.i, align 16
  %s_csp = getelementptr inbounds %struct.ufs_sb_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %s_csp to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s_csp, align 4
  %cs_nifree90 = getelementptr %struct.ufs_csum, ptr %71, i32 %div, i32 2
  %s_bytesex.i231 = getelementptr inbounds %struct.ufs_sb_info, ptr %69, i32 0, i32 2
  %72 = ptrtoint ptr %s_bytesex.i231 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %s_bytesex.i231, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp.i232 = icmp eq i32 %73, 0
  %74 = ptrtoint ptr %cs_nifree90 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cs_nifree90, align 4
  %add.i3.i233 = add i32 %75, 1
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #6
  %add.i.i234 = add i32 %76, 1
  %77 = tail call i32 @llvm.bswap.i32(i32 %add.i.i234) #6
  %storemerge.i235 = select i1 %cmp.i232, i32 %77, i32 %add.i3.i233
  %78 = ptrtoint ptr %cs_nifree90 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %storemerge.i235, ptr %cs_nifree90, align 4
  br i1 %cmp44, label %if.then92, label %if.end86.if.end101_crit_edge

if.end86.if.end101_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

if.then92:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  %cs_total = getelementptr inbounds %struct.ufs_sb_private_info, ptr %7, i32 0, i32 1
  %cg_cs = getelementptr inbounds %struct.ufs_cylinder_group, ptr %22, i32 0, i32 7
  %79 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i237 = getelementptr inbounds %struct.ufs_sb_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %s_bytesex.i237 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %s_bytesex.i237, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp.i238 = icmp eq i32 %82, 0
  %83 = ptrtoint ptr %cg_cs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cg_cs, align 4
  %add.i1.i = add i32 %84, -1
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #6
  %add.i.i239 = add i32 %85, -1
  %86 = tail call i32 @llvm.bswap.i32(i32 %add.i.i239) #6
  %storemerge.i240 = select i1 %cmp.i238, i32 %86, i32 %add.i1.i
  %87 = ptrtoint ptr %cg_cs to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %storemerge.i240, ptr %cg_cs, align 4
  %88 = ptrtoint ptr %cs_total to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %cs_total, align 8
  %dec = add i64 %89, -1
  store i64 %dec, ptr %cs_total, align 8
  %90 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %s_fs_info.i, align 16
  %s_csp97 = getelementptr inbounds %struct.ufs_sb_info, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %s_csp97 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %s_csp97, align 4
  %arrayidx98 = getelementptr %struct.ufs_csum, ptr %93, i32 %div
  %s_bytesex.i243 = getelementptr inbounds %struct.ufs_sb_info, ptr %91, i32 0, i32 2
  %94 = ptrtoint ptr %s_bytesex.i243 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %s_bytesex.i243, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp.i244 = icmp eq i32 %95, 0
  %96 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx98, align 4
  %add.i1.i245 = add i32 %97, -1
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #6
  %add.i.i246 = add i32 %98, -1
  %99 = tail call i32 @llvm.bswap.i32(i32 %add.i.i246) #6
  %storemerge.i247 = select i1 %cmp.i244, i32 %99, i32 %add.i1.i245
  %100 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %storemerge.i247, ptr %arrayidx98, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then92, %if.end86.if.end101_crit_edge, %if.then59
  tail call void @ubh_mark_buffer_dirty(ptr noundef %7) #6
  tail call void @ubh_mark_buffer_dirty(ptr noundef nonnull %call32) #6
  %s_flags = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 10
  %101 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %s_flags, align 4
  %and104 = and i32 %102, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end101.if.end108_crit_edge, label %if.then106

if.end101.if.end108_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108

if.then106:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ubh_sync_block(ptr noundef nonnull %call32) #6
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.end101.if.end108_crit_edge
  tail call void @ufs_mark_sb_dirty(ptr noundef %3) #6
  %103 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock110 = getelementptr inbounds %struct.ufs_sb_info, ptr %104, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %s_lock110) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_free_inode.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_free_inode, %do.body129)) #6
          to label %if.then125 [label %do.body129], !srcloc !78

if.then125:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_free_inode.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 120, ptr noundef nonnull @.str.1) #6
  br label %do.body129

do.body129:                                       ; preds = %if.then125, %if.end108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_free_inode.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_free_inode, %cleanup)) #6
          to label %if.then143 [label %cleanup], !srcloc !78

if.then143:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_free_inode.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.12) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then143, %do.body129, %if.then34, %if.then26
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufs_warning(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ufs_load_cylinder(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufs_panic(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubh_mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubh_sync_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufs_mark_sb_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ufs_new_inode(ptr noundef %dir, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %ts = alloca %struct.timespec64, align 8
  %tmp207 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #6
  %0 = call ptr @memset(ptr %ts, i32 255, i32 16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_inode.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_inode, %do.body4)) #6
          to label %if.then [label %do.body4], !srcloc !78

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_inode.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 185, ptr noundef nonnull @.str.13) #6
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_inode.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_inode, %do.end21)) #6
          to label %if.then18 [label %do.end21], !srcloc !78

if.then18:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_inode.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.15) #6
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %do.body4
  %tobool22.not = icmp eq ptr %dir, null
  br i1 %tobool22.not, label %do.end21.cleanup418_crit_edge, label %lor.lhs.false

do.end21.cleanup418_crit_edge:                    ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup418

lor.lhs.false:                                    ; preds = %do.end21
  %1 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool23.not = icmp eq i32 %3, 0
  br i1 %tobool23.not, label %lor.lhs.false.cleanup418_crit_edge, label %if.end26

lor.lhs.false.cleanup418_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup418

if.end26:                                         ; preds = %lor.lhs.false
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %call27 = tail call ptr @new_inode(ptr noundef %5) #6
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end26.cleanup418_crit_edge, label %if.end31

if.end26.cleanup418_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup418

if.end31:                                         ; preds = %if.end26
  %add.ptr.i = getelementptr i8, ptr %call27, i32 -328
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %s_lock = getelementptr inbounds %struct.ufs_sb_info, ptr %7, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #6
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %10 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_ino, align 8
  %s_ipg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %9, i32 0, i32 36
  %12 = ptrtoint ptr %s_ipg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_ipg, align 4
  %div = udiv i32 %11, %13
  %s_csp = getelementptr inbounds %struct.ufs_sb_info, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %s_csp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_csp, align 4
  %cs_nifree = getelementptr %struct.ufs_csum, ptr %15, i32 %div, i32 2
  %16 = ptrtoint ptr %cs_nifree to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cs_nifree, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool34.not = icmp eq i32 %17, 0
  br i1 %tobool34.not, label %for.cond.preheader, label %if.end31.cg_found_crit_edge

if.end31.cg_found_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cg_found

for.cond.preheader:                               ; preds = %if.end31
  %s_ncg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %9, i32 0, i32 10
  %18 = ptrtoint ptr %s_ncg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_ncg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp717 = icmp ugt i32 %19, 1
  br i1 %cmp717, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.failed_crit_edge

for.cond.preheader.failed_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %for.body
  %shl = shl i32 %j.0718, 1
  %cmp = icmp ult i32 %shl, %19
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0719 = phi i32 [ %spec.select, %for.cond.for.body_crit_edge ], [ %div, %for.cond.preheader.for.body_crit_edge ]
  %j.0718 = phi i32 [ %shl, %for.cond.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %add = add i32 %i.0719, %j.0718
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %19)
  %cmp38.not = icmp ult i32 %add, %19
  %sub = select i1 %cmp38.not, i32 0, i32 %19
  %spec.select = sub i32 %add, %sub
  %cs_nifree44 = getelementptr %struct.ufs_csum, ptr %15, i32 %spec.select, i32 2
  %20 = ptrtoint ptr %cs_nifree44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cs_nifree44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool45.not = icmp eq i32 %21, 0
  br i1 %tobool45.not, label %for.cond, label %for.body.cg_found_crit_edge

for.body.cg_found_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cg_found

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp54720 = icmp ugt i32 %19, 2
  br i1 %cmp54720, label %for.body55.preheader, label %for.end.failed_crit_edge

for.end.failed_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed

for.body55.preheader:                             ; preds = %for.end
  %add51 = add i32 %div, 1
  br label %for.body55

for.cond52:                                       ; preds = %for.body55
  %inc67 = add nuw i32 %j.1721, 1
  %exitcond.not = icmp eq i32 %inc67, %19
  br i1 %exitcond.not, label %for.cond52.failed_crit_edge, label %for.cond52.for.body55_crit_edge

for.cond52.for.body55_crit_edge:                  ; preds = %for.cond52
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body55

for.cond52.failed_crit_edge:                      ; preds = %for.cond52
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed

for.body55:                                       ; preds = %for.cond52.for.body55_crit_edge, %for.body55.preheader
  %i.2722 = phi i32 [ %spec.store.select, %for.cond52.for.body55_crit_edge ], [ %add51, %for.body55.preheader ]
  %j.1721 = phi i32 [ %inc67, %for.cond52.for.body55_crit_edge ], [ 2, %for.body55.preheader ]
  %inc = add i32 %i.2722, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %19)
  %cmp57.not = icmp ult i32 %inc, %19
  %spec.store.select = select i1 %cmp57.not, i32 %inc, i32 0
  %cs_nifree62 = getelementptr %struct.ufs_csum, ptr %15, i32 %spec.store.select, i32 2
  %22 = ptrtoint ptr %cs_nifree62 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cs_nifree62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool63.not = icmp eq i32 %23, 0
  br i1 %tobool63.not, label %for.cond52, label %for.body55.cg_found_crit_edge

for.body55.cg_found_crit_edge:                    ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cg_found

cg_found:                                         ; preds = %for.body55.cg_found_crit_edge, %for.body.cg_found_crit_edge, %if.end31.cg_found_crit_edge
  %cg.0 = phi i32 [ %div, %if.end31.cg_found_crit_edge ], [ %spec.store.select, %for.body55.cg_found_crit_edge ], [ %spec.select, %for.body.cg_found_crit_edge ]
  %call69 = tail call ptr @ufs_load_cylinder(ptr noundef %5, i32 noundef %cg.0) #6
  %tobool70.not = icmp eq ptr %call69, null
  br i1 %tobool70.not, label %cg_found.failed_crit_edge, label %if.end72

cg_found.failed_crit_edge:                        ; preds = %cg_found
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed

if.end72:                                         ; preds = %cg_found
  %bh = getelementptr inbounds %struct.ufs_buffer_head, ptr %call69, i32 0, i32 2
  %24 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bh, align 8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_data, align 4
  %cg_magic = getelementptr inbounds %struct.ufs_cylinder_group, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %cg_magic to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cg_magic, align 4
  %30 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i = icmp eq i32 %33, 0
  %34 = tail call i32 @llvm.bswap.i32(i32 %29) #6
  %retval.0.i629 = select i1 %cmp.i, i32 %34, i32 %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 590421, i32 %retval.0.i629)
  %cmp76 = icmp eq i32 %retval.0.i629, 590421
  br i1 %cmp76, label %if.end72.if.end78_crit_edge, label %if.then77

if.end72.if.end78_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.then77:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ufs_panic(ptr noundef %5, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.9) #6
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end72.if.end78_crit_edge
  %c_irotor = getelementptr inbounds %struct.ufs_cg_private_info, ptr %call69, i32 0, i32 7
  %35 = ptrtoint ptr %c_irotor to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %c_irotor, align 4
  %c_iusedoff = getelementptr inbounds %struct.ufs_cg_private_info, ptr %call69, i32 0, i32 10
  %37 = ptrtoint ptr %c_iusedoff to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %c_iusedoff, align 8
  %39 = ptrtoint ptr %s_ipg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_ipg, align 4
  %sub.i = sub i32 %40, %36
  %shl.i = shl i32 %38, 3
  %add.i = add i32 %shl.i, %36
  %s_bpfshift.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %9, i32 0, i32 59
  %41 = ptrtoint ptr %s_bpfshift.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_bpfshift.i, align 4
  %shr.i = lshr i32 %add.i, %42
  %s_bpfmask.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %9, i32 0, i32 60
  %43 = ptrtoint ptr %s_bpfmask.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %s_bpfmask.i, align 8
  %and.i = and i32 %44, %add.i
  %s_bpf.i = getelementptr inbounds %struct.ufs_sb_private_info, ptr %9, i32 0, i32 58
  %add1.peel.i = add i32 %and.i, %sub.i
  %45 = ptrtoint ptr %s_bpf.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %s_bpf.i, align 8
  %47 = tail call i32 @llvm.umin.i32(i32 %add1.peel.i, i32 %46) #6
  %sub2.neg.peel.i = sub i32 %and.i, %47
  %sub3.peel.i = add i32 %sub2.neg.peel.i, %sub.i
  %arrayidx.peel.i = getelementptr %struct.ufs_buffer_head, ptr %call69, i32 0, i32 2, i32 %shr.i
  %48 = ptrtoint ptr %arrayidx.peel.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.peel.i, align 4
  %b_data.peel.i = getelementptr inbounds %struct.buffer_head, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %b_data.peel.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %b_data.peel.i, align 4
  %call.i.peel.i = tail call i32 @_find_next_zero_bit_le(ptr noundef %51, i32 noundef %47, i32 noundef %and.i) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.peel.i, i32 %47)
  %cmp4.peel.i = icmp ult i32 %call.i.peel.i, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3.peel.i)
  %tobool.not.peel.i = icmp eq i32 %sub3.peel.i, 0
  %or.cond.peel.i = or i1 %cmp4.peel.i, %tobool.not.peel.i
  br i1 %or.cond.peel.i, label %if.end78._ubh_find_next_zero_bit_.exit_crit_edge, label %if.end78.for.cond.i_crit_edge

if.end78.for.cond.i_crit_edge:                    ; preds = %if.end78
  br label %for.cond.i

if.end78._ubh_find_next_zero_bit_.exit_crit_edge: ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %_ubh_find_next_zero_bit_.exit

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.end78.for.cond.i_crit_edge
  %size.addr.0.i = phi i32 [ %sub3.i, %for.cond.i.for.cond.i_crit_edge ], [ %sub3.peel.i, %if.end78.for.cond.i_crit_edge ]
  %base.0.in.i = phi i32 [ %base.0.i, %for.cond.i.for.cond.i_crit_edge ], [ %shr.i, %if.end78.for.cond.i_crit_edge ]
  %base.0.i = add i32 %base.0.in.i, 1
  %52 = ptrtoint ptr %s_bpf.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %s_bpf.i, align 8
  %54 = tail call i32 @llvm.umin.i32(i32 %size.addr.0.i, i32 %53) #6
  %sub3.i = sub i32 %size.addr.0.i, %54
  %arrayidx.i = getelementptr %struct.ufs_buffer_head, ptr %call69, i32 0, i32 2, i32 %base.0.i
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %b_data.i, align 4
  %call.i.i = tail call i32 @_find_next_zero_bit_le(ptr noundef %58, i32 noundef %54, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %54)
  %cmp4.i = icmp ult i32 %call.i.i, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3.i)
  %tobool.not.i = icmp eq i32 %sub3.i, 0
  %or.cond.i = select i1 %cmp4.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %for.cond.i._ubh_find_next_zero_bit_.exit_crit_edge, label %for.cond.i.for.cond.i_crit_edge, !llvm.loop !79

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

for.cond.i._ubh_find_next_zero_bit_.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_ubh_find_next_zero_bit_.exit

_ubh_find_next_zero_bit_.exit:                    ; preds = %for.cond.i._ubh_find_next_zero_bit_.exit_crit_edge, %if.end78._ubh_find_next_zero_bit_.exit_crit_edge
  %base.0.lcssa.i = phi i32 [ %shr.i, %if.end78._ubh_find_next_zero_bit_.exit_crit_edge ], [ %base.0.i, %for.cond.i._ubh_find_next_zero_bit_.exit_crit_edge ]
  %call.i.lcssa.i = phi i32 [ %call.i.peel.i, %if.end78._ubh_find_next_zero_bit_.exit_crit_edge ], [ %call.i.i, %for.cond.i._ubh_find_next_zero_bit_.exit_crit_edge ]
  %59 = ptrtoint ptr %s_bpfshift.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %s_bpfshift.i, align 4
  %shl6.i = shl i32 %base.0.lcssa.i, %60
  %add7.i = sub i32 %call.i.lcssa.i, %shl.i
  %sub8.i = add i32 %shl6.i, %add7.i
  %61 = ptrtoint ptr %s_ipg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %s_ipg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub8.i, i32 %62)
  %cmp83 = icmp ult i32 %sub8.i, %62
  br i1 %cmp83, label %_ubh_find_next_zero_bit_.exit.do.body92_crit_edge, label %if.then84

_ubh_find_next_zero_bit_.exit.do.body92_crit_edge: ; preds = %_ubh_find_next_zero_bit_.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body92

if.then84:                                        ; preds = %_ubh_find_next_zero_bit_.exit
  %63 = ptrtoint ptr %c_iusedoff to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %c_iusedoff, align 8
  %shl.i630 = shl i32 %64, 3
  %shr.i632 = lshr i32 %shl.i630, %60
  %65 = ptrtoint ptr %s_bpfmask.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %s_bpfmask.i, align 8
  %and.i634 = and i32 %66, %shl.i630
  %add1.peel.i636 = add i32 %and.i634, %36
  %67 = ptrtoint ptr %s_bpf.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %s_bpf.i, align 8
  %69 = tail call i32 @llvm.umin.i32(i32 %add1.peel.i636, i32 %68) #6
  %sub2.neg.peel.i637 = sub i32 %and.i634, %69
  %sub3.peel.i638 = add i32 %sub2.neg.peel.i637, %36
  %arrayidx.peel.i639 = getelementptr %struct.ufs_buffer_head, ptr %call69, i32 0, i32 2, i32 %shr.i632
  %70 = ptrtoint ptr %arrayidx.peel.i639 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.peel.i639, align 4
  %b_data.peel.i640 = getelementptr inbounds %struct.buffer_head, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %b_data.peel.i640 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %b_data.peel.i640, align 4
  %call.i.peel.i641 = tail call i32 @_find_next_zero_bit_le(ptr noundef %73, i32 noundef %69, i32 noundef %and.i634) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.peel.i641, i32 %69)
  %cmp4.peel.i642 = icmp ult i32 %call.i.peel.i641, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3.peel.i638)
  %tobool.not.peel.i643 = icmp eq i32 %sub3.peel.i638, 0
  %or.cond.peel.i644 = or i1 %cmp4.peel.i642, %tobool.not.peel.i643
  br i1 %or.cond.peel.i644, label %if.then84._ubh_find_next_zero_bit_.exit661_crit_edge, label %if.then84.for.cond.i655_crit_edge

if.then84.for.cond.i655_crit_edge:                ; preds = %if.then84
  br label %for.cond.i655

if.then84._ubh_find_next_zero_bit_.exit661_crit_edge: ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  br label %_ubh_find_next_zero_bit_.exit661

for.cond.i655:                                    ; preds = %for.cond.i655.for.cond.i655_crit_edge, %if.then84.for.cond.i655_crit_edge
  %size.addr.0.i645 = phi i32 [ %sub3.i648, %for.cond.i655.for.cond.i655_crit_edge ], [ %sub3.peel.i638, %if.then84.for.cond.i655_crit_edge ]
  %base.0.in.i646 = phi i32 [ %base.0.i647, %for.cond.i655.for.cond.i655_crit_edge ], [ %shr.i632, %if.then84.for.cond.i655_crit_edge ]
  %base.0.i647 = add i32 %base.0.in.i646, 1
  %74 = ptrtoint ptr %s_bpf.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %s_bpf.i, align 8
  %76 = tail call i32 @llvm.umin.i32(i32 %size.addr.0.i645, i32 %75) #6
  %sub3.i648 = sub i32 %size.addr.0.i645, %76
  %arrayidx.i649 = getelementptr %struct.ufs_buffer_head, ptr %call69, i32 0, i32 2, i32 %base.0.i647
  %77 = ptrtoint ptr %arrayidx.i649 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i649, align 4
  %b_data.i650 = getelementptr inbounds %struct.buffer_head, ptr %78, i32 0, i32 5
  %79 = ptrtoint ptr %b_data.i650 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %b_data.i650, align 4
  %call.i.i651 = tail call i32 @_find_next_zero_bit_le(ptr noundef %80, i32 noundef %76, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i651, i32 %76)
  %cmp4.i652 = icmp ult i32 %call.i.i651, %76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3.i648)
  %tobool.not.i653 = icmp eq i32 %sub3.i648, 0
  %or.cond.i654 = select i1 %cmp4.i652, i1 true, i1 %tobool.not.i653
  br i1 %or.cond.i654, label %for.cond.i655._ubh_find_next_zero_bit_.exit661_crit_edge, label %for.cond.i655.for.cond.i655_crit_edge, !llvm.loop !79

for.cond.i655.for.cond.i655_crit_edge:            ; preds = %for.cond.i655
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i655

for.cond.i655._ubh_find_next_zero_bit_.exit661_crit_edge: ; preds = %for.cond.i655
  call void @__sanitizer_cov_trace_pc() #8
  br label %_ubh_find_next_zero_bit_.exit661

_ubh_find_next_zero_bit_.exit661:                 ; preds = %for.cond.i655._ubh_find_next_zero_bit_.exit661_crit_edge, %if.then84._ubh_find_next_zero_bit_.exit661_crit_edge
  %base.0.lcssa.i656 = phi i32 [ %shr.i632, %if.then84._ubh_find_next_zero_bit_.exit661_crit_edge ], [ %base.0.i647, %for.cond.i655._ubh_find_next_zero_bit_.exit661_crit_edge ]
  %call.i.lcssa.i657 = phi i32 [ %call.i.peel.i641, %if.then84._ubh_find_next_zero_bit_.exit661_crit_edge ], [ %call.i.i651, %for.cond.i655._ubh_find_next_zero_bit_.exit661_crit_edge ]
  %81 = ptrtoint ptr %s_bpfshift.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %s_bpfshift.i, align 4
  %shl6.i658 = shl i32 %base.0.lcssa.i656, %82
  %add7.i659 = sub i32 %call.i.lcssa.i657, %shl.i630
  %sub8.i660 = add i32 %shl6.i658, %add7.i659
  call void @__sanitizer_cov_trace_cmp4(i32 %sub8.i660, i32 %36)
  %cmp88 = icmp ult i32 %sub8.i660, %36
  br i1 %cmp88, label %_ubh_find_next_zero_bit_.exit661.do.body92_crit_edge, label %if.then89

_ubh_find_next_zero_bit_.exit661.do.body92_crit_edge: ; preds = %_ubh_find_next_zero_bit_.exit661
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body92

if.then89:                                        ; preds = %_ubh_find_next_zero_bit_.exit661
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ufs_error(ptr noundef %5, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.16, i32 noundef %cg.0) #6
  br label %failed

do.body92:                                        ; preds = %_ubh_find_next_zero_bit_.exit661.do.body92_crit_edge, %_ubh_find_next_zero_bit_.exit.do.body92_crit_edge
  %bit.0 = phi i32 [ %sub8.i, %_ubh_find_next_zero_bit_.exit.do.body92_crit_edge ], [ %sub8.i660, %_ubh_find_next_zero_bit_.exit661.do.body92_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_inode.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_inode, %do.body110)) #6
          to label %if.then106 [label %do.body110], !srcloc !78

if.then106:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_inode.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 259, ptr noundef nonnull @.str.13) #6
  br label %do.body110

do.body110:                                       ; preds = %if.then106, %do.body92
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_inode.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_inode, %do.end128)) #6
          to label %if.then124 [label %do.end128], !srcloc !78

if.then124:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %s_ipg to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %s_ipg, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_inode.__UNIQUE_ID_ddebug249, ptr noundef nonnull @.str.18, i32 noundef %36, i32 noundef %bit.0, i32 noundef %84) #6
  br label %do.end128

do.end128:                                        ; preds = %if.then124, %do.body110
  %85 = ptrtoint ptr %c_iusedoff to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %c_iusedoff, align 8
  %shr = lshr i32 %bit.0, 3
  %add132 = add i32 %86, %shr
  %s_fshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %9, i32 0, i32 18
  %87 = ptrtoint ptr %s_fshift to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %s_fshift, align 8
  %shr133 = lshr i32 %add132, %88
  %arrayidx134 = getelementptr %struct.ufs_buffer_head, ptr %call69, i32 0, i32 2, i32 %shr133
  %89 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx134, align 4
  %b_data135 = getelementptr inbounds %struct.buffer_head, ptr %90, i32 0, i32 5
  %91 = ptrtoint ptr %b_data135 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %b_data135, align 4
  %s_fmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %9, i32 0, i32 16
  %93 = ptrtoint ptr %s_fmask to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %s_fmask, align 8
  %neg = xor i32 %94, -1
  %and = and i32 %add132, %neg
  %add.ptr = getelementptr i8, ptr %92, i32 %and
  %95 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %add.ptr, align 1
  %conv = zext i8 %96 to i32
  %and139 = and i32 %bit.0, 7
  %shl140 = shl nuw nsw i32 1, %and139
  %and141 = and i32 %shl140, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %if.then143, label %if.else

if.then143:                                       ; preds = %do.end128
  %97 = trunc i32 %shl140 to i8
  %conv163 = or i8 %96, %97
  %98 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv163, ptr %add.ptr, align 1
  %fs_magic = getelementptr inbounds %struct.ufs_sb_private_info, ptr %9, i32 0, i32 62
  %99 = ptrtoint ptr %fs_magic to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %fs_magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %100)
  %cmp165 = icmp eq i32 %100, 424935705
  br i1 %cmp165, label %if.then167, label %if.then143.if.end178_crit_edge

if.then143.if.end178_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end178

if.else:                                          ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ufs_panic(ptr noundef %5, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.19) #6
  br label %failed

if.then167:                                       ; preds = %if.then143
  %cg_initediblk = getelementptr inbounds %struct.ufs_cylinder_group, ptr %27, i32 0, i32 17, i32 0, i32 4
  %101 = ptrtoint ptr %cg_initediblk to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %cg_initediblk, align 8
  %103 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i663 = getelementptr inbounds %struct.ufs_sb_info, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %s_bytesex.i663 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %s_bytesex.i663, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp.i664 = icmp eq i32 %106, 0
  %107 = tail call i32 @llvm.bswap.i32(i32 %102) #6
  %retval.0.i665 = select i1 %cmp.i664, i32 %107, i32 %102
  %s_inopb = getelementptr inbounds %struct.ufs_sb_private_info, ptr %9, i32 0, i32 25
  %108 = ptrtoint ptr %s_inopb to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %s_inopb, align 4
  %add169 = add i32 %109, %bit.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add169, i32 %retval.0.i665)
  %cmp170 = icmp ugt i32 %add169, %retval.0.i665
  br i1 %cmp170, label %land.lhs.true, label %if.then167.if.end178_crit_edge

if.then167.if.end178_crit_edge:                   ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end178

land.lhs.true:                                    ; preds = %if.then167
  %cg_niblk = getelementptr inbounds %struct.ufs_cylinder_group, ptr %27, i32 0, i32 17, i32 0, i32 3
  %110 = ptrtoint ptr %cg_niblk to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cg_niblk, align 4
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #6
  %retval.0.i669 = select i1 %cmp.i664, i32 %112, i32 %111
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i665, i32 %retval.0.i669)
  %cmp174 = icmp ult i32 %retval.0.i665, %retval.0.i669
  br i1 %cmp174, label %if.then176, label %land.lhs.true.if.end178_crit_edge

land.lhs.true.if.end178_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end178

if.then176:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ufs2_init_inodes_chunk(ptr noundef %5, ptr noundef nonnull %call69, ptr noundef %27)
  br label %if.end178

if.end178:                                        ; preds = %if.then176, %land.lhs.true.if.end178_crit_edge, %if.then167.if.end178_crit_edge, %if.then143.if.end178_crit_edge
  %cs_nifree179 = getelementptr inbounds %struct.ufs_cylinder_group, ptr %27, i32 0, i32 7, i32 2
  %113 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i671 = getelementptr inbounds %struct.ufs_sb_info, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %s_bytesex.i671 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %s_bytesex.i671, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp.i672 = icmp eq i32 %116, 0
  %117 = ptrtoint ptr %cs_nifree179 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cs_nifree179, align 4
  %add.i1.i = add i32 %118, -1
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #6
  %add.i.i = add i32 %119, -1
  %120 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #6
  %storemerge.i = select i1 %cmp.i672, i32 %120, i32 %add.i1.i
  %121 = ptrtoint ptr %cs_nifree179 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %storemerge.i, ptr %cs_nifree179, align 4
  %cs_nifree180 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %9, i32 0, i32 1, i32 2
  %122 = ptrtoint ptr %cs_nifree180 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %cs_nifree180, align 8
  %dec = add i64 %123, -1
  store i64 %dec, ptr %cs_nifree180, align 8
  %124 = ptrtoint ptr %s_csp to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %s_csp, align 4
  %cs_nifree183 = getelementptr %struct.ufs_csum, ptr %125, i32 %cg.0, i32 2
  %126 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i674 = getelementptr inbounds %struct.ufs_sb_info, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %s_bytesex.i674 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %s_bytesex.i674, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp.i675 = icmp eq i32 %129, 0
  %130 = ptrtoint ptr %cs_nifree183 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %cs_nifree183, align 4
  %add.i1.i676 = add i32 %131, -1
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #6
  %add.i.i677 = add i32 %132, -1
  %133 = tail call i32 @llvm.bswap.i32(i32 %add.i.i677) #6
  %storemerge.i678 = select i1 %cmp.i675, i32 %133, i32 %add.i1.i676
  %134 = ptrtoint ptr %cs_nifree183 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %storemerge.i678, ptr %cs_nifree183, align 4
  %135 = and i16 %mode, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %135)
  %cmp186 = icmp eq i16 %135, 16384
  br i1 %cmp186, label %if.then188, label %if.end178.if.end196_crit_edge

if.end178.if.end196_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end196

if.then188:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #8
  %cs_total = getelementptr inbounds %struct.ufs_sb_private_info, ptr %9, i32 0, i32 1
  %cg_cs = getelementptr inbounds %struct.ufs_cylinder_group, ptr %27, i32 0, i32 7
  %136 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i680 = getelementptr inbounds %struct.ufs_sb_info, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %s_bytesex.i680 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %s_bytesex.i680, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp.i681 = icmp eq i32 %139, 0
  %140 = ptrtoint ptr %cg_cs to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %cg_cs, align 4
  %add.i3.i = add i32 %141, 1
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #6
  %add.i.i682 = add i32 %142, 1
  %143 = tail call i32 @llvm.bswap.i32(i32 %add.i.i682) #6
  %storemerge.i683 = select i1 %cmp.i681, i32 %143, i32 %add.i3.i
  %144 = ptrtoint ptr %cg_cs to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %storemerge.i683, ptr %cg_cs, align 4
  %145 = ptrtoint ptr %cs_total to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %cs_total, align 8
  %inc192 = add i64 %146, 1
  store i64 %inc192, ptr %cs_total, align 8
  %147 = ptrtoint ptr %s_csp to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %s_csp, align 4
  %arrayidx194 = getelementptr %struct.ufs_csum, ptr %148, i32 %cg.0
  %149 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i685 = getelementptr inbounds %struct.ufs_sb_info, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %s_bytesex.i685 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %s_bytesex.i685, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp.i686 = icmp eq i32 %152, 0
  %153 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx194, align 4
  %add.i3.i687 = add i32 %154, 1
  %155 = tail call i32 @llvm.bswap.i32(i32 %154) #6
  %add.i.i688 = add i32 %155, 1
  %156 = tail call i32 @llvm.bswap.i32(i32 %add.i.i688) #6
  %storemerge.i689 = select i1 %cmp.i686, i32 %156, i32 %add.i3.i687
  %157 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %storemerge.i689, ptr %arrayidx194, align 4
  br label %if.end196

if.end196:                                        ; preds = %if.then188, %if.end178.if.end196_crit_edge
  tail call void @ubh_mark_buffer_dirty(ptr noundef %9) #6
  tail call void @ubh_mark_buffer_dirty(ptr noundef nonnull %call69) #6
  %s_flags = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 10
  %158 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %s_flags, align 4
  %and199 = and i32 %159, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %if.end196.if.end203_crit_edge, label %if.then201

if.end196.if.end203_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end203

if.then201:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ubh_sync_block(ptr noundef nonnull %call69) #6
  br label %if.end203

if.end203:                                        ; preds = %if.then201, %if.end196.if.end203_crit_edge
  tail call void @ufs_mark_sb_dirty(ptr noundef %5) #6
  %160 = ptrtoint ptr %s_ipg to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %s_ipg, align 4
  %mul = mul i32 %161, %cg.0
  %add205 = add i32 %mul, %bit.0
  %i_ino206 = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 11
  %162 = ptrtoint ptr %i_ino206 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %add205, ptr %i_ino206, align 8
  tail call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call27, ptr noundef nonnull %dir, i16 noundef zeroext %mode) #6
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 22
  %163 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 0, ptr %i_blocks, align 8
  %i_generation = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 49
  %164 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %i_generation, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 15
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call27, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp207) #6
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp207, ptr noundef nonnull %call27) #6
  %165 = call ptr @memcpy(ptr %i_ctime, ptr %tmp207, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp207) #6
  %166 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %167 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %i_flags = getelementptr i8, ptr %dir, i32 -208
  %168 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %i_flags, align 8
  %i_flags209 = getelementptr i8, ptr %call27, i32 -208
  %170 = ptrtoint ptr %i_flags209 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %i_flags209, align 8
  %i_lastfrag = getelementptr i8, ptr %call27, i32 -184
  %171 = ptrtoint ptr %i_lastfrag to i32
  call void @__asan_store8_noabort(i32 %171)
  store i64 0, ptr %i_lastfrag, align 8
  %i_shadow = getelementptr i8, ptr %call27, i32 -204
  %172 = ptrtoint ptr %i_shadow to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 0, ptr %i_shadow, align 4
  %i_osync = getelementptr i8, ptr %call27, i32 -188
  %173 = ptrtoint ptr %i_osync to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 0, ptr %i_osync, align 4
  %i_oeftflag = getelementptr i8, ptr %call27, i32 -192
  %174 = ptrtoint ptr %i_oeftflag to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 0, ptr %i_oeftflag, align 8
  %i_dir_start_lookup = getelementptr i8, ptr %call27, i32 -4
  %175 = ptrtoint ptr %i_dir_start_lookup to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %i_dir_start_lookup, align 4
  %176 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 120)
  %call210 = call i32 @insert_inode_locked(ptr noundef nonnull %call27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %cmp211 = icmp slt i32 %call210, 0
  br i1 %cmp211, label %if.end203.failed_crit_edge, label %if.end214

if.end203.failed_crit_edge:                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed

if.end214:                                        ; preds = %if.end203
  call void @__mark_inode_dirty(ptr noundef %call27, i32 noundef 7) #6
  %177 = ptrtoint ptr %fs_magic to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %fs_magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %178)
  %cmp216 = icmp eq i32 %178, 424935705
  br i1 %cmp216, label %if.then218, label %if.end214.if.end267_crit_edge

if.end214.if.end267_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end267

if.then218:                                       ; preds = %if.end214
  %s_sbbase = getelementptr inbounds %struct.ufs_sb_private_info, ptr %9, i32 0, i32 57
  %179 = ptrtoint ptr %s_sbbase to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %s_sbbase, align 4
  %conv220 = zext i32 %180 to i64
  %s_fpg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %9, i32 0, i32 37
  %181 = ptrtoint ptr %s_fpg to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %s_fpg, align 8
  %183 = ptrtoint ptr %i_ino206 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %i_ino206, align 8
  %185 = ptrtoint ptr %s_ipg to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %s_ipg, align 4
  %.frozen = freeze i32 %184
  %.frozen738 = freeze i32 %186
  %div226 = udiv i32 %.frozen, %.frozen738
  %mul227 = mul i32 %div226, %182
  %s_iblkno = getelementptr inbounds %struct.ufs_sb_private_info, ptr %9, i32 0, i32 4
  %187 = ptrtoint ptr %s_iblkno to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %s_iblkno, align 8
  %add240 = add i32 %mul227, %188
  %conv241 = zext i32 %add240 to i64
  %189 = mul i32 %div226, %.frozen738
  %rem.decomposed = sub i32 %.frozen, %189
  %s_inopf = getelementptr inbounds %struct.ufs_sb_private_info, ptr %9, i32 0, i32 56
  %190 = ptrtoint ptr %s_inopf to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %s_inopf, align 8
  %div244 = udiv i32 %rem.decomposed, %191
  %conv245 = zext i32 %div244 to i64
  %add246 = add nuw nsw i64 %conv241, %conv220
  %add247 = add nuw nsw i64 %add246, %conv245
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 26
  %192 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 3
  %194 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %s_blocksize.i, align 16
  %call.i = call ptr @__bread_gfp(ptr noundef %193, i64 noundef %add247, i32 noundef %195, i32 noundef 8) #6
  %tobool249.not = icmp eq ptr %call.i, null
  br i1 %tobool249.not, label %fail_remove_inode, label %if.end252

if.end252:                                        ; preds = %if.then218
  call fastcc void @lock_buffer(ptr noundef nonnull %call.i)
  %b_data253 = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %196 = ptrtoint ptr %b_data253 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %b_data253, align 4
  %198 = ptrtoint ptr %i_ino206 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %i_ino206, align 8
  %200 = ptrtoint ptr %s_inopf to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %s_inopf, align 8
  %rem256 = urem i32 %199, %201
  call void @ktime_get_real_ts64(ptr noundef nonnull %ts) #6
  %202 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %ts, align 8
  %204 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i692 = getelementptr inbounds %struct.ufs_sb_info, ptr %205, i32 0, i32 2
  %206 = ptrtoint ptr %s_bytesex.i692 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %s_bytesex.i692, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %cmp.i693 = icmp eq i32 %207, 0
  %208 = call i64 @llvm.bswap.i64(i64 %203) #6
  %retval.0.i694 = select i1 %cmp.i693, i64 %208, i64 %203
  %ui_birthtime = getelementptr %struct.ufs2_inode, ptr %197, i32 %rem256, i32 10
  %209 = ptrtoint ptr %ui_birthtime to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 %retval.0.i694, ptr %ui_birthtime, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %210 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %tv_nsec, align 8
  %212 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i696 = getelementptr inbounds %struct.ufs_sb_info, ptr %213, i32 0, i32 2
  %214 = ptrtoint ptr %s_bytesex.i696 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %s_bytesex.i696, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %cmp.i697 = icmp eq i32 %215, 0
  %216 = call i32 @llvm.bswap.i32(i32 %211) #6
  %retval.0.i698 = select i1 %cmp.i697, i32 %216, i32 %211
  %ui_birthnsec = getelementptr %struct.ufs2_inode, ptr %197, i32 %rem256, i32 14
  %217 = ptrtoint ptr %ui_birthnsec to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %retval.0.i698, ptr %ui_birthnsec, align 4
  call void @mark_buffer_dirty(ptr noundef nonnull %call.i) #6
  call void @unlock_buffer(ptr noundef nonnull %call.i) #6
  %218 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %s_flags, align 4
  %and261 = and i32 %219, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and261)
  %tobool262.not = icmp eq i32 %and261, 0
  br i1 %tobool262.not, label %if.end252.cleanup.thread_crit_edge, label %if.then263

if.end252.cleanup.thread_crit_edge:               ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.then263:                                       ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #8
  %call264 = call i32 @sync_dirty_buffer(ptr noundef nonnull %call.i) #6
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then263, %if.end252.cleanup.thread_crit_edge
  call void @__brelse(ptr noundef nonnull %call.i) #6
  br label %if.end267

if.end267:                                        ; preds = %cleanup.thread, %if.end214.if.end267_crit_edge
  call void @mutex_unlock(ptr noundef %s_lock) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_inode.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_inode, %do.body287)) #6
          to label %if.then283 [label %do.body287], !srcloc !78

if.then283:                                       ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_inode.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 339, ptr noundef nonnull @.str.13) #6
  br label %do.body287

do.body287:                                       ; preds = %if.then283, %if.end267
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_inode.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_inode, %do.body306)) #6
          to label %if.then301 [label %do.body306], !srcloc !78

if.then301:                                       ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #8
  %220 = ptrtoint ptr %i_ino206 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %i_ino206, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_inode.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.23, i32 noundef %221) #6
  br label %do.body306

do.body306:                                       ; preds = %if.then301, %do.body287
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_inode.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_inode, %do.body324)) #6
          to label %if.then320 [label %do.body324], !srcloc !78

if.then320:                                       ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_inode.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 340, ptr noundef nonnull @.str.13) #6
  br label %do.body324

do.body324:                                       ; preds = %if.then320, %do.body306
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_inode.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_inode, %cleanup418)) #6
          to label %if.then338 [label %cleanup418], !srcloc !78

if.then338:                                       ; preds = %do.body324
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_inode.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.12) #6
  br label %cleanup418

fail_remove_inode:                                ; preds = %if.then218
  %222 = ptrtoint ptr %i_ino206 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %i_ino206, align 8
  call void (ptr, ptr, ptr, ...) @ufs_warning(ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %223) #6
  call void @mutex_unlock(ptr noundef %s_lock) #6
  call void @clear_nlink(ptr noundef nonnull %call27) #6
  call void @discard_new_inode(ptr noundef nonnull %call27) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_inode.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_inode, %do.body361)) #6
          to label %if.then357 [label %do.body361], !srcloc !78

if.then357:                                       ; preds = %fail_remove_inode
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_inode.__UNIQUE_ID_ddebug254, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 347, ptr noundef nonnull @.str.13) #6
  br label %do.body361

do.body361:                                       ; preds = %if.then357, %fail_remove_inode
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_inode.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_inode, %cleanup418)) #6
          to label %if.then375 [label %cleanup418], !srcloc !78

if.then375:                                       ; preds = %do.body361
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_inode.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.25, i32 noundef -5) #6
  br label %cleanup418

failed:                                           ; preds = %if.end203.failed_crit_edge, %if.else, %if.then89, %cg_found.failed_crit_edge, %for.cond52.failed_crit_edge, %for.end.failed_crit_edge, %for.cond.preheader.failed_crit_edge
  %err.1 = phi i32 [ -5, %if.else ], [ -5, %if.then89 ], [ -5, %cg_found.failed_crit_edge ], [ -5, %if.end203.failed_crit_edge ], [ -28, %for.end.failed_crit_edge ], [ -28, %for.cond.preheader.failed_crit_edge ], [ -28, %for.cond52.failed_crit_edge ]
  call void @mutex_unlock(ptr noundef %s_lock) #6
  call void @make_bad_inode(ptr noundef nonnull %call27) #6
  call void @iput(ptr noundef nonnull %call27) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_inode.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_inode, %do.body399)) #6
          to label %if.then395 [label %do.body399], !srcloc !78

if.then395:                                       ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_inode.__UNIQUE_ID_ddebug256, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 353, ptr noundef nonnull @.str.13) #6
  br label %do.body399

do.body399:                                       ; preds = %if.then395, %failed
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs_new_inode.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs_new_inode, %do.end416)) #6
          to label %if.then413 [label %do.end416], !srcloc !78

if.then413:                                       ; preds = %do.body399
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs_new_inode.__UNIQUE_ID_ddebug257, ptr noundef nonnull @.str.25, i32 noundef %err.1) #6
  br label %do.end416

do.end416:                                        ; preds = %if.then413, %do.body399
  %224 = inttoptr i32 %err.1 to ptr
  br label %cleanup418

cleanup418:                                       ; preds = %do.end416, %if.then375, %do.body361, %if.then338, %do.body324, %if.end26.cleanup418_crit_edge, %lor.lhs.false.cleanup418_crit_edge, %do.end21.cleanup418_crit_edge
  %retval.0 = phi ptr [ %224, %do.end416 ], [ %call27, %if.then338 ], [ inttoptr (i32 -1 to ptr), %lor.lhs.false.cleanup418_crit_edge ], [ inttoptr (i32 -1 to ptr), %do.end21.cleanup418_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end26.cleanup418_crit_edge ], [ %call27, %do.body324 ], [ inttoptr (i32 -5 to ptr), %do.body361 ], [ inttoptr (i32 -5 to ptr), %if.then375 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufs2_init_inodes_chunk(ptr nocapture noundef readonly %sb, ptr noundef %ucpi, ptr nocapture noundef %ucg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %s_sbbase = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %s_sbbase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_sbbase, align 4
  %conv = zext i32 %5 to i64
  %fs_magic = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 62
  %6 = ptrtoint ptr %fs_magic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fs_magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 424935705, i32 %7)
  %cmp = icmp eq i32 %7, 424935705
  %s_fpg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 37
  %8 = ptrtoint ptr %s_fpg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_fpg, align 8
  %c_cgx = getelementptr inbounds %struct.ufs_cg_private_info, ptr %ucpi, i32 0, i32 1
  %10 = ptrtoint ptr %c_cgx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %c_cgx, align 8
  %s_ipg = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 36
  %12 = ptrtoint ptr %s_ipg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_ipg, align 4
  %mul = mul i32 %13, %11
  %cg_initediblk = getelementptr inbounds %struct.ufs_cylinder_group, ptr %ucg, i32 0, i32 17, i32 0, i32 4
  %14 = ptrtoint ptr %cg_initediblk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cg_initediblk, align 8
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  %18 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  %retval.0.i173 = select i1 %cmp.i, i32 %18, i32 %15
  %add = add i32 %retval.0.i173, %mul
  %div = udiv i32 %add, %13
  %mul4 = mul i32 %div, %9
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %s_cgoffset = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 6
  %19 = ptrtoint ptr %s_cgoffset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_cgoffset, align 8
  %s_cgmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 7
  %21 = ptrtoint ptr %s_cgmask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_cgmask, align 4
  %neg = xor i32 %22, -1
  %and = and i32 %div, %neg
  %mul25 = mul i32 %and, %20
  %add26 = add i32 %mul25, %mul4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %add26, %cond.false ], [ %mul4, %entry.cond.end_crit_edge ]
  %s_iblkno = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %s_iblkno to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_iblkno, align 8
  %add27 = add i32 %24, %cond
  %conv28 = zext i32 %add27 to i64
  %c_cgx29 = getelementptr inbounds %struct.ufs_cg_private_info, ptr %ucpi, i32 0, i32 1
  %25 = ptrtoint ptr %c_cgx29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %c_cgx29, align 8
  %s_ipg30 = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 36
  %27 = ptrtoint ptr %s_ipg30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_ipg30, align 4
  %mul31 = mul i32 %28, %26
  %cg_initediblk33 = getelementptr inbounds %struct.ufs_cylinder_group, ptr %ucg, i32 0, i32 17, i32 0, i32 4
  %29 = ptrtoint ptr %cg_initediblk33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cg_initediblk33, align 8
  %s_bytesex.i183 = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %s_bytesex.i183 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_bytesex.i183, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i184 = icmp eq i32 %32, 0
  %33 = tail call i32 @llvm.bswap.i32(i32 %30) #6
  %retval.0.i185 = select i1 %cmp.i184, i32 %33, i32 %30
  %add35 = add i32 %retval.0.i185, %mul31
  %rem = urem i32 %add35, %28
  %s_inopf = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 56
  %34 = ptrtoint ptr %s_inopf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_inopf, align 8
  %div37 = udiv i32 %rem, %35
  %conv38 = zext i32 %div37 to i64
  %add39 = add nuw nsw i64 %conv28, %conv
  %add40 = add nuw nsw i64 %add39, %conv38
  %s_fpb = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 13
  %36 = ptrtoint ptr %s_fpb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_fpb, align 4
  %conv41 = zext i32 %37 to i64
  %add42 = add nuw nsw i64 %add40, %conv41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs2_init_inodes_chunk.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs2_init_inodes_chunk, %do.body47)) #6
          to label %if.then [label %do.body47], !srcloc !78

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs2_init_inodes_chunk.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 140, ptr noundef nonnull @.str.26) #6
  br label %do.body47

do.body47:                                        ; preds = %if.then, %cond.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs2_init_inodes_chunk.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs2_init_inodes_chunk, %do.end65)) #6
          to label %if.then61 [label %do.end65], !srcloc !78

if.then61:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %c_cgx29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %c_cgx29, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs2_init_inodes_chunk.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.28, i32 noundef %39) #6
  br label %do.end65

do.end65:                                         ; preds = %if.then61, %do.body47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp66196.not = icmp eq i32 %37, 0
  br i1 %cmp66196.not, label %do.end65.for.end_crit_edge, label %for.body.lr.ph

do.end65.for.end_crit_edge:                       ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end65
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %brelse.exit.for.body_crit_edge, %for.body.lr.ph
  %beg.0197 = phi i64 [ %add40, %for.body.lr.ph ], [ %inc, %brelse.exit.for.body_crit_edge ]
  %40 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_bdev.i, align 4
  %42 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__getblk_gfp(ptr noundef %41, i64 noundef %beg.0197, i32 noundef %43, i32 noundef 8) #6
  tail call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 366) #6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call.i, i32 noundef 4) #6
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %call.i, align 4
  %and.i.i.i.i = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %for.body.if.then.i186_crit_edge

for.body.if.then.i186_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i186

trylock_buffer.exit.i:                            ; preds = %for.body
  tail call void @llvm.prefetch.p0(ptr %call.i, i32 1, i32 3, i32 1) #6
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call.i, ptr %call.i, i32 4, ptr elementtype(i32) %call.i) #6, !srcloc !81
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %46, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !82
  %47 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.not.i = icmp eq i32 %47, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i186_crit_edge

trylock_buffer.exit.i.if.then.i186_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i186

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lock_buffer.exit

if.then.i186:                                     ; preds = %trylock_buffer.exit.i.if.then.i186_crit_edge, %for.body.if.then.i186_crit_edge
  tail call void @__lock_buffer(ptr noundef %call.i) #6
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i186, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %48 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %b_data, align 4
  %50 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %s_blocksize.i, align 16
  %52 = call ptr @memset(ptr %49, i32 0, i32 %51)
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %call.i, align 4
  %and1.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge

lock_buffer.exit.set_buffer_uptodate.exit_crit_edge: ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %call.i) #6
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge
  tail call void @mark_buffer_dirty(ptr noundef %call.i) #6
  tail call void @unlock_buffer(ptr noundef %call.i) #6
  %55 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %s_flags, align 4
  %and69 = and i32 %56, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %set_buffer_uptodate.exit.if.end73_crit_edge, label %if.then71

set_buffer_uptodate.exit.if.end73_crit_edge:      ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then71:                                        ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call72 = tail call i32 @sync_dirty_buffer(ptr noundef %call.i) #6
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %set_buffer_uptodate.exit.if.end73_crit_edge
  %tobool.not.i187 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i187, label %if.end73.brelse.exit_crit_edge, label %if.then.i188

if.end73.brelse.exit_crit_edge:                   ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

if.then.i188:                                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__brelse(ptr noundef nonnull %call.i) #6
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i188, %if.end73.brelse.exit_crit_edge
  %inc = add nuw nsw i64 %beg.0197, 1
  %cmp66 = icmp ult i64 %inc, %add42
  br i1 %cmp66, label %brelse.exit.for.body_crit_edge, label %brelse.exit.for.end_crit_edge

brelse.exit.for.end_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

brelse.exit.for.body_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %brelse.exit.for.end_crit_edge, %do.end65.for.end_crit_edge
  %s_inopb = getelementptr inbounds %struct.ufs_sb_private_info, ptr %3, i32 0, i32 25
  %57 = ptrtoint ptr %s_inopb to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %s_inopb, align 4
  %59 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i190 = getelementptr inbounds %struct.ufs_sb_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %s_bytesex.i190 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %s_bytesex.i190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp.i191 = icmp eq i32 %62, 0
  %63 = ptrtoint ptr %cg_initediblk33 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cg_initediblk33, align 4
  %add.i3.i = add i32 %64, %58
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #6
  %add.i.i = add i32 %65, %58
  %66 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #6
  %storemerge.i = select i1 %cmp.i191, i32 %66, i32 %add.i3.i
  %67 = ptrtoint ptr %cg_initediblk33 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %storemerge.i, ptr %cg_initediblk33, align 4
  tail call void @ubh_mark_buffer_dirty(ptr noundef %ucpi) #6
  %s_flags77 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %68 = ptrtoint ptr %s_flags77 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %s_flags77, align 4
  %and78 = and i32 %69, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %for.end.do.body83_crit_edge, label %if.then80

for.end.do.body83_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body83

if.then80:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ubh_sync_block(ptr noundef %ucpi) #6
  br label %do.body83

do.body83:                                        ; preds = %if.then80, %for.end.do.body83_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs2_init_inodes_chunk.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs2_init_inodes_chunk, %do.body101)) #6
          to label %if.then97 [label %do.body101], !srcloc !78

if.then97:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs2_init_inodes_chunk.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 159, ptr noundef nonnull @.str.26) #6
  br label %do.body101

do.body101:                                       ; preds = %if.then97, %do.body83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufs2_init_inodes_chunk.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ufs2_init_inodes_chunk, %do.end118)) #6
          to label %if.then115 [label %do.end118], !srcloc !78

if.then115:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufs2_init_inodes_chunk.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.12) #6
  br label %do.end118

do.end118:                                        ; preds = %if.then115, %do.body101
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @insert_inode_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lock_buffer(ptr noundef %bh) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 366) #6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh, i32 noundef 4) #6
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %and.i.i.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %trylock_buffer.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

trylock_buffer.exit:                              ; preds = %entry
  tail call void @llvm.prefetch.p0(ptr %bh, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh, ptr %bh, i32 4, ptr elementtype(i32) %bh) #6, !srcloc !81
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !82
  %3 = and i32 %asmresult.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.not = icmp eq i32 %3, 0
  br i1 %tobool.not.not, label %trylock_buffer.exit.if.end_crit_edge, label %trylock_buffer.exit.if.then_crit_edge

trylock_buffer.exit.if.then_crit_edge:            ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

trylock_buffer.exit.if.end_crit_edge:             ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %trylock_buffer.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %trylock_buffer.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @discard_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !25, !26, !27, !28, !29, !31, !33, !34, !35, !36, !38, !40, !42, !44, !45, !46, !47, !49, !50, !52, !53, !54, !55, !57, !58, !60, !61, !62, !63, !64, !66, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ufs/ialloc.c", i32 66, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ufs_free_inode.__UNIQUE_ID_ddebug238, !1, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ufs_free_inode.__UNIQUE_ID_ddebug239, !1, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!9 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ufs/ialloc.c", i32 76, i32 37}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ufs/ialloc.c", i32 90, i32 18}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ufs/ialloc.c", i32 90, i32 40}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ufs/ialloc.c", i32 97, i32 35}
!18 = !{ptr @ufs_free_inode.__UNIQUE_ID_ddebug240, !19, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!19 = !{!"../fs/ufs/ialloc.c", i32 120, i32 2}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ufs_free_inode.__UNIQUE_ID_ddebug241, !19, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!22 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ufs/ialloc.c", i32 185, i32 2}
!25 = !{ptr @ufs_new_inode.__UNIQUE_ID_ddebug246, !24, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!26 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ufs_new_inode.__UNIQUE_ID_ddebug247, !24, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!28 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ufs/ialloc.c", i32 254, i32 8}
!31 = !{ptr @ufs_new_inode.__UNIQUE_ID_ddebug248, !32, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!32 = !{!"../fs/ufs/ialloc.c", i32 259, i32 2}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ufs_new_inode.__UNIQUE_ID_ddebug249, !32, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!35 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ufs/ialloc.c", i32 263, i32 35}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ufs/ialloc.c", i32 319, i32 20}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ufs/ialloc.c", i32 320, i32 9}
!42 = !{ptr @ufs_new_inode.__UNIQUE_ID_ddebug250, !43, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!43 = !{!"../fs/ufs/ialloc.c", i32 339, i32 2}
!44 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ufs_new_inode.__UNIQUE_ID_ddebug251, !43, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!46 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ufs_new_inode.__UNIQUE_ID_ddebug252, !48, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!48 = !{!"../fs/ufs/ialloc.c", i32 340, i32 2}
!49 = !{ptr @ufs_new_inode.__UNIQUE_ID_ddebug253, !48, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!50 = !{ptr @ufs_new_inode.__UNIQUE_ID_ddebug254, !51, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!51 = !{!"../fs/ufs/ialloc.c", i32 347, i32 2}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ufs_new_inode.__UNIQUE_ID_ddebug255, !51, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!54 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ufs_new_inode.__UNIQUE_ID_ddebug256, !56, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!56 = !{!"../fs/ufs/ialloc.c", i32 353, i32 2}
!57 = !{ptr @ufs_new_inode.__UNIQUE_ID_ddebug257, !56, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ufs/ialloc.c", i32 140, i32 2}
!60 = !{ptr @ufs2_init_inodes_chunk.__UNIQUE_ID_ddebug242, !59, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!61 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ufs2_init_inodes_chunk.__UNIQUE_ID_ddebug243, !59, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!63 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ufs2_init_inodes_chunk.__UNIQUE_ID_ddebug244, !65, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!65 = !{!"../fs/ufs/ialloc.c", i32 159, i32 2}
!66 = !{ptr @ufs2_init_inodes_chunk.__UNIQUE_ID_ddebug245, !65, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 2148484397, i64 2148484402, i64 2148484415, i64 2148484459, i64 2148484493, i64 2148484514}
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.peeled.count", i32 1}
!81 = !{i64 2148668657, i64 2148668689, i64 2148668718, i64 2148668752, i64 2148668783, i64 2148668806}
!82 = !{i64 2148757762}
