; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/msm_gpummu.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_gpummu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.msm_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.msm_gpummu = type { %struct.msm_mmu, ptr, i32, ptr }
%struct.msm_mmu = type { ptr, ptr, ptr, ptr, i32 }
%struct.sg_dma_page_iter = type { %struct.sg_page_iter }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.108, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.108 = type { i8, i64 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.msm_gpu_fault_info = type { i64, i32, i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_gpu_devfreq = type { ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i64, i64, i64, %struct.msm_hrtimer_work, %struct.msm_hrtimer_work }
%struct.dev_pm_qos_request = type { i32, %union.anon.81, ptr }
%union.anon.81 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }

@funcs = internal constant { %struct.msm_mmu_funcs, [44 x i8] } { %struct.msm_mmu_funcs { ptr @msm_gpummu_detach, ptr @msm_gpummu_map, ptr @msm_gpummu_unmap, ptr @msm_gpummu_destroy, ptr @msm_gpummu_resume_translation }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"funcs\00", align 1
@___asan_gen_.2 = private constant [36 x i8] c"../drivers/gpu/drm/msm/msm_gpummu.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 85, i32 35 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @funcs], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @funcs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_gpummu_new(ptr noundef %dev, ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pt_base = getelementptr inbounds %struct.msm_gpummu, ptr %call7.i.i, i32 0, i32 2
  %call2 = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 262112, ptr noundef %pt_base, i32 noundef 3520, i32 noundef 64) #7
  %table = getelementptr inbounds %struct.msm_gpummu, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %table, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %gpu8 = getelementptr inbounds %struct.msm_gpummu, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %gpu8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %gpu, ptr %gpu8, align 4
  %dev1.i = getelementptr inbounds %struct.msm_mmu, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev1.i, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @funcs, ptr %call7.i.i, align 8
  %type3.i = getelementptr inbounds %struct.msm_mmu, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %type3.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %type3.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end7 ], [ inttoptr (i32 -12 to ptr), %if.then5 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @msm_gpummu_params(ptr nocapture noundef readonly %mmu, ptr nocapture noundef writeonly %pt_base, ptr nocapture noundef writeonly %tran_error) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pt_base1 = getelementptr inbounds %struct.msm_gpummu, ptr %mmu, i32 0, i32 2
  %0 = ptrtoint ptr %pt_base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pt_base1, align 4
  %2 = ptrtoint ptr %pt_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %pt_base, align 4
  %add = add i32 %1, 262080
  %3 = ptrtoint ptr %tran_error to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add, ptr %tran_error, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @msm_gpummu_detach(ptr nocapture noundef %mmu) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_gpummu_map(ptr nocapture noundef readonly %mmu, i64 noundef %iova, ptr nocapture noundef readonly %sgt, i32 noundef %len, i32 noundef %prot) #0 align 64 {
entry:
  %dma_iter = alloca %struct.sg_dma_page_iter, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dma_iter) #7
  %0 = getelementptr inbounds %struct.sg_page_iter, ptr %dma_iter, i32 0, i32 1
  %trunc = trunc i32 %prot to i2
  %rev = tail call i2 @llvm.bitreverse.i2(i2 %trunc)
  %1 = zext i2 %rev to i32
  %2 = call ptr @memset(ptr %dma_iter, i32 255, i32 16)
  %3 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sgt, align 4
  %nents = getelementptr inbounds %struct.sg_table, ptr %sgt, i32 0, i32 1
  %5 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nents, align 4
  call void @__sg_page_iter_start(ptr noundef nonnull %dma_iter, ptr noundef %4, i32 noundef %6, i32 noundef 0) #7
  %call23 = call zeroext i1 @__sg_page_iter_dma_next(ptr noundef nonnull %dma_iter) #7
  br i1 %call23, label %for.body.lr.ph, label %entry.for.end12_crit_edge

entry.for.end12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end12

for.body.lr.ph:                                   ; preds = %entry
  %sub = add i64 %iova, 17592169267200
  %div20 = lshr i64 %sub, 12
  %conv = trunc i64 %div20 to i32
  %table = getelementptr inbounds %struct.msm_gpummu, ptr %mmu, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %idx.024 = phi i32 [ %conv, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %7 = ptrtoint ptr %dma_iter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_iter, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_address.i, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 4
  %shl.i = shl i32 %12, 12
  %add.i = add i32 %shl.i, %10
  %or10 = or i32 %add.i, %1
  %13 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %table, align 4
  %inc = add i32 %idx.024, 1
  %arrayidx = getelementptr i32, ptr %14, i32 %idx.024
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or10, ptr %arrayidx, align 4
  %call = call zeroext i1 @__sg_page_iter_dma_next(ptr noundef nonnull %dma_iter) #7
  br i1 %call, label %for.body.for.body_crit_edge, label %for.body.for.end12_crit_edge

for.body.for.end12_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end12

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end12:                                        ; preds = %for.body.for.end12_crit_edge, %entry.for.end12_crit_edge
  %gpu = getelementptr inbounds %struct.msm_gpummu, ptr %mmu, i32 0, i32 1
  %16 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpu, align 4
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %17, i32 0, i32 22
  %18 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %19, i32 276
  call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dma_iter) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_gpummu_unmap(ptr nocapture noundef readonly %mmu, i64 noundef %iova, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %len)
  %cmp9.not = icmp ult i32 %len, 4096
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %div18 = lshr i32 %len, 12
  %sub = add i64 %iova, 17592169267200
  %div7 = lshr i64 %sub, 12
  %conv = trunc i64 %div7 to i32
  %table = getelementptr inbounds %struct.msm_gpummu, ptr %mmu, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %idx.010 = phi i32 [ %conv, %for.body.lr.ph ], [ %inc3, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 %idx.010
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.011, 1
  %inc3 = add i32 %idx.010, 1
  %exitcond.not = icmp eq i32 %inc, %div18
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %gpu = getelementptr inbounds %struct.msm_gpummu, ptr %mmu, i32 0, i32 1
  %3 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gpu, align 4
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %4, i32 0, i32 22
  %5 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 276
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_gpummu_destroy(ptr noundef %mmu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.msm_mmu, ptr %mmu, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %table = getelementptr inbounds %struct.msm_gpummu, ptr %mmu, i32 0, i32 3
  %2 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %table, align 4
  %pt_base = getelementptr inbounds %struct.msm_gpummu, ptr %mmu, i32 0, i32 2
  %4 = ptrtoint ptr %pt_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pt_base, align 4
  tail call void @dma_free_attrs(ptr noundef %1, i32 noundef 262080, ptr noundef %3, i32 noundef %5, i32 noundef 64) #7
  tail call void @kfree(ptr noundef %mmu) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @msm_gpummu_resume_translation(ptr nocapture noundef %mmu) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sg_page_iter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__sg_page_iter_dma_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i2 @llvm.bitreverse.i2(i2) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @funcs, !1, !"funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/msm_gpummu.c", i32 85, i32 35}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
