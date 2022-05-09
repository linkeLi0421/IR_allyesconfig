; ModuleID = '/llk/IR_all_yes/fs/befs/datastream.c_pt.bc'
source_filename = "../fs/befs/datastream.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.befs_block_run = type { i32, i16, i16 }
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
%struct.befs_sb_info = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.befs_block_run, i64, i64, %struct.befs_block_run, %struct.befs_block_run, i32, %struct.befs_mount_options, ptr }
%struct.befs_mount_options = type { %struct.kgid_t, %struct.kuid_t, i32, i32, i32, ptr }
%struct.kgid_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.befs_data_stream = type { [12 x %struct.befs_block_run], i64, %struct.befs_block_run, i64, %struct.befs_block_run, i64, i64 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.befs_disk_block_run = type { i32, i16, i16 }

@BAD_IADDR = dso_local constant { %struct.befs_block_run, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"---> %s %llu\00", [19 x i8] zeroinitializer }, align 32
@__func__.befs_read_datastream = private unnamed_addr constant [21 x i8] c"befs_read_datastream\00", align 1
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"BeFS: Error finding disk addr of block %lu\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"<--- %s ERROR\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"BeFS: Error reading block %lu from datastream\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"<--- %s read data, starting at %llu\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"befs_fblock2brun() was asked to find block %lu, which is not mapped by the datastream\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"---> %s length: %llu\00", [43 x i8] zeroinitializer }, align 32
@__func__.befs_read_lsymlink = private unnamed_addr constant [19 x i8] c"befs_read_lsymlink\00", align 1
@.str.7 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"BeFS: Error reading datastream block starting from %llu\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"<--- %s read %u bytes\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"---> %s\00", [24 x i8] zeroinitializer }, align 32
@__func__.befs_count_blocks = private unnamed_addr constant [18 x i8] c"befs_count_blocks\00", align 1
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"<--- %s %u blocks\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"---> %s, find %lu\00", [46 x i8] zeroinitializer }, align 32
@__func__.befs_find_brun_direct = private unnamed_addr constant [22 x i8] c"befs_find_brun_direct\00", align 1
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"---> %s, found %lu at direct[%d]\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s failed to find file block %lu\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"---> %s ERROR\00", [18 x i8] zeroinitializer }, align 32
@__func__.befs_find_brun_indirect = private unnamed_addr constant [24 x i8] c"befs_find_brun_indirect\00", align 1
@.str.15 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"---> %s failed to read disk block %lu from the indirect brun\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"<--- %s found file block %lu at indirect[%d]\00", [51 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"BeFS: %s failed to find file block %lu\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"---> %s find %lu\00", [47 x i8] zeroinitializer }, align 32
@__func__.befs_find_brun_dblindirect = private unnamed_addr constant [27 x i8] c"befs_find_brun_dblindirect\00", align 1
@.str.19 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"The double-indirect index calculated by %s, %d, is outside the range of the double-indirect block\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s couldn't read the double-indirect block at blockno %lu\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s couldn't read the indirect block at blockno %lu\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Found file block %lu in double_indirect[%d][%d], double_indirect_leftover = %lu\00", [48 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant [10 x i8] c"BAD_IADDR\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 22, i32 23 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 56, i32 17 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 62, i32 18 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 64, i32 18 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 69, i32 18 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 74, i32 17 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 112, i32 7 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 137, i32 17 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 142, i32 19 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 155, i32 17 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 179, i32 17 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 216, i32 17 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 258, i32 17 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 269, i32 19 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 276, i32 17 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 278, i32 17 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 330, i32 19 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 353, i32 9 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 366, i32 17 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 449, i32 17 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 464, i32 18 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 475, i32 18 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 501, i32 18 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [24 x i8] c"../fs/befs/datastream.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 520, i32 17 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @BAD_IADDR, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BAD_IADDR to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @befs_read_datastream(ptr noundef %sb, ptr nocapture noundef readonly %ds, i64 noundef %pos, ptr noundef writeonly %off) local_unnamed_addr #0 align 64 {
entry:
  %run = alloca %struct.befs_block_run, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %run) #4
  %0 = getelementptr inbounds %struct.befs_block_run, ptr %run, i32 0, i32 1
  %1 = ptrtoint ptr %run to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %run, align 8
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.befs_read_datastream, i64 noundef %pos) #4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %block_shift = getelementptr inbounds %struct.befs_sb_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %block_shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %block_shift, align 8
  %sh_prom = zext i32 %5 to i64
  %shr = lshr i64 %pos, %sh_prom
  %tobool.not = icmp eq ptr %off, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %shl = shl i64 %shr, %sh_prom
  %sub = sub i64 %pos, %shl
  %conv = trunc i64 %sub to i32
  %6 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %off, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = call i32 @befs_fblock2brun(ptr noundef %sb, ptr noundef %ds, i64 noundef %shr, ptr noundef nonnull %run)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv7 = trunc i64 %shr to i32
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.1, i32 noundef %conv7) #4
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.befs_read_datastream) #4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %7 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %7)
  %.fca.0.load = load i32, ptr %run, align 8
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %.fca.0.load, 0
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.fca.1.load = load i32, ptr %0, align 4
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %call9 = tail call ptr @befs_bread_iaddr(ptr noundef %sb, [2 x i32] %.fca.1.insert) #4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %conv12 = trunc i64 %shr to i32
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.3, i32 noundef %conv12) #4
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.befs_read_datastream, i64 noundef %pos) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then11, %if.then6
  %retval.0 = phi ptr [ null, %if.then6 ], [ %call9, %if.end13 ], [ null, %if.then11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %run) #4
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @befs_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @befs_fblock2brun(ptr noundef %sb, ptr nocapture noundef readonly %data, i64 noundef %fblock, ptr nocapture noundef %run) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %block_shift = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %block_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %block_shift, align 8
  %sh_prom = zext i32 %3 to i64
  %shl = shl i64 %fblock, %sh_prom
  %max_direct_range = getelementptr inbounds %struct.befs_data_stream, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %max_direct_range to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %max_direct_range, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %5)
  %cmp = icmp ult i64 %shl, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %conv.i = trunc i64 %fblock to i32
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.befs_find_brun_direct, i32 noundef %conv.i) #4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then
  %sum.058.i = phi i64 [ 0, %if.then ], [ %add25.i, %for.inc.i.for.body.i_crit_edge ]
  %i.056.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %sum.058.i, i64 %fblock)
  %cmp2.not.i = icmp ugt i64 %sum.058.i, %fblock
  br i1 %cmp2.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %len.i = getelementptr %struct.befs_block_run, ptr %data, i32 %i.056.i, i32 2
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %len.i, align 1
  %conv4.i = zext i16 %7 to i64
  %add.i = add i64 %sum.058.i, %conv4.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %fblock)
  %cmp5.i = icmp ugt i64 %add.i, %fblock
  br i1 %cmp5.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr %struct.befs_block_run, ptr %data, i32 %i.056.i
  %sub.i = sub i64 %fblock, %sum.058.i
  %conv7.i = trunc i64 %sub.i to i16
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %arrayidx.i, align 1
  %10 = ptrtoint ptr %run to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %run, align 1
  %start.i = getelementptr %struct.befs_block_run, ptr %data, i32 %i.056.i, i32 1
  %11 = ptrtoint ptr %start.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %start.i, align 1
  %conv13.i = add i16 %12, %conv7.i
  %start14.i = getelementptr inbounds %struct.befs_block_run, ptr %run, i32 0, i32 1
  %13 = ptrtoint ptr %start14.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %conv13.i, ptr %start14.i, align 1
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %len.i, align 1
  %sub18.i = sub i16 %15, %conv7.i
  %len20.i = getelementptr inbounds %struct.befs_block_run, ptr %run, i32 0, i32 2
  %16 = ptrtoint ptr %len20.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %sub18.i, ptr %len20.i, align 1
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.befs_find_brun_direct, i32 noundef %conv.i, i32 noundef %i.056.i) #4
  br label %if.end11

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %len23.i = getelementptr %struct.befs_block_run, ptr %data, i32 %i.056.i, i32 2
  %17 = ptrtoint ptr %len23.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %len23.i, align 1
  %conv24.i = zext i16 %18 to i64
  %add25.i = add i64 %sum.058.i, %conv24.i
  %inc.i = add nuw nsw i32 %i.056.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.befs_find_brun_direct, i32 noundef %conv.i) #4
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.befs_find_brun_direct) #4
  br label %if.end11

if.else:                                          ; preds = %entry
  %max_indirect_range = getelementptr inbounds %struct.befs_data_stream, ptr %data, i32 0, i32 3
  %19 = ptrtoint ptr %max_indirect_range to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %max_indirect_range, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %20)
  %cmp2 = icmp ult i64 %shl, %20
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %indirect1.i = getelementptr inbounds %struct.befs_data_stream, ptr %data, i32 0, i32 2
  %21 = ptrtoint ptr %indirect1.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %indirect1.i, align 1
  %indirect.sroa.0.0.extract.shift.i = lshr i64 %22, 32
  %indirect.sroa.0.0.extract.trunc.i = trunc i64 %indirect.sroa.0.0.extract.shift.i to i32
  %23 = trunc i64 %22 to i32
  %24 = lshr i32 %23, 16
  %ag_shift.i.i = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %ag_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ag_shift.i.i, align 4
  %shl.i.i = shl i32 %indirect.sroa.0.0.extract.trunc.i, %26
  %add.i.i = add i32 %shl.i.i, %24
  %conv1.i.i = zext i32 %add.i.i to i64
  %block_size.i.i = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %block_size.i.i, align 4
  %div1.i.i = lshr i32 %28, 3
  %conv.i29 = trunc i64 %fblock to i32
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.befs_find_brun_indirect, i32 noundef %conv.i29) #4
  %29 = ptrtoint ptr %max_direct_range to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %30 = load i64, ptr %max_direct_range, align 1
  %31 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i, align 16
  %block_shift.i = getelementptr inbounds %struct.befs_sb_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %block_shift.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %block_shift.i, align 8
  %sh_prom.i = zext i32 %34 to i64
  %shr.i = lshr i64 %30, %sh_prom.i
  %sub.i30 = sub i64 %fblock, %shr.i
  %conv4.i31 = and i32 %23, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4.i31)
  %cmp139.not.i = icmp eq i32 %conv4.i31, 0
  br i1 %cmp139.not.i, label %if.then3.for.end52.i_crit_edge, label %for.body.lr.ph.i

if.then3.for.end52.i_crit_edge:                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end52.i

for.body.lr.ph.i:                                 ; preds = %if.then3
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %28)
  %cmp13134.not.i = icmp ult i32 %28, 8
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div1.i.i, i32 1) #4
  br label %for.body.i33

for.body.i33:                                     ; preds = %brelse.exit124.i.for.body.i33_crit_edge, %for.body.lr.ph.i
  %i.0141.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc51.i, %brelse.exit124.i.for.body.i33_crit_edge ]
  %sum.0140.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %sum.1.lcssa.i, %brelse.exit124.i.for.body.i33_crit_edge ]
  %conv6.i = zext i32 %i.0141.i to i64
  %add.i32 = add nuw nsw i64 %conv6.i, %conv1.i.i
  %35 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_bdev.i.i, align 4
  %37 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %36, i64 noundef %add.i32, i32 noundef %38, i32 noundef 8) #4
  %cmp8.i = icmp eq ptr %call.i.i, null
  br i1 %cmp8.i, label %if.then.i34, label %if.end.i

if.then.i34:                                      ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #6
  %add11.i = add i32 %i.0141.i, %add.i.i
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.befs_find_brun_indirect, i32 noundef %add11.i) #4
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.befs_find_brun_indirect) #4
  br label %if.end11

if.end.i:                                         ; preds = %for.body.i33
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %b_data.i, align 4
  br i1 %cmp13134.not.i, label %if.end.i.brelse.exit124.i_crit_edge, label %for.body15.lr.ph.i

if.end.i.brelse.exit124.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit124.i

for.body15.lr.ph.i:                               ; preds = %if.end.i
  %41 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_fs_info.i, align 16
  %byte_order.i.i = getelementptr inbounds %struct.befs_sb_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %byte_order.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %byte_order.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp.i.i = icmp eq i32 %44, 1
  br label %for.body15.i

for.body15.i:                                     ; preds = %for.inc.i38.for.body15.i_crit_edge, %for.body15.lr.ph.i
  %sum.1137.i = phi i64 [ %sum.0140.i, %for.body15.lr.ph.i ], [ %.pre152.i, %for.inc.i38.for.body15.i_crit_edge ]
  %j.0135.i = phi i32 [ 0, %for.body15.lr.ph.i ], [ %inc.i36, %for.inc.i38.for.body15.i_crit_edge ]
  %len17.i = getelementptr %struct.befs_disk_block_run, ptr %40, i32 %j.0135.i, i32 2
  %45 = ptrtoint ptr %len17.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %len17.i, align 1
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #4
  %retval.0.i.i = select i1 %cmp.i.i, i16 %47, i16 %46
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i30, i64 %sum.1137.i)
  %cmp20.not.i = icmp uge i64 %sub.i30, %sum.1137.i
  %.pre.i = zext i16 %retval.0.i.i to i64
  %.pre152.i = add i64 %sum.1137.i, %.pre.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i30, i64 %.pre152.i)
  %cmp24.i = icmp ult i64 %sub.i30, %.pre152.i
  %or.cond.i = select i1 %cmp20.not.i, i1 %cmp24.i, i1 false
  br i1 %or.cond.i, label %cleanup.i, label %for.inc.i38

cleanup.i:                                        ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.le.i = getelementptr %struct.befs_disk_block_run, ptr %40, i32 %j.0135.i
  %sub27.i = sub i64 %sub.i30, %sum.1137.i
  %conv28.i = trunc i64 %sub27.i to i16
  %48 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %arrayidx.le.i, align 1
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #4
  %retval.0.i113.i = select i1 %cmp.i.i, i32 %50, i32 %49
  %51 = ptrtoint ptr %run to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %retval.0.i113.i, ptr %run, align 1
  %start.i35 = getelementptr %struct.befs_disk_block_run, ptr %40, i32 %j.0135.i, i32 1
  %52 = ptrtoint ptr %start.i35 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %start.i35, align 1
  %54 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_fs_info.i, align 16
  %byte_order.i115.i = getelementptr inbounds %struct.befs_sb_info, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %byte_order.i115.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %byte_order.i115.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp.i116.i = icmp eq i32 %57, 1
  %58 = tail call i16 @llvm.bswap.i16(i16 %53) #4
  %retval.0.i117.i = select i1 %cmp.i116.i, i16 %58, i16 %53
  %conv36.i = add i16 %retval.0.i117.i, %conv28.i
  %start37.i = getelementptr inbounds %struct.befs_block_run, ptr %run, i32 0, i32 1
  %59 = ptrtoint ptr %start37.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 %conv36.i, ptr %start37.i, align 1
  %60 = ptrtoint ptr %len17.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %len17.i, align 1
  %62 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_fs_info.i, align 16
  %byte_order.i119.i = getelementptr inbounds %struct.befs_sb_info, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %byte_order.i119.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %byte_order.i119.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp.i120.i = icmp eq i32 %65, 1
  %66 = tail call i16 @llvm.bswap.i16(i16 %61) #4
  %retval.0.i121.i = select i1 %cmp.i120.i, i16 %66, i16 %61
  %sub42.i = sub i16 %retval.0.i121.i, %conv28.i
  %len44.i = getelementptr inbounds %struct.befs_block_run, ptr %run, i32 0, i32 2
  %67 = ptrtoint ptr %len44.i to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 %sub42.i, ptr %len44.i, align 1
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #4
  %mul.i = mul i32 %i.0141.i, %div1.i.i
  %add46.i = add i32 %j.0135.i, %mul.i
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.befs_find_brun_indirect, i32 noundef %conv.i29, i32 noundef %add46.i) #4
  br label %if.end11

for.inc.i38:                                      ; preds = %for.body15.i
  %inc.i36 = add nuw nsw i32 %j.0135.i, 1
  %exitcond.not.i37 = icmp eq i32 %inc.i36, %umax.i
  br i1 %exitcond.not.i37, label %for.inc.i38.brelse.exit124.i_crit_edge, label %for.inc.i38.for.body15.i_crit_edge

for.inc.i38.for.body15.i_crit_edge:               ; preds = %for.inc.i38
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body15.i

for.inc.i38.brelse.exit124.i_crit_edge:           ; preds = %for.inc.i38
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit124.i

brelse.exit124.i:                                 ; preds = %for.inc.i38.brelse.exit124.i_crit_edge, %if.end.i.brelse.exit124.i_crit_edge
  %sum.1.lcssa.i = phi i64 [ %sum.0140.i, %if.end.i.brelse.exit124.i_crit_edge ], [ %.pre152.i, %for.inc.i38.brelse.exit124.i_crit_edge ]
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #4
  %inc51.i = add nuw nsw i32 %i.0141.i, 1
  %exitcond151.not.i = icmp eq i32 %inc51.i, %conv4.i31
  br i1 %exitcond151.not.i, label %brelse.exit124.i.for.end52.i_crit_edge, label %brelse.exit124.i.for.body.i33_crit_edge

brelse.exit124.i.for.body.i33_crit_edge:          ; preds = %brelse.exit124.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i33

brelse.exit124.i.for.end52.i_crit_edge:           ; preds = %brelse.exit124.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end52.i

for.end52.i:                                      ; preds = %brelse.exit124.i.for.end52.i_crit_edge, %if.then3.for.end52.i_crit_edge
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.befs_find_brun_indirect, i32 noundef %conv.i29) #4
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.befs_find_brun_indirect) #4
  br label %if.end11

if.else5:                                         ; preds = %if.else
  %max_double_indirect_range = getelementptr inbounds %struct.befs_data_stream, ptr %data, i32 0, i32 5
  %68 = ptrtoint ptr %max_double_indirect_range to i32
  call void @__asan_loadN_noabort(i32 %68, i32 8)
  %69 = load i64, ptr %max_double_indirect_range, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %69)
  %cmp6 = icmp ult i64 %shl, %69
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else5
  %shr.i41 = lshr i64 %20, %sh_prom
  %sub.i42 = sub i64 %fblock, %shr.i41
  %conv.i43 = trunc i64 %sub.i42 to i32
  %block_size.i.i44 = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 1
  %70 = ptrtoint ptr %block_size.i.i44 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %block_size.i.i44, align 4
  %72 = shl i32 %71, 1
  %mul2.i = and i32 %72, -16
  %conv3.i = trunc i64 %fblock to i32
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.befs_find_brun_dblindirect, i32 noundef %conv3.i) #4
  %conv.i43.frozen = freeze i32 %conv.i43
  %mul2.i.frozen = freeze i32 %mul2.i
  %div.i = udiv i32 %conv.i43.frozen, %mul2.i.frozen
  %73 = mul i32 %div.i, %mul2.i.frozen
  %rem.i.decomposed = sub i32 %conv.i43.frozen, %73
  %74 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %s_fs_info.i, align 16
  %block_size.i143.i = getelementptr inbounds %struct.befs_sb_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %block_size.i143.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %block_size.i143.i, align 4
  %div1.i144.i = lshr i32 %77, 3
  %div6.i = udiv i32 %div.i, %div1.i144.i
  %double_indirect.i = getelementptr inbounds %struct.befs_data_stream, ptr %data, i32 0, i32 4
  %len.i45 = getelementptr inbounds %struct.befs_data_stream, ptr %data, i32 0, i32 4, i32 2
  %78 = ptrtoint ptr %len.i45 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %79 = load i16, ptr %len.i45, align 1
  %conv7.i46 = zext i16 %79 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div6.i, i32 %conv7.i46)
  %cmp.i = icmp sgt i32 %div6.i, %conv7.i46
  br i1 %cmp.i, label %if.then.i47, label %if.end.i56

if.then.i47:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.befs_find_brun_dblindirect, i32 noundef %div.i) #4
  br label %if.end11

if.end.i56:                                       ; preds = %if.then7
  %80 = ptrtoint ptr %double_indirect.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %double_indirect.i, align 1
  %ag_shift.i.i48 = getelementptr inbounds %struct.befs_sb_info, ptr %75, i32 0, i32 9
  %82 = ptrtoint ptr %ag_shift.i.i48 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ag_shift.i.i48, align 4
  %shl.i.i49 = shl i32 %81, %83
  %start.i.i = getelementptr inbounds %struct.befs_data_stream, ptr %data, i32 0, i32 4, i32 1
  %84 = ptrtoint ptr %start.i.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %85 = load i16, ptr %start.i.i, align 1
  %conv.i.i = zext i16 %85 to i32
  %add.i.i50 = add i32 %shl.i.i49, %conv.i.i
  %conv1.i.i51 = zext i32 %add.i.i50 to i64
  %conv11.i = sext i32 %div6.i to i64
  %add.i52 = add nsw i64 %conv1.i.i51, %conv11.i
  %s_bdev.i.i53 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %86 = ptrtoint ptr %s_bdev.i.i53 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %s_bdev.i.i53, align 4
  %s_blocksize.i.i54 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %88 = ptrtoint ptr %s_blocksize.i.i54 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %s_blocksize.i.i54, align 16
  %call.i.i55 = tail call ptr @__bread_gfp(ptr noundef %87, i64 noundef %add.i52, i32 noundef %89, i32 noundef 8) #4
  %cmp13.i = icmp eq ptr %call.i.i55, null
  br i1 %cmp13.i, label %if.then15.i, label %if.end20.i

if.then15.i:                                      ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #6
  %90 = ptrtoint ptr %double_indirect.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %double_indirect.i, align 1
  %92 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %s_fs_info.i, align 16
  %ag_shift.i147.i = getelementptr inbounds %struct.befs_sb_info, ptr %93, i32 0, i32 9
  %94 = ptrtoint ptr %ag_shift.i147.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ag_shift.i147.i, align 4
  %shl.i148.i = shl i32 %91, %95
  %96 = ptrtoint ptr %start.i.i to i32
  call void @__asan_loadN_noabort(i32 %96, i32 2)
  %97 = load i16, ptr %start.i.i, align 1
  %conv.i150.i = zext i16 %97 to i32
  %add.i151.i = add i32 %shl.i148.i, %div6.i
  %add19.i = add i32 %add.i151.i, %conv.i150.i
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.befs_find_brun_dblindirect, i32 noundef %add19.i) #4
  br label %if.end11

if.end20.i:                                       ; preds = %if.end.i56
  %98 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %s_fs_info.i, align 16
  %block_size.i154.i = getelementptr inbounds %struct.befs_sb_info, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %block_size.i154.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %block_size.i154.i, align 4
  %div1.i155.i = lshr i32 %101, 3
  %mul22.i = mul i32 %div1.i155.i, %div6.i
  %sub23.i = sub i32 %div.i, %mul22.i
  %b_data.i57 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i55, i32 0, i32 5
  %102 = ptrtoint ptr %b_data.i57 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %b_data.i57, align 4
  %arrayidx.i58 = getelementptr %struct.befs_disk_block_run, ptr %103, i32 %sub23.i
  %104 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %.unpack.i = load i32, ptr %arrayidx.i58, align 1
  %.elt137.i = getelementptr inbounds [2 x i32], ptr %arrayidx.i58, i32 0, i32 1
  %105 = ptrtoint ptr %.elt137.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %.unpack138.i = load i32, ptr %.elt137.i, align 1
  %n.sroa.3.4.extract.shift.i.i = lshr i32 %.unpack138.i, 16
  %n.sroa.3.4.extract.trunc.i.i = trunc i32 %n.sroa.3.4.extract.shift.i.i to i16
  %byte_order.i.i59 = getelementptr inbounds %struct.befs_sb_info, ptr %99, i32 0, i32 3
  %106 = ptrtoint ptr %byte_order.i.i59 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %byte_order.i.i59, align 4, !noalias !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %107)
  %cmp.i.i60 = icmp eq i32 %107, 1
  %108 = tail call i32 @llvm.bswap.i32(i32 %.unpack.i) #4
  %109 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.3.4.extract.trunc.i.i) #4
  %tmp.sroa.0.0.i = select i1 %cmp.i.i60, i32 %108, i32 %.unpack.i
  %tmp.sroa.6.0.i = select i1 %cmp.i.i60, i16 %109, i16 %n.sroa.3.4.extract.trunc.i.i
  tail call void @__brelse(ptr noundef nonnull %call.i.i55) #4
  %110 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %s_fs_info.i, align 16
  %ag_shift.i162.i = getelementptr inbounds %struct.befs_sb_info, ptr %111, i32 0, i32 9
  %112 = ptrtoint ptr %ag_shift.i162.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ag_shift.i162.i, align 4
  %shl.i163.i = shl i32 %tmp.sroa.0.0.i, %113
  %conv.i165.i = zext i16 %tmp.sroa.6.0.i to i32
  %add.i166.i = add i32 %shl.i163.i, %conv.i165.i
  %conv1.i167.i = zext i32 %add.i166.i to i64
  %114 = ptrtoint ptr %s_bdev.i.i53 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %s_bdev.i.i53, align 4
  %116 = ptrtoint ptr %s_blocksize.i.i54 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %s_blocksize.i.i54, align 16
  %call.i170.i = tail call ptr @__bread_gfp(ptr noundef %115, i64 noundef %conv1.i167.i, i32 noundef %117, i32 noundef 8) #4
  %cmp36.i = icmp eq ptr %call.i170.i, null
  %118 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %s_fs_info.i, align 16
  br i1 %cmp36.i, label %if.then38.i, label %if.end42.i

if.then38.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  %ag_shift.i172.i = getelementptr inbounds %struct.befs_sb_info, ptr %119, i32 0, i32 9
  %120 = ptrtoint ptr %ag_shift.i172.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ag_shift.i172.i, align 4
  %shl.i173.i = shl i32 %tmp.sroa.0.0.i, %121
  %add.i176.i = add i32 %shl.i173.i, %conv.i165.i
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.befs_find_brun_dblindirect, i32 noundef %add.i176.i) #4
  br label %if.end11

if.end42.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  %b_data46.i = getelementptr inbounds %struct.buffer_head, ptr %call.i170.i, i32 0, i32 5
  %122 = ptrtoint ptr %b_data46.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %b_data46.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_loadN_noabort(i32 %124, i32 4)
  %.unpack139.i = load i32, ptr %123, align 1
  %.elt140.i = getelementptr inbounds [2 x i32], ptr %123, i32 0, i32 1
  %125 = ptrtoint ptr %.elt140.i to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %.unpack141.i = load i32, ptr %.elt140.i, align 1
  %n.sroa.3.4.extract.shift.i181.i = lshr i32 %.unpack141.i, 16
  %n.sroa.3.4.extract.trunc.i182.i = trunc i32 %n.sroa.3.4.extract.shift.i181.i to i16
  %n.sroa.6.4.extract.trunc.i183.i = trunc i32 %.unpack141.i to i16
  %byte_order.i185.i = getelementptr inbounds %struct.befs_sb_info, ptr %119, i32 0, i32 3
  %126 = ptrtoint ptr %byte_order.i185.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %byte_order.i185.i, align 4, !noalias !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %127)
  %cmp.i186.i = icmp eq i32 %127, 1
  %128 = tail call i32 @llvm.bswap.i32(i32 %.unpack139.i) #4
  %129 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.3.4.extract.trunc.i182.i) #4
  %130 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.6.4.extract.trunc.i183.i) #4
  %tmp47.sroa.0.0.i = select i1 %cmp.i186.i, i32 %128, i32 %.unpack139.i
  %tmp47.sroa.6.0.i = select i1 %cmp.i186.i, i16 %129, i16 %n.sroa.3.4.extract.trunc.i182.i
  %storemerge.i189.i = select i1 %cmp.i186.i, i16 %130, i16 %n.sroa.6.4.extract.trunc.i183.i
  %tmp47.sroa.8.0.insert.ext.i = zext i16 %storemerge.i189.i to i64
  %tmp47.sroa.6.0.insert.ext.i = zext i16 %tmp47.sroa.6.0.i to i64
  %tmp47.sroa.6.0.insert.shift.i = shl nuw nsw i64 %tmp47.sroa.6.0.insert.ext.i, 16
  %tmp47.sroa.6.0.insert.insert.i = or i64 %tmp47.sroa.6.0.insert.shift.i, %tmp47.sroa.8.0.insert.ext.i
  %tmp47.sroa.0.0.insert.ext.i = zext i32 %tmp47.sroa.0.0.i to i64
  %tmp47.sroa.0.0.insert.shift.i = shl nuw i64 %tmp47.sroa.0.0.insert.ext.i, 32
  %tmp47.sroa.0.0.insert.insert.i = or i64 %tmp47.sroa.6.0.insert.insert.i, %tmp47.sroa.0.0.insert.shift.i
  %131 = ptrtoint ptr %run to i32
  call void @__asan_storeN_noabort(i32 %131, i32 8)
  store i64 %tmp47.sroa.0.0.insert.insert.i, ptr %run, align 1
  tail call void @__brelse(ptr noundef nonnull %call.i170.i) #4
  %mul49.i = mul i32 %mul2.i, %div.i
  %conv50.i = zext i32 %mul49.i to i64
  %132 = add i64 %shr.i41, %conv50.i
  %sub55.i = sub i64 %fblock, %132
  %conv56.i = trunc i64 %sub55.i to i16
  %start.i61 = getelementptr inbounds %struct.befs_block_run, ptr %run, i32 0, i32 1
  %133 = ptrtoint ptr %start.i61 to i32
  call void @__asan_loadN_noabort(i32 %133, i32 2)
  %134 = load i16, ptr %start.i61, align 1
  %conv59.i = add i16 %134, %conv56.i
  store i16 %conv59.i, ptr %start.i61, align 1
  %len60.i = getelementptr inbounds %struct.befs_block_run, ptr %run, i32 0, i32 2
  %135 = ptrtoint ptr %len60.i to i32
  call void @__asan_loadN_noabort(i32 %135, i32 2)
  %136 = load i16, ptr %len60.i, align 1
  %sub62.i = sub i16 %136, %conv56.i
  store i16 %sub62.i, ptr %len60.i, align 1
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.23, i32 noundef %conv3.i, i32 noundef %div.i, i32 noundef 0, i32 noundef %rem.i.decomposed) #4
  br label %if.end11

if.else9:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #6
  %conv = trunc i64 %fblock to i32
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.5, i32 noundef %conv) #4
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.end42.i, %if.then38.i, %if.then15.i, %if.then.i47, %for.end52.i, %cleanup.i, %if.then.i34, %for.end.i, %if.then.i
  %err.0 = phi i32 [ 1, %if.else9 ], [ 0, %if.then.i ], [ 1, %for.end.i ], [ 1, %if.then.i34 ], [ 0, %cleanup.i ], [ 1, %for.end52.i ], [ 1, %if.then.i47 ], [ 1, %if.then15.i ], [ 1, %if.then38.i ], [ 0, %if.end42.i ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @befs_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @befs_bread_iaddr(ptr noundef, [2 x i32]) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @befs_read_lsymlink(ptr noundef %sb, ptr nocapture noundef readonly %ds, ptr nocapture noundef writeonly %buff, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.befs_read_lsymlink, i64 noundef %len) #4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %len)
  %cmp40.not = icmp eq i64 %len, 0
  br i1 %cmp40.not, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %bytes_read.041 = phi i64 [ 0, %while.body.lr.ph ], [ %add11, %if.end.while.body_crit_edge ]
  %call = tail call ptr @befs_read_datastream(ptr noundef %sb, ptr noundef %ds, i64 noundef %bytes_read.041, ptr noundef null)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.7, i64 noundef %bytes_read.041) #4
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.befs_read_lsymlink) #4
  %conv = trunc i64 %bytes_read.041 to i32
  br label %cleanup

if.end:                                           ; preds = %while.body
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %block_size = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %block_size, align 4
  %conv2 = zext i32 %3 to i64
  %add = add i64 %bytes_read.041, %conv2
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %len)
  %cmp3 = icmp ult i64 %add, %len
  %extract.t = trunc i32 %3 to i16
  %sub = sub i64 %len, %bytes_read.041
  %extract.t37 = trunc i64 %sub to i16
  %cond.off0 = select i1 %cmp3, i16 %extract.t, i16 %extract.t37
  %idx.ext = trunc i64 %bytes_read.041 to i32
  %add.ptr = getelementptr i8, ptr %buff, i32 %idx.ext
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %conv9 = zext i16 %cond.off0 to i32
  %6 = call ptr @memcpy(ptr %add.ptr, ptr %5, i32 %conv9)
  tail call void @__brelse(ptr noundef nonnull %call) #4
  %conv10 = zext i16 %cond.off0 to i64
  %add11 = add i64 %bytes_read.041, %conv10
  %cmp = icmp ult i64 %add11, %len
  br i1 %cmp, label %if.end.while.body_crit_edge, label %while.end.loopexit

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end.loopexit:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %extract.t42 = trunc i64 %add11 to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry.while.end_crit_edge
  %bytes_read.0.lcssa.off0 = phi i32 [ 0, %entry.while.end_crit_edge ], [ %extract.t42, %while.end.loopexit ]
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.befs_read_lsymlink, i32 noundef %bytes_read.0.lcssa.off0) #4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %bytes_read.0.lcssa.off0, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @befs_count_blocks(ptr noundef %sb, ptr nocapture noundef readonly %ds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.befs_count_blocks) #4
  %size = getelementptr inbounds %struct.befs_data_stream, ptr %ds, i32 0, i32 6
  %2 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %size, align 1
  %block_shift = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %block_shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %block_shift, align 8
  %block_size = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %block_size, align 4
  %max_direct_range = getelementptr inbounds %struct.befs_data_stream, ptr %ds, i32 0, i32 1
  %8 = ptrtoint ptr %max_direct_range to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %max_direct_range, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %9)
  %cmp = icmp ugt i64 %3, %9
  br i1 %cmp, label %if.then4, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %len = getelementptr inbounds %struct.befs_data_stream, ptr %ds, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %len, align 1
  %conv5 = zext i16 %11 to i64
  %add6 = add nuw nsw i64 %conv5, 1
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %entry.if.end7_crit_edge
  %metablocks.0 = phi i64 [ %add6, %if.then4 ], [ 1, %entry.if.end7_crit_edge ]
  %max_indirect_range = getelementptr inbounds %struct.befs_data_stream, ptr %ds, i32 0, i32 3
  %12 = ptrtoint ptr %max_indirect_range to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %max_indirect_range, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %13)
  %cmp9 = icmp ule i64 %3, %13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %cmp12.not = icmp eq i64 %13, 0
  %or.cond = or i1 %cmp9, %cmp12.not
  br i1 %or.cond, label %if.end7.if.end26_crit_edge, label %if.then14

if.end7.if.end26_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %max_double_indirect_range = getelementptr inbounds %struct.befs_data_stream, ptr %ds, i32 0, i32 5
  %14 = ptrtoint ptr %max_double_indirect_range to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %max_double_indirect_range, align 1
  %sub16 = sub i64 %15, %13
  %conv17 = trunc i64 %sub16 to i32
  %mul = shl i32 %7, 2
  %div = udiv i32 %conv17, %mul
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %block_size.i = getelementptr inbounds %struct.befs_sb_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %block_size.i, align 4
  %div1.i = lshr i32 %19, 3
  %div20 = udiv i32 %div, %div1.i
  %len21 = getelementptr inbounds %struct.befs_data_stream, ptr %ds, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %len21 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %len21, align 1
  %conv22 = zext i16 %21 to i64
  %conv24 = zext i32 %div20 to i64
  %add23 = add nuw nsw i64 %metablocks.0, %conv24
  %add25 = add nuw nsw i64 %add23, %conv22
  br label %if.end26

if.end26:                                         ; preds = %if.then14, %if.end7.if.end26_crit_edge
  %metablocks.1 = phi i64 [ %add25, %if.then14 ], [ %metablocks.0, %if.end7.if.end26_crit_edge ]
  %sub = add i32 %7, -1
  %conv = zext i32 %sub to i64
  %and = and i64 %3, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp ne i64 %and, 0
  %sh_prom = zext i32 %5 to i64
  %shr = lshr i64 %3, %sh_prom
  %add = zext i1 %tobool.not to i64
  %spec.select = add i64 %shr, %add
  %add27 = add i64 %spec.select, %metablocks.1
  %conv28 = trunc i64 %add27 to i32
  tail call void (ptr, ptr, ...) @befs_debug(ptr noundef %sb, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.befs_count_blocks, i32 noundef %conv28) #4
  ret i64 %add27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @BAD_IADDR, !1, !"BAD_IADDR", i1 false, i1 false}
!1 = !{!"../fs/befs/datastream.c", i32 22, i32 23}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/befs/datastream.c", i32 56, i32 17}
!4 = !{ptr @__func__.befs_read_datastream, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/befs/datastream.c", i32 56, i32 33}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/befs/datastream.c", i32 62, i32 18}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/befs/datastream.c", i32 64, i32 18}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/befs/datastream.c", i32 69, i32 18}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/befs/datastream.c", i32 74, i32 17}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/befs/datastream.c", i32 112, i32 7}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/befs/datastream.c", i32 137, i32 17}
!18 = !{ptr @__func__.befs_read_lsymlink, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/befs/datastream.c", i32 137, i32 41}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/befs/datastream.c", i32 142, i32 19}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/befs/datastream.c", i32 155, i32 17}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/befs/datastream.c", i32 179, i32 17}
!26 = !{ptr @__func__.befs_count_blocks, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/befs/datastream.c", i32 179, i32 28}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/befs/datastream.c", i32 216, i32 17}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/befs/datastream.c", i32 258, i32 17}
!32 = !{ptr @__func__.befs_find_brun_direct, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/befs/datastream.c", i32 258, i32 38}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/befs/datastream.c", i32 269, i32 19}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/befs/datastream.c", i32 276, i32 17}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/befs/datastream.c", i32 278, i32 17}
!40 = !{ptr @__func__.befs_find_brun_indirect, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/befs/datastream.c", i32 321, i32 38}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/befs/datastream.c", i32 330, i32 19}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/befs/datastream.c", i32 353, i32 9}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/befs/datastream.c", i32 366, i32 17}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/befs/datastream.c", i32 449, i32 17}
!50 = !{ptr @__func__.befs_find_brun_dblindirect, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/befs/datastream.c", i32 449, i32 37}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/befs/datastream.c", i32 464, i32 18}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/befs/datastream.c", i32 475, i32 18}
!56 = distinct !{null, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/befs/datastream.c", i32 492, i32 18}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/befs/datastream.c", i32 501, i32 18}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/befs/datastream.c", i32 520, i32 17}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"fsrun_to_cpu: %agg.result"}
!73 = distinct !{!73, !"fsrun_to_cpu"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"fsrun_to_cpu: %agg.result"}
!76 = distinct !{!76, !"fsrun_to_cpu"}
