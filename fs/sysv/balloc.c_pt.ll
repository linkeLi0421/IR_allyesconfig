; ModuleID = '/llk/IR_all_yes/fs/sysv/balloc.c_pt.bc'
source_filename = "../fs/sysv/balloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.sysv_sb_info = type { ptr, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i16, i32, %struct.mutex }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }

@sysv_free_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"sysv_free_block: trying to free block not in datazone\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sysv_free_block\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/sysv/balloc.c\00", [47 x i8] zeroinitializer }, align 32
@sysv_free_block._entry_ptr = internal global ptr @sysv_free_block._entry, section ".printk_index", align 4
@sysv_free_block._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sysv_free_block: flc_count > flc_size\0A\00", [57 x i8] zeroinitializer }, align 32
@sysv_free_block._entry_ptr.5 = internal global ptr @sysv_free_block._entry.3, section ".printk_index", align 4
@sysv_free_block._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sysv_free_block: getblk() failed\0A\00", [62 x i8] zeroinitializer }, align 32
@sysv_free_block._entry_ptr.8 = internal global ptr @sysv_free_block._entry.6, section ".printk_index", align 4
@sysv_new_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"sysv_new_block: new block %d is not in data zone\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sysv_new_block\00", [17 x i8] zeroinitializer }, align 32
@sysv_new_block._entry_ptr = internal global ptr @sysv_new_block._entry, section ".printk_index", align 4
@sysv_new_block._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"sysv_new_block: cannot read free-list block\0A\00", [51 x i8] zeroinitializer }, align 32
@sysv_new_block._entry_ptr.13 = internal global ptr @sysv_new_block._entry.11, section ".printk_index", align 4
@sysv_new_block._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"sysv_new_block: free-list block with >flc_size entries\0A\00", [40 x i8] zeroinitializer }, align 32
@sysv_new_block._entry_ptr.16 = internal global ptr @sysv_new_block._entry.14, section ".printk_index", align 4
@sysv_count_free_blocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"sysv_count_free_blocks: new block %d is not in data zone\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sysv_count_free_blocks\00", [41 x i8] zeroinitializer }, align 32
@sysv_count_free_blocks._entry_ptr = internal global ptr @sysv_count_free_blocks._entry, section ".printk_index", align 4
@sysv_count_free_blocks._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"sysv_count_free_blocks: cannot read free-list block\0A\00", [43 x i8] zeroinitializer }, align 32
@sysv_count_free_blocks._entry_ptr.21 = internal global ptr @sysv_count_free_blocks._entry.19, section ".printk_index", align 4
@sysv_count_free_blocks._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"sysv_count_free_blocks: >flc_size entries in free-list block\0A\00", [34 x i8] zeroinitializer }, align 32
@sysv_count_free_blocks._entry_ptr.24 = internal global ptr @sysv_count_free_blocks._entry.22, section ".printk_index", align 4
@sysv_count_free_blocks._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"sysv_count_free_blocks: free block count was %d, correcting to %d\0A\00", [61 x i8] zeroinitializer }, align 32
@sysv_count_free_blocks._entry_ptr.27 = internal global ptr @sysv_count_free_blocks._entry.25, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 60, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 68, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 80, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 122, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 132, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 139, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 219, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 223, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 226, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [20 x i8] c"../fs/sysv/balloc.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 233, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @sysv_count_free_blocks._entry, ptr @sysv_count_free_blocks._entry.19, ptr @sysv_count_free_blocks._entry.22, ptr @sysv_count_free_blocks._entry.25, ptr @sysv_count_free_blocks._entry_ptr, ptr @sysv_count_free_blocks._entry_ptr.21, ptr @sysv_count_free_blocks._entry_ptr.24, ptr @sysv_count_free_blocks._entry_ptr.27, ptr @sysv_free_block._entry, ptr @sysv_free_block._entry.3, ptr @sysv_free_block._entry.6, ptr @sysv_free_block._entry_ptr, ptr @sysv_free_block._entry_ptr.5, ptr @sysv_free_block._entry_ptr.8, ptr @sysv_new_block._entry, ptr @sysv_new_block._entry.11, ptr @sysv_new_block._entry.14, ptr @sysv_new_block._entry_ptr, ptr @sysv_new_block._entry_ptr.13, ptr @sysv_new_block._entry_ptr.16, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysv_free_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysv_free_block._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysv_free_block._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysv_new_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysv_new_block._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysv_new_block._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysv_count_free_blocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysv_count_free_blocks._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysv_count_free_blocks._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysv_count_free_blocks._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sysv_free_block(ptr nocapture noundef readonly %sb, i32 noundef %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_bcache = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %s_bcache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bcache, align 4
  %s_bytesex.i = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %s_bytesex.i, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %entry.fs32_to_cpu.exit_crit_edge [
    i8 1, label %if.then.i92
    i8 0, label %if.then6.i
  ]

entry.fs32_to_cpu.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %fs32_to_cpu.exit

if.then.i92:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and.i.i = shl i32 %nr, 8
  %shl.i.i = and i32 %and.i.i, -16711936
  %and1.i.i91 = lshr i32 %nr, 8
  %shr.i.i = and i32 %and1.i.i91, 16711935
  %or.i.i = or i32 %shl.i.i, %shr.i.i
  br label %fs32_to_cpu.exit

if.then6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %nr) #5
  br label %fs32_to_cpu.exit

fs32_to_cpu.exit:                                 ; preds = %if.then6.i, %if.then.i92, %entry.fs32_to_cpu.exit_crit_edge
  %retval.0.i = phi i32 [ %or.i.i, %if.then.i92 ], [ %7, %if.then6.i ], [ %nr, %entry.fs32_to_cpu.exit_crit_edge ]
  %s_type = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %cmp = icmp eq i32 %9, 6
  br i1 %cmp, label %fs32_to_cpu.exit.cleanup_crit_edge, label %if.end

fs32_to_cpu.exit.cleanup_crit_edge:               ; preds = %fs32_to_cpu.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %fs32_to_cpu.exit
  %s_firstdatazone = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 26
  %10 = ptrtoint ptr %s_firstdatazone to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_firstdatazone, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %11)
  %cmp2 = icmp ult i32 %retval.0.i, %11
  br i1 %cmp2, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %s_nzones = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 29
  %12 = ptrtoint ptr %s_nzones to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_nzones, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %13)
  %cmp3.not = icmp ult i32 %retval.0.i, %13
  br i1 %cmp3.not, label %if.end6, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %s_lock = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #5
  %s_bcache_count = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 20
  %14 = ptrtoint ptr %s_bcache_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_bcache_count, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 2
  %18 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp.not.i = icmp eq i8 %19, 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %17) #5
  %retval.0.i94 = select i1 %cmp.not.i, i16 %17, i16 %20
  %conv = zext i16 %retval.0.i94 to i32
  %s_flc_size = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 12
  %21 = ptrtoint ptr %s_flc_size to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %s_flc_size, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i94, i16 %22)
  %cmp9 = icmp ugt i16 %retval.0.i94, %22
  br i1 %cmp9, label %do.end14, label %if.end18

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  tail call void @mutex_unlock(ptr noundef %s_lock) #5
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i94, i16 %22)
  %cmp21 = icmp eq i16 %retval.0.i94, %22
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i94)
  %cmp24 = icmp eq i16 %retval.0.i94, 0
  %or.cond = or i1 %cmp21, %cmp24
  br i1 %or.cond, label %if.then26, label %if.end18.if.end41_crit_edge

if.end18.if.end41_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then26:                                        ; preds = %if.end18
  %s_block_base = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 10
  %23 = ptrtoint ptr %s_block_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_block_base, align 4
  %add = add i32 %24, %retval.0.i
  %conv27 = zext i32 %add to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %25 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %27 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__getblk_gfp(ptr noundef %26, i64 noundef %conv27, i32 noundef %28, i32 noundef 8) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end32, label %if.end36

do.end32:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  tail call void @mutex_unlock(ptr noundef %s_lock) #5
  br label %cleanup

if.end36:                                         ; preds = %if.then26
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %29 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %b_data, align 4
  %31 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_blocksize.i, align 16
  %33 = call ptr @memset(ptr %30, i32 0, i32 %32)
  %34 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %cmp.not.i96 = icmp eq i8 %35, 2
  %36 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i94) #5
  %retval.0.i97 = select i1 %cmp.not.i96, i16 %retval.0.i94, i16 %36
  %37 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %b_data, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %retval.0.i97, ptr %38, align 2
  %40 = load ptr, ptr %b_data, align 4
  %41 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_fs_info.i, align 16
  %s_type.i = getelementptr inbounds %struct.sysv_sb_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %s_type.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %s_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp.i = icmp eq i32 %44, 2
  %retval.0.v.i = select i1 %cmp.i, i32 4, i32 2
  %retval.0.i98 = getelementptr i8, ptr %40, i32 %retval.0.v.i
  %mul = shl nuw nsw i32 %conv, 2
  %45 = call ptr @memcpy(ptr %retval.0.i98, ptr %3, i32 %mul)
  tail call void @mark_buffer_dirty(ptr noundef nonnull %call.i) #5
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %call.i, align 4
  %and1.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end36.brelse.exit_crit_edge

if.end36.brelse.exit_crit_edge:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call.i) #5
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end36.brelse.exit_crit_edge
  tail call void @__brelse(ptr noundef nonnull %call.i) #5
  br label %if.end41

if.end41:                                         ; preds = %brelse.exit, %if.end18.if.end41_crit_edge
  %count.0 = phi i32 [ 0, %brelse.exit ], [ %conv, %if.end18.if.end41_crit_edge ]
  %48 = ptrtoint ptr %s_bcache to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_bcache, align 4
  %arrayidx = getelementptr i32, ptr %49, i32 %count.0
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %nr, ptr %arrayidx, align 4
  %51 = trunc i32 %count.0 to i16
  %conv43 = add i16 %51, 1
  %52 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %53)
  %cmp.not.i102 = icmp eq i8 %53, 2
  %54 = tail call i16 @llvm.bswap.i16(i16 %conv43) #5
  %retval.0.i103 = select i1 %cmp.not.i102, i16 %conv43, i16 %54
  %55 = ptrtoint ptr %s_bcache_count to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_bcache_count, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %retval.0.i103, ptr %56, align 2
  %s_free_blocks = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 22
  %58 = ptrtoint ptr %s_free_blocks to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_free_blocks, align 4
  %60 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %s_bytesex.i, align 4
  %62 = zext i8 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %61, label %if.else8.i [
    i8 1, label %if.then.i110
    i8 0, label %if.then7.i
  ]

if.then.i110:                                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %59, align 4
  %and.i.i105 = shl i32 %64, 8
  %shl.i.i106 = and i32 %and.i.i105, -16711936
  %and1.i.i107 = lshr i32 %64, 8
  %shr.i.i108 = and i32 %and1.i.i107, 16711935
  %or.i.i109 = or i32 %shl.i.i106, %shr.i.i108
  %add.i = add i32 %or.i.i109, 1
  %and.i1.i = shl i32 %add.i, 8
  %shl.i2.i = and i32 %and.i1.i, -16711936
  %and1.i3.i = lshr i32 %add.i, 8
  %shr.i4.i = and i32 %and1.i3.i, 16711935
  %or.i5.i = or i32 %shl.i2.i, %shr.i4.i
  br label %fs32_add.exit

if.then7.i:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %59, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #5
  %add.i.i = add i32 %67, 1
  %68 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #5
  br label %fs32_add.exit

if.else8.i:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %59, align 4
  %add.i6.i = add i32 %70, 1
  br label %fs32_add.exit

fs32_add.exit:                                    ; preds = %if.else8.i, %if.then7.i, %if.then.i110
  %.sink.i = phi i32 [ %68, %if.then7.i ], [ %add.i6.i, %if.else8.i ], [ %or.i5.i, %if.then.i110 ]
  %71 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %.sink.i, ptr %59, align 4
  %72 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_fs_info.i, align 16
  %s_bh1.i = getelementptr inbounds %struct.sysv_sb_info, ptr %73, i32 0, i32 13
  %74 = ptrtoint ptr %s_bh1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %s_bh1.i, align 4
  tail call void @mark_buffer_dirty(ptr noundef %75) #5
  %76 = ptrtoint ptr %s_bh1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %s_bh1.i, align 4
  %s_bh2.i = getelementptr inbounds %struct.sysv_sb_info, ptr %73, i32 0, i32 14
  %78 = ptrtoint ptr %s_bh2.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_bh2.i, align 4
  %cmp.not.i112 = icmp eq ptr %77, %79
  br i1 %cmp.not.i112, label %fs32_add.exit.dirty_sb.exit_crit_edge, label %if.then.i113

fs32_add.exit.dirty_sb.exit_crit_edge:            ; preds = %fs32_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dirty_sb.exit

if.then.i113:                                     ; preds = %fs32_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mark_buffer_dirty(ptr noundef %79) #5
  br label %dirty_sb.exit

dirty_sb.exit:                                    ; preds = %if.then.i113, %fs32_add.exit.dirty_sb.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %s_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %dirty_sb.exit, %do.end32, %do.end14, %do.end, %fs32_to_cpu.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dirty_sb(ptr nocapture noundef readonly %sb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_bh1 = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %s_bh1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bh1, align 4
  tail call void @mark_buffer_dirty(ptr noundef %3) #5
  %4 = ptrtoint ptr %s_bh1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_bh1, align 4
  %s_bh2 = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %s_bh2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_bh2, align 4
  %cmp.not = icmp eq ptr %5, %7
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mark_buffer_dirty(ptr noundef %7) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sysv_new_block(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #5
  %s_bcache_count = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %s_bcache_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bcache_count, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %s_bytesex.i = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.not.i = icmp eq i8 %7, 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %5) #5
  %retval.0.i = select i1 %cmp.not.i, i16 %5, i16 %8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i)
  %cmp = icmp eq i16 %retval.0.i, 0
  br i1 %cmp, label %entry.cleanup54_crit_edge, label %if.end

entry.cleanup54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

if.end:                                           ; preds = %entry
  %conv = zext i16 %retval.0.i to i32
  %s_bcache = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 21
  %9 = ptrtoint ptr %s_bcache to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_bcache, align 4
  %dec = add nsw i32 %conv, -1
  %arrayidx = getelementptr i32, ptr %10, i32 %dec
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp3 = icmp eq i32 %12, 0
  br i1 %cmp3, label %if.end.cleanup54_crit_edge, label %if.end6

if.end.cleanup54_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

if.end6:                                          ; preds = %if.end
  %13 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %7, label %if.end6.fs32_to_cpu.exit_crit_edge [
    i8 1, label %if.then.i
    i8 0, label %if.then6.i
  ]

if.end6.fs32_to_cpu.exit_crit_edge:               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %fs32_to_cpu.exit

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %and.i.i = shl i32 %12, 8
  %shl.i.i = and i32 %and.i.i, -16711936
  %and1.i.i = lshr i32 %12, 8
  %shr.i.i = and i32 %and1.i.i, 16711935
  %or.i.i = or i32 %shl.i.i, %shr.i.i
  br label %fs32_to_cpu.exit

if.then6.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  br label %fs32_to_cpu.exit

fs32_to_cpu.exit:                                 ; preds = %if.then6.i, %if.then.i, %if.end6.fs32_to_cpu.exit_crit_edge
  %retval.0.i98 = phi i32 [ %or.i.i, %if.then.i ], [ %14, %if.then6.i ], [ %12, %if.end6.fs32_to_cpu.exit_crit_edge ]
  %conv8 = trunc i32 %dec to i16
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv8) #5
  %retval.0.i101 = select i1 %cmp.not.i, i16 %conv8, i16 %15
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %retval.0.i101, ptr %3, align 2
  %s_firstdatazone = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 26
  %17 = ptrtoint ptr %s_firstdatazone to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_firstdatazone, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i98, i32 %18)
  %cmp11 = icmp ult i32 %retval.0.i98, %18
  br i1 %cmp11, label %fs32_to_cpu.exit.do.end_crit_edge, label %lor.lhs.false

fs32_to_cpu.exit.do.end_crit_edge:                ; preds = %fs32_to_cpu.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %fs32_to_cpu.exit
  %s_nzones = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 29
  %19 = ptrtoint ptr %s_nzones to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_nzones, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i98, i32 %20)
  %cmp13.not = icmp ult i32 %retval.0.i98, %20
  br i1 %cmp13.not, label %if.end17, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %fs32_to_cpu.exit.do.end_crit_edge
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %retval.0.i98) #8
  br label %cleanup54

if.end17:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp18 = icmp eq i32 %dec, 0
  br i1 %cmp18, label %if.then20, label %if.end17.if.end50_crit_edge

if.end17.if.end50_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then20:                                        ; preds = %if.end17
  %s_block_base = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %s_block_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_block_base, align 4
  %add = add i32 %22, %retval.0.i98
  %conv22 = zext i32 %add to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %23 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %25 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %24, i64 noundef %conv22, i32 noundef %26, i32 noundef 8) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end27, label %if.end32

do.end27:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  %27 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp.not.i103 = icmp eq i8 %28, 2
  %retval.0.i104 = select i1 %cmp.not.i103, i16 1, i16 256
  %29 = ptrtoint ptr %s_bcache_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_bcache_count, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %retval.0.i104, ptr %30, align 2
  br label %cleanup54

if.end32:                                         ; preds = %if.then20
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %32 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %b_data, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %33, align 2
  %36 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %37)
  %cmp.not.i106 = icmp eq i8 %37, 2
  %38 = tail call i16 @llvm.bswap.i16(i16 %35) #5
  %retval.0.i107 = select i1 %cmp.not.i106, i16 %35, i16 %38
  %s_flc_size = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 12
  %39 = ptrtoint ptr %s_flc_size to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %s_flc_size, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i107, i16 %40)
  %cmp36 = icmp ugt i16 %retval.0.i107, %40
  br i1 %cmp36, label %brelse.exit, label %cleanup

brelse.exit:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #8
  tail call void @__brelse(ptr noundef nonnull %call.i) #5
  br label %cleanup54

cleanup:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %conv34 = zext i16 %retval.0.i107 to i32
  %41 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i107) #5
  %retval.0.i111 = select i1 %cmp.not.i106, i16 %35, i16 %41
  %42 = ptrtoint ptr %s_bcache_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_bcache_count, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %retval.0.i111, ptr %43, align 2
  %45 = ptrtoint ptr %s_bcache to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_bcache, align 4
  %47 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %b_data, align 4
  %49 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_fs_info.i, align 16
  %s_type.i = getelementptr inbounds %struct.sysv_sb_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %s_type.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp.i = icmp eq i32 %52, 2
  %retval.0.v.i = select i1 %cmp.i, i32 4, i32 2
  %retval.0.i112 = getelementptr i8, ptr %48, i32 %retval.0.v.i
  %mul = shl nuw nsw i32 %conv34, 2
  %53 = call ptr @memcpy(ptr %46, ptr %retval.0.i112, i32 %mul)
  tail call void @__brelse(ptr noundef nonnull %call.i) #5
  br label %if.end50

if.end50:                                         ; preds = %cleanup, %if.end17.if.end50_crit_edge
  %s_free_blocks = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 22
  %54 = ptrtoint ptr %s_free_blocks to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_free_blocks, align 4
  %56 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %s_bytesex.i, align 4
  %58 = zext i8 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %57, label %if.else8.i [
    i8 1, label %if.then.i122
    i8 0, label %if.then7.i
  ]

if.then.i122:                                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %55, align 4
  %and.i.i117 = shl i32 %60, 8
  %shl.i.i118 = and i32 %and.i.i117, -16711936
  %and1.i.i119 = lshr i32 %60, 8
  %shr.i.i120 = and i32 %and1.i.i119, 16711935
  %or.i.i121 = or i32 %shl.i.i118, %shr.i.i120
  %add.i = add i32 %or.i.i121, -1
  %and.i1.i = shl i32 %add.i, 8
  %shl.i2.i = and i32 %and.i1.i, -16711936
  %and1.i3.i = lshr i32 %add.i, 8
  %shr.i4.i = and i32 %and1.i3.i, 16711935
  %or.i5.i = or i32 %shl.i2.i, %shr.i4.i
  br label %fs32_add.exit

if.then7.i:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %55, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #5
  %add.i.i = add i32 %63, -1
  %64 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #5
  br label %fs32_add.exit

if.else8.i:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %55, align 4
  %add.i6.i = add i32 %66, -1
  br label %fs32_add.exit

fs32_add.exit:                                    ; preds = %if.else8.i, %if.then7.i, %if.then.i122
  %.sink.i = phi i32 [ %64, %if.then7.i ], [ %add.i6.i, %if.else8.i ], [ %or.i5.i, %if.then.i122 ]
  %67 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %.sink.i, ptr %55, align 4
  %68 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %s_fs_info.i, align 16
  %s_bh1.i = getelementptr inbounds %struct.sysv_sb_info, ptr %69, i32 0, i32 13
  %70 = ptrtoint ptr %s_bh1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s_bh1.i, align 4
  tail call void @mark_buffer_dirty(ptr noundef %71) #5
  %72 = ptrtoint ptr %s_bh1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_bh1.i, align 4
  %s_bh2.i = getelementptr inbounds %struct.sysv_sb_info, ptr %69, i32 0, i32 14
  %74 = ptrtoint ptr %s_bh2.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %s_bh2.i, align 4
  %cmp.not.i124 = icmp eq ptr %73, %75
  br i1 %cmp.not.i124, label %fs32_add.exit.cleanup54_crit_edge, label %if.then.i125

fs32_add.exit.cleanup54_crit_edge:                ; preds = %fs32_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

if.then.i125:                                     ; preds = %fs32_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mark_buffer_dirty(ptr noundef %75) #5
  br label %cleanup54

cleanup54:                                        ; preds = %if.then.i125, %fs32_add.exit.cleanup54_crit_edge, %brelse.exit, %do.end27, %do.end, %if.end.cleanup54_crit_edge, %entry.cleanup54_crit_edge
  %retval.0 = phi i32 [ %12, %fs32_add.exit.cleanup54_crit_edge ], [ %12, %if.then.i125 ], [ 0, %do.end27 ], [ 0, %brelse.exit ], [ 0, %if.end.cleanup54_crit_edge ], [ 0, %entry.cleanup54_crit_edge ], [ 0, %do.end ]
  tail call void @mutex_unlock(ptr noundef %s_lock) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sysv_count_free_blocks(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_type = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp = icmp eq i32 %3, 6
  br i1 %cmp, label %entry.cleanup67_crit_edge, label %if.end

entry.cleanup67_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup67

if.end:                                           ; preds = %entry
  %s_lock = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #5
  %s_free_blocks = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %s_free_blocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_free_blocks, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %s_bytesex.i = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %s_bytesex.i, align 4
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %9, label %if.end.fs32_to_cpu.exit_crit_edge [
    i8 1, label %if.then.i
    i8 0, label %if.then6.i
  ]

if.end.fs32_to_cpu.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %fs32_to_cpu.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %and.i.i = shl i32 %7, 8
  %shl.i.i = and i32 %and.i.i, -16711936
  %and1.i.i = lshr i32 %7, 8
  %shr.i.i = and i32 %and1.i.i, 16711935
  %or.i.i = or i32 %shl.i.i, %shr.i.i
  br label %fs32_to_cpu.exit

if.then6.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  br label %fs32_to_cpu.exit

fs32_to_cpu.exit:                                 ; preds = %if.then6.i, %if.then.i, %if.end.fs32_to_cpu.exit_crit_edge
  %retval.0.i = phi i32 [ %or.i.i, %if.then.i ], [ %11, %if.then6.i ], [ %7, %if.end.fs32_to_cpu.exit_crit_edge ]
  %s_bcache_count = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 20
  %12 = ptrtoint ptr %s_bcache_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_bcache_count, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp.not.i = icmp eq i8 %9, 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #5
  %retval.0.i115 = select i1 %cmp.not.i, i16 %15, i16 %16
  %s_flc_size = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %s_flc_size to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %s_flc_size, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i115, i16 %18)
  %cmp4198 = icmp ugt i16 %retval.0.i115, %18
  br i1 %cmp4198, label %do.end51.thread, label %while.cond8.preheader.lr.ph

do.end51.thread:                                  ; preds = %fs32_to_cpu.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call53223 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #8
  br label %done

while.cond8.preheader.lr.ph:                      ; preds = %fs32_to_cpu.exit
  %s_bcache = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 21
  %19 = ptrtoint ptr %s_bcache to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_bcache, align 4
  %s_firstdatazone = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 26
  %s_nzones = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 29
  %s_block_base = getelementptr inbounds %struct.sysv_sb_info, ptr %1, i32 0, i32 10
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  br label %while.cond8.preheader

while.cond8.preheader:                            ; preds = %cleanup.while.cond8.preheader_crit_edge, %while.cond8.preheader.lr.ph
  %n.0202.in = phi i16 [ %retval.0.i115, %while.cond8.preheader.lr.ph ], [ %retval.0.i129, %cleanup.while.cond8.preheader_crit_edge ]
  %count.0201 = phi i32 [ 0, %while.cond8.preheader.lr.ph ], [ %21, %cleanup.while.cond8.preheader_crit_edge ]
  %blocks.0200 = phi ptr [ %20, %while.cond8.preheader.lr.ph ], [ %retval.0.i130, %cleanup.while.cond8.preheader_crit_edge ]
  %bh.0199 = phi ptr [ null, %while.cond8.preheader.lr.ph ], [ %call.i, %cleanup.while.cond8.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %n.0202.in)
  %tobool.not193 = icmp eq i16 %n.0202.in, 0
  br i1 %tobool.not193, label %while.cond8.preheader.while.end34_crit_edge, label %land.rhs.preheader

while.cond8.preheader.while.end34_crit_edge:      ; preds = %while.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end34

land.rhs.preheader:                               ; preds = %while.cond8.preheader
  %n.0202 = zext i16 %n.0202.in to i32
  %21 = add i32 %count.0201, %n.0202
  br label %land.rhs

land.rhs:                                         ; preds = %while.body11.land.rhs_crit_edge, %land.rhs.preheader
  %count.1195 = phi i32 [ %inc, %while.body11.land.rhs_crit_edge ], [ %count.0201, %land.rhs.preheader ]
  %n.1194 = phi i32 [ %dec, %while.body11.land.rhs_crit_edge ], [ %n.0202, %land.rhs.preheader ]
  %dec = add nsw i32 %n.1194, -1
  %arrayidx = getelementptr i32, ptr %blocks.0200, i32 %dec
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp9.not = icmp eq i32 %23, 0
  br i1 %cmp9.not, label %land.rhs.while.end34_crit_edge, label %while.body11

land.rhs.while.end34_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end34

while.body11:                                     ; preds = %land.rhs
  %inc = add i32 %count.1195, 1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end15, label %while.body11.land.rhs_crit_edge

while.body11.land.rhs_crit_edge:                  ; preds = %while.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

if.end15:                                         ; preds = %while.body11
  %24 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %s_bytesex.i, align 4
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %25, label %if.end15.fs32_to_cpu.exit125_crit_edge [
    i8 1, label %if.then.i122
    i8 0, label %if.then6.i123
  ]

if.end15.fs32_to_cpu.exit125_crit_edge:           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %fs32_to_cpu.exit125

if.then.i122:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %and.i.i117 = shl i32 %23, 8
  %shl.i.i118 = and i32 %and.i.i117, -16711936
  %and1.i.i119 = lshr i32 %23, 8
  %shr.i.i120 = and i32 %and1.i.i119, 16711935
  %or.i.i121 = or i32 %shl.i.i118, %shr.i.i120
  br label %fs32_to_cpu.exit125

if.then6.i123:                                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %27 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  br label %fs32_to_cpu.exit125

fs32_to_cpu.exit125:                              ; preds = %if.then6.i123, %if.then.i122, %if.end15.fs32_to_cpu.exit125_crit_edge
  %retval.0.i124 = phi i32 [ %or.i.i121, %if.then.i122 ], [ %27, %if.then6.i123 ], [ %23, %if.end15.fs32_to_cpu.exit125_crit_edge ]
  %tobool17.not = icmp eq ptr %bh.0199, null
  br i1 %tobool17.not, label %fs32_to_cpu.exit125.if.end19_crit_edge, label %brelse.exit

fs32_to_cpu.exit125.if.end19_crit_edge:           ; preds = %fs32_to_cpu.exit125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

brelse.exit:                                      ; preds = %fs32_to_cpu.exit125
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__brelse(ptr noundef nonnull %bh.0199) #5
  br label %if.end19

if.end19:                                         ; preds = %brelse.exit, %fs32_to_cpu.exit125.if.end19_crit_edge
  %28 = ptrtoint ptr %s_firstdatazone to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_firstdatazone, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i124, i32 %29)
  %cmp20 = icmp ult i32 %retval.0.i124, %29
  br i1 %cmp20, label %if.end19.do.end_crit_edge, label %lor.lhs.false

if.end19.do.end_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end19
  %30 = ptrtoint ptr %s_nzones to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_nzones, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i124, i32 %31)
  %cmp22.not = icmp ult i32 %retval.0.i124, %31
  br i1 %cmp22.not, label %if.end25, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end25:                                         ; preds = %lor.lhs.false
  %32 = ptrtoint ptr %s_block_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_block_base, align 4
  %add = add i32 %33, %retval.0.i124
  %conv26 = zext i32 %add to i64
  %34 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_bdev.i, align 4
  %36 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %35, i64 noundef %conv26, i32 noundef %37, i32 noundef 8) #5
  %tobool28.not = icmp eq ptr %call.i, null
  br i1 %tobool28.not, label %do.end46, label %cleanup

cleanup:                                          ; preds = %if.end25
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %38 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %b_data, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %39, align 2
  %42 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %43)
  %cmp.not.i128 = icmp eq i8 %43, 2
  %44 = tail call i16 @llvm.bswap.i16(i16 %41) #5
  %retval.0.i129 = select i1 %cmp.not.i128, i16 %41, i16 %44
  %45 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_fs_info.i, align 16
  %s_type.i = getelementptr inbounds %struct.sysv_sb_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %s_type.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp.i = icmp eq i32 %48, 2
  %retval.0.v.i = select i1 %cmp.i, i32 4, i32 2
  %retval.0.i130 = getelementptr i8, ptr %39, i32 %retval.0.v.i
  %49 = ptrtoint ptr %s_flc_size to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %s_flc_size, align 2
  %cmp4 = icmp ugt i16 %retval.0.i129, %50
  br i1 %cmp4, label %brelse.exit136, label %cleanup.while.cond8.preheader_crit_edge

cleanup.while.cond8.preheader_crit_edge:          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond8.preheader

while.end34:                                      ; preds = %land.rhs.while.end34_crit_edge, %while.cond8.preheader.while.end34_crit_edge
  %count.1183 = phi i32 [ %count.1195, %land.rhs.while.end34_crit_edge ], [ %count.0201, %while.cond8.preheader.while.end34_crit_edge ]
  %tobool35.not = icmp eq ptr %bh.0199, null
  br i1 %tobool35.not, label %while.end34.if.end37_crit_edge, label %brelse.exit133

while.end34.if.end37_crit_edge:                   ; preds = %while.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

brelse.exit133:                                   ; preds = %while.end34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__brelse(ptr noundef nonnull %bh.0199) #5
  br label %if.end37

if.end37:                                         ; preds = %brelse.exit133, %while.end34.if.end37_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %count.1183, i32 %retval.0.i)
  %cmp38.not = icmp eq i32 %count.1183, %retval.0.i
  br i1 %cmp38.not, label %if.end37.done_crit_edge, label %do.end59

if.end37.done_crit_edge:                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

done:                                             ; preds = %cpu_to_fs32.exit, %do.end59.done_crit_edge, %brelse.exit136, %do.end46, %do.end, %if.end37.done_crit_edge, %do.end51.thread
  %count.3 = phi i32 [ %count.1183, %do.end59.done_crit_edge ], [ %count.1183, %cpu_to_fs32.exit ], [ %retval.0.i, %if.end37.done_crit_edge ], [ %retval.0.i, %brelse.exit136 ], [ %retval.0.i, %do.end46 ], [ %retval.0.i, %do.end ], [ %retval.0.i, %do.end51.thread ]
  tail call void @mutex_unlock(ptr noundef %s_lock) #5
  br label %cleanup67

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end19.do.end_crit_edge
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %retval.0.i124) #8
  br label %done

do.end46:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #8
  br label %done

brelse.exit136:                                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #8
  tail call void @__brelse(ptr noundef nonnull %call.i) #5
  br label %done

do.end59:                                         ; preds = %if.end37
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %retval.0.i, i32 noundef %count.1183) #8
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %51 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then63, label %do.end59.done_crit_edge

do.end59.done_crit_edge:                          ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.then63:                                        ; preds = %do.end59
  %53 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %s_bytesex.i, align 4
  %55 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %54, label %if.then63.cpu_to_fs32.exit_crit_edge [
    i8 1, label %if.then.i143
    i8 0, label %if.then6.i144
  ]

if.then63.cpu_to_fs32.exit_crit_edge:             ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_to_fs32.exit

if.then.i143:                                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #7
  %and.i.i138 = shl i32 %count.1183, 8
  %shl.i.i139 = and i32 %and.i.i138, -16711936
  %and1.i.i140 = lshr i32 %count.1183, 8
  %shr.i.i141 = and i32 %and1.i.i140, 16711935
  %or.i.i142 = or i32 %shl.i.i139, %shr.i.i141
  br label %cpu_to_fs32.exit

if.then6.i144:                                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #7
  %56 = tail call i32 @llvm.bswap.i32(i32 %count.1183) #5
  br label %cpu_to_fs32.exit

cpu_to_fs32.exit:                                 ; preds = %if.then6.i144, %if.then.i143, %if.then63.cpu_to_fs32.exit_crit_edge
  %retval.0.i145 = phi i32 [ %or.i.i142, %if.then.i143 ], [ %56, %if.then6.i144 ], [ %count.1183, %if.then63.cpu_to_fs32.exit_crit_edge ]
  %57 = ptrtoint ptr %s_free_blocks to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_free_blocks, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %retval.0.i145, ptr %58, align 4
  tail call fastcc void @dirty_sb(ptr noundef %sb)
  br label %done

cleanup67:                                        ; preds = %done, %entry.cleanup67_crit_edge
  %retval.0 = phi i32 [ %count.3, %done ], [ 0, %entry.cleanup67_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/sysv/balloc.c", i32 60, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @sysv_free_block._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @sysv_free_block._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/sysv/balloc.c", i32 68, i32 3}
!8 = !{ptr @sysv_free_block._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @sysv_free_block._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/sysv/balloc.c", i32 80, i32 4}
!12 = !{ptr @sysv_free_block._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @sysv_free_block._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/sysv/balloc.c", i32 122, i32 3}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @sysv_new_block._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @sysv_new_block._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/sysv/balloc.c", i32 132, i32 4}
!21 = !{ptr @sysv_new_block._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @sysv_new_block._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/sysv/balloc.c", i32 139, i32 4}
!25 = !{ptr @sysv_new_block._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @sysv_new_block._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/sysv/balloc.c", i32 219, i32 2}
!29 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @sysv_count_free_blocks._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @sysv_count_free_blocks._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/sysv/balloc.c", i32 223, i32 2}
!34 = !{ptr @sysv_count_free_blocks._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sysv_count_free_blocks._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/sysv/balloc.c", i32 226, i32 2}
!38 = !{ptr @sysv_count_free_blocks._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @sysv_count_free_blocks._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/sysv/balloc.c", i32 233, i32 2}
!42 = !{ptr @sysv_count_free_blocks._entry.25, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sysv_count_free_blocks._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
