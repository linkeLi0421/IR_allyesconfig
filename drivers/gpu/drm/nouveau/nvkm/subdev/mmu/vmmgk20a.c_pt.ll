; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgk20a.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgk20a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_vmm_desc = type { i32, i8, i8, i32, ptr }
%struct.nvkm_vmm_page = type { i8, ptr, i8 }

@gk104_vmm_desc_16_16 = external dso_local constant [0 x %struct.nvkm_vmm_desc], align 4
@gk104_vmm_desc_16_12 = external dso_local constant [0 x %struct.nvkm_vmm_desc], align 4
@gk20a_vmm_16 = internal constant { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [3 x %struct.nvkm_vmm_page] }>, [52 x i8] } { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [3 x %struct.nvkm_vmm_page] }> <{ ptr @gf100_vmm_join, ptr @gf100_vmm_part, ptr @gf100_vmm_aper, ptr @gf100_vmm_valid, ptr @gf100_vmm_flush, ptr null, ptr @gf100_vmm_invalidate_pdb, [4 x i8] undef, i64 0, [3 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 16, ptr @gk104_vmm_desc_16_16, i8 12 }, %struct.nvkm_vmm_page { i8 12, ptr @gk104_vmm_desc_16_12, i8 4 }, %struct.nvkm_vmm_page zeroinitializer] }>, [52 x i8] zeroinitializer }, align 32
@gk104_vmm_desc_17_17 = external dso_local constant [0 x %struct.nvkm_vmm_desc], align 4
@gk104_vmm_desc_17_12 = external dso_local constant [0 x %struct.nvkm_vmm_desc], align 4
@gk20a_vmm_17 = internal constant { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [3 x %struct.nvkm_vmm_page] }>, [52 x i8] } { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [3 x %struct.nvkm_vmm_page] }> <{ ptr @gf100_vmm_join, ptr @gf100_vmm_part, ptr @gf100_vmm_aper, ptr @gf100_vmm_valid, ptr @gf100_vmm_flush, ptr null, ptr @gf100_vmm_invalidate_pdb, [4 x i8] undef, i64 0, [3 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 17, ptr @gk104_vmm_desc_17_17, i8 12 }, %struct.nvkm_vmm_page { i8 12, ptr @gk104_vmm_desc_17_12, i8 4 }, %struct.nvkm_vmm_page zeroinitializer] }>, [52 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [13 x i8] c"gk20a_vmm_16\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 52, i32 1 }
@___asan_gen_.6 = private unnamed_addr constant [13 x i8] c"gk20a_vmm_17\00", align 1
@___asan_gen_.7 = private constant [54 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgk20a.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 37, i32 1 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @gk20a_vmm_16, ptr @gk20a_vmm_17], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_vmm_16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_vmm_17 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @gk20a_vmm_aper(i32 noundef %target) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %target)
  %cond = icmp eq i32 %target, 3
  %. = select i1 %cond, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk20a_vmm_new(ptr noundef %mmu, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr noundef %argv, i32 noundef %argc, ptr noundef %key, ptr noundef %name, ptr noundef %pvmm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gf100_vmm_new_(ptr noundef nonnull @gk20a_vmm_16, ptr noundef nonnull @gk20a_vmm_17, ptr noundef %mmu, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr noundef %argv, i32 noundef %argc, ptr noundef %key, ptr noundef %name, ptr noundef %pvmm) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_new_(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_join(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_part(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_aper(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_valid(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_flush(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_invalidate_pdb(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @gk20a_vmm_16, !1, !"gk20a_vmm_16", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgk20a.c", i32 52, i32 1}
!2 = !{ptr @gk20a_vmm_17, !3, !"gk20a_vmm_17", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgk20a.c", i32 37, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
