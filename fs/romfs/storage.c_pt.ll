; ModuleID = '/llk/IR_all_yes/fs/romfs/storage.c_pt.bc'
source_filename = "../fs/romfs/storage.c"
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
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @romfs_dev_read(ptr nocapture noundef readonly %sb, i32 noundef %pos, ptr nocapture noundef writeonly %buf, i32 noundef %buflen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %pos)
  %cmp.not = icmp ule i32 %2, %pos
  %sub = sub i32 %2, %pos
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %buflen)
  %cmp1 = icmp ult i32 %sub, %buflen
  %or.cond = or i1 %cmp.not, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %3 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_bdev, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %cmp.not19.i = icmp eq i32 %buflen, 0
  br i1 %cmp.not19.i, label %if.then2.cleanup_crit_edge, label %while.body.lr.ph.i

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %if.then2
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %brelse.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %buflen.addr.022.i = phi i32 [ %buflen, %while.body.lr.ph.i ], [ %sub3.i, %brelse.exit.i.while.body.i_crit_edge ]
  %buf.addr.021.i = phi ptr [ %buf, %while.body.lr.ph.i ], [ %add.ptr2.i, %brelse.exit.i.while.body.i_crit_edge ]
  %pos.addr.020.i = phi i32 [ %pos, %while.body.lr.ph.i ], [ %add.i, %brelse.exit.i.while.body.i_crit_edge ]
  %shr.i = lshr i32 %pos.addr.020.i, 10
  %conv.i = zext i32 %shr.i to i64
  %5 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_bdev, align 4
  %7 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %6, i64 noundef %conv.i, i32 noundef %8, i32 noundef 8) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %while.body.i.cleanup_crit_edge, label %brelse.exit.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

brelse.exit.i:                                    ; preds = %while.body.i
  %and.i = and i32 %pos.addr.020.i, 1023
  %sub.i = sub nuw nsw i32 1024, %and.i
  %9 = tail call i32 @llvm.umin.i32(i32 %buflen.addr.022.i, i32 %sub.i) #5
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %and.i
  %12 = call ptr @memcpy(ptr %buf.addr.021.i, ptr %add.ptr.i, i32 %9)
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #5
  %add.ptr2.i = getelementptr i8, ptr %buf.addr.021.i, i32 %9
  %sub3.i = sub i32 %buflen.addr.022.i, %9
  %add.i = add i32 %9, %pos.addr.020.i
  %cmp.not.i = icmp eq i32 %sub3.i, 0
  br i1 %cmp.not.i, label %brelse.exit.i.cleanup_crit_edge, label %brelse.exit.i.while.body.i_crit_edge

brelse.exit.i.while.body.i_crit_edge:             ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

brelse.exit.i.cleanup_crit_edge:                  ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit.i.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ 0, %if.then2.cleanup_crit_edge ], [ -5, %while.body.i.cleanup_crit_edge ], [ 0, %brelse.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @romfs_dev_strnlen(ptr nocapture noundef readonly %sb, i32 noundef %pos, i32 noundef %maxlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %pos)
  %cmp.not = icmp ugt i32 %2, %pos
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = sub i32 %2, %pos
  %3 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %maxlen)
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %4 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_bdev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not31.i = icmp eq i32 %3, 0
  br i1 %cmp.not31.i, label %if.then5.cleanup_crit_edge, label %while.body.lr.ph.i

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %if.then5
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %n.034.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add8.i, %if.end5.i.while.body.i_crit_edge ]
  %limit.addr.033.i = phi i32 [ %3, %while.body.lr.ph.i ], [ %sub6.i, %if.end5.i.while.body.i_crit_edge ]
  %pos.addr.032.i = phi i32 [ %pos, %while.body.lr.ph.i ], [ %add7.i, %if.end5.i.while.body.i_crit_edge ]
  %and.i = and i32 %pos.addr.032.i, 1023
  %sub.i = sub nuw nsw i32 1024, %and.i
  %6 = tail call i32 @llvm.umin.i32(i32 %limit.addr.033.i, i32 %sub.i) #5
  %shr.i = lshr i32 %pos.addr.032.i, 10
  %conv.i = zext i32 %shr.i to i64
  %7 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_bdev, align 4
  %9 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %8, i64 noundef %conv.i, i32 noundef %10, i32 noundef 8) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %while.body.i.cleanup_crit_edge, label %brelse.exit.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

brelse.exit.i:                                    ; preds = %while.body.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %and.i
  %call2.i = tail call ptr @memchr(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef %6) #8
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #5
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end5.i, label %if.then4.i

if.then4.i:                                       ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call2.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub.i = sub i32 %n.034.i, %sub.ptr.rhs.cast.i
  %add.i = add i32 %sub.ptr.sub.i, %sub.ptr.lhs.cast.i
  br label %cleanup

if.end5.i:                                        ; preds = %brelse.exit.i
  %sub6.i = sub i32 %limit.addr.033.i, %6
  %add7.i = add i32 %6, %pos.addr.032.i
  %add8.i = add i32 %6, %n.034.i
  %cmp.not.i = icmp eq i32 %sub6.i, 0
  br i1 %cmp.not.i, label %if.end5.i.cleanup_crit_edge, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5.i.cleanup_crit_edge, %if.then4.i, %while.body.i.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ %add.i, %if.then4.i ], [ 0, %if.then5.cleanup_crit_edge ], [ %add8.i, %if.end5.i.cleanup_crit_edge ], [ -5, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @romfs_dev_strcmp(ptr nocapture noundef readonly %sb, i32 noundef %pos, ptr nocapture noundef readonly %str, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %pos)
  %cmp.not = icmp ugt i32 %2, %pos
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %size)
  %cmp1 = icmp ugt i32 %size, 128
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %sub = sub i32 %2, %pos
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %size)
  %cmp4.not = icmp ugt i32 %sub, %size
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %3 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_bdev, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end6.cleanup_crit_edge, label %if.then7

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %if.end6
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %if.then15.i.while.cond.outer.i_crit_edge, %if.then7
  %pos.addr.0.ph.i = phi i32 [ %add.i, %if.then15.i.while.cond.outer.i_crit_edge ], [ %pos, %if.then7 ]
  %str.addr.0.ph.i = phi ptr [ %add.ptr6.i, %if.then15.i.while.cond.outer.i_crit_edge ], [ %str, %if.then7 ]
  %size.addr.0.ph.i = phi i32 [ 0, %if.then15.i.while.cond.outer.i_crit_edge ], [ %size, %if.then7 ]
  %terminated.0.off0.ph.i = phi i1 [ true, %if.then15.i.while.cond.outer.i_crit_edge ], [ false, %if.then7 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0.ph.i)
  %cmp.not103.i = icmp eq i32 %size.addr.0.ph.i, 0
  br i1 %cmp.not103.i, label %while.cond.outer.i.while.end.i_crit_edge, label %while.cond.outer.i.while.body.i_crit_edge

while.cond.outer.i.while.body.i_crit_edge:        ; preds = %while.cond.outer.i
  br label %while.body.i

while.cond.outer.i.while.end.i_crit_edge:         ; preds = %while.cond.outer.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.cond.critedge.i:                            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #5
  br label %while.cond.backedge.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.cond.outer.i.while.body.i_crit_edge
  %size.addr.0106.i = phi i32 [ %sub5.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ %size.addr.0.ph.i, %while.cond.outer.i.while.body.i_crit_edge ]
  %str.addr.0105.i = phi ptr [ %add.ptr6.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ %str.addr.0.ph.i, %while.cond.outer.i.while.body.i_crit_edge ]
  %pos.addr.0104.i = phi i32 [ %add.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ %pos.addr.0.ph.i, %while.cond.outer.i.while.body.i_crit_edge ]
  %and.i = and i32 %pos.addr.0104.i, 1023
  %sub.i = sub nuw nsw i32 1024, %and.i
  %5 = tail call i32 @llvm.umin.i32(i32 %size.addr.0106.i, i32 %sub.i) #5
  %shr.i = lshr i32 %pos.addr.0104.i, 10
  %conv.i = zext i32 %shr.i to i64
  %6 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_bdev, align 4
  %8 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %7, i64 noundef %conv.i, i32 noundef %9, i32 noundef 8) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %while.body.i.cleanup_crit_edge, label %if.end.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %while.body.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %and.i
  %bcmp.i = tail call i32 @bcmp(ptr %add.ptr.i, ptr %str.addr.0105.i, i32 %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp3.i = icmp eq i32 %bcmp.i, 0
  %sub5.i = sub i32 %size.addr.0106.i, %5
  %add.i = add i32 %5, %pos.addr.0104.i
  %add.ptr6.i = getelementptr i8, ptr %str.addr.0105.i, i32 %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5.i)
  %cmp9.i = icmp eq i32 %sub5.i, 0
  %or.cond.i = select i1 %cmp3.i, i1 %cmp9.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true11.i, label %brelse.exit.i

land.lhs.true11.i:                                ; preds = %if.end.i
  %add12.i = add nuw nsw i32 %5, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add12.i)
  %cmp13.i = icmp ult i32 %add12.i, 1024
  br i1 %cmp13.i, label %if.then15.i, label %while.cond.critedge.i

if.then15.i:                                      ; preds = %land.lhs.true11.i
  %arrayidx.i = getelementptr i8, ptr %11, i32 %add12.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %tobool18.not.i = icmp eq i8 %13, 0
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #5
  br i1 %tobool18.not.i, label %if.then15.i.while.cond.outer.i_crit_edge, label %if.then15.i.cleanup_crit_edge

if.then15.i.cleanup_crit_edge:                    ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15.i.while.cond.outer.i_crit_edge:         ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.outer.i

brelse.exit.i:                                    ; preds = %if.end.i
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #5
  br i1 %cmp3.i, label %brelse.exit.i.while.cond.backedge.i_crit_edge, label %brelse.exit.i.cleanup_crit_edge

brelse.exit.i.cleanup_crit_edge:                  ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

brelse.exit.i.while.cond.backedge.i_crit_edge:    ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %brelse.exit.i.while.cond.backedge.i_crit_edge, %while.cond.critedge.i
  br i1 %cmp9.i, label %while.cond.backedge.i.while.end.i_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.cond.backedge.i.while.end.i_crit_edge:      ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.backedge.i.while.end.i_crit_edge, %while.cond.outer.i.while.end.i_crit_edge
  %pos.addr.0.lcssa.i = phi i32 [ %add.i, %while.cond.backedge.i.while.end.i_crit_edge ], [ %pos.addr.0.ph.i, %while.cond.outer.i.while.end.i_crit_edge ]
  br i1 %terminated.0.off0.ph.i, label %while.end.i.if.end55.i_crit_edge, label %do.body.i

while.end.i.if.end55.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

do.body.i:                                        ; preds = %while.end.i
  %and27.i = and i32 %pos.addr.0.lcssa.i, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %cmp28.not.i = icmp eq i32 %and27.i, 0
  br i1 %cmp28.not.i, label %do.end39.i, label %do.body33.i, !prof !9

do.body33.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/romfs/storage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 197, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end39.i:                                       ; preds = %do.body.i
  %shr40.i = lshr i32 %pos.addr.0.lcssa.i, 10
  %conv41.i = zext i32 %shr40.i to i64
  %14 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_bdev, align 4
  %16 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i93.i = tail call ptr @__bread_gfp(ptr noundef %15, i64 noundef %conv41.i, i32 noundef %17, i32 noundef 8) #5
  %tobool43.not.i = icmp eq ptr %call.i93.i, null
  br i1 %tobool43.not.i, label %do.end39.i.cleanup_crit_edge, label %brelse.exit96.i

do.end39.i.cleanup_crit_edge:                     ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

brelse.exit96.i:                                  ; preds = %do.end39.i
  %b_data46.i = getelementptr inbounds %struct.buffer_head, ptr %call.i93.i, i32 0, i32 5
  %18 = ptrtoint ptr %b_data46.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_data46.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool48.not.i = icmp eq i8 %21, 0
  tail call void @__brelse(ptr noundef nonnull %call.i93.i) #5
  br i1 %tobool48.not.i, label %brelse.exit96.i.if.end55.i_crit_edge, label %brelse.exit96.i.cleanup_crit_edge

brelse.exit96.i.cleanup_crit_edge:                ; preds = %brelse.exit96.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

brelse.exit96.i.if.end55.i_crit_edge:             ; preds = %brelse.exit96.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

if.end55.i:                                       ; preds = %brelse.exit96.i.if.end55.i_crit_edge, %while.end.i.if.end55.i_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end55.i, %brelse.exit96.i.cleanup_crit_edge, %do.end39.i.cleanup_crit_edge, %brelse.exit.i.cleanup_crit_edge, %if.then15.i.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -36, %if.end.cleanup_crit_edge ], [ -5, %if.end3.cleanup_crit_edge ], [ -5, %if.end6.cleanup_crit_edge ], [ 1, %if.end55.i ], [ -5, %do.end39.i.cleanup_crit_edge ], [ 0, %brelse.exit96.i.cleanup_crit_edge ], [ 0, %brelse.exit.i.cleanup_crit_edge ], [ -5, %while.body.i.cleanup_crit_edge ], [ 0, %if.then15.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind readonly willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2154349213, i64 2154349696, i64 2154349250, i64 2154349306, i64 2154349340, i64 2154349364, i64 2154349405, i64 2154349426, i64 2154349454, i64 2154349488}
