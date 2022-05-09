; ModuleID = '/llk/IR_all_yes/fs/omfs/bitmap.c_pt.bc'
source_filename = "../fs/omfs/bitmap.c"
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
%struct.omfs_sb_info = type { i64, i64, i64, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.kuid_t, %struct.kgid_t, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omfs_count_free(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  %mul = shl i32 %3, 3
  %s_imap_size = getelementptr inbounds %struct.omfs_sb_info, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %s_imap_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_imap_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8.not = icmp eq i32 %5, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %s_imap = getelementptr inbounds %struct.omfs_sb_info, ptr %1, i32 0, i32 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %for.body.lr.ph
  %sum.010 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end.i.if.end.i_crit_edge ]
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.i.if.end.i_crit_edge ]
  %6 = ptrtoint ptr %s_imap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_imap, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.09
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %9, i32 noundef %mul) #3
  %sub = add i32 %sum.010, %mul
  %add = sub i32 %sub, %call4.i
  %inc = add nuw i32 %i.09, 1
  %10 = ptrtoint ptr %s_imap_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_imap_size, align 8
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %if.end.i.if.end.i_crit_edge, label %if.end.i.for.end_crit_edge

if.end.i.for.end_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

for.end:                                          ; preds = %if.end.i.for.end_crit_edge, %entry.for.end_crit_edge
  %sum.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %if.end.i.for.end_crit_edge ]
  ret i32 %sum.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omfs_allocate_block(ptr nocapture noundef readonly %sb, i64 noundef %block) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  %mul = shl i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %block)
  %cmp167 = icmp ult i64 %block, 4294967296
  br i1 %cmp167, label %if.then171, label %if.else177, !prof !9

if.then171:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv172 = trunc i64 %block to i32
  %mul.frozen = freeze i32 %mul
  %div175 = udiv i32 %conv172, %mul.frozen
  %4 = mul i32 %div175, %mul.frozen
  %rem173.decomposed = sub i32 %conv172, %4
  %conv176 = zext i32 %div175 to i64
  br label %if.end181

if.else177:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %block) #6, !srcloc !10
  %asmresult.i298 = extractvalue { i64, i64 } %5, 0
  %asmresult1.i = extractvalue { i64, i64 } %5, 1
  %shr.i = lshr i64 %asmresult.i298, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end181

if.end181:                                        ; preds = %if.else177, %if.then171
  %tmp.0 = phi i64 [ %conv176, %if.then171 ], [ %asmresult1.i, %if.else177 ]
  %__rem.0 = phi i32 [ %rem173.decomposed, %if.then171 ], [ %conv.i, %if.else177 ]
  %conv183 = trunc i64 %tmp.0 to i32
  %s_bitmap_lock = getelementptr inbounds %struct.omfs_sb_info, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %s_bitmap_lock, i32 noundef 0) #3
  %s_imap_size = getelementptr inbounds %struct.omfs_sb_info, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %s_imap_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_imap_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv183)
  %cmp184.not = icmp ugt i32 %7, %conv183
  br i1 %cmp184.not, label %lor.lhs.false, label %if.end181.out_crit_edge

if.end181.out_crit_edge:                          ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

lor.lhs.false:                                    ; preds = %if.end181
  %s_imap = getelementptr inbounds %struct.omfs_sb_info, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %s_imap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_imap, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 %conv183
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call186 = tail call i32 @_test_and_set_bit(i32 noundef %__rem.0, ptr noundef %11) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %if.end189, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end189:                                        ; preds = %lor.lhs.false
  %s_bitmap_ino = getelementptr inbounds %struct.omfs_sb_info, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %s_bitmap_ino to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %s_bitmap_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %cmp190.not = icmp eq i64 %13, 0
  br i1 %cmp190.not, label %if.end189.out_crit_edge, label %if.then192

if.end189.out_crit_edge:                          ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.then192:                                       ; preds = %if.end189
  %s_block_shift.i = getelementptr inbounds %struct.omfs_sb_info, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %s_block_shift.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_block_shift.i, align 8
  %sh_prom.i = zext i32 %15 to i64
  %shl.i = shl i64 %13, %sh_prom.i
  %conv195 = and i64 %tmp.0, 4294967295
  %add196 = add i64 %shl.i, %conv195
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %16 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_bdev.i, align 4
  %18 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_blocksize, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %17, i64 noundef %add196, i32 noundef %19, i32 noundef 8) #3
  %tobool198.not = icmp eq ptr %call.i, null
  br i1 %tobool198.not, label %if.then192.out_crit_edge, label %brelse.exit

if.then192.out_crit_edge:                         ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

brelse.exit:                                      ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #5
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_data, align 4
  tail call void @_set_bit(i32 noundef %__rem.0, ptr noundef %21) #3
  tail call void @mark_buffer_dirty(ptr noundef nonnull %call.i) #3
  tail call void @__brelse(ptr noundef nonnull %call.i) #3
  br label %out

out:                                              ; preds = %brelse.exit, %if.then192.out_crit_edge, %if.end189.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end181.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end181.out_crit_edge ], [ 0, %lor.lhs.false.out_crit_edge ], [ 0, %if.then192.out_crit_edge ], [ 1, %brelse.exit ], [ 1, %if.end189.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %s_bitmap_lock) #3
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omfs_allocate_range(ptr nocapture noundef readonly %sb, i32 noundef %min_request, i32 noundef %max_request, ptr nocapture noundef writeonly %return_block, ptr nocapture noundef writeonly %return_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  %mul = shl i32 %3, 3
  %s_bitmap_lock = getelementptr inbounds %struct.omfs_sb_info, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %s_bitmap_lock, i32 noundef 0) #3
  %s_imap_size = getelementptr inbounds %struct.omfs_sb_info, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %s_imap_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_imap_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp47 = icmp sgt i32 %5, 0
  br i1 %cmp47, label %while.cond.preheader.lr.ph, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

while.cond.preheader.lr.ph:                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp145 = icmp sgt i32 %mul, 0
  %s_imap = getelementptr inbounds %struct.omfs_sb_info, ptr %1, i32 0, i32 8
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %while.cond.preheader.lr.ph
  %i.048 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %inc, %for.inc.while.cond.preheader_crit_edge ]
  br i1 %cmp145, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.for.inc_crit_edge

while.cond.preheader.for.inc_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %if.end10.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %bit.046 = phi i32 [ %add, %if.end10.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %6 = ptrtoint ptr %s_imap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_imap, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.048
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 @_find_next_zero_bit_be(ptr noundef %9, i32 noundef %mul, i32 noundef %bit.046) #3
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %mul)
  %cmp3 = icmp eq i32 %call2, %mul
  br i1 %cmp3, label %while.body.for.inc_crit_edge, label %if.end

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end:                                           ; preds = %while.body
  %10 = ptrtoint ptr %s_imap_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_imap_size, align 8
  %sub = sub i32 %11, %i.048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp26.i = icmp sgt i32 %sub, 0
  br i1 %cmp26.i, label %for.body.i.preheader, label %if.end.count_run.exit_crit_edge

if.end.count_run.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %count_run.exit

for.body.i.preheader:                             ; preds = %if.end
  %12 = ptrtoint ptr %s_imap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_imap, align 4
  %arrayidx5 = getelementptr ptr, ptr %13, i32 %i.048
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx5, align 4
  %call.i.peel = tail call i32 @_find_next_bit_be(ptr noundef %15, i32 noundef %mul, i32 noundef %call2) #3
  %sub.i.peel = sub i32 %call.i.peel, %call2
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.peel, i32 %mul)
  %cmp1.i.peel = icmp sge i32 %call.i.peel, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.peel, i32 %max_request)
  %cmp2.i.peel = icmp sle i32 %sub.i.peel, %max_request
  %or.cond.i.peel = select i1 %cmp1.i.peel, i1 %cmp2.i.peel, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp.i.peel = icmp ne i32 %sub, 1
  %or.cond33.i.peel = select i1 %or.cond.i.peel, i1 %cmp.i.peel, i1 false
  br i1 %or.cond33.i.peel, label %for.body.i.preheader.for.body.i_crit_edge, label %for.body.i.preheader.count_run.exit_crit_edge

for.body.i.preheader.count_run.exit_crit_edge:    ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %count_run.exit

for.body.i.preheader.for.body.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader.for.body.i_crit_edge
  %addr.addr.030.i.pn = phi ptr [ %addr.addr.030.i, %for.body.i.for.body.i_crit_edge ], [ %arrayidx5, %for.body.i.preheader.for.body.i_crit_edge ]
  %count.029.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ %sub.i.peel, %for.body.i.preheader.for.body.i_crit_edge ]
  %addrlen.addr.028.i.in = phi i32 [ %addrlen.addr.028.i, %for.body.i.for.body.i_crit_edge ], [ %sub, %for.body.i.preheader.for.body.i_crit_edge ]
  %addrlen.addr.028.i = add nsw i32 %addrlen.addr.028.i.in, -1
  %addr.addr.030.i = getelementptr ptr, ptr %addr.addr.030.i.pn, i32 1
  %16 = ptrtoint ptr %addr.addr.030.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %addr.addr.030.i, align 4
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %17, i32 noundef %mul, i32 noundef 0) #3
  %add.i = add i32 %call.i, %count.029.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %mul)
  %cmp1.i = icmp sge i32 %call.i, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %max_request)
  %cmp2.i = icmp sle i32 %add.i, %max_request
  %or.cond.i = select i1 %cmp1.i, i1 %cmp2.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %addrlen.addr.028.i)
  %cmp.i = icmp ugt i32 %addrlen.addr.028.i, 1
  %or.cond33.i = select i1 %or.cond.i, i1 %cmp.i, i1 false
  br i1 %or.cond33.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.count_run.exit_crit_edge, !llvm.loop !11

for.body.i.count_run.exit_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %count_run.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

count_run.exit:                                   ; preds = %for.body.i.count_run.exit_crit_edge, %for.body.i.preheader.count_run.exit_crit_edge, %if.end.count_run.exit_crit_edge
  %count.0.lcssa.sink.i = phi i32 [ 0, %if.end.count_run.exit_crit_edge ], [ %sub.i.peel, %for.body.i.preheader.count_run.exit_crit_edge ], [ %add.i, %for.body.i.count_run.exit_crit_edge ]
  %18 = tail call i32 @llvm.smin.i32(i32 %count.0.lcssa.sink.i, i32 %max_request) #3
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %min_request)
  %cmp8.not = icmp slt i32 %18, %min_request
  br i1 %cmp8.not, label %if.end10, label %found

if.end10:                                         ; preds = %count_run.exit
  %add = add i32 %18, %call2
  %cmp1 = icmp slt i32 %add, %mul
  br i1 %cmp1, label %if.end10.while.body_crit_edge, label %if.end10.for.inc_crit_edge

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

for.inc:                                          ; preds = %if.end10.for.inc_crit_edge, %while.body.for.inc_crit_edge, %while.cond.preheader.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.048, 1
  %19 = ptrtoint ptr %s_imap_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_imap_size, align 8
  %cmp = icmp slt i32 %inc, %20
  br i1 %cmp, label %for.inc.while.cond.preheader_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.preheader

found:                                            ; preds = %count_run.exit
  call void @__sanitizer_cov_trace_pc() #5
  %conv = zext i32 %i.048 to i64
  %conv11 = sext i32 %mul to i64
  %mul12 = mul nsw i64 %conv, %conv11
  %conv13 = sext i32 %call2 to i64
  %add14 = add nsw i64 %mul12, %conv13
  %21 = ptrtoint ptr %return_block to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %add14, ptr %return_block, align 8
  %22 = ptrtoint ptr %return_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %18, ptr %return_size, align 4
  %call15 = tail call fastcc i32 @set_run(ptr noundef %sb, i32 noundef %i.048, i32 noundef %mul, i32 noundef %call2, i32 noundef %18, i32 noundef 1)
  br label %out

out:                                              ; preds = %found, %for.inc.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call15, %found ], [ -28, %entry.out_crit_edge ], [ -28, %for.inc.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %s_bitmap_lock) #3
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_run(ptr nocapture noundef readonly %sb, i32 noundef %map, i32 noundef %nbits, i32 noundef %bit, i32 noundef %count, i32 noundef %set) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_bitmap_ino = getelementptr inbounds %struct.omfs_sb_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %s_bitmap_ino to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %s_bitmap_ino, align 8
  %s_block_shift.i = getelementptr inbounds %struct.omfs_sb_info, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %s_block_shift.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_block_shift.i, align 8
  %sh_prom.i = zext i32 %5 to i64
  %shl.i = shl i64 %3, %sh_prom.i
  %conv = sext i32 %map to i64
  %add = add i64 %shl.i, %conv
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %6 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %8 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %7, i64 noundef %add, i32 noundef %9, i32 noundef 8) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %for.cond.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp58 = icmp sgt i32 %count, 0
  br i1 %cmp58, label %for.body.lr.ph, label %for.end.thread

for.end.thread:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mark_buffer_dirty(ptr noundef nonnull %call.i) #3
  br label %if.then.i55

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool16.not = icmp eq i32 %set, 0
  %s_imap = getelementptr inbounds %struct.omfs_sb_info, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %bh.062 = phi ptr [ %call.i, %for.body.lr.ph ], [ %bh.1, %for.inc.for.body_crit_edge ]
  %i.061 = phi i32 [ 0, %for.body.lr.ph ], [ %inc22, %for.inc.for.body_crit_edge ]
  %map.addr.060 = phi i32 [ %map, %for.body.lr.ph ], [ %map.addr.1, %for.inc.for.body_crit_edge ]
  %bit.addr.059 = phi i32 [ %bit, %for.body.lr.ph ], [ %inc23, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %bit.addr.059, i32 %nbits)
  %cmp4.not = icmp slt i32 %bit.addr.059, %nbits
  br i1 %cmp4.not, label %for.body.if.end15_crit_edge, label %if.then6

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.then6:                                         ; preds = %for.body
  %inc = add i32 %map.addr.060, 1
  tail call void @mark_buffer_dirty(ptr noundef %bh.062) #3
  %tobool.not.i = icmp eq ptr %bh.062, null
  br i1 %tobool.not.i, label %if.then6.brelse.exit_crit_edge, label %if.then.i

if.then6.brelse.exit_crit_edge:                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %brelse.exit

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @__brelse(ptr noundef nonnull %bh.062) #3
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.then6.brelse.exit_crit_edge
  %10 = ptrtoint ptr %s_bitmap_ino to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %s_bitmap_ino, align 8
  %12 = ptrtoint ptr %s_block_shift.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_block_shift.i, align 8
  %sh_prom.i49 = zext i32 %13 to i64
  %shl.i50 = shl i64 %11, %sh_prom.i49
  %conv9 = sext i32 %inc to i64
  %add10 = add i64 %shl.i50, %conv9
  %14 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_bdev.i, align 4
  %16 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_blocksize.i, align 16
  %call.i53 = tail call ptr @__bread_gfp(ptr noundef %15, i64 noundef %add10, i32 noundef %17, i32 noundef 8) #3
  %tobool12.not = icmp eq ptr %call.i53, null
  br i1 %tobool12.not, label %brelse.exit.out_crit_edge, label %brelse.exit.if.end15_crit_edge

brelse.exit.if.end15_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

brelse.exit.out_crit_edge:                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end15:                                         ; preds = %brelse.exit.if.end15_crit_edge, %for.body.if.end15_crit_edge
  %bit.addr.1 = phi i32 [ 0, %brelse.exit.if.end15_crit_edge ], [ %bit.addr.059, %for.body.if.end15_crit_edge ]
  %map.addr.1 = phi i32 [ %inc, %brelse.exit.if.end15_crit_edge ], [ %map.addr.060, %for.body.if.end15_crit_edge ]
  %bh.1 = phi ptr [ %call.i53, %brelse.exit.if.end15_crit_edge ], [ %bh.062, %for.body.if.end15_crit_edge ]
  %18 = ptrtoint ptr %s_imap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_imap, align 4
  %arrayidx19 = getelementptr ptr, ptr %19, i32 %map.addr.1
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx19, align 4
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_set_bit(i32 noundef %bit.addr.1, ptr noundef %21) #3
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh.1, i32 0, i32 5
  %22 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data, align 4
  tail call void @_set_bit(i32 noundef %bit.addr.1, ptr noundef %23) #3
  br label %for.inc

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_clear_bit(i32 noundef %bit.addr.1, ptr noundef %21) #3
  %b_data20 = getelementptr inbounds %struct.buffer_head, ptr %bh.1, i32 0, i32 5
  %24 = ptrtoint ptr %b_data20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_data20, align 4
  tail call void @_clear_bit(i32 noundef %bit.addr.1, ptr noundef %25) #3
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then17
  %inc22 = add nuw nsw i32 %i.061, 1
  %inc23 = add nsw i32 %bit.addr.1, 1
  %exitcond.not = icmp eq i32 %inc22, %count
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void @mark_buffer_dirty(ptr noundef %bh.1) #3
  %tobool.not.i54 = icmp eq ptr %bh.1, null
  br i1 %tobool.not.i54, label %for.end.out_crit_edge, label %for.end.if.then.i55_crit_edge

for.end.if.then.i55_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i55

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.then.i55:                                      ; preds = %for.end.if.then.i55_crit_edge, %for.end.thread
  %bh.0.lcssa65 = phi ptr [ %call.i, %for.end.thread ], [ %bh.1, %for.end.if.then.i55_crit_edge ]
  tail call void @__brelse(ptr noundef nonnull %bh.0.lcssa65) #3
  br label %out

out:                                              ; preds = %if.then.i55, %for.end.out_crit_edge, %brelse.exit.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ -12, %entry.out_crit_edge ], [ 0, %for.end.out_crit_edge ], [ 0, %if.then.i55 ], [ -12, %brelse.exit.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omfs_clear_range(ptr nocapture noundef readonly %sb, i64 noundef %block, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  %mul = shl i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %block)
  %cmp167 = icmp ult i64 %block, 4294967296
  br i1 %cmp167, label %if.then171, label %if.else177, !prof !9

if.then171:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv172 = trunc i64 %block to i32
  %mul.frozen = freeze i32 %mul
  %div175 = udiv i32 %conv172, %mul.frozen
  %4 = mul i32 %div175, %mul.frozen
  %rem173.decomposed = sub i32 %conv172, %4
  br label %if.end181

if.else177:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %block) #6, !srcloc !10
  %asmresult.i282 = extractvalue { i64, i64 } %5, 0
  %asmresult1.i = extractvalue { i64, i64 } %5, 1
  %shr.i = lshr i64 %asmresult.i282, 32
  %conv.i = trunc i64 %shr.i to i32
  %extract.t306 = trunc i64 %asmresult1.i to i32
  br label %if.end181

if.end181:                                        ; preds = %if.else177, %if.then171
  %tmp.0.off0 = phi i32 [ %div175, %if.then171 ], [ %extract.t306, %if.else177 ]
  %__rem.0 = phi i32 [ %rem173.decomposed, %if.then171 ], [ %conv.i, %if.else177 ]
  %s_imap_size = getelementptr inbounds %struct.omfs_sb_info, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %s_imap_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_imap_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %tmp.0.off0)
  %cmp184.not = icmp ugt i32 %7, %tmp.0.off0
  br i1 %cmp184.not, label %if.end187, label %if.end181.cleanup_crit_edge

if.end181.cleanup_crit_edge:                      ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end187:                                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #5
  %s_bitmap_lock = getelementptr inbounds %struct.omfs_sb_info, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %s_bitmap_lock, i32 noundef 0) #3
  %call188 = tail call fastcc i32 @set_run(ptr noundef %sb, i32 noundef %tmp.0.off0, i32 noundef %mul, i32 noundef %__rem.0, i32 noundef %count, i32 noundef 0)
  tail call void @mutex_unlock(ptr noundef %s_bitmap_lock) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end187, %if.end181.cleanup_crit_edge
  %retval.0 = phi i32 [ %call188, %if.end187 ], [ 0, %if.end181.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind readnone }

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
!10 = !{i64 2148602438, i64 2148602718, i64 2148603052, i64 2148603386}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.peeled.count", i32 1}
