; ModuleID = '/llk/IR_all_yes/fs/befs/super.c_pt.bc'
source_filename = "../fs/befs/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.befs_super_block = type <{ [32 x i8], i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.befs_disk_block_run, i64, i64, i32, %struct.befs_disk_block_run, %struct.befs_disk_block_run }>
%struct.befs_disk_block_run = type { i32, i16, i16 }
%struct.befs_sb_info = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.befs_block_run, i64, i64, %struct.befs_block_run, %struct.befs_block_run, i32, %struct.befs_mount_options, ptr }
%struct.befs_block_run = type { i32, i16, i16 }
%struct.befs_mount_options = type { %struct.kgid_t, %struct.kuid_t, i32, i32, i32, ptr }
%struct.kgid_t = type { i32 }
%struct.kuid_t = type { i32 }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid magic header\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid blocksize: %u\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"blocksize(%u) cannot be larger than system pagesize(%lu)\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"block_shift disagrees with block_size. Corruption likely.\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ag_shift disagrees with blocks_per_ag.\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [119 x i8], [41 x i8] } { [119 x i8] c"Filesystem not clean! There are blocks in the journal. You must boot into BeOS and mount this volume to make it clean.\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1112098629, i64 1162299714]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 7]
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 66, i32 18 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 80, i32 18 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 85, i32 18 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 97, i32 18 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 107, i32 18 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [19 x i8] c"../fs/befs/super.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 111, i32 18 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 119, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @befs_load_sb(ptr nocapture noundef readonly %sb, ptr noundef readonly %disk_sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %fs_byte_order = getelementptr inbounds %struct.befs_super_block, ptr %disk_sb, i32 0, i32 2
  %2 = ptrtoint ptr %fs_byte_order to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %fs_byte_order, align 1
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.if.end5_crit_edge [
    i32 1162299714, label %entry.if.end5.sink.split_crit_edge
    i32 1112098629, label %if.then3
  ]

entry.if.end5.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.sink.split

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.sink.split

if.end5.sink.split:                               ; preds = %if.then3, %entry.if.end5.sink.split_crit_edge
  %.sink = phi i32 [ 0, %if.then3 ], [ 1, %entry.if.end5.sink.split_crit_edge ]
  %byte_order4 = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %byte_order4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %byte_order4, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end5.sink.split, %entry.if.end5_crit_edge
  %magic1 = getelementptr inbounds %struct.befs_super_block, ptr %disk_sb, i32 0, i32 1
  %6 = ptrtoint ptr %magic1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %magic1, align 1
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %byte_order.i = getelementptr inbounds %struct.befs_sb_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp eq i32 %11, 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %7) #4
  %retval.0.i = select i1 %cmp.i, i32 %12, i32 %7
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i, ptr %1, align 8
  %magic2 = getelementptr inbounds %struct.befs_super_block, ptr %disk_sb, i32 0, i32 8
  %14 = ptrtoint ptr %magic2 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %magic2, align 1
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %byte_order.i102 = getelementptr inbounds %struct.befs_sb_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %byte_order.i102 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %byte_order.i102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i103 = icmp eq i32 %19, 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %15) #4
  %retval.0.i104 = select i1 %cmp.i103, i32 %20, i32 %15
  %magic29 = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %magic29 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i104, ptr %magic29, align 4
  %magic3 = getelementptr inbounds %struct.befs_super_block, ptr %disk_sb, i32 0, i32 16
  %22 = ptrtoint ptr %magic3 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %magic3, align 1
  %24 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i, align 16
  %byte_order.i106 = getelementptr inbounds %struct.befs_sb_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %byte_order.i106 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %byte_order.i106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i107 = icmp eq i32 %27, 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %23) #4
  %retval.0.i108 = select i1 %cmp.i107, i32 %28, i32 %23
  %magic311 = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 17
  %29 = ptrtoint ptr %magic311 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i108, ptr %magic311, align 8
  %block_size = getelementptr inbounds %struct.befs_super_block, ptr %disk_sb, i32 0, i32 3
  %30 = ptrtoint ptr %block_size to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %block_size, align 1
  %32 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_fs_info.i, align 16
  %byte_order.i110 = getelementptr inbounds %struct.befs_sb_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %byte_order.i110 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %byte_order.i110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp.i111 = icmp eq i32 %35, 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %31) #4
  %retval.0.i112 = select i1 %cmp.i111, i32 %36, i32 %31
  %block_size13 = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %block_size13 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i112, ptr %block_size13, align 4
  %block_shift = getelementptr inbounds %struct.befs_super_block, ptr %disk_sb, i32 0, i32 4
  %38 = ptrtoint ptr %block_shift to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %block_shift, align 1
  %40 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_fs_info.i, align 16
  %byte_order.i114 = getelementptr inbounds %struct.befs_sb_info, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %byte_order.i114 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %byte_order.i114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp.i115 = icmp eq i32 %43, 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %39) #4
  %retval.0.i116 = select i1 %cmp.i115, i32 %44, i32 %39
  %block_shift15 = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %block_shift15 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %retval.0.i116, ptr %block_shift15, align 8
  %num_blocks = getelementptr inbounds %struct.befs_super_block, ptr %disk_sb, i32 0, i32 5
  %46 = ptrtoint ptr %num_blocks to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %47 = load i64, ptr %num_blocks, align 1
  %48 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_fs_info.i, align 16
  %byte_order.i118 = getelementptr inbounds %struct.befs_sb_info, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %byte_order.i118 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %byte_order.i118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp.i119 = icmp eq i32 %51, 1
  %52 = tail call i64 @llvm.bswap.i64(i64 %47) #4
  %retval.0.i120 = select i1 %cmp.i119, i64 %52, i64 %47
  %num_blocks17 = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 4
  %53 = ptrtoint ptr %num_blocks17 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %retval.0.i120, ptr %num_blocks17, align 8
  %used_blocks = getelementptr inbounds %struct.befs_super_block, ptr %disk_sb, i32 0, i32 6
  %54 = ptrtoint ptr %used_blocks to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %55 = load i64, ptr %used_blocks, align 1
  %56 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_fs_info.i, align 16
  %byte_order.i122 = getelementptr inbounds %struct.befs_sb_info, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %byte_order.i122 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %byte_order.i122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp.i123 = icmp eq i32 %59, 1
  %60 = tail call i64 @llvm.bswap.i64(i64 %55) #4
  %retval.0.i124 = select i1 %cmp.i123, i64 %60, i64 %55
  %used_blocks19 = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 5
  %61 = ptrtoint ptr %used_blocks19 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %retval.0.i124, ptr %used_blocks19, align 8
  %inode_size = getelementptr inbounds %struct.befs_super_block, ptr %disk_sb, i32 0, i32 7
  %62 = ptrtoint ptr %inode_size to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %inode_size, align 1
  %64 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s_fs_info.i, align 16
  %byte_order.i126 = getelementptr inbounds %struct.befs_sb_info, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %byte_order.i126 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %byte_order.i126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp.i127 = icmp eq i32 %67, 1
  %68 = tail call i32 @llvm.bswap.i32(i32 %63) #4
  %retval.0.i128 = select i1 %cmp.i127, i32 %68, i32 %63
  %inode_size21 = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 6
  %69 = ptrtoint ptr %inode_size21 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %retval.0.i128, ptr %inode_size21, align 8
  %blocks_per_ag = getelementptr inbounds %struct.befs_super_block, ptr %disk_sb, i32 0, i32 9
  %70 = ptrtoint ptr %blocks_per_ag to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %blocks_per_ag, align 1
  %72 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_fs_info.i, align 16
  %byte_order.i130 = getelementptr inbounds %struct.befs_sb_info, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %byte_order.i130 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %byte_order.i130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp.i131 = icmp eq i32 %75, 1
  %76 = tail call i32 @llvm.bswap.i32(i32 %71) #4
  %retval.0.i132 = select i1 %cmp.i131, i32 %76, i32 %71
  %blocks_per_ag23 = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 8
  %77 = ptrtoint ptr %blocks_per_ag23 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %retval.0.i132, ptr %blocks_per_ag23, align 8
  %ag_shift = getelementptr inbounds %struct.befs_super_block, ptr %disk_sb, i32 0, i32 10
  %78 = ptrtoint ptr %ag_shift to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %ag_shift, align 1
  %80 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %s_fs_info.i, align 16
  %byte_order.i134 = getelementptr inbounds %struct.befs_sb_info, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %byte_order.i134 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %byte_order.i134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %83)
  %cmp.i135 = icmp eq i32 %83, 1
  %84 = tail call i32 @llvm.bswap.i32(i32 %79) #4
  %retval.0.i136 = select i1 %cmp.i135, i32 %84, i32 %79
  %ag_shift25 = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 9
  %85 = ptrtoint ptr %ag_shift25 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %retval.0.i136, ptr %ag_shift25, align 4
  %num_ags = getelementptr inbounds %struct.befs_super_block, ptr %disk_sb, i32 0, i32 11
  %86 = ptrtoint ptr %num_ags to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %num_ags, align 1
  %88 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %s_fs_info.i, align 16
  %byte_order.i138 = getelementptr inbounds %struct.befs_sb_info, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %byte_order.i138 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %byte_order.i138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp.i139 = icmp eq i32 %91, 1
  %92 = tail call i32 @llvm.bswap.i32(i32 %87) #4
  %retval.0.i140 = select i1 %cmp.i139, i32 %92, i32 %87
  %num_ags27 = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 10
  %93 = ptrtoint ptr %num_ags27 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %retval.0.i140, ptr %num_ags27, align 8
  %flags = getelementptr inbounds %struct.befs_super_block, ptr %disk_sb, i32 0, i32 12
  %94 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %flags, align 1
  %96 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %s_fs_info.i, align 16
  %byte_order.i142 = getelementptr inbounds %struct.befs_sb_info, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %byte_order.i142 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %byte_order.i142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp.i143 = icmp eq i32 %99, 1
  %100 = tail call i32 @llvm.bswap.i32(i32 %95) #4
  %retval.0.i144 = select i1 %cmp.i143, i32 %100, i32 %95
  %flags29 = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 11
  %101 = ptrtoint ptr %flags29 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %retval.0.i144, ptr %flags29, align 4
  %log_blocks = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 12
  %log_blocks30 = getelementptr inbounds %struct.befs_super_block, ptr %disk_sb, i32 0, i32 13
  %102 = ptrtoint ptr %log_blocks30 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %.unpack = load i32, ptr %log_blocks30, align 1
  %.elt93 = getelementptr inbounds %struct.befs_super_block, ptr %disk_sb, i32 0, i32 13, i32 1
  %103 = ptrtoint ptr %.elt93 to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %.unpack94 = load i32, ptr %.elt93, align 1
  %n.sroa.3.4.extract.shift.i = lshr i32 %.unpack94, 16
  %n.sroa.3.4.extract.trunc.i = trunc i32 %n.sroa.3.4.extract.shift.i to i16
  %n.sroa.6.4.extract.trunc.i = trunc i32 %.unpack94 to i16
  %104 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %s_fs_info.i, align 16, !noalias !21
  %byte_order.i146 = getelementptr inbounds %struct.befs_sb_info, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %byte_order.i146 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %byte_order.i146, align 4, !noalias !21
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %107)
  %cmp.i147 = icmp eq i32 %107, 1
  %108 = tail call i32 @llvm.bswap.i32(i32 %.unpack) #4
  %109 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.3.4.extract.trunc.i) #4
  %110 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.6.4.extract.trunc.i) #4
  %tmp.sroa.6.0 = select i1 %cmp.i147, i16 %109, i16 %n.sroa.3.4.extract.trunc.i
  %tmp.sroa.0.0 = select i1 %cmp.i147, i32 %108, i32 %.unpack
  %storemerge.i = select i1 %cmp.i147, i16 %110, i16 %n.sroa.6.4.extract.trunc.i
  %tmp.sroa.8.0.insert.ext = zext i16 %storemerge.i to i64
  %tmp.sroa.6.0.insert.ext = zext i16 %tmp.sroa.6.0 to i64
  %tmp.sroa.6.0.insert.shift = shl nuw nsw i64 %tmp.sroa.6.0.insert.ext, 16
  %tmp.sroa.6.0.insert.insert = or i64 %tmp.sroa.6.0.insert.shift, %tmp.sroa.8.0.insert.ext
  %tmp.sroa.0.0.insert.ext = zext i32 %tmp.sroa.0.0 to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %tmp.sroa.0.0.insert.insert = or i64 %tmp.sroa.6.0.insert.insert, %tmp.sroa.0.0.insert.shift
  %111 = ptrtoint ptr %log_blocks to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %tmp.sroa.0.0.insert.insert, ptr %log_blocks, align 8
  %log_start = getelementptr inbounds %struct.befs_super_block, ptr %disk_sb, i32 0, i32 14
  %112 = ptrtoint ptr %log_start to i32
  call void @__asan_loadN_noabort(i32 %112, i32 8)
  %113 = load i64, ptr %log_start, align 1
  %114 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %s_fs_info.i, align 16
  %byte_order.i149 = getelementptr inbounds %struct.befs_sb_info, ptr %115, i32 0, i32 3
  %116 = ptrtoint ptr %byte_order.i149 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %byte_order.i149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %117)
  %cmp.i150 = icmp eq i32 %117, 1
  %118 = tail call i64 @llvm.bswap.i64(i64 %113) #4
  %retval.0.i151 = select i1 %cmp.i150, i64 %118, i64 %113
  %log_start32 = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 13
  %119 = ptrtoint ptr %log_start32 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %retval.0.i151, ptr %log_start32, align 8
  %log_end = getelementptr inbounds %struct.befs_super_block, ptr %disk_sb, i32 0, i32 15
  %120 = ptrtoint ptr %log_end to i32
  call void @__asan_loadN_noabort(i32 %120, i32 8)
  %121 = load i64, ptr %log_end, align 1
  %122 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %s_fs_info.i, align 16
  %byte_order.i153 = getelementptr inbounds %struct.befs_sb_info, ptr %123, i32 0, i32 3
  %124 = ptrtoint ptr %byte_order.i153 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %byte_order.i153, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %125)
  %cmp.i154 = icmp eq i32 %125, 1
  %126 = tail call i64 @llvm.bswap.i64(i64 %121) #4
  %retval.0.i155 = select i1 %cmp.i154, i64 %126, i64 %121
  %log_end34 = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 14
  %127 = ptrtoint ptr %log_end34 to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %retval.0.i155, ptr %log_end34, align 8
  %root_dir = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 15
  %root_dir36 = getelementptr inbounds %struct.befs_super_block, ptr %disk_sb, i32 0, i32 17
  %128 = ptrtoint ptr %root_dir36 to i32
  call void @__asan_loadN_noabort(i32 %128, i32 4)
  %.unpack95 = load i32, ptr %root_dir36, align 1
  %.elt96 = getelementptr inbounds %struct.befs_super_block, ptr %disk_sb, i32 0, i32 17, i32 1
  %129 = ptrtoint ptr %.elt96 to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %.unpack97 = load i32, ptr %.elt96, align 1
  %n.sroa.3.4.extract.shift.i156 = lshr i32 %.unpack97, 16
  %n.sroa.3.4.extract.trunc.i157 = trunc i32 %n.sroa.3.4.extract.shift.i156 to i16
  %n.sroa.6.4.extract.trunc.i158 = trunc i32 %.unpack97 to i16
  %130 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %s_fs_info.i, align 16, !noalias !24
  %byte_order.i160 = getelementptr inbounds %struct.befs_sb_info, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %byte_order.i160 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %byte_order.i160, align 4, !noalias !24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %133)
  %cmp.i161 = icmp eq i32 %133, 1
  %134 = tail call i32 @llvm.bswap.i32(i32 %.unpack95) #4
  %135 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.3.4.extract.trunc.i157) #4
  %136 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.6.4.extract.trunc.i158) #4
  %tmp35.sroa.0.0 = select i1 %cmp.i161, i32 %134, i32 %.unpack95
  %tmp35.sroa.6.0 = select i1 %cmp.i161, i16 %135, i16 %n.sroa.3.4.extract.trunc.i157
  %storemerge.i164 = select i1 %cmp.i161, i16 %136, i16 %n.sroa.6.4.extract.trunc.i158
  %tmp35.sroa.8.0.insert.ext = zext i16 %storemerge.i164 to i64
  %tmp35.sroa.6.0.insert.ext = zext i16 %tmp35.sroa.6.0 to i64
  %tmp35.sroa.6.0.insert.shift = shl nuw nsw i64 %tmp35.sroa.6.0.insert.ext, 16
  %tmp35.sroa.6.0.insert.insert = or i64 %tmp35.sroa.6.0.insert.shift, %tmp35.sroa.8.0.insert.ext
  %tmp35.sroa.0.0.insert.ext = zext i32 %tmp35.sroa.0.0 to i64
  %tmp35.sroa.0.0.insert.shift = shl nuw i64 %tmp35.sroa.0.0.insert.ext, 32
  %tmp35.sroa.0.0.insert.insert = or i64 %tmp35.sroa.6.0.insert.insert, %tmp35.sroa.0.0.insert.shift
  %137 = ptrtoint ptr %root_dir to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %tmp35.sroa.0.0.insert.insert, ptr %root_dir, align 8
  %indices = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 16
  %indices38 = getelementptr inbounds %struct.befs_super_block, ptr %disk_sb, i32 0, i32 18
  %138 = ptrtoint ptr %indices38 to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %.unpack98 = load i32, ptr %indices38, align 1
  %.elt99 = getelementptr inbounds %struct.befs_super_block, ptr %disk_sb, i32 0, i32 18, i32 1
  %139 = ptrtoint ptr %.elt99 to i32
  call void @__asan_loadN_noabort(i32 %139, i32 4)
  %.unpack100 = load i32, ptr %.elt99, align 1
  %n.sroa.3.4.extract.shift.i166 = lshr i32 %.unpack100, 16
  %n.sroa.3.4.extract.trunc.i167 = trunc i32 %n.sroa.3.4.extract.shift.i166 to i16
  %n.sroa.6.4.extract.trunc.i168 = trunc i32 %.unpack100 to i16
  %140 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %s_fs_info.i, align 16, !noalias !27
  %byte_order.i170 = getelementptr inbounds %struct.befs_sb_info, ptr %141, i32 0, i32 3
  %142 = ptrtoint ptr %byte_order.i170 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %byte_order.i170, align 4, !noalias !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %143)
  %cmp.i171 = icmp eq i32 %143, 1
  %144 = tail call i32 @llvm.bswap.i32(i32 %.unpack98) #4
  %145 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.3.4.extract.trunc.i167) #4
  %146 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.6.4.extract.trunc.i168) #4
  %tmp37.sroa.0.0 = select i1 %cmp.i171, i32 %144, i32 %.unpack98
  %tmp37.sroa.6.0 = select i1 %cmp.i171, i16 %145, i16 %n.sroa.3.4.extract.trunc.i167
  %storemerge.i174 = select i1 %cmp.i171, i16 %146, i16 %n.sroa.6.4.extract.trunc.i168
  %tmp37.sroa.8.0.insert.ext = zext i16 %storemerge.i174 to i64
  %tmp37.sroa.6.0.insert.ext = zext i16 %tmp37.sroa.6.0 to i64
  %tmp37.sroa.6.0.insert.shift = shl nuw nsw i64 %tmp37.sroa.6.0.insert.ext, 16
  %tmp37.sroa.6.0.insert.insert = or i64 %tmp37.sroa.6.0.insert.shift, %tmp37.sroa.8.0.insert.ext
  %tmp37.sroa.0.0.insert.ext = zext i32 %tmp37.sroa.0.0 to i64
  %tmp37.sroa.0.0.insert.shift = shl nuw i64 %tmp37.sroa.0.0.insert.ext, 32
  %tmp37.sroa.0.0.insert.insert = or i64 %tmp37.sroa.6.0.insert.insert, %tmp37.sroa.0.0.insert.shift
  %147 = ptrtoint ptr %indices to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 %tmp37.sroa.0.0.insert.insert, ptr %indices, align 8
  %nls = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 19
  %148 = ptrtoint ptr %nls to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr null, ptr %nls, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @befs_check_sb(ptr noundef %sb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1111905073, i32 %3)
  %cmp.not = icmp eq i32 %3, 1111905073
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %magic2 = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %magic2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %magic2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -586018767, i32 %5)
  %cmp1.not = icmp eq i32 %5, -586018767
  br i1 %cmp1.not, label %lor.lhs.false2, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %magic3 = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %magic3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %magic3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 364282638, i32 %7)
  %cmp3.not = icmp eq i32 %7, 364282638
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false2.if.then_crit_edge

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false2.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str) #4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %block_size = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %block_size, align 4
  %10 = add i32 %9, -1024
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 22)
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %11, label %if.then13 [
    i32 0, label %if.end.if.end15_crit_edge
    i32 1, label %if.end.if.end15_crit_edge57
    i32 3, label %if.end.if.end15_crit_edge58
    i32 7, label %if.end.if.end15_crit_edge59
  ]

if.end.if.end15_crit_edge59:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.end.if.end15_crit_edge58:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.end.if.end15_crit_edge57:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.1, i32 noundef %9) #4
  br label %cleanup

if.end15:                                         ; preds = %if.end.if.end15_crit_edge, %if.end.if.end15_crit_edge57, %if.end.if.end15_crit_edge58, %if.end.if.end15_crit_edge59
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %9)
  %cmp17 = icmp ugt i32 %9, 4096
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.2, i32 noundef %9, i32 noundef 4096) #4
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %block_shift = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %block_shift to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %block_shift, align 8
  %shl = shl nuw i32 1, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %9)
  %cmp22.not = icmp eq i32 %shl, %9
  br i1 %cmp22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.3) #4
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %ag_shift = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %ag_shift to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ag_shift, align 4
  %shl25 = shl nuw i32 1, %16
  %blocks_per_ag = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %blocks_per_ag to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %blocks_per_ag, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl25, i32 %18)
  %cmp26.not = icmp eq i32 %shl25, %18
  br i1 %cmp26.not, label %if.end24.if.end28_crit_edge, label %if.then27

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.4) #4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24.if.end28_crit_edge
  %log_start = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 13
  %19 = ptrtoint ptr %log_start to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %log_start, align 8
  %log_end = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 14
  %21 = ptrtoint ptr %log_end to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %log_end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %22)
  %cmp29.not = icmp eq i64 %20, %22
  br i1 %cmp29.not, label %lor.lhs.false30, label %if.end28.if.then32_crit_edge

if.end28.if.then32_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

lor.lhs.false30:                                  ; preds = %if.end28
  %flags = getelementptr inbounds %struct.befs_sb_info, ptr %1, i32 0, i32 11
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1145655892, i32 %24)
  %cmp31 = icmp eq i32 %24, 1145655892
  br i1 %cmp31, label %lor.lhs.false30.if.then32_crit_edge, label %lor.lhs.false30.cleanup_crit_edge

lor.lhs.false30.cleanup_crit_edge:                ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false30.if.then32_crit_edge:              ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false30.if.then32_crit_edge, %if.end28.if.then32_crit_edge
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.5) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %lor.lhs.false30.cleanup_crit_edge, %if.then23, %if.then18, %if.then13, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then13 ], [ 1, %if.then18 ], [ 1, %if.then23 ], [ 1, %if.then32 ], [ 0, %lor.lhs.false30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @befs_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/befs/super.c", i32 66, i32 18}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/befs/super.c", i32 80, i32 18}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/befs/super.c", i32 85, i32 18}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/befs/super.c", i32 97, i32 18}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/befs/super.c", i32 107, i32 18}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/befs/super.c", i32 111, i32 18}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"fsrun_to_cpu: %agg.result"}
!23 = distinct !{!23, !"fsrun_to_cpu"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"fsrun_to_cpu: %agg.result"}
!26 = distinct !{!26, !"fsrun_to_cpu"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"fsrun_to_cpu: %agg.result"}
!29 = distinct !{!29, !"fsrun_to_cpu"}
