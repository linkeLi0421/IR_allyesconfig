; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/sec2/tu102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/sec2/tu102.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_sec2_fwif = type { i32, ptr, ptr, ptr }
%struct.nvkm_sec2_func = type { ptr, i8, ptr, ptr }
%struct.nvkm_acr_lsf_func = type { i32, i32, ptr, ptr, ptr, i64, ptr, ptr }
%struct.nvkm_falcon_func = type { %struct.anon.136, %struct.anon.137, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.140, %struct.anon.140, [0 x %struct.nvkm_sclass] }
%struct.anon.136 = type { ptr, i32 }
%struct.anon.137 = type { ptr, i32 }
%struct.anon.140 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }

@__UNIQUE_ID_firmware293 = internal constant [44 x i8] c"nouveau.firmware=nvidia/tu102/sec2/desc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware294 = internal constant [45 x i8] c"nouveau.firmware=nvidia/tu102/sec2/image.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware295 = internal constant [43 x i8] c"nouveau.firmware=nvidia/tu102/sec2/sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware296 = internal constant [44 x i8] c"nouveau.firmware=nvidia/tu104/sec2/desc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware297 = internal constant [45 x i8] c"nouveau.firmware=nvidia/tu104/sec2/image.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware298 = internal constant [43 x i8] c"nouveau.firmware=nvidia/tu104/sec2/sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware299 = internal constant [44 x i8] c"nouveau.firmware=nvidia/tu106/sec2/desc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware300 = internal constant [45 x i8] c"nouveau.firmware=nvidia/tu106/sec2/image.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware301 = internal constant [43 x i8] c"nouveau.firmware=nvidia/tu106/sec2/sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware302 = internal constant [44 x i8] c"nouveau.firmware=nvidia/tu116/sec2/desc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware303 = internal constant [45 x i8] c"nouveau.firmware=nvidia/tu116/sec2/image.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware304 = internal constant [43 x i8] c"nouveau.firmware=nvidia/tu116/sec2/sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware305 = internal constant [44 x i8] c"nouveau.firmware=nvidia/tu117/sec2/desc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware306 = internal constant [45 x i8] c"nouveau.firmware=nvidia/tu117/sec2/image.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware307 = internal constant [43 x i8] c"nouveau.firmware=nvidia/tu117/sec2/sig.bin\00", section ".modinfo", align 1
@tu102_sec2_fwif = internal constant { [2 x %struct.nvkm_sec2_fwif], [32 x i8] } { [2 x %struct.nvkm_sec2_fwif] [%struct.nvkm_sec2_fwif { i32 0, ptr @gp102_sec2_load, ptr @tu102_sec2, ptr @gp102_sec2_acr_1 }, %struct.nvkm_sec2_fwif { i32 -1, ptr @gp102_sec2_nofw, ptr @tu102_sec2, ptr null }], [32 x i8] zeroinitializer }, align 32
@tu102_sec2 = internal constant { %struct.nvkm_sec2_func, [16 x i8] } { %struct.nvkm_sec2_func { ptr @tu102_sec2_flcn, i8 7, ptr @gp102_sec2_intr, ptr @gp102_sec2_initmsg }, [16 x i8] zeroinitializer }, align 32
@gp102_sec2_acr_1 = external dso_local constant %struct.nvkm_acr_lsf_func, align 8
@tu102_sec2_flcn = internal constant { %struct.nvkm_falcon_func, [56 x i8] } { %struct.nvkm_falcon_func { %struct.anon.136 zeroinitializer, %struct.anon.137 zeroinitializer, ptr null, ptr null, i32 1032, i32 1536, ptr @nvkm_falcon_v1_load_imem, ptr @nvkm_falcon_v1_load_dmem, ptr @nvkm_falcon_v1_read_dmem, i32 16777216, ptr @gp102_sec2_flcn_bind_context, ptr @nvkm_falcon_v1_wait_for_halt, ptr @nvkm_falcon_v1_clear_interrupt, ptr @nvkm_falcon_v1_set_start_addr, ptr @nvkm_falcon_v1_start, ptr @nvkm_falcon_v1_enable, ptr @nvkm_falcon_v1_disable, ptr null, %struct.anon.140 { i32 3072, i32 3076, i32 8 }, %struct.anon.140 { i32 3200, i32 3204, i32 8 }, [0 x %struct.nvkm_sclass] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"tu102_sec2_fwif\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 69, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [11 x i8] c"tu102_sec2\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 45, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"tu102_sec2_flcn\00", align 1
@___asan_gen_.8 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/tu102.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 26, i32 1 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_firmware293, ptr @__UNIQUE_ID_firmware294, ptr @__UNIQUE_ID_firmware295, ptr @__UNIQUE_ID_firmware296, ptr @__UNIQUE_ID_firmware297, ptr @__UNIQUE_ID_firmware298, ptr @__UNIQUE_ID_firmware299, ptr @__UNIQUE_ID_firmware300, ptr @__UNIQUE_ID_firmware301, ptr @__UNIQUE_ID_firmware302, ptr @__UNIQUE_ID_firmware303, ptr @__UNIQUE_ID_firmware304, ptr @__UNIQUE_ID_firmware305, ptr @__UNIQUE_ID_firmware306, ptr @__UNIQUE_ID_firmware307, ptr @tu102_sec2_fwif, ptr @tu102_sec2, ptr @tu102_sec2_flcn], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_sec2_fwif to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_sec2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_sec2_flcn to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tu102_sec2_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %psec2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_sec2_new_(ptr noundef nonnull @tu102_sec2_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i32 noundef 8650752, ptr noundef %psec2) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_sec2_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_sec2_load(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_sec2_nofw(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp102_sec2_intr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_sec2_initmsg(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_load_imem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_load_dmem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_read_dmem(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp102_sec2_flcn_bind_context(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_v1_wait_for_halt(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_v1_clear_interrupt(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_set_start_addr(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_start(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_v1_enable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_disable(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__UNIQUE_ID_firmware293, !1, !"__UNIQUE_ID_firmware293", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/tu102.c", i32 52, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware294, !3, !"__UNIQUE_ID_firmware294", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/tu102.c", i32 53, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware295, !5, !"__UNIQUE_ID_firmware295", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/tu102.c", i32 54, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware296, !7, !"__UNIQUE_ID_firmware296", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/tu102.c", i32 55, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware297, !9, !"__UNIQUE_ID_firmware297", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/tu102.c", i32 56, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware298, !11, !"__UNIQUE_ID_firmware298", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/tu102.c", i32 57, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware299, !13, !"__UNIQUE_ID_firmware299", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/tu102.c", i32 58, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware300, !15, !"__UNIQUE_ID_firmware300", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/tu102.c", i32 59, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware301, !17, !"__UNIQUE_ID_firmware301", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/tu102.c", i32 60, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware302, !19, !"__UNIQUE_ID_firmware302", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/tu102.c", i32 61, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware303, !21, !"__UNIQUE_ID_firmware303", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/tu102.c", i32 62, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware304, !23, !"__UNIQUE_ID_firmware304", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/tu102.c", i32 63, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware305, !25, !"__UNIQUE_ID_firmware305", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/tu102.c", i32 64, i32 1}
!26 = !{ptr @__UNIQUE_ID_firmware306, !27, !"__UNIQUE_ID_firmware306", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/tu102.c", i32 65, i32 1}
!28 = !{ptr @__UNIQUE_ID_firmware307, !29, !"__UNIQUE_ID_firmware307", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/tu102.c", i32 66, i32 1}
!30 = !{ptr @tu102_sec2_fwif, !31, !"tu102_sec2_fwif", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/tu102.c", i32 69, i32 1}
!32 = !{ptr @tu102_sec2, !33, !"tu102_sec2", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/tu102.c", i32 45, i32 1}
!34 = !{ptr @tu102_sec2_flcn, !35, !"tu102_sec2_flcn", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec2/tu102.c", i32 26, i32 1}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
