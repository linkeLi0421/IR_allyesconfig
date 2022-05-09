; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/ovlygk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/ovlygk104.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.0 = type { ptr, i32, ptr }
%struct.nv50_disp_chan_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { i32, i32, ptr }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Overlay\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Global\00", [25 x i8] zeroinitializer }, align 32
@gk104_disp_ovly_mthd = dso_local constant { { ptr, i32, i32, [2 x %struct.anon.0] }, [60 x i8] } { { ptr, i32, i32, [2 x %struct.anon.0] } { ptr @.str, i32 4096, i32 -131072, [2 x %struct.anon.0] [%struct.anon.0 { ptr @.str.1, i32 1, ptr @gk104_disp_ovly_mthd_base }, %struct.anon.0 zeroinitializer] }, [60 x i8] zeroinitializer }, align 32
@gf119_disp_dmac_func = external dso_local constant %struct.nv50_disp_chan_func, align 4
@gk104_disp_ovly_mthd_base = internal constant { { i32, i32, [47 x %struct.anon] }, [132 x i8] } { { i32, i32, [47 x %struct.anon] } { i32 0, i32 0, [47 x %struct.anon] [%struct.anon { i32 128, i32 6705280, ptr null }, %struct.anon { i32 132, i32 6705284, ptr null }, %struct.anon { i32 136, i32 6705288, ptr null }, %struct.anon { i32 140, i32 6705292, ptr null }, %struct.anon { i32 144, i32 6705296, ptr null }, %struct.anon { i32 148, i32 6705300, ptr null }, %struct.anon { i32 160, i32 6705312, ptr null }, %struct.anon { i32 164, i32 6705316, ptr null }, %struct.anon { i32 176, i32 6705328, ptr null }, %struct.anon { i32 180, i32 6705332, ptr null }, %struct.anon { i32 184, i32 6705336, ptr null }, %struct.anon { i32 192, i32 6705344, ptr null }, %struct.anon { i32 196, i32 6705348, ptr null }, %struct.anon { i32 224, i32 6705376, ptr null }, %struct.anon { i32 228, i32 6705380, ptr null }, %struct.anon { i32 232, i32 6705384, ptr null }, %struct.anon { i32 256, i32 6705408, ptr null }, %struct.anon { i32 260, i32 6705412, ptr null }, %struct.anon { i32 264, i32 6705416, ptr null }, %struct.anon { i32 268, i32 6705420, ptr null }, %struct.anon { i32 272, i32 6705424, ptr null }, %struct.anon { i32 280, i32 6705432, ptr null }, %struct.anon { i32 284, i32 6705436, ptr null }, %struct.anon { i32 288, i32 6705440, ptr null }, %struct.anon { i32 292, i32 6705444, ptr null }, %struct.anon { i32 304, i32 6705456, ptr null }, %struct.anon { i32 308, i32 6705460, ptr null }, %struct.anon { i32 312, i32 6705464, ptr null }, %struct.anon { i32 316, i32 6705468, ptr null }, %struct.anon { i32 320, i32 6705472, ptr null }, %struct.anon { i32 324, i32 6705476, ptr null }, %struct.anon { i32 328, i32 6705480, ptr null }, %struct.anon { i32 332, i32 6705484, ptr null }, %struct.anon { i32 336, i32 6705488, ptr null }, %struct.anon { i32 340, i32 6705492, ptr null }, %struct.anon { i32 344, i32 6705496, ptr null }, %struct.anon { i32 348, i32 6705500, ptr null }, %struct.anon { i32 352, i32 6705504, ptr null }, %struct.anon { i32 356, i32 6705508, ptr null }, %struct.anon { i32 360, i32 6705512, ptr null }, %struct.anon { i32 364, i32 6705516, ptr null }, %struct.anon { i32 1024, i32 6706176, ptr null }, %struct.anon { i32 1028, i32 6706180, ptr null }, %struct.anon { i32 1032, i32 6706184, ptr null }, %struct.anon { i32 1036, i32 6706188, ptr null }, %struct.anon { i32 1040, i32 6706192, ptr null }, %struct.anon zeroinitializer] }, [132 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 82, i32 10 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 86, i32 5 }
@___asan_gen_.9 = private unnamed_addr constant [21 x i8] c"gk104_disp_ovly_mthd\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 81, i32 1 }
@___asan_gen_.12 = private unnamed_addr constant [26 x i8] c"gk104_disp_ovly_mthd_base\00", align 1
@___asan_gen_.13 = private constant [56 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/ovlygk104.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 27, i32 1 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @gk104_disp_ovly_mthd, ptr @gk104_disp_ovly_mthd_base], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_disp_ovly_mthd to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_disp_ovly_mthd_base to i32), i32 572, i32 704, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk104_disp_ovly_new(ptr noundef %oclass, ptr noundef %argv, i32 noundef %argc, ptr noundef %disp, ptr noundef %pobject) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv50_disp_ovly_new_(ptr noundef nonnull @gf119_disp_dmac_func, ptr noundef nonnull @gk104_disp_ovly_mthd, ptr noundef %disp, i32 noundef 5, ptr noundef %oclass, ptr noundef %argv, i32 noundef %argc, ptr noundef %pobject) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_ovly_new_(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/ovlygk104.c", i32 82, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/ovlygk104.c", i32 86, i32 5}
!4 = !{ptr @gk104_disp_ovly_mthd, !5, !"gk104_disp_ovly_mthd", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/ovlygk104.c", i32 81, i32 1}
!6 = !{ptr @gk104_disp_ovly_mthd_base, !7, !"gk104_disp_ovly_mthd_base", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/ovlygk104.c", i32 27, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
