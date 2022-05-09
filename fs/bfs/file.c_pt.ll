; ModuleID = '/llk/IR_all_yes/fs/bfs/file.c_pt.bc'
source_filename = "../fs/bfs/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, ptr, %struct.address_space, %struct.list_head, %union.anon.63, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.58 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.59 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.60 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.63 = type { ptr }
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
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.bfs_sb_info = type { i32, i32, i32, i32, i32, [17 x i32], %struct.mutex }

@bfs_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @generic_file_read_iter, ptr @generic_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_mmap, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@bfs_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @bfs_writepage, ptr @bfs_readpage, ptr null, ptr @__set_page_dirty_buffers, ptr null, ptr null, ptr @bfs_write_begin, ptr @generic_write_end, ptr @bfs_bmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bfs_file_inops = dso_local local_unnamed_addr constant %struct.inode_operations zeroinitializer, align 128
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"bfs_file_operations\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 25, i32 30 }
@___asan_gen_.4 = private unnamed_addr constant [9 x i8] c"bfs_aops\00", align 1
@___asan_gen_.5 = private constant [17 x i8] c"../fs/bfs/file.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 190, i32 39 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @bfs_file_operations, ptr @bfs_aops], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfs_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfs_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_write_iter(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_mmap(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfs_writepage(ptr noundef %page, ptr noundef %wbc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_write_full_page(ptr noundef %page, ptr noundef nonnull @bfs_get_block, ptr noundef %wbc) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfs_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_read_full_page(ptr noundef %page, ptr noundef nonnull @bfs_get_block) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfs_write_begin(ptr nocapture noundef readnone %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr nocapture noundef readnone %fsdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_write_begin(ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef nonnull @bfs_get_block) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !15

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_size.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %add)
  %cmp.i = icmp slt i64 %3, %add
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @truncate_pagecache(ptr noundef %1, i64 noundef %3) #2
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @bfs_bmap(ptr noundef %mapping, i64 noundef %block) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @generic_block_bmap(ptr noundef %mapping, i64 noundef %block, ptr noundef nonnull @bfs_get_block) #2
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_full_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfs_get_block(ptr noundef %inode, i64 noundef %block, ptr noundef %bh_result, i32 noundef %create) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %i_sblock = getelementptr i8, ptr %inode, i32 -12
  %4 = ptrtoint ptr %i_sblock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_sblock, align 4
  %6 = trunc i64 %block to i32
  %conv2 = add i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool.not = icmp eq i32 %create, 0
  br i1 %tobool.not, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %i_eblock = getelementptr i8, ptr %inode, i32 -8
  %7 = ptrtoint ptr %i_eblock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_eblock, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %8)
  %cmp.not = icmp ugt i32 %conv2, %8
  br i1 %cmp.not, label %if.then.cleanup_crit_edge, label %if.then4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then4:                                         ; preds = %if.then
  %conv5 = zext i32 %conv2 to i64
  %9 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %bh_result, align 4
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then4.map_bh.exit_crit_edge

if.then4.map_bh.exit_crit_edge:                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #4
  br label %map_bh.exit

if.then.i.i:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #2
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i, %if.then4.map_bh.exit_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %12 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %14 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %15 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv5, ptr %b_blocknr.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_blocksize.i, align 16
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %18 = ptrtoint ptr %b_size.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %b_size.i, align 8
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool8.not = icmp eq i32 %5, 0
  br i1 %tobool8.not, label %if.end6.if.end14_crit_edge, label %land.lhs.true

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end6
  %i_eblock9 = getelementptr i8, ptr %inode, i32 -8
  %19 = ptrtoint ptr %i_eblock9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_eblock9, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %20)
  %cmp10.not = icmp ugt i32 %conv2, %20
  br i1 %cmp10.not, label %land.lhs.true.if.end14_crit_edge, label %if.then12

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14

if.then12:                                        ; preds = %land.lhs.true
  %conv13 = zext i32 %conv2 to i64
  %21 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %bh_result, align 4
  %23 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i124 = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i124, label %if.then.i.i125, label %if.then12.map_bh.exit131_crit_edge

if.then12.map_bh.exit131_crit_edge:               ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #4
  br label %map_bh.exit131

if.then.i.i125:                                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #2
  br label %map_bh.exit131

map_bh.exit131:                                   ; preds = %if.then.i.i125, %if.then12.map_bh.exit131_crit_edge
  %s_bdev.i126 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %24 = ptrtoint ptr %s_bdev.i126 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_bdev.i126, align 4
  %b_bdev.i127 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %26 = ptrtoint ptr %b_bdev.i127 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %b_bdev.i127, align 8
  %b_blocknr.i128 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %27 = ptrtoint ptr %b_blocknr.i128 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv13, ptr %b_blocknr.i128, align 8
  %s_blocksize.i129 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %s_blocksize.i129 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_blocksize.i129, align 16
  %b_size.i130 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %30 = ptrtoint ptr %b_size.i130 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %b_size.i130, align 8
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %32)
  %cmp15.not = icmp ult i32 %conv2, %32
  br i1 %cmp15.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %bfs_lock = getelementptr inbounds %struct.bfs_sb_info, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %bfs_lock, i32 noundef 0) #2
  %i_eblock19 = getelementptr i8, ptr %inode, i32 -8
  %33 = ptrtoint ptr %i_eblock19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i_eblock19, align 8
  %si_lf_eblk = getelementptr inbounds %struct.bfs_sb_info, ptr %3, i32 0, i32 3
  %35 = ptrtoint ptr %si_lf_eblk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %si_lf_eblk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp20 = icmp eq i32 %34, %36
  br i1 %cmp20, label %if.then22, label %if.end28

if.then22:                                        ; preds = %if.end18
  %conv23 = zext i32 %conv2 to i64
  %37 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %bh_result, align 4
  %39 = and i32 %38, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i132 = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i132, label %if.then.i.i133, label %if.then22.map_bh.exit139_crit_edge

if.then22.map_bh.exit139_crit_edge:               ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #4
  br label %map_bh.exit139

if.then.i.i133:                                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #2
  br label %map_bh.exit139

map_bh.exit139:                                   ; preds = %if.then.i.i133, %if.then22.map_bh.exit139_crit_edge
  %s_bdev.i134 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %40 = ptrtoint ptr %s_bdev.i134 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_bdev.i134, align 4
  %b_bdev.i135 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %42 = ptrtoint ptr %b_bdev.i135 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %b_bdev.i135, align 8
  %b_blocknr.i136 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %43 = ptrtoint ptr %b_blocknr.i136 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv23, ptr %b_blocknr.i136, align 8
  %s_blocksize.i137 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %44 = ptrtoint ptr %s_blocksize.i137 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %s_blocksize.i137, align 16
  %b_size.i138 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %46 = ptrtoint ptr %b_size.i138 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %b_size.i138, align 8
  %47 = ptrtoint ptr %i_eblock19 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i_eblock19, align 8
  %sub.neg = sub i32 %48, %conv2
  %si_freeb = getelementptr inbounds %struct.bfs_sb_info, ptr %3, i32 0, i32 1
  %49 = ptrtoint ptr %si_freeb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %si_freeb, align 4
  %sub25 = add i32 %sub.neg, %50
  store i32 %sub25, ptr %si_freeb, align 4
  store i32 %conv2, ptr %i_eblock19, align 8
  %51 = ptrtoint ptr %si_lf_eblk to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv2, ptr %si_lf_eblk, align 4
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #2
  br label %out

if.end28:                                         ; preds = %if.end18
  %add30 = add i32 %36, 1
  %conv31 = zext i32 %add30 to i64
  %add32 = add i64 %conv31, %block
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %3, align 4
  %conv34 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add32, i64 %conv34)
  %cmp35.not = icmp ult i64 %add32, %conv34
  br i1 %cmp35.not, label %if.end38, label %if.end28.out_crit_edge

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end38:                                         ; preds = %if.end28
  %54 = ptrtoint ptr %i_sblock to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %i_sblock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool40.not = icmp eq i32 %55, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %34)
  %cmp.not6.i = icmp ugt i32 %55, %34
  %or.cond = select i1 %tobool40.not, i1 true, i1 %cmp.not6.i
  br i1 %or.cond, label %if.end38.if.end49_crit_edge, label %for.body.lr.ph.i

if.end38.if.end49_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end49

for.body.lr.ph.i:                                 ; preds = %if.end38
  %56 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i_sb, align 4
  %s_bdev.i.i.i = getelementptr inbounds %struct.super_block, ptr %57, i32 0, i32 26
  %s_blocksize.i.i.i = getelementptr inbounds %struct.super_block, ptr %57, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.07.i = phi i32 [ %55, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %conv.i.i = zext i32 %i.07.i to i64
  %58 = ptrtoint ptr %s_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_bdev.i.i.i, align 4
  %60 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %s_blocksize.i.i.i, align 16
  %call.i.i.i = tail call ptr @__bread_gfp(ptr noundef %59, i64 noundef %conv.i.i, i32 noundef %61, i32 noundef 8) #2
  %tobool.not.i.i140 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i140, label %for.body.i.out_crit_edge, label %bforget.exit.i.i

for.body.i.out_crit_edge:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

bforget.exit.i.i:                                 ; preds = %for.body.i
  %add.i = add i32 %i.07.i, %add30
  %conv1.i.i = zext i32 %add.i to i64
  %62 = ptrtoint ptr %s_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_bdev.i.i.i, align 4
  %64 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %s_blocksize.i.i.i, align 16
  %call.i13.i.i = tail call ptr @__getblk_gfp(ptr noundef %63, i64 noundef %conv1.i.i, i32 noundef %65, i32 noundef 8) #2
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %call.i13.i.i, i32 0, i32 5
  %66 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %b_data.i.i, align 4
  %b_data3.i.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i.i, i32 0, i32 5
  %68 = ptrtoint ptr %b_data3.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %b_data3.i.i, align 4
  %b_size.i.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i.i, i32 0, i32 4
  %70 = ptrtoint ptr %b_size.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %b_size.i.i, align 8
  %72 = call ptr @memcpy(ptr %67, ptr %69, i32 %71)
  tail call void @mark_buffer_dirty(ptr noundef %call.i13.i.i) #2
  tail call void @__bforget(ptr noundef nonnull %call.i.i.i) #2
  %tobool.not.i14.i.i = icmp eq ptr %call.i13.i.i, null
  br i1 %tobool.not.i14.i.i, label %bforget.exit.i.i.for.inc.i_crit_edge, label %if.then.i15.i.i

bforget.exit.i.i.for.inc.i_crit_edge:             ; preds = %bforget.exit.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i

if.then.i15.i.i:                                  ; preds = %bforget.exit.i.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @__brelse(ptr noundef nonnull %call.i13.i.i) #2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i15.i.i, %bforget.exit.i.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.07.i, 1
  %cmp.not.i = icmp ugt i32 %inc.i, %34
  br i1 %cmp.not.i, label %for.inc.i.if.end49_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

for.inc.i.if.end49_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end49

if.end49:                                         ; preds = %for.inc.i.if.end49_crit_edge, %if.end38.if.end49_crit_edge
  %73 = ptrtoint ptr %i_sblock to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add30, ptr %i_sblock, align 4
  %conv53 = trunc i64 %add32 to i32
  %74 = ptrtoint ptr %i_eblock19 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv53, ptr %i_eblock19, align 8
  %75 = ptrtoint ptr %si_lf_eblk to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv53, ptr %si_lf_eblk, align 4
  %76 = load i32, ptr %i_eblock19, align 8
  %77 = load i32, ptr %i_sblock, align 4
  %78 = xor i32 %76, -1
  %add59.neg = add i32 %77, %78
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %79 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %i_blocks, align 8
  %si_freeb62 = getelementptr inbounds %struct.bfs_sb_info, ptr %3, i32 0, i32 1
  %81 = ptrtoint ptr %si_freeb62 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %si_freeb62, align 4
  %83 = trunc i64 %80 to i32
  %84 = add i32 %add59.neg, %83
  %conv65 = add i32 %84, %82
  store i32 %conv65, ptr %si_freeb62, align 4
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #2
  %conv66 = and i64 %add32, 4294967295
  %85 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %bh_result, align 4
  %87 = and i32 %86, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i.i141 = icmp eq i32 %87, 0
  br i1 %tobool.not.i.i141, label %if.then.i.i142, label %if.end49.map_bh.exit148_crit_edge

if.end49.map_bh.exit148_crit_edge:                ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #4
  br label %map_bh.exit148

if.then.i.i142:                                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #2
  br label %map_bh.exit148

map_bh.exit148:                                   ; preds = %if.then.i.i142, %if.end49.map_bh.exit148_crit_edge
  %s_bdev.i143 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %88 = ptrtoint ptr %s_bdev.i143 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %s_bdev.i143, align 4
  %b_bdev.i144 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %90 = ptrtoint ptr %b_bdev.i144 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %b_bdev.i144, align 8
  %b_blocknr.i145 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %91 = ptrtoint ptr %b_blocknr.i145 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %conv66, ptr %b_blocknr.i145, align 8
  %s_blocksize.i146 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %92 = ptrtoint ptr %s_blocksize.i146 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %s_blocksize.i146, align 16
  %b_size.i147 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %94 = ptrtoint ptr %b_size.i147 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %b_size.i147, align 8
  br label %out

out:                                              ; preds = %map_bh.exit148, %for.body.i.out_crit_edge, %if.end28.out_crit_edge, %map_bh.exit139
  %err.1 = phi i32 [ 0, %map_bh.exit139 ], [ 0, %map_bh.exit148 ], [ -28, %if.end28.out_crit_edge ], [ -5, %for.body.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bfs_lock) #2
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end14.cleanup_crit_edge, %map_bh.exit131, %map_bh.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %map_bh.exit131 ], [ %err.1, %out ], [ 0, %map_bh.exit ], [ 0, %if.then.cleanup_crit_edge ], [ -28, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bforget(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_read_full_page(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_begin(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_block_bmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @bfs_file_operations, !1, !"bfs_file_operations", i1 false, i1 false}
!1 = !{!"../fs/bfs/file.c", i32 25, i32 30}
!2 = !{ptr @bfs_aops, !3, !"bfs_aops", i1 false, i1 false}
!3 = !{!"../fs/bfs/file.c", i32 190, i32 39}
!4 = !{ptr @bfs_file_inops, !5, !"bfs_file_inops", i1 false, i1 false}
!5 = !{!"../fs/bfs/file.c", i32 199, i32 31}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 2000, i32 1}
