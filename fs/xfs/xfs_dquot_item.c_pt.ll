; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_dquot_item.c_pt.bc'
source_filename = "../fs/xfs/xfs_dquot_item.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_item_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.xfs_dquot = type { %struct.list_head, ptr, i8, i16, i32, i32, i32, i64, i64, %struct.xfs_dquot_res, %struct.xfs_dquot_res, %struct.xfs_dquot_res, %struct.xfs_dq_logitem, i64, i64, [3 x i64], %struct.mutex, %struct.completion, %struct.atomic_t, %struct.wait_queue_head }
%struct.xfs_dquot_res = type { i64, i64, i64, i64, i64, i16 }
%struct.xfs_dq_logitem = type { %struct.xfs_log_item, ptr, i64 }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.xfs_disk_dquot = type { i16, i8, i8, i32, i64, i64, i64, i64, i64, i64, i32, i32, i16, i16, i32, i64, i64, i64, i32, i16, i16 }
%struct.xfs_log_vec = type { ptr, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.xfs_log_iovec = type { ptr, i32, i32 }
%struct.xfs_dq_logformat = type { i16, i16, i32, i64, i32, i32 }
%struct.xfs_ail = type { ptr, ptr, %struct.list_head, i64, i64, %struct.list_head, %struct.spinlock, i64, i32, %struct.list_head, %struct.wait_queue_head }

@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"XFS_DQ_IS_LOCKED(dqp)\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fs/xfs/xfs_dquot_item.c\00", [40 x i8] zeroinitializer }, align 32
@xfs_dquot_item_ops = internal constant { %struct.xfs_item_ops, [48 x i8] } { %struct.xfs_item_ops { i32 0, ptr @xfs_qm_dquot_logitem_size, ptr @xfs_qm_dquot_logitem_format, ptr @xfs_qm_dquot_logitem_pin, ptr @xfs_qm_dquot_logitem_unpin, ptr @xfs_qm_dquot_logitem_push, ptr @xfs_qm_dquot_logitem_committing, ptr @xfs_qm_dquot_logitem_release, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"vec - lv->lv_iovecp < lv->lv_niovecs\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/xfs/xfs_log.h\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"IS_ALIGNED((unsigned long)vec->i_addr, sizeof(uint64_t))\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"atomic_read(&dqp->q_pincount) > 0\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 107, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"xfs_dquot_item_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 196, i32 34 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 31, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant [20 x i8] c"../fs/xfs/xfs_log.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 40, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [27 x i8] c"../fs/xfs/xfs_dquot_item.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 94, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @xfs_dquot_item_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_dquot_item_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_qm_dqunpin_wait(ptr noundef %dqp) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %q_qlock = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 16
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %q_qlock) #6
  br i1 %call, label %entry.cond.end_crit_edge, label %cond.false, !prof !21

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 107) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %q_pincount = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %q_pincount, i32 noundef 4) #6
  %0 = ptrtoint ptr %q_pincount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %q_pincount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %cond.end.do.end19_crit_edge, label %if.end

cond.end.do.end19_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

if.end:                                           ; preds = %cond.end
  %q_mount = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 1
  %2 = ptrtoint ptr %q_mount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q_mount, align 8
  %call3 = tail call i32 @xfs_log_force(ptr noundef %3, i32 noundef 0) #6
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 115) #6
  %call.i.i26 = tail call zeroext i1 @__kasan_check_read(ptr noundef %q_pincount, i32 noundef 4) #6
  %4 = ptrtoint ptr %q_pincount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %q_pincount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9 = icmp eq i32 %5, 0
  br i1 %cmp9, label %if.end.do.end19_crit_edge, label %if.end11

if.end.do.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

if.end11:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %q_pinwait = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 19
  %call1230 = call i32 @prepare_to_wait_event(ptr noundef %q_pinwait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %call.i.i2731 = call zeroext i1 @__kasan_check_read(ptr noundef %q_pincount, i32 noundef 4) #6
  %7 = ptrtoint ptr %q_pincount to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %q_pincount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1532 = icmp eq i32 %8, 0
  br i1 %cmp1532, label %if.end11.for.end_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  br label %cleanup

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end11.cleanup_crit_edge
  call void @schedule() #6
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %q_pinwait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %call.i.i27 = call zeroext i1 @__kasan_check_read(ptr noundef %q_pincount, i32 noundef 4) #6
  %9 = ptrtoint ptr %q_pincount to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %q_pincount, align 4
  %cmp15 = icmp eq i32 %10, 0
  br i1 %cmp15, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end11.for.end_crit_edge
  call void @finish_wait(ptr noundef %q_pinwait, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %do.end19

do.end19:                                         ; preds = %for.end, %if.end.do.end19_crit_edge, %cond.end.do.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_log_force(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_qm_dquot_logitem_init(ptr noundef %dqp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %q_logitem = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 12
  %q_mount = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 1
  %0 = ptrtoint ptr %q_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q_mount, align 8
  tail call void @xfs_log_item_init(ptr noundef %1, ptr noundef %q_logitem, i32 noundef 4669, ptr noundef nonnull @xfs_dquot_item_ops) #6
  %qli_dquot = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %qli_dquot to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dqp, ptr %qli_dquot, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_log_item_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xfs_qm_dquot_logitem_size(ptr nocapture noundef readnone %lip, ptr nocapture noundef %nvecs, ptr nocapture noundef %nbytes) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nvecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nvecs, align 4
  %add = add i32 %1, 2
  store i32 %add, ptr %nvecs, align 4
  %2 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbytes, align 4
  %add1 = add i32 %3, 128
  store i32 %add1, ptr %nbytes, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_qm_dquot_logitem_format(ptr nocapture noundef readonly %lip, ptr nocapture noundef %lv) #4 align 64 {
if.end.i:
  %ddq = alloca %struct.xfs_disk_dquot, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %ddq) #6
  %0 = call ptr @memset(ptr %ddq, i32 255, i32 104)
  %lv_iovecp3.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 2
  %1 = ptrtoint ptr %lv_iovecp3.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lv_iovecp3.i, align 4
  %i_type.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %i_type.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 13, ptr %i_type.i, align 4
  %lv_buf.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 4
  %4 = ptrtoint ptr %lv_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lv_buf.i, align 4
  %lv_buf_len.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 6
  %6 = ptrtoint ptr %lv_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lv_buf_len.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %7
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i, ptr %2, align 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  %and.i = and i32 %9, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp5.i = icmp eq i32 %and.i, 0
  br i1 %cmp5.i, label %if.end.i.xlog_prepare_iovec.exit_crit_edge, label %cond.false13.i, !prof !21

if.end.i.xlog_prepare_iovec.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xlog_prepare_iovec.exit

cond.false13.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 40) #6
  br label %xlog_prepare_iovec.exit

xlog_prepare_iovec.exit:                          ; preds = %cond.false13.i, %if.end.i.xlog_prepare_iovec.exit_crit_edge
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 4669, ptr %11, align 8
  %qlf_size = getelementptr inbounds %struct.xfs_dq_logformat, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %qlf_size to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2, ptr %qlf_size, align 2
  %qli_dquot = getelementptr inbounds %struct.xfs_dq_logitem, ptr %lip, i32 0, i32 1
  %14 = ptrtoint ptr %qli_dquot to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qli_dquot, align 8
  %q_id = getelementptr inbounds %struct.xfs_dquot, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %q_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %q_id, align 8
  %qlf_id = getelementptr inbounds %struct.xfs_dq_logformat, ptr %11, i32 0, i32 2
  %18 = ptrtoint ptr %qlf_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %qlf_id, align 4
  %19 = load ptr, ptr %qli_dquot, align 8
  %q_blkno = getelementptr inbounds %struct.xfs_dquot, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %q_blkno to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %q_blkno, align 8
  %qlf_blkno = getelementptr inbounds %struct.xfs_dq_logformat, ptr %11, i32 0, i32 3
  %22 = ptrtoint ptr %qlf_blkno to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %qlf_blkno, align 8
  %qlf_len = getelementptr inbounds %struct.xfs_dq_logformat, ptr %11, i32 0, i32 4
  %23 = ptrtoint ptr %qlf_len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %qlf_len, align 8
  %24 = load ptr, ptr %qli_dquot, align 8
  %q_bufoffset = getelementptr inbounds %struct.xfs_dquot, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %q_bufoffset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %q_bufoffset, align 8
  %qlf_boffset = getelementptr inbounds %struct.xfs_dq_logformat, ptr %11, i32 0, i32 5
  %27 = ptrtoint ptr %qlf_boffset to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %qlf_boffset, align 4
  %28 = ptrtoint ptr %lv_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lv_buf_len.i, align 4
  %add1.i = add i32 %29, 24
  store i32 %add1.i, ptr %lv_buf_len.i, align 4
  %lv_bytes.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 5
  %30 = ptrtoint ptr %lv_bytes.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lv_bytes.i, align 4
  %add2.i = add i32 %31, 24
  store i32 %add2.i, ptr %lv_bytes.i, align 4
  %i_len.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %2, i32 0, i32 1
  %32 = ptrtoint ptr %i_len.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 24, ptr %i_len.i, align 4
  %33 = load ptr, ptr %qli_dquot, align 8
  call void @xfs_dquot_to_disk(ptr noundef nonnull %ddq, ptr noundef %33) #6
  %tobool.not.i.i = icmp eq ptr %2, null
  %34 = ptrtoint ptr %lv_iovecp3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lv_iovecp3.i, align 4
  br i1 %tobool.not.i.i, label %xlog_prepare_iovec.exit.if.end.i.i_crit_edge, label %if.then.i.i

xlog_prepare_iovec.exit.if.end.i.i_crit_edge:     ; preds = %xlog_prepare_iovec.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %xlog_prepare_iovec.exit
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %2 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 12
  %lv_niovecs.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 1
  %36 = ptrtoint ptr %lv_niovecs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lv_niovecs.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i.i, i32 %37)
  %cmp.i.i = icmp slt i32 %sub.ptr.div.i.i, %37
  br i1 %cmp.i.i, label %if.then.i.i.cond.end.i.i_crit_edge, label %cond.false.i.i, !prof !21

if.then.i.i.cond.end.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 31) #6
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.then.i.i.cond.end.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.xfs_log_iovec, ptr %2, i32 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %cond.end.i.i, %xlog_prepare_iovec.exit.if.end.i.i_crit_edge
  %vec.0.i.i = phi ptr [ %incdec.ptr.i.i, %cond.end.i.i ], [ %35, %xlog_prepare_iovec.exit.if.end.i.i_crit_edge ]
  %i_type.i.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %vec.0.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %i_type.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 14, ptr %i_type.i.i, align 4
  %39 = ptrtoint ptr %lv_buf.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lv_buf.i, align 4
  %41 = ptrtoint ptr %lv_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %lv_buf_len.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 %42
  %43 = ptrtoint ptr %vec.0.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr.i.i, ptr %vec.0.i.i, align 4
  %44 = ptrtoint ptr %add.ptr.i.i to i32
  %and.i.i = and i32 %44, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp5.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp5.i.i, label %if.end.i.i.xlog_copy_iovec.exit_crit_edge, label %cond.false13.i.i, !prof !21

if.end.i.i.xlog_copy_iovec.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xlog_copy_iovec.exit

cond.false13.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 40) #6
  br label %xlog_copy_iovec.exit

xlog_copy_iovec.exit:                             ; preds = %cond.false13.i.i, %if.end.i.i.xlog_copy_iovec.exit_crit_edge
  %45 = ptrtoint ptr %vec.0.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vec.0.i.i, align 4
  %47 = call ptr @memcpy(ptr %46, ptr %ddq, i32 104)
  %48 = ptrtoint ptr %lv_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %lv_buf_len.i, align 4
  %add1.i.i = add i32 %49, 104
  store i32 %add1.i.i, ptr %lv_buf_len.i, align 4
  %50 = ptrtoint ptr %lv_bytes.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %lv_bytes.i, align 4
  %add2.i.i = add i32 %51, 104
  store i32 %add2.i.i, ptr %lv_bytes.i, align 4
  %i_len.i.i = getelementptr inbounds %struct.xfs_log_iovec, ptr %vec.0.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %i_len.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 104, ptr %i_len.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %ddq) #6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_qm_dquot_logitem_pin(ptr nocapture noundef readonly %lip) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %qli_dquot = getelementptr inbounds %struct.xfs_dq_logitem, ptr %lip, i32 0, i32 1
  %0 = ptrtoint ptr %qli_dquot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qli_dquot, align 8
  %q_qlock = getelementptr inbounds %struct.xfs_dquot, ptr %1, i32 0, i32 16
  %call1 = tail call zeroext i1 @mutex_is_locked(ptr noundef %q_qlock) #6
  br i1 %call1, label %entry.cond.end_crit_edge, label %cond.false, !prof !21

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 77) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %q_pincount = getelementptr inbounds %struct.xfs_dquot, ptr %1, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %q_pincount, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %q_pincount, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %q_pincount, ptr %q_pincount, i32 1, ptr elementtype(i32) %q_pincount) #6, !srcloc !22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_qm_dquot_logitem_unpin(ptr nocapture noundef readonly %lip, i32 noundef %remove) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %qli_dquot = getelementptr inbounds %struct.xfs_dq_logitem, ptr %lip, i32 0, i32 1
  %0 = ptrtoint ptr %qli_dquot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qli_dquot, align 8
  %q_pincount = getelementptr inbounds %struct.xfs_dquot, ptr %1, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %q_pincount, i32 noundef 4) #6
  %2 = ptrtoint ptr %q_pincount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %q_pincount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !21

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 94) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %call.i.i7 = tail call zeroext i1 @__kasan_check_write(ptr noundef %q_pincount, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @llvm.prefetch.p0(ptr %q_pincount, i32 1, i32 3, i32 1) #6
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %q_pincount, ptr %q_pincount, i32 1, ptr elementtype(i32) %q_pincount) #6, !srcloc !24
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %q_pinwait = getelementptr inbounds %struct.xfs_dquot, ptr %1, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %q_pinwait, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_qm_dquot_logitem_push(ptr nocapture noundef readonly %lip, ptr noundef %buffer_list) #4 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %qli_dquot = getelementptr inbounds %struct.xfs_dq_logitem, ptr %lip, i32 0, i32 1
  %0 = ptrtoint ptr %qli_dquot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qli_dquot, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #6
  %li_buf = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 7
  %2 = ptrtoint ptr %li_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %li_buf, align 8
  %4 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %bp, align 4
  %q_pincount = getelementptr inbounds %struct.xfs_dquot, ptr %1, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %q_pincount, i32 noundef 4) #6
  %5 = ptrtoint ptr %q_pincount to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %q_pincount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %q_qlock.i = getelementptr inbounds %struct.xfs_dquot, ptr %1, i32 0, i32 16
  %call.i = tail call i32 @mutex_trylock(ptr noundef %q_qlock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i.i37 = tail call zeroext i1 @__kasan_check_read(ptr noundef %q_pincount, i32 noundef 4) #6
  %7 = ptrtoint ptr %q_pincount to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %q_pincount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7 = icmp sgt i32 %8, 0
  br i1 %cmp7, label %if.end4.out_unlock_crit_edge, label %if.end9

if.end4.out_unlock_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end9:                                          ; preds = %if.end4
  %q_flush.i = getelementptr inbounds %struct.xfs_dquot, ptr %1, i32 0, i32 17
  %call.i38 = tail call zeroext i1 @try_wait_for_completion(ptr noundef %q_flush.i) #6
  br i1 %call.i38, label %if.end12, label %if.end9.out_unlock_crit_edge

if.end9.out_unlock_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end12:                                         ; preds = %if.end9
  %li_ailp = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 4
  %9 = ptrtoint ptr %li_ailp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %li_ailp, align 4
  %ail_lock = getelementptr inbounds %struct.xfs_ail, ptr %10, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %ail_lock) #6
  %call13 = call i32 @xfs_qm_dqflush(ptr noundef %1, ptr noundef nonnull %bp) #6
  %11 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call13, label %if.end12.if.end22_crit_edge [
    i32 0, label %if.then15
    i32 -11, label %if.then20
  ]

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bp, align 4
  %call16 = call zeroext i1 @xfs_buf_delwri_queue(ptr noundef %13, ptr noundef %buffer_list) #6
  %spec.select = select i1 %call16, i32 0, i32 3
  %14 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bp, align 4
  call void @xfs_buf_unlock(ptr noundef %15) #6
  call void @xfs_buf_rele(ptr noundef %15) #6
  br label %if.end22

if.then20:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.then15, %if.end12.if.end22_crit_edge
  %rval.1 = phi i32 [ 2, %if.then20 ], [ %spec.select, %if.then15 ], [ 0, %if.end12.if.end22_crit_edge ]
  %16 = ptrtoint ptr %li_ailp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %li_ailp, align 4
  %ail_lock24 = getelementptr inbounds %struct.xfs_ail, ptr %17, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %ail_lock24) #6
  br label %out_unlock

out_unlock:                                       ; preds = %if.end22, %if.end9.out_unlock_crit_edge, %if.end4.out_unlock_crit_edge
  %rval.2 = phi i32 [ %rval.1, %if.end22 ], [ 1, %if.end4.out_unlock_crit_edge ], [ 3, %if.end9.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %q_qlock.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rval.2, %out_unlock ], [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_qm_dquot_logitem_committing(ptr nocapture noundef readonly %lip, i64 noundef %seq) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xfs_qm_dquot_logitem_release(ptr noundef %lip)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_qm_dquot_logitem_release(ptr nocapture noundef readonly %lip) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %qli_dquot = getelementptr inbounds %struct.xfs_dq_logitem, ptr %lip, i32 0, i32 1
  %0 = ptrtoint ptr %qli_dquot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qli_dquot, align 8
  %q_qlock = getelementptr inbounds %struct.xfs_dquot, ptr %1, i32 0, i32 16
  %call1 = tail call zeroext i1 @mutex_is_locked(ptr noundef %q_qlock) #6
  br i1 %call1, label %entry.cond.end_crit_edge, label %cond.false, !prof !21

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 177) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %q_qlock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dquot_to_disk(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_dqflush(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_buf_delwri_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_rele(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_dquot_item.c", i32 107, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @xfs_dquot_item_ops, !4, !"xfs_dquot_item_ops", i1 false, i1 false}
!4 = !{!"../fs/xfs/xfs_dquot_item.c", i32 196, i32 34}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_log.h", i32 31, i32 3}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/xfs/xfs_log.h", i32 40, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/xfs/xfs_dquot_item.c", i32 94, i32 2}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2148620458, i64 2148620484, i64 2148620513, i64 2148620547, i64 2148620578, i64 2148620601}
!23 = !{i64 2148708934}
!24 = !{i64 2148623643, i64 2148623675, i64 2148623704, i64 2148623738, i64 2148623769, i64 2148623792}
!25 = !{i64 2148709163}
