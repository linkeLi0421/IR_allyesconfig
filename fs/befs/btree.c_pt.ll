; ModuleID = '/llk/IR_all_yes/fs/befs/btree.c_pt.bc'
source_filename = "../fs/befs/btree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.befs_btree_super = type { i32, i32, i32, i32, i64, i64, i64 }
%struct.befs_btree_node = type { %struct.befs_host_btree_nodehead, ptr, ptr }
%struct.befs_host_btree_nodehead = type <{ i64, i64, i64, i16, i16 }>
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.befs_sb_info = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.befs_block_run, i64, i64, %struct.befs_block_run, %struct.befs_block_run, i32, %struct.befs_mount_options, ptr }
%struct.befs_block_run = type { i32, i16, i16 }
%struct.befs_mount_options = type { %struct.kgid_t, %struct.kuid_t, i32, i32, i32, ptr }
%struct.kgid_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.befs_disk_btree_super = type { i32, i32, i32, i32, i64, i64, i64 }
%struct.befs_btree_nodehead = type <{ i64, i64, i64, i16, i16 }>

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"---> %s Key: %s\00", [16 x i8] zeroinitializer }, align 32
@__func__.befs_btree_find = private unnamed_addr constant [16 x i8] c"befs_btree_find\00", align 1
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"befs_btree_find() failed to read index superblock\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"befs_btree_find() failed to allocate %zu bytes of memory\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"befs_btree_find() failed to read node at %llu\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"<--- %s Key %s not found\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"<--- %s ERROR\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"<--- %s Found key %s, value %llu\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"---> %s\00", [24 x i8] zeroinitializer }, align 32
@__func__.befs_btree_read = private unnamed_addr constant [16 x i8] c"befs_btree_read\00", align 1
@.str.8 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"befs_btree_read() failed to read index superblock\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"befs_btree_read() failed to allocate %zu bytes of memory\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"<--- %s Tree is EMPTY\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"<--- %s END of keys at %llu\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s failed to read node at %llu\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Read [%llu,%d]: keysize %d\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s keybuf too small (%zu) for key of size %d\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Read [%llu,%d]: Key \22%.*s\22, Value %llu\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"<--- %s\00", [24 x i8] zeroinitializer }, align 32
@__func__.befs_bt_read_super = private unnamed_addr constant [19 x i8] c"befs_bt_read_super\00", align 1
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't read index header.\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Index header has bad magic.\00", [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.befs_bt_read_node = private unnamed_addr constant [18 x i8] c"befs_bt_read_node\00", align 1
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"---> %s %s\00", [21 x i8] zeroinitializer }, align 32
@__func__.befs_find_key = private unnamed_addr constant [14 x i8] c"befs_find_key\00", align 1
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"<--- node can't contain %s\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"first: %d, last: %d, mid: %d\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"<--- %s found %s at %d\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"<--- %s %s not found\00", [43 x i8] zeroinitializer }, align 32
@__func__.befs_btree_seekleaf = private unnamed_addr constant [20 x i8] c"befs_btree_seekleaf\00", align 1
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Seekleaf to root node %llu\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s encountered an empty interior node: %llu. Using Overflow node: %llu\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Seekleaf to child node %llu\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Node %llu is a leaf node\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 253, i32 17 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 257, i32 7 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 264, i32 18 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 274, i32 18 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 298, i32 18 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 299, i32 18 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 303, i32 17 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 426, i32 17 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 430, i32 7 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 436, i32 18 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 451, i32 18 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 466, i32 8 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 478, i32 19 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 492, i32 17 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 497, i32 18 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 507, i32 17 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 513, i32 17 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 145, i32 18 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 159, i32 18 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 340, i32 17 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 350, i32 18 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 361, i32 18 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 368, i32 19 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 385, i32 17 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 555, i32 17 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 565, i32 19 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 580, i32 18 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [19 x i8] c"../fs/befs/btree.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 582, i32 17 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @befs_btree_find(ptr noundef %sb, ptr noundef %ds, ptr noundef %key, ptr nocapture noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %bt_super = alloca %struct.befs_btree_super, align 1
  %node_off = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %bt_super) #7
  %0 = call ptr @memset(ptr %bt_super, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %node_off) #7
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.befs_btree_find, ptr noundef %key) #7
  %call = call fastcc i32 @befs_bt_read_super(ptr noundef %sb, ptr noundef %ds, ptr noundef nonnull %bt_super)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.1) #7
  br label %error

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3136, i32 noundef 36) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.2, i32 noundef 36) #7
  br label %error

if.end3:                                          ; preds = %if.end
  %bh = getelementptr inbounds %struct.befs_btree_node, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bh, align 4
  %root_node_ptr = getelementptr inbounds %struct.befs_btree_super, ptr %bt_super, i32 0, i32 4
  %3 = ptrtoint ptr %root_node_ptr to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %root_node_ptr, align 1
  %5 = ptrtoint ptr %node_off to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %node_off, align 8
  %call4 = tail call fastcc i32 @befs_bt_read_node(ptr noundef %sb, ptr noundef %ds, ptr noundef nonnull %call7.i, i64 noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %while.cond.preheader, label %if.end3.error_alloc_crit_edge

if.end3.error_alloc_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_alloc

while.cond.preheader:                             ; preds = %if.end3
  %overflow.i = getelementptr inbounds %struct.befs_host_btree_nodehead, ptr %call7.i, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %if.end13.while.cond_crit_edge, %while.cond.preheader
  %6 = ptrtoint ptr %overflow.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %overflow.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %7)
  %cmp.i.not = icmp eq i64 %7, -1
  br i1 %cmp.i.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call10 = call fastcc i32 @befs_find_key(ptr noundef %sb, ptr noundef nonnull %call7.i, ptr noundef %key, ptr noundef nonnull %node_off)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 6
  br i1 %cmp11, label %if.then12, label %while.body.if.end13_crit_edge

while.body.if.end13_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then12:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %overflow.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %overflow.i, align 8
  %10 = ptrtoint ptr %node_off to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %node_off, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %while.body.if.end13_crit_edge
  %11 = ptrtoint ptr %node_off to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %node_off, align 8
  %call14 = tail call fastcc i32 @befs_bt_read_node(ptr noundef %sb, ptr noundef %ds, ptr noundef nonnull %call7.i, i64 noundef %12)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.end13.while.cond_crit_edge, label %if.end13.error_alloc_crit_edge

if.end13.error_alloc_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_alloc

if.end13.while.cond_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call18 = tail call fastcc i32 @befs_find_key(ptr noundef %sb, ptr noundef nonnull %call7.i, ptr noundef %key, ptr noundef %value)
  %13 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %while.end.brelse.exit_crit_edge, label %if.then.i

while.end.brelse.exit_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %14) #7
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %while.end.brelse.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call18)
  %cmp20.not = icmp eq i32 %call18, 5
  br i1 %cmp20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.befs_btree_find, ptr noundef %key) #7
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.befs_btree_find) #7
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %value, align 8
  br label %cleanup

if.end22:                                         ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %value, align 8
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.befs_btree_find, ptr noundef %key, i64 noundef %17) #7
  br label %cleanup

error_alloc:                                      ; preds = %if.end13.error_alloc_crit_edge, %if.end3.error_alloc_crit_edge
  %.lcssa.sink = phi i64 [ %4, %if.end3.error_alloc_crit_edge ], [ %12, %if.end13.error_alloc_crit_edge ]
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.3, i64 noundef %.lcssa.sink) #7
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %error

error:                                            ; preds = %error_alloc, %if.then2, %if.then
  %18 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %value, align 8
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.befs_btree_find) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end22, %if.then21
  %retval.0 = phi i32 [ 1, %error ], [ 7, %if.then21 ], [ 0, %if.end22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %node_off) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %bt_super) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @befs_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @befs_bt_read_super(ptr noundef %sb, ptr noundef %ds, ptr nocapture noundef %sup) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.befs_bt_read_super) #7
  %call = tail call ptr @befs_read_datastream(ptr noundef %sb, ptr noundef %ds, i64 noundef 0, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.error_crit_edge, label %brelse.exit

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

brelse.exit:                                      ; preds = %entry
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  tail call void @befs_dump_index_entry(ptr noundef %sb, ptr noundef %1) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %1, align 1
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i = getelementptr inbounds %struct.befs_sb_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  %retval.0.i = select i1 %cmp.i, i32 %8, i32 %3
  %9 = ptrtoint ptr %sup to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %retval.0.i, ptr %sup, align 1
  %node_size = getelementptr inbounds %struct.befs_disk_btree_super, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %node_size to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %node_size, align 1
  %12 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i39 = getelementptr inbounds %struct.befs_sb_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %byte_order.i39 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %byte_order.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i40 = icmp eq i32 %15, 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %retval.0.i41 = select i1 %cmp.i40, i32 %16, i32 %11
  %node_size4 = getelementptr inbounds %struct.befs_btree_super, ptr %sup, i32 0, i32 1
  %17 = ptrtoint ptr %node_size4 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %retval.0.i41, ptr %node_size4, align 1
  %max_depth = getelementptr inbounds %struct.befs_disk_btree_super, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %max_depth to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %max_depth, align 1
  %20 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i43 = getelementptr inbounds %struct.befs_sb_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %byte_order.i43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %byte_order.i43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.i44 = icmp eq i32 %23, 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  %retval.0.i45 = select i1 %cmp.i44, i32 %24, i32 %19
  %max_depth6 = getelementptr inbounds %struct.befs_btree_super, ptr %sup, i32 0, i32 2
  %25 = ptrtoint ptr %max_depth6 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %retval.0.i45, ptr %max_depth6, align 1
  %data_type = getelementptr inbounds %struct.befs_disk_btree_super, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %data_type to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %data_type, align 1
  %28 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i47 = getelementptr inbounds %struct.befs_sb_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %byte_order.i47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %byte_order.i47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.i48 = icmp eq i32 %31, 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  %retval.0.i49 = select i1 %cmp.i48, i32 %32, i32 %27
  %data_type8 = getelementptr inbounds %struct.befs_btree_super, ptr %sup, i32 0, i32 3
  %33 = ptrtoint ptr %data_type8 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %retval.0.i49, ptr %data_type8, align 1
  %root_node_ptr = getelementptr inbounds %struct.befs_disk_btree_super, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %root_node_ptr to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %35 = load i64, ptr %root_node_ptr, align 1
  %36 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i51 = getelementptr inbounds %struct.befs_sb_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %byte_order.i51 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %byte_order.i51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.i52 = icmp eq i32 %39, 1
  %40 = tail call i64 @llvm.bswap.i64(i64 %35) #7
  %retval.0.i53 = select i1 %cmp.i52, i64 %40, i64 %35
  %root_node_ptr10 = getelementptr inbounds %struct.befs_btree_super, ptr %sup, i32 0, i32 4
  %41 = ptrtoint ptr %root_node_ptr10 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %retval.0.i53, ptr %root_node_ptr10, align 1
  tail call void @__brelse(ptr noundef nonnull %call) #7
  %42 = ptrtoint ptr %sup to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %sup, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1777779432, i32 %43)
  %cmp.not = icmp eq i32 %43, 1777779432
  br i1 %cmp.not, label %brelse.exit.cleanup_crit_edge, label %brelse.exit.error_crit_edge

brelse.exit.error_crit_edge:                      ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

error:                                            ; preds = %brelse.exit.error_crit_edge, %entry.error_crit_edge
  %.str.18.sink = phi ptr [ @.str.17, %entry.error_crit_edge ], [ @.str.18, %brelse.exit.error_crit_edge ]
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull %.str.18.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %brelse.exit.cleanup_crit_edge
  %.str.5.sink = phi ptr [ @.str.5, %error ], [ @.str.16, %brelse.exit.cleanup_crit_edge ]
  %retval.0 = phi i32 [ 1, %error ], [ 0, %brelse.exit.cleanup_crit_edge ]
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull %.str.5.sink, ptr noundef nonnull @__func__.befs_bt_read_super) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @befs_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @befs_bt_read_node(ptr noundef %sb, ptr noundef %ds, ptr nocapture noundef %node, i64 noundef %node_off) unnamed_addr #0 align 64 {
entry:
  %off = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %off) #7
  %0 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %off, align 4
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.befs_bt_read_node) #7
  %bh = getelementptr inbounds %struct.befs_btree_node, ptr %node, i32 0, i32 1
  %1 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bh, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %brelse.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

brelse.exit:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %2) #7
  br label %if.end

if.end:                                           ; preds = %brelse.exit, %entry.if.end_crit_edge
  %call = call ptr @befs_read_datastream(ptr noundef %sb, ptr noundef %ds, i64 noundef %node_off, ptr noundef nonnull %off) #7
  %3 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %bh, align 4
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.befs_bt_read_node, i64 noundef %node_off) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %6 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %off, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %od_node = getelementptr inbounds %struct.befs_btree_node, ptr %node, i32 0, i32 2
  %8 = ptrtoint ptr %od_node to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %od_node, align 4
  call void @befs_dump_index_node(ptr noundef %sb, ptr noundef %add.ptr) #7
  %9 = ptrtoint ptr %od_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %od_node, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %10, align 1
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i = getelementptr inbounds %struct.befs_sb_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i = icmp eq i32 %16, 1
  %17 = call i64 @llvm.bswap.i64(i64 %12) #7
  %retval.0.i = select i1 %cmp.i, i64 %17, i64 %12
  %18 = ptrtoint ptr %node to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %retval.0.i, ptr %node, align 4
  %right = getelementptr inbounds %struct.befs_btree_nodehead, ptr %10, i32 0, i32 1
  %19 = ptrtoint ptr %right to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %right, align 1
  %21 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i56 = getelementptr inbounds %struct.befs_sb_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %byte_order.i56 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %byte_order.i56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.i57 = icmp eq i32 %24, 1
  %25 = call i64 @llvm.bswap.i64(i64 %20) #7
  %retval.0.i58 = select i1 %cmp.i57, i64 %25, i64 %20
  %right15 = getelementptr inbounds %struct.befs_host_btree_nodehead, ptr %node, i32 0, i32 1
  %26 = ptrtoint ptr %right15 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %retval.0.i58, ptr %right15, align 4
  %overflow = getelementptr inbounds %struct.befs_btree_nodehead, ptr %10, i32 0, i32 2
  %27 = ptrtoint ptr %overflow to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %overflow, align 1
  %29 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i60 = getelementptr inbounds %struct.befs_sb_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %byte_order.i60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %byte_order.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp.i61 = icmp eq i32 %32, 1
  %33 = call i64 @llvm.bswap.i64(i64 %28) #7
  %retval.0.i62 = select i1 %cmp.i61, i64 %33, i64 %28
  %overflow19 = getelementptr inbounds %struct.befs_host_btree_nodehead, ptr %node, i32 0, i32 2
  %34 = ptrtoint ptr %overflow19 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %retval.0.i62, ptr %overflow19, align 4
  %all_key_count = getelementptr inbounds %struct.befs_btree_nodehead, ptr %10, i32 0, i32 3
  %35 = ptrtoint ptr %all_key_count to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %all_key_count, align 1
  %37 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i64 = getelementptr inbounds %struct.befs_sb_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %byte_order.i64 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %byte_order.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.i65 = icmp eq i32 %40, 1
  %41 = call i16 @llvm.bswap.i16(i16 %36) #7
  %retval.0.i66 = select i1 %cmp.i65, i16 %41, i16 %36
  %all_key_count23 = getelementptr inbounds %struct.befs_host_btree_nodehead, ptr %node, i32 0, i32 3
  %42 = ptrtoint ptr %all_key_count23 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %retval.0.i66, ptr %all_key_count23, align 4
  %all_key_length = getelementptr inbounds %struct.befs_btree_nodehead, ptr %10, i32 0, i32 4
  %43 = ptrtoint ptr %all_key_length to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %all_key_length, align 1
  %45 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i68 = getelementptr inbounds %struct.befs_sb_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %byte_order.i68 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %byte_order.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp.i69 = icmp eq i32 %48, 1
  %49 = call i16 @llvm.bswap.i16(i16 %44) #7
  %retval.0.i70 = select i1 %cmp.i69, i16 %49, i16 %44
  %all_key_length27 = getelementptr inbounds %struct.befs_host_btree_nodehead, ptr %node, i32 0, i32 4
  %50 = ptrtoint ptr %all_key_length27 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %retval.0.i70, ptr %all_key_length27, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5
  %.str.16.sink = phi ptr [ @.str.16, %if.end6 ], [ @.str.5, %if.then5 ]
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 1, %if.then5 ]
  call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull %.str.16.sink, ptr noundef nonnull @__func__.befs_bt_read_node) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %off) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @befs_find_key(ptr noundef %sb, ptr nocapture noundef readonly %node, ptr noundef %findkey, ptr nocapture noundef writeonly %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.befs_find_key, ptr noundef %findkey) #7
  %call = tail call i32 @strlen(ptr noundef %findkey) #11
  %all_key_count = getelementptr inbounds %struct.befs_host_btree_nodehead, ptr %node, i32 0, i32 3
  %0 = ptrtoint ptr %all_key_count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %all_key_count, align 4
  %conv = zext i16 %1 to i32
  %sub = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp1.i = icmp eq i16 %1, 0
  br i1 %cmp1.i, label %entry.befs_bt_get_key.exit_crit_edge, label %if.end.i

entry.befs_bt_get_key.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %befs_bt_get_key.exit

if.end.i:                                         ; preds = %entry
  %od_node.i.i = getelementptr inbounds %struct.befs_btree_node, ptr %node, i32 0, i32 2
  %2 = ptrtoint ptr %od_node.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %od_node.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 28
  %all_key_length.i.i = getelementptr inbounds %struct.befs_host_btree_nodehead, ptr %node, i32 0, i32 4
  %4 = ptrtoint ptr %all_key_length.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %all_key_length.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 28
  %rem.i.i = and i32 %add.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  %6 = add nuw nsw i32 %conv.i.i, 36
  %add1.i.i = sub nuw nsw i32 %6, %rem.i.i
  %off.0.i.i = select i1 %tobool.not.i.i, i32 %add.i.i, i32 %add1.i.i
  %add.ptr.i28.i = getelementptr i8, ptr %3, i32 %off.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp4.i = icmp eq i32 %sub, 0
  br i1 %cmp4.i, label %if.end.i.if.end9.i_crit_edge, label %if.else.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add nsw i32 %conv, -2
  %arrayidx.i = getelementptr i16, ptr %add.ptr.i28.i, i32 %sub.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.i, align 2
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %byte_order.i.i = getelementptr inbounds %struct.befs_sb_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %byte_order.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %byte_order.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i.i = icmp eq i32 %12, 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %8) #7
  %retval.0.i.i = select i1 %cmp.i.i, i16 %13, i16 %8
  %conv8.i = zext i16 %retval.0.i.i to i32
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i, %if.end.i.if.end9.i_crit_edge
  %prev_key_end.0.i = phi i32 [ %conv8.i, %if.else.i ], [ 0, %if.end.i.if.end9.i_crit_edge ]
  %arrayidx10.i = getelementptr i16, ptr %add.ptr.i28.i, i32 %sub
  %14 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx10.i, align 2
  %s_fs_info.i.i29.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i.i29.i, align 16
  %byte_order.i30.i = getelementptr inbounds %struct.befs_sb_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %byte_order.i30.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %byte_order.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i31.i = icmp eq i32 %19, 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %15) #7
  %retval.0.i32.i = select i1 %cmp.i31.i, i16 %20, i16 %15
  %21 = trunc i32 %prev_key_end.0.i to i16
  %conv14.i = sub i16 %retval.0.i32.i, %21
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %prev_key_end.0.i
  %phi.cast = zext i16 %conv14.i to i32
  br label %befs_bt_get_key.exit

befs_bt_get_key.exit:                             ; preds = %if.end9.i, %entry.befs_bt_get_key.exit_crit_edge
  %keylen.0 = phi i32 [ %phi.cast, %if.end9.i ], [ 0, %entry.befs_bt_get_key.exit_crit_edge ]
  %retval.0.i = phi ptr [ %add.ptr.i, %if.end9.i ], [ null, %entry.befs_bt_get_key.exit_crit_edge ]
  %22 = tail call i32 @llvm.smin.i32(i32 %keylen.0, i32 %call) #7
  %call.i = tail call i32 @strncmp(ptr noundef %retval.0.i, ptr noundef %findkey, i32 noundef %22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i79 = icmp eq i32 %call.i, 0
  %sub.i80 = sub i32 %keylen.0, %call
  %result.0.i = select i1 %cmp1.i79, i32 %sub.i80, i32 %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i)
  %cmp = icmp slt i32 %result.0.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %befs_bt_get_key.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.20, ptr noundef %findkey) #7
  br label %cleanup

if.end:                                           ; preds = %befs_bt_get_key.exit
  %all_key_length.i.i81 = getelementptr inbounds %struct.befs_host_btree_nodehead, ptr %node, i32 0, i32 4
  %23 = ptrtoint ptr %all_key_length.i.i81 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %all_key_length.i.i81, align 2
  %conv.i.i82 = zext i16 %24 to i32
  %add.i.i83 = add nuw nsw i32 %conv.i.i82, 28
  %rem.i.i84 = and i32 %add.i.i83, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i84)
  %tobool.not.i.i85 = icmp eq i32 %rem.i.i84, 0
  %25 = add nuw nsw i32 %conv.i.i82, 36
  %add1.i.i86 = sub nuw nsw i32 %25, %rem.i.i84
  %off.0.i.i87 = select i1 %tobool.not.i.i85, i32 %add.i.i83, i32 %add1.i.i86
  %od_node.i.i88 = getelementptr inbounds %struct.befs_btree_node, ptr %node, i32 0, i32 2
  %26 = ptrtoint ptr %od_node.i.i88 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %od_node.i.i88, align 4
  %add.ptr.i.i89 = getelementptr i8, ptr %27, i32 %off.0.i.i87
  %mul.i = shl nuw nsw i32 %conv, 1
  %add.ptr.i92 = getelementptr i8, ptr %add.ptr.i.i89, i32 %mul.i
  br i1 %cmp1.i, label %if.end.if.end31_crit_edge, label %while.body.lr.ph

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

while.body.lr.ph:                                 ; preds = %if.end
  %s_fs_info.i.i.i113 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  br label %while.body

while.body:                                       ; preds = %if.end15.while.body_crit_edge, %while.body.lr.ph
  %last.0149 = phi i32 [ %sub, %while.body.lr.ph ], [ %last.1, %if.end15.while.body_crit_edge ]
  %first.0148 = phi i32 [ 0, %while.body.lr.ph ], [ %first.1, %if.end15.while.body_crit_edge ]
  %add = add i32 %last.0149, %first.0148
  %div = sdiv i32 %add, 2
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.21, i32 noundef %first.0148, i32 noundef %last.0149, i32 noundef %div) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add)
  %cmp.i93 = icmp slt i32 %add, -1
  br i1 %cmp.i93, label %while.body.befs_bt_get_key.exit129_crit_edge, label %lor.lhs.false.i97

while.body.befs_bt_get_key.exit129_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %befs_bt_get_key.exit129

lor.lhs.false.i97:                                ; preds = %while.body
  %28 = ptrtoint ptr %all_key_count to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %all_key_count, align 4
  %conv.i95 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %conv.i95)
  %cmp1.i96 = icmp ugt i32 %div, %conv.i95
  br i1 %cmp1.i96, label %lor.lhs.false.i97.befs_bt_get_key.exit129_crit_edge, label %if.end.i110

lor.lhs.false.i97.befs_bt_get_key.exit129_crit_edge: ; preds = %lor.lhs.false.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %befs_bt_get_key.exit129

if.end.i110:                                      ; preds = %lor.lhs.false.i97
  %30 = ptrtoint ptr %od_node.i.i88 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %od_node.i.i88, align 4
  %add.ptr.i.i100 = getelementptr i8, ptr %31, i32 28
  %32 = ptrtoint ptr %all_key_length.i.i81 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %all_key_length.i.i81, align 2
  %conv.i.i102 = zext i16 %33 to i32
  %add.i.i103 = add nuw nsw i32 %conv.i.i102, 28
  %rem.i.i104 = and i32 %add.i.i103, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i104)
  %tobool.not.i.i105 = icmp eq i32 %rem.i.i104, 0
  %34 = add nuw nsw i32 %conv.i.i102, 36
  %add1.i.i106 = sub nuw nsw i32 %34, %rem.i.i104
  %off.0.i.i107 = select i1 %tobool.not.i.i105, i32 %add.i.i103, i32 %add1.i.i106
  %add.ptr.i28.i108 = getelementptr i8, ptr %31, i32 %off.0.i.i107
  %add.off = add i32 %add, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add.off)
  %35 = icmp ult i32 %add.off, 3
  br i1 %35, label %if.end.i110.if.end9.i127_crit_edge, label %if.else.i118

if.end.i110.if.end9.i127_crit_edge:               ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i127

if.else.i118:                                     ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i111 = add nsw i32 %div, -1
  %arrayidx.i112 = getelementptr i16, ptr %add.ptr.i28.i108, i32 %sub.i111
  %36 = ptrtoint ptr %arrayidx.i112 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.i112, align 2
  %38 = ptrtoint ptr %s_fs_info.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_fs_info.i.i.i113, align 16
  %byte_order.i.i114 = getelementptr inbounds %struct.befs_sb_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %byte_order.i.i114 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %byte_order.i.i114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp.i.i115 = icmp eq i32 %41, 1
  %42 = tail call i16 @llvm.bswap.i16(i16 %37) #7
  %retval.0.i.i116 = select i1 %cmp.i.i115, i16 %42, i16 %37
  %conv8.i117 = zext i16 %retval.0.i.i116 to i32
  br label %if.end9.i127

if.end9.i127:                                     ; preds = %if.else.i118, %if.end.i110.if.end9.i127_crit_edge
  %prev_key_end.0.i119 = phi i32 [ %conv8.i117, %if.else.i118 ], [ 0, %if.end.i110.if.end9.i127_crit_edge ]
  %arrayidx10.i120 = getelementptr i16, ptr %add.ptr.i28.i108, i32 %div
  %43 = ptrtoint ptr %arrayidx10.i120 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx10.i120, align 2
  %45 = ptrtoint ptr %s_fs_info.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_fs_info.i.i.i113, align 16
  %byte_order.i30.i122 = getelementptr inbounds %struct.befs_sb_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %byte_order.i30.i122 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %byte_order.i30.i122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp.i31.i123 = icmp eq i32 %48, 1
  %49 = tail call i16 @llvm.bswap.i16(i16 %44) #7
  %retval.0.i32.i124 = select i1 %cmp.i31.i123, i16 %49, i16 %44
  %50 = trunc i32 %prev_key_end.0.i119 to i16
  %conv14.i125 = sub i16 %retval.0.i32.i124, %50
  %add.ptr.i126 = getelementptr i8, ptr %add.ptr.i.i100, i32 %prev_key_end.0.i119
  br label %befs_bt_get_key.exit129

befs_bt_get_key.exit129:                          ; preds = %if.end9.i127, %lor.lhs.false.i97.befs_bt_get_key.exit129_crit_edge, %while.body.befs_bt_get_key.exit129_crit_edge
  %keylen.1 = phi i16 [ %conv14.i125, %if.end9.i127 ], [ 0, %lor.lhs.false.i97.befs_bt_get_key.exit129_crit_edge ], [ 0, %while.body.befs_bt_get_key.exit129_crit_edge ]
  %retval.0.i128 = phi ptr [ %add.ptr.i126, %if.end9.i127 ], [ null, %lor.lhs.false.i97.befs_bt_get_key.exit129_crit_edge ], [ null, %while.body.befs_bt_get_key.exit129_crit_edge ]
  %conv9 = zext i16 %keylen.1 to i32
  %51 = tail call i32 @llvm.smin.i32(i32 %conv9, i32 %call) #7
  %call.i130 = tail call i32 @strncmp(ptr noundef %retval.0.i128, ptr noundef %findkey, i32 noundef %51) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %cmp1.i131 = icmp eq i32 %call.i130, 0
  %sub.i132 = sub i32 %conv9, %call
  %result.0.i133 = select i1 %cmp1.i131, i32 %sub.i132, i32 %call.i130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i133)
  %cmp11 = icmp eq i32 %result.0.i133, 0
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %befs_bt_get_key.exit129
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.befs_find_key, ptr noundef %retval.0.i128, i32 noundef %div) #7
  %arrayidx = getelementptr i64, ptr %add.ptr.i92, i32 %div
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx, align 8
  %54 = ptrtoint ptr %s_fs_info.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_fs_info.i.i.i113, align 16
  %byte_order.i = getelementptr inbounds %struct.befs_sb_info, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp.i134 = icmp eq i32 %57, 1
  %58 = tail call i64 @llvm.bswap.i64(i64 %53) #7
  %retval.0.i135 = select i1 %cmp.i134, i64 %58, i64 %53
  %59 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %retval.0.i135, ptr %value, align 8
  br label %cleanup

if.end15:                                         ; preds = %befs_bt_get_key.exit129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i133)
  %cmp16 = icmp sgt i32 %result.0.i133, 0
  %sub19 = add nsw i32 %div, -1
  %add20 = add nsw i32 %div, 1
  %first.1 = select i1 %cmp16, i32 %first.0148, i32 %add20
  %last.1 = select i1 %cmp16, i32 %sub19, i32 %last.0149
  %cmp6.not = icmp slt i32 %last.1, %first.1
  br i1 %cmp6.not, label %while.end, label %if.end15.while.body_crit_edge

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %result.0.i133.lobit = lshr i32 %result.0.i133, 31
  %spec.select = add nsw i32 %div, %result.0.i133.lobit
  br label %if.end31

if.end31:                                         ; preds = %while.end, %if.end.if.end31_crit_edge
  %mid.0.lcssa157.sink = phi i32 [ 0, %if.end.if.end31_crit_edge ], [ %spec.select, %while.end ]
  %arrayidx29 = getelementptr i64, ptr %add.ptr.i92, i32 %mid.0.lcssa157.sink
  %60 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %arrayidx29, align 8
  %s_fs_info.i.i140 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %62 = ptrtoint ptr %s_fs_info.i.i140 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_fs_info.i.i140, align 16
  %byte_order.i141 = getelementptr inbounds %struct.befs_sb_info, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %byte_order.i141 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %byte_order.i141, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp.i142 = icmp eq i32 %65, 1
  %66 = tail call i64 @llvm.bswap.i64(i64 %61) #7
  %retval.0.i143 = select i1 %cmp.i142, i64 %66, i64 %61
  %67 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %retval.0.i143, ptr %value, align 8
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.befs_find_key, ptr noundef %findkey) #7
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.befs_find_key) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then13, %if.then
  %retval.0 = phi i32 [ 6, %if.then ], [ 5, %if.then13 ], [ 7, %if.end31 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @befs_btree_read(ptr noundef %sb, ptr noundef %ds, i64 noundef %key_no, i32 noundef %bufsize, ptr noundef %keybuf, ptr nocapture noundef writeonly %keysize, ptr nocapture noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %bt_super = alloca %struct.befs_btree_super, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %bt_super) #7
  %0 = call ptr @memset(ptr %bt_super, i32 255, i32 40)
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.befs_btree_read) #7
  %call = call fastcc i32 @befs_bt_read_super(ptr noundef %sb, ptr noundef %ds, ptr noundef nonnull %bt_super)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.8) #7
  br label %error

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3136, i32 noundef 36) #10
  %cmp2 = icmp eq ptr %call7.i, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.9, i32 noundef 36) #7
  br label %error

if.end4:                                          ; preds = %if.end
  %root_node_ptr = getelementptr inbounds %struct.befs_btree_super, ptr %bt_super, i32 0, i32 4
  %2 = ptrtoint ptr %root_node_ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %root_node_ptr, align 1
  %bh = getelementptr inbounds %struct.befs_btree_node, ptr %call7.i, i32 0, i32 1
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bh, align 4
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.befs_btree_seekleaf) #7
  %call.i = tail call fastcc i32 @befs_bt_read_node(ptr noundef %sb, ptr noundef %ds, ptr noundef nonnull %call7.i, i64 noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end4.befs_btree_seekleaf.exit.thread167_crit_edge

if.end4.befs_btree_seekleaf.exit.thread167_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %befs_btree_seekleaf.exit.thread167

if.end.i:                                         ; preds = %if.end4
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.24, i64 noundef %3) #7
  %all_key_count.i = getelementptr inbounds %struct.befs_host_btree_nodehead, ptr %call7.i, i32 0, i32 3
  %5 = ptrtoint ptr %all_key_count.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %all_key_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp1.i = icmp eq i16 %6, 0
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %overflow.i.i = getelementptr inbounds %struct.befs_host_btree_nodehead, ptr %call7.i, i32 0, i32 2
  %7 = ptrtoint ptr %overflow.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %overflow.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %8)
  %cmp.i.not.i = icmp eq i64 %8, -1
  br i1 %cmp.i.not.i, label %if.then7, label %land.lhs.true.i.if.end5.i_crit_edge

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %land.lhs.true.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %overflow.i1.i = getelementptr inbounds %struct.befs_host_btree_nodehead, ptr %call7.i, i32 0, i32 2
  %9 = ptrtoint ptr %overflow.i1.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %overflow.i1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %10)
  %cmp.i2.not5.i = icmp eq i64 %10, -1
  br i1 %cmp.i2.not5.i, label %if.end5.i.befs_btree_seekleaf.exit_crit_edge, label %while.body.lr.ph.i

if.end5.i.befs_btree_seekleaf.exit_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %befs_btree_seekleaf.exit

while.body.lr.ph.i:                               ; preds = %if.end5.i
  %all_key_length.i.i.i = getelementptr inbounds %struct.befs_host_btree_nodehead, ptr %call7.i, i32 0, i32 4
  %od_node.i.i.i = getelementptr inbounds %struct.befs_btree_node, ptr %call7.i, i32 0, i32 2
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  br label %while.body.i

while.body.i:                                     ; preds = %if.end24.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %node_off.0 = phi i64 [ %3, %while.body.lr.ph.i ], [ %storemerge.i, %if.end24.i.while.body.i_crit_edge ]
  %11 = phi i64 [ %10, %while.body.lr.ph.i ], [ %29, %if.end24.i.while.body.i_crit_edge ]
  %12 = ptrtoint ptr %all_key_count.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %all_key_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp11.i = icmp eq i16 %13, 0
  br i1 %cmp11.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.befs_btree_seekleaf, i64 noundef %node_off.0, i64 noundef %11) #7
  %14 = ptrtoint ptr %overflow.i1.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %overflow.i1.i, align 8
  br label %if.end19.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %all_key_length.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %all_key_length.i.i.i, align 2
  %conv.i.i.i = zext i16 %17 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 28
  %rem.i.i.i = and i32 %add.i.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %rem.i.i.i, 0
  %18 = add nuw nsw i32 %conv.i.i.i, 36
  %add1.i.i.i = sub nuw nsw i32 %18, %rem.i.i.i
  %off.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %add.i.i.i, i32 %add1.i.i.i
  %19 = ptrtoint ptr %od_node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %od_node.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 %off.0.i.i.i
  %conv.i.i = zext i16 %13 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 1
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr.i.i, align 8
  %23 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %byte_order.i.i = getelementptr inbounds %struct.befs_sb_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %byte_order.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %byte_order.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i4.i = icmp eq i32 %26, 1
  %27 = tail call i64 @llvm.bswap.i64(i64 %22) #7
  %retval.0.i.i = select i1 %cmp.i4.i, i64 %27, i64 %22
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i, %if.then13.i
  %storemerge.i = phi i64 [ %retval.0.i.i, %if.else.i ], [ %15, %if.then13.i ]
  %call20.i = tail call fastcc i32 @befs_bt_read_node(ptr noundef %sb, ptr noundef %ds, ptr noundef nonnull %call7.i, i64 noundef %storemerge.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.not.i = icmp eq i32 %call20.i, 0
  br i1 %cmp21.not.i, label %if.end24.i, label %if.end19.i.befs_btree_seekleaf.exit.thread167_crit_edge

if.end19.i.befs_btree_seekleaf.exit.thread167_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %befs_btree_seekleaf.exit.thread167

if.end24.i:                                       ; preds = %if.end19.i
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.26, i64 noundef %storemerge.i) #7
  %28 = ptrtoint ptr %overflow.i1.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %overflow.i1.i, align 8
  %cmp.i2.not.i = icmp eq i64 %29, -1
  br i1 %cmp.i2.not.i, label %if.end24.i.befs_btree_seekleaf.exit_crit_edge, label %if.end24.i.while.body.i_crit_edge

if.end24.i.while.body.i_crit_edge:                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end24.i.befs_btree_seekleaf.exit_crit_edge:    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %befs_btree_seekleaf.exit

befs_btree_seekleaf.exit.thread167:               ; preds = %if.end19.i.befs_btree_seekleaf.exit.thread167_crit_edge, %if.end4.befs_btree_seekleaf.exit.thread167_crit_edge
  %.sink.i = phi i64 [ %3, %if.end4.befs_btree_seekleaf.exit.thread167_crit_edge ], [ %storemerge.i, %if.end19.i.befs_btree_seekleaf.exit.thread167_crit_edge ]
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.befs_btree_seekleaf, i64 noundef %.sink.i) #7
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.befs_btree_seekleaf) #7
  br label %error_alloc

befs_btree_seekleaf.exit:                         ; preds = %if.end24.i.befs_btree_seekleaf.exit_crit_edge, %if.end5.i.befs_btree_seekleaf.exit_crit_edge
  %node_off.1 = phi i64 [ %3, %if.end5.i.befs_btree_seekleaf.exit_crit_edge ], [ %storemerge.i, %if.end24.i.befs_btree_seekleaf.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.27, i64 noundef %node_off.1) #7
  %30 = ptrtoint ptr %all_key_count.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %all_key_count.i, align 8
  %conv13182 = zext i16 %31 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv13182, i64 %key_no)
  %cmp14.not183 = icmp sgt i64 %conv13182, %key_no
  %.pre = zext i16 %31 to i32
  br i1 %cmp14.not183, label %befs_btree_seekleaf.exit.while.end_crit_edge, label %while.body.lr.ph

befs_btree_seekleaf.exit.while.end_crit_edge:     ; preds = %befs_btree_seekleaf.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %befs_btree_seekleaf.exit
  %right = getelementptr inbounds %struct.befs_host_btree_nodehead, ptr %call7.i, i32 0, i32 1
  %32 = ptrtoint ptr %right to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %right, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %33)
  %cmp17221 = icmp eq i64 %33, -1
  br i1 %cmp17221, label %while.body.lr.ph.if.then19_crit_edge, label %while.body.lr.ph.if.end26_crit_edge

while.body.lr.ph.if.end26_crit_edge:              ; preds = %while.body.lr.ph
  br label %if.end26

while.body.lr.ph.if.then19_crit_edge:             ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.then7:                                         ; preds = %land.lhs.true.i
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.befs_btree_seekleaf) #7
  %34 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %if.then7.brelse.exit_crit_edge, label %if.then.i

if.then7.brelse.exit_crit_edge:                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %35) #7
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.then7.brelse.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  %36 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 0, ptr %value, align 8
  %37 = ptrtoint ptr %keysize to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %keysize, align 4
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.befs_btree_read) #7
  br label %cleanup

while.cond:                                       ; preds = %if.end26
  %38 = ptrtoint ptr %all_key_count.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %all_key_count.i, align 8
  %conv = zext i16 %39 to i32
  %add = add i32 %add185222, %conv
  %conv13 = zext i32 %add to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv13, i64 %key_no)
  %cmp14.not = icmp sgt i64 %conv13, %key_no
  br i1 %cmp14.not, label %while.end.loopexit, label %while.body

while.body:                                       ; preds = %while.cond
  %40 = ptrtoint ptr %right to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %right, align 8
  %cmp17 = icmp eq i64 %41, -1
  br i1 %cmp17, label %while.body.if.then19_crit_edge, label %while.body.if.end26_crit_edge

while.body.if.end26_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

while.body.if.then19_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.then19:                                        ; preds = %while.body.if.then19_crit_edge, %while.body.lr.ph.if.then19_crit_edge
  %.lcssa214 = phi i16 [ %31, %while.body.lr.ph.if.then19_crit_edge ], [ %39, %while.body.if.then19_crit_edge ]
  %key_sum.0184.lcssa = phi i32 [ 0, %while.body.lr.ph.if.then19_crit_edge ], [ %add185222, %while.body.if.then19_crit_edge ]
  %42 = ptrtoint ptr %keysize to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %keysize, align 4
  %43 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 0, ptr %value, align 8
  %conv20 = zext i32 %key_sum.0184.lcssa to i64
  %conv23 = zext i16 %.lcssa214 to i64
  %add24 = add nuw nsw i64 %conv23, %conv20
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.befs_btree_read, i64 noundef %add24) #7
  %44 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bh, align 4
  %tobool.not.i119 = icmp eq ptr %45, null
  br i1 %tobool.not.i119, label %if.then19.brelse.exit122_crit_edge, label %if.then.i120

if.then19.brelse.exit122_crit_edge:               ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit122

if.then.i120:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %45) #7
  br label %brelse.exit122

brelse.exit122:                                   ; preds = %if.then.i120, %if.then19.brelse.exit122_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

if.end26:                                         ; preds = %while.body.if.end26_crit_edge, %while.body.lr.ph.if.end26_crit_edge
  %46 = phi i64 [ %41, %while.body.if.end26_crit_edge ], [ %33, %while.body.lr.ph.if.end26_crit_edge ]
  %add185222 = phi i32 [ %add, %while.body.if.end26_crit_edge ], [ %.pre, %while.body.lr.ph.if.end26_crit_edge ]
  %call33 = tail call fastcc i32 @befs_bt_read_node(ptr noundef %sb, ptr noundef %ds, ptr noundef nonnull %call7.i, i64 noundef %46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34.not = icmp eq i32 %call33, 0
  br i1 %cmp34.not, label %while.cond, label %if.then36

if.then36:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.befs_btree_read, i64 noundef %46) #7
  br label %error_alloc

while.end.loopexit:                               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %conv.le = zext i16 %39 to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %befs_btree_seekleaf.exit.while.end_crit_edge
  %conv.le.pre-phi = phi i32 [ %conv.le, %while.end.loopexit ], [ %.pre, %befs_btree_seekleaf.exit.while.end_crit_edge ]
  %node_off.4.lcssa = phi i64 [ %46, %while.end.loopexit ], [ %node_off.1, %befs_btree_seekleaf.exit.while.end_crit_edge ]
  %key_sum.0.lcssa = phi i32 [ %add185222, %while.end.loopexit ], [ 0, %befs_btree_seekleaf.exit.while.end_crit_edge ]
  %47 = trunc i64 %key_no to i32
  %conv39 = sub i32 %47, %key_sum.0.lcssa
  %all_key_length.i.i = getelementptr inbounds %struct.befs_host_btree_nodehead, ptr %call7.i, i32 0, i32 4
  %48 = ptrtoint ptr %all_key_length.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %all_key_length.i.i, align 2
  %conv.i.i123 = zext i16 %49 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i123, 28
  %rem.i.i = and i32 %add.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  %50 = add nuw nsw i32 %conv.i.i123, 36
  %add1.i.i = sub nuw nsw i32 %50, %rem.i.i
  %off.0.i.i = select i1 %tobool.not.i.i, i32 %add.i.i, i32 %add1.i.i
  %od_node.i.i = getelementptr inbounds %struct.befs_btree_node, ptr %call7.i, i32 0, i32 2
  %51 = ptrtoint ptr %od_node.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %od_node.i.i, align 8
  %add.ptr.i.i124 = getelementptr i8, ptr %52, i32 %off.0.i.i
  %mul.i = shl nuw nsw i32 %conv.le.pre-phi, 1
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i124, i32 %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv39)
  %cmp.i = icmp slt i32 %conv39, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %conv39, i32 %conv.le.pre-phi)
  %cmp1.i128 = icmp ugt i32 %conv39, %conv.le.pre-phi
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp1.i128
  br i1 %or.cond, label %while.end.befs_bt_get_key.exit_crit_edge, label %if.end.i139

while.end.befs_bt_get_key.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %befs_bt_get_key.exit

if.end.i139:                                      ; preds = %while.end
  %add.ptr.i.i131 = getelementptr i8, ptr %52, i32 28
  call void @__sanitizer_cov_trace_cmp4(i32 %key_sum.0.lcssa, i32 %47)
  %cmp4.i = icmp eq i32 %key_sum.0.lcssa, %47
  br i1 %cmp4.i, label %if.end.i139.if.end9.i_crit_edge, label %if.else.i143

if.end.i139.if.end9.i_crit_edge:                  ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.else.i143:                                     ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add nsw i32 %conv39, -1
  %arrayidx.i = getelementptr i16, ptr %add.ptr.i.i124, i32 %sub.i
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx.i, align 2
  %s_fs_info.i.i.i140 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %55 = ptrtoint ptr %s_fs_info.i.i.i140 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_fs_info.i.i.i140, align 16
  %byte_order.i.i141 = getelementptr inbounds %struct.befs_sb_info, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %byte_order.i.i141 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %byte_order.i.i141, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp.i.i = icmp eq i32 %58, 1
  %59 = tail call i16 @llvm.bswap.i16(i16 %54) #7
  %retval.0.i.i142 = select i1 %cmp.i.i, i16 %59, i16 %54
  %conv8.i = zext i16 %retval.0.i.i142 to i32
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i143, %if.end.i139.if.end9.i_crit_edge
  %prev_key_end.0.i = phi i32 [ %conv8.i, %if.else.i143 ], [ 0, %if.end.i139.if.end9.i_crit_edge ]
  %arrayidx10.i = getelementptr i16, ptr %add.ptr.i.i124, i32 %conv39
  %60 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx10.i, align 2
  %s_fs_info.i.i29.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %62 = ptrtoint ptr %s_fs_info.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_fs_info.i.i29.i, align 16
  %byte_order.i30.i = getelementptr inbounds %struct.befs_sb_info, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %byte_order.i30.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %byte_order.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp.i31.i = icmp eq i32 %65, 1
  %66 = tail call i16 @llvm.bswap.i16(i16 %61) #7
  %retval.0.i32.i = select i1 %cmp.i31.i, i16 %66, i16 %61
  %67 = trunc i32 %prev_key_end.0.i to i16
  %conv14.i = sub i16 %retval.0.i32.i, %67
  %add.ptr.i144 = getelementptr i8, ptr %add.ptr.i.i131, i32 %prev_key_end.0.i
  %phi.cast = zext i16 %conv14.i to i32
  br label %befs_bt_get_key.exit

befs_bt_get_key.exit:                             ; preds = %if.end9.i, %while.end.befs_bt_get_key.exit_crit_edge
  %keylen.0 = phi i32 [ %phi.cast, %if.end9.i ], [ 0, %while.end.befs_bt_get_key.exit_crit_edge ]
  %retval.0.i145 = phi ptr [ %add.ptr.i144, %if.end9.i ], [ null, %while.end.befs_bt_get_key.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.13, i64 noundef %node_off.4.lcssa, i32 noundef %conv39, i32 noundef %keylen.0) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %keylen.0, i32 %bufsize)
  %cmp45.not = icmp ult i32 %keylen.0, %bufsize
  br i1 %cmp45.not, label %if.end50, label %if.then47

if.then47:                                        ; preds = %befs_bt_get_key.exit
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.befs_btree_read, i32 noundef %bufsize, i32 noundef %keylen.0) #7
  %68 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bh, align 4
  %tobool.not.i146 = icmp eq ptr %69, null
  br i1 %tobool.not.i146, label %if.then47.error_alloc_crit_edge, label %if.then.i147

if.then47.error_alloc_crit_edge:                  ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_alloc

if.then.i147:                                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %69) #7
  br label %error_alloc

if.end50:                                         ; preds = %befs_bt_get_key.exit
  %add44 = add nuw nsw i32 %keylen.0, 1
  %call53 = tail call i32 @strlcpy(ptr noundef %keybuf, ptr noundef %retval.0.i145, i32 noundef %add44) #7
  %arrayidx = getelementptr i64, ptr %add.ptr.i, i32 %conv39
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arrayidx, align 8
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %72 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i = getelementptr inbounds %struct.befs_sb_info, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp.i150 = icmp eq i32 %75, 1
  %76 = tail call i64 @llvm.bswap.i64(i64 %71) #7
  %retval.0.i151 = select i1 %cmp.i150, i64 %76, i64 %71
  %77 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %retval.0.i151, ptr %value, align 8
  %78 = ptrtoint ptr %keysize to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %keylen.0, ptr %keysize, align 4
  %79 = load i64, ptr %value, align 8
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.15, i64 noundef %node_off.4.lcssa, i32 noundef %conv39, i32 noundef %keylen.0, ptr noundef %keybuf, i64 noundef %79) #7
  %80 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bh, align 4
  %tobool.not.i152 = icmp eq ptr %81, null
  br i1 %tobool.not.i152, label %if.end50.brelse.exit155_crit_edge, label %if.then.i153

if.end50.brelse.exit155_crit_edge:                ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit155

if.then.i153:                                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %81) #7
  br label %brelse.exit155

brelse.exit155:                                   ; preds = %if.then.i153, %if.end50.brelse.exit155_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.befs_btree_read) #7
  br label %cleanup

error_alloc:                                      ; preds = %if.then.i147, %if.then47.error_alloc_crit_edge, %if.then36, %befs_btree_seekleaf.exit.thread167
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %error

error:                                            ; preds = %error_alloc, %if.then3, %if.then
  %82 = ptrtoint ptr %keysize to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %keysize, align 4
  %83 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 0, ptr %value, align 8
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.befs_btree_read) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %brelse.exit155, %brelse.exit122, %brelse.exit
  %retval.0 = phi i32 [ 1, %error ], [ 4, %brelse.exit ], [ 3, %brelse.exit122 ], [ 0, %brelse.exit155 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %bt_super) #7
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @befs_read_datastream(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @befs_dump_index_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @befs_dump_index_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/befs/btree.c", i32 253, i32 17}
!2 = !{ptr @__func__.befs_btree_find, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/befs/btree.c", i32 253, i32 36}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/befs/btree.c", i32 257, i32 7}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/befs/btree.c", i32 264, i32 18}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/befs/btree.c", i32 274, i32 18}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/befs/btree.c", i32 298, i32 18}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/befs/btree.c", i32 299, i32 18}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/befs/btree.c", i32 303, i32 17}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/befs/btree.c", i32 426, i32 17}
!18 = !{ptr @__func__.befs_btree_read, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/befs/btree.c", i32 426, i32 28}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/befs/btree.c", i32 430, i32 7}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/befs/btree.c", i32 436, i32 18}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/befs/btree.c", i32 451, i32 18}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/befs/btree.c", i32 466, i32 8}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/befs/btree.c", i32 478, i32 19}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/befs/btree.c", i32 492, i32 17}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/befs/btree.c", i32 497, i32 18}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/befs/btree.c", i32 507, i32 17}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/befs/btree.c", i32 513, i32 17}
!38 = !{ptr @__func__.befs_bt_read_super, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/befs/btree.c", i32 140, i32 28}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/befs/btree.c", i32 145, i32 18}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/befs/btree.c", i32 159, i32 18}
!44 = !{ptr @__func__.befs_bt_read_node, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/befs/btree.c", i32 196, i32 28}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/befs/btree.c", i32 340, i32 17}
!48 = !{ptr @__func__.befs_find_key, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/befs/btree.c", i32 340, i32 31}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/befs/btree.c", i32 350, i32 18}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/befs/btree.c", i32 361, i32 18}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/befs/btree.c", i32 368, i32 19}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/befs/btree.c", i32 385, i32 17}
!58 = !{ptr @__func__.befs_btree_seekleaf, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/befs/btree.c", i32 548, i32 28}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/befs/btree.c", i32 555, i32 17}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/befs/btree.c", i32 565, i32 19}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/befs/btree.c", i32 580, i32 18}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/befs/btree.c", i32 582, i32 17}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
