; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/gm200.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/gm200.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_mmu_func = type { ptr, i8, %struct.anon, %struct.anon.0, %struct.anon.3, ptr, i8 }
%struct.anon = type { %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.anon.0 = type { %struct.nvkm_sclass, ptr, ptr }
%struct.anon.3 = type { %struct.nvkm_sclass, ptr, i8, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.136, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.anon.136 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.151, %struct.anon.152, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.151 = type { %struct.mutex, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.152 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }

@gm200_mmu_kind.kind = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\01\01\01\01\01\FF\01\01\01\01\FF\FF\FF\FF\FF\FF\11\FF\FF\FF\FF\FF\11\11\11\11\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF&'()*+\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF&'()&'()\FF\FF\FF\FFF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FFFFFF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF{\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF{{{{\FF\8B\8C\8D\8E\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\8B\8C\8D\8E\A7\A8\A9\AA\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\A7\A8\A9\AA\C3\FF\FF\FF\FF\FF\FF\FF\FF\FE\FE\C3\C3\C3\C3\FF\FF\FF\FF\FF\FF\FE\FF\FF\FE\FF\FE\FF\FE\FE\FF\FE\FE\FE\FE\FE\FF\FF\FE\FF\FE\FF\FE\FE\FF\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FF\FD\FE\FF", [64 x i8] zeroinitializer }, align 32
@gm200_mmu_fixed = internal constant { %struct.nvkm_mmu_func, [32 x i8] } { %struct.nvkm_mmu_func { ptr null, i8 40, %struct.anon { %struct.nvkm_sclass { i32 -1, i32 -1, i32 -2147446775, ptr null, ptr null } }, %struct.anon.0 { %struct.nvkm_sclass { i32 -1, i32 0, i32 -2147446773, ptr null, ptr null }, ptr @gf100_mem_new, ptr @gf100_mem_map }, %struct.anon.3 { %struct.nvkm_sclass { i32 -1, i32 -1, i32 -2147438579, ptr null, ptr null }, ptr @gm200_vmm_new_fixed, i8 0, i32 0 }, ptr @gm200_mmu_kind, i8 1 }, [32 x i8] zeroinitializer }, align 32
@gm200_mmu = internal constant { %struct.nvkm_mmu_func, [32 x i8] } { %struct.nvkm_mmu_func { ptr null, i8 40, %struct.anon { %struct.nvkm_sclass { i32 -1, i32 -1, i32 -2147446775, ptr null, ptr null } }, %struct.anon.0 { %struct.nvkm_sclass { i32 -1, i32 0, i32 -2147446773, ptr null, ptr null }, ptr @gf100_mem_new, ptr @gf100_mem_map }, %struct.anon.3 { %struct.nvkm_sclass { i32 -1, i32 0, i32 -2147438579, ptr null, ptr null }, ptr @gm200_vmm_new, i8 0, i32 0 }, ptr @gm200_mmu_kind, i8 1 }, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [5 x i8] c"kind\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 33, i32 2 }
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"gm200_mmu_fixed\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 83, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [10 x i8] c"gm200_mmu\00", align 1
@___asan_gen_.8 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/gm200.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 73, i32 1 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @gm200_mmu_kind.kind, ptr @gm200_mmu_fixed, ptr @gm200_mmu], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_mmu_kind.kind to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_mmu_fixed to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_mmu to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local nonnull ptr @gm200_mmu_kind(ptr nocapture readnone %mmu, ptr nocapture noundef writeonly %count, ptr nocapture noundef writeonly %invalid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 256, ptr %count, align 4
  %1 = ptrtoint ptr %invalid to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %invalid, align 1
  ret ptr @gm200_mmu_kind.kind
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm200_mmu_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pmmu) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %fb = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 33
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 8
  %page = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %gm200_mmu.gm200_mmu_fixed = select i1 %tobool.not, ptr @gm200_mmu, ptr @gm200_mmu_fixed
  %call1 = tail call i32 @nvkm_mmu_new_(ptr noundef nonnull %gm200_mmu.gm200_mmu_fixed, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pmmu) #3
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mmu_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_mem_new(ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_mem_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_vmm_new_fixed(ptr noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_vmm_new(ptr noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @gm200_mmu_kind.kind, !1, !"kind", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/gm200.c", i32 33, i32 2}
!2 = !{ptr @gm200_mmu_fixed, !3, !"gm200_mmu_fixed", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/gm200.c", i32 83, i32 1}
!4 = !{ptr @gm200_mmu, !5, !"gm200_mmu", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/gm200.c", i32 73, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
