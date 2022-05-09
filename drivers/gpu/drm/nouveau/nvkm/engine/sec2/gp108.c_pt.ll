; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp108.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp108.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_sec2_fwif = type { i32, ptr, ptr, ptr }
%struct.nvkm_sec2_func = type { ptr, i8, ptr, ptr }
%struct.nvkm_acr_lsf_func = type { i32, i32, ptr, ptr, ptr, i64, ptr, ptr }

@__UNIQUE_ID_firmware293 = internal constant [44 x i8] c"nouveau.firmware=nvidia/gp108/sec2/desc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware294 = internal constant [45 x i8] c"nouveau.firmware=nvidia/gp108/sec2/image.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware295 = internal constant [43 x i8] c"nouveau.firmware=nvidia/gp108/sec2/sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware296 = internal constant [44 x i8] c"nouveau.firmware=nvidia/gv100/sec2/desc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware297 = internal constant [45 x i8] c"nouveau.firmware=nvidia/gv100/sec2/image.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware298 = internal constant [43 x i8] c"nouveau.firmware=nvidia/gv100/sec2/sig.bin\00", section ".modinfo", align 1
@gp108_sec2_fwif = internal constant { [2 x %struct.nvkm_sec2_fwif], [32 x i8] } { [2 x %struct.nvkm_sec2_fwif] [%struct.nvkm_sec2_fwif { i32 0, ptr @gp102_sec2_load, ptr @gp102_sec2, ptr @gp102_sec2_acr_1 }, %struct.nvkm_sec2_fwif zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gp102_sec2 = external dso_local constant %struct.nvkm_sec2_func, align 4
@gp102_sec2_acr_1 = external dso_local constant %struct.nvkm_acr_lsf_func, align 8
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"gp108_sec2_fwif\00", align 1
@___asan_gen_.2 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp108.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 33, i32 1 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_firmware293, ptr @__UNIQUE_ID_firmware294, ptr @__UNIQUE_ID_firmware295, ptr @__UNIQUE_ID_firmware296, ptr @__UNIQUE_ID_firmware297, ptr @__UNIQUE_ID_firmware298, ptr @gp108_sec2_fwif], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp108_sec2_fwif to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gp108_sec2_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %psec2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_sec2_new_(ptr noundef nonnull @gp108_sec2_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i32 noundef 0, ptr noundef %psec2) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_sec2_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_sec2_load(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__UNIQUE_ID_firmware293, !1, !"__UNIQUE_ID_firmware293", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp108.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware294, !3, !"__UNIQUE_ID_firmware294", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp108.c", i32 26, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware295, !5, !"__UNIQUE_ID_firmware295", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp108.c", i32 27, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware296, !7, !"__UNIQUE_ID_firmware296", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp108.c", i32 28, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware297, !9, !"__UNIQUE_ID_firmware297", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp108.c", i32 29, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware298, !11, !"__UNIQUE_ID_firmware298", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp108.c", i32 30, i32 1}
!12 = !{ptr @gp108_sec2_fwif, !13, !"gp108_sec2_fwif", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp108.c", i32 33, i32 1}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
