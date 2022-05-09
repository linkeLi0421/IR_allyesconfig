; ModuleID = '/llk/IR_all_yes/fs/hfsplus/unicode.c_pt.bc'
source_filename = "../fs/hfsplus/unicode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hfsplus_unistr = type { i16, [255 x i16] }
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
%struct.hfsplus_sb_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, ptr, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, %struct.mutex, i32, i32, i16, %struct.kuid_t, %struct.kgid_t, i32, i32, i32, i32, %struct.delayed_work, %struct.spinlock }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.72 }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { %struct.spinlock, i32 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.anon.3 = type { i32, i32 }

@hfsplus_compose_table = external dso_local global [0 x i16], align 2
@hfsplus_case_fold_table = external dso_local local_unnamed_addr global [0 x i16], align 2
@hfsplus_decompose_table = external dso_local global [0 x i16], align 2
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 47]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 47]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 16, i64 58, i64 9216]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 16, i64 58, i64 9216]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 58, i64 9216]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 58, i64 9216]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_strcasecmp(ptr nocapture noundef readonly %s1, ptr nocapture noundef readonly %s2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %s1, align 1
  %2 = ptrtoint ptr %s2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %s2, align 1
  %unicode = getelementptr inbounds %struct.hfsplus_unistr, ptr %s1, i32 0, i32 1
  %unicode2 = getelementptr inbounds %struct.hfsplus_unistr, ptr %s2, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %entry
  %len1.0 = phi i16 [ %1, %entry ], [ %len1.1.lcssa, %if.end.while.cond_crit_edge ]
  %len2.0 = phi i16 [ %3, %entry ], [ %len2.1.lcssa, %if.end.while.cond_crit_edge ]
  %p1.0 = phi ptr [ %unicode, %entry ], [ %p1.1.lcssa, %if.end.while.cond_crit_edge ]
  %p2.0 = phi ptr [ %unicode2, %entry ], [ %p2.1.lcssa, %if.end.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %len1.0)
  %tobool.not61.not = icmp eq i16 %len1.0, 0
  br i1 %tobool.not61.not, label %while.cond.while.cond7.preheader_crit_edge, label %while.cond.while.body6_crit_edge

while.cond.while.body6_crit_edge:                 ; preds = %while.cond
  br label %while.body6

while.cond.while.cond7.preheader_crit_edge:       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond7.preheader

while.cond7.preheader:                            ; preds = %case_fold.exit.while.cond7.preheader_crit_edge, %while.cond.while.cond7.preheader_crit_edge
  %len1.1.lcssa = phi i16 [ 0, %while.cond.while.cond7.preheader_crit_edge ], [ %dec, %case_fold.exit.while.cond7.preheader_crit_edge ]
  %c1.0.lcssa = phi i16 [ 0, %while.cond.while.cond7.preheader_crit_edge ], [ %tmp.0.i, %case_fold.exit.while.cond7.preheader_crit_edge ]
  %p1.1.lcssa = phi ptr [ %p1.0, %while.cond.while.cond7.preheader_crit_edge ], [ %incdec.ptr, %case_fold.exit.while.cond7.preheader_crit_edge ]
  %tobool5.not.lcssa = phi i1 [ true, %while.cond.while.cond7.preheader_crit_edge ], [ %tobool5.not, %case_fold.exit.while.cond7.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %len2.0)
  %tobool9.not68.not = icmp eq i16 %len2.0, 0
  br i1 %tobool9.not68.not, label %while.cond7.preheader.while.end18_crit_edge, label %while.cond7.preheader.while.body14_crit_edge

while.cond7.preheader.while.body14_crit_edge:     ; preds = %while.cond7.preheader
  br label %while.body14

while.cond7.preheader.while.end18_crit_edge:      ; preds = %while.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end18

while.body6:                                      ; preds = %case_fold.exit.while.body6_crit_edge, %while.cond.while.body6_crit_edge
  %p1.164 = phi ptr [ %incdec.ptr, %case_fold.exit.while.body6_crit_edge ], [ %p1.0, %while.cond.while.body6_crit_edge ]
  %len1.163 = phi i16 [ %dec, %case_fold.exit.while.body6_crit_edge ], [ %len1.0, %while.cond.while.body6_crit_edge ]
  %4 = ptrtoint ptr %p1.164 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %p1.164, align 2
  %conv.i = zext i16 %5 to i32
  %6 = lshr i32 %conv.i, 8
  %arrayidx.i = getelementptr [0 x i16], ptr @hfsplus_case_fold_table, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i = icmp eq i16 %8, 0
  br i1 %tobool.not.i, label %while.body6.case_fold.exit_crit_edge, label %if.then.i

while.body6.case_fold.exit_crit_edge:             ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %case_fold.exit

if.then.i:                                        ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #6
  %conv1.i = zext i16 %8 to i32
  %and.i = and i32 %conv.i, 255
  %add.i = add nuw nsw i32 %and.i, %conv1.i
  %arrayidx3.i = getelementptr [0 x i16], ptr @hfsplus_case_fold_table, i32 0, i32 %add.i
  %9 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx3.i, align 2
  br label %case_fold.exit

case_fold.exit:                                   ; preds = %if.then.i, %while.body6.case_fold.exit_crit_edge
  %tmp.0.i = phi i16 [ %10, %if.then.i ], [ %5, %while.body6.case_fold.exit_crit_edge ]
  %incdec.ptr = getelementptr i16, ptr %p1.164, i32 1
  %dec = add i16 %len1.163, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %tobool.not = icmp ne i16 %dec, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tmp.0.i)
  %tobool5.not = icmp eq i16 %tmp.0.i, 0
  %or.cond = select i1 %tobool.not, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %case_fold.exit.while.body6_crit_edge, label %case_fold.exit.while.cond7.preheader_crit_edge

case_fold.exit.while.cond7.preheader_crit_edge:   ; preds = %case_fold.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond7.preheader

case_fold.exit.while.body6_crit_edge:             ; preds = %case_fold.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body6

while.body14:                                     ; preds = %case_fold.exit58.while.body14_crit_edge, %while.cond7.preheader.while.body14_crit_edge
  %p2.171 = phi ptr [ %incdec.ptr16, %case_fold.exit58.while.body14_crit_edge ], [ %p2.0, %while.cond7.preheader.while.body14_crit_edge ]
  %len2.170 = phi i16 [ %dec17, %case_fold.exit58.while.body14_crit_edge ], [ %len2.0, %while.cond7.preheader.while.body14_crit_edge ]
  %11 = ptrtoint ptr %p2.171 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %p2.171, align 2
  %conv.i49 = zext i16 %12 to i32
  %13 = lshr i32 %conv.i49, 8
  %arrayidx.i50 = getelementptr [0 x i16], ptr @hfsplus_case_fold_table, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.i50, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i51 = icmp eq i16 %15, 0
  br i1 %tobool.not.i51, label %while.body14.case_fold.exit58_crit_edge, label %if.then.i56

while.body14.case_fold.exit58_crit_edge:          ; preds = %while.body14
  call void @__sanitizer_cov_trace_pc() #6
  br label %case_fold.exit58

if.then.i56:                                      ; preds = %while.body14
  call void @__sanitizer_cov_trace_pc() #6
  %conv1.i52 = zext i16 %15 to i32
  %and.i53 = and i32 %conv.i49, 255
  %add.i54 = add nuw nsw i32 %and.i53, %conv1.i52
  %arrayidx3.i55 = getelementptr [0 x i16], ptr @hfsplus_case_fold_table, i32 0, i32 %add.i54
  %16 = ptrtoint ptr %arrayidx3.i55 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx3.i55, align 2
  br label %case_fold.exit58

case_fold.exit58:                                 ; preds = %if.then.i56, %while.body14.case_fold.exit58_crit_edge
  %tmp.0.i57 = phi i16 [ %17, %if.then.i56 ], [ %12, %while.body14.case_fold.exit58_crit_edge ]
  %incdec.ptr16 = getelementptr i16, ptr %p2.171, i32 1
  %dec17 = add i16 %len2.170, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec17)
  %tobool9.not = icmp ne i16 %dec17, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tmp.0.i57)
  %tobool11.not = icmp eq i16 %tmp.0.i57, 0
  %or.cond47 = select i1 %tobool9.not, i1 %tobool11.not, i1 false
  br i1 %or.cond47, label %case_fold.exit58.while.body14_crit_edge, label %case_fold.exit58.while.end18_crit_edge

case_fold.exit58.while.end18_crit_edge:           ; preds = %case_fold.exit58
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end18

case_fold.exit58.while.body14_crit_edge:          ; preds = %case_fold.exit58
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body14

while.end18:                                      ; preds = %case_fold.exit58.while.end18_crit_edge, %while.cond7.preheader.while.end18_crit_edge
  %len2.1.lcssa = phi i16 [ 0, %while.cond7.preheader.while.end18_crit_edge ], [ %dec17, %case_fold.exit58.while.end18_crit_edge ]
  %c2.0.lcssa = phi i16 [ 0, %while.cond7.preheader.while.end18_crit_edge ], [ %tmp.0.i57, %case_fold.exit58.while.end18_crit_edge ]
  %p2.1.lcssa = phi ptr [ %p2.0, %while.cond7.preheader.while.end18_crit_edge ], [ %incdec.ptr16, %case_fold.exit58.while.end18_crit_edge ]
  %tobool11.not.lcssa = phi i1 [ true, %while.cond7.preheader.while.end18_crit_edge ], [ %tobool11.not, %case_fold.exit58.while.end18_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %c1.0.lcssa, i16 %c2.0.lcssa)
  %cmp.not = icmp eq i16 %c1.0.lcssa, %c2.0.lcssa
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end18
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp2(i16 %c1.0.lcssa, i16 %c2.0.lcssa)
  %cmp24 = icmp ult i16 %c1.0.lcssa, %c2.0.lcssa
  %cond = select i1 %cmp24, i32 -1, i32 1
  br label %cleanup

if.end:                                           ; preds = %while.end18
  %or.cond48 = select i1 %tobool5.not.lcssa, i1 %tobool11.not.lcssa, i1 false
  br i1 %or.cond48, label %if.end.cleanup_crit_edge, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_strcmp(ptr nocapture noundef readonly %s1, ptr nocapture noundef readonly %s2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %s1, align 1
  %2 = ptrtoint ptr %s2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %s2, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp = icmp ult i16 %1, %3
  %4 = tail call i16 @llvm.umin.i16(i16 %1, i16 %3)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp853.not = icmp eq i16 %4, 0
  br i1 %cmp853.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %cond = zext i16 %4 to i32
  %unicode2 = getelementptr inbounds %struct.hfsplus_unistr, ptr %s2, i32 0, i32 1
  %unicode = getelementptr inbounds %struct.hfsplus_unistr, ptr %s1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %len.056 = phi i32 [ %dec, %if.end.for.body_crit_edge ], [ %cond, %for.body.preheader ]
  %p2.055 = phi ptr [ %incdec.ptr19, %if.end.for.body_crit_edge ], [ %unicode2, %for.body.preheader ]
  %p1.054 = phi ptr [ %incdec.ptr, %if.end.for.body_crit_edge ], [ %unicode, %for.body.preheader ]
  %5 = ptrtoint ptr %p1.054 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %p1.054, align 2
  %7 = ptrtoint ptr %p2.055 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %p2.055, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp12.not = icmp eq i16 %6, %8
  br i1 %cmp12.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp16 = icmp ult i16 %6, %8
  %cond18 = select i1 %cmp16, i32 -1, i32 1
  br label %cleanup

if.end:                                           ; preds = %for.body
  %incdec.ptr = getelementptr i16, ptr %p1.054, i32 1
  %incdec.ptr19 = getelementptr i16, ptr %p2.055, i32 1
  %dec = add nsw i32 %len.056, -1
  %cmp8 = icmp sgt i32 %len.056, 1
  br i1 %cmp8, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp28 = icmp ugt i16 %1, %3
  %cond30 = zext i1 %cmp28 to i32
  %cond32 = select i1 %cmp, i32 -1, i32 %cond30
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %cond18, %if.then ], [ %cond32, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_uni2asc(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %ustr, ptr noundef %astr, ptr nocapture noundef %len_p) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %nls1 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %nls1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nls1, align 8
  %4 = ptrtoint ptr %ustr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %ustr, align 1
  %6 = ptrtoint ptr %len_p to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len_p, align 4
  %flags = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 33
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp374.not = icmp eq i16 %5, 0
  br i1 %cmp374.not, label %entry.out_crit_edge, label %while.body.lr.ph

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

while.body.lr.ph:                                 ; preds = %entry
  %conv = zext i16 %5 to i32
  %unicode = getelementptr inbounds %struct.hfsplus_unistr, ptr %ustr, i32 0, i32 1
  %uni2char = getelementptr inbounds %struct.nls_table, ptr %3, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end130.while.body_crit_edge, %while.body.lr.ph
  %ustrlen.0379 = phi i32 [ %conv, %while.body.lr.ph ], [ %ustrlen.3, %if.end130.while.body_crit_edge ]
  %len.0378 = phi i32 [ %7, %while.body.lr.ph ], [ %sub132, %if.end130.while.body_crit_edge ]
  %ce1.0377 = phi ptr [ null, %while.body.lr.ph ], [ %ce1.7, %if.end130.while.body_crit_edge ]
  %op.0376 = phi ptr [ %astr, %while.body.lr.ph ], [ %add.ptr131, %if.end130.while.body_crit_edge ]
  %ip.0375 = phi ptr [ %unicode, %while.body.lr.ph ], [ %ip.3, %if.end130.while.body_crit_edge ]
  %incdec.ptr = getelementptr i16, ptr %ip.0375, i32 1
  %11 = ptrtoint ptr %ip.0375 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ip.0375, align 2
  %dec = add nsw i32 %ustrlen.0379, -1
  br i1 %tobool.not, label %if.then, label %while.body.if.end_crit_edge, !prof !9

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i16], ptr @hfsplus_compose_table, i32 0, i32 1) to i32))
  %13 = load i16, ptr getelementptr inbounds ([0 x i16], ptr @hfsplus_compose_table, i32 0, i32 1), align 2
  %conv.i = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i, label %if.then.if.end64_crit_edge, label %lor.lhs.false.i

if.then.if.end64_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end64

lor.lhs.false.i:                                  ; preds = %if.then
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i16], ptr @hfsplus_compose_table, i32 0, i32 2) to i32))
  %14 = load i16, ptr getelementptr inbounds ([0 x i16], ptr @hfsplus_compose_table, i32 0, i32 2), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %12)
  %cmp.i = icmp ugt i16 %14, %12
  br i1 %cmp.i, label %lor.lhs.false.i.if.end64_crit_edge, label %lor.lhs.false5.i

lor.lhs.false.i.if.end64_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end64

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %mul7.i = shl nuw nsw i32 %conv.i, 1
  %arrayidx8.i = getelementptr i16, ptr @hfsplus_compose_table, i32 %mul7.i
  %15 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx8.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %12)
  %cmp10.i = icmp ult i16 %16, %12
  br i1 %cmp10.i, label %lor.lhs.false5.i.if.end64_crit_edge, label %lor.lhs.false5.i.do.body.i_crit_edge

lor.lhs.false5.i.do.body.i_crit_edge:             ; preds = %lor.lhs.false5.i
  br label %do.body.i

lor.lhs.false5.i.if.end64_crit_edge:              ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end64

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %lor.lhs.false5.i.do.body.i_crit_edge
  %s.0.i = phi i32 [ %s.1.i, %do.cond.i.do.body.i_crit_edge ], [ 1, %lor.lhs.false5.i.do.body.i_crit_edge ]
  %e.0.i = phi i32 [ %e.1.i, %do.cond.i.do.body.i_crit_edge ], [ %conv.i, %lor.lhs.false5.i.do.body.i_crit_edge ]
  %add.i = add i32 %e.0.i, %s.0.i
  %div.i = sdiv i32 %add.i, 2
  %mul13.i = shl nsw i32 %div.i, 1
  %arrayidx14.i = getelementptr i16, ptr @hfsplus_compose_table, i32 %mul13.i
  %17 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx14.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %12)
  %cmp16.i = icmp ult i16 %18, %12
  br i1 %cmp16.i, label %if.then18.i, label %if.else.i

if.then18.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %add19.i = add nsw i32 %div.i, 1
  br label %do.cond.i

if.else.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %12)
  %cmp24.i = icmp ugt i16 %18, %12
  br i1 %cmp24.i, label %if.then26.i, label %if.else27.i

if.then26.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i = add nsw i32 %div.i, -1
  br label %do.cond.i

if.else27.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %add29.i = or i32 %mul13.i, 1
  %arrayidx30.i = getelementptr i16, ptr @hfsplus_compose_table, i32 %add29.i
  %19 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx30.i, align 2
  %conv31.i = zext i16 %20 to i32
  %add.ptr.i = getelementptr i16, ptr @hfsplus_compose_table, i32 %conv31.i
  br label %if.end

do.cond.i:                                        ; preds = %if.then26.i, %if.then18.i
  %s.1.i = phi i32 [ %add19.i, %if.then18.i ], [ %s.0.i, %if.then26.i ]
  %e.1.i = phi i32 [ %e.0.i, %if.then18.i ], [ %sub.i, %if.then26.i ]
  %cmp34.not.i = icmp sgt i32 %s.1.i, %e.1.i
  br i1 %cmp34.not.i, label %do.cond.i.if.end64_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.cond.i.if.end64_crit_edge:                     ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end64

if.end:                                           ; preds = %if.else27.i, %while.body.if.end_crit_edge
  %ce1.1 = phi ptr [ %ce1.0377, %while.body.if.end_crit_edge ], [ %add.ptr.i, %if.else27.i ]
  %tobool12.not = icmp eq ptr %ce1.1, null
  br i1 %tobool12.not, label %if.end.if.end64_crit_edge, label %if.end14

if.end.if.end64_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end64

if.end14:                                         ; preds = %if.end
  %21 = ptrtoint ptr %ce1.1 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ce1.1, align 2
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i16 %22, label %if.end14.done_crit_edge [
    i16 0, label %if.end14.if.end64_crit_edge
    i16 -1, label %if.end21
  ]

if.end14.if.end64_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end64

if.end14.done_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool22.not = icmp eq i32 %dec, 0
  br i1 %tobool22.not, label %if.end21.same_crit_edge, label %if.end24

if.end21.same_crit_edge:                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %same

if.end24:                                         ; preds = %if.end21
  %24 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %incdec.ptr, align 2
  %sub = add i16 %25, -4449
  call void @__sanitizer_cov_trace_const_cmp2(i16 21, i16 %sub)
  %cmp28 = icmp ult i16 %sub, 21
  br i1 %cmp28, label %if.then30, label %if.end24.if.end69.preheader_crit_edge

if.end24.if.end69.preheader_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69.preheader

if.then30:                                        ; preds = %if.end24
  %26 = mul i16 %12, 21
  %mul = add i16 %26, -25856
  %add = add i16 %mul, %sub
  %mul36 = mul i16 %add, 28
  %add39 = add i16 %mul36, -21504
  %incdec.ptr41 = getelementptr i16, ptr %ip.0375, i32 2
  %dec42 = add i32 %ustrlen.0379, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec42)
  %tobool43.not = icmp eq i32 %dec42, 0
  br i1 %tobool43.not, label %if.then30.done_crit_edge, label %if.end45

if.then30.done_crit_edge:                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end45:                                         ; preds = %if.then30
  %27 = ptrtoint ptr %incdec.ptr41 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %incdec.ptr41, align 2
  %29 = add i16 %28, -4520
  call void @__sanitizer_cov_trace_const_cmp2(i16 27, i16 %29)
  %30 = icmp ult i16 %29, 27
  br i1 %30, label %if.then55, label %if.end45.done_crit_edge

if.end45.done_crit_edge:                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.then55:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  %sub47 = add i16 %mul36, -26023
  %add58 = add i16 %sub47, %28
  %incdec.ptr60 = getelementptr i16, ptr %ip.0375, i32 3
  %dec61 = add i32 %ustrlen.0379, -3
  br label %done

if.end64:                                         ; preds = %if.end14.if.end64_crit_edge, %if.end.if.end64_crit_edge, %do.cond.i.if.end64_crit_edge, %lor.lhs.false5.i.if.end64_crit_edge, %lor.lhs.false.i.if.end64_crit_edge, %if.then.if.end64_crit_edge
  %ce1.1307310 = phi ptr [ %ce1.1, %if.end14.if.end64_crit_edge ], [ null, %if.end.if.end64_crit_edge ], [ null, %lor.lhs.false5.i.if.end64_crit_edge ], [ null, %lor.lhs.false.i.if.end64_crit_edge ], [ null, %if.then.if.end64_crit_edge ], [ null, %do.cond.i.if.end64_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool67.not340 = icmp eq i32 %dec, 0
  br i1 %tobool67.not340, label %if.end64.same_crit_edge, label %if.end64.if.end69.preheader_crit_edge

if.end64.if.end69.preheader_crit_edge:            ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69.preheader

if.end64.same_crit_edge:                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %same

if.end69.preheader:                               ; preds = %if.end64.if.end69.preheader_crit_edge, %if.end24.if.end69.preheader_crit_edge
  %ce1.2347.ph = phi ptr [ %ce1.1307310, %if.end64.if.end69.preheader_crit_edge ], [ %ce1.1, %if.end24.if.end69.preheader_crit_edge ]
  br label %if.end69

if.end69:                                         ; preds = %if.end93.if.end69_crit_edge, %if.end69.preheader
  %ustrlen.1350 = phi i32 [ %dec96, %if.end93.if.end69_crit_edge ], [ %dec, %if.end69.preheader ]
  %len.1348 = phi i32 [ %sub94, %if.end93.if.end69_crit_edge ], [ %len.0378, %if.end69.preheader ]
  %ce1.2347 = phi ptr [ null, %if.end93.if.end69_crit_edge ], [ %ce1.2347.ph, %if.end69.preheader ]
  %c0.0345 = phi i16 [ %32, %if.end93.if.end69_crit_edge ], [ %12, %if.end69.preheader ]
  %op.1343 = phi ptr [ %add.ptr, %if.end93.if.end69_crit_edge ], [ %op.0376, %if.end69.preheader ]
  %ip.1341 = phi ptr [ %incdec.ptr95, %if.end93.if.end69_crit_edge ], [ %incdec.ptr, %if.end69.preheader ]
  %31 = ptrtoint ptr %ip.1341 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ip.1341, align 2
  br i1 %tobool.not, label %if.then77, label %if.end69.if.end79_crit_edge, !prof !9

if.end69.if.end79_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79

if.then77:                                        ; preds = %if.end69
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i16], ptr @hfsplus_compose_table, i32 0, i32 1) to i32))
  %33 = load i16, ptr getelementptr inbounds ([0 x i16], ptr @hfsplus_compose_table, i32 0, i32 1), align 2
  %conv.i204 = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool.not.i205 = icmp eq i16 %33, 0
  br i1 %tobool.not.i205, label %if.then77.if.end82_crit_edge, label %lor.lhs.false.i207

if.then77.if.end82_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82

lor.lhs.false.i207:                               ; preds = %if.then77
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i16], ptr @hfsplus_compose_table, i32 0, i32 2) to i32))
  %34 = load i16, ptr getelementptr inbounds ([0 x i16], ptr @hfsplus_compose_table, i32 0, i32 2), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %32)
  %cmp.i206 = icmp ugt i16 %34, %32
  br i1 %cmp.i206, label %lor.lhs.false.i207.if.end82_crit_edge, label %lor.lhs.false5.i211

lor.lhs.false.i207.if.end82_crit_edge:            ; preds = %lor.lhs.false.i207
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82

lor.lhs.false5.i211:                              ; preds = %lor.lhs.false.i207
  %mul7.i208 = shl nuw nsw i32 %conv.i204, 1
  %arrayidx8.i209 = getelementptr i16, ptr @hfsplus_compose_table, i32 %mul7.i208
  %35 = ptrtoint ptr %arrayidx8.i209 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx8.i209, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %32)
  %cmp10.i210 = icmp ult i16 %36, %32
  br i1 %cmp10.i210, label %lor.lhs.false5.i211.if.end82_crit_edge, label %lor.lhs.false5.i211.do.body.i219_crit_edge

lor.lhs.false5.i211.do.body.i219_crit_edge:       ; preds = %lor.lhs.false5.i211
  br label %do.body.i219

lor.lhs.false5.i211.if.end82_crit_edge:           ; preds = %lor.lhs.false5.i211
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82

do.body.i219:                                     ; preds = %do.cond.i234.do.body.i219_crit_edge, %lor.lhs.false5.i211.do.body.i219_crit_edge
  %s.0.i212 = phi i32 [ %s.1.i231, %do.cond.i234.do.body.i219_crit_edge ], [ 1, %lor.lhs.false5.i211.do.body.i219_crit_edge ]
  %e.0.i213 = phi i32 [ %e.1.i232, %do.cond.i234.do.body.i219_crit_edge ], [ %conv.i204, %lor.lhs.false5.i211.do.body.i219_crit_edge ]
  %add.i214 = add i32 %e.0.i213, %s.0.i212
  %div.i215 = sdiv i32 %add.i214, 2
  %mul13.i216 = shl nsw i32 %div.i215, 1
  %arrayidx14.i217 = getelementptr i16, ptr @hfsplus_compose_table, i32 %mul13.i216
  %37 = ptrtoint ptr %arrayidx14.i217 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx14.i217, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %32)
  %cmp16.i218 = icmp ult i16 %38, %32
  br i1 %cmp16.i218, label %if.then18.i221, label %if.else.i223

if.then18.i221:                                   ; preds = %do.body.i219
  call void @__sanitizer_cov_trace_pc() #6
  %add19.i220 = add nsw i32 %div.i215, 1
  br label %do.cond.i234

if.else.i223:                                     ; preds = %do.body.i219
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %32)
  %cmp24.i222 = icmp ugt i16 %38, %32
  br i1 %cmp24.i222, label %if.then26.i225, label %if.else27.i230

if.then26.i225:                                   ; preds = %if.else.i223
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i224 = add nsw i32 %div.i215, -1
  br label %do.cond.i234

if.else27.i230:                                   ; preds = %if.else.i223
  call void @__sanitizer_cov_trace_pc() #6
  %add29.i226 = or i32 %mul13.i216, 1
  %arrayidx30.i227 = getelementptr i16, ptr @hfsplus_compose_table, i32 %add29.i226
  %39 = ptrtoint ptr %arrayidx30.i227 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx30.i227, align 2
  %conv31.i228 = zext i16 %40 to i32
  %add.ptr.i229 = getelementptr i16, ptr @hfsplus_compose_table, i32 %conv31.i228
  br label %if.end79

do.cond.i234:                                     ; preds = %if.then26.i225, %if.then18.i221
  %s.1.i231 = phi i32 [ %add19.i220, %if.then18.i221 ], [ %s.0.i212, %if.then26.i225 ]
  %e.1.i232 = phi i32 [ %e.0.i213, %if.then18.i221 ], [ %sub.i224, %if.then26.i225 ]
  %cmp34.not.i233 = icmp sgt i32 %s.1.i231, %e.1.i232
  br i1 %cmp34.not.i233, label %do.cond.i234.if.end82_crit_edge, label %do.cond.i234.do.body.i219_crit_edge

do.cond.i234.do.body.i219_crit_edge:              ; preds = %do.cond.i234
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i219

do.cond.i234.if.end82_crit_edge:                  ; preds = %do.cond.i234
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82

if.end79:                                         ; preds = %if.else27.i230, %if.end69.if.end79_crit_edge
  %ce1.3 = phi ptr [ %ce1.2347, %if.end69.if.end79_crit_edge ], [ %add.ptr.i229, %if.else27.i230 ]
  %tobool80.not = icmp eq ptr %ce1.3, null
  br i1 %tobool80.not, label %if.end79.if.end82_crit_edge, label %while.end

if.end79.if.end82_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82

if.end82:                                         ; preds = %if.end79.if.end82_crit_edge, %do.cond.i234.if.end82_crit_edge, %lor.lhs.false5.i211.if.end82_crit_edge, %lor.lhs.false.i207.if.end82_crit_edge, %if.then77.if.end82_crit_edge
  %41 = zext i16 %c0.0345 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.1)
  switch i16 %c0.0345, label %if.end82.sw.epilog_crit_edge [
    i16 0, label %sw.bb
    i16 47, label %sw.bb84
  ]

if.end82.sw.epilog_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb84:                                          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb84, %sw.bb, %if.end82.sw.epilog_crit_edge
  %c0.1 = phi i16 [ %c0.0345, %if.end82.sw.epilog_crit_edge ], [ 58, %sw.bb84 ], [ 9216, %sw.bb ]
  %42 = ptrtoint ptr %uni2char to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %uni2char, align 4
  %call85 = tail call i32 %43(i16 noundef zeroext %c0.1, ptr noundef %op.1343, i32 noundef %len.1348) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %if.then88, label %sw.epilog.if.end93_crit_edge

sw.epilog.if.end93_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end93

if.then88:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 -36, i32 %call85)
  %cmp89 = icmp eq i32 %call85, -36
  br i1 %cmp89, label %if.then88.out_crit_edge, label %if.end92

if.then88.out_crit_edge:                          ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end92:                                         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #6
  %44 = ptrtoint ptr %op.1343 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 63, ptr %op.1343, align 1
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %sw.epilog.if.end93_crit_edge
  %res.0 = phi i32 [ 1, %if.end92 ], [ %call85, %sw.epilog.if.end93_crit_edge ]
  %add.ptr = getelementptr i8, ptr %op.1343, i32 %res.0
  %sub94 = sub i32 %len.1348, %res.0
  %incdec.ptr95 = getelementptr i16, ptr %ip.1341, i32 1
  %dec96 = add i32 %ustrlen.1350, -1
  %tobool67.not = icmp eq i32 %dec96, 0
  br i1 %tobool67.not, label %if.end93.same_crit_edge, label %if.end93.if.end69_crit_edge

if.end93.if.end69_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

if.end93.same_crit_edge:                          ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #6
  br label %same

while.end:                                        ; preds = %if.end79
  %arrayidx.i = getelementptr i16, ptr %ce1.3, i32 1
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx.i, align 2
  %conv.i237 = zext i16 %46 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool.not.i238 = icmp eq i16 %46, 0
  br i1 %tobool.not.i238, label %while.end.same_crit_edge, label %lor.lhs.false.i240

while.end.same_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %same

lor.lhs.false.i240:                               ; preds = %while.end
  %arrayidx2.i = getelementptr i16, ptr %ce1.3, i32 2
  %47 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %48, i16 %c0.0345)
  %cmp.i239 = icmp ugt i16 %48, %c0.0345
  br i1 %cmp.i239, label %lor.lhs.false.i240.same_crit_edge, label %lor.lhs.false5.i244

lor.lhs.false.i240.same_crit_edge:                ; preds = %lor.lhs.false.i240
  call void @__sanitizer_cov_trace_pc() #6
  br label %same

lor.lhs.false5.i244:                              ; preds = %lor.lhs.false.i240
  %mul7.i241 = shl nuw nsw i32 %conv.i237, 1
  %arrayidx8.i242 = getelementptr i16, ptr %ce1.3, i32 %mul7.i241
  %49 = ptrtoint ptr %arrayidx8.i242 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx8.i242, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %50, i16 %c0.0345)
  %cmp10.i243 = icmp ult i16 %50, %c0.0345
  br i1 %cmp10.i243, label %lor.lhs.false5.i244.same_crit_edge, label %lor.lhs.false5.i244.do.body.i252_crit_edge

lor.lhs.false5.i244.do.body.i252_crit_edge:       ; preds = %lor.lhs.false5.i244
  br label %do.body.i252

lor.lhs.false5.i244.same_crit_edge:               ; preds = %lor.lhs.false5.i244
  call void @__sanitizer_cov_trace_pc() #6
  br label %same

do.body.i252:                                     ; preds = %do.cond.i267.do.body.i252_crit_edge, %lor.lhs.false5.i244.do.body.i252_crit_edge
  %s.0.i245 = phi i32 [ %s.1.i264, %do.cond.i267.do.body.i252_crit_edge ], [ 1, %lor.lhs.false5.i244.do.body.i252_crit_edge ]
  %e.0.i246 = phi i32 [ %e.1.i265, %do.cond.i267.do.body.i252_crit_edge ], [ %conv.i237, %lor.lhs.false5.i244.do.body.i252_crit_edge ]
  %add.i247 = add i32 %e.0.i246, %s.0.i245
  %div.i248 = sdiv i32 %add.i247, 2
  %mul13.i249 = shl nsw i32 %div.i248, 1
  %arrayidx14.i250 = getelementptr i16, ptr %ce1.3, i32 %mul13.i249
  %51 = ptrtoint ptr %arrayidx14.i250 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx14.i250, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %52, i16 %c0.0345)
  %cmp16.i251 = icmp ult i16 %52, %c0.0345
  br i1 %cmp16.i251, label %if.then18.i254, label %if.else.i256

if.then18.i254:                                   ; preds = %do.body.i252
  call void @__sanitizer_cov_trace_pc() #6
  %add19.i253 = add nsw i32 %div.i248, 1
  br label %do.cond.i267

if.else.i256:                                     ; preds = %do.body.i252
  call void @__sanitizer_cov_trace_cmp2(i16 %52, i16 %c0.0345)
  %cmp24.i255 = icmp ugt i16 %52, %c0.0345
  br i1 %cmp24.i255, label %if.then26.i258, label %hfsplus_compose_lookup.exit269

if.then26.i258:                                   ; preds = %if.else.i256
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i257 = add nsw i32 %div.i248, -1
  br label %do.cond.i267

do.cond.i267:                                     ; preds = %if.then26.i258, %if.then18.i254
  %s.1.i264 = phi i32 [ %add19.i253, %if.then18.i254 ], [ %s.0.i245, %if.then26.i258 ]
  %e.1.i265 = phi i32 [ %e.0.i246, %if.then18.i254 ], [ %sub.i257, %if.then26.i258 ]
  %cmp34.not.i266 = icmp sgt i32 %s.1.i264, %e.1.i265
  br i1 %cmp34.not.i266, label %do.cond.i267.same_crit_edge, label %do.cond.i267.do.body.i252_crit_edge

do.cond.i267.do.body.i252_crit_edge:              ; preds = %do.cond.i267
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i252

do.cond.i267.same_crit_edge:                      ; preds = %do.cond.i267
  call void @__sanitizer_cov_trace_pc() #6
  br label %same

hfsplus_compose_lookup.exit269:                   ; preds = %if.else.i256
  %add29.i259 = or i32 %mul13.i249, 1
  %arrayidx30.i260 = getelementptr i16, ptr %ce1.3, i32 %add29.i259
  %53 = ptrtoint ptr %arrayidx30.i260 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx30.i260, align 2
  %conv31.i261 = zext i16 %54 to i32
  %add.ptr.i262 = getelementptr i16, ptr @hfsplus_compose_table, i32 %conv31.i261
  %tobool98.not = icmp eq ptr %add.ptr.i262, null
  br i1 %tobool98.not, label %hfsplus_compose_lookup.exit269.same_crit_edge, label %while.cond100.preheader

hfsplus_compose_lookup.exit269.same_crit_edge:    ; preds = %hfsplus_compose_lookup.exit269
  call void @__sanitizer_cov_trace_pc() #6
  br label %same

while.cond100.preheader:                          ; preds = %hfsplus_compose_lookup.exit269
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ustrlen.1350)
  %cmp101356 = icmp sgt i32 %ustrlen.1350, 1
  br i1 %cmp101356, label %while.cond100.preheader.while.body103_crit_edge, label %while.cond100.preheader.while.end109_crit_edge

while.cond100.preheader.while.end109_crit_edge:   ; preds = %while.cond100.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end109

while.cond100.preheader.while.body103_crit_edge:  ; preds = %while.cond100.preheader
  br label %while.body103

while.body103:                                    ; preds = %if.end108.while.body103_crit_edge, %while.cond100.preheader.while.body103_crit_edge
  %i.0358 = phi i32 [ %inc, %if.end108.while.body103_crit_edge ], [ 1, %while.cond100.preheader.while.body103_crit_edge ]
  %ce2.0357 = phi ptr [ %add.ptr.i297, %if.end108.while.body103_crit_edge ], [ %add.ptr.i262, %while.cond100.preheader.while.body103_crit_edge ]
  %arrayidx104 = getelementptr i16, ptr %ip.1341, i32 %i.0358
  %55 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx104, align 2
  %arrayidx.i270 = getelementptr i16, ptr %ce2.0357, i32 1
  %57 = ptrtoint ptr %arrayidx.i270 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx.i270, align 2
  %conv.i271 = zext i16 %58 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool.not.i272 = icmp eq i16 %58, 0
  br i1 %tobool.not.i272, label %while.body103.while.end109_crit_edge, label %lor.lhs.false.i275

while.body103.while.end109_crit_edge:             ; preds = %while.body103
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end109

lor.lhs.false.i275:                               ; preds = %while.body103
  %arrayidx2.i273 = getelementptr i16, ptr %ce2.0357, i32 2
  %59 = ptrtoint ptr %arrayidx2.i273 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx2.i273, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %60, i16 %56)
  %cmp.i274 = icmp ugt i16 %60, %56
  br i1 %cmp.i274, label %lor.lhs.false.i275.while.end109_crit_edge, label %lor.lhs.false5.i279

lor.lhs.false.i275.while.end109_crit_edge:        ; preds = %lor.lhs.false.i275
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end109

lor.lhs.false5.i279:                              ; preds = %lor.lhs.false.i275
  %mul7.i276 = shl nuw nsw i32 %conv.i271, 1
  %arrayidx8.i277 = getelementptr i16, ptr %ce2.0357, i32 %mul7.i276
  %61 = ptrtoint ptr %arrayidx8.i277 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx8.i277, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %62, i16 %56)
  %cmp10.i278 = icmp ult i16 %62, %56
  br i1 %cmp10.i278, label %lor.lhs.false5.i279.while.end109_crit_edge, label %lor.lhs.false5.i279.do.body.i287_crit_edge

lor.lhs.false5.i279.do.body.i287_crit_edge:       ; preds = %lor.lhs.false5.i279
  br label %do.body.i287

lor.lhs.false5.i279.while.end109_crit_edge:       ; preds = %lor.lhs.false5.i279
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end109

do.body.i287:                                     ; preds = %do.cond.i302.do.body.i287_crit_edge, %lor.lhs.false5.i279.do.body.i287_crit_edge
  %s.0.i280 = phi i32 [ %s.1.i299, %do.cond.i302.do.body.i287_crit_edge ], [ 1, %lor.lhs.false5.i279.do.body.i287_crit_edge ]
  %e.0.i281 = phi i32 [ %e.1.i300, %do.cond.i302.do.body.i287_crit_edge ], [ %conv.i271, %lor.lhs.false5.i279.do.body.i287_crit_edge ]
  %add.i282 = add i32 %e.0.i281, %s.0.i280
  %div.i283 = sdiv i32 %add.i282, 2
  %mul13.i284 = shl nsw i32 %div.i283, 1
  %arrayidx14.i285 = getelementptr i16, ptr %ce2.0357, i32 %mul13.i284
  %63 = ptrtoint ptr %arrayidx14.i285 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx14.i285, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %64, i16 %56)
  %cmp16.i286 = icmp ult i16 %64, %56
  br i1 %cmp16.i286, label %if.then18.i289, label %if.else.i291

if.then18.i289:                                   ; preds = %do.body.i287
  call void @__sanitizer_cov_trace_pc() #6
  %add19.i288 = add nsw i32 %div.i283, 1
  br label %do.cond.i302

if.else.i291:                                     ; preds = %do.body.i287
  call void @__sanitizer_cov_trace_cmp2(i16 %64, i16 %56)
  %cmp24.i290 = icmp ugt i16 %64, %56
  br i1 %cmp24.i290, label %if.then26.i293, label %hfsplus_compose_lookup.exit304

if.then26.i293:                                   ; preds = %if.else.i291
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i292 = add nsw i32 %div.i283, -1
  br label %do.cond.i302

do.cond.i302:                                     ; preds = %if.then26.i293, %if.then18.i289
  %s.1.i299 = phi i32 [ %add19.i288, %if.then18.i289 ], [ %s.0.i280, %if.then26.i293 ]
  %e.1.i300 = phi i32 [ %e.0.i281, %if.then18.i289 ], [ %sub.i292, %if.then26.i293 ]
  %cmp34.not.i301 = icmp sgt i32 %s.1.i299, %e.1.i300
  br i1 %cmp34.not.i301, label %do.cond.i302.while.end109_crit_edge, label %do.cond.i302.do.body.i287_crit_edge

do.cond.i302.do.body.i287_crit_edge:              ; preds = %do.cond.i302
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i287

do.cond.i302.while.end109_crit_edge:              ; preds = %do.cond.i302
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end109

hfsplus_compose_lookup.exit304:                   ; preds = %if.else.i291
  %add29.i294 = or i32 %mul13.i284, 1
  %arrayidx30.i295 = getelementptr i16, ptr %ce2.0357, i32 %add29.i294
  %65 = ptrtoint ptr %arrayidx30.i295 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx30.i295, align 2
  %conv31.i296 = zext i16 %66 to i32
  %add.ptr.i297 = getelementptr i16, ptr @hfsplus_compose_table, i32 %conv31.i296
  %tobool106.not = icmp eq ptr %add.ptr.i297, null
  br i1 %tobool106.not, label %hfsplus_compose_lookup.exit304.while.end109_crit_edge, label %if.end108

hfsplus_compose_lookup.exit304.while.end109_crit_edge: ; preds = %hfsplus_compose_lookup.exit304
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end109

if.end108:                                        ; preds = %hfsplus_compose_lookup.exit304
  %inc = add nuw nsw i32 %i.0358, 1
  %exitcond.not = icmp eq i32 %inc, %ustrlen.1350
  br i1 %exitcond.not, label %if.end108.while.end109_crit_edge, label %if.end108.while.body103_crit_edge

if.end108.while.body103_crit_edge:                ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body103

if.end108.while.end109_crit_edge:                 ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end109

while.end109:                                     ; preds = %if.end108.while.end109_crit_edge, %hfsplus_compose_lookup.exit304.while.end109_crit_edge, %do.cond.i302.while.end109_crit_edge, %lor.lhs.false5.i279.while.end109_crit_edge, %lor.lhs.false.i275.while.end109_crit_edge, %while.body103.while.end109_crit_edge, %while.cond100.preheader.while.end109_crit_edge
  %ce2.0339 = phi ptr [ %add.ptr.i262, %while.cond100.preheader.while.end109_crit_edge ], [ %ce2.0357, %do.cond.i302.while.end109_crit_edge ], [ %add.ptr.i297, %if.end108.while.end109_crit_edge ], [ %ce2.0357, %hfsplus_compose_lookup.exit304.while.end109_crit_edge ], [ %ce2.0357, %lor.lhs.false5.i279.while.end109_crit_edge ], [ %ce2.0357, %lor.lhs.false.i275.while.end109_crit_edge ], [ %ce2.0357, %while.body103.while.end109_crit_edge ]
  %i.0337 = phi i32 [ 1, %while.cond100.preheader.while.end109_crit_edge ], [ %i.0358, %do.cond.i302.while.end109_crit_edge ], [ %ustrlen.1350, %if.end108.while.end109_crit_edge ], [ %i.0358, %hfsplus_compose_lookup.exit304.while.end109_crit_edge ], [ %i.0358, %lor.lhs.false5.i279.while.end109_crit_edge ], [ %i.0358, %lor.lhs.false.i275.while.end109_crit_edge ], [ %i.0358, %while.body103.while.end109_crit_edge ]
  %ce1.5 = phi ptr [ %ce1.3, %while.cond100.preheader.while.end109_crit_edge ], [ null, %do.cond.i302.while.end109_crit_edge ], [ %add.ptr.i297, %if.end108.while.end109_crit_edge ], [ null, %hfsplus_compose_lookup.exit304.while.end109_crit_edge ], [ null, %lor.lhs.false5.i279.while.end109_crit_edge ], [ null, %lor.lhs.false.i275.while.end109_crit_edge ], [ null, %while.body103.while.end109_crit_edge ]
  %67 = ptrtoint ptr %ce2.0339 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %ce2.0339, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool111.not = icmp eq i16 %68, 0
  br i1 %tobool111.not, label %while.end109.same_crit_edge, label %if.then112

while.end109.same_crit_edge:                      ; preds = %while.end109
  call void @__sanitizer_cov_trace_pc() #6
  br label %same

if.then112:                                       ; preds = %while.end109
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr113 = getelementptr i16, ptr %ip.1341, i32 %i.0337
  %sub114 = sub i32 %ustrlen.1350, %i.0337
  br label %done

same:                                             ; preds = %while.end109.same_crit_edge, %hfsplus_compose_lookup.exit269.same_crit_edge, %do.cond.i267.same_crit_edge, %lor.lhs.false5.i244.same_crit_edge, %lor.lhs.false.i240.same_crit_edge, %while.end.same_crit_edge, %if.end93.same_crit_edge, %if.end64.same_crit_edge, %if.end21.same_crit_edge
  %ip.2 = phi ptr [ %ip.1341, %while.end109.same_crit_edge ], [ %ip.1341, %hfsplus_compose_lookup.exit269.same_crit_edge ], [ %incdec.ptr, %if.end21.same_crit_edge ], [ %ip.1341, %lor.lhs.false5.i244.same_crit_edge ], [ %ip.1341, %lor.lhs.false.i240.same_crit_edge ], [ %ip.1341, %while.end.same_crit_edge ], [ %incdec.ptr, %if.end64.same_crit_edge ], [ %ip.1341, %do.cond.i267.same_crit_edge ], [ %incdec.ptr95, %if.end93.same_crit_edge ]
  %op.2 = phi ptr [ %op.1343, %while.end109.same_crit_edge ], [ %op.1343, %hfsplus_compose_lookup.exit269.same_crit_edge ], [ %op.0376, %if.end21.same_crit_edge ], [ %op.1343, %lor.lhs.false5.i244.same_crit_edge ], [ %op.1343, %lor.lhs.false.i240.same_crit_edge ], [ %op.1343, %while.end.same_crit_edge ], [ %op.0376, %if.end64.same_crit_edge ], [ %op.1343, %do.cond.i267.same_crit_edge ], [ %add.ptr, %if.end93.same_crit_edge ]
  %c0.2 = phi i16 [ %c0.0345, %while.end109.same_crit_edge ], [ %c0.0345, %hfsplus_compose_lookup.exit269.same_crit_edge ], [ %12, %if.end21.same_crit_edge ], [ %c0.0345, %lor.lhs.false5.i244.same_crit_edge ], [ %c0.0345, %lor.lhs.false.i240.same_crit_edge ], [ %c0.0345, %while.end.same_crit_edge ], [ %12, %if.end64.same_crit_edge ], [ %c0.0345, %do.cond.i267.same_crit_edge ], [ %32, %if.end93.same_crit_edge ]
  %ce1.6 = phi ptr [ %ce1.5, %while.end109.same_crit_edge ], [ %ce1.3, %hfsplus_compose_lookup.exit269.same_crit_edge ], [ %ce1.1, %if.end21.same_crit_edge ], [ %ce1.3, %lor.lhs.false5.i244.same_crit_edge ], [ %ce1.3, %lor.lhs.false.i240.same_crit_edge ], [ %ce1.3, %while.end.same_crit_edge ], [ %ce1.1307310, %if.end64.same_crit_edge ], [ %ce1.3, %do.cond.i267.same_crit_edge ], [ null, %if.end93.same_crit_edge ]
  %len.2 = phi i32 [ %len.1348, %while.end109.same_crit_edge ], [ %len.1348, %hfsplus_compose_lookup.exit269.same_crit_edge ], [ %len.0378, %if.end21.same_crit_edge ], [ %len.1348, %lor.lhs.false5.i244.same_crit_edge ], [ %len.1348, %lor.lhs.false.i240.same_crit_edge ], [ %len.1348, %while.end.same_crit_edge ], [ %len.0378, %if.end64.same_crit_edge ], [ %len.1348, %do.cond.i267.same_crit_edge ], [ %sub94, %if.end93.same_crit_edge ]
  %ustrlen.2 = phi i32 [ %ustrlen.1350, %while.end109.same_crit_edge ], [ %ustrlen.1350, %hfsplus_compose_lookup.exit269.same_crit_edge ], [ 0, %if.end21.same_crit_edge ], [ %ustrlen.1350, %lor.lhs.false5.i244.same_crit_edge ], [ %ustrlen.1350, %lor.lhs.false.i240.same_crit_edge ], [ %ustrlen.1350, %while.end.same_crit_edge ], [ 0, %if.end64.same_crit_edge ], [ %ustrlen.1350, %do.cond.i267.same_crit_edge ], [ 0, %if.end93.same_crit_edge ]
  %69 = zext i16 %c0.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.2)
  switch i16 %c0.2, label %sw.default [
    i16 0, label %same.done_crit_edge
    i16 47, label %sw.bb119
  ]

same.done_crit_edge:                              ; preds = %same
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

sw.bb119:                                         ; preds = %same
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

sw.default:                                       ; preds = %same
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

done:                                             ; preds = %sw.default, %sw.bb119, %same.done_crit_edge, %if.then112, %if.then55, %if.end45.done_crit_edge, %if.then30.done_crit_edge, %if.end14.done_crit_edge
  %ip.3 = phi ptr [ %incdec.ptr60, %if.then55 ], [ %incdec.ptr41, %if.end45.done_crit_edge ], [ %incdec.ptr41, %if.then30.done_crit_edge ], [ %add.ptr113, %if.then112 ], [ %ip.2, %sw.default ], [ %ip.2, %sw.bb119 ], [ %incdec.ptr, %if.end14.done_crit_edge ], [ %ip.2, %same.done_crit_edge ]
  %op.3 = phi ptr [ %op.0376, %if.then55 ], [ %op.0376, %if.end45.done_crit_edge ], [ %op.0376, %if.then30.done_crit_edge ], [ %op.1343, %if.then112 ], [ %op.2, %sw.default ], [ %op.2, %sw.bb119 ], [ %op.0376, %if.end14.done_crit_edge ], [ %op.2, %same.done_crit_edge ]
  %cc.1 = phi i16 [ %add58, %if.then55 ], [ %add39, %if.end45.done_crit_edge ], [ %add39, %if.then30.done_crit_edge ], [ %68, %if.then112 ], [ %c0.2, %sw.default ], [ 58, %sw.bb119 ], [ %22, %if.end14.done_crit_edge ], [ 9216, %same.done_crit_edge ]
  %ce1.7 = phi ptr [ %ce1.1, %if.then55 ], [ %ce1.1, %if.end45.done_crit_edge ], [ %ce1.1, %if.then30.done_crit_edge ], [ %ce1.5, %if.then112 ], [ %ce1.6, %sw.default ], [ %ce1.6, %sw.bb119 ], [ %ce1.1, %if.end14.done_crit_edge ], [ %ce1.6, %same.done_crit_edge ]
  %len.3 = phi i32 [ %len.0378, %if.then55 ], [ %len.0378, %if.end45.done_crit_edge ], [ %len.0378, %if.then30.done_crit_edge ], [ %len.1348, %if.then112 ], [ %len.2, %sw.default ], [ %len.2, %sw.bb119 ], [ %len.0378, %if.end14.done_crit_edge ], [ %len.2, %same.done_crit_edge ]
  %ustrlen.3 = phi i32 [ %dec61, %if.then55 ], [ %dec42, %if.end45.done_crit_edge ], [ 0, %if.then30.done_crit_edge ], [ %sub114, %if.then112 ], [ %ustrlen.2, %sw.default ], [ %ustrlen.2, %sw.bb119 ], [ %dec, %if.end14.done_crit_edge ], [ %ustrlen.2, %same.done_crit_edge ]
  %70 = ptrtoint ptr %uni2char to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %uni2char, align 4
  %call122 = tail call i32 %71(i16 noundef zeroext %cc.1, ptr noundef %op.3, i32 noundef %len.3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %cmp123 = icmp slt i32 %call122, 0
  br i1 %cmp123, label %if.then125, label %done.if.end130_crit_edge

done.if.end130_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end130

if.then125:                                       ; preds = %done
  call void @__sanitizer_cov_trace_const_cmp4(i32 -36, i32 %call122)
  %cmp126 = icmp eq i32 %call122, -36
  br i1 %cmp126, label %if.then125.out_crit_edge, label %if.end129

if.then125.out_crit_edge:                         ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end129:                                        ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #6
  %72 = ptrtoint ptr %op.3 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 63, ptr %op.3, align 1
  br label %if.end130

if.end130:                                        ; preds = %if.end129, %done.if.end130_crit_edge
  %res.1 = phi i32 [ 1, %if.end129 ], [ %call122, %done.if.end130_crit_edge ]
  %add.ptr131 = getelementptr i8, ptr %op.3, i32 %res.1
  %sub132 = sub i32 %len.3, %res.1
  %cmp = icmp sgt i32 %ustrlen.3, 0
  br i1 %cmp, label %if.end130.while.body_crit_edge, label %if.end130.out_crit_edge

if.end130.out_crit_edge:                          ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end130.while.body_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

out:                                              ; preds = %if.end130.out_crit_edge, %if.then125.out_crit_edge, %if.then88.out_crit_edge, %entry.out_crit_edge
  %op.4 = phi ptr [ %astr, %entry.out_crit_edge ], [ %op.1343, %if.then88.out_crit_edge ], [ %op.3, %if.then125.out_crit_edge ], [ %add.ptr131, %if.end130.out_crit_edge ]
  %res.2 = phi i32 [ 0, %entry.out_crit_edge ], [ -36, %if.then88.out_crit_edge ], [ -36, %if.then125.out_crit_edge ], [ 0, %if.end130.out_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %op.4 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %astr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %73 = ptrtoint ptr %len_p to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %sub.ptr.sub, ptr %len_p, align 4
  ret i32 %res.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_asc2uni(ptr nocapture noundef readonly %sb, ptr nocapture noundef writeonly %ustr, i32 noundef %max_unistr_len, ptr noundef %astr, i32 noundef %len) local_unnamed_addr #2 align 64 {
entry:
  %c = alloca i16, align 2
  %dhangul = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %c) #4
  %0 = ptrtoint ptr %c to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %c, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %dhangul) #4
  %1 = ptrtoint ptr %dhangul to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %dhangul, align 2, !annotation !10
  %2 = getelementptr inbounds [3 x i16], ptr %dhangul, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %2, align 2, !annotation !10
  %4 = getelementptr inbounds [3 x i16], ptr %dhangul, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %4, align 2, !annotation !10
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %flags = getelementptr inbounds %struct.hfsplus_sb_info, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_unistr_len)
  %cmp61 = icmp sgt i32 %max_unistr_len, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp362 = icmp sgt i32 %len, 0
  %or.cond63 = and i1 %cmp61, %cmp362
  br i1 %or.cond63, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end22.while.body_crit_edge, %entry.while.body_crit_edge
  %conv68 = phi i32 [ %conv, %if.end22.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %outlen.066 = phi i16 [ %outlen.2, %if.end22.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %len.addr.065 = phi i32 [ %sub, %if.end22.while.body_crit_edge ], [ %len, %entry.while.body_crit_edge ]
  %astr.addr.064 = phi ptr [ %add.ptr, %if.end22.while.body_crit_edge ], [ %astr, %entry.while.body_crit_edge ]
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %nls.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %nls.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nls.i, align 8
  %char2uni.i = getelementptr inbounds %struct.nls_table, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %char2uni.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %char2uni.i, align 4
  %call1.i = call i32 %16(ptr noundef %astr.addr.064, i32 noundef %len.addr.065, ptr noundef nonnull %c) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 1
  br i1 %cmp.i, label %while.body.sw.epilog.sink.split.i_crit_edge, label %if.end.i

while.body.sw.epilog.sink.split.i_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

if.end.i:                                         ; preds = %while.body
  %17 = ptrtoint ptr %c to i32
  call void @__asan_load2_noabort(i32 %17)
  %.pr.i = load i16, ptr %c, align 2
  %18 = zext i16 %.pr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.3)
  switch i16 %.pr.i, label %if.end.i.asc2unichar.exit_crit_edge [
    i16 9216, label %if.end.i.sw.epilog.sink.split.i_crit_edge
    i16 58, label %sw.bb2.i
  ]

if.end.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

if.end.i.asc2unichar.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %asc2unichar.exit

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb2.i, %if.end.i.sw.epilog.sink.split.i_crit_edge, %while.body.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i16 [ 47, %sw.bb2.i ], [ 63, %while.body.sw.epilog.sink.split.i_crit_edge ], [ 0, %if.end.i.sw.epilog.sink.split.i_crit_edge ]
  %size.09.ph.i = phi i32 [ %call1.i, %sw.bb2.i ], [ 1, %while.body.sw.epilog.sink.split.i_crit_edge ], [ %call1.i, %if.end.i.sw.epilog.sink.split.i_crit_edge ]
  %19 = ptrtoint ptr %c to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %.sink.i, ptr %c, align 2
  br label %asc2unichar.exit

asc2unichar.exit:                                 ; preds = %sw.epilog.sink.split.i, %if.end.i.asc2unichar.exit_crit_edge
  %size.09.i = phi i32 [ %call1.i, %if.end.i.asc2unichar.exit_crit_edge ], [ %size.09.ph.i, %sw.epilog.sink.split.i ]
  br i1 %tobool.not, label %if.then, label %asc2unichar.exit.if.else17_crit_edge

asc2unichar.exit.if.else17_crit_edge:             ; preds = %asc2unichar.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else17

if.then:                                          ; preds = %asc2unichar.exit
  %20 = ptrtoint ptr %c to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %c, align 2
  %22 = add i16 %21, 10332
  call void @__sanitizer_cov_trace_const_cmp2(i16 -11172, i16 %22)
  %23 = icmp ult i16 %22, -11172
  br i1 %23, label %if.then.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then
  %sub.i.i = add nsw i16 %21, 21504
  %sub.i.i.frozen = freeze i16 %sub.i.i
  %div2829.i.i = udiv i16 %sub.i.i.frozen, 588
  %24 = mul i16 %div2829.i.i, 588
  %rem3031.i.i.decomposed = sub i16 %sub.i.i.frozen, %24
  %div42732.i.i = udiv i16 %rem3031.i.i.decomposed, 28
  %rem63334.i.i = urem i16 %sub.i.i, 28
  %conv8.i.i = or i16 %div2829.i.i, 4352
  %25 = ptrtoint ptr %dhangul to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv8.i.i, ptr %dhangul, align 2
  %conv9.i.i = add nuw nsw i16 %div42732.i.i, 4449
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv9.i.i, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem63334.i.i)
  %cmp11.not.i.i = icmp eq i16 %rem63334.i.i, 0
  br i1 %cmp11.not.i.i, label %if.end.i.i.if.then9_crit_edge, label %if.then13.i.i

if.end.i.i.if.then9_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

if.then13.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv14.i.i = add nuw nsw i16 %rem63334.i.i, 4519
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv14.i.i, ptr %4, align 2
  br label %if.then9

if.then.i:                                        ; preds = %if.then
  %conv.i6.i = zext i16 %21 to i32
  %28 = lshr i32 %conv.i6.i, 12
  %arrayidx.i.i = getelementptr [0 x i16], ptr @hfsplus_decompose_table, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx.i.i, align 2
  %31 = zext i16 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.4)
  switch i16 %30, label %if.end.i7.i [
    i16 0, label %if.then.i.if.else17_crit_edge
    i16 -1, label %if.then.i.if.else17_crit_edge84
  ]

if.then.i.if.else17_crit_edge84:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else17

if.then.i.if.else17_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else17

if.end.i7.i:                                      ; preds = %if.then.i
  %conv1.i.i = zext i16 %30 to i32
  %32 = lshr i32 %conv.i6.i, 8
  %and7.i.i = and i32 %32, 15
  %add.i.i = add nuw nsw i32 %and7.i.i, %conv1.i.i
  %arrayidx8.i.i = getelementptr [0 x i16], ptr @hfsplus_decompose_table, i32 0, i32 %add.i.i
  %33 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx8.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool.not.i.i = icmp eq i16 %34, 0
  br i1 %tobool.not.i.i, label %if.end.i7.i.if.else17_crit_edge, label %if.end11.i.i

if.end.i7.i.if.else17_crit_edge:                  ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else17

if.end11.i.i:                                     ; preds = %if.end.i7.i
  %conv9.i8.i = zext i16 %34 to i32
  %35 = lshr i32 %conv.i6.i, 4
  %and14.i.i = and i32 %35, 15
  %add15.i.i = add nuw nsw i32 %and14.i.i, %conv9.i8.i
  %arrayidx16.i.i = getelementptr [0 x i16], ptr @hfsplus_decompose_table, i32 0, i32 %add15.i.i
  %36 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx16.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool18.not.i.i = icmp eq i16 %37, 0
  br i1 %tobool18.not.i.i, label %if.end11.i.i.if.else17_crit_edge, label %if.end20.i.i

if.end11.i.i.if.else17_crit_edge:                 ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else17

if.end20.i.i:                                     ; preds = %if.end11.i.i
  %conv17.i.i = zext i16 %37 to i32
  %and22.i.i = and i32 %conv.i6.i, 15
  %add23.i.i = add nuw nsw i32 %and22.i.i, %conv17.i.i
  %arrayidx24.i.i = getelementptr [0 x i16], ptr @hfsplus_decompose_table, i32 0, i32 %add23.i.i
  %38 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx24.i.i, align 2
  %conv25.i.i = zext i16 %39 to i32
  %and26.i.i = and i32 %conv25.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %cmp27.i.i = icmp eq i32 %and26.i.i, 0
  br i1 %cmp27.i.i, label %if.end20.i.i.if.else17_crit_edge, label %if.end

if.end20.i.i.if.else17_crit_edge:                 ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else17

if.end:                                           ; preds = %if.end20.i.i
  %div43.i.i = lshr i32 %conv25.i.i, 2
  %add.ptr.i.i = getelementptr i16, ptr @hfsplus_decompose_table, i32 %div43.i.i
  %tobool8.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool8.not, label %if.end.if.else17_crit_edge, label %if.end.if.then9_crit_edge

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

if.end.if.else17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else17

if.then9:                                         ; preds = %if.end.if.then9_crit_edge, %if.then13.i.i, %if.end.i.i.if.then9_crit_edge
  %dstr.060 = phi ptr [ %add.ptr.i.i, %if.end.if.then9_crit_edge ], [ %dhangul, %if.then13.i.i ], [ %dhangul, %if.end.i.i.if.then9_crit_edge ]
  %dsize.259 = phi i32 [ %and26.i.i, %if.end.if.then9_crit_edge ], [ 3, %if.then13.i.i ], [ 2, %if.end.i.i.if.then9_crit_edge ]
  %add = add nuw nsw i32 %dsize.259, %conv68
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %max_unistr_len)
  %cmp11 = icmp sgt i32 %add, %max_unistr_len
  br i1 %cmp11, label %while.end.thread, label %if.then9.do.body_crit_edge

if.then9.do.body_crit_edge:                       ; preds = %if.then9
  br label %do.body

while.end.thread:                                 ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %ustr to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %outlen.066, ptr %ustr, align 1
  br label %48

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.then9.do.body_crit_edge
  %dsize.3 = phi i32 [ %dec, %do.body.do.body_crit_edge ], [ %dsize.259, %if.then9.do.body_crit_edge ]
  %dstr.1 = phi ptr [ %incdec.ptr, %do.body.do.body_crit_edge ], [ %dstr.060, %if.then9.do.body_crit_edge ]
  %outlen.1 = phi i16 [ %inc, %do.body.do.body_crit_edge ], [ %outlen.066, %if.then9.do.body_crit_edge ]
  %incdec.ptr = getelementptr i16, ptr %dstr.1, i32 1
  %41 = ptrtoint ptr %dstr.1 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %dstr.1, align 2
  %inc = add i16 %outlen.1, 1
  %idxprom = zext i16 %outlen.1 to i32
  %arrayidx = getelementptr %struct.hfsplus_unistr, ptr %ustr, i32 0, i32 1, i32 %idxprom
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 %42, ptr %arrayidx, align 1
  %dec = add nsw i32 %dsize.3, -1
  %cmp15.not = icmp eq i32 %dec, 0
  br i1 %cmp15.not, label %do.body.if.end22_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body.if.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.else17:                                        ; preds = %if.end.if.else17_crit_edge, %if.end20.i.i.if.else17_crit_edge, %if.end11.i.i.if.else17_crit_edge, %if.end.i7.i.if.else17_crit_edge, %if.then.i.if.else17_crit_edge, %if.then.i.if.else17_crit_edge84, %asc2unichar.exit.if.else17_crit_edge
  %44 = ptrtoint ptr %c to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %c, align 2
  %inc19 = add i16 %outlen.066, 1
  %arrayidx21 = getelementptr %struct.hfsplus_unistr, ptr %ustr, i32 0, i32 1, i32 %conv68
  %46 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %45, ptr %arrayidx21, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.else17, %do.body.if.end22_crit_edge
  %outlen.2 = phi i16 [ %inc19, %if.else17 ], [ %inc, %do.body.if.end22_crit_edge ]
  %add.ptr = getelementptr i8, ptr %astr.addr.064, i32 %size.09.i
  %sub = sub i32 %len.addr.065, %size.09.i
  %conv = zext i16 %outlen.2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %max_unistr_len)
  %cmp = icmp slt i32 %conv, %max_unistr_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp3 = icmp sgt i32 %sub, 0
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.end22.while.body_crit_edge, label %if.end22.while.end_crit_edge

if.end22.while.end_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end22.while.body_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %if.end22.while.end_crit_edge, %entry.while.end_crit_edge
  %outlen.0.lcssa = phi i16 [ 0, %entry.while.end_crit_edge ], [ %outlen.2, %if.end22.while.end_crit_edge ]
  %cmp3.lcssa = phi i1 [ %cmp362, %entry.while.end_crit_edge ], [ %cmp3, %if.end22.while.end_crit_edge ]
  %47 = ptrtoint ptr %ustr to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 %outlen.0.lcssa, ptr %ustr, align 1
  br i1 %cmp3.lcssa, label %while.end._crit_edge, label %while.end._crit_edge85

while.end._crit_edge85:                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %49

while.end._crit_edge:                             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %48

48:                                               ; preds = %while.end._crit_edge, %while.end.thread
  br label %49

49:                                               ; preds = %48, %while.end._crit_edge85
  %50 = phi i32 [ -36, %48 ], [ 0, %while.end._crit_edge85 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %dhangul) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %c) #4
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_hash_dentry(ptr noundef %dentry, ptr nocapture noundef %str) local_unnamed_addr #2 align 64 {
entry:
  %c = alloca i16, align 2
  %dhangul = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %c) #4
  %2 = ptrtoint ptr %c to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %c, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %dhangul) #4
  %3 = ptrtoint ptr %dhangul to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %dhangul, align 2, !annotation !10
  %4 = getelementptr inbounds [3 x i16], ptr %dhangul, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %4, align 2, !annotation !10
  %6 = getelementptr inbounds [3 x i16], ptr %dhangul, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %6, align 2, !annotation !10
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %flags = getelementptr inbounds %struct.hfsplus_sb_info, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = load volatile i32, ptr %flags, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  %14 = ptrtoint ptr %dentry to i32
  %15 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %str, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp97 = icmp sgt i32 %16, 0
  br i1 %cmp97, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %name = getelementptr inbounds %struct.qstr, ptr %str, i32 0, i32 1
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 8
  %19 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool11.not = icmp eq i32 %19, 0
  br label %while.body

while.body:                                       ; preds = %if.end36.while.body_crit_edge, %while.body.lr.ph
  %hash.0100 = phi i32 [ %14, %while.body.lr.ph ], [ %hash.3, %if.end36.while.body_crit_edge ]
  %len.099 = phi i32 [ %16, %while.body.lr.ph ], [ %sub, %if.end36.while.body_crit_edge ]
  %astr.098 = phi ptr [ %18, %while.body.lr.ph ], [ %add.ptr, %if.end36.while.body_crit_edge ]
  %20 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i, align 16
  %nls.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %nls.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nls.i, align 8
  %char2uni.i = getelementptr inbounds %struct.nls_table, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %char2uni.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %char2uni.i, align 4
  %call1.i = call i32 %25(ptr noundef %astr.098, i32 noundef %len.099, ptr noundef nonnull %c) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 1
  br i1 %cmp.i, label %while.body.sw.epilog.sink.split.i_crit_edge, label %if.end.i

while.body.sw.epilog.sink.split.i_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

if.end.i:                                         ; preds = %while.body
  %26 = ptrtoint ptr %c to i32
  call void @__asan_load2_noabort(i32 %26)
  %.pr.i = load i16, ptr %c, align 2
  %27 = zext i16 %.pr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %.pr.i, label %if.end.i.asc2unichar.exit_crit_edge [
    i16 9216, label %if.end.i.sw.epilog.sink.split.i_crit_edge
    i16 58, label %sw.bb2.i
  ]

if.end.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

if.end.i.asc2unichar.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %asc2unichar.exit

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb2.i, %if.end.i.sw.epilog.sink.split.i_crit_edge, %while.body.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i16 [ 47, %sw.bb2.i ], [ 63, %while.body.sw.epilog.sink.split.i_crit_edge ], [ 0, %if.end.i.sw.epilog.sink.split.i_crit_edge ]
  %size.09.ph.i = phi i32 [ %call1.i, %sw.bb2.i ], [ 1, %while.body.sw.epilog.sink.split.i_crit_edge ], [ %call1.i, %if.end.i.sw.epilog.sink.split.i_crit_edge ]
  %28 = ptrtoint ptr %c to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %.sink.i, ptr %c, align 2
  br label %asc2unichar.exit

asc2unichar.exit:                                 ; preds = %sw.epilog.sink.split.i, %if.end.i.asc2unichar.exit_crit_edge
  %size.09.i = phi i32 [ %call1.i, %if.end.i.asc2unichar.exit_crit_edge ], [ %size.09.ph.i, %sw.epilog.sink.split.i ]
  %add.ptr = getelementptr i8, ptr %astr.098, i32 %size.09.i
  %sub = sub nsw i32 %len.099, %size.09.i
  br i1 %tobool.not, label %if.then, label %asc2unichar.exit.if.else23_crit_edge

asc2unichar.exit.if.else23_crit_edge:             ; preds = %asc2unichar.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else23

if.then:                                          ; preds = %asc2unichar.exit
  %29 = ptrtoint ptr %c to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %c, align 2
  %31 = add i16 %30, 10332
  call void @__sanitizer_cov_trace_const_cmp2(i16 -11172, i16 %31)
  %32 = icmp ult i16 %31, -11172
  br i1 %32, label %if.then.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then
  %sub.i.i = add nsw i16 %30, 21504
  %sub.i.i.frozen = freeze i16 %sub.i.i
  %div2829.i.i = udiv i16 %sub.i.i.frozen, 588
  %33 = mul i16 %div2829.i.i, 588
  %rem3031.i.i.decomposed = sub i16 %sub.i.i.frozen, %33
  %div42732.i.i = udiv i16 %rem3031.i.i.decomposed, 28
  %rem63334.i.i = urem i16 %sub.i.i, 28
  %conv8.i.i = or i16 %div2829.i.i, 4352
  %34 = ptrtoint ptr %dhangul to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv8.i.i, ptr %dhangul, align 2
  %conv9.i.i = add nuw nsw i16 %div42732.i.i, 4449
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv9.i.i, ptr %4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem63334.i.i)
  %cmp11.not.i.i = icmp eq i16 %rem63334.i.i, 0
  br i1 %cmp11.not.i.i, label %if.end.i.i.do.body_crit_edge, label %if.then13.i.i

if.end.i.i.do.body_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then13.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv14.i.i = add nuw nsw i16 %rem63334.i.i, 4519
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv14.i.i, ptr %6, align 2
  br label %do.body

if.then.i:                                        ; preds = %if.then
  %conv.i6.i = zext i16 %30 to i32
  %37 = lshr i32 %conv.i6.i, 12
  %arrayidx.i.i = getelementptr [0 x i16], ptr @hfsplus_decompose_table, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx.i.i, align 2
  %40 = zext i16 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.6)
  switch i16 %39, label %if.end.i7.i [
    i16 0, label %if.then.i.if.else23_crit_edge
    i16 -1, label %if.then.i.if.else23_crit_edge107
  ]

if.then.i.if.else23_crit_edge107:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else23

if.then.i.if.else23_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else23

if.end.i7.i:                                      ; preds = %if.then.i
  %conv1.i.i = zext i16 %39 to i32
  %41 = lshr i32 %conv.i6.i, 8
  %and7.i.i = and i32 %41, 15
  %add.i.i = add nuw nsw i32 %and7.i.i, %conv1.i.i
  %arrayidx8.i.i = getelementptr [0 x i16], ptr @hfsplus_decompose_table, i32 0, i32 %add.i.i
  %42 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx8.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool.not.i.i = icmp eq i16 %43, 0
  br i1 %tobool.not.i.i, label %if.end.i7.i.if.else23_crit_edge, label %if.end11.i.i

if.end.i7.i.if.else23_crit_edge:                  ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else23

if.end11.i.i:                                     ; preds = %if.end.i7.i
  %conv9.i8.i = zext i16 %43 to i32
  %44 = lshr i32 %conv.i6.i, 4
  %and14.i.i = and i32 %44, 15
  %add15.i.i = add nuw nsw i32 %and14.i.i, %conv9.i8.i
  %arrayidx16.i.i = getelementptr [0 x i16], ptr @hfsplus_decompose_table, i32 0, i32 %add15.i.i
  %45 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx16.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool18.not.i.i = icmp eq i16 %46, 0
  br i1 %tobool18.not.i.i, label %if.end11.i.i.if.else23_crit_edge, label %if.end20.i.i

if.end11.i.i.if.else23_crit_edge:                 ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else23

if.end20.i.i:                                     ; preds = %if.end11.i.i
  %conv17.i.i = zext i16 %46 to i32
  %and22.i.i = and i32 %conv.i6.i, 15
  %add23.i.i = add nuw nsw i32 %and22.i.i, %conv17.i.i
  %arrayidx24.i.i = getelementptr [0 x i16], ptr @hfsplus_decompose_table, i32 0, i32 %add23.i.i
  %47 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx24.i.i, align 2
  %conv25.i.i = zext i16 %48 to i32
  %and26.i.i = and i32 %conv25.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %cmp27.i.i = icmp eq i32 %and26.i.i, 0
  br i1 %cmp27.i.i, label %if.end20.i.i.if.else23_crit_edge, label %if.end

if.end20.i.i.if.else23_crit_edge:                 ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else23

if.end:                                           ; preds = %if.end20.i.i
  %div43.i.i = lshr i32 %conv25.i.i, 2
  %add.ptr.i.i = getelementptr i16, ptr @hfsplus_decompose_table, i32 %div43.i.i
  %tobool9.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool9.not, label %if.end.if.else23_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.end.if.else23_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else23

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.then13.i.i, %if.end.i.i.do.body_crit_edge
  %dsize.2.ph = phi i32 [ 3, %if.then13.i.i ], [ 2, %if.end.i.i.do.body_crit_edge ], [ %and26.i.i, %if.end.do.body_crit_edge ]
  %dstr.1.ph = phi ptr [ %dhangul, %if.then13.i.i ], [ %dhangul, %if.end.i.i.do.body_crit_edge ], [ %add.ptr.i.i, %if.end.do.body_crit_edge ]
  %incdec.ptr = getelementptr i16, ptr %dstr.1.ph, i32 1
  %49 = ptrtoint ptr %dstr.1.ph to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %dstr.1.ph, align 2
  br i1 %tobool11.not, label %do.body.if.then17_crit_edge, label %if.then12

do.body.if.then17_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17

if.then12:                                        ; preds = %do.body
  %conv.i = zext i16 %50 to i32
  %51 = lshr i32 %conv.i, 8
  %arrayidx.i = getelementptr [0 x i16], ptr @hfsplus_case_fold_table, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool.not.i = icmp eq i16 %53, 0
  br i1 %tobool.not.i, label %if.then12.if.end14_crit_edge, label %if.then.i64

if.then12.if.end14_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then.i64:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %conv1.i = zext i16 %53 to i32
  %and.i = and i32 %conv.i, 255
  %add.i = add nuw nsw i32 %and.i, %conv1.i
  %arrayidx3.i = getelementptr [0 x i16], ptr @hfsplus_case_fold_table, i32 0, i32 %add.i
  %54 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx3.i, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then.i64, %if.then12.if.end14_crit_edge
  %c2.0 = phi i16 [ %55, %if.then.i64 ], [ %50, %if.then12.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %c2.0)
  %tobool16.not = icmp eq i16 %c2.0, 0
  br i1 %tobool16.not, label %if.end14.do.cond_crit_edge, label %if.end14.if.then17_crit_edge

if.end14.if.then17_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17

if.end14.do.cond_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond

if.then17:                                        ; preds = %if.end14.if.then17_crit_edge, %do.body.if.then17_crit_edge
  %c2.091 = phi i16 [ %c2.0, %if.end14.if.then17_crit_edge ], [ %50, %do.body.if.then17_crit_edge ]
  %conv18 = zext i16 %c2.091 to i32
  %shl.i = shl nuw nsw i32 %conv18, 4
  %add.i66 = add i32 %shl.i, %hash.0100
  %shr.i67 = lshr i32 %conv18, 4
  %add1.i = add i32 %add.i66, %shr.i67
  %mul.i = mul i32 %add1.i, 11
  br label %do.cond

do.cond:                                          ; preds = %if.then17, %if.end14.do.cond_crit_edge
  %hash.2 = phi i32 [ %mul.i, %if.then17 ], [ %hash.0100, %if.end14.do.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dsize.2.ph)
  %cmp21 = icmp ugt i32 %dsize.2.ph, 1
  br i1 %cmp21, label %do.body.1, label %do.cond.if.end36_crit_edge

do.cond.if.end36_crit_edge:                       ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

do.body.1:                                        ; preds = %do.cond
  %incdec.ptr.1 = getelementptr i16, ptr %dstr.1.ph, i32 2
  %56 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %incdec.ptr, align 2
  br i1 %tobool11.not, label %do.body.1.if.then17.1_crit_edge, label %if.then12.1

do.body.1.if.then17.1_crit_edge:                  ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17.1

if.then12.1:                                      ; preds = %do.body.1
  %conv.i.1 = zext i16 %57 to i32
  %58 = lshr i32 %conv.i.1, 8
  %arrayidx.i.1 = getelementptr [0 x i16], ptr @hfsplus_case_fold_table, i32 0, i32 %58
  %59 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx.i.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool.not.i.1 = icmp eq i16 %60, 0
  br i1 %tobool.not.i.1, label %if.then12.1.if.end14.1_crit_edge, label %if.then.i64.1

if.then12.1.if.end14.1_crit_edge:                 ; preds = %if.then12.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14.1

if.then.i64.1:                                    ; preds = %if.then12.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv1.i.1 = zext i16 %60 to i32
  %and.i.1 = and i32 %conv.i.1, 255
  %add.i.1 = add nuw nsw i32 %and.i.1, %conv1.i.1
  %arrayidx3.i.1 = getelementptr [0 x i16], ptr @hfsplus_case_fold_table, i32 0, i32 %add.i.1
  %61 = ptrtoint ptr %arrayidx3.i.1 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx3.i.1, align 2
  br label %if.end14.1

if.end14.1:                                       ; preds = %if.then.i64.1, %if.then12.1.if.end14.1_crit_edge
  %c2.0.1 = phi i16 [ %62, %if.then.i64.1 ], [ %57, %if.then12.1.if.end14.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %c2.0.1)
  %tobool16.not.1 = icmp eq i16 %c2.0.1, 0
  br i1 %tobool16.not.1, label %if.end14.1.do.cond.1_crit_edge, label %if.end14.1.if.then17.1_crit_edge

if.end14.1.if.then17.1_crit_edge:                 ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17.1

if.end14.1.do.cond.1_crit_edge:                   ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond.1

if.then17.1:                                      ; preds = %if.end14.1.if.then17.1_crit_edge, %do.body.1.if.then17.1_crit_edge
  %c2.091.1 = phi i16 [ %c2.0.1, %if.end14.1.if.then17.1_crit_edge ], [ %57, %do.body.1.if.then17.1_crit_edge ]
  %conv18.1 = zext i16 %c2.091.1 to i32
  %shl.i.1 = shl nuw nsw i32 %conv18.1, 4
  %add.i66.1 = add i32 %shl.i.1, %hash.2
  %shr.i67.1 = lshr i32 %conv18.1, 4
  %add1.i.1 = add i32 %add.i66.1, %shr.i67.1
  %mul.i.1 = mul i32 %add1.i.1, 11
  br label %do.cond.1

do.cond.1:                                        ; preds = %if.then17.1, %if.end14.1.do.cond.1_crit_edge
  %hash.2.1 = phi i32 [ %mul.i.1, %if.then17.1 ], [ %hash.2, %if.end14.1.do.cond.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %dsize.2.ph)
  %cmp21.1 = icmp eq i32 %dsize.2.ph, 3
  br i1 %cmp21.1, label %do.body.2, label %do.cond.1.if.end36_crit_edge

do.cond.1.if.end36_crit_edge:                     ; preds = %do.cond.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

do.body.2:                                        ; preds = %do.cond.1
  %63 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %incdec.ptr.1, align 2
  br i1 %tobool11.not, label %do.body.2.if.then17.2_crit_edge, label %if.then12.2

do.body.2.if.then17.2_crit_edge:                  ; preds = %do.body.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17.2

if.then12.2:                                      ; preds = %do.body.2
  %conv.i.2 = zext i16 %64 to i32
  %65 = lshr i32 %conv.i.2, 8
  %arrayidx.i.2 = getelementptr [0 x i16], ptr @hfsplus_case_fold_table, i32 0, i32 %65
  %66 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx.i.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool.not.i.2 = icmp eq i16 %67, 0
  br i1 %tobool.not.i.2, label %if.then12.2.if.end14.2_crit_edge, label %if.then.i64.2

if.then12.2.if.end14.2_crit_edge:                 ; preds = %if.then12.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14.2

if.then.i64.2:                                    ; preds = %if.then12.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv1.i.2 = zext i16 %67 to i32
  %and.i.2 = and i32 %conv.i.2, 255
  %add.i.2 = add nuw nsw i32 %and.i.2, %conv1.i.2
  %arrayidx3.i.2 = getelementptr [0 x i16], ptr @hfsplus_case_fold_table, i32 0, i32 %add.i.2
  %68 = ptrtoint ptr %arrayidx3.i.2 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx3.i.2, align 2
  br label %if.end14.2

if.end14.2:                                       ; preds = %if.then.i64.2, %if.then12.2.if.end14.2_crit_edge
  %c2.0.2 = phi i16 [ %69, %if.then.i64.2 ], [ %64, %if.then12.2.if.end14.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %c2.0.2)
  %tobool16.not.2 = icmp eq i16 %c2.0.2, 0
  br i1 %tobool16.not.2, label %if.end14.2.if.end36_crit_edge, label %if.end14.2.if.then17.2_crit_edge

if.end14.2.if.then17.2_crit_edge:                 ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17.2

if.end14.2.if.end36_crit_edge:                    ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then17.2:                                      ; preds = %if.end14.2.if.then17.2_crit_edge, %do.body.2.if.then17.2_crit_edge
  %c2.091.2 = phi i16 [ %c2.0.2, %if.end14.2.if.then17.2_crit_edge ], [ %64, %do.body.2.if.then17.2_crit_edge ]
  %conv18.2 = zext i16 %c2.091.2 to i32
  %shl.i.2 = shl nuw nsw i32 %conv18.2, 4
  %add.i66.2 = add i32 %shl.i.2, %hash.2.1
  %shr.i67.2 = lshr i32 %conv18.2, 4
  %add1.i.2 = add i32 %add.i66.2, %shr.i67.2
  %mul.i.2 = mul i32 %add1.i.2, 11
  br label %if.end36

if.else23:                                        ; preds = %if.end.if.else23_crit_edge, %if.end20.i.i.if.else23_crit_edge, %if.end11.i.i.if.else23_crit_edge, %if.end.i7.i.if.else23_crit_edge, %if.then.i.if.else23_crit_edge, %if.then.i.if.else23_crit_edge107, %asc2unichar.exit.if.else23_crit_edge
  %70 = ptrtoint ptr %c to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %c, align 2
  br i1 %tobool11.not, label %if.else23.if.then32_crit_edge, label %if.then25

if.else23.if.then32_crit_edge:                    ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

if.then25:                                        ; preds = %if.else23
  %conv.i68 = zext i16 %71 to i32
  %72 = lshr i32 %conv.i68, 8
  %arrayidx.i69 = getelementptr [0 x i16], ptr @hfsplus_case_fold_table, i32 0, i32 %72
  %73 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx.i69, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool.not.i70 = icmp eq i16 %74, 0
  br i1 %tobool.not.i70, label %if.then25.if.end27_crit_edge, label %if.then.i75

if.then25.if.end27_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then.i75:                                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  %conv1.i71 = zext i16 %74 to i32
  %and.i72 = and i32 %conv.i68, 255
  %add.i73 = add nuw nsw i32 %and.i72, %conv1.i71
  %arrayidx3.i74 = getelementptr [0 x i16], ptr @hfsplus_case_fold_table, i32 0, i32 %add.i73
  %75 = ptrtoint ptr %arrayidx3.i74 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx3.i74, align 2
  br label %if.end27

if.end27:                                         ; preds = %if.then.i75, %if.then25.if.end27_crit_edge
  %c2.1 = phi i16 [ %76, %if.then.i75 ], [ %71, %if.then25.if.end27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %c2.1)
  %tobool31.not = icmp eq i16 %c2.1, 0
  br i1 %tobool31.not, label %if.end27.if.end36_crit_edge, label %if.end27.if.then32_crit_edge

if.end27.if.then32_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then32:                                        ; preds = %if.end27.if.then32_crit_edge, %if.else23.if.then32_crit_edge
  %c2.196 = phi i16 [ %c2.1, %if.end27.if.then32_crit_edge ], [ %71, %if.else23.if.then32_crit_edge ]
  %conv33 = zext i16 %c2.196 to i32
  %shl.i79 = shl nuw nsw i32 %conv33, 4
  %add.i80 = add i32 %shl.i79, %hash.0100
  %shr.i81 = lshr i32 %conv33, 4
  %add1.i82 = add i32 %add.i80, %shr.i81
  %mul.i83 = mul i32 %add1.i82, 11
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end27.if.end36_crit_edge, %if.then17.2, %if.end14.2.if.end36_crit_edge, %do.cond.1.if.end36_crit_edge, %do.cond.if.end36_crit_edge
  %hash.3 = phi i32 [ %mul.i83, %if.then32 ], [ %hash.0100, %if.end27.if.end36_crit_edge ], [ %hash.2, %do.cond.if.end36_crit_edge ], [ %hash.2.1, %do.cond.1.if.end36_crit_edge ], [ %mul.i.2, %if.then17.2 ], [ %hash.2.1, %if.end14.2.if.end36_crit_edge ]
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %if.end36.while.body_crit_edge, label %if.end36.while.end_crit_edge

if.end36.while.end_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end36.while.body_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %if.end36.while.end_crit_edge, %entry.while.end_crit_edge
  %hash.0.lcssa = phi i32 [ %14, %entry.while.end_crit_edge ], [ %hash.3, %if.end36.while.end_crit_edge ]
  %mul.i.i.i = mul i32 %hash.0.lcssa, 1640531527
  %hash38 = getelementptr inbounds %struct.anon.3, ptr %str, i32 0, i32 1
  %77 = ptrtoint ptr %hash38 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %mul.i.i.i, ptr %hash38, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %dhangul) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %c) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_compare_dentry(ptr nocapture noundef readonly %dentry, i32 noundef %len, ptr noundef %str, ptr nocapture noundef readonly %name) local_unnamed_addr #2 align 64 {
entry:
  %c1 = alloca i16, align 2
  %c2 = alloca i16, align 2
  %c = alloca i16, align 2
  %dhangul_1 = alloca [3 x i16], align 2
  %dhangul_2 = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %c1) #4
  %2 = ptrtoint ptr %c1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %c1, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %c2) #4
  %3 = ptrtoint ptr %c2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %c2, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %c) #4
  %4 = ptrtoint ptr %c to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %c, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %dhangul_1) #4
  %5 = ptrtoint ptr %dhangul_1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %dhangul_1, align 2, !annotation !10
  %6 = getelementptr inbounds [3 x i16], ptr %dhangul_1, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %6, align 2, !annotation !10
  %8 = getelementptr inbounds [3 x i16], ptr %dhangul_1, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %8, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %dhangul_2) #4
  %10 = ptrtoint ptr %dhangul_2 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %dhangul_2, align 2, !annotation !10
  %11 = getelementptr inbounds [3 x i16], ptr %dhangul_2, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %11, align 2, !annotation !10
  %13 = getelementptr inbounds [3 x i16], ptr %dhangul_2, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %13, align 2, !annotation !10
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i, align 16
  %flags = getelementptr inbounds %struct.hfsplus_sb_info, ptr %16, i32 0, i32 33
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags, align 4
  %19 = load volatile i32, ptr %flags, align 4
  %20 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp205 = icmp sgt i32 %len, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp7206 = icmp sgt i32 %22, 0
  %or.cond207 = select i1 %cmp205, i1 %cmp7206, i1 false
  br i1 %or.cond207, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %name5 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %23 = ptrtoint ptr %name5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name5, align 8
  %25 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool34.not = icmp eq i32 %25, 0
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %astr2.0215 = phi ptr [ %24, %while.body.lr.ph ], [ %astr2.1, %while.cond.backedge.while.body_crit_edge ]
  %astr1.0214 = phi ptr [ %str, %while.body.lr.ph ], [ %astr1.1, %while.cond.backedge.while.body_crit_edge ]
  %dstr2.0213 = phi ptr [ null, %while.body.lr.ph ], [ %dstr2.0.be, %while.cond.backedge.while.body_crit_edge ]
  %dstr1.0212 = phi ptr [ null, %while.body.lr.ph ], [ %dstr1.0.be, %while.cond.backedge.while.body_crit_edge ]
  %len2.0211 = phi i32 [ %22, %while.body.lr.ph ], [ %len2.1, %while.cond.backedge.while.body_crit_edge ]
  %len1.0210 = phi i32 [ %len, %while.body.lr.ph ], [ %len1.1, %while.cond.backedge.while.body_crit_edge ]
  %dsize2.0209 = phi i32 [ 0, %while.body.lr.ph ], [ %dsize2.0.be, %while.cond.backedge.while.body_crit_edge ]
  %dsize1.0208 = phi i32 [ 0, %while.body.lr.ph ], [ %dsize1.0.be, %while.cond.backedge.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dsize1.0208)
  %tobool8.not = icmp eq i32 %dsize1.0208, 0
  br i1 %tobool8.not, label %if.then, label %while.body.if.end17_crit_edge

while.body.if.end17_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then:                                          ; preds = %while.body
  %26 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i, align 16
  %nls.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %nls.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nls.i, align 8
  %char2uni.i = getelementptr inbounds %struct.nls_table, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %char2uni.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %char2uni.i, align 4
  %call1.i = call i32 %31(ptr noundef %astr1.0214, i32 noundef %len1.0210, ptr noundef nonnull %c) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 1
  br i1 %cmp.i, label %if.then.sw.epilog.sink.split.i_crit_edge, label %if.end.i

if.then.sw.epilog.sink.split.i_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

if.end.i:                                         ; preds = %if.then
  %32 = ptrtoint ptr %c to i32
  call void @__asan_load2_noabort(i32 %32)
  %.pr.i = load i16, ptr %c, align 2
  %33 = zext i16 %.pr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %.pr.i, label %if.end.i.asc2unichar.exit_crit_edge [
    i16 9216, label %if.end.i.sw.epilog.sink.split.i_crit_edge
    i16 58, label %sw.bb2.i
  ]

if.end.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

if.end.i.asc2unichar.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %asc2unichar.exit

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb2.i, %if.end.i.sw.epilog.sink.split.i_crit_edge, %if.then.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i16 [ 47, %sw.bb2.i ], [ 63, %if.then.sw.epilog.sink.split.i_crit_edge ], [ 0, %if.end.i.sw.epilog.sink.split.i_crit_edge ]
  %size.09.ph.i = phi i32 [ %call1.i, %sw.bb2.i ], [ 1, %if.then.sw.epilog.sink.split.i_crit_edge ], [ %call1.i, %if.end.i.sw.epilog.sink.split.i_crit_edge ]
  %34 = ptrtoint ptr %c to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %.sink.i, ptr %c, align 2
  br label %asc2unichar.exit

asc2unichar.exit:                                 ; preds = %sw.epilog.sink.split.i, %if.end.i.asc2unichar.exit_crit_edge
  %size.09.i = phi i32 [ %call1.i, %if.end.i.asc2unichar.exit_crit_edge ], [ %size.09.ph.i, %sw.epilog.sink.split.i ]
  %add.ptr = getelementptr i8, ptr %astr1.0214, i32 %size.09.i
  %sub = sub nsw i32 %len1.0210, %size.09.i
  br i1 %tobool.not, label %if.then11, label %asc2unichar.exit.if.then15_crit_edge

asc2unichar.exit.if.then15_crit_edge:             ; preds = %asc2unichar.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.then11:                                        ; preds = %asc2unichar.exit
  %35 = ptrtoint ptr %c to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %c, align 2
  %37 = add i16 %36, 10332
  call void @__sanitizer_cov_trace_const_cmp2(i16 -11172, i16 %37)
  %38 = icmp ult i16 %37, -11172
  br i1 %38, label %if.then.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then11
  %sub.i.i = add nsw i16 %36, 21504
  %sub.i.i.frozen = freeze i16 %sub.i.i
  %div2829.i.i = udiv i16 %sub.i.i.frozen, 588
  %39 = mul i16 %div2829.i.i, 588
  %rem3031.i.i.decomposed = sub i16 %sub.i.i.frozen, %39
  %div42732.i.i = udiv i16 %rem3031.i.i.decomposed, 28
  %rem63334.i.i = urem i16 %sub.i.i, 28
  %conv8.i.i = or i16 %div2829.i.i, 4352
  %40 = ptrtoint ptr %dhangul_1 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv8.i.i, ptr %dhangul_1, align 2
  %conv9.i.i = add nuw nsw i16 %div42732.i.i, 4449
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv9.i.i, ptr %6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem63334.i.i)
  %cmp11.not.i.i = icmp eq i16 %rem63334.i.i, 0
  br i1 %cmp11.not.i.i, label %if.end.i.i.if.end_crit_edge, label %if.then13.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then13.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv14.i.i = add nuw nsw i16 %rem63334.i.i, 4519
  %42 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv14.i.i, ptr %8, align 2
  br label %if.end

if.then.i:                                        ; preds = %if.then11
  %conv.i6.i = zext i16 %36 to i32
  %43 = lshr i32 %conv.i6.i, 12
  %arrayidx.i.i = getelementptr [0 x i16], ptr @hfsplus_decompose_table, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.i.i, align 2
  %46 = zext i16 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %45, label %if.end.i7.i [
    i16 0, label %if.then.i.if.then15_crit_edge
    i16 -1, label %if.then.i.if.then15_crit_edge227
  ]

if.then.i.if.then15_crit_edge227:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.then.i.if.then15_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end.i7.i:                                      ; preds = %if.then.i
  %conv1.i.i = zext i16 %45 to i32
  %47 = lshr i32 %conv.i6.i, 8
  %and7.i.i = and i32 %47, 15
  %add.i.i = add nuw nsw i32 %and7.i.i, %conv1.i.i
  %arrayidx8.i.i = getelementptr [0 x i16], ptr @hfsplus_decompose_table, i32 0, i32 %add.i.i
  %48 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx8.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool.not.i.i = icmp eq i16 %49, 0
  br i1 %tobool.not.i.i, label %if.end.i7.i.if.then15_crit_edge, label %if.end11.i.i

if.end.i7.i.if.then15_crit_edge:                  ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end11.i.i:                                     ; preds = %if.end.i7.i
  %conv9.i8.i = zext i16 %49 to i32
  %50 = lshr i32 %conv.i6.i, 4
  %and14.i.i = and i32 %50, 15
  %add15.i.i = add nuw nsw i32 %and14.i.i, %conv9.i8.i
  %arrayidx16.i.i = getelementptr [0 x i16], ptr @hfsplus_decompose_table, i32 0, i32 %add15.i.i
  %51 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx16.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool18.not.i.i = icmp eq i16 %52, 0
  br i1 %tobool18.not.i.i, label %if.end11.i.i.if.then15_crit_edge, label %if.end20.i.i

if.end11.i.i.if.then15_crit_edge:                 ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end20.i.i:                                     ; preds = %if.end11.i.i
  %conv17.i.i = zext i16 %52 to i32
  %and22.i.i = and i32 %conv.i6.i, 15
  %add23.i.i = add nuw nsw i32 %and22.i.i, %conv17.i.i
  %arrayidx24.i.i = getelementptr [0 x i16], ptr @hfsplus_decompose_table, i32 0, i32 %add23.i.i
  %53 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx24.i.i, align 2
  %conv25.i.i = zext i16 %54 to i32
  %and26.i.i = and i32 %conv25.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %cmp27.i.i = icmp eq i32 %and26.i.i, 0
  br i1 %cmp27.i.i, label %if.end20.i.i.if.then15_crit_edge, label %if.end30.i.i

if.end20.i.i.if.then15_crit_edge:                 ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end30.i.i:                                     ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %div43.i.i = lshr i32 %conv25.i.i, 2
  %add.ptr.i.i = getelementptr i16, ptr @hfsplus_decompose_table, i32 %div43.i.i
  br label %if.end

if.end:                                           ; preds = %if.end30.i.i, %if.then13.i.i, %if.end.i.i.if.end_crit_edge
  %dsize1.2 = phi i32 [ %and26.i.i, %if.end30.i.i ], [ 2, %if.end.i.i.if.end_crit_edge ], [ 3, %if.then13.i.i ]
  %dstr1.1 = phi ptr [ %add.ptr.i.i, %if.end30.i.i ], [ %dhangul_1, %if.end.i.i.if.end_crit_edge ], [ %dhangul_1, %if.then13.i.i ]
  %tobool14.not = icmp eq ptr %dstr1.1, null
  br i1 %tobool14.not, label %if.end.if.then15_crit_edge, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.end.if.then15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.then15:                                        ; preds = %if.end.if.then15_crit_edge, %if.end20.i.i.if.then15_crit_edge, %if.end11.i.i.if.then15_crit_edge, %if.end.i7.i.if.then15_crit_edge, %if.then.i.if.then15_crit_edge, %if.then.i.if.then15_crit_edge227, %asc2unichar.exit.if.then15_crit_edge
  %55 = ptrtoint ptr %c to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %c, align 2
  %57 = ptrtoint ptr %c1 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %c1, align 2
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end.if.end17_crit_edge, %while.body.if.end17_crit_edge
  %dsize1.3 = phi i32 [ 1, %if.then15 ], [ %dsize1.2, %if.end.if.end17_crit_edge ], [ %dsize1.0208, %while.body.if.end17_crit_edge ]
  %len1.1 = phi i32 [ %sub, %if.then15 ], [ %sub, %if.end.if.end17_crit_edge ], [ %len1.0210, %while.body.if.end17_crit_edge ]
  %dstr1.2 = phi ptr [ %c1, %if.then15 ], [ %dstr1.1, %if.end.if.end17_crit_edge ], [ %dstr1.0212, %while.body.if.end17_crit_edge ]
  %astr1.1 = phi ptr [ %add.ptr, %if.then15 ], [ %add.ptr, %if.end.if.end17_crit_edge ], [ %astr1.0214, %while.body.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dsize2.0209)
  %tobool18.not = icmp eq i32 %dsize2.0209, 0
  br i1 %tobool18.not, label %if.then19, label %if.end17.if.end33_crit_edge

if.end17.if.end33_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then19:                                        ; preds = %if.end17
  %58 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_fs_info.i, align 16
  %nls.i120 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %59, i32 0, i32 10
  %60 = ptrtoint ptr %nls.i120 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %nls.i120, align 8
  %char2uni.i121 = getelementptr inbounds %struct.nls_table, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %char2uni.i121 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %char2uni.i121, align 4
  %call1.i122 = call i32 %63(ptr noundef %astr2.0215, i32 noundef %len2.0211, ptr noundef nonnull %c) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i122)
  %cmp.i123 = icmp slt i32 %call1.i122, 1
  br i1 %cmp.i123, label %if.then19.sw.epilog.sink.split.i129_crit_edge, label %if.end.i125

if.then19.sw.epilog.sink.split.i129_crit_edge:    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i129

if.end.i125:                                      ; preds = %if.then19
  %64 = ptrtoint ptr %c to i32
  call void @__asan_load2_noabort(i32 %64)
  %.pr.i124 = load i16, ptr %c, align 2
  %65 = zext i16 %.pr.i124 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %.pr.i124, label %if.end.i125.asc2unichar.exit131_crit_edge [
    i16 9216, label %if.end.i125.sw.epilog.sink.split.i129_crit_edge
    i16 58, label %sw.bb2.i126
  ]

if.end.i125.sw.epilog.sink.split.i129_crit_edge:  ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i129

if.end.i125.asc2unichar.exit131_crit_edge:        ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #6
  br label %asc2unichar.exit131

sw.bb2.i126:                                      ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split.i129

sw.epilog.sink.split.i129:                        ; preds = %sw.bb2.i126, %if.end.i125.sw.epilog.sink.split.i129_crit_edge, %if.then19.sw.epilog.sink.split.i129_crit_edge
  %.sink.i127 = phi i16 [ 47, %sw.bb2.i126 ], [ 63, %if.then19.sw.epilog.sink.split.i129_crit_edge ], [ 0, %if.end.i125.sw.epilog.sink.split.i129_crit_edge ]
  %size.09.ph.i128 = phi i32 [ %call1.i122, %sw.bb2.i126 ], [ 1, %if.then19.sw.epilog.sink.split.i129_crit_edge ], [ %call1.i122, %if.end.i125.sw.epilog.sink.split.i129_crit_edge ]
  %66 = ptrtoint ptr %c to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %.sink.i127, ptr %c, align 2
  br label %asc2unichar.exit131

asc2unichar.exit131:                              ; preds = %sw.epilog.sink.split.i129, %if.end.i125.asc2unichar.exit131_crit_edge
  %size.09.i130 = phi i32 [ %call1.i122, %if.end.i125.asc2unichar.exit131_crit_edge ], [ %size.09.ph.i128, %sw.epilog.sink.split.i129 ]
  %add.ptr21 = getelementptr i8, ptr %astr2.0215, i32 %size.09.i130
  %sub22 = sub nsw i32 %len2.0211, %size.09.i130
  br i1 %tobool.not, label %if.then24, label %asc2unichar.exit131.if.then31_crit_edge

asc2unichar.exit131.if.then31_crit_edge:          ; preds = %asc2unichar.exit131
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then31

if.then24:                                        ; preds = %asc2unichar.exit131
  %67 = ptrtoint ptr %c to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %c, align 2
  %69 = add i16 %68, 10332
  call void @__sanitizer_cov_trace_const_cmp2(i16 -11172, i16 %69)
  %70 = icmp ult i16 %69, -11172
  br i1 %70, label %if.then.i149, label %if.end.i.i141

if.end.i.i141:                                    ; preds = %if.then24
  %sub.i.i132 = add nsw i16 %68, 21504
  %sub.i.i132.frozen = freeze i16 %sub.i.i132
  %div2829.i.i133 = udiv i16 %sub.i.i132.frozen, 588
  %71 = mul i16 %div2829.i.i133, 588
  %rem3031.i.i134.decomposed = sub i16 %sub.i.i132.frozen, %71
  %div42732.i.i135 = udiv i16 %rem3031.i.i134.decomposed, 28
  %rem63334.i.i136 = urem i16 %sub.i.i132, 28
  %conv8.i.i137 = or i16 %div2829.i.i133, 4352
  %72 = ptrtoint ptr %dhangul_2 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv8.i.i137, ptr %dhangul_2, align 2
  %conv9.i.i138 = add nuw nsw i16 %div42732.i.i135, 4449
  %73 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv9.i.i138, ptr %11, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem63334.i.i136)
  %cmp11.not.i.i140 = icmp eq i16 %rem63334.i.i136, 0
  br i1 %cmp11.not.i.i140, label %if.end.i.i141.if.end27_crit_edge, label %if.then13.i.i144

if.end.i.i141.if.end27_crit_edge:                 ; preds = %if.end.i.i141
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then13.i.i144:                                 ; preds = %if.end.i.i141
  call void @__sanitizer_cov_trace_pc() #6
  %conv14.i.i142 = add nuw nsw i16 %rem63334.i.i136, 4519
  %74 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv14.i.i142, ptr %13, align 2
  br label %if.end27

if.then.i149:                                     ; preds = %if.then24
  %conv.i6.i147 = zext i16 %68 to i32
  %75 = lshr i32 %conv.i6.i147, 12
  %arrayidx.i.i148 = getelementptr [0 x i16], ptr @hfsplus_decompose_table, i32 0, i32 %75
  %76 = ptrtoint ptr %arrayidx.i.i148 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx.i.i148, align 2
  %78 = zext i16 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %77, label %if.end.i7.i155 [
    i16 0, label %if.then.i149.if.then31_crit_edge
    i16 -1, label %if.then.i149.if.then31_crit_edge228
  ]

if.then.i149.if.then31_crit_edge228:              ; preds = %if.then.i149
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then31

if.then.i149.if.then31_crit_edge:                 ; preds = %if.then.i149
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then31

if.end.i7.i155:                                   ; preds = %if.then.i149
  %conv1.i.i150 = zext i16 %77 to i32
  %79 = lshr i32 %conv.i6.i147, 8
  %and7.i.i151 = and i32 %79, 15
  %add.i.i152 = add nuw nsw i32 %and7.i.i151, %conv1.i.i150
  %arrayidx8.i.i153 = getelementptr [0 x i16], ptr @hfsplus_decompose_table, i32 0, i32 %add.i.i152
  %80 = ptrtoint ptr %arrayidx8.i.i153 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx8.i.i153, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool.not.i.i154 = icmp eq i16 %81, 0
  br i1 %tobool.not.i.i154, label %if.end.i7.i155.if.then31_crit_edge, label %if.end11.i.i161

if.end.i7.i155.if.then31_crit_edge:               ; preds = %if.end.i7.i155
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then31

if.end11.i.i161:                                  ; preds = %if.end.i7.i155
  %conv9.i8.i156 = zext i16 %81 to i32
  %82 = lshr i32 %conv.i6.i147, 4
  %and14.i.i157 = and i32 %82, 15
  %add15.i.i158 = add nuw nsw i32 %and14.i.i157, %conv9.i8.i156
  %arrayidx16.i.i159 = getelementptr [0 x i16], ptr @hfsplus_decompose_table, i32 0, i32 %add15.i.i158
  %83 = ptrtoint ptr %arrayidx16.i.i159 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx16.i.i159, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool18.not.i.i160 = icmp eq i16 %84, 0
  br i1 %tobool18.not.i.i160, label %if.end11.i.i161.if.then31_crit_edge, label %if.end20.i.i169

if.end11.i.i161.if.then31_crit_edge:              ; preds = %if.end11.i.i161
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then31

if.end20.i.i169:                                  ; preds = %if.end11.i.i161
  %conv17.i.i162 = zext i16 %84 to i32
  %and22.i.i163 = and i32 %conv.i6.i147, 15
  %add23.i.i164 = add nuw nsw i32 %and22.i.i163, %conv17.i.i162
  %arrayidx24.i.i165 = getelementptr [0 x i16], ptr @hfsplus_decompose_table, i32 0, i32 %add23.i.i164
  %85 = ptrtoint ptr %arrayidx24.i.i165 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx24.i.i165, align 2
  %conv25.i.i166 = zext i16 %86 to i32
  %and26.i.i167 = and i32 %conv25.i.i166, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i167)
  %cmp27.i.i168 = icmp eq i32 %and26.i.i167, 0
  br i1 %cmp27.i.i168, label %if.end20.i.i169.if.then31_crit_edge, label %if.end30.i.i172

if.end20.i.i169.if.then31_crit_edge:              ; preds = %if.end20.i.i169
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then31

if.end30.i.i172:                                  ; preds = %if.end20.i.i169
  call void @__sanitizer_cov_trace_pc() #6
  %div43.i.i170 = lshr i32 %conv25.i.i166, 2
  %add.ptr.i.i171 = getelementptr i16, ptr @hfsplus_decompose_table, i32 %div43.i.i170
  br label %if.end27

if.end27:                                         ; preds = %if.end30.i.i172, %if.then13.i.i144, %if.end.i.i141.if.end27_crit_edge
  %dsize2.2 = phi i32 [ %and26.i.i167, %if.end30.i.i172 ], [ 2, %if.end.i.i141.if.end27_crit_edge ], [ 3, %if.then13.i.i144 ]
  %dstr2.1 = phi ptr [ %add.ptr.i.i171, %if.end30.i.i172 ], [ %dhangul_2, %if.end.i.i141.if.end27_crit_edge ], [ %dhangul_2, %if.then13.i.i144 ]
  %tobool30.not = icmp eq ptr %dstr2.1, null
  br i1 %tobool30.not, label %if.end27.if.then31_crit_edge, label %if.end27.if.end33_crit_edge

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.end27.if.then31_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then31

if.then31:                                        ; preds = %if.end27.if.then31_crit_edge, %if.end20.i.i169.if.then31_crit_edge, %if.end11.i.i161.if.then31_crit_edge, %if.end.i7.i155.if.then31_crit_edge, %if.then.i149.if.then31_crit_edge, %if.then.i149.if.then31_crit_edge228, %asc2unichar.exit131.if.then31_crit_edge
  %87 = ptrtoint ptr %c to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %c, align 2
  %89 = ptrtoint ptr %c2 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %c2, align 2
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end27.if.end33_crit_edge, %if.end17.if.end33_crit_edge
  %dsize2.3 = phi i32 [ 1, %if.then31 ], [ %dsize2.2, %if.end27.if.end33_crit_edge ], [ %dsize2.0209, %if.end17.if.end33_crit_edge ]
  %len2.1 = phi i32 [ %sub22, %if.then31 ], [ %sub22, %if.end27.if.end33_crit_edge ], [ %len2.0211, %if.end17.if.end33_crit_edge ]
  %dstr2.2 = phi ptr [ %c2, %if.then31 ], [ %dstr2.1, %if.end27.if.end33_crit_edge ], [ %dstr2.0213, %if.end17.if.end33_crit_edge ]
  %astr2.1 = phi ptr [ %add.ptr21, %if.then31 ], [ %add.ptr21, %if.end27.if.end33_crit_edge ], [ %astr2.0215, %if.end17.if.end33_crit_edge ]
  %90 = ptrtoint ptr %dstr1.2 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %dstr1.2, align 2
  %92 = ptrtoint ptr %c1 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %c1, align 2
  %93 = ptrtoint ptr %dstr2.2 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %dstr2.2, align 2
  %95 = ptrtoint ptr %c2 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %c2, align 2
  br i1 %tobool34.not, label %if.end33.if.end46_crit_edge, label %if.then35

if.end33.if.end46_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

if.then35:                                        ; preds = %if.end33
  %conv.i = zext i16 %91 to i32
  %96 = lshr i32 %conv.i, 8
  %arrayidx.i = getelementptr [0 x i16], ptr @hfsplus_case_fold_table, i32 0, i32 %96
  %97 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %tobool.not.i = icmp eq i16 %98, 0
  br i1 %tobool.not.i, label %if.then35.case_fold.exit_crit_edge, label %if.then.i176

if.then35.case_fold.exit_crit_edge:               ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #6
  br label %case_fold.exit

if.then.i176:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #6
  %conv1.i = zext i16 %98 to i32
  %and.i = and i32 %conv.i, 255
  %add.i = add nuw nsw i32 %and.i, %conv1.i
  %arrayidx3.i = getelementptr [0 x i16], ptr @hfsplus_case_fold_table, i32 0, i32 %add.i
  %99 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %arrayidx3.i, align 2
  br label %case_fold.exit

case_fold.exit:                                   ; preds = %if.then.i176, %if.then35.case_fold.exit_crit_edge
  %tmp.0.i = phi i16 [ %100, %if.then.i176 ], [ %91, %if.then35.case_fold.exit_crit_edge ]
  %101 = ptrtoint ptr %c1 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %tmp.0.i, ptr %c1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tmp.0.i)
  %tobool37.not = icmp eq i16 %tmp.0.i, 0
  br i1 %tobool37.not, label %if.then38, label %if.end39

if.then38:                                        ; preds = %case_fold.exit
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr = getelementptr i16, ptr %dstr1.2, i32 1
  %dec = add i32 %dsize1.3, -1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end57, %if.then42, %if.then38
  %dsize1.0.be = phi i32 [ %dec59, %if.end57 ], [ %dec, %if.then38 ], [ %dsize1.3, %if.then42 ]
  %dsize2.0.be = phi i32 [ %dec61, %if.end57 ], [ %dsize2.3, %if.then38 ], [ %dec44, %if.then42 ]
  %dstr1.0.be = phi ptr [ %incdec.ptr58, %if.end57 ], [ %incdec.ptr, %if.then38 ], [ %dstr1.2, %if.then42 ]
  %dstr2.0.be = phi ptr [ %incdec.ptr60, %if.end57 ], [ %dstr2.2, %if.then38 ], [ %incdec.ptr43, %if.then42 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len1.1)
  %cmp = icmp sgt i32 %len1.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len2.1)
  %cmp7 = icmp sgt i32 %len2.1, 0
  %or.cond = select i1 %cmp, i1 %cmp7, i1 false
  br i1 %or.cond, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end39:                                         ; preds = %case_fold.exit
  %conv.i178 = zext i16 %94 to i32
  %102 = lshr i32 %conv.i178, 8
  %arrayidx.i179 = getelementptr [0 x i16], ptr @hfsplus_case_fold_table, i32 0, i32 %102
  %103 = ptrtoint ptr %arrayidx.i179 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx.i179, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %tobool.not.i180 = icmp eq i16 %104, 0
  br i1 %tobool.not.i180, label %if.end39.case_fold.exit188_crit_edge, label %if.then.i185

if.end39.case_fold.exit188_crit_edge:             ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %case_fold.exit188

if.then.i185:                                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  %conv1.i181 = zext i16 %104 to i32
  %and.i182 = and i32 %conv.i178, 255
  %add.i183 = add nuw nsw i32 %and.i182, %conv1.i181
  %arrayidx3.i184 = getelementptr [0 x i16], ptr @hfsplus_case_fold_table, i32 0, i32 %add.i183
  %105 = ptrtoint ptr %arrayidx3.i184 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx3.i184, align 2
  br label %case_fold.exit188

case_fold.exit188:                                ; preds = %if.then.i185, %if.end39.case_fold.exit188_crit_edge
  %tmp.0.i186 = phi i16 [ %106, %if.then.i185 ], [ %94, %if.end39.case_fold.exit188_crit_edge ]
  %107 = ptrtoint ptr %c2 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %tmp.0.i186, ptr %c2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tmp.0.i186)
  %tobool41.not = icmp eq i16 %tmp.0.i186, 0
  br i1 %tobool41.not, label %if.then42, label %case_fold.exit188.if.end46_crit_edge

case_fold.exit188.if.end46_crit_edge:             ; preds = %case_fold.exit188
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

if.then42:                                        ; preds = %case_fold.exit188
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr43 = getelementptr i16, ptr %dstr2.2, i32 1
  %dec44 = add i32 %dsize2.3, -1
  br label %while.cond.backedge

if.end46:                                         ; preds = %case_fold.exit188.if.end46_crit_edge, %if.end33.if.end46_crit_edge
  %108 = ptrtoint ptr %c1 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %c1, align 2
  %110 = ptrtoint ptr %c2 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %c2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %109, i16 %111)
  %cmp48 = icmp ult i16 %109, %111
  br i1 %cmp48, label %if.end46.cleanup_crit_edge, label %if.else

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_cmp2(i16 %109, i16 %111)
  %cmp53 = icmp ugt i16 %109, %111
  br i1 %cmp53, label %if.else.cleanup_crit_edge, label %if.end57

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end57:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr58 = getelementptr i16, ptr %dstr1.2, i32 1
  %dec59 = add i32 %dsize1.3, -1
  %incdec.ptr60 = getelementptr i16, ptr %dstr2.2, i32 1
  %dec61 = add i32 %dsize2.3, -1
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  %len1.0.lcssa = phi i32 [ %len, %entry.while.end_crit_edge ], [ %len1.1, %while.cond.backedge.while.end_crit_edge ]
  %len2.0.lcssa = phi i32 [ %22, %entry.while.end_crit_edge ], [ %len2.1, %while.cond.backedge.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %len1.0.lcssa, i32 %len2.0.lcssa)
  %cmp62 = icmp slt i32 %len1.0.lcssa, %len2.0.lcssa
  br i1 %cmp62, label %while.end.cleanup_crit_edge, label %if.end65

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end65:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp4(i32 %len1.0.lcssa, i32 %len2.0.lcssa)
  %cmp66 = icmp sgt i32 %len1.0.lcssa, %len2.0.lcssa
  %. = zext i1 %cmp66 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %while.end.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end46.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %while.end.cleanup_crit_edge ], [ %., %if.end65 ], [ 1, %if.else.cleanup_crit_edge ], [ -1, %if.end46.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %dhangul_2) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %dhangul_1) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %c) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %c2) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %c1) #4
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"auto-init"}
