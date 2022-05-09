; ModuleID = '/llk/IR_all_yes/fs/hfs/bitmap.c_pt.bc'
source_filename = "../fs/hfs/bitmap.c"
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
%struct.hfs_sb_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, %struct.kuid_t, %struct.kgid_t, i32, i32, ptr, ptr, %struct.mutex, i32, i16, i32, ptr, i32, %struct.delayed_work, %struct.spinlock }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_vbm_search_free(ptr noundef %sb, i32 noundef %goal, ptr nocapture noundef %num_bits) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %num_bits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %bitmap_lock = getelementptr inbounds %struct.hfs_sb_info, ptr %3, i32 0, i32 29
  tail call void @mutex_lock_nested(ptr noundef %bitmap_lock, i32 noundef 0) #4
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %bitmap2 = getelementptr inbounds %struct.hfs_sb_info, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %bitmap2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bitmap2, align 4
  %fs_ablocks = getelementptr inbounds %struct.hfs_sb_info, ptr %5, i32 0, i32 15
  %8 = ptrtoint ptr %fs_ablocks to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %fs_ablocks, align 4
  %conv = zext i16 %9 to i32
  %call = tail call fastcc i32 @hfs_find_set_zero_bits(ptr noundef %7, i32 noundef %conv, i32 noundef %goal, ptr noundef %num_bits)
  %10 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info, align 16
  %fs_ablocks5 = getelementptr inbounds %struct.hfs_sb_info, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %fs_ablocks5 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %fs_ablocks5, align 4
  %conv6 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv6)
  %cmp.not = icmp ult i32 %call, %conv6
  br i1 %cmp.not, label %if.end.do.end_crit_edge, label %if.then8

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %goal)
  %tobool9.not = icmp eq i32 %goal, 0
  br i1 %tobool9.not, label %if.then8.if.end12_crit_edge, label %if.then10

if.then8.if.end12_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %call11 = tail call fastcc i32 @hfs_find_set_zero_bits(ptr noundef %7, i32 noundef %goal, i32 noundef 0, ptr noundef %num_bits)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then8.if.end12_crit_edge
  %pos.0 = phi i32 [ %call11, %if.then10 ], [ %call, %if.then8.if.end12_crit_edge ]
  %14 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info, align 16
  %fs_ablocks14 = getelementptr inbounds %struct.hfs_sb_info, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %fs_ablocks14 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %fs_ablocks14, align 4
  %conv15 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.0, i32 %conv15)
  %cmp16.not = icmp ult i32 %pos.0, %conv15
  br i1 %cmp16.not, label %if.end12.do.end_crit_edge, label %if.then18

if.end12.do.end_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %num_bits to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %num_bits, align 4
  br label %out

do.end:                                           ; preds = %if.end12.do.end_crit_edge, %if.end.do.end_crit_edge
  %pos.1 = phi i32 [ %pos.0, %if.end12.do.end_crit_edge ], [ %call, %if.end.do.end_crit_edge ]
  %19 = ptrtoint ptr %num_bits to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_bits, align 4
  %21 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info, align 16
  %free_ablocks = getelementptr inbounds %struct.hfs_sb_info, ptr %22, i32 0, i32 16
  %23 = ptrtoint ptr %free_ablocks to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %free_ablocks, align 2
  %25 = trunc i32 %20 to i16
  %conv23 = sub i16 %24, %25
  store i16 %conv23, ptr %free_ablocks, align 2
  %26 = load ptr, ptr %s_fs_info, align 16
  %flags.i = getelementptr inbounds %struct.hfs_sb_info, ptr %26, i32 0, i32 30
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #4
  tail call void @hfs_mark_mdb_dirty(ptr noundef %sb) #4
  br label %out

out:                                              ; preds = %do.end, %if.then18
  %pos.2 = phi i32 [ 0, %if.then18 ], [ %pos.1, %do.end ]
  %27 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info, align 16
  %bitmap_lock25 = getelementptr inbounds %struct.hfs_sb_info, ptr %28, i32 0, i32 29
  tail call void @mutex_unlock(ptr noundef %bitmap_lock25) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %pos.2, %out ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hfs_find_set_zero_bits(ptr noundef %bitmap, i32 noundef %size, i32 noundef %offset, ptr nocapture noundef %max) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %div144 = lshr i32 %offset, 5
  %add.ptr = getelementptr i32, ptr %bitmap, i32 %div144
  %add = add i32 %size, 31
  %div1145 = lshr i32 %add, 5
  %add.ptr2 = getelementptr i32, ptr %bitmap, i32 %div1145
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool3.not = icmp eq i32 %3, -1
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then4:                                         ; preds = %if.end
  %rem = and i32 %offset, 31
  %shr = lshr i32 -2147483648, %rem
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then4
  %i.0158 = phi i32 [ %rem, %if.then4 ], [ %inc, %for.inc.for.body_crit_edge ]
  %mask.0157 = phi i32 [ %shr, %if.then4 ], [ %shr8, %for.inc.for.body_crit_edge ]
  %and = and i32 %mask.0157, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %for.body.found_crit_edge, label %for.inc

for.body.found_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %found

for.inc:                                          ; preds = %for.body
  %shr8 = lshr i32 %mask.0157, 1
  %inc = add nuw nsw i32 %i.0158, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.if.end9_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.if.end9_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end9:                                          ; preds = %for.inc.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %incdec.ptr161 = getelementptr i32, ptr %add.ptr, i32 1
  %cmp10162 = icmp ult ptr %incdec.ptr161, %add.ptr2
  br i1 %cmp10162, label %if.end9.while.body_crit_edge, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9.while.body_crit_edge:                     ; preds = %if.end9
  br label %while.body

while.body:                                       ; preds = %if.end25.while.body_crit_edge, %if.end9.while.body_crit_edge
  %incdec.ptr163 = phi ptr [ %incdec.ptr, %if.end25.while.body_crit_edge ], [ %incdec.ptr161, %if.end9.while.body_crit_edge ]
  %4 = ptrtoint ptr %incdec.ptr163 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %incdec.ptr163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool12.not = icmp eq i32 %5, -1
  br i1 %tobool12.not, label %while.body.if.end25_crit_edge, label %while.body.for.body16_crit_edge

while.body.for.body16_crit_edge:                  ; preds = %while.body
  br label %for.body16

while.body.if.end25_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

for.body16:                                       ; preds = %for.inc21.for.body16_crit_edge, %while.body.for.body16_crit_edge
  %i.1160 = phi i32 [ %inc23, %for.inc21.for.body16_crit_edge ], [ 0, %while.body.for.body16_crit_edge ]
  %mask.1159 = phi i32 [ %shr22, %for.inc21.for.body16_crit_edge ], [ -2147483648, %while.body.for.body16_crit_edge ]
  %and17 = and i32 %mask.1159, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %for.body16.found_crit_edge, label %for.inc21

for.body16.found_crit_edge:                       ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #6
  br label %found

for.inc21:                                        ; preds = %for.body16
  %shr22 = lshr i32 %mask.1159, 1
  %inc23 = add nuw nsw i32 %i.1160, 1
  %exitcond194.not = icmp eq i32 %inc23, 32
  br i1 %exitcond194.not, label %for.inc21.if.end25_crit_edge, label %for.inc21.for.body16_crit_edge

for.inc21.for.body16_crit_edge:                   ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body16

for.inc21.if.end25_crit_edge:                     ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.end25:                                         ; preds = %for.inc21.if.end25_crit_edge, %while.body.if.end25_crit_edge
  %incdec.ptr = getelementptr i32, ptr %incdec.ptr163, i32 1
  %cmp10 = icmp ult ptr %incdec.ptr, %add.ptr2
  br i1 %cmp10, label %if.end25.while.body_crit_edge, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end25.while.body_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

found:                                            ; preds = %for.body16.found_crit_edge, %for.body.found_crit_edge
  %curr.1 = phi ptr [ %incdec.ptr163, %for.body16.found_crit_edge ], [ %add.ptr, %for.body.found_crit_edge ]
  %mask.2 = phi i32 [ %mask.1159, %for.body16.found_crit_edge ], [ %mask.0157, %for.body.found_crit_edge ]
  %n.0 = phi i32 [ %5, %for.body16.found_crit_edge ], [ %3, %for.body.found_crit_edge ]
  %i.2 = phi i32 [ %i.1160, %for.body16.found_crit_edge ], [ %i.0158, %for.body.found_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %curr.1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %bitmap to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %mul = shl i32 %sub.ptr.sub, 3
  %add26 = add i32 %mul, %i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %add26, i32 %size)
  %cmp27.not = icmp ult i32 %add26, %size
  br i1 %cmp27.not, label %if.end29, label %found.cleanup_crit_edge

found.cleanup_crit_edge:                          ; preds = %found
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end29:                                         ; preds = %found
  %sub = sub i32 %size, %add26
  %6 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %1)
  %7 = call i32 @llvm.smax.i32(i32 %i.2, i32 31)
  %smax = add nuw nsw i32 %7, 1
  %8 = add i32 %i.2, %6
  br label %while.cond31

while.cond31:                                     ; preds = %lor.lhs.false.while.cond31_crit_edge, %if.end29
  %mask.3 = phi i32 [ %mask.2, %if.end29 ], [ %shr37, %lor.lhs.false.while.cond31_crit_edge ]
  %len.0 = phi i32 [ %6, %if.end29 ], [ %dec44, %lor.lhs.false.while.cond31_crit_edge ]
  %n.1 = phi i32 [ %n.0, %if.end29 ], [ %or, %lor.lhs.false.while.cond31_crit_edge ]
  %i.3 = phi i32 [ %i.2, %if.end29 ], [ %inc33, %lor.lhs.false.while.cond31_crit_edge ]
  %or = or i32 %n.1, %mask.3
  %inc33 = add nuw nsw i32 %i.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %i.3)
  %cmp34 = icmp ugt i32 %i.3, 30
  %dec44 = add i32 %len.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec44)
  %tobool45.not = icmp eq i32 %dec44, 0
  br i1 %cmp34, label %while.end43, label %if.end36

if.end36:                                         ; preds = %while.cond31
  br i1 %tobool45.not, label %if.end36.done_crit_edge, label %lor.lhs.false

if.end36.done_crit_edge:                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

lor.lhs.false:                                    ; preds = %if.end36
  %shr37 = lshr i32 %mask.3, 1
  %and39 = and i32 %or, %shr37
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %lor.lhs.false.while.cond31_crit_edge, label %lor.lhs.false.done_crit_edge

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

lor.lhs.false.while.cond31_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond31

while.end43:                                      ; preds = %while.cond31
  br i1 %tobool45.not, label %while.end43.done_crit_edge, label %if.end47

while.end43.done_crit_edge:                       ; preds = %while.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end47:                                         ; preds = %while.end43
  %9 = ptrtoint ptr %curr.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %curr.1, align 4
  %curr.2164 = getelementptr i32, ptr %curr.1, i32 1
  %10 = ptrtoint ptr %curr.2164 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %curr.2164, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %dec44)
  %cmp51165 = icmp ult i32 %dec44, 32
  br i1 %cmp51165, label %if.end47.while.end59_crit_edge, label %if.end47.if.end53_crit_edge

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  br label %if.end53

if.end47.while.end59_crit_edge:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end59

if.end53:                                         ; preds = %if.end56.if.end53_crit_edge, %if.end47.if.end53_crit_edge
  %12 = phi i32 [ %15, %if.end56.if.end53_crit_edge ], [ %11, %if.end47.if.end53_crit_edge ]
  %curr.2167 = phi ptr [ %curr.2, %if.end56.if.end53_crit_edge ], [ %curr.2164, %if.end47.if.end53_crit_edge ]
  %len.1166 = phi i32 [ %sub58, %if.end56.if.end53_crit_edge ], [ %dec44, %if.end47.if.end53_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool54.not = icmp eq i32 %12, 0
  br i1 %tobool54.not, label %if.end56, label %if.end53.while.end59_crit_edge

if.end53.while.end59_crit_edge:                   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end59

if.end56:                                         ; preds = %if.end53
  %13 = ptrtoint ptr %curr.2167 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %curr.2167, align 4
  %sub58 = add i32 %len.1166, -32
  %curr.2 = getelementptr i32, ptr %curr.2167, i32 1
  %14 = ptrtoint ptr %curr.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %curr.2, align 4
  %cmp51 = icmp ult i32 %sub58, 32
  br i1 %cmp51, label %if.end56.while.end59_crit_edge, label %if.end56.if.end53_crit_edge

if.end56.if.end53_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

if.end56.while.end59_crit_edge:                   ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end59

while.end59:                                      ; preds = %if.end56.while.end59_crit_edge, %if.end53.while.end59_crit_edge, %if.end47.while.end59_crit_edge
  %curr.2.lcssa = phi ptr [ %curr.2164, %if.end47.while.end59_crit_edge ], [ %curr.2167, %if.end53.while.end59_crit_edge ], [ %curr.2, %if.end56.while.end59_crit_edge ]
  %.lcssa = phi i32 [ %11, %if.end47.while.end59_crit_edge ], [ %12, %if.end53.while.end59_crit_edge ], [ %15, %if.end56.while.end59_crit_edge ]
  %len.2 = phi i32 [ %dec44, %if.end47.while.end59_crit_edge ], [ 32, %if.end53.while.end59_crit_edge ], [ %sub58, %if.end56.while.end59_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.2)
  %cmp61173 = icmp ne i32 %len.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.lcssa)
  %tobool64.not175 = icmp sgt i32 %.lcssa, -1
  %or.cond176 = select i1 %cmp61173, i1 %tobool64.not175, i1 false
  br i1 %or.cond176, label %while.end59.if.end66_crit_edge, label %while.end59.done_crit_edge

while.end59.done_crit_edge:                       ; preds = %while.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

while.end59.if.end66_crit_edge:                   ; preds = %while.end59
  br label %if.end66

if.end66:                                         ; preds = %if.end66.if.end66_crit_edge, %while.end59.if.end66_crit_edge
  %i.4179 = phi i32 [ %inc70, %if.end66.if.end66_crit_edge ], [ 0, %while.end59.if.end66_crit_edge ]
  %n.2178 = phi i32 [ %or67, %if.end66.if.end66_crit_edge ], [ %.lcssa, %while.end59.if.end66_crit_edge ]
  %mask.4177 = phi i32 [ %shr68, %if.end66.if.end66_crit_edge ], [ -2147483648, %while.end59.if.end66_crit_edge ]
  %or67 = or i32 %n.2178, %mask.4177
  %shr68 = lshr i32 %mask.4177, 1
  %inc70 = add nuw i32 %i.4179, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc70, i32 %len.2)
  %cmp61 = icmp ult i32 %inc70, %len.2
  %and63 = and i32 %or67, %shr68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %or.cond = select i1 %cmp61, i1 %tobool64.not, i1 false
  br i1 %or.cond, label %if.end66.if.end66_crit_edge, label %if.end66.done_crit_edge

if.end66.done_crit_edge:                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end66.if.end66_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

done:                                             ; preds = %if.end66.done_crit_edge, %while.end59.done_crit_edge, %while.end43.done_crit_edge, %lor.lhs.false.done_crit_edge, %if.end36.done_crit_edge
  %curr.3 = phi ptr [ %curr.1, %while.end43.done_crit_edge ], [ %curr.2.lcssa, %while.end59.done_crit_edge ], [ %curr.2.lcssa, %if.end66.done_crit_edge ], [ %curr.1, %lor.lhs.false.done_crit_edge ], [ %curr.1, %if.end36.done_crit_edge ]
  %n.3 = phi i32 [ %or, %while.end43.done_crit_edge ], [ %.lcssa, %while.end59.done_crit_edge ], [ %or67, %if.end66.done_crit_edge ], [ %or, %lor.lhs.false.done_crit_edge ], [ %or, %if.end36.done_crit_edge ]
  %i.5 = phi i32 [ %smax, %while.end43.done_crit_edge ], [ 0, %while.end59.done_crit_edge ], [ %inc70, %if.end66.done_crit_edge ], [ %8, %if.end36.done_crit_edge ], [ %inc33, %lor.lhs.false.done_crit_edge ]
  %16 = ptrtoint ptr %curr.3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %n.3, ptr %curr.3, align 4
  %sub.ptr.lhs.cast72 = ptrtoint ptr %curr.3 to i32
  %sub.ptr.sub74 = sub i32 %sub.ptr.lhs.cast72, %sub.ptr.rhs.cast
  %mul76 = shl i32 %sub.ptr.sub74, 3
  %add77 = sub i32 %i.5, %add26
  %sub78 = add i32 %add77, %mul76
  %17 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub78, ptr %max, align 4
  br label %cleanup

cleanup:                                          ; preds = %done, %found.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add26, %done ], [ %size, %entry.cleanup_crit_edge ], [ %add26, %found.cleanup_crit_edge ], [ %size, %if.end9.cleanup_crit_edge ], [ %size, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_clear_vbm_bits(ptr noundef %sb, i16 noundef zeroext %start, i16 noundef zeroext %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count)
  %tobool.not = icmp eq i16 %count, 0
  br i1 %tobool.not, label %entry.cleanup44_crit_edge, label %do.end

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup44

do.end:                                           ; preds = %entry
  %conv = zext i16 %start to i32
  %conv1 = zext i16 %count to i32
  %add = add nuw nsw i32 %conv1, %conv
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %fs_ablocks = getelementptr inbounds %struct.hfs_sb_info, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %fs_ablocks to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fs_ablocks, align 4
  %conv2 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv2)
  %cmp = icmp ugt i32 %add, %conv2
  br i1 %cmp, label %do.end.cleanup44_crit_edge, label %if.end5

do.end.cleanup44_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup44

if.end5:                                          ; preds = %do.end
  %bitmap_lock = getelementptr inbounds %struct.hfs_sb_info, ptr %1, i32 0, i32 29
  tail call void @mutex_lock_nested(ptr noundef %bitmap_lock, i32 noundef 0) #4
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %bitmap = getelementptr inbounds %struct.hfs_sb_info, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bitmap, align 4
  %div74 = lshr i32 %conv, 5
  %add.ptr = getelementptr i32, ptr %7, i32 %div74
  %rem = and i32 %conv, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool11.not = icmp eq i32 %rem, 0
  br i1 %tobool11.not, label %if.end5.if.end24_crit_edge, label %if.then12

if.end5.if.end24_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then12:                                        ; preds = %if.end5
  %sub = sub nuw nsw i32 32, %rem
  %shl = shl nsw i32 -1, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv1)
  %cmp14 = icmp ugt i32 %sub, %conv1
  br i1 %cmp14, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr = getelementptr i32, ptr %add.ptr, i32 1
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 4
  %and20 = and i32 %9, %shl
  store i32 %and20, ptr %add.ptr, align 4
  %10 = trunc i32 %sub to i16
  %conv23 = sub i16 %count, %10
  br label %if.end24

cleanup:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %add18 = add nuw nsw i32 %rem, %conv1
  %shr = lshr i32 -1, %add18
  %or = or i32 %shl, %shr
  br label %out.sink.split

if.end24:                                         ; preds = %cleanup.thread, %if.end5.if.end24_crit_edge
  %count.addr.1 = phi i16 [ %count, %if.end5.if.end24_crit_edge ], [ %conv23, %cleanup.thread ]
  %curr.1 = phi ptr [ %add.ptr, %if.end5.if.end24_crit_edge ], [ %incdec.ptr, %cleanup.thread ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %count.addr.1)
  %cmp2681 = icmp ugt i16 %count.addr.1, 31
  br i1 %cmp2681, label %while.body.preheader, label %if.end24.while.end_crit_edge

if.end24.while.end_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.preheader:                             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %11 = add i16 %count.addr.1, -32
  %12 = lshr i16 %11, 3
  %13 = and i16 %12, 8188
  %narrow = add nuw nsw i16 %13, 4
  %14 = zext i16 %narrow to i32
  %15 = call ptr @memset(ptr %curr.1, i32 0, i32 %14)
  %uglygep = getelementptr i8, ptr %curr.1, i32 %14
  %16 = and i16 %count.addr.1, 31
  br label %while.end

while.end:                                        ; preds = %while.body.preheader, %if.end24.while.end_crit_edge
  %count.addr.2.lcssa80 = phi i16 [ %count.addr.1, %if.end24.while.end_crit_edge ], [ %16, %while.body.preheader ]
  %curr.2.lcssa = phi ptr [ %curr.1, %if.end24.while.end_crit_edge ], [ %uglygep, %while.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count.addr.2.lcssa80)
  %tobool32.not = icmp eq i16 %count.addr.2.lcssa80, 0
  br i1 %tobool32.not, label %while.end.out_crit_edge, label %if.then33

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then33:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv25.le = zext i16 %count.addr.2.lcssa80 to i32
  %shr35 = lshr i32 -1, %conv25.le
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.then33, %cleanup
  %add.ptr.sink86 = phi ptr [ %add.ptr, %cleanup ], [ %curr.2.lcssa, %if.then33 ]
  %or.sink = phi i32 [ %or, %cleanup ], [ %shr35, %if.then33 ]
  %17 = ptrtoint ptr %add.ptr.sink86 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.sink86, align 4
  %and = and i32 %18, %or.sink
  store i32 %and, ptr %add.ptr.sink86, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %while.end.out_crit_edge
  %19 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info, align 16
  %free_ablocks = getelementptr inbounds %struct.hfs_sb_info, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %free_ablocks to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %free_ablocks, align 2
  %add40 = add i16 %22, %count
  store i16 %add40, ptr %free_ablocks, align 2
  %23 = load ptr, ptr %s_fs_info, align 16
  %bitmap_lock43 = getelementptr inbounds %struct.hfs_sb_info, ptr %23, i32 0, i32 29
  tail call void @mutex_unlock(ptr noundef %bitmap_lock43) #4
  %24 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info, align 16
  %flags.i = getelementptr inbounds %struct.hfs_sb_info, ptr %25, i32 0, i32 30
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #4
  tail call void @hfs_mark_mdb_dirty(ptr noundef %sb) #4
  br label %cleanup44

cleanup44:                                        ; preds = %out, %do.end.cleanup44_crit_edge, %entry.cleanup44_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ 0, %entry.cleanup44_crit_edge ], [ -2, %do.end.cleanup44_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_mark_mdb_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
