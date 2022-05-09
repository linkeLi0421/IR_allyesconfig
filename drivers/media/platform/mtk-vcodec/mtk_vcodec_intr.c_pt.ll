; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-vcodec/mtk_vcodec_intr.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-vcodec/mtk_vcodec_intr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mtk_vcodec_wait_for_done_ctx\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_vcodec_wait_for_done_ctx\09\09\09\09"
module asm "\09.long\09__crc_mtk_vcodec_wait_for_done_ctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_vcodec_wait_for_done_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_vcodec_wait_for_done_ctx\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_vcodec_wait_for_done_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mtk_vcodec_ctx = type { i32, ptr, %struct.list_head, %struct.v4l2_fh, ptr, [2 x %struct.mtk_q_data], i32, i32, i32, %struct.mtk_enc_params, ptr, ptr, ptr, %struct.vdec_pic_info, i32, i32, i32, %struct.wait_queue_head, i32, %struct.v4l2_ctrl_handler, %struct.work_struct, %struct.work_struct, %struct.vdec_pic_info, %struct.v4l2_m2m_buffer, i8, i32, i32, i32, i32, i32, i32, %struct.mutex }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.mtk_q_data = type { i32, i32, i32, i32, i32, [3 x i32], [3 x i32], ptr }
%struct.mtk_enc_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.vdec_pic_info = type { i32, i32, i32, i32, [8 x i32], i32, i32 }
%struct.v4l2_m2m_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/media/platform/mtk-vcodec/mtk_vcodec_intr.c\00", [44 x i8] zeroinitializer }, align 32
@mtk_vcodec_wait_for_done_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 32, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] [%d] ctx->type=%d, cmd=%d, wait_event_interruptible_timeout time=%ums out %d %d!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mtk_vcodec_wait_for_done_ctx\00", [35 x i8] zeroinitializer }, align 32
@mtk_vcodec_wait_for_done_ctx._entry_ptr = internal global ptr @mtk_vcodec_wait_for_done_ctx._entry, section ".printk_index", align 4
@mtk_vcodec_wait_for_done_ctx._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.2, ptr @.str, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [120 x i8], [40 x i8] } { [120 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] [%d] ctx->type=%d, cmd=%d, wait_event_interruptible_timeout interrupted by a signal %d %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mtk_vcodec_wait_for_done_ctx._entry_ptr.5 = internal global ptr @mtk_vcodec_wait_for_done_ctx._entry.3, section ".printk_index", align 4
@__kstrtab_mtk_vcodec_wait_for_done_ctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_vcodec_wait_for_done_ctx = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_vcodec_wait_for_done_ctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_vcodec_wait_for_done_ctx to i32), ptr @__kstrtab_mtk_vcodec_wait_for_done_ctx, ptr @__kstrtabns_mtk_vcodec_wait_for_done_ctx }, section "___ksymtab+mtk_vcodec_wait_for_done_ctx", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 24, i32 8 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 30, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [55 x i8] c"../drivers/media/platform/mtk-vcodec/mtk_vcodec_intr.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 34, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_mtk_vcodec_wait_for_done_ctx, ptr @mtk_vcodec_wait_for_done_ctx._entry, ptr @mtk_vcodec_wait_for_done_ctx._entry.3, ptr @mtk_vcodec_wait_for_done_ctx._entry_ptr, ptr @mtk_vcodec_wait_for_done_ctx._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_wait_for_done_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_wait_for_done_ctx._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_vcodec_wait_for_done_ctx(ptr noundef %ctx, i32 noundef %command, i32 noundef %timeout_ms) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 17
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout_ms) #4
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 26) #4
  %int_cond = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 15
  %0 = ptrtoint ptr %int_cond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %int_cond, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool5.not = icmp eq i32 %call2.i, 0
  %spec.select = select i1 %tobool5.not, i32 1, i32 %call2.i
  %__ret.0 = select i1 %tobool.not, i32 %call2.i, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool7.not = icmp eq i32 %__ret.0, 0
  %not.tobool.not = xor i1 %tobool.not, true
  %2 = select i1 %not.tobool.not, i1 true, i1 %tobool7.not
  br i1 %2, label %entry.if.end36_crit_edge, label %if.then9

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then9:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #4
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #4
  %call1199 = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #4
  %4 = ptrtoint ptr %int_cond to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %int_cond, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool14.not100 = icmp eq i32 %5, 0
  %__ret10.1103 = select i1 %tobool14.not100, i32 %call2.i, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.1103)
  %tobool24.not104 = icmp eq i32 %__ret10.1103, 0
  %not.tobool14.not105 = xor i1 %tobool14.not100, true
  %6 = select i1 %not.tobool14.not105, i1 true, i1 %tobool24.not104
  br i1 %6, label %if.then9.for.end_crit_edge, label %if.then9.if.end30_crit_edge

if.then9.if.end30_crit_edge:                      ; preds = %if.then9
  br label %if.end30

if.then9.for.end_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end30:                                         ; preds = %cleanup.if.end30_crit_edge, %if.then9.if.end30_crit_edge
  %__ret10.1107 = phi i32 [ %__ret10.1, %cleanup.if.end30_crit_edge ], [ %__ret10.1103, %if.then9.if.end30_crit_edge ]
  %call11106 = phi i32 [ %call11, %cleanup.if.end30_crit_edge ], [ %call1199, %if.then9.if.end30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11106)
  %tobool31.not = icmp eq i32 %call11106, 0
  br i1 %tobool31.not, label %cleanup, label %if.end30.__out_crit_edge

if.end30.__out_crit_edge:                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %__out

cleanup:                                          ; preds = %if.end30
  %call34 = call i32 @schedule_timeout(i32 noundef %__ret10.1107) #4
  %call11 = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #4
  %7 = ptrtoint ptr %int_cond to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %int_cond, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool14.not = icmp eq i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool18.not = icmp eq i32 %call34, 0
  %spec.store.select64 = select i1 %tobool18.not, i32 1, i32 %call34
  %__ret10.1 = select i1 %tobool14.not, i32 %call34, i32 %spec.store.select64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.1)
  %tobool24.not = icmp eq i32 %__ret10.1, 0
  %not.tobool14.not = xor i1 %tobool14.not, true
  %9 = select i1 %not.tobool14.not, i1 true, i1 %tobool24.not
  br i1 %9, label %cleanup.for.end_crit_edge, label %cleanup.if.end30_crit_edge

cleanup.if.end30_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then9.for.end_crit_edge
  %__ret10.1.lcssa = phi i32 [ %__ret10.1103, %if.then9.for.end_crit_edge ], [ %__ret10.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %queue, ptr noundef nonnull %__wq_entry) #4
  br label %__out

__out:                                            ; preds = %for.end, %if.end30.__out_crit_edge
  %__ret10.292 = phi i32 [ %__ret10.1.lcssa, %for.end ], [ %call11106, %if.end30.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #4
  br label %if.end36

if.end36:                                         ; preds = %__out, %entry.if.end36_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %entry.if.end36_crit_edge ], [ %__ret10.292, %__out ]
  %10 = zext i32 %__ret.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %__ret.1, label %if.end36.if.end57_crit_edge [
    i32 0, label %if.then39
    i32 -512, label %do.end49
  ]

if.end36.if.end57_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 6
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ctx, align 8
  %15 = ptrtoint ptr %int_cond to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %int_cond, align 4
  %int_type = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 16
  %17 = ptrtoint ptr %int_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %int_type, align 8
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 32, i32 noundef %12, i32 noundef %14, i32 noundef %command, i32 noundef %timeout_ms, i32 noundef %16, i32 noundef %18) #7
  br label %if.end57

do.end49:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  %id51 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 6
  %19 = ptrtoint ptr %id51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id51, align 4
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ctx, align 8
  %23 = ptrtoint ptr %int_cond to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %int_cond, align 4
  %int_type54 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 16
  %25 = ptrtoint ptr %int_type54 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %int_type54, align 8
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 36, i32 noundef %20, i32 noundef %22, i32 noundef %command, i32 noundef %24, i32 noundef %26) #7
  br label %if.end57

if.end57:                                         ; preds = %do.end49, %if.then39, %if.end36.if.end57_crit_edge
  %status.0 = phi i32 [ -1, %do.end49 ], [ -1, %if.then39 ], [ 0, %if.end36.if.end57_crit_edge ]
  %27 = ptrtoint ptr %int_cond to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %int_cond, align 4
  %int_type59 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %ctx, i32 0, i32 16
  %28 = ptrtoint ptr %int_type59 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %int_type59, align 8
  ret i32 %status.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_intr.c", i32 24, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_intr.c", i32 30, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mtk_vcodec_wait_for_done_ctx._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @mtk_vcodec_wait_for_done_ctx._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_intr.c", i32 34, i32 3}
!9 = !{ptr @mtk_vcodec_wait_for_done_ctx._entry.3, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @mtk_vcodec_wait_for_done_ctx._entry_ptr.5, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__ksymtab_mtk_vcodec_wait_for_done_ctx, !12, !"__ksymtab_mtk_vcodec_wait_for_done_ctx", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_intr.c", i32 45, i32 1}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
