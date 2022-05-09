; ModuleID = '/llk/IR_all_yes/fs/ceph/io.c_pt.bc'
source_filename = "../fs/ceph/io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.105, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.106, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.107, ptr, %struct.address_space, %struct.list_head, %union.anon.108, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.105 = type { i32 }
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
%union.anon.106 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.107 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.108 = type { ptr }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fs/ceph/io.c\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [16 x i8] c"../fs/ceph/io.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 24, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_start_io_read(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @down_read(ptr noundef %i_rwsem) #2
  %i_ceph_flags = getelementptr i8, ptr %inode, i32 -868
  %0 = ptrtoint ptr %i_ceph_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %i_ceph_flags, align 4
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @up_read(ptr noundef %i_rwsem) #2
  tail call void @down_write(ptr noundef %i_rwsem) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.rhs.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25, i32 6
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !11

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 24, i32 noundef 9, ptr noundef null) #2
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %3 = ptrtoint ptr %i_ceph_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %i_ceph_flags, align 4
  %and.i = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool29.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool29.not.i, label %if.end.i.ceph_block_o_direct.exit_crit_edge, label %if.then30.i

if.end.i.ceph_block_o_direct.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ceph_block_o_direct.exit

if.then30.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %i_ceph_lock.i = getelementptr i8, ptr %inode, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock.i) #2
  %5 = ptrtoint ptr %i_ceph_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_ceph_flags, align 4
  %and32.i = and i32 %6, -2049
  store i32 %and32.i, ptr %i_ceph_flags, align 4
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock.i) #2
  tail call void @inode_dio_wait(ptr noundef %inode) #2
  br label %ceph_block_o_direct.exit

ceph_block_o_direct.exit:                         ; preds = %if.then30.i, %if.end.i.ceph_block_o_direct.exit_crit_edge
  tail call void @downgrade_write(ptr noundef %i_rwsem) #2
  br label %cleanup

cleanup:                                          ; preds = %ceph_block_o_direct.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @downgrade_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_end_io_read(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @up_read(ptr noundef %i_rwsem) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_start_io_write(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25, i32 6
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !11

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 24, i32 noundef 9, ptr noundef null) #2
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %i_ceph_flags.i = getelementptr i8, ptr %inode, i32 -868
  %1 = ptrtoint ptr %i_ceph_flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %i_ceph_flags.i, align 4
  %and.i = and i32 %2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool29.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool29.not.i, label %if.end.i.ceph_block_o_direct.exit_crit_edge, label %if.then30.i

if.end.i.ceph_block_o_direct.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ceph_block_o_direct.exit

if.then30.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %i_ceph_lock.i = getelementptr i8, ptr %inode, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock.i) #2
  %3 = ptrtoint ptr %i_ceph_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_ceph_flags.i, align 4
  %and32.i = and i32 %4, -2049
  store i32 %and32.i, ptr %i_ceph_flags.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock.i) #2
  tail call void @inode_dio_wait(ptr noundef %inode) #2
  br label %ceph_block_o_direct.exit

ceph_block_o_direct.exit:                         ; preds = %if.then30.i, %if.end.i.ceph_block_o_direct.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_end_io_write(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_start_io_direct(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @down_read(ptr noundef %i_rwsem) #2
  %i_ceph_flags = getelementptr i8, ptr %inode, i32 -868
  %0 = ptrtoint ptr %i_ceph_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %i_ceph_flags, align 4
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @up_read(ptr noundef %i_rwsem) #2
  tail call void @down_write(ptr noundef %i_rwsem) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.rhs.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25, i32 6
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !11

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 109, i32 noundef 9, ptr noundef null) #2
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %3 = ptrtoint ptr %i_ceph_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %i_ceph_flags, align 4
  %and.i = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool29.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool29.not.i, label %if.then30.i, label %if.end.i.ceph_block_buffered.exit_crit_edge

if.end.i.ceph_block_buffered.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ceph_block_buffered.exit

if.then30.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %i_ceph_lock.i = getelementptr i8, ptr %inode, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock.i) #2
  %5 = ptrtoint ptr %i_ceph_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_ceph_flags, align 4
  %or.i = or i32 %6, 2048
  store i32 %or.i, ptr %i_ceph_flags, align 4
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock.i) #2
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %7 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_mapping.i, align 8
  %call.i.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %8, i64 noundef 0, i64 noundef 9223372036854775807) #2
  br label %ceph_block_buffered.exit

ceph_block_buffered.exit:                         ; preds = %if.then30.i, %if.end.i.ceph_block_buffered.exit_crit_edge
  tail call void @downgrade_write(ptr noundef %i_rwsem) #2
  br label %cleanup

cleanup:                                          ; preds = %ceph_block_buffered.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_end_io_direct(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @up_read(ptr noundef %i_rwsem) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ceph/io.c", i32 24, i32 2}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 1, i32 2000}
