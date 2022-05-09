; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_sync.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_sync.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.2, i64, i64, i32, %struct.kref, i32 }
%union.anon.2 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.amdgpu_sync_entry = type { %struct.hlist_node, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.amdgpu_sync = type { [16 x %struct.hlist_head], ptr }
%struct.dma_resv_iter = type { ptr, i8, ptr, i32, i32, ptr, i32, i8 }
%struct.dma_fence_chain = type { %struct.dma_fence, ptr, i64, ptr, %union.anon.96, %struct.spinlock }
%union.anon.96 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.21 }
%struct.llist_node = type { ptr }
%union.anon.21 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_sched_fence = type { %struct.dma_fence, %struct.dma_fence, ptr, ptr, %struct.spinlock, ptr }
%struct.amdgpu_ring = type { ptr, ptr, %struct.amdgpu_fence_driver, %struct.drm_gpu_scheduler, ptr, ptr, i32, i64, i64, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, ptr, i64, ptr, i64, i32, i8, i8, i32, i32, i64, [16 x i8], i32, i32, i64, ptr, i32, i64, ptr, i32, ptr, i8, i8, i32 }
%struct.amdgpu_fence_driver = type { i64, ptr, i32, %struct.atomic_t, i8, ptr, i32, %struct.timer_list, i32, %struct.spinlock, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }

@amdgpu_sync_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"amdgpu_sync\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dma-fence.h\00", [38 x i8] zeroinitializer }, align 32
@dma_fence_chain_ops = external dso_local constant %struct.dma_fence_ops, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"amdgpu_sync_slab\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 42, i32 27 }
@___asan_gen_.9 = private constant [44 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_sync.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 435, i32 3 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [29 x i8] c"../include/linux/dma-fence.h\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 475, i32 6 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @amdgpu_sync_slab, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_sync_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @amdgpu_sync_create(ptr nocapture noundef writeonly %sync) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %sync, i32 0, i32 68)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_sync_fence(ptr noundef %sync, ptr noundef %f) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %f, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %context.i = getelementptr inbounds %struct.dma_fence, ptr %f, i32 0, i32 3
  %0 = ptrtoint ptr %context.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %context.i, align 8
  %conv.i = trunc i64 %1 to i32
  %mul.i.i.i = mul i32 %conv.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 28
  %arrayidx.i = getelementptr [16 x %struct.hlist_head], ptr %sync, i32 0, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %e.0.in.i = phi ptr [ %arrayidx.i, %if.end ], [ %e.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %e.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %e.0.i = load ptr, ptr %e.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %e.0.i, null
  br i1 %tobool2.not.i, label %if.end2, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %fence.i = getelementptr inbounds %struct.amdgpu_sync_entry, ptr %e.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fence.i, align 4
  %context3.i = getelementptr inbounds %struct.dma_fence, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %context3.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %context3.i, align 8
  %cmp.not.i = icmp eq i64 %6, %1
  br i1 %cmp.not.i, label %amdgpu_sync_add_later.exit.thread, label %for.body.i.for.cond.i_crit_edge, !prof !20

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

amdgpu_sync_add_later.exit.thread:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %fence.i.le = getelementptr inbounds %struct.amdgpu_sync_entry, ptr %e.0.i, i32 0, i32 1
  tail call fastcc void @amdgpu_sync_keep_later(ptr noundef %fence.i.le, ptr noundef nonnull %f) #5
  br label %cleanup

if.end2:                                          ; preds = %for.cond.i
  %7 = load ptr, ptr @amdgpu_sync_slab, align 4
  %call3 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %7, i32 noundef 3264) #5
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %8 = ptrtoint ptr %context.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %context.i, align 8
  %conv = trunc i64 %9 to i32
  %mul.i.i = mul i32 %conv, 1640531527
  %shr.i = lshr i32 %mul.i.i, 28
  %arrayidx = getelementptr [16 x %struct.hlist_head], ptr %sync, i32 0, i32 %shr.i
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %11, ptr %call3, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end6.if.then.i_crit_edge, label %do.body12.i

if.end6.if.then.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

do.body12.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call3, ptr %pprev.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %do.body12.i, %if.end6.if.then.i_crit_edge
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call3, ptr %arrayidx, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call3, i32 0, i32 1
  %15 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %arrayidx, ptr %pprev34.i, align 4
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %f, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #5
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #5, !srcloc !21
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !22

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %17 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !20

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #5
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge
  %fence = getelementptr inbounds %struct.amdgpu_sync_entry, ptr %call3, i32 0, i32 1
  %18 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %f, ptr %fence, align 8
  br label %cleanup

cleanup:                                          ; preds = %dma_fence_get.exit, %if.end2.cleanup_crit_edge, %amdgpu_sync_add_later.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dma_fence_get.exit ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ], [ 0, %amdgpu_sync_add_later.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_sync_vm_fence(ptr noundef %sync, ptr noundef %fence) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fence, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %last_vm_update = getelementptr inbounds %struct.amdgpu_sync, ptr %sync, i32 0, i32 1
  tail call fastcc void @amdgpu_sync_keep_later(ptr noundef %last_vm_update, ptr noundef nonnull %fence)
  %call = tail call i32 @amdgpu_sync_fence(ptr noundef %sync, ptr noundef nonnull %fence)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_sync_keep_later(ptr nocapture noundef %keep, ptr noundef %fence) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %keep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %keep, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.dma_fence_put.exit_crit_edge, label %land.lhs.true

entry.dma_fence_put.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_put.exit

land.lhs.true:                                    ; preds = %entry
  %context.i = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %context.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %context.i, align 8
  %context1.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 3
  %4 = ptrtoint ptr %context1.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %context1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %5)
  %cmp.not.i = icmp eq i64 %3, %5
  br i1 %cmp.not.i, label %dma_fence_is_later.exit, label %dma_fence_is_later.exit.thread, !prof !20

dma_fence_is_later.exit.thread:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 475, i32 noundef 9, ptr noundef null) #5
  br label %if.end

dma_fence_is_later.exit:                          ; preds = %land.lhs.true
  %seqno.i = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %seqno.i, align 8
  %seqno23.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 4
  %8 = ptrtoint ptr %seqno23.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %seqno23.i, align 8
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp.i.i = icmp ugt i64 %7, %9
  %conv.i.i = trunc i64 %7 to i32
  %conv2.i.i = trunc i64 %9 to i32
  %sub.i.i = sub i32 %conv.i.i, %conv2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp3.i.i = icmp sgt i32 %sub.i.i, 0
  %retval.0.i.i = select i1 %tobool.not.i.i, i1 %cmp3.i.i, i1 %cmp.i.i
  br i1 %retval.0.i.i, label %dma_fence_is_later.exit.return_crit_edge, label %dma_fence_is_later.exit.if.end_crit_edge

dma_fence_is_later.exit.if.end_crit_edge:         ; preds = %dma_fence_is_later.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

dma_fence_is_later.exit.return_crit_edge:         ; preds = %dma_fence_is_later.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %dma_fence_is_later.exit.if.end_crit_edge, %dma_fence_is_later.exit.thread
  %14 = ptrtoint ptr %keep to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load ptr, ptr %keep, align 4
  %tobool.not.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i, label %if.end.dma_fence_put.exit_crit_edge, label %if.then.i

if.end.dma_fence_put.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %.pr, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #5
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #5, !srcloc !25
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !20

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #5
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @dma_fence_release(ptr noundef %refcount.i) #5
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %if.end.dma_fence_put.exit_crit_edge, %entry.dma_fence_put.exit_crit_edge
  %tobool.not.i6 = icmp eq ptr %fence, null
  br i1 %tobool.not.i6, label %dma_fence_put.exit.dma_fence_get.exit_crit_edge, label %if.then.i9

dma_fence_put.exit.dma_fence_get.exit_crit_edge:  ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_get.exit

if.then.i9:                                       ; preds = %dma_fence_put.exit
  %refcount.i7 = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 6
  %call.i.i.i.i.i.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i7, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %refcount.i7, i32 1, i32 3, i32 1) #5
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i7, ptr %refcount.i7, i32 1, ptr elementtype(i32) %refcount.i7) #5, !srcloc !21
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i9.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !22

if.then.i9.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i9
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %17 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i.i10 = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i.i10, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !20

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i9.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i9.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i7, i32 noundef %.sink.i.i.i.i.i) #5
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %dma_fence_put.exit.dma_fence_get.exit_crit_edge
  %18 = ptrtoint ptr %keep to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %fence, ptr %keep, align 4
  br label %return

return:                                           ; preds = %dma_fence_get.exit, %dma_fence_is_later.exit.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_sync_resv(ptr noundef readnone %adev, ptr noundef %sync, ptr noundef %resv, i32 noundef %mode, ptr noundef readnone %owner) local_unnamed_addr #1 align 64 {
entry:
  %cursor = alloca %struct.dma_resv_iter, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cursor) #5
  %0 = getelementptr inbounds i8, ptr %cursor, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 28)
  %cmp = icmp eq ptr %resv, null
  br i1 %cmp, label %entry.cleanup18_crit_edge, label %if.end

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup18

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %cursor to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %resv, ptr %cursor, align 4
  %all_fences2.i = getelementptr inbounds %struct.dma_resv_iter, ptr %cursor, i32 0, i32 1
  %3 = ptrtoint ptr %all_fences2.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %all_fences2.i, align 4
  %fence.i = getelementptr inbounds %struct.dma_resv_iter, ptr %cursor, i32 0, i32 2
  %4 = ptrtoint ptr %fence.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %fence.i, align 4
  %call = call ptr @dma_resv_iter_first(ptr noundef nonnull %cursor) #5
  %tobool.not54 = icmp eq ptr %call, null
  br i1 %tobool.not54, label %if.end.cleanup18_crit_edge, label %if.then.i.lr.ph

if.end.cleanup18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup18

if.then.i.lr.ph:                                  ; preds = %if.end
  %cmp7.not.old.i = icmp eq ptr %owner, null
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc15.if.then.i_crit_edge, %if.then.i.lr.ph
  %f.055 = phi ptr [ %call, %if.then.i.lr.ph ], [ %call16, %for.inc15.if.then.i_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %f.055, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #5
  %5 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #5, !srcloc !21
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !22

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.to_dma_fence_chain.exit.preheader_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !20

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.to_dma_fence_chain.exit.preheader_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %to_dma_fence_chain.exit.preheader

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #5
  br label %to_dma_fence_chain.exit.preheader

to_dma_fence_chain.exit.preheader:                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.to_dma_fence_chain.exit.preheader_crit_edge
  br label %to_dma_fence_chain.exit

to_dma_fence_chain.exit:                          ; preds = %for.inc.to_dma_fence_chain.exit_crit_edge, %to_dma_fence_chain.exit.preheader
  %f.152 = phi ptr [ %call14, %for.inc.to_dma_fence_chain.exit_crit_edge ], [ %f.055, %to_dma_fence_chain.exit.preheader ]
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %f.152, i32 0, i32 1
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %cmp.not.i.not = icmp eq ptr %8, @dma_fence_chain_ops
  br i1 %cmp.not.i.not, label %cond.end, label %to_dma_fence_chain.exit.if.end.i.i_crit_edge

to_dma_fence_chain.exit.if.end.i.i_crit_edge:     ; preds = %to_dma_fence_chain.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

cond.end:                                         ; preds = %to_dma_fence_chain.exit
  %fence = getelementptr inbounds %struct.dma_fence_chain, ptr %f.152, i32 0, i32 3
  %9 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fence, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %cond.end.amdgpu_sync_get_owner.exit.i_crit_edge, label %cond.end.if.end.i.i_crit_edge

cond.end.if.end.i.i_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

cond.end.amdgpu_sync_get_owner.exit.i_crit_edge:  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %amdgpu_sync_get_owner.exit.i

if.end.i.i:                                       ; preds = %cond.end.if.end.i.i_crit_edge, %to_dma_fence_chain.exit.if.end.i.i_crit_edge
  %cond40 = phi ptr [ %10, %cond.end.if.end.i.i_crit_edge ], [ %f.152, %to_dma_fence_chain.exit.if.end.i.i_crit_edge ]
  %call.i.i = call ptr @to_drm_sched_fence(ptr noundef nonnull %cond40) #5
  %tobool1.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.amdgpu_sync_get_owner.exit.i_crit_edge, label %if.then2.i.i

if.end.i.i.amdgpu_sync_get_owner.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %amdgpu_sync_get_owner.exit.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %owner.i.i = getelementptr inbounds %struct.drm_sched_fence, ptr %call.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %owner.i.i, align 4
  br label %amdgpu_sync_get_owner.exit.i

amdgpu_sync_get_owner.exit.i:                     ; preds = %if.then2.i.i, %if.end.i.i.amdgpu_sync_get_owner.exit.i_crit_edge, %cond.end.amdgpu_sync_get_owner.exit.i_crit_edge
  %cond41 = phi ptr [ %cond40, %if.then2.i.i ], [ null, %cond.end.amdgpu_sync_get_owner.exit.i_crit_edge ], [ %cond40, %if.end.i.i.amdgpu_sync_get_owner.exit.i_crit_edge ]
  %retval.0.i.i = phi ptr [ %12, %if.then2.i.i ], [ null, %cond.end.amdgpu_sync_get_owner.exit.i_crit_edge ], [ null, %if.end.i.i.amdgpu_sync_get_owner.exit.i_crit_edge ]
  %magicptr57.i = ptrtoint ptr %retval.0.i.i to i32
  %13 = zext i32 %magicptr57.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr57.i, label %amdgpu_sync_get_owner.exit.i.if.end9.i_crit_edge [
    i32 0, label %amdgpu_sync_get_owner.exit.i.if.then.i36_crit_edge
    i32 2, label %land.lhs.true.i
    i32 1, label %land.lhs.true6.i
  ]

amdgpu_sync_get_owner.exit.i.if.then.i36_crit_edge: ; preds = %amdgpu_sync_get_owner.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i36

amdgpu_sync_get_owner.exit.i.if.end9.i_crit_edge: ; preds = %amdgpu_sync_get_owner.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %amdgpu_sync_get_owner.exit.i
  br i1 %cmp7.not.old.i, label %land.lhs.true.i.if.end9.i_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true6.i:                                 ; preds = %amdgpu_sync_get_owner.exit.i
  br i1 %cmp7.not.old.i, label %land.lhs.true6.i.if.end9.i_crit_edge, label %land.lhs.true6.i.for.inc_crit_edge

land.lhs.true6.i.for.inc_crit_edge:               ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true6.i.if.end9.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.end9.i:                                        ; preds = %land.lhs.true6.i.if.end9.i_crit_edge, %land.lhs.true.i.if.end9.i_crit_edge, %amdgpu_sync_get_owner.exit.i.if.end9.i_crit_edge
  %14 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %mode, label %if.end9.i.if.then.i36_crit_edge [
    i32 3, label %if.end9.i.for.inc_crit_edge
    i32 1, label %sw.bb10.i
    i32 2, label %sw.bb16.i
  ]

if.end9.i.for.inc_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end9.i.if.then.i36_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i36

sw.bb10.i:                                        ; preds = %if.end9.i
  %call.i60.i = call ptr @to_drm_sched_fence(ptr noundef %cond41) #5
  %tobool.not.i61.i = icmp eq ptr %call.i60.i, null
  br i1 %tobool.not.i61.i, label %sw.bb10.i.if.then.i36_crit_edge, label %amdgpu_sync_same_dev.exit.i

sw.bb10.i.if.then.i36_crit_edge:                  ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i36

amdgpu_sync_same_dev.exit.i:                      ; preds = %sw.bb10.i
  %sched.i.i = getelementptr inbounds %struct.drm_sched_fence, ptr %call.i60.i, i32 0, i32 3
  %15 = ptrtoint ptr %sched.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sched.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 -144
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i.i, align 8
  %cmp.i.i = icmp eq ptr %18, %adev
  %cmp13.i = icmp eq ptr %retval.0.i.i, %owner
  %or.cond58.i = select i1 %cmp.i.i, i1 %cmp13.i, i1 false
  br i1 %or.cond58.i, label %amdgpu_sync_same_dev.exit.i.for.inc_crit_edge, label %amdgpu_sync_same_dev.exit.i.if.then.i36_crit_edge

amdgpu_sync_same_dev.exit.i.if.then.i36_crit_edge: ; preds = %amdgpu_sync_same_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i36

amdgpu_sync_same_dev.exit.i.for.inc_crit_edge:    ; preds = %amdgpu_sync_same_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb16.i:                                        ; preds = %if.end9.i
  %call.i63.i = call ptr @to_drm_sched_fence(ptr noundef %cond41) #5
  %tobool.not.i64.i = icmp eq ptr %call.i63.i, null
  br i1 %tobool.not.i64.i, label %sw.bb16.i.if.then.i36_crit_edge, label %amdgpu_sync_same_dev.exit70.i

sw.bb16.i.if.then.i36_crit_edge:                  ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i36

amdgpu_sync_same_dev.exit70.i:                    ; preds = %sw.bb16.i
  %sched.i65.i = getelementptr inbounds %struct.drm_sched_fence, ptr %call.i63.i, i32 0, i32 3
  %19 = ptrtoint ptr %sched.i65.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sched.i65.i, align 4
  %add.ptr.i66.i = getelementptr i8, ptr %20, i32 -144
  %21 = ptrtoint ptr %add.ptr.i66.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i66.i, align 8
  %cmp.i67.i = icmp ne ptr %22, %adev
  %cmp19.not.i = icmp eq ptr %retval.0.i.i, %owner
  %or.cond59.i = select i1 %cmp.i67.i, i1 true, i1 %cmp19.not.i
  br i1 %or.cond59.i, label %amdgpu_sync_same_dev.exit70.i.if.then.i36_crit_edge, label %amdgpu_sync_same_dev.exit70.i.for.inc_crit_edge

amdgpu_sync_same_dev.exit70.i.for.inc_crit_edge:  ; preds = %amdgpu_sync_same_dev.exit70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

amdgpu_sync_same_dev.exit70.i.if.then.i36_crit_edge: ; preds = %amdgpu_sync_same_dev.exit70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i36

if.then.i36:                                      ; preds = %amdgpu_sync_same_dev.exit70.i.if.then.i36_crit_edge, %sw.bb16.i.if.then.i36_crit_edge, %amdgpu_sync_same_dev.exit.i.if.then.i36_crit_edge, %sw.bb10.i.if.then.i36_crit_edge, %if.end9.i.if.then.i36_crit_edge, %amdgpu_sync_get_owner.exit.i.if.then.i36_crit_edge
  %call9 = call i32 @amdgpu_sync_fence(ptr noundef %sync, ptr noundef nonnull %f.152)
  %refcount.i34 = getelementptr inbounds %struct.dma_fence, ptr %f.152, i32 0, i32 6
  %call.i.i.i.i.i.i.i35 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i34, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !24
  call void @llvm.prefetch.p0(ptr %refcount.i34, i32 1, i32 3, i32 1) #5
  %23 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i34, ptr %refcount.i34, i32 1, ptr elementtype(i32) %refcount.i34) #5, !srcloc !25
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i37 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i37, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !20

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef %refcount.i34, i32 noundef 3) #5
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !26
  call void @dma_fence_release(ptr noundef %refcount.i34) #5
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %dma_fence_put.exit.for.inc15_crit_edge, label %dma_fence_put.exit.cleanup18_crit_edge

dma_fence_put.exit.cleanup18_crit_edge:           ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup18

dma_fence_put.exit.for.inc15_crit_edge:           ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc15

for.inc:                                          ; preds = %amdgpu_sync_same_dev.exit70.i.for.inc_crit_edge, %amdgpu_sync_same_dev.exit.i.for.inc_crit_edge, %if.end9.i.for.inc_crit_edge, %land.lhs.true6.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge
  %call14 = call ptr @dma_fence_chain_walk(ptr noundef nonnull %f.152) #5
  %tobool3.not = icmp eq ptr %call14, null
  br i1 %tobool3.not, label %for.inc.for.inc15_crit_edge, label %for.inc.to_dma_fence_chain.exit_crit_edge

for.inc.to_dma_fence_chain.exit_crit_edge:        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %to_dma_fence_chain.exit

for.inc.for.inc15_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc15

for.inc15:                                        ; preds = %for.inc.for.inc15_crit_edge, %dma_fence_put.exit.for.inc15_crit_edge
  %call16 = call ptr @dma_resv_iter_next(ptr noundef nonnull %cursor) #5
  %tobool.not = icmp eq ptr %call16, null
  br i1 %tobool.not, label %for.inc15.cleanup18_crit_edge, label %for.inc15.if.then.i_crit_edge

for.inc15.if.then.i_crit_edge:                    ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

for.inc15.cleanup18_crit_edge:                    ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup18

cleanup18:                                        ; preds = %for.inc15.cleanup18_crit_edge, %dma_fence_put.exit.cleanup18_crit_edge, %if.end.cleanup18_crit_edge, %entry.cleanup18_crit_edge
  %retval.4 = phi i32 [ -22, %entry.cleanup18_crit_edge ], [ 0, %if.end.cleanup18_crit_edge ], [ 0, %for.inc15.cleanup18_crit_edge ], [ %call9, %dma_fence_put.exit.cleanup18_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cursor) #5
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_resv_iter_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_fence_chain_walk(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_resv_iter_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @amdgpu_sync_peek_fence(ptr nocapture noundef readonly %sync, ptr noundef readnone %ring) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool13.not = icmp eq ptr %ring, null
  %sched16 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc36.for.body_crit_edge, %entry
  %i.087 = phi i32 [ 0, %entry ], [ %inc, %for.inc36.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.hlist_head], ptr %sync, i32 0, i32 %i.087
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool5.not84 = icmp eq ptr %1, null
  br i1 %tobool5.not84, label %for.body.for.inc36_crit_edge, label %for.body.land.rhs6_crit_edge

for.body.land.rhs6_crit_edge:                     ; preds = %for.body
  br label %land.rhs6

for.body.for.inc36_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc36

land.rhs6:                                        ; preds = %for.inc.land.rhs6_crit_edge, %for.body.land.rhs6_crit_edge
  %e.185 = phi ptr [ %3, %for.inc.land.rhs6_crit_edge ], [ %1, %for.body.land.rhs6_crit_edge ]
  %2 = ptrtoint ptr %e.185 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %e.185, align 4
  %fence = getelementptr inbounds %struct.amdgpu_sync_entry, ptr %e.185, i32 0, i32 1
  %4 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fence, align 4
  %call = tail call ptr @to_drm_sched_fence(ptr noundef %5) #5
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.rhs6.if.then_crit_edge

land.rhs6.if.then_crit_edge:                      ; preds = %land.rhs6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.end.i:                                         ; preds = %land.rhs6
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = tail call zeroext i1 %11(ptr noundef %5) #5
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = tail call i32 @dma_fence_signal(ptr noundef %5) #5
  br label %if.then

if.then:                                          ; preds = %if.then5.i, %land.rhs6.if.then_crit_edge
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %e.185, i32 0, i32 1
  %12 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.not.i.i, label %if.then.hash_del.exit_crit_edge, label %if.then.i.i

if.then.hash_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %if.then
  %14 = ptrtoint ptr %e.185 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %e.185, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %15, ptr %13, align 4
  %tobool.not.i3.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %13, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %18 = ptrtoint ptr %e.185 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %e.185, align 4
  %19 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %if.then.hash_del.exit_crit_edge
  %tobool.not.i61 = icmp eq ptr %5, null
  br i1 %tobool.not.i61, label %hash_del.exit.dma_fence_put.exit_crit_edge, label %if.then.i

hash_del.exit.dma_fence_put.exit_crit_edge:       ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %hash_del.exit
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #5
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #5, !srcloc !25
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i62, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !20

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #5
  br label %dma_fence_put.exit

if.then.i.i62:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @dma_fence_release(ptr noundef %refcount.i) #5
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i62, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %hash_del.exit.dma_fence_put.exit_crit_edge
  %21 = load ptr, ptr @amdgpu_sync_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %21, ptr noundef nonnull %e.185) #5
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %tobool14.not = icmp eq ptr %call, null
  %or.cond59 = select i1 %tobool13.not, i1 true, i1 %tobool14.not
  br i1 %or.cond59, label %if.end.cleanup38_crit_edge, label %if.then15

if.end.cleanup38_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup38

if.then15:                                        ; preds = %if.end
  %sched = getelementptr inbounds %struct.drm_sched_fence, ptr %call, i32 0, i32 3
  %22 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sched, align 4
  %cmp17 = icmp eq ptr %23, %sched16
  br i1 %cmp17, label %if.then18, label %if.then15.cleanup38_crit_edge

if.then15.cleanup38_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup38

if.then18:                                        ; preds = %if.then15
  %flags.i64 = getelementptr inbounds %struct.dma_fence, ptr %call, i32 0, i32 5
  %24 = ptrtoint ptr %flags.i64 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags.i64, align 4
  %and1.i.i65 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i65)
  %tobool.not.i66 = icmp eq i32 %and1.i.i65, 0
  br i1 %tobool.not.i66, label %if.end.i70, label %if.then18.for.inc_crit_edge

if.then18.for.inc_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end.i70:                                       ; preds = %if.then18
  %ops.i67 = getelementptr inbounds %struct.dma_fence, ptr %call, i32 0, i32 1
  %26 = ptrtoint ptr %ops.i67 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i67, align 4
  %signaled.i68 = getelementptr inbounds %struct.dma_fence_ops, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %signaled.i68 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %signaled.i68, align 4
  %tobool1.not.i69 = icmp eq ptr %29, null
  br i1 %tobool1.not.i69, label %if.end.i70.cleanup38_crit_edge, label %land.lhs.true.i72

if.end.i70.cleanup38_crit_edge:                   ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup38

land.lhs.true.i72:                                ; preds = %if.end.i70
  %call4.i71 = tail call zeroext i1 %29(ptr noundef nonnull %call) #5
  br i1 %call4.i71, label %if.then5.i74, label %land.lhs.true.i72.cleanup38_crit_edge

land.lhs.true.i72.cleanup38_crit_edge:            ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup38

if.then5.i74:                                     ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i73 = tail call i32 @dma_fence_signal(ptr noundef nonnull %call) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then5.i74, %if.then18.for.inc_crit_edge, %dma_fence_put.exit
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %for.inc.for.inc36_crit_edge, label %for.inc.land.rhs6_crit_edge

for.inc.land.rhs6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs6

for.inc.for.inc36_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc36

for.inc36:                                        ; preds = %for.inc.for.inc36_crit_edge, %for.body.for.inc36_crit_edge
  %inc = add nuw nsw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc36.cleanup38_crit_edge, label %for.inc36.for.body_crit_edge

for.inc36.for.body_crit_edge:                     ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc36.cleanup38_crit_edge:                    ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup38

cleanup38:                                        ; preds = %for.inc36.cleanup38_crit_edge, %land.lhs.true.i72.cleanup38_crit_edge, %if.end.i70.cleanup38_crit_edge, %if.then15.cleanup38_crit_edge, %if.end.cleanup38_crit_edge
  %retval.3 = phi ptr [ %5, %if.then15.cleanup38_crit_edge ], [ %5, %if.end.cleanup38_crit_edge ], [ %call, %if.end.i70.cleanup38_crit_edge ], [ %call, %land.lhs.true.i72.cleanup38_crit_edge ], [ null, %for.inc36.cleanup38_crit_edge ]
  ret ptr %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @to_drm_sched_fence(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @amdgpu_sync_get_fence(ptr nocapture noundef readonly %sync) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc22.for.body_crit_edge, %entry
  %i.048 = phi i32 [ 0, %entry ], [ %inc, %for.inc22.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.hlist_head], ptr %sync, i32 0, i32 %i.048
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool5.not45 = icmp eq ptr %1, null
  br i1 %tobool5.not45, label %for.body.for.inc22_crit_edge, label %for.body.land.rhs6_crit_edge

for.body.land.rhs6_crit_edge:                     ; preds = %for.body
  br label %land.rhs6

for.body.for.inc22_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc22

land.rhs6:                                        ; preds = %dma_fence_put.exit.land.rhs6_crit_edge, %for.body.land.rhs6_crit_edge
  %e.146 = phi ptr [ %3, %dma_fence_put.exit.land.rhs6_crit_edge ], [ %1, %for.body.land.rhs6_crit_edge ]
  %2 = ptrtoint ptr %e.146 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %e.146, align 4
  %fence = getelementptr inbounds %struct.amdgpu_sync_entry, ptr %e.146, i32 0, i32 1
  %4 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fence, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %e.146, i32 0, i32 1
  %6 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.not.i.i, label %land.rhs6.hash_del.exit_crit_edge, label %if.then.i.i

land.rhs6.hash_del.exit_crit_edge:                ; preds = %land.rhs6
  call void @__sanitizer_cov_trace_pc() #7
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %land.rhs6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %3, ptr %7, align 4
  %tobool.not.i3.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %10 = ptrtoint ptr %e.146 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %e.146, align 4
  %11 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %land.rhs6.hash_del.exit_crit_edge
  %12 = load ptr, ptr @amdgpu_sync_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %12, ptr noundef nonnull %e.146) #5
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 5
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %hash_del.exit.if.end_crit_edge

hash_del.exit.if.end_crit_edge:                   ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %hash_del.exit
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %land.lhs.true.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = tail call zeroext i1 %18(ptr noundef %5) #5
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = tail call i32 @dma_fence_signal(ptr noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then5.i, %hash_del.exit.if.end_crit_edge
  %tobool.not.i40 = icmp eq ptr %5, null
  br i1 %tobool.not.i40, label %if.end.dma_fence_put.exit_crit_edge, label %if.then.i

if.end.dma_fence_put.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #5
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #5, !srcloc !25
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i41, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !20

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #5
  br label %dma_fence_put.exit

if.then.i.i41:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @dma_fence_release(ptr noundef %refcount.i) #5
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i41, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %if.end.dma_fence_put.exit_crit_edge
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %dma_fence_put.exit.for.inc22_crit_edge, label %dma_fence_put.exit.land.rhs6_crit_edge

dma_fence_put.exit.land.rhs6_crit_edge:           ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs6

dma_fence_put.exit.for.inc22_crit_edge:           ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc22

for.inc22:                                        ; preds = %dma_fence_put.exit.for.inc22_crit_edge, %for.body.for.inc22_crit_edge
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc22.cleanup_crit_edge, label %for.inc22.for.body_crit_edge

for.inc22.for.body_crit_edge:                     ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc22.cleanup_crit_edge:                      ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc22.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %5, %if.end.i.cleanup_crit_edge ], [ %5, %land.lhs.true.i.cleanup_crit_edge ], [ null, %for.inc22.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_sync_clone(ptr nocapture noundef readonly %source, ptr noundef %clone) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc26.for.body_crit_edge, %entry
  %i.077 = phi i32 [ 0, %entry ], [ %inc, %for.inc26.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.hlist_head], ptr %source, i32 0, i32 %i.077
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool5.not74 = icmp eq ptr %1, null
  br i1 %tobool5.not74, label %for.body.for.inc26_crit_edge, label %for.body.land.rhs6_crit_edge

for.body.land.rhs6_crit_edge:                     ; preds = %for.body
  br label %land.rhs6

for.body.for.inc26_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc26

land.rhs6:                                        ; preds = %for.inc.land.rhs6_crit_edge, %for.body.land.rhs6_crit_edge
  %e.175 = phi ptr [ %3, %for.inc.land.rhs6_crit_edge ], [ %1, %for.body.land.rhs6_crit_edge ]
  %2 = ptrtoint ptr %e.175 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %e.175, align 4
  %fence = getelementptr inbounds %struct.amdgpu_sync_entry, ptr %e.175, i32 0, i32 1
  %4 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fence, align 4
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.rhs6.if.else_crit_edge

land.rhs6.if.else_crit_edge:                      ; preds = %land.rhs6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.end.i:                                         ; preds = %land.rhs6
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %if.end.i.if.then_crit_edge, label %land.lhs.true.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = tail call zeroext i1 %11(ptr noundef %5) #5
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i.if.then_crit_edge

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = tail call i32 @dma_fence_signal(ptr noundef %5) #5
  br label %if.else

if.then:                                          ; preds = %land.lhs.true.i.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %call11 = tail call i32 @amdgpu_sync_fence(ptr noundef %clone, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then.for.inc_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.else:                                          ; preds = %if.then5.i, %land.rhs6.if.else_crit_edge
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %e.175, i32 0, i32 1
  %12 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.not.i.i, label %if.else.hash_del.exit_crit_edge, label %if.then.i.i

if.else.hash_del.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %if.else
  %14 = ptrtoint ptr %e.175 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %e.175, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %15, ptr %13, align 4
  %tobool.not.i3.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %13, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %18 = ptrtoint ptr %e.175 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %e.175, align 4
  %19 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %if.else.hash_del.exit_crit_edge
  %tobool.not.i52 = icmp eq ptr %5, null
  br i1 %tobool.not.i52, label %hash_del.exit.dma_fence_put.exit_crit_edge, label %if.then.i

hash_del.exit.dma_fence_put.exit_crit_edge:       ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %hash_del.exit
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #5
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #5, !srcloc !25
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i53, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !20

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #5
  br label %dma_fence_put.exit

if.then.i.i53:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @dma_fence_release(ptr noundef %refcount.i) #5
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i53, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %hash_del.exit.dma_fence_put.exit_crit_edge
  %21 = load ptr, ptr @amdgpu_sync_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %21, ptr noundef nonnull %e.175) #5
  br label %for.inc

for.inc:                                          ; preds = %dma_fence_put.exit, %if.then.for.inc_crit_edge
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %for.inc.for.inc26_crit_edge, label %for.inc.land.rhs6_crit_edge

for.inc.land.rhs6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs6

for.inc.for.inc26_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc26

for.inc26:                                        ; preds = %for.inc.for.inc26_crit_edge, %for.body.for.inc26_crit_edge
  %inc = add nuw nsw i32 %i.077, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end27, label %for.inc26.for.body_crit_edge

for.inc26.for.body_crit_edge:                     ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end27:                                        ; preds = %for.inc26
  %last_vm_update = getelementptr inbounds %struct.amdgpu_sync, ptr %clone, i32 0, i32 1
  %22 = ptrtoint ptr %last_vm_update to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %last_vm_update, align 4
  %tobool.not.i55 = icmp eq ptr %23, null
  br i1 %tobool.not.i55, label %for.end27.dma_fence_put.exit66_crit_edge, label %if.then.i60

for.end27.dma_fence_put.exit66_crit_edge:         ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_put.exit66

if.then.i60:                                      ; preds = %for.end27
  %refcount.i56 = getelementptr inbounds %struct.dma_fence, ptr %23, i32 0, i32 6
  %call.i.i.i.i.i.i.i57 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i56, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @llvm.prefetch.p0(ptr %refcount.i56, i32 1, i32 3, i32 1) #5
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i56, ptr %refcount.i56, i32 1, ptr elementtype(i32) %refcount.i56) #5, !srcloc !25
  %asmresult.i.i.i.i.i.i.i.i58 = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i58)
  %cmp.i.i.i.i.i59 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i58, 1
  br i1 %cmp.i.i.i.i.i59, label %if.then.i.i64, label %if.end5.i.i.i.i.i62

if.end5.i.i.i.i.i62:                              ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i58)
  %.not.i.i.i.i.i61 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i58, 0
  br i1 %.not.i.i.i.i.i61, label %if.end5.i.i.i.i.i62.dma_fence_put.exit66_crit_edge, label %if.then10.i.i.i.i.i63, !prof !20

if.end5.i.i.i.i.i62.dma_fence_put.exit66_crit_edge: ; preds = %if.end5.i.i.i.i.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_put.exit66

if.then10.i.i.i.i.i63:                            ; preds = %if.end5.i.i.i.i.i62
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i56, i32 noundef 3) #5
  br label %dma_fence_put.exit66

if.then.i.i64:                                    ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @dma_fence_release(ptr noundef %refcount.i56) #5
  br label %dma_fence_put.exit66

dma_fence_put.exit66:                             ; preds = %if.then.i.i64, %if.then10.i.i.i.i.i63, %if.end5.i.i.i.i.i62.dma_fence_put.exit66_crit_edge, %for.end27.dma_fence_put.exit66_crit_edge
  %last_vm_update28 = getelementptr inbounds %struct.amdgpu_sync, ptr %source, i32 0, i32 1
  %25 = ptrtoint ptr %last_vm_update28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %last_vm_update28, align 4
  %tobool.not.i67 = icmp eq ptr %26, null
  br i1 %tobool.not.i67, label %dma_fence_put.exit66.dma_fence_get.exit_crit_edge, label %if.then.i70

dma_fence_put.exit66.dma_fence_get.exit_crit_edge: ; preds = %dma_fence_put.exit66
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_get.exit

if.then.i70:                                      ; preds = %dma_fence_put.exit66
  %refcount.i68 = getelementptr inbounds %struct.dma_fence, ptr %26, i32 0, i32 6
  %call.i.i.i.i.i.i.i69 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i68, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %refcount.i68, i32 1, i32 3, i32 1) #5
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i68, ptr %refcount.i68, i32 1, ptr elementtype(i32) %refcount.i68) #5, !srcloc !21
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i70.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !22

if.then.i70.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i70
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %28 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %.not.i.i.i.i.i71 = icmp sgt i32 %28, -1
  br i1 %.not.i.i.i.i.i71, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !20

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i70.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i70.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i68, i32 noundef %.sink.i.i.i.i.i) #5
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %dma_fence_put.exit66.dma_fence_get.exit_crit_edge
  %29 = ptrtoint ptr %last_vm_update to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %last_vm_update, align 4
  br label %cleanup

cleanup:                                          ; preds = %dma_fence_get.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dma_fence_get.exit ], [ %call11, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_sync_wait(ptr nocapture noundef readonly %sync, i1 noundef zeroext %intr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc25.for.body_crit_edge, %entry
  %i.048 = phi i32 [ 0, %entry ], [ %inc, %for.inc25.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.hlist_head], ptr %sync, i32 0, i32 %i.048
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool5.not45 = icmp eq ptr %1, null
  br i1 %tobool5.not45, label %for.body.for.inc25_crit_edge, label %for.body.land.rhs6_crit_edge

for.body.land.rhs6_crit_edge:                     ; preds = %for.body
  br label %land.rhs6

for.body.for.inc25_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc25

land.rhs6:                                        ; preds = %dma_fence_put.exit.land.rhs6_crit_edge, %for.body.land.rhs6_crit_edge
  %e.146 = phi ptr [ %3, %dma_fence_put.exit.land.rhs6_crit_edge ], [ %1, %for.body.land.rhs6_crit_edge ]
  %2 = ptrtoint ptr %e.146 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %e.146, align 4
  %fence = getelementptr inbounds %struct.amdgpu_sync_entry, ptr %e.146, i32 0, i32 1
  %4 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fence, align 4
  %call.i = tail call i32 @dma_fence_wait_timeout(ptr noundef %5, i1 noundef zeroext %intr, i32 noundef 2147483647) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool12.not = icmp sgt i32 %call.i, -1
  br i1 %tobool12.not, label %if.end, label %land.rhs6.cleanup_crit_edge

land.rhs6.cleanup_crit_edge:                      ; preds = %land.rhs6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.rhs6
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %e.146, i32 0, i32 1
  %6 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.not.i.i, label %if.end.hash_del.exit_crit_edge, label %if.then.i.i

if.end.hash_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %if.end
  %8 = ptrtoint ptr %e.146 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %e.146, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %9, ptr %7, align 4
  %tobool.not.i3.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %7, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %12 = ptrtoint ptr %e.146 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %e.146, align 4
  %13 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %if.end.hash_del.exit_crit_edge
  %14 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fence, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %hash_del.exit.dma_fence_put.exit_crit_edge, label %if.then.i

hash_del.exit.dma_fence_put.exit_crit_edge:       ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %hash_del.exit
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %15, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #5
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #5, !srcloc !25
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i43, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !20

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #5
  br label %dma_fence_put.exit

if.then.i.i43:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @dma_fence_release(ptr noundef %refcount.i) #5
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i43, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %hash_del.exit.dma_fence_put.exit_crit_edge
  %17 = load ptr, ptr @amdgpu_sync_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %17, ptr noundef nonnull %e.146) #5
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %dma_fence_put.exit.for.inc25_crit_edge, label %dma_fence_put.exit.land.rhs6_crit_edge

dma_fence_put.exit.land.rhs6_crit_edge:           ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs6

dma_fence_put.exit.for.inc25_crit_edge:           ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc25

for.inc25:                                        ; preds = %dma_fence_put.exit.for.inc25_crit_edge, %for.body.for.inc25_crit_edge
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc25.cleanup_crit_edge, label %for.inc25.for.body_crit_edge

for.inc25.for.body_crit_edge:                     ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc25.cleanup_crit_edge:                      ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc25.cleanup_crit_edge, %land.rhs6.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %land.rhs6.cleanup_crit_edge ], [ 0, %for.inc25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_sync_free(ptr nocapture noundef readonly %sync) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc22.for.body_crit_edge, %entry
  %i.050 = phi i32 [ 0, %entry ], [ %inc, %for.inc22.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.hlist_head], ptr %sync, i32 0, i32 %i.050
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool5.not47 = icmp eq ptr %1, null
  br i1 %tobool5.not47, label %for.body.for.inc22_crit_edge, label %for.body.land.rhs6_crit_edge

for.body.land.rhs6_crit_edge:                     ; preds = %for.body
  br label %land.rhs6

for.body.for.inc22_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc22

land.rhs6:                                        ; preds = %dma_fence_put.exit.land.rhs6_crit_edge, %for.body.land.rhs6_crit_edge
  %e.148 = phi ptr [ %3, %dma_fence_put.exit.land.rhs6_crit_edge ], [ %1, %for.body.land.rhs6_crit_edge ]
  %2 = ptrtoint ptr %e.148 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %e.148, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %e.148, i32 0, i32 1
  %4 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.not.i.i, label %land.rhs6.hash_del.exit_crit_edge, label %if.then.i.i

land.rhs6.hash_del.exit_crit_edge:                ; preds = %land.rhs6
  call void @__sanitizer_cov_trace_pc() #7
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %land.rhs6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %3, ptr %5, align 4
  %tobool.not.i3.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %8 = ptrtoint ptr %e.148 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %e.148, align 4
  %9 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %land.rhs6.hash_del.exit_crit_edge
  %fence = getelementptr inbounds %struct.amdgpu_sync_entry, ptr %e.148, i32 0, i32 1
  %10 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fence, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %hash_del.exit.dma_fence_put.exit_crit_edge, label %if.then.i

hash_del.exit.dma_fence_put.exit_crit_edge:       ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %hash_del.exit
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %11, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #5
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #5, !srcloc !25
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i35, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !20

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #5
  br label %dma_fence_put.exit

if.then.i.i35:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @dma_fence_release(ptr noundef %refcount.i) #5
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i35, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %hash_del.exit.dma_fence_put.exit_crit_edge
  %13 = load ptr, ptr @amdgpu_sync_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %13, ptr noundef nonnull %e.148) #5
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %dma_fence_put.exit.for.inc22_crit_edge, label %dma_fence_put.exit.land.rhs6_crit_edge

dma_fence_put.exit.land.rhs6_crit_edge:           ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs6

dma_fence_put.exit.for.inc22_crit_edge:           ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc22

for.inc22:                                        ; preds = %dma_fence_put.exit.for.inc22_crit_edge, %for.body.for.inc22_crit_edge
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end23, label %for.inc22.for.body_crit_edge

for.inc22.for.body_crit_edge:                     ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end23:                                        ; preds = %for.inc22
  %last_vm_update = getelementptr inbounds %struct.amdgpu_sync, ptr %sync, i32 0, i32 1
  %14 = ptrtoint ptr %last_vm_update to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %last_vm_update, align 4
  %tobool.not.i36 = icmp eq ptr %15, null
  br i1 %tobool.not.i36, label %for.end23.dma_fence_put.exit46_crit_edge, label %if.then.i41

for.end23.dma_fence_put.exit46_crit_edge:         ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_put.exit46

if.then.i41:                                      ; preds = %for.end23
  %refcount.i37 = getelementptr inbounds %struct.dma_fence, ptr %15, i32 0, i32 6
  %call.i.i.i.i.i.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i37, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @llvm.prefetch.p0(ptr %refcount.i37, i32 1, i32 3, i32 1) #5
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i37, ptr %refcount.i37, i32 1, ptr elementtype(i32) %refcount.i37) #5, !srcloc !25
  %asmresult.i.i.i.i.i.i.i.i39 = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i39)
  %cmp.i.i.i.i.i40 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i39, 1
  br i1 %cmp.i.i.i.i.i40, label %if.then.i.i45, label %if.end5.i.i.i.i.i43

if.end5.i.i.i.i.i43:                              ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i39)
  %.not.i.i.i.i.i42 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i39, 0
  br i1 %.not.i.i.i.i.i42, label %if.end5.i.i.i.i.i43.dma_fence_put.exit46_crit_edge, label %if.then10.i.i.i.i.i44, !prof !20

if.end5.i.i.i.i.i43.dma_fence_put.exit46_crit_edge: ; preds = %if.end5.i.i.i.i.i43
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_put.exit46

if.then10.i.i.i.i.i44:                            ; preds = %if.end5.i.i.i.i.i43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i37, i32 noundef 3) #5
  br label %dma_fence_put.exit46

if.then.i.i45:                                    ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @dma_fence_release(ptr noundef %refcount.i37) #5
  br label %dma_fence_put.exit46

dma_fence_put.exit46:                             ; preds = %if.then.i.i45, %if.then10.i.i.i.i.i44, %if.end5.i.i.i.i.i43.dma_fence_put.exit46_crit_edge, %for.end23.dma_fence_put.exit46_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_sync_init() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 12, i32 noundef 0, i32 noundef 8192, ptr noundef null) #5
  store ptr %call, ptr @amdgpu_sync_slab, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_sync_fini() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @amdgpu_sync_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_sync.c", i32 435, i32 3}
!2 = !{ptr @amdgpu_sync_slab, !3, !"amdgpu_sync_slab", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_sync.c", i32 42, i32 27}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/linux/dma-fence.h", i32 475, i32 6}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_sync.c", i32 235, i32 2}
!8 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"debug_evictions", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu.h", i32 223, i32 34}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2148553538, i64 2148553570, i64 2148553599, i64 2148553633, i64 2148553664, i64 2148553687}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i8 0, i8 2}
!24 = !{i64 2148641563}
!25 = !{i64 2148556003, i64 2148556035, i64 2148556064, i64 2148556098, i64 2148556129, i64 2148556152}
!26 = !{i64 2149288238}
