; ModuleID = '/llk/IR_all_yes/fs/udf/balloc.c_pt.bc'
source_filename = "../fs/udf/balloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.kernel_lb_addr = type { i32, i16 }
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
%struct.udf_part_map = type { %union.anon.70, i32, i32, i16, i16, %union.anon.71, ptr, i16, i16 }
%union.anon.70 = type { ptr }
%union.anon.71 = type { %struct.udf_meta_data }
%struct.udf_meta_data = type { i32, i32, i32, i32, i16, i16, i32, ptr, ptr, ptr }
%struct.udf_sb_info = type { ptr, [32 x i8], i16, i16, i32, i32, i32, ptr, i16, %struct.kgid_t, %struct.kuid_t, i16, i16, %struct.rwlock_t, %struct.timespec64, i16, i16, i32, ptr, ptr, %struct.mutex, i32 }
%struct.kgid_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.udf_bitmap = type { i32, i32, [0 x ptr] }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.logicalVolIntegrityDesc = type { %struct.tag, %struct.timestamp, i32, %struct.extent_ad, [32 x i8], i32, i32, [0 x i32] }
%struct.tag = type { i16, i16, i8, i8, i16, i16, i16, i32 }
%struct.timestamp = type { i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.extent_ad = type { i32, i32 }
%struct.extent_position = type { ptr, i32, %struct.kernel_lb_addr }

@udf_bitmap_free_blocks.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"udf\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"udf_bitmap_free_blocks\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/udf/balloc.c\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:%d:%s: %u < %d || %u + %u > %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UDF-fs: %s:%d:%s: %u < %d || %u + %u > %u\0A\00", [53 x i8] zeroinitializer }, align 32
@udf_bitmap_free_blocks.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:%d:%s: bit %lu already set\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"UDF-fs: %s:%d:%s: bit %lu already set\0A\00", [57 x i8] zeroinitializer }, align 32
@udf_bitmap_free_blocks.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s:%d:%s: byte=%2x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"UDF-fs: %s:%d:%s: byte=%2x\0A\00", [36 x i8] zeroinitializer }, align 32
@__load_block_bitmap.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__load_block_bitmap\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:%s: block_group (%u) > nr_groups (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"UDF-fs: %s:%d:%s: block_group (%u) > nr_groups (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@udf_updated_lvid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/udf/udfdecl.h\00", [47 x i8] zeroinitializer }, align 32
@udf_table_free_blocks.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.3, i8 0, i8 94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"udf_table_free_blocks\00", [42 x i8] zeroinitializer }, align 32
@udf_table_prealloc_blocks.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"udf_table_prealloc_blocks\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:%d:%s: eloc=%u, elen=%u, first_block=%u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"UDF-fs: %s:%d:%s: eloc=%u, elen=%u, first_block=%u\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.udf_bitmap_new_block = private unnamed_addr constant [21 x i8] c"udf_bitmap_new_block\00", align 1
@.str.17 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"bitmap for partition %d corrupted (block %u marked as free, partition length is %u)\0A\00", [43 x i8] zeroinitializer }, align 32
@udf_bitmap_new_block.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.udf_bitmap_new_block, ptr @.str.2, ptr @.str.18, i8 0, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:%d:%s: bit already cleared for block %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"UDF-fs: %s:%d:%s: bit already cleared for block %d\0A\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 125, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 154, i32 5 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 155, i32 5 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 61, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [20 x i8] c"../fs/udf/udfdecl.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 114, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 376, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 529, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 333, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [19 x i8] c"../fs/udf/balloc.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 340, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @udf_free_blocks(ptr noundef %sb, ptr noundef %inode, ptr nocapture noundef readonly %bloc, i32 noundef %offset, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %partitionReferenceNum = getelementptr inbounds %struct.kernel_lb_addr, ptr %bloc, i32 0, i32 1
  %0 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %partitionReferenceNum, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr %struct.udf_part_map, ptr %5, i32 %idxprom
  %s_partition_flags = getelementptr %struct.udf_part_map, ptr %5, i32 %idxprom, i32 8
  %6 = ptrtoint ptr %s_partition_flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %s_partition_flags, align 2
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @udf_bitmap_free_blocks(ptr noundef %sb, ptr noundef %9, ptr noundef %bloc, i32 noundef %offset, i32 noundef %count)
  br label %if.end7

if.else:                                          ; preds = %entry
  %and3 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else.if.end7_crit_edge, label %if.then5

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @udf_table_free_blocks(ptr noundef %sb, ptr noundef %11, ptr noundef %bloc, i32 noundef %offset, i32 noundef %count)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.else.if.end7_crit_edge, %if.then
  %tobool8.not = icmp eq ptr %inode, null
  br i1 %tobool8.not, label %if.end7.if.end12_crit_edge, label %if.then9

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %conv10 = zext i32 %count to i64
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %12 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %13 to i64
  %shl = shl i64 %conv10, %sh_prom
  tail call void @inode_sub_bytes(ptr noundef nonnull %inode, i64 noundef %shl) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7.if.end12_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udf_bitmap_free_blocks(ptr noundef %sb, ptr nocapture noundef %bitmap, ptr nocapture noundef readonly %bloc, i32 noundef %offset, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_mutex = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %s_alloc_mutex, i32 noundef 0) #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %partitionReferenceNum = getelementptr inbounds %struct.kernel_lb_addr, ptr %bloc, i32 0, i32 1
  %4 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %partitionReferenceNum, align 4
  %idxprom = zext i16 %5 to i32
  %6 = ptrtoint ptr %bloc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bloc, align 4
  %add = add i32 %7, %count
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %count)
  %cmp = icmp ult i32 %add, %count
  br i1 %cmp, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %s_partition_len = getelementptr %struct.udf_part_map, ptr %3, i32 %idxprom, i32 2
  %8 = ptrtoint ptr %s_partition_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_partition_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp3 = icmp ugt i32 %add, %9
  br i1 %cmp3, label %lor.lhs.false.do.body_crit_edge, label %if.end11

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_bitmap_free_blocks.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_bitmap_free_blocks, %if.then7)) #6
          to label %error_return [label %if.then7], !srcloc !47

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %bloc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bloc, align 4
  %s_partition_len10 = getelementptr %struct.udf_part_map, ptr %3, i32 %idxprom, i32 2
  %12 = ptrtoint ptr %s_partition_len10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_partition_len10, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_bitmap_free_blocks.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 128, ptr noundef nonnull @.str.1, i32 noundef %11, i32 noundef 0, i32 noundef %11, i32 noundef %count, i32 noundef %13) #6
  br label %error_return

if.end11:                                         ; preds = %lor.lhs.false
  %add13 = add i32 %offset, 192
  %add14 = add i32 %add13, %7
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %s_nr_groups.i.i = getelementptr inbounds %struct.udf_bitmap, ptr %bitmap, i32 0, i32 1
  %s_partition = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 3
  br label %do.body15

do.body15:                                        ; preds = %udf_add_free_space.exit.do.body15_crit_edge, %if.end11
  %block.0 = phi i32 [ %add14, %if.end11 ], [ %add81, %udf_add_free_space.exit.do.body15_crit_edge ]
  %count.addr.0 = phi i32 [ %count, %if.end11 ], [ %18, %udf_add_free_space.exit.do.body15_crit_edge ]
  %14 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %15 to i32
  %add16 = add nuw nsw i32 %conv, 3
  %shr = lshr i32 %block.0, %add16
  %16 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_blocksize, align 16
  %shl = shl i32 %17, 3
  %rem = urem i32 %block.0, %shl
  %add17 = add i32 %rem, %count.addr.0
  %18 = tail call i32 @llvm.usub.sat.i32(i32 %add17, i32 %shl)
  %count.addr.1 = sub i32 %count.addr.0, %18
  %19 = ptrtoint ptr %s_nr_groups.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_nr_groups.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %shr)
  %cmp.not.i.i = icmp ugt i32 %20, %shr
  br i1 %cmp.not.i.i, label %do.body15.if.end5.i.i_crit_edge, label %do.body.i.i

do.body15.if.end5.i.i_crit_edge:                  ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i.i

do.body.i.i:                                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__load_block_bitmap.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_bitmap_free_blocks, %if.then4.i.i)) #6
          to label %if.end5.i.i [label %if.then4.i.i], !srcloc !47

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__load_block_bitmap.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 62, ptr noundef nonnull @.str.9, i32 noundef %shr, i32 noundef %20) #6
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then4.i.i, %do.body.i.i, %do.body15.if.end5.i.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.udf_bitmap, ptr %bitmap, i32 0, i32 2, i32 %shr
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %22, null
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end5.i.i.if.end32_crit_edge

if.end5.i.i.if.end32_crit_edge:                   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.end8.i.i:                                      ; preds = %if.end5.i.i
  %23 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bitmap, align 4
  %25 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i, align 16
  %s_partition.i.i.i = getelementptr inbounds %struct.udf_sb_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %s_partition.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %s_partition.i.i.i, align 2
  %call.i.i.i.i = tail call i32 @udf_get_pblock(ptr noundef %sb, i32 noundef %24, i16 noundef zeroext %28, i32 noundef %shr) #6
  %call3.i.i.i = tail call ptr @udf_tread(ptr noundef %sb, i32 noundef %call.i.i.i.i) #6
  %tobool.not.i.i.i = icmp eq ptr %call3.i.i.i, null
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call3.i.i.i, ptr %arrayidx.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.end8.i.i.error_return_crit_edge, label %if.end8.i.i.if.end32_crit_edge

if.end8.i.i.if.end32_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.end8.i.i.error_return_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_return

if.end32:                                         ; preds = %if.end8.i.i.if.end32_crit_edge, %if.end5.i.i.if.end32_crit_edge
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.0, i32 %18)
  %cmp34144.not = icmp eq i32 %count.addr.0, %18
  br i1 %cmp34144.not, label %if.end32.for.end_crit_edge, label %for.body.lr.ph

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end32
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %31, i32 0, i32 5
  %umax = call i32 @llvm.umax.i32(i32 %count.addr.1, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0145 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add36 = add i32 %i.0145, %rem
  %32 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %b_data, align 4
  %xor.i = and i32 %add36, 31
  %rem.i.i = xor i32 %xor.i, 24
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div5.i.i = lshr i32 %add36, 5
  %add.ptr.i.i = getelementptr i32, ptr %33, i32 %div5.i.i
  %34 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %35, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %36 = and i32 %35, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool38.not = icmp eq i32 %36, 0
  br i1 %tobool38.not, label %for.body.for.inc_crit_edge, label %do.body40

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body40:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_bitmap_free_blocks.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_bitmap_free_blocks, %if.then52)) #6
          to label %do.body57 [label %if.then52], !srcloc !47

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_bitmap_free_blocks.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 154, ptr noundef nonnull @.str.1, i32 noundef %add36) #6
  br label %do.body57

do.body57:                                        ; preds = %if.then52, %do.body40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_bitmap_free_blocks.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_bitmap_free_blocks, %if.then69)) #6
          to label %for.inc [label %if.then69], !srcloc !47

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %b_data, align 4
  %shr72 = lshr i32 %add36, 3
  %arrayidx73 = getelementptr i8, ptr %38, i32 %shr72
  %39 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %40 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_bitmap_free_blocks.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 156, ptr noundef nonnull @.str.1, i32 noundef %conv74) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then69, %do.body57, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0145, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end32.for.end_crit_edge
  %41 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_bh.i = getelementptr inbounds %struct.udf_sb_info, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %s_lvid_bh.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_lvid_bh.i, align 4
  %tobool.not.i136 = icmp eq ptr %44, null
  br i1 %tobool.not.i136, label %for.end.udf_add_free_space.exit_crit_edge, label %if.end.i137

for.end.udf_add_free_space.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %udf_add_free_space.exit

if.end.i137:                                      ; preds = %for.end
  %45 = ptrtoint ptr %s_partition to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %s_partition, align 2
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %44, i32 0, i32 5
  %47 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %b_data.i, align 4
  %idxprom.i = zext i16 %46 to i32
  %arrayidx.i = getelementptr %struct.logicalVolIntegrityDesc, ptr %48, i32 0, i32 7, i32 %idxprom.i
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #6
  %add.i.i = add i32 %51, %count.addr.1
  %52 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #6
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx.i, align 4
  %54 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_bh.i.i = getelementptr inbounds %struct.udf_sb_info, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %s_lvid_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_lvid_bh.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %57, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !48

do.body4.i.i:                                     ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/udf/udfdecl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #6, !srcloc !49
  unreachable

do.end9.i.i:                                      ; preds = %if.end.i137
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %b_data.i.i, align 4
  %integrityType.i.i = getelementptr inbounds %struct.logicalVolIntegrityDesc, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %integrityType.i.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %integrityType.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.not.i.i138 = icmp eq i32 %61, 0
  br i1 %cmp.not.i.i138, label %do.end9.i.i.udf_updated_lvid.exit.i_crit_edge, label %land.rhs.i.i

do.end9.i.i.udf_updated_lvid.exit.i_crit_edge:    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udf_updated_lvid.exit.i

land.rhs.i.i:                                     ; preds = %do.end9.i.i
  %.b62.i.i = load i1, ptr @udf_updated_lvid.__already_done, align 1
  br i1 %.b62.i.i, label %land.rhs.i.i.udf_updated_lvid.exit.i_crit_edge, label %if.then24.i.i, !prof !50

land.rhs.i.i.udf_updated_lvid.exit.i_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udf_updated_lvid.exit.i

if.then24.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @udf_updated_lvid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 116, i32 noundef 9, ptr noundef null) #6
  br label %udf_updated_lvid.exit.i

udf_updated_lvid.exit.i:                          ; preds = %if.then24.i.i, %land.rhs.i.i.udf_updated_lvid.exit.i_crit_edge, %do.end9.i.i.udf_updated_lvid.exit.i_crit_edge
  %62 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_dirty.i.i = getelementptr inbounds %struct.udf_sb_info, ptr %63, i32 0, i32 21
  %64 = ptrtoint ptr %s_lvid_dirty.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %s_lvid_dirty.i.i, align 4
  br label %udf_add_free_space.exit

udf_add_free_space.exit:                          ; preds = %udf_updated_lvid.exit.i, %for.end.udf_add_free_space.exit_crit_edge
  tail call void @mark_buffer_dirty(ptr noundef %31) #6
  %tobool79.not.not = icmp ugt i32 %add17, %shl
  %add81 = add i32 %count.addr.1, %block.0
  br i1 %tobool79.not.not, label %udf_add_free_space.exit.do.body15_crit_edge, label %udf_add_free_space.exit.error_return_crit_edge

udf_add_free_space.exit.error_return_crit_edge:   ; preds = %udf_add_free_space.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_return

udf_add_free_space.exit.do.body15_crit_edge:      ; preds = %udf_add_free_space.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body15

error_return:                                     ; preds = %udf_add_free_space.exit.error_return_crit_edge, %if.end8.i.i.error_return_crit_edge, %if.then7, %do.body
  tail call void @mutex_unlock(ptr noundef %s_alloc_mutex) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udf_table_free_blocks(ptr nocapture noundef readonly %sb, ptr noundef %table, ptr nocapture noundef readonly %bloc, i32 noundef %offset, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %elen = alloca i32, align 4
  %eloc = alloca %struct.kernel_lb_addr, align 8
  %oepos = alloca %struct.extent_position, align 4
  %epos = alloca %struct.extent_position, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elen) #6
  %2 = ptrtoint ptr %elen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %elen, align 4, !annotation !51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %eloc) #6
  %3 = ptrtoint ptr %eloc to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %eloc, align 8, !annotation !51
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %oepos) #6
  %4 = call ptr @memset(ptr %oepos, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %epos) #6
  %5 = call ptr @memset(ptr %epos, i32 255, i32 16)
  %s_alloc_mutex = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %s_alloc_mutex, i32 noundef 0) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %partitionReferenceNum = getelementptr inbounds %struct.kernel_lb_addr, ptr %bloc, i32 0, i32 1
  %8 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %partitionReferenceNum, align 4
  %idxprom = zext i16 %9 to i32
  %10 = ptrtoint ptr %bloc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bloc, align 4
  %add = add i32 %11, %count
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %count)
  %cmp = icmp ult i32 %add, %count
  br i1 %cmp, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %s_partition_len = getelementptr %struct.udf_part_map, ptr %7, i32 %idxprom, i32 2
  %12 = ptrtoint ptr %s_partition_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_partition_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %13)
  %cmp3 = icmp ugt i32 %add, %13
  br i1 %cmp3, label %lor.lhs.false.do.body_crit_edge, label %if.end11

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_table_free_blocks.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_table_free_blocks, %if.then7)) #6
          to label %error_return [label %if.then7], !srcloc !47

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %bloc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bloc, align 4
  %s_partition_len10 = getelementptr %struct.udf_part_map, ptr %7, i32 %idxprom, i32 2
  %16 = ptrtoint ptr %s_partition_len10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_partition_len10, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_table_free_blocks.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 379, ptr noundef nonnull @.str.13, i32 noundef %15, i32 noundef 0, i32 noundef %15, i32 noundef %count, i32 noundef %17) #6
  br label %error_return

if.end11:                                         ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_bh.i = getelementptr inbounds %struct.udf_sb_info, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %s_lvid_bh.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_lvid_bh.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end11.udf_add_free_space.exit_crit_edge, label %if.end.i

if.end11.udf_add_free_space.exit_crit_edge:       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %udf_add_free_space.exit

if.end.i:                                         ; preds = %if.end11
  %s_partition = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %s_partition to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %s_partition, align 2
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 5
  %24 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_data.i, align 4
  %idxprom.i = zext i16 %23 to i32
  %arrayidx.i = getelementptr %struct.logicalVolIntegrityDesc, ptr %25, i32 0, i32 7, i32 %idxprom.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #6
  %add.i.i = add i32 %28, %count
  %29 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #6
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx.i, align 4
  %31 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_bh.i.i = getelementptr inbounds %struct.udf_sb_info, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %s_lvid_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_lvid_bh.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !48

do.body4.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/udf/udfdecl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #6, !srcloc !49
  unreachable

do.end9.i.i:                                      ; preds = %if.end.i
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %b_data.i.i, align 4
  %integrityType.i.i = getelementptr inbounds %struct.logicalVolIntegrityDesc, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %integrityType.i.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %integrityType.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.not.i.i = icmp eq i32 %38, 0
  br i1 %cmp.not.i.i, label %do.end9.i.i.udf_updated_lvid.exit.i_crit_edge, label %land.rhs.i.i

do.end9.i.i.udf_updated_lvid.exit.i_crit_edge:    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udf_updated_lvid.exit.i

land.rhs.i.i:                                     ; preds = %do.end9.i.i
  %.b62.i.i = load i1, ptr @udf_updated_lvid.__already_done, align 1
  br i1 %.b62.i.i, label %land.rhs.i.i.udf_updated_lvid.exit.i_crit_edge, label %if.then24.i.i, !prof !50

land.rhs.i.i.udf_updated_lvid.exit.i_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udf_updated_lvid.exit.i

if.then24.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @udf_updated_lvid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 116, i32 noundef 9, ptr noundef null) #6
  br label %udf_updated_lvid.exit.i

udf_updated_lvid.exit.i:                          ; preds = %if.then24.i.i, %land.rhs.i.i.udf_updated_lvid.exit.i_crit_edge, %do.end9.i.i.udf_updated_lvid.exit.i_crit_edge
  %39 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_dirty.i.i = getelementptr inbounds %struct.udf_sb_info, ptr %40, i32 0, i32 21
  %41 = ptrtoint ptr %s_lvid_dirty.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %s_lvid_dirty.i.i, align 4
  br label %udf_add_free_space.exit

udf_add_free_space.exit:                          ; preds = %udf_updated_lvid.exit.i, %if.end11.udf_add_free_space.exit_crit_edge
  %42 = ptrtoint ptr %bloc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bloc, align 4
  %offset18 = getelementptr inbounds %struct.extent_position, ptr %oepos, i32 0, i32 1
  %44 = ptrtoint ptr %offset18 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 40, ptr %offset18, align 4
  %offset19 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %45 = ptrtoint ptr %offset19 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 40, ptr %offset19, align 4
  %46 = ptrtoint ptr %elen to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %elen, align 4
  %block = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 2
  %block20 = getelementptr inbounds %struct.extent_position, ptr %oepos, i32 0, i32 2
  %i_location = getelementptr i8, ptr %table, i32 -240
  %47 = ptrtoint ptr %i_location to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %i_location, align 8
  %49 = ptrtoint ptr %block20 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 %48, ptr %block20, align 4
  %50 = ptrtoint ptr %block to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 %48, ptr %block, align 4
  %51 = ptrtoint ptr %oepos to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %oepos, align 4
  %52 = ptrtoint ptr %epos to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %epos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool22.not251 = icmp eq i32 %count, 0
  br i1 %tobool22.not251, label %udf_add_free_space.exit.error_return_crit_edge, label %land.rhs.lr.ph

udf_add_free_space.exit.error_return_crit_edge:   ; preds = %udf_add_free_space.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_return

land.rhs.lr.ph:                                   ; preds = %udf_add_free_space.exit
  %add17 = add i32 %count, -1
  %add14 = add i32 %43, %offset
  %sub = add i32 %add17, %add14
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %s_blocksize81 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %if.end112.land.rhs_crit_edge, %land.rhs.lr.ph
  %count.addr.0254 = phi i32 [ %count, %land.rhs.lr.ph ], [ %count.addr.3, %if.end112.land.rhs_crit_edge ]
  %start.0253 = phi i32 [ %add14, %land.rhs.lr.ph ], [ %start.2, %if.end112.land.rhs_crit_edge ]
  %end.0252 = phi i32 [ %sub, %land.rhs.lr.ph ], [ %end.2, %if.end112.land.rhs_crit_edge ]
  %call23 = call signext i8 @udf_next_aext(ptr noundef %table, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, ptr noundef nonnull %elen, i32 noundef 1) #6
  %conv257 = zext i8 %call23 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call23)
  %cmp24.not = icmp eq i8 %call23, -1
  br i1 %cmp24.not, label %if.then114.critedge, label %while.body

while.body:                                       ; preds = %land.rhs
  %53 = ptrtoint ptr %eloc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %eloc, align 8
  %55 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %elen, align 4
  %57 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %s_blocksize_bits, align 4
  %conv27 = zext i8 %58 to i32
  %shr = lshr i32 %56, %conv27
  %add28 = add i32 %shr, %54
  call void @__sanitizer_cov_trace_cmp4(i32 %add28, i32 %start.0253)
  %cmp29 = icmp eq i32 %add28, %start.0253
  br i1 %cmp29, label %if.then31, label %if.else57

if.then31:                                        ; preds = %while.body
  %sub32 = sub i32 1073741823, %56
  %shl = shl i32 %count.addr.0254, %conv27
  call void @__sanitizer_cov_trace_cmp4(i32 %sub32, i32 %shl)
  %cmp35 = icmp ult i32 %sub32, %shl
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %shr42 = lshr i32 %sub32, %conv27
  %sub43 = sub i32 %count.addr.0254, %shr42
  %shl46 = shl i32 %conv257, 30
  %59 = ptrtoint ptr %s_blocksize81 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %s_blocksize81, align 16
  %sub47 = sub i32 1073741824, %60
  %or = or i32 %sub47, %shl46
  br label %if.end56

if.else:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %shl49 = shl i32 %conv257, 30
  %add53 = add i32 %shl, %56
  %or54 = or i32 %add53, %shl49
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then37
  %storemerge226 = phi i32 [ %or, %if.then37 ], [ %or54, %if.else ]
  %shr42.pn = phi i32 [ %shr42, %if.then37 ], [ %count.addr.0254, %if.else ]
  %count.addr.1 = phi i32 [ %sub43, %if.then37 ], [ 0, %if.else ]
  %61 = ptrtoint ptr %elen to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %storemerge226, ptr %elen, align 4
  %start.1 = add i32 %shr42.pn, %start.0253
  br label %if.end96.sink.split

if.else57:                                        ; preds = %while.body
  %add59 = add i32 %end.0252, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %add59)
  %cmp60 = icmp eq i32 %54, %add59
  br i1 %cmp60, label %if.then62, label %if.else57.if.end96_crit_edge

if.else57.if.end96_crit_edge:                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96

if.then62:                                        ; preds = %if.else57
  %sub63 = sub i32 1073741823, %56
  %shl66 = shl i32 %count.addr.0254, %conv27
  call void @__sanitizer_cov_trace_cmp4(i32 %sub63, i32 %shl66)
  %cmp67 = icmp ult i32 %sub63, %shl66
  br i1 %cmp67, label %if.then69, label %if.else84

if.then69:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  %shr74 = lshr i32 %sub63, %conv27
  %sub75 = sub i32 %count.addr.0254, %shr74
  %sub78 = sub i32 %54, %shr74
  %62 = ptrtoint ptr %eloc to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sub78, ptr %eloc, align 8
  %shl80 = shl i32 %conv257, 30
  %63 = ptrtoint ptr %s_blocksize81 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %s_blocksize81, align 16
  %sub82 = sub i32 1073741824, %64
  %or83 = or i32 %sub82, %shl80
  br label %if.end94

if.else84:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %eloc to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %start.0253, ptr %eloc, align 8
  %shl87 = shl i32 %conv257, 30
  %add91 = add i32 %shl66, %56
  %or92 = or i32 %add91, %shl87
  br label %if.end94

if.end94:                                         ; preds = %if.else84, %if.then69
  %storemerge225 = phi i32 [ %or83, %if.then69 ], [ %or92, %if.else84 ]
  %shr74.pn = phi i32 [ %shr74, %if.then69 ], [ %count.addr.0254, %if.else84 ]
  %count.addr.2 = phi i32 [ %sub75, %if.then69 ], [ 0, %if.else84 ]
  %66 = ptrtoint ptr %elen to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %storemerge225, ptr %elen, align 4
  %end.1 = sub i32 %end.0252, %shr74.pn
  br label %if.end96.sink.split

if.end96.sink.split:                              ; preds = %if.end94, %if.end56
  %storemerge225.sink = phi i32 [ %storemerge225, %if.end94 ], [ %storemerge226, %if.end56 ]
  %end.2.ph = phi i32 [ %end.1, %if.end94 ], [ %end.0252, %if.end56 ]
  %start.2.ph = phi i32 [ %start.0253, %if.end94 ], [ %start.1, %if.end56 ]
  %count.addr.3.ph = phi i32 [ %count.addr.2, %if.end94 ], [ %count.addr.1, %if.end56 ]
  call void @udf_write_aext(ptr noundef %table, ptr noundef nonnull %oepos, ptr noundef nonnull %eloc, i32 noundef %storemerge225.sink, i32 noundef 1) #6
  br label %if.end96

if.end96:                                         ; preds = %if.end96.sink.split, %if.else57.if.end96_crit_edge
  %end.2 = phi i32 [ %end.0252, %if.else57.if.end96_crit_edge ], [ %end.2.ph, %if.end96.sink.split ]
  %start.2 = phi i32 [ %start.0253, %if.else57.if.end96_crit_edge ], [ %start.2.ph, %if.end96.sink.split ]
  %count.addr.3 = phi i32 [ %count.addr.0254, %if.else57.if.end96_crit_edge ], [ %count.addr.3.ph, %if.end96.sink.split ]
  %67 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %epos, align 4
  %69 = ptrtoint ptr %oepos to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %oepos, align 4
  %cmp99.not = icmp eq ptr %68, %70
  br i1 %cmp99.not, label %if.else109, label %if.then101

if.then101:                                       ; preds = %if.end96
  %71 = ptrtoint ptr %block to i32
  call void @__asan_loadN_noabort(i32 %71, i32 8)
  %72 = load i64, ptr %block, align 4
  %73 = ptrtoint ptr %block20 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 8)
  store i64 %72, ptr %block20, align 4
  %tobool.not.i228 = icmp eq ptr %70, null
  br i1 %tobool.not.i228, label %if.then101.brelse.exit_crit_edge, label %if.then.i

if.then101.brelse.exit_crit_edge:                 ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

if.then.i:                                        ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %70) #6
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.then101.brelse.exit_crit_edge
  %74 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %epos, align 4
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %75, i32 0, i32 11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #6
  %76 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #6, !srcloc !52
  %77 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %epos, align 4
  %79 = ptrtoint ptr %oepos to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %oepos, align 4
  br label %if.end112

if.else109:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %offset19 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %offset19, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.else109, %brelse.exit
  %storemerge = phi i32 [ %81, %if.else109 ], [ 0, %brelse.exit ]
  %82 = ptrtoint ptr %offset18 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %storemerge, ptr %offset18, align 4
  %tobool22.not = icmp eq i32 %count.addr.3, 0
  br i1 %tobool22.not, label %if.end112.if.end151_crit_edge, label %if.end112.land.rhs_crit_edge

if.end112.land.rhs_crit_edge:                     ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

if.end112.if.end151_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end151

if.then114.critedge:                              ; preds = %land.rhs
  %83 = ptrtoint ptr %eloc to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %start.0253, ptr %eloc, align 8
  %84 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %s_blocksize_bits, align 4
  %conv117 = zext i8 %85 to i32
  %shl118 = shl i32 %count.addr.0254, %conv117
  %86 = ptrtoint ptr %elen to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %shl118, ptr %elen, align 4
  %i_alloc_type = getelementptr i8, ptr %table, i32 -192
  %87 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %87)
  %bf.load = load i32, ptr %i_alloc_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load)
  %cmp120 = icmp ult i32 %bf.load, 536870912
  br i1 %cmp120, label %if.then114.critedge.if.end134_crit_edge, label %if.else123

if.then114.critedge.if.end134_crit_edge:          ; preds = %if.then114.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

if.else123:                                       ; preds = %if.then114.critedge
  %bf.lshr.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr.mask)
  %cmp127 = icmp eq i32 %bf.lshr.mask, 536870912
  br i1 %cmp127, label %if.else123.if.end134_crit_edge, label %if.else130

if.else123.if.end134_crit_edge:                   ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

if.else130:                                       ; preds = %if.else123
  %88 = ptrtoint ptr %oepos to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %oepos, align 4
  %tobool.not.i230 = icmp eq ptr %89, null
  br i1 %tobool.not.i230, label %if.else130.brelse.exit233_crit_edge, label %if.then.i231

if.else130.brelse.exit233_crit_edge:              ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit233

if.then.i231:                                     ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %89) #6
  br label %brelse.exit233

brelse.exit233:                                   ; preds = %if.then.i231, %if.else130.brelse.exit233_crit_edge
  %90 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %epos, align 4
  %tobool.not.i234 = icmp eq ptr %91, null
  br i1 %tobool.not.i234, label %brelse.exit233.error_return_crit_edge, label %if.then.i235

brelse.exit233.error_return_crit_edge:            ; preds = %brelse.exit233
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_return

if.then.i235:                                     ; preds = %brelse.exit233
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %91) #6
  br label %error_return

if.end134:                                        ; preds = %if.else123.if.end134_crit_edge, %if.then114.critedge.if.end134_crit_edge
  %adsize.0 = phi i32 [ 16, %if.then114.critedge.if.end134_crit_edge ], [ 32, %if.else123.if.end134_crit_edge ]
  %92 = ptrtoint ptr %offset19 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %offset19, align 4
  %add136 = add i32 %93, %adsize.0
  %94 = ptrtoint ptr %s_blocksize81 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %s_blocksize81, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add136, i32 %95)
  %cmp138 = icmp ugt i32 %add136, %95
  br i1 %cmp138, label %if.then140, label %if.end146thread-pre-split

if.then140:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  %call142 = call i32 @udf_setup_indirect_aext(ptr noundef %table, i32 noundef %start.0253, ptr noundef nonnull %epos) #6
  %96 = ptrtoint ptr %eloc to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %eloc, align 8
  %inc = add i32 %97, 1
  store i32 %inc, ptr %eloc, align 8
  %98 = ptrtoint ptr %s_blocksize81 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %s_blocksize81, align 16
  %100 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %elen, align 4
  %sub145 = sub i32 %101, %99
  store i32 %sub145, ptr %elen, align 4
  br label %if.end146

if.end146thread-pre-split:                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %102)
  %.pr = load i32, ptr %elen, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.end146thread-pre-split, %if.then140
  %103 = phi i32 [ %.pr, %if.end146thread-pre-split ], [ %sub145, %if.then140 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool147.not = icmp eq i32 %103, 0
  br i1 %tobool147.not, label %if.end146.if.end151_crit_edge, label %if.then148

if.end146.if.end151_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end151

if.then148:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  %call149 = call i32 @__udf_add_aext(ptr noundef %table, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, i32 noundef %103, i32 noundef 1) #6
  br label %if.end151

if.end151:                                        ; preds = %if.then148, %if.end146.if.end151_crit_edge, %if.end112.if.end151_crit_edge
  %104 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %104)
  %.pr258 = load ptr, ptr %epos, align 4
  %tobool.not.i238 = icmp eq ptr %.pr258, null
  br i1 %tobool.not.i238, label %if.end151.brelse.exit241_crit_edge, label %if.then.i239

if.end151.brelse.exit241_crit_edge:               ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit241

if.then.i239:                                     ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %.pr258) #6
  br label %brelse.exit241

brelse.exit241:                                   ; preds = %if.then.i239, %if.end151.brelse.exit241_crit_edge
  %105 = ptrtoint ptr %oepos to i32
  call void @__asan_load4_noabort(i32 %105)
  %.pr260 = load ptr, ptr %oepos, align 4
  %tobool.not.i242 = icmp eq ptr %.pr260, null
  br i1 %tobool.not.i242, label %brelse.exit241.error_return_crit_edge, label %if.then.i243

brelse.exit241.error_return_crit_edge:            ; preds = %brelse.exit241
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_return

if.then.i243:                                     ; preds = %brelse.exit241
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %.pr260) #6
  br label %error_return

error_return:                                     ; preds = %if.then.i243, %brelse.exit241.error_return_crit_edge, %if.then.i235, %brelse.exit233.error_return_crit_edge, %udf_add_free_space.exit.error_return_crit_edge, %if.then7, %do.body
  call void @mutex_unlock(ptr noundef %s_alloc_mutex) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %epos) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oepos) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eloc) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elen) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_sub_bytes(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udf_prealloc_blocks(ptr noundef %sb, ptr noundef %inode, i16 noundef zeroext %partition, i32 noundef %first_block, i32 noundef %block_count) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %idxprom = zext i16 %partition to i32
  %arrayidx = getelementptr %struct.udf_part_map, ptr %3, i32 %idxprom
  %s_partition_flags = getelementptr %struct.udf_part_map, ptr %3, i32 %idxprom, i32 8
  %4 = ptrtoint ptr %s_partition_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %s_partition_flags, align 2
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call fastcc i32 @udf_bitmap_prealloc_blocks(ptr noundef %sb, ptr noundef %7, i16 noundef zeroext %partition, i32 noundef %first_block, i32 noundef %block_count)
  br label %if.end10

if.else:                                          ; preds = %entry
  %and4 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else.cleanup_crit_edge, label %if.then6

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call8 = tail call fastcc i32 @udf_table_prealloc_blocks(ptr noundef %sb, ptr noundef %9, i16 noundef zeroext %partition, i32 noundef %first_block, i32 noundef %block_count)
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.then
  %allocated.0 = phi i32 [ %call1, %if.then ], [ %call8, %if.then6 ]
  %tobool11.not = icmp ne ptr %inode, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %allocated.0)
  %cmp = icmp sgt i32 %allocated.0, 0
  %or.cond = select i1 %tobool11.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %10 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %s_blocksize_bits, align 4
  %conv14 = zext i8 %11 to i32
  %shl = shl i32 %allocated.0, %conv14
  %conv15 = sext i32 %shl to i64
  tail call void @inode_add_bytes(ptr noundef nonnull %inode, i64 noundef %conv15) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end10.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else.cleanup_crit_edge ], [ %allocated.0, %if.then13 ], [ %allocated.0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udf_bitmap_prealloc_blocks(ptr noundef %sb, ptr nocapture noundef %bitmap, i16 noundef zeroext %partition, i32 noundef %first_block, i32 noundef %block_count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_mutex = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %s_alloc_mutex, i32 noundef 0) #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %idxprom = zext i16 %partition to i32
  %s_partition_len = getelementptr %struct.udf_part_map, ptr %3, i32 %idxprom, i32 2
  %4 = ptrtoint ptr %s_partition_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_partition_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %first_block)
  %cmp.not = icmp ugt i32 %5, %first_block
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %add = add i32 %block_count, %first_block
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp1 = icmp ugt i32 %add, %5
  %sub = sub i32 %5, %first_block
  %spec.select = select i1 %cmp1, i32 %sub, i32 %block_count
  %add4 = add i32 %first_block, 192
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %s_nr_groups.i.i = getelementptr inbounds %struct.udf_bitmap, ptr %bitmap, i32 0, i32 1
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %if.end
  %block_count.addr.1 = phi i32 [ %spec.select, %if.end ], [ %dec, %while.end.do.body_crit_edge ]
  %alloc_count.0 = phi i32 [ 0, %if.end ], [ %inc, %while.end.do.body_crit_edge ]
  %6 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %7 to i32
  %add5 = add nuw nsw i32 %conv, 3
  %shr = ashr i32 %add4, %add5
  %8 = ptrtoint ptr %s_nr_groups.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_nr_groups.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %shr)
  %cmp.not.i.i = icmp ugt i32 %9, %shr
  br i1 %cmp.not.i.i, label %do.body.if.end5.i.i_crit_edge, label %do.body.i.i

do.body.if.end5.i.i_crit_edge:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i.i

do.body.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__load_block_bitmap.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_bitmap_prealloc_blocks, %if.then4.i.i)) #6
          to label %if.end5.i.i [label %if.then4.i.i], !srcloc !47

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__load_block_bitmap.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 62, ptr noundef nonnull @.str.9, i32 noundef %shr, i32 noundef %9) #6
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then4.i.i, %do.body.i.i, %do.body.if.end5.i.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.udf_bitmap, ptr %bitmap, i32 0, i32 2, i32 %shr
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %11, null
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %__load_block_bitmap.exit.i

if.end8.i.i:                                      ; preds = %if.end5.i.i
  %12 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bitmap, align 4
  %14 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i, align 16
  %s_partition.i.i.i = getelementptr inbounds %struct.udf_sb_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %s_partition.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %s_partition.i.i.i, align 2
  %call.i.i.i.i = tail call i32 @udf_get_pblock(ptr noundef %sb, i32 noundef %13, i16 noundef zeroext %17, i32 noundef %shr) #6
  %call3.i.i.i = tail call ptr @udf_tread(ptr noundef %sb, i32 noundef %call.i.i.i.i) #6
  %tobool.not.i.i.i = icmp eq ptr %call3.i.i.i, null
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call3.i.i.i, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp.i = icmp slt i32 %shr, 0
  %or.cond57 = select i1 %tobool.not.i.i.i, i1 true, i1 %cmp.i
  br i1 %or.cond57, label %if.end8.i.i.out_crit_edge, label %if.end8.i.i.if.end10_crit_edge

if.end8.i.i.if.end10_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end8.i.i.out_crit_edge:                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

__load_block_bitmap.exit.i:                       ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp.i.old = icmp slt i32 %shr, 0
  br i1 %cmp.i.old, label %__load_block_bitmap.exit.i.out_crit_edge, label %__load_block_bitmap.exit.i.if.end10_crit_edge

__load_block_bitmap.exit.i.if.end10_crit_edge:    ; preds = %__load_block_bitmap.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

__load_block_bitmap.exit.i.out_crit_edge:         ; preds = %__load_block_bitmap.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end10:                                         ; preds = %__load_block_bitmap.exit.i.if.end10_crit_edge, %if.end8.i.i.if.end10_crit_edge
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %block_count.addr.1)
  %cmp16.not64 = icmp eq i32 %block_count.addr.1, 0
  br i1 %cmp16.not64, label %while.end.thread, label %while.body.lr.ph

while.end.thread:                                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mark_buffer_dirty(ptr noundef %20) #6
  br label %out

while.body.lr.ph:                                 ; preds = %if.end10
  %21 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_blocksize, align 16
  %shl = shl i32 %22, 3
  %rem = urem i32 %add4, %shl
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %20, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end20.while.body_crit_edge, %while.body.lr.ph
  %bit.068 = phi i32 [ %rem, %while.body.lr.ph ], [ %inc21, %if.end20.while.body_crit_edge ]
  %alloc_count.167 = phi i32 [ %alloc_count.0, %while.body.lr.ph ], [ %inc, %if.end20.while.body_crit_edge ]
  %block_count.addr.266 = phi i32 [ %block_count.addr.1, %while.body.lr.ph ], [ %dec, %if.end20.while.body_crit_edge ]
  %23 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_data, align 4
  %xor.i = and i32 %bit.068, 31
  %rem.i.i = xor i32 %xor.i, 24
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div6.i.i = lshr i32 %bit.068, 5
  %add.ptr.i.i = getelementptr i32, ptr %24, i32 %div6.i.i
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i.i, align 4
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %26, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %27 = and i32 %26, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not = icmp eq i32 %27, 0
  br i1 %tobool.not, label %while.body.out_crit_edge, label %if.end20

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end20:                                         ; preds = %while.body
  %dec = add i32 %block_count.addr.266, -1
  %inc = add i32 %alloc_count.167, 1
  %inc21 = add nuw i32 %bit.068, 1
  %28 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_blocksize, align 16
  %shl13 = shl i32 %29, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %inc21, i32 %shl13)
  %cmp14 = icmp uge i32 %inc21, %shl13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp16.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp14, i1 true, i1 %cmp16.not
  br i1 %or.cond, label %while.end, label %if.end20.while.body_crit_edge

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end20
  tail call void @mark_buffer_dirty(ptr noundef %20) #6
  br i1 %cmp16.not, label %while.end.out_crit_edge, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %while.end.out_crit_edge, %while.body.out_crit_edge, %while.end.thread, %__load_block_bitmap.exit.i.out_crit_edge, %if.end8.i.i.out_crit_edge, %entry.out_crit_edge
  %alloc_count.2 = phi i32 [ 0, %entry.out_crit_edge ], [ %alloc_count.0, %while.end.thread ], [ %alloc_count.167, %while.body.out_crit_edge ], [ %alloc_count.0, %if.end8.i.i.out_crit_edge ], [ %alloc_count.0, %__load_block_bitmap.exit.i.out_crit_edge ], [ %inc, %while.end.out_crit_edge ]
  %30 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_bh.i = getelementptr inbounds %struct.udf_sb_info, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %s_lvid_bh.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_lvid_bh.i, align 4
  %tobool.not.i52 = icmp eq ptr %33, null
  br i1 %tobool.not.i52, label %out.udf_add_free_space.exit_crit_edge, label %if.end.i53

out.udf_add_free_space.exit_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %udf_add_free_space.exit

if.end.i53:                                       ; preds = %out
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_data.i, align 4
  %arrayidx.i = getelementptr %struct.logicalVolIntegrityDesc, ptr %35, i32 0, i32 7, i32 %idxprom
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #6
  %add.i.i = sub i32 %38, %alloc_count.2
  %39 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #6
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx.i, align 4
  %41 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_bh.i.i = getelementptr inbounds %struct.udf_sb_info, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %s_lvid_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_lvid_bh.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !48

do.body4.i.i:                                     ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/udf/udfdecl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #6, !srcloc !49
  unreachable

do.end9.i.i:                                      ; preds = %if.end.i53
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %b_data.i.i, align 4
  %integrityType.i.i = getelementptr inbounds %struct.logicalVolIntegrityDesc, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %integrityType.i.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %integrityType.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.not.i.i54 = icmp eq i32 %48, 0
  br i1 %cmp.not.i.i54, label %do.end9.i.i.udf_updated_lvid.exit.i_crit_edge, label %land.rhs.i.i

do.end9.i.i.udf_updated_lvid.exit.i_crit_edge:    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udf_updated_lvid.exit.i

land.rhs.i.i:                                     ; preds = %do.end9.i.i
  %.b62.i.i = load i1, ptr @udf_updated_lvid.__already_done, align 1
  br i1 %.b62.i.i, label %land.rhs.i.i.udf_updated_lvid.exit.i_crit_edge, label %if.then24.i.i, !prof !50

land.rhs.i.i.udf_updated_lvid.exit.i_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udf_updated_lvid.exit.i

if.then24.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @udf_updated_lvid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 116, i32 noundef 9, ptr noundef null) #6
  br label %udf_updated_lvid.exit.i

udf_updated_lvid.exit.i:                          ; preds = %if.then24.i.i, %land.rhs.i.i.udf_updated_lvid.exit.i_crit_edge, %do.end9.i.i.udf_updated_lvid.exit.i_crit_edge
  %49 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_dirty.i.i = getelementptr inbounds %struct.udf_sb_info, ptr %50, i32 0, i32 21
  %51 = ptrtoint ptr %s_lvid_dirty.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %s_lvid_dirty.i.i, align 4
  br label %udf_add_free_space.exit

udf_add_free_space.exit:                          ; preds = %udf_updated_lvid.exit.i, %out.udf_add_free_space.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %s_alloc_mutex) #6
  ret i32 %alloc_count.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udf_table_prealloc_blocks(ptr nocapture noundef readonly %sb, ptr noundef %table, i16 noundef zeroext %partition, i32 noundef %first_block, i32 noundef %block_count) unnamed_addr #0 align 64 {
entry:
  %elen = alloca i32, align 4
  %eloc = alloca %struct.kernel_lb_addr, align 8
  %epos = alloca %struct.extent_position, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elen) #6
  %2 = ptrtoint ptr %elen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %elen, align 4, !annotation !51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %eloc) #6
  %3 = ptrtoint ptr %eloc to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %eloc, align 8, !annotation !51
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %epos) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %idxprom = zext i16 %partition to i32
  %s_partition_len = getelementptr %struct.udf_part_map, ptr %5, i32 %idxprom, i32 2
  %6 = ptrtoint ptr %s_partition_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_partition_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %first_block)
  %cmp.not = icmp ugt i32 %7, %first_block
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_alloc_type = getelementptr i8, ptr %table, i32 -192
  %8 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load i32, ptr %i_alloc_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load)
  %cmp2 = icmp ult i32 %bf.load, 536870912
  br i1 %cmp2, label %if.end.land.rhs.preheader_crit_edge, label %if.else

if.end.land.rhs.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.preheader

if.else:                                          ; preds = %if.end
  %bf.lshr.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr.mask)
  %cmp7 = icmp eq i32 %bf.lshr.mask, 536870912
  br i1 %cmp7, label %if.else.land.rhs.preheader_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.land.rhs.preheader_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %if.else.land.rhs.preheader_crit_edge, %if.end.land.rhs.preheader_crit_edge
  %adsize.0.neg = phi i32 [ -8, %if.end.land.rhs.preheader_crit_edge ], [ -16, %if.else.land.rhs.preheader_crit_edge ]
  %s_alloc_mutex = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %s_alloc_mutex, i32 noundef 0) #6
  %offset = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 40, ptr %offset, align 4
  %block = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 2
  %i_location = getelementptr i8, ptr %table, i32 -240
  %10 = ptrtoint ptr %i_location to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_location, align 8
  %12 = ptrtoint ptr %block to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %block, align 4
  %13 = ptrtoint ptr %epos to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %epos, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %do.end.land.rhs_crit_edge, %land.rhs.preheader
  %call14 = call signext i8 @udf_next_aext(ptr noundef %table, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, ptr noundef nonnull %elen, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call14)
  %cmp15.not = icmp eq i8 %call14, -1
  br i1 %cmp15.not, label %land.rhs.while.end_crit_edge, label %do.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.body:                                          ; preds = %land.rhs
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_table_prealloc_blocks.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_table_prealloc_blocks, %if.then20)) #6
          to label %do.end [label %if.then20], !srcloc !47

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %eloc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %eloc, align 8
  %16 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %elen, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_table_prealloc_blocks.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, i32 noundef 530, ptr noundef nonnull @.str.14, i32 noundef %15, i32 noundef %17, i32 noundef %first_block) #6
  br label %do.end

do.end:                                           ; preds = %if.then20, %do.body
  %18 = ptrtoint ptr %eloc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %eloc, align 8
  %cmp13.not = icmp eq i32 %19, %first_block
  br i1 %cmp13.not, label %do.end.while.end_crit_edge, label %do.end.land.rhs_crit_edge

do.end.land.rhs_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %20 = ptrtoint ptr %eloc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %eloc, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %first_block)
  %cmp24 = icmp eq i32 %21, %first_block
  br i1 %cmp24, label %if.then26, label %while.end.if.end42_crit_edge

while.end.if.end42_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then26:                                        ; preds = %while.end
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset, align 4
  %sub = add i32 %23, %adsize.0.neg
  store i32 %sub, ptr %offset, align 4
  %24 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %elen, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %26 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %s_blocksize_bits, align 4
  %conv28 = zext i8 %27 to i32
  %shr = lshr i32 %25, %conv28
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %block_count)
  %cmp29 = icmp ugt i32 %shr, %block_count
  br i1 %cmp29, label %if.then31, label %if.else38

if.then31:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %first_block, %block_count
  %28 = ptrtoint ptr %eloc to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %eloc, align 8
  %shl = shl i32 %block_count, %conv28
  %sub35 = sub i32 %25, %shl
  %29 = ptrtoint ptr %elen to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub35, ptr %elen, align 4
  %conv3676 = zext i8 %call14 to i32
  %shl37 = shl i32 %conv3676, 30
  %or = or i32 %sub35, %shl37
  call void @udf_write_aext(ptr noundef %table, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, i32 noundef %or, i32 noundef 1) #6
  br label %if.end42

if.else38:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %30)
  %.fca.0.load = load i32, ptr %epos, align 4
  %.fca.0.insert = insertvalue [4 x i32] poison, i32 %.fca.0.load, 0
  %31 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %31)
  %.fca.1.load = load i32, ptr %offset, align 4
  %.fca.1.insert = insertvalue [4 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %32 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %32)
  %.fca.2.load = load i32, ptr %block, align 4
  %.fca.2.insert = insertvalue [4 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [4 x i32], ptr %epos, i32 0, i32 3
  %33 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %33)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [4 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %call39 = call signext i8 @udf_delete_aext(ptr noundef %table, [4 x i32] %.fca.3.insert) #6
  br label %if.end42

if.end42:                                         ; preds = %if.else38, %if.then31, %while.end.if.end42_crit_edge
  %alloc_count.0 = phi i32 [ %block_count, %if.then31 ], [ %shr, %if.else38 ], [ 0, %while.end.if.end42_crit_edge ]
  %34 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %epos, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %if.end42.brelse.exit_crit_edge, label %if.then.i

if.end42.brelse.exit_crit_edge:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %35) #6
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end42.brelse.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alloc_count.0)
  %tobool44.not = icmp eq i32 %alloc_count.0, 0
  br i1 %tobool44.not, label %brelse.exit.if.end47_crit_edge, label %if.then45

brelse.exit.if.end47_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then45:                                        ; preds = %brelse.exit
  %36 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_bh.i = getelementptr inbounds %struct.udf_sb_info, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %s_lvid_bh.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_lvid_bh.i, align 4
  %tobool.not.i77 = icmp eq ptr %39, null
  br i1 %tobool.not.i77, label %if.then45.if.end47_crit_edge, label %if.end.i

if.then45.if.end47_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.end.i:                                         ; preds = %if.then45
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %b_data.i, align 4
  %arrayidx.i = getelementptr %struct.logicalVolIntegrityDesc, ptr %41, i32 0, i32 7, i32 %idxprom
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43) #6
  %add.i.i = sub i32 %44, %alloc_count.0
  %45 = call i32 @llvm.bswap.i32(i32 %add.i.i) #6
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx.i, align 4
  %47 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_bh.i.i = getelementptr inbounds %struct.udf_sb_info, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %s_lvid_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_lvid_bh.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !48

do.body4.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/udf/udfdecl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #6, !srcloc !49
  unreachable

do.end9.i.i:                                      ; preds = %if.end.i
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %b_data.i.i, align 4
  %integrityType.i.i = getelementptr inbounds %struct.logicalVolIntegrityDesc, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %integrityType.i.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %integrityType.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.not.i.i = icmp eq i32 %54, 0
  br i1 %cmp.not.i.i, label %do.end9.i.i.udf_updated_lvid.exit.i_crit_edge, label %land.rhs.i.i

do.end9.i.i.udf_updated_lvid.exit.i_crit_edge:    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udf_updated_lvid.exit.i

land.rhs.i.i:                                     ; preds = %do.end9.i.i
  %.b62.i.i = load i1, ptr @udf_updated_lvid.__already_done, align 1
  br i1 %.b62.i.i, label %land.rhs.i.i.udf_updated_lvid.exit.i_crit_edge, label %if.then24.i.i, !prof !50

land.rhs.i.i.udf_updated_lvid.exit.i_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udf_updated_lvid.exit.i

if.then24.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @udf_updated_lvid.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 116, i32 noundef 9, ptr noundef null) #6
  br label %udf_updated_lvid.exit.i

udf_updated_lvid.exit.i:                          ; preds = %if.then24.i.i, %land.rhs.i.i.udf_updated_lvid.exit.i_crit_edge, %do.end9.i.i.udf_updated_lvid.exit.i_crit_edge
  %55 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_dirty.i.i = getelementptr inbounds %struct.udf_sb_info, ptr %56, i32 0, i32 21
  %57 = ptrtoint ptr %s_lvid_dirty.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %s_lvid_dirty.i.i, align 4
  br label %if.end47

if.end47:                                         ; preds = %udf_updated_lvid.exit.i, %if.then45.if.end47_crit_edge, %brelse.exit.if.end47_crit_edge
  call void @mutex_unlock(ptr noundef %s_alloc_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %alloc_count.0, %if.end47 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %epos) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eloc) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elen) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_add_bytes(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udf_new_block(ptr noundef %sb, ptr noundef %inode, i16 noundef zeroext %partition, i32 noundef %goal, ptr nocapture noundef writeonly %err) local_unnamed_addr #3 align 64 {
entry:
  %elen.i = alloca i32, align 4
  %eloc.i = alloca %struct.kernel_lb_addr, align 8
  %goal_eloc.i = alloca %struct.kernel_lb_addr, align 8
  %epos.i = alloca %struct.extent_position, align 4
  %goal_epos.i = alloca %struct.extent_position, align 4
  call void @__sanitizer_cov_trace_pc() #8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %idxprom = zext i16 %partition to i32
  %arrayidx = getelementptr %struct.udf_part_map, ptr %3, i32 %idxprom
  %s_partition_flags = getelementptr %struct.udf_part_map, ptr %3, i32 %idxprom, i32 8
  %4 = ptrtoint ptr %s_partition_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %s_partition_flags, align 2
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call fastcc i32 @udf_bitmap_new_block(ptr noundef %sb, ptr noundef %7, i16 noundef zeroext %partition, i32 noundef %goal, ptr noundef %err)
  br label %if.end10

if.else:                                          ; preds = %entry
  %and4 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else9, label %if.then6

if.then6:                                         ; preds = %if.else
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elen.i) #6
  %10 = ptrtoint ptr %elen.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %elen.i, align 4, !annotation !51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %eloc.i) #6
  %11 = ptrtoint ptr %eloc.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -1, ptr %eloc.i, align 8, !annotation !51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %goal_eloc.i) #6
  %12 = ptrtoint ptr %goal_eloc.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %goal_eloc.i, align 8, !annotation !51
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %epos.i) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %goal_epos.i) #6
  %13 = getelementptr inbounds i8, ptr %goal_epos.i, i32 4
  %14 = call ptr @memset(ptr %13, i32 255, i32 12)
  %15 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -28, ptr %err, align 4
  %i_alloc_type.i = getelementptr i8, ptr %9, i32 -192
  %16 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load.i = load i32, ptr %i_alloc_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load.i)
  %cmp.i = icmp ult i32 %bf.load.i, 536870912
  br i1 %cmp.i, label %if.then6.if.end8.i_crit_edge, label %if.else.i

if.then6.if.end8.i_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.else.i:                                        ; preds = %if.then6
  %bf.lshr.mask.i = and i32 %bf.load.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr.mask.i)
  %cmp5.i = icmp eq i32 %bf.lshr.mask.i, 536870912
  br i1 %cmp5.i, label %if.else.i.if.end8.i_crit_edge, label %if.else.i.udf_table_new_block.exit_crit_edge

if.else.i.udf_table_new_block.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udf_table_new_block.exit

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i.if.end8.i_crit_edge, %if.then6.if.end8.i_crit_edge
  %adsize.0.neg.i = phi i32 [ -8, %if.then6.if.end8.i_crit_edge ], [ -16, %if.else.i.if.end8.i_crit_edge ]
  %s_alloc_mutex.i = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %s_alloc_mutex.i, i32 noundef 0) #6
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %s_partition_len.i = getelementptr %struct.udf_part_map, ptr %18, i32 %idxprom, i32 2
  %19 = ptrtoint ptr %s_partition_len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_partition_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %goal)
  %cmp9.not.i = icmp ugt i32 %20, %goal
  %spec.select.i = select i1 %cmp9.not.i, i32 %goal, i32 0
  %offset.i = getelementptr inbounds %struct.extent_position, ptr %epos.i, i32 0, i32 1
  %21 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 40, ptr %offset.i, align 4
  %block.i = getelementptr inbounds %struct.extent_position, ptr %epos.i, i32 0, i32 2
  %i_location.i = getelementptr i8, ptr %9, i32 -240
  %22 = ptrtoint ptr %i_location.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_location.i, align 8
  %24 = ptrtoint ptr %block.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %23, ptr %block.i, align 4
  %25 = ptrtoint ptr %goal_epos.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %goal_epos.i, align 4
  %26 = ptrtoint ptr %epos.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %epos.i, align 4
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %block48.i = getelementptr inbounds %struct.extent_position, ptr %goal_epos.i, i32 0, i32 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end54.i.land.rhs.i_crit_edge, %if.end8.i
  %goal_elen.0122.i = phi i32 [ 0, %if.end8.i ], [ %goal_elen.1.i, %if.end54.i.land.rhs.i_crit_edge ]
  %spread.0121.i = phi i32 [ -1, %if.end8.i ], [ %spread.1.i, %if.end54.i.land.rhs.i_crit_edge ]
  %call13.i = call signext i8 @udf_next_aext(ptr noundef %9, ptr noundef nonnull %epos.i, ptr noundef nonnull %eloc.i, ptr noundef nonnull %elen.i, i32 noundef 1) #6
  %conv109.i = zext i8 %call13.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call13.i)
  %cmp14.not.i = icmp eq i8 %call13.i, -1
  br i1 %cmp14.not.i, label %land.rhs.i.while.end.i_crit_edge, label %while.body.i

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  %27 = ptrtoint ptr %eloc.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %eloc.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %spec.select.i)
  %cmp16.not.i = icmp ugt i32 %28, %spec.select.i
  br i1 %cmp16.not.i, label %if.else31.i, label %if.then18.i

if.then18.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %elen.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %elen.i, align 4
  %31 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv20.i = zext i8 %32 to i32
  %shr.i = lshr i32 %30, %conv20.i
  %add.i = add i32 %shr.i, %28
  %33 = call i32 @llvm.usub.sat.i32(i32 %spec.select.i, i32 %add.i) #6
  br label %if.end34.i

if.else31.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub33.i = sub i32 %28, %spec.select.i
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else31.i, %if.then18.i
  %nspread.0.i = phi i32 [ %sub33.i, %if.else31.i ], [ %33, %if.then18.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nspread.0.i, i32 %spread.0121.i)
  %cmp35.i = icmp ult i32 %nspread.0.i, %spread.0121.i
  br i1 %cmp35.i, label %if.then37.i, label %if.end34.i.if.end54.i_crit_edge

if.end34.i.if.end54.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.i

if.then37.i:                                      ; preds = %if.end34.i
  %34 = ptrtoint ptr %goal_epos.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %goal_epos.i, align 4
  %36 = ptrtoint ptr %epos.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %epos.i, align 4
  %cmp40.not.i = icmp eq ptr %35, %37
  br i1 %cmp40.not.i, label %if.then37.i.if.end47.i_crit_edge, label %if.then42.i

if.then37.i.if.end47.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

if.then42.i:                                      ; preds = %if.then37.i
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %if.then42.i.brelse.exit.i_crit_edge, label %if.then.i.i

if.then42.i.brelse.exit.i_crit_edge:              ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %35) #6
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %if.then42.i.brelse.exit.i_crit_edge
  %38 = ptrtoint ptr %epos.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %epos.i, align 4
  %40 = ptrtoint ptr %goal_epos.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %goal_epos.i, align 4
  %b_count.i.i = getelementptr inbounds %struct.buffer_head, ptr %39, i32 0, i32 11
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %b_count.i.i, i32 1, i32 3, i32 1) #6
  %41 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i, ptr %b_count.i.i, i32 1, ptr elementtype(i32) %b_count.i.i) #6, !srcloc !52
  br label %if.end47.i

if.end47.i:                                       ; preds = %brelse.exit.i, %if.then37.i.if.end47.i_crit_edge
  %42 = ptrtoint ptr %block.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %43 = load i64, ptr %block.i, align 4
  %44 = ptrtoint ptr %block48.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 8)
  store i64 %43, ptr %block48.i, align 4
  %45 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %offset.i, align 4
  %sub51.i = add i32 %46, %adsize.0.neg.i
  %47 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub51.i, ptr %13, align 4
  %48 = ptrtoint ptr %eloc.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %eloc.i, align 8
  %50 = ptrtoint ptr %goal_eloc.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %goal_eloc.i, align 8
  %shl.i = shl i32 %conv109.i, 30
  %51 = ptrtoint ptr %elen.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %elen.i, align 4
  %or.i = or i32 %52, %shl.i
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.end47.i, %if.end34.i.if.end54.i_crit_edge
  %spread.1.i = phi i32 [ %nspread.0.i, %if.end47.i ], [ %spread.0121.i, %if.end34.i.if.end54.i_crit_edge ]
  %goal_elen.1.i = phi i32 [ %or.i, %if.end47.i ], [ %goal_elen.0122.i, %if.end34.i.if.end54.i_crit_edge ]
  %tobool.not.i = icmp eq i32 %spread.1.i, 0
  br i1 %tobool.not.i, label %if.end54.i.while.end.i_crit_edge, label %if.end54.i.land.rhs.i_crit_edge

if.end54.i.land.rhs.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

if.end54.i.while.end.i_crit_edge:                 ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %if.end54.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge
  %spread.0.lcssa.i = phi i32 [ 0, %if.end54.i.while.end.i_crit_edge ], [ %spread.0121.i, %land.rhs.i.while.end.i_crit_edge ]
  %goal_elen.0.lcssa.i = phi i32 [ %goal_elen.1.i, %if.end54.i.while.end.i_crit_edge ], [ %goal_elen.0122.i, %land.rhs.i.while.end.i_crit_edge ]
  %53 = ptrtoint ptr %epos.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %epos.i, align 4
  %tobool.not.i110.i = icmp eq ptr %54, null
  br i1 %tobool.not.i110.i, label %while.end.i.brelse.exit112.i_crit_edge, label %if.then.i111.i

while.end.i.brelse.exit112.i_crit_edge:           ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit112.i

if.then.i111.i:                                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %54) #6
  br label %brelse.exit112.i

brelse.exit112.i:                                 ; preds = %if.then.i111.i, %while.end.i.brelse.exit112.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spread.0.lcssa.i)
  %cmp56.i = icmp eq i32 %spread.0.lcssa.i, -1
  br i1 %cmp56.i, label %if.then58.i, label %if.end61.i

if.then58.i:                                      ; preds = %brelse.exit112.i
  %55 = ptrtoint ptr %goal_epos.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %goal_epos.i, align 4
  %tobool.not.i113.i = icmp eq ptr %56, null
  br i1 %tobool.not.i113.i, label %if.then58.i.brelse.exit115.i_crit_edge, label %if.then.i114.i

if.then58.i.brelse.exit115.i_crit_edge:           ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit115.i

if.then.i114.i:                                   ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %56) #6
  br label %brelse.exit115.i

brelse.exit115.i:                                 ; preds = %if.then.i114.i, %if.then58.i.brelse.exit115.i_crit_edge
  call void @mutex_unlock(ptr noundef %s_alloc_mutex.i) #6
  br label %udf_table_new_block.exit

if.end61.i:                                       ; preds = %brelse.exit112.i
  %57 = ptrtoint ptr %goal_eloc.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %goal_eloc.i, align 8
  %inc.i = add i32 %58, 1
  store i32 %inc.i, ptr %goal_eloc.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %59 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %s_blocksize.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %goal_elen.0.lcssa.i, i32 %60)
  %tobool65.not.i = icmp eq i32 %goal_elen.0.lcssa.i, %60
  br i1 %tobool65.not.i, label %if.else67.i, label %if.then66.i

if.then66.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub64.i = sub i32 %goal_elen.0.lcssa.i, %60
  call void @udf_write_aext(ptr noundef %9, ptr noundef nonnull %goal_epos.i, ptr noundef nonnull %goal_eloc.i, i32 noundef %sub64.i, i32 noundef 1) #6
  br label %if.end69.i

if.else67.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %goal_epos.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.fca.0.load.i = load i32, ptr %goal_epos.i, align 4
  %.fca.0.insert.i = insertvalue [4 x i32] poison, i32 %.fca.0.load.i, 0
  %62 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.fca.1.load.i = load i32, ptr %13, align 4
  %.fca.1.insert.i = insertvalue [4 x i32] %.fca.0.insert.i, i32 %.fca.1.load.i, 1
  %63 = ptrtoint ptr %block48.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %.fca.2.load.i = load i32, ptr %block48.i, align 4
  %.fca.2.insert.i = insertvalue [4 x i32] %.fca.1.insert.i, i32 %.fca.2.load.i, 2
  %.fca.3.gep.i = getelementptr inbounds [4 x i32], ptr %goal_epos.i, i32 0, i32 3
  %64 = ptrtoint ptr %.fca.3.gep.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.fca.3.load.i = load i32, ptr %.fca.3.gep.i, align 4
  %.fca.3.insert.i = insertvalue [4 x i32] %.fca.2.insert.i, i32 %.fca.3.load.i, 3
  %call68.i = call signext i8 @udf_delete_aext(ptr noundef %9, [4 x i32] %.fca.3.insert.i) #6
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.else67.i, %if.then66.i
  %65 = ptrtoint ptr %goal_epos.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %goal_epos.i, align 4
  %tobool.not.i116.i = icmp eq ptr %66, null
  br i1 %tobool.not.i116.i, label %if.end69.i.brelse.exit118.i_crit_edge, label %if.then.i117.i

if.end69.i.brelse.exit118.i_crit_edge:            ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit118.i

if.then.i117.i:                                   ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %66) #6
  br label %brelse.exit118.i

brelse.exit118.i:                                 ; preds = %if.then.i117.i, %if.end69.i.brelse.exit118.i_crit_edge
  %67 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_bh.i.i = getelementptr inbounds %struct.udf_sb_info, ptr %68, i32 0, i32 7
  %69 = ptrtoint ptr %s_lvid_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_lvid_bh.i.i, align 4
  %tobool.not.i119.i = icmp eq ptr %70, null
  br i1 %tobool.not.i119.i, label %brelse.exit118.i.udf_add_free_space.exit.i_crit_edge, label %if.end.i.i

brelse.exit118.i.udf_add_free_space.exit.i_crit_edge: ; preds = %brelse.exit118.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udf_add_free_space.exit.i

if.end.i.i:                                       ; preds = %brelse.exit118.i
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %b_data.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.logicalVolIntegrityDesc, ptr %72, i32 0, i32 7, i32 %idxprom
  %73 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i.i, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %74) #6
  %add.i.i.i = add i32 %75, -1
  %76 = call i32 @llvm.bswap.i32(i32 %add.i.i.i) #6
  %77 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %arrayidx.i.i, align 4
  %78 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_bh.i.i.i = getelementptr inbounds %struct.udf_sb_info, ptr %79, i32 0, i32 7
  %80 = ptrtoint ptr %s_lvid_bh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %s_lvid_bh.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %81, null
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %do.end9.i.i.i, !prof !48

do.body4.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/udf/udfdecl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #6, !srcloc !49
  unreachable

do.end9.i.i.i:                                    ; preds = %if.end.i.i
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %b_data.i.i.i, align 4
  %integrityType.i.i.i = getelementptr inbounds %struct.logicalVolIntegrityDesc, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %integrityType.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %integrityType.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp.not.i.i.i = icmp eq i32 %85, 0
  br i1 %cmp.not.i.i.i, label %do.end9.i.i.i.udf_updated_lvid.exit.i.i_crit_edge, label %land.rhs.i.i.i

do.end9.i.i.i.udf_updated_lvid.exit.i.i_crit_edge: ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udf_updated_lvid.exit.i.i

land.rhs.i.i.i:                                   ; preds = %do.end9.i.i.i
  %.b62.i.i.i = load i1, ptr @udf_updated_lvid.__already_done, align 1
  br i1 %.b62.i.i.i, label %land.rhs.i.i.i.udf_updated_lvid.exit.i.i_crit_edge, label %if.then24.i.i.i, !prof !50

land.rhs.i.i.i.udf_updated_lvid.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udf_updated_lvid.exit.i.i

if.then24.i.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @udf_updated_lvid.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 116, i32 noundef 9, ptr noundef null) #6
  br label %udf_updated_lvid.exit.i.i

udf_updated_lvid.exit.i.i:                        ; preds = %if.then24.i.i.i, %land.rhs.i.i.i.udf_updated_lvid.exit.i.i_crit_edge, %do.end9.i.i.i.udf_updated_lvid.exit.i.i_crit_edge
  %86 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_dirty.i.i.i = getelementptr inbounds %struct.udf_sb_info, ptr %87, i32 0, i32 21
  %88 = ptrtoint ptr %s_lvid_dirty.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %s_lvid_dirty.i.i.i, align 4
  br label %udf_add_free_space.exit.i

udf_add_free_space.exit.i:                        ; preds = %udf_updated_lvid.exit.i.i, %brelse.exit118.i.udf_add_free_space.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %s_alloc_mutex.i) #6
  %89 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %err, align 4
  br label %udf_table_new_block.exit

udf_table_new_block.exit:                         ; preds = %udf_add_free_space.exit.i, %brelse.exit115.i, %if.else.i.udf_table_new_block.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %brelse.exit115.i ], [ %58, %udf_add_free_space.exit.i ], [ 0, %if.else.i.udf_table_new_block.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %goal_epos.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %epos.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %goal_eloc.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eloc.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elen.i) #6
  br label %if.end10

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -5, ptr %err, align 4
  br label %cleanup

if.end10:                                         ; preds = %udf_table_new_block.exit, %if.then
  %block.0 = phi i32 [ %call1, %if.then ], [ %retval.0.i, %udf_table_new_block.exit ]
  %tobool11.not = icmp eq ptr %inode, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %block.0)
  %tobool12.not = icmp eq i32 %block.0, 0
  %or.cond = select i1 %tobool11.not, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %if.end10.cleanup_crit_edge, label %if.then13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %91 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %s_blocksize, align 16
  %conv14 = zext i32 %92 to i64
  call void @inode_add_bytes(ptr noundef nonnull %inode, i64 noundef %conv14) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end10.cleanup_crit_edge, %if.else9
  %retval.0 = phi i32 [ 0, %if.else9 ], [ %block.0, %if.then13 ], [ %block.0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udf_bitmap_new_block(ptr noundef %sb, ptr nocapture noundef %bitmap, i16 noundef zeroext %partition, i32 noundef %goal, ptr nocapture noundef writeonly %err) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -28, ptr %err, align 4
  %s_alloc_mutex = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %s_alloc_mutex, i32 noundef 0) #6
  %idxprom = zext i16 %partition to i32
  %s_nr_groups = getelementptr inbounds %struct.udf_bitmap, ptr %bitmap, i32 0, i32 1
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  br label %repeat

repeat:                                           ; preds = %if.then169, %do.body, %entry
  %newblock.0 = phi i32 [ 0, %entry ], [ %sub147, %do.body ], [ %sub147, %if.then169 ]
  %goal.addr.0 = phi i32 [ %goal, %entry ], [ %spec.select, %do.body ], [ %spec.select, %if.then169 ]
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %s_partition_len = getelementptr %struct.udf_part_map, ptr %4, i32 %idxprom, i32 2
  %5 = ptrtoint ptr %s_partition_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_partition_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %goal.addr.0, i32 %6)
  %cmp.not = icmp ult i32 %goal.addr.0, %6
  %spec.select = select i1 %cmp.not, i32 %goal.addr.0, i32 0
  %7 = ptrtoint ptr %s_nr_groups to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_nr_groups, align 4
  %add = add i32 %spec.select, 192
  %9 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %10 to i32
  %add1 = add nuw nsw i32 %conv, 3
  %shr = lshr i32 %add, %add1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool.not = icmp eq i32 %shr, 0
  %cond = select i1 %tobool.not, i32 24, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %shr)
  %cmp.not.i.i = icmp ugt i32 %8, %shr
  br i1 %cmp.not.i.i, label %repeat.if.end5.i.i_crit_edge, label %do.body.i.i

repeat.if.end5.i.i_crit_edge:                     ; preds = %repeat
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i.i

do.body.i.i:                                      ; preds = %repeat
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__load_block_bitmap.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_bitmap_new_block, %if.then4.i.i)) #6
          to label %if.end5.i.i [label %if.then4.i.i], !srcloc !47

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__load_block_bitmap.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 62, ptr noundef nonnull @.str.9, i32 noundef %shr, i32 noundef %8) #6
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then4.i.i, %do.body.i.i, %repeat.if.end5.i.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.udf_bitmap, ptr %bitmap, i32 0, i32 2, i32 %shr
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %12, null
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end5.i.i.if.end6_crit_edge

if.end5.i.i.if.end6_crit_edge:                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end8.i.i:                                      ; preds = %if.end5.i.i
  %13 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bitmap, align 4
  %15 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i, align 16
  %s_partition.i.i.i = getelementptr inbounds %struct.udf_sb_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %s_partition.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %s_partition.i.i.i, align 2
  %call.i.i.i.i = tail call i32 @udf_get_pblock(ptr noundef %sb, i32 noundef %14, i16 noundef zeroext %18, i32 noundef %shr) #6
  %call3.i.i.i = tail call ptr @udf_tread(ptr noundef %sb, i32 noundef %call.i.i.i.i) #6
  %tobool.not.i.i.i = icmp eq ptr %call3.i.i.i, null
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call3.i.i.i, ptr %arrayidx.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.end8.i.i.error_return_crit_edge, label %if.end8.i.i.if.end6_crit_edge

if.end8.i.i.if.end6_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end8.i.i.error_return_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_return

if.end6:                                          ; preds = %if.end8.i.i.if.end6_crit_edge, %if.end5.i.i.if.end6_crit_edge
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 %cond
  %24 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_blocksize, align 16
  %sub = sub i32 %25, %cond
  %call8 = tail call ptr @memscan(ptr noundef %add.ptr, i32 noundef 255, i32 noundef %sub) #6
  %26 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %call8 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %27 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %28 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %29)
  %cmp11 = icmp ult i32 %sub.ptr.sub, %29
  br i1 %cmp11, label %if.then13, label %if.end6.if.end56_crit_edge

if.end6.if.end56_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then13:                                        ; preds = %if.end6
  %shl = shl i32 %29, 3
  %rem = urem i32 %add, %shl
  %div3.i.i = lshr i32 %rem, 5
  %arrayidx.i.i290 = getelementptr i32, ptr %27, i32 %div3.i.i
  %30 = ptrtoint ptr %arrayidx.i.i290 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %arrayidx.i.i290, align 4
  %xor.i = and i32 %rem, 31
  %and.i.i = xor i32 %xor.i, 24
  %32 = shl nuw i32 1, %and.i.i
  %33 = and i32 %32, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool17.not = icmp eq i32 %33, 0
  br i1 %tobool17.not, label %if.end19, label %if.then13.got_block_crit_edge

if.then13.got_block_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %got_block

if.end19:                                         ; preds = %if.then13
  %add20 = add i32 %rem, 63
  %and = and i32 %add20, -64
  %call.i = tail call i32 @_find_next_bit_le(ptr noundef %27, i32 noundef %and, i32 noundef %rem) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %and)
  %cmp23 = icmp slt i32 %call.i, %and
  br i1 %cmp23, label %if.end19.got_block_crit_edge, label %if.end26

if.end19.got_block_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %got_block

if.end26:                                         ; preds = %if.end19
  %34 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_data, align 4
  %shr28 = ashr i32 %call.i, 3
  %add.ptr29 = getelementptr i8, ptr %35, i32 %shr28
  %36 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_blocksize, align 16
  %add31 = add i32 %call.i, 7
  %shr32 = ashr i32 %add31, 3
  %sub33 = sub i32 %37, %shr32
  %call34 = tail call ptr @memscan(ptr noundef %add.ptr29, i32 noundef 255, i32 noundef %sub33) #6
  %38 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %b_data, align 4
  %sub.ptr.lhs.cast36 = ptrtoint ptr %call34 to i32
  %sub.ptr.rhs.cast37 = ptrtoint ptr %39 to i32
  %sub.ptr.sub38 = sub i32 %sub.ptr.lhs.cast36, %sub.ptr.rhs.cast37
  %shl39 = shl i32 %sub.ptr.sub38, 3
  %40 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %s_blocksize, align 16
  %shl41 = shl i32 %41, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shl39, i32 %shl41)
  %cmp42 = icmp ult i32 %shl39, %shl41
  br i1 %cmp42, label %if.end26.search_back_crit_edge, label %if.end45

if.end26.search_back_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %search_back

if.end45:                                         ; preds = %if.end26
  %call.i291 = tail call i32 @_find_next_bit_le(ptr noundef %39, i32 noundef %shl41, i32 noundef %call.i) #6
  %42 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s_blocksize, align 16
  %shl51 = shl i32 %43, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i291, i32 %shl51)
  %cmp52 = icmp ult i32 %call.i291, %shl51
  br i1 %cmp52, label %if.end45.got_block_crit_edge, label %if.end45.if.end56_crit_edge

if.end45.if.end56_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.end45.got_block_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %got_block

if.end56:                                         ; preds = %if.end45.if.end56_crit_edge, %if.end6.if.end56_crit_edge
  %mul = shl i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp57362 = icmp sgt i32 %mul, 0
  br i1 %cmp57362, label %if.end56.for.body_crit_edge, label %if.end56.if.then110_crit_edge

if.end56.if.then110_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then110

if.end56.for.body_crit_edge:                      ; preds = %if.end56
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end56.for.body_crit_edge
  %i.0364 = phi i32 [ %inc106, %for.inc.for.body_crit_edge ], [ 0, %if.end56.for.body_crit_edge ]
  %block_group.0363 = phi i32 [ %spec.store.select, %for.inc.for.body_crit_edge ], [ %shr, %if.end56.for.body_crit_edge ]
  %inc = add nuw i32 %block_group.0363, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %8)
  %cmp59.not = icmp slt i32 %inc, %8
  %spec.store.select = select i1 %cmp59.not, i32 %inc, i32 0
  %cond64 = select i1 %cmp59.not, i32 0, i32 24
  %44 = ptrtoint ptr %s_nr_groups to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %s_nr_groups, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %spec.store.select)
  %cmp.not.i.i293 = icmp ugt i32 %45, %spec.store.select
  br i1 %cmp.not.i.i293, label %for.body.if.end5.i.i298_crit_edge, label %do.body.i.i294

for.body.if.end5.i.i298_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i.i298

do.body.i.i294:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__load_block_bitmap.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_bitmap_new_block, %if.then4.i.i295)) #6
          to label %if.end5.i.i298 [label %if.then4.i.i295], !srcloc !47

if.then4.i.i295:                                  ; preds = %do.body.i.i294
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__load_block_bitmap.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 62, ptr noundef nonnull @.str.9, i32 noundef %spec.store.select, i32 noundef %45) #6
  br label %if.end5.i.i298

if.end5.i.i298:                                   ; preds = %if.then4.i.i295, %do.body.i.i294, %for.body.if.end5.i.i298_crit_edge
  %arrayidx.i.i296 = getelementptr %struct.udf_bitmap, ptr %bitmap, i32 0, i32 2, i32 %spec.store.select
  %46 = ptrtoint ptr %arrayidx.i.i296 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i296, align 4
  %tobool6.not.i.i297 = icmp eq ptr %47, null
  br i1 %tobool6.not.i.i297, label %if.end8.i.i304, label %__load_block_bitmap.exit.i306

if.end8.i.i304:                                   ; preds = %if.end5.i.i298
  %48 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bitmap, align 4
  %50 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_fs_info.i, align 16
  %s_partition.i.i.i300 = getelementptr inbounds %struct.udf_sb_info, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %s_partition.i.i.i300 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %s_partition.i.i.i300, align 2
  %call.i.i.i.i301 = tail call i32 @udf_get_pblock(ptr noundef %sb, i32 noundef %49, i16 noundef zeroext %53, i32 noundef %spec.store.select) #6
  %call3.i.i.i302 = tail call ptr @udf_tread(ptr noundef %sb, i32 noundef %call.i.i.i.i301) #6
  %tobool.not.i.i.i303 = icmp eq ptr %call3.i.i.i302, null
  %54 = ptrtoint ptr %arrayidx.i.i296 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call3.i.i.i302, ptr %arrayidx.i.i296, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp.i305 = icmp slt i32 %spec.store.select, 0
  %or.cond339 = select i1 %tobool.not.i.i.i303, i1 true, i1 %cmp.i305
  br i1 %or.cond339, label %if.end8.i.i304.error_return_crit_edge, label %if.end8.i.i304.if.end69_crit_edge

if.end8.i.i304.if.end69_crit_edge:                ; preds = %if.end8.i.i304
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.end8.i.i304.error_return_crit_edge:            ; preds = %if.end8.i.i304
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_return

__load_block_bitmap.exit.i306:                    ; preds = %if.end5.i.i298
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp.i305.old = icmp slt i32 %spec.store.select, 0
  br i1 %cmp.i305.old, label %__load_block_bitmap.exit.i306.error_return_crit_edge, label %__load_block_bitmap.exit.i306.if.end69_crit_edge

__load_block_bitmap.exit.i306.if.end69_crit_edge: ; preds = %__load_block_bitmap.exit.i306
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

__load_block_bitmap.exit.i306.error_return_crit_edge: ; preds = %__load_block_bitmap.exit.i306
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_return

if.end69:                                         ; preds = %__load_block_bitmap.exit.i306.if.end69_crit_edge, %if.end8.i.i304.if.end69_crit_edge
  %55 = ptrtoint ptr %arrayidx.i.i296 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i.i296, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0364, i32 %8)
  %cmp72 = icmp slt i32 %i.0364, %8
  %b_data75 = getelementptr inbounds %struct.buffer_head, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %b_data75 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %b_data75, align 4
  br i1 %cmp72, label %if.then74, label %if.else

if.then74:                                        ; preds = %if.end69
  %add.ptr76 = getelementptr i8, ptr %58, i32 %cond64
  %59 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %s_blocksize, align 16
  %sub78 = sub i32 %60, %cond64
  %call79 = tail call ptr @memscan(ptr noundef %add.ptr76, i32 noundef 255, i32 noundef %sub78) #6
  %61 = ptrtoint ptr %b_data75 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %b_data75, align 4
  %sub.ptr.lhs.cast81 = ptrtoint ptr %call79 to i32
  %sub.ptr.rhs.cast82 = ptrtoint ptr %62 to i32
  %sub.ptr.sub83 = sub i32 %sub.ptr.lhs.cast81, %sub.ptr.rhs.cast82
  %63 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub83, i32 %64)
  %cmp85 = icmp ult i32 %sub.ptr.sub83, %64
  br i1 %cmp85, label %if.then87, label %if.then74.for.inc_crit_edge

if.then74.for.inc_crit_edge:                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then87:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #8
  %shl92 = shl i32 %sub.ptr.sub83, 3
  br label %if.end112

if.else:                                          ; preds = %if.end69
  %65 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %s_blocksize, align 16
  %shl96 = shl i32 %66, 3
  %shl97 = shl nuw nsw i32 %cond64, 3
  %call.i312 = tail call i32 @_find_next_bit_le(ptr noundef %58, i32 noundef %shl96, i32 noundef %shl97) #6
  %67 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %s_blocksize, align 16
  %shl100 = shl i32 %68, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i312, i32 %shl100)
  %cmp101 = icmp ult i32 %call.i312, %shl100
  br i1 %cmp101, label %if.else.if.end112_crit_edge, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else.if.end112_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.then74.for.inc_crit_edge
  %inc106 = add nuw nsw i32 %i.0364, 1
  %exitcond.not = icmp eq i32 %inc106, %mul
  br i1 %exitcond.not, label %for.inc.if.then110_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.then110_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then110

if.then110:                                       ; preds = %for.inc.if.then110_crit_edge, %if.end56.if.then110_crit_edge
  tail call void @mutex_unlock(ptr noundef %s_alloc_mutex) #6
  br label %cleanup

if.end112:                                        ; preds = %if.else.if.end112_crit_edge, %if.then87
  %bit.4.ph = phi i32 [ %shl92, %if.then87 ], [ %call.i312, %if.else.if.end112_crit_edge ]
  %69 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %s_blocksize, align 16
  %shl114 = shl i32 %70, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %bit.4.ph, i32 %shl114)
  %cmp115 = icmp ult i32 %bit.4.ph, %shl114
  br i1 %cmp115, label %if.end112.search_back_crit_edge, label %if.else118

if.end112.search_back_crit_edge:                  ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %search_back

if.else118:                                       ; preds = %if.end112
  %b_data119 = getelementptr inbounds %struct.buffer_head, ptr %56, i32 0, i32 5
  %71 = ptrtoint ptr %b_data119 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %b_data119, align 4
  %shl122 = shl nuw nsw i32 %cond64, 3
  %call.i313 = tail call i32 @_find_next_bit_le(ptr noundef %72, i32 noundef %shl114, i32 noundef %shl122) #6
  %73 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %s_blocksize, align 16
  %shl126 = shl i32 %74, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i313, i32 %shl126)
  %cmp127.not = icmp ult i32 %call.i313, %shl126
  br i1 %cmp127.not, label %if.else118.search_back_crit_edge, label %if.then129

if.else118.search_back_crit_edge:                 ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #8
  br label %search_back

if.then129:                                       ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %s_alloc_mutex) #6
  br label %cleanup

search_back:                                      ; preds = %if.else118.search_back_crit_edge, %if.end112.search_back_crit_edge, %if.end26.search_back_crit_edge
  %bit.5 = phi i32 [ %bit.4.ph, %if.end112.search_back_crit_edge ], [ %call.i313, %if.else118.search_back_crit_edge ], [ %shl39, %if.end26.search_back_crit_edge ]
  %block_group.2 = phi i32 [ %spec.store.select, %if.end112.search_back_crit_edge ], [ %spec.store.select, %if.else118.search_back_crit_edge ], [ %shr, %if.end26.search_back_crit_edge ]
  %group_start.2 = phi i32 [ %cond64, %if.end112.search_back_crit_edge ], [ %cond64, %if.else118.search_back_crit_edge ], [ %cond, %if.end26.search_back_crit_edge ]
  %bh.2 = phi ptr [ %56, %if.end112.search_back_crit_edge ], [ %56, %if.else118.search_back_crit_edge ], [ %21, %if.end26.search_back_crit_edge ]
  %shl134 = shl nuw nsw i32 %group_start.2, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %bit.5, i32 %shl134)
  %cmp135366 = icmp sgt i32 %bit.5, %shl134
  br i1 %cmp135366, label %land.rhs.lr.ph, label %search_back.got_block_crit_edge

search_back.got_block_crit_edge:                  ; preds = %search_back
  call void @__sanitizer_cov_trace_pc() #8
  br label %got_block

land.rhs.lr.ph:                                   ; preds = %search_back
  %b_data138 = getelementptr inbounds %struct.buffer_head, ptr %bh.2, i32 0, i32 5
  %75 = ptrtoint ptr %b_data138 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %b_data138, align 4
  %sub137 = add nsw i32 %bit.5, -1
  %div3.i.i314 = lshr i32 %sub137, 5
  %arrayidx.i.i315 = getelementptr i32, ptr %76, i32 %div3.i.i314
  %77 = ptrtoint ptr %arrayidx.i.i315 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %arrayidx.i.i315, align 4
  %xor.i316 = and i32 %sub137, 31
  %and.i.i317 = xor i32 %xor.i316, 24
  %79 = shl nuw i32 1, %and.i.i317
  %80 = and i32 %78, %79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool140.not = icmp eq i32 %80, 0
  br i1 %tobool140.not, label %land.rhs.lr.ph.got_block_crit_edge, label %while.cond

land.rhs.lr.ph.got_block_crit_edge:               ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %got_block

while.cond:                                       ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_cmp4(i32 %sub137, i32 %shl134)
  %cmp135 = icmp sgt i32 %sub137, %shl134
  br i1 %cmp135, label %land.rhs.1, label %while.cond.got_block_crit_edge

while.cond.got_block_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %got_block

land.rhs.1:                                       ; preds = %while.cond
  %sub137.1 = add nsw i32 %bit.5, -2
  %div3.i.i314.1 = lshr i32 %sub137.1, 5
  %arrayidx.i.i315.1 = getelementptr i32, ptr %76, i32 %div3.i.i314.1
  %81 = ptrtoint ptr %arrayidx.i.i315.1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %arrayidx.i.i315.1, align 4
  %xor.i316.1 = and i32 %sub137.1, 31
  %and.i.i317.1 = xor i32 %xor.i316.1, 24
  %83 = shl nuw i32 1, %and.i.i317.1
  %84 = and i32 %82, %83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool140.not.1 = icmp eq i32 %84, 0
  br i1 %tobool140.not.1, label %land.rhs.1.got_block_crit_edge, label %while.cond.1

land.rhs.1.got_block_crit_edge:                   ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %got_block

while.cond.1:                                     ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub137.1, i32 %shl134)
  %cmp135.1 = icmp sgt i32 %sub137.1, %shl134
  br i1 %cmp135.1, label %land.rhs.2, label %while.cond.1.got_block_crit_edge

while.cond.1.got_block_crit_edge:                 ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %got_block

land.rhs.2:                                       ; preds = %while.cond.1
  %sub137.2 = add nsw i32 %bit.5, -3
  %div3.i.i314.2 = lshr i32 %sub137.2, 5
  %arrayidx.i.i315.2 = getelementptr i32, ptr %76, i32 %div3.i.i314.2
  %85 = ptrtoint ptr %arrayidx.i.i315.2 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %arrayidx.i.i315.2, align 4
  %xor.i316.2 = and i32 %sub137.2, 31
  %and.i.i317.2 = xor i32 %xor.i316.2, 24
  %87 = shl nuw i32 1, %and.i.i317.2
  %88 = and i32 %86, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool140.not.2 = icmp eq i32 %88, 0
  br i1 %tobool140.not.2, label %land.rhs.2.got_block_crit_edge, label %while.cond.2

land.rhs.2.got_block_crit_edge:                   ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %got_block

while.cond.2:                                     ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub137.2, i32 %shl134)
  %cmp135.2 = icmp sgt i32 %sub137.2, %shl134
  br i1 %cmp135.2, label %land.rhs.3, label %while.cond.2.got_block_crit_edge

while.cond.2.got_block_crit_edge:                 ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %got_block

land.rhs.3:                                       ; preds = %while.cond.2
  %sub137.3 = add nsw i32 %bit.5, -4
  %div3.i.i314.3 = lshr i32 %sub137.3, 5
  %arrayidx.i.i315.3 = getelementptr i32, ptr %76, i32 %div3.i.i314.3
  %89 = ptrtoint ptr %arrayidx.i.i315.3 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %arrayidx.i.i315.3, align 4
  %xor.i316.3 = and i32 %sub137.3, 31
  %and.i.i317.3 = xor i32 %xor.i316.3, 24
  %91 = shl nuw i32 1, %and.i.i317.3
  %92 = and i32 %90, %91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool140.not.3 = icmp eq i32 %92, 0
  br i1 %tobool140.not.3, label %land.rhs.3.got_block_crit_edge, label %while.cond.3

land.rhs.3.got_block_crit_edge:                   ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %got_block

while.cond.3:                                     ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub137.3, i32 %shl134)
  %cmp135.3 = icmp sgt i32 %sub137.3, %shl134
  br i1 %cmp135.3, label %land.rhs.4, label %while.cond.3.got_block_crit_edge

while.cond.3.got_block_crit_edge:                 ; preds = %while.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %got_block

land.rhs.4:                                       ; preds = %while.cond.3
  %sub137.4 = add nsw i32 %bit.5, -5
  %div3.i.i314.4 = lshr i32 %sub137.4, 5
  %arrayidx.i.i315.4 = getelementptr i32, ptr %76, i32 %div3.i.i314.4
  %93 = ptrtoint ptr %arrayidx.i.i315.4 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %arrayidx.i.i315.4, align 4
  %xor.i316.4 = and i32 %sub137.4, 31
  %and.i.i317.4 = xor i32 %xor.i316.4, 24
  %95 = shl nuw i32 1, %and.i.i317.4
  %96 = and i32 %94, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool140.not.4 = icmp eq i32 %96, 0
  br i1 %tobool140.not.4, label %land.rhs.4.got_block_crit_edge, label %while.cond.4

land.rhs.4.got_block_crit_edge:                   ; preds = %land.rhs.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %got_block

while.cond.4:                                     ; preds = %land.rhs.4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub137.4, i32 %shl134)
  %cmp135.4 = icmp sgt i32 %sub137.4, %shl134
  br i1 %cmp135.4, label %land.rhs.5, label %while.cond.4.got_block_crit_edge

while.cond.4.got_block_crit_edge:                 ; preds = %while.cond.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %got_block

land.rhs.5:                                       ; preds = %while.cond.4
  %sub137.5 = add nsw i32 %bit.5, -6
  %div3.i.i314.5 = lshr i32 %sub137.5, 5
  %arrayidx.i.i315.5 = getelementptr i32, ptr %76, i32 %div3.i.i314.5
  %97 = ptrtoint ptr %arrayidx.i.i315.5 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %arrayidx.i.i315.5, align 4
  %xor.i316.5 = and i32 %sub137.5, 31
  %and.i.i317.5 = xor i32 %xor.i316.5, 24
  %99 = shl nuw i32 1, %and.i.i317.5
  %100 = and i32 %98, %99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool140.not.5 = icmp eq i32 %100, 0
  br i1 %tobool140.not.5, label %land.rhs.5.got_block_crit_edge, label %while.cond.5

land.rhs.5.got_block_crit_edge:                   ; preds = %land.rhs.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %got_block

while.cond.5:                                     ; preds = %land.rhs.5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub137.5, i32 %shl134)
  %cmp135.5 = icmp sgt i32 %sub137.5, %shl134
  br i1 %cmp135.5, label %land.rhs.6, label %while.cond.5.got_block_crit_edge

while.cond.5.got_block_crit_edge:                 ; preds = %while.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %got_block

land.rhs.6:                                       ; preds = %while.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  %sub137.6 = add nsw i32 %bit.5, -7
  %div3.i.i314.6 = lshr i32 %sub137.6, 5
  %arrayidx.i.i315.6 = getelementptr i32, ptr %76, i32 %div3.i.i314.6
  %101 = ptrtoint ptr %arrayidx.i.i315.6 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %arrayidx.i.i315.6, align 4
  %xor.i316.6 = and i32 %sub137.6, 31
  %and.i.i317.6 = xor i32 %xor.i316.6, 24
  %103 = shl nuw i32 1, %and.i.i317.6
  %104 = and i32 %102, %103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool140.not.6 = icmp eq i32 %104, 0
  %spec.select485 = select i1 %tobool140.not.6, i32 %sub137.5, i32 %sub137.6
  br label %got_block

got_block:                                        ; preds = %land.rhs.6, %while.cond.5.got_block_crit_edge, %land.rhs.5.got_block_crit_edge, %while.cond.4.got_block_crit_edge, %land.rhs.4.got_block_crit_edge, %while.cond.3.got_block_crit_edge, %land.rhs.3.got_block_crit_edge, %while.cond.2.got_block_crit_edge, %land.rhs.2.got_block_crit_edge, %while.cond.1.got_block_crit_edge, %land.rhs.1.got_block_crit_edge, %while.cond.got_block_crit_edge, %land.rhs.lr.ph.got_block_crit_edge, %search_back.got_block_crit_edge, %if.end45.got_block_crit_edge, %if.end19.got_block_crit_edge, %if.then13.got_block_crit_edge
  %bit.7 = phi i32 [ %rem, %if.then13.got_block_crit_edge ], [ %call.i, %if.end19.got_block_crit_edge ], [ %call.i291, %if.end45.got_block_crit_edge ], [ %bit.5, %search_back.got_block_crit_edge ], [ %sub137, %while.cond.got_block_crit_edge ], [ %bit.5, %land.rhs.lr.ph.got_block_crit_edge ], [ %sub137, %land.rhs.1.got_block_crit_edge ], [ %sub137.1, %while.cond.1.got_block_crit_edge ], [ %sub137.1, %land.rhs.2.got_block_crit_edge ], [ %sub137.2, %while.cond.2.got_block_crit_edge ], [ %sub137.2, %land.rhs.3.got_block_crit_edge ], [ %sub137.3, %while.cond.3.got_block_crit_edge ], [ %sub137.3, %land.rhs.4.got_block_crit_edge ], [ %sub137.4, %while.cond.4.got_block_crit_edge ], [ %sub137.4, %land.rhs.5.got_block_crit_edge ], [ %sub137.5, %while.cond.5.got_block_crit_edge ], [ %spec.select485, %land.rhs.6 ]
  %block_group.3 = phi i32 [ %shr, %if.then13.got_block_crit_edge ], [ %shr, %if.end19.got_block_crit_edge ], [ %shr, %if.end45.got_block_crit_edge ], [ %block_group.2, %search_back.got_block_crit_edge ], [ %block_group.2, %land.rhs.6 ], [ %block_group.2, %while.cond.5.got_block_crit_edge ], [ %block_group.2, %land.rhs.5.got_block_crit_edge ], [ %block_group.2, %while.cond.4.got_block_crit_edge ], [ %block_group.2, %land.rhs.4.got_block_crit_edge ], [ %block_group.2, %while.cond.3.got_block_crit_edge ], [ %block_group.2, %land.rhs.3.got_block_crit_edge ], [ %block_group.2, %while.cond.2.got_block_crit_edge ], [ %block_group.2, %land.rhs.2.got_block_crit_edge ], [ %block_group.2, %while.cond.1.got_block_crit_edge ], [ %block_group.2, %land.rhs.1.got_block_crit_edge ], [ %block_group.2, %land.rhs.lr.ph.got_block_crit_edge ], [ %block_group.2, %while.cond.got_block_crit_edge ]
  %bh.3 = phi ptr [ %21, %if.then13.got_block_crit_edge ], [ %21, %if.end19.got_block_crit_edge ], [ %21, %if.end45.got_block_crit_edge ], [ %bh.2, %search_back.got_block_crit_edge ], [ %bh.2, %land.rhs.6 ], [ %bh.2, %while.cond.5.got_block_crit_edge ], [ %bh.2, %land.rhs.5.got_block_crit_edge ], [ %bh.2, %while.cond.4.got_block_crit_edge ], [ %bh.2, %land.rhs.4.got_block_crit_edge ], [ %bh.2, %while.cond.3.got_block_crit_edge ], [ %bh.2, %land.rhs.3.got_block_crit_edge ], [ %bh.2, %while.cond.2.got_block_crit_edge ], [ %bh.2, %land.rhs.2.got_block_crit_edge ], [ %bh.2, %while.cond.1.got_block_crit_edge ], [ %bh.2, %land.rhs.1.got_block_crit_edge ], [ %bh.2, %land.rhs.lr.ph.got_block_crit_edge ], [ %bh.2, %while.cond.got_block_crit_edge ]
  %105 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %s_blocksize_bits, align 4
  %conv143 = zext i8 %106 to i32
  %add144 = add nuw nsw i32 %conv143, 3
  %shl145 = shl i32 %block_group.3, %add144
  %add146 = add i32 %bit.7, -192
  %sub147 = add i32 %add146, %shl145
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %1, align 8
  %s_partition_len151 = getelementptr %struct.udf_part_map, ptr %108, i32 %idxprom, i32 2
  %109 = ptrtoint ptr %s_partition_len151 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %s_partition_len151, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub147, i32 %110)
  %cmp152.not = icmp ult i32 %sub147, %110
  br i1 %cmp152.not, label %if.end160, label %if.then154

if.then154:                                       ; preds = %got_block
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @_udf_err(ptr noundef %sb, ptr noundef nonnull @__func__.udf_bitmap_new_block, ptr noundef nonnull @.str.17, i32 noundef %idxprom, i32 noundef %sub147, i32 noundef %110) #6
  br label %error_return

if.end160:                                        ; preds = %got_block
  %b_data161 = getelementptr inbounds %struct.buffer_head, ptr %bh.3, i32 0, i32 5
  %111 = ptrtoint ptr %b_data161 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %b_data161, align 4
  %xor.i320 = and i32 %bit.7, 31
  %rem.i.i = xor i32 %xor.i320, 24
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div6.i.i = lshr i32 %bit.7, 5
  %add.ptr.i.i = getelementptr i32, ptr %112, i32 %div6.i.i
  %113 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %add.ptr.i.i, align 4
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i321 = and i32 %114, %neg.i.i
  store i32 %and.i.i321, ptr %add.ptr.i.i, align 4
  %115 = and i32 %114, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool163.not = icmp eq i32 %115, 0
  br i1 %tobool163.not, label %do.body, label %if.end171

do.body:                                          ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_bitmap_new_block.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_bitmap_new_block, %if.then169)) #6
          to label %repeat [label %if.then169], !srcloc !47

if.then169:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_bitmap_new_block.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, i32 noundef 340, ptr noundef nonnull @__func__.udf_bitmap_new_block, i32 noundef %bit.7) #6
  br label %repeat

if.end171:                                        ; preds = %if.end160
  tail call void @mark_buffer_dirty(ptr noundef %bh.3) #6
  %116 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_bh.i = getelementptr inbounds %struct.udf_sb_info, ptr %117, i32 0, i32 7
  %118 = ptrtoint ptr %s_lvid_bh.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %s_lvid_bh.i, align 4
  %tobool.not.i322 = icmp eq ptr %119, null
  br i1 %tobool.not.i322, label %if.end171.udf_add_free_space.exit_crit_edge, label %if.end.i323

if.end171.udf_add_free_space.exit_crit_edge:      ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #8
  br label %udf_add_free_space.exit

if.end.i323:                                      ; preds = %if.end171
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %119, i32 0, i32 5
  %120 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %b_data.i, align 4
  %arrayidx.i = getelementptr %struct.logicalVolIntegrityDesc, ptr %121, i32 0, i32 7, i32 %idxprom
  %122 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx.i, align 4
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #6
  %add.i.i = add i32 %124, -1
  %125 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #6
  %126 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %arrayidx.i, align 4
  %127 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_bh.i.i = getelementptr inbounds %struct.udf_sb_info, ptr %128, i32 0, i32 7
  %129 = ptrtoint ptr %s_lvid_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %s_lvid_bh.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %130, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !48

do.body4.i.i:                                     ; preds = %if.end.i323
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/udf/udfdecl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #6, !srcloc !49
  unreachable

do.end9.i.i:                                      ; preds = %if.end.i323
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %130, i32 0, i32 5
  %131 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %b_data.i.i, align 4
  %integrityType.i.i = getelementptr inbounds %struct.logicalVolIntegrityDesc, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %integrityType.i.i to i32
  call void @__asan_loadN_noabort(i32 %133, i32 4)
  %134 = load i32, ptr %integrityType.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp.not.i.i324 = icmp eq i32 %134, 0
  br i1 %cmp.not.i.i324, label %do.end9.i.i.udf_updated_lvid.exit.i_crit_edge, label %land.rhs.i.i

do.end9.i.i.udf_updated_lvid.exit.i_crit_edge:    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udf_updated_lvid.exit.i

land.rhs.i.i:                                     ; preds = %do.end9.i.i
  %.b62.i.i = load i1, ptr @udf_updated_lvid.__already_done, align 1
  br i1 %.b62.i.i, label %land.rhs.i.i.udf_updated_lvid.exit.i_crit_edge, label %if.then24.i.i, !prof !50

land.rhs.i.i.udf_updated_lvid.exit.i_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udf_updated_lvid.exit.i

if.then24.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @udf_updated_lvid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 116, i32 noundef 9, ptr noundef null) #6
  br label %udf_updated_lvid.exit.i

udf_updated_lvid.exit.i:                          ; preds = %if.then24.i.i, %land.rhs.i.i.udf_updated_lvid.exit.i_crit_edge, %do.end9.i.i.udf_updated_lvid.exit.i_crit_edge
  %135 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_dirty.i.i = getelementptr inbounds %struct.udf_sb_info, ptr %136, i32 0, i32 21
  %137 = ptrtoint ptr %s_lvid_dirty.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 1, ptr %s_lvid_dirty.i.i, align 4
  br label %udf_add_free_space.exit

udf_add_free_space.exit:                          ; preds = %udf_updated_lvid.exit.i, %if.end171.udf_add_free_space.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %s_alloc_mutex) #6
  %138 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %err, align 4
  br label %cleanup

error_return:                                     ; preds = %if.then154, %__load_block_bitmap.exit.i306.error_return_crit_edge, %if.end8.i.i304.error_return_crit_edge, %if.end8.i.i.error_return_crit_edge
  %139 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 -5, ptr %err, align 4
  tail call void @mutex_unlock(ptr noundef %s_alloc_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %error_return, %udf_add_free_space.exit, %if.then129, %if.then110
  %retval.0 = phi i32 [ 0, %error_return ], [ %sub147, %udf_add_free_space.exit ], [ %newblock.0, %if.then110 ], [ 0, %if.then129 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udf_tread(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_get_pblock(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @udf_next_aext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @udf_write_aext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_setup_indirect_aext(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__udf_add_aext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @udf_delete_aext(ptr noundef, [4 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memscan(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_udf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23, !25, !26, !28, !29, !30, !31, !33, !34, !36, !37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/udf/balloc.c", i32 125, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @udf_bitmap_free_blocks.__UNIQUE_ID_ddebug235, !1, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/udf/balloc.c", i32 154, i32 5}
!9 = !{ptr @udf_bitmap_free_blocks.__UNIQUE_ID_ddebug236, !8, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/udf/balloc.c", i32 155, i32 5}
!13 = !{ptr @udf_bitmap_free_blocks.__UNIQUE_ID_ddebug237, !12, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!14 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/udf/balloc.c", i32 61, i32 3}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__load_block_bitmap.__UNIQUE_ID_ddebug234, !16, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!19 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../fs/udf/udfdecl.h", i32 114, i32 2}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/udf/balloc.c", i32 376, i32 3}
!25 = !{ptr @udf_table_free_blocks.__UNIQUE_ID_ddebug239, !24, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/udf/balloc.c", i32 529, i32 3}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @udf_table_prealloc_blocks.__UNIQUE_ID_ddebug240, !27, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!30 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @__func__.udf_bitmap_new_block, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/udf/balloc.c", i32 333, i32 3}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/udf/balloc.c", i32 340, i32 3}
!36 = !{ptr @udf_bitmap_new_block.__UNIQUE_ID_ddebug238, !35, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!37 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 2148558334, i64 2148558339, i64 2148558352, i64 2148558396, i64 2148558430, i64 2148558451}
!48 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{i64 2153898702, i64 2153899183, i64 2153898739, i64 2153898795, i64 2153898829, i64 2153898853, i64 2153898894, i64 2153898915, i64 2153898943, i64 2153898977}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{!"auto-init"}
!52 = !{i64 2148733736, i64 2148733762, i64 2148733791, i64 2148733825, i64 2148733856, i64 2148733879}
