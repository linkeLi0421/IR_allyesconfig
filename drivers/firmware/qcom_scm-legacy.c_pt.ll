; ModuleID = '/llk/IR_all_yes/drivers/firmware/qcom_scm-legacy.c_pt.bc'
source_filename = "../drivers/firmware/qcom_scm-legacy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_smccc_res = type { i32, i32, i32, i32 }
%struct.qcom_scm_desc = type { i32, i32, i32, [10 x i64], i32 }
%struct.scm_legacy_command = type { i32, i32, i32, i32, [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.scm_legacy_response = type { i32, i32, i32 }

@qcom_scm_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @qcom_scm_lock, i64 52), ptr getelementptr (i8, ptr @qcom_scm_lock, i64 52) }, ptr @qcom_scm_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qcom_scm_lock.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qcom_scm_lock\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 4294967284, i64 4294967291, i64 4294967292, i64 4294967295]
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"qcom_scm_lock\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 326, i32 6 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [38 x i8] c"../drivers/firmware/qcom_scm-legacy.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 18, i32 8 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @qcom_scm_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_scm_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scm_legacy_call(ptr noundef %dev, ptr nocapture noundef readonly %desc, ptr noundef writeonly %res) local_unnamed_addr #0 align 64 {
entry:
  %context_id = alloca i32, align 4
  %smc_res = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arginfo = getelementptr inbounds %struct.qcom_scm_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %arginfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arginfo, align 8
  %conv = and i32 %1, 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %context_id) #5
  %2 = ptrtoint ptr %context_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %context_id, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %smc_res) #5
  %mul = shl nuw nsw i32 %conv, 2
  %add3 = add nuw nsw i32 %mul, 40
  %3 = call ptr @memset(ptr %smc_res, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 4096) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = shl nuw nsw i32 %add3, 24
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %call7.i.i, align 8
  %buf_offset = getelementptr inbounds %struct.scm_legacy_command, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %buf_offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 268435456, ptr %buf_offset, align 4
  %add = shl nuw nsw i32 %conv, 26
  %8 = add nuw nsw i32 %add, 268435456
  %resp_hdr_offset = getelementptr inbounds %struct.scm_legacy_command, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %resp_hdr_offset to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %resp_hdr_offset, align 8
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %desc, align 8
  %shl = shl i32 %11, 10
  %cmd7 = getelementptr inbounds %struct.qcom_scm_desc, ptr %desc, i32 0, i32 1
  %12 = ptrtoint ptr %cmd7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cmd7, align 4
  %and8 = and i32 %13, 1023
  %or = or i32 %and8, %shl
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %id = getelementptr inbounds %struct.scm_legacy_command, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %id, align 4
  %buf.i = getelementptr inbounds %struct.scm_legacy_command, ptr %call7.i.i, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp121.not = icmp eq i32 %conv, 0
  br i1 %cmp121.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0122 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qcom_scm_desc, ptr %desc, i32 0, i32 3, i32 %i.0122
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx, align 8
  %conv12 = trunc i64 %17 to i32
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv12)
  %arrayidx13 = getelementptr i32, ptr %buf.i, i32 %i.0122
  %19 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx13, align 4
  %inc = add nuw nsw i32 %i.0122, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %20 = ptrtoint ptr %resp_hdr_offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %resp_hdr_offset, align 8
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #5
  %add.ptr.i = getelementptr i8, ptr %call7.i.i, i32 %22
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i.i) #5
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %for.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !18

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #5
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %23 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %26, %if.end.i.i ], [ %24, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #5
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef -1) #5
  br label %if.then18

dma_map_single_attrs.exit:                        ; preds = %for.end
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef nonnull %call7.i.i, i32 noundef %add3) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %27 = load ptr, ptr @mem_map, align 4
  %28 = ptrtoint ptr %call7.i.i to i32
  %sub.i = add i32 %28, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i106 = getelementptr %struct.page, ptr %27, i32 %shr.i
  %and.i = and i32 %28, 4088
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i106, i32 noundef %and.i, i32 noundef %add3, i32 noundef 1, i32 noundef 0) #5
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call41.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then18_crit_edge, label %if.end19

dma_map_single_attrs.exit.if.then18_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

if.then18:                                        ; preds = %dma_map_single_attrs.exit.if.then18_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.end19:                                         ; preds = %dma_map_single_attrs.exit
  %29 = ptrtoint ptr %context_id to i32
  call void @mutex_lock_nested(ptr noundef nonnull @qcom_scm_lock, i32 noundef 0) #5
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end19
  call void @__arm_smccc_smc(i32 noundef 1, i32 noundef %29, i32 noundef %call41.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %smc_res, ptr noundef null) #5
  %30 = ptrtoint ptr %smc_res to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %smc_res, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %31, label %if.end30.thread.loopexit124 [
    i32 1, label %do.body.i.do.body.i_crit_edge
    i32 0, label %if.end30
    i32 -1, label %do.body.i.if.end30.thread_crit_edge
    i32 -12, label %if.end30.thread.loopexit128
    i32 -5, label %if.end30.thread.loopexit127
    i32 -4, label %if.end30.thread.loopexit126
  ]

do.body.i.if.end30.thread_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.thread

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.end30.thread.loopexit124:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.thread

if.end30.thread.loopexit126:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.thread

if.end30.thread.loopexit127:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.thread

if.end30.thread.loopexit128:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.thread

if.end30.thread:                                  ; preds = %if.end30.thread.loopexit128, %if.end30.thread.loopexit127, %if.end30.thread.loopexit126, %if.end30.thread.loopexit124, %do.body.i.if.end30.thread_crit_edge
  %ret.0.ph = phi i32 [ -22, %if.end30.thread.loopexit124 ], [ -95, %if.end30.thread.loopexit126 ], [ -12, %if.end30.thread.loopexit127 ], [ -16, %if.end30.thread.loopexit128 ], [ -5, %do.body.i.if.end30.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @qcom_scm_lock) #5
  br label %out

if.end30:                                         ; preds = %do.body.i
  call void @mutex_unlock(ptr noundef nonnull @qcom_scm_lock) #5
  %add34 = add nuw nsw i32 %mul, 16
  %add35 = add i32 %add34, %call41.i
  %is_complete = getelementptr inbounds %struct.scm_legacy_response, ptr %add.ptr.i, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end30
  call void @dma_sync_single_for_cpu(ptr noundef %dev, i32 noundef %add35, i32 noundef 12, i32 noundef 2) #5
  %33 = ptrtoint ptr %is_complete to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %is_complete, align 4
  %tobool36.not = icmp eq i32 %34, 0
  br i1 %tobool36.not, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %do.body
  %buf_offset39 = getelementptr inbounds %struct.scm_legacy_response, ptr %add.ptr.i, i32 0, i32 1
  %35 = ptrtoint ptr %buf_offset39 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %buf_offset39, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  %add40 = add i32 %37, %add35
  call void @dma_sync_single_for_cpu(ptr noundef %dev, i32 noundef %add40, i32 noundef 12, i32 noundef 2) #5
  %tobool41.not = icmp eq ptr %res, null
  br i1 %tobool41.not, label %do.end.out_crit_edge, label %if.then42

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then42:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %buf_offset39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %buf_offset39, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39) #5
  %add.ptr.i109 = getelementptr i8, ptr %add.ptr.i, i32 %40
  %41 = ptrtoint ptr %add.ptr.i109 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i109, align 4
  %43 = call i32 @llvm.bswap.i32(i32 %42)
  %conv49 = zext i32 %43 to i64
  %44 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv49, ptr %res, align 8
  %arrayidx48.1 = getelementptr i32, ptr %add.ptr.i109, i32 1
  %45 = ptrtoint ptr %arrayidx48.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx48.1, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %46)
  %conv49.1 = zext i32 %47 to i64
  %arrayidx50.1 = getelementptr [3 x i64], ptr %res, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx50.1 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv49.1, ptr %arrayidx50.1, align 8
  %arrayidx48.2 = getelementptr i32, ptr %add.ptr.i109, i32 2
  %49 = ptrtoint ptr %arrayidx48.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx48.2, align 4
  %51 = call i32 @llvm.bswap.i32(i32 %50)
  %conv49.2 = zext i32 %51 to i64
  %arrayidx50.2 = getelementptr [3 x i64], ptr %res, i32 0, i32 2
  %52 = ptrtoint ptr %arrayidx50.2 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv49.2, ptr %arrayidx50.2, align 8
  br label %out

out:                                              ; preds = %if.then42, %do.end.out_crit_edge, %if.end30.thread
  %ret.0120 = phi i32 [ 0, %do.end.out_crit_edge ], [ %ret.0.ph, %if.end30.thread ], [ 0, %if.then42 ]
  call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %call41.i, i32 noundef %add3, i32 noundef 1, i32 noundef 0) #5
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then18 ], [ %ret.0120, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %smc_res) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %context_id) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scm_legacy_call_atomic(ptr nocapture noundef readnone %unused, ptr nocapture noundef readonly %desc, ptr noundef writeonly %res) local_unnamed_addr #0 align 64 {
entry:
  %context_id = alloca i32, align 4
  %smc_res = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %context_id) #5
  %0 = ptrtoint ptr %context_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %context_id, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %smc_res) #5
  %1 = getelementptr inbounds %struct.arm_smccc_res, ptr %smc_res, i32 0, i32 1
  %2 = getelementptr inbounds %struct.arm_smccc_res, ptr %smc_res, i32 0, i32 2
  %3 = getelementptr inbounds %struct.arm_smccc_res, ptr %smc_res, i32 0, i32 3
  %arginfo = getelementptr inbounds %struct.qcom_scm_desc, ptr %desc, i32 0, i32 2
  %4 = call ptr @memset(ptr %smc_res, i32 255, i32 16)
  %5 = ptrtoint ptr %arginfo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arginfo, align 8
  %and = and i32 %6, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp = icmp ugt i32 %and, 5
  br i1 %cmp, label %do.body2, label %do.end7, !prof !19

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/firmware/qcom_scm-legacy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 228, 0\0A.popsection", ""() #5, !srcloc !20
  unreachable

do.end7:                                          ; preds = %entry
  %7 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %desc, align 8
  %cmd = getelementptr inbounds %struct.qcom_scm_desc, ptr %desc, i32 0, i32 1
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cmd, align 4
  %11 = shl i32 %8, 22
  %and8 = shl i32 %10, 12
  %12 = and i32 %and8, 4190208
  %shl9 = or i32 %12, %11
  %or11 = or i32 %shl9, %and
  %or13 = or i32 %or11, 544
  %13 = ptrtoint ptr %context_id to i32
  %args = getelementptr inbounds %struct.qcom_scm_desc, ptr %desc, i32 0, i32 3
  %14 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %args, align 8
  %conv = trunc i64 %15 to i32
  %arrayidx15 = getelementptr %struct.qcom_scm_desc, ptr %desc, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx15, align 8
  %conv16 = trunc i64 %17 to i32
  %arrayidx18 = getelementptr %struct.qcom_scm_desc, ptr %desc, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx18, align 8
  %conv19 = trunc i64 %19 to i32
  %arrayidx21 = getelementptr %struct.qcom_scm_desc, ptr %desc, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx21, align 8
  %conv22 = trunc i64 %21 to i32
  %arrayidx24 = getelementptr %struct.qcom_scm_desc, ptr %desc, i32 0, i32 3, i32 4
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx24, align 8
  %conv25 = trunc i64 %23 to i32
  call void @__arm_smccc_smc(i32 noundef %or13, i32 noundef %13, i32 noundef %conv, i32 noundef %conv16, i32 noundef %conv19, i32 noundef %conv22, i32 noundef %conv25, i32 noundef 0, ptr noundef nonnull %smc_res, ptr noundef null) #5
  %tobool26.not = icmp eq ptr %res, null
  br i1 %tobool26.not, label %do.end7.if.end36_crit_edge, label %if.then27

do.end7.if.end36_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then27:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  %conv28 = zext i32 %25 to i64
  %26 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv28, ptr %res, align 8
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %2, align 4
  %conv30 = zext i32 %28 to i64
  %arrayidx32 = getelementptr [3 x i64], ptr %res, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv30, ptr %arrayidx32, align 8
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %3, align 4
  %conv33 = zext i32 %31 to i64
  %arrayidx35 = getelementptr [3 x i64], ptr %res, i32 0, i32 2
  %32 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv33, ptr %arrayidx35, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then27, %do.end7.if.end36_crit_edge
  %33 = ptrtoint ptr %smc_res to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %smc_res, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %smc_res) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %context_id) #5
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/firmware/qcom_scm-legacy.c", i32 18, i32 8}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @qcom_scm_lock, !5, !"qcom_scm_lock", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"auto-init"}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2153880933, i64 2153881432, i64 2153880970, i64 2153881026, i64 2153881060, i64 2153881084, i64 2153881125, i64 2153881146, i64 2153881174, i64 2153881208}
