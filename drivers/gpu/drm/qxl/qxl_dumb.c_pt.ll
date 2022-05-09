; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/qxl/qxl_dumb.c_pt.bc'
source_filename = "../drivers/gpu/drm/qxl/qxl_dumb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qxl_surface = type { i32, i32, i32, i32, i64 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.qxl_bo = type <{ %struct.ttm_buffer_object, %struct.list_head, [3 x %struct.ttm_place], %struct.ttm_placement, %struct.dma_buf_map, ptr, i32, i32, i8, [3 x i8], ptr, i8, %struct.qxl_surface, [3 x i8], i32, ptr }>
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.dma_buf_map = type { %union.anon.85, i8 }
%union.anon.85 = type { ptr }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_mode_dumb_create(ptr noundef %file_priv, ptr noundef %dev, ptr nocapture noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %qobj = alloca ptr, align 4
  %handle = alloca i32, align 4
  %surf = alloca %struct.qxl_surface, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qobj) #3
  %0 = ptrtoint ptr %qobj to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %qobj, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle) #3
  %1 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %handle, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %surf) #3
  %2 = getelementptr inbounds %struct.qxl_surface, ptr %surf, i32 0, i32 1
  %3 = getelementptr inbounds %struct.qxl_surface, ptr %surf, i32 0, i32 2
  %4 = getelementptr inbounds %struct.qxl_surface, ptr %surf, i32 0, i32 3
  %5 = getelementptr inbounds %struct.qxl_surface, ptr %surf, i32 0, i32 4
  %width = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 1
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width, align 4
  %bpp = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 2
  %8 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bpp, align 8
  %add = add i32 %9, 1
  %div36 = lshr i32 %add, 3
  %mul = mul i32 %div36, %7
  %10 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %args, align 8
  %mul1 = mul i32 %mul, %11
  %conv = zext i32 %mul1 to i64
  %size = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 6
  %add3 = add nuw nsw i64 %conv, 4095
  %and = and i64 %add3, 8589930496
  %12 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %and, ptr %size, align 8
  %13 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %entry.cleanup_crit_edge [
    i32 16, label %entry.sw.epilog_crit_edge
    i32 32, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %entry.sw.epilog_crit_edge
  %format.0 = phi i32 [ 32, %sw.bb6 ], [ 80, %entry.sw.epilog_crit_edge ]
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %7, ptr %2, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %11, ptr %3, align 4
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul, ptr %4, align 4
  %17 = ptrtoint ptr %surf to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %format.0, ptr %surf, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 0, ptr %5, align 4
  %conv13 = trunc i64 %and to i32
  %call = call i32 @qxl_gem_object_create_with_handle(ptr noundef %dev, ptr noundef %file_priv, i32 noundef 0, i32 noundef %conv13, ptr noundef nonnull %surf, ptr noundef nonnull %qobj, ptr noundef nonnull %handle) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %qobj to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qobj, align 4
  %is_dumb = getelementptr inbounds %struct.qxl_bo, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %is_dumb to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %is_dumb, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %is_dumb, align 4
  %pitch14 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 5
  %22 = ptrtoint ptr %pitch14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul, ptr %pitch14, align 4
  %23 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %handle, align 4
  %handle15 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 4
  %25 = ptrtoint ptr %handle15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %handle15, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ], [ %call, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %surf) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qobj) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_gem_object_create_with_handle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

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
!9 = !{!"auto-init"}
