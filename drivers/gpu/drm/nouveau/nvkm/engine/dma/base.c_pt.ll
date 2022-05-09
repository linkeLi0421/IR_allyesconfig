; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/dma/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/dma/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_engine_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.134, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr }
%struct.anon.134 = type { ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_dma = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.135 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.135 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_dmaobj = type { ptr, ptr, %struct.nvkm_object, i32, i32, i64, i64 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }

@nvkm_dma = internal constant { %struct.nvkm_engine_func, [44 x i8] } { %struct.nvkm_engine_func { ptr @nvkm_dma_dtor, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.anon { ptr @nvkm_dma_oclass_base_get }, %struct.anon.134 { ptr null, ptr @nvkm_dma_oclass_fifo_get }, ptr null, [0 x %struct.nvkm_sclass] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nvkm_dma_sclass = internal constant { [3 x %struct.nvkm_sclass], [36 x i8] } { [3 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 0, i32 0, i32 2, ptr null, ptr @nvkm_dma_oclass_fifo_new }, %struct.nvkm_sclass { i32 0, i32 0, i32 3, ptr null, ptr @nvkm_dma_oclass_fifo_new }, %struct.nvkm_sclass { i32 0, i32 0, i32 61, ptr null, ptr @nvkm_dma_oclass_fifo_new }], [36 x i8] zeroinitializer }, align 32
@nvkm_dma_oclass_base = internal constant { %struct.nvkm_device_oclass, [40 x i8] } { %struct.nvkm_device_oclass { ptr @nvkm_dma_oclass_new, %struct.nvkm_sclass zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [9 x i8] c"nvkm_dma\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 99, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"nvkm_dma_sclass\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 60, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [21 x i8] c"nvkm_dma_oclass_base\00", align 1
@___asan_gen_.8 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/dma/base.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 47, i32 1 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @nvkm_dma, ptr @nvkm_dma_sclass, ptr @nvkm_dma_oclass_base], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dma to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dma_sclass to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dma_oclass_base to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_dma_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pdma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 204) #9
  %1 = ptrtoint ptr %pdma to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pdma, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %func, ptr %call7.i.i, align 8
  %engine = getelementptr inbounds %struct.nvkm_dma, ptr %call7.i.i, i32 0, i32 1
  %call2 = tail call i32 @nvkm_engine_ctor(ptr noundef nonnull @nvkm_dma, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext true, ptr noundef %engine) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_engine_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @nvkm_dma_dtor(ptr noundef readnone %engine) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -4
  ret ptr %add.ptr
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_dma_oclass_base_get(ptr nocapture noundef writeonly %sclass, i32 noundef %index, ptr nocapture noundef writeonly %class) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %index)
  %cmp = icmp slt i32 %index, 3
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [3 x %struct.nvkm_sclass], ptr @nvkm_dma_sclass, i32 0, i32 %index
  %base = getelementptr inbounds %struct.nvkm_oclass, ptr %sclass, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %base, ptr %arrayidx, i32 20)
  %engn = getelementptr inbounds %struct.nvkm_oclass, ptr %sclass, i32 0, i32 3
  %1 = ptrtoint ptr %engn to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %arrayidx, ptr %engn, align 4
  %2 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @nvkm_dma_oclass_base, ptr %class, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %index, %if.then ], [ 3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_dma_oclass_fifo_get(ptr nocapture noundef writeonly %oclass, i32 noundef %index) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %index)
  %cmp = icmp slt i32 %index, 3
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1
  %arrayidx = getelementptr [3 x %struct.nvkm_sclass], ptr @nvkm_dma_sclass, i32 0, i32 %index
  %0 = call ptr @memcpy(ptr %base, ptr %arrayidx, i32 20)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %index, %if.then ], [ 3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_dma_oclass_fifo_new(ptr noundef %oclass, ptr noundef %data, i32 noundef %size, ptr nocapture noundef writeonly %pobject) #0 align 64 {
entry:
  %dmaobj.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 10
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dmaobj.i) #6
  %2 = ptrtoint ptr %dmaobj.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dmaobj.i, align 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call.i = call i32 %6(ptr noundef %add.ptr.i, ptr noundef %oclass, ptr noundef %data, i32 noundef %size, ptr noundef nonnull %dmaobj.i) #6
  %7 = ptrtoint ptr %dmaobj.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dmaobj.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %entry.nvkm_dma_oclass_new.exit_crit_edge, label %if.then.i

entry.nvkm_dma_oclass_new.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_dma_oclass_new.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %object.i = getelementptr inbounds %struct.nvkm_dmaobj, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %object.i, ptr %pobject, align 4
  br label %nvkm_dma_oclass_new.exit

nvkm_dma_oclass_new.exit:                         ; preds = %if.then.i, %entry.nvkm_dma_oclass_new.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dmaobj.i) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_dma_oclass_new(ptr nocapture noundef readnone %device, ptr noundef %oclass, ptr noundef %data, i32 noundef %size, ptr nocapture noundef writeonly %pobject) #0 align 64 {
entry:
  %dmaobj = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 10
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dmaobj) #6
  %2 = ptrtoint ptr %dmaobj to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dmaobj, align 4
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call = call i32 %6(ptr noundef %add.ptr, ptr noundef %oclass, ptr noundef %data, i32 noundef %size, ptr noundef nonnull %dmaobj) #6
  %7 = ptrtoint ptr %dmaobj to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dmaobj, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %object = getelementptr inbounds %struct.nvkm_dmaobj, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %object, ptr %pobject, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dmaobj) #6
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @nvkm_dma, !1, !"nvkm_dma", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/dma/base.c", i32 99, i32 1}
!2 = !{ptr @nvkm_dma_sclass, !3, !"nvkm_dma_sclass", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/dma/base.c", i32 60, i32 1}
!4 = !{ptr @nvkm_dma_oclass_base, !5, !"nvkm_dma_oclass_base", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/dma/base.c", i32 47, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
