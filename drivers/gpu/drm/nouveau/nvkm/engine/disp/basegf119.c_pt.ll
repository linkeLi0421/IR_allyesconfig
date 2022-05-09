; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/basegf119.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/basegf119.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.0 = type { ptr, i32, ptr }
%struct.nv50_disp_chan_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { i32, i32, ptr }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Base\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Global\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Image\00", [26 x i8] zeroinitializer }, align 32
@gf119_disp_base_mthd = dso_local constant { { ptr, i32, i32, [3 x %struct.anon.0] }, [48 x i8] } { { ptr, i32, i32, [3 x %struct.anon.0] } { ptr @.str, i32 4096, i32 -131072, [3 x %struct.anon.0] [%struct.anon.0 { ptr @.str.1, i32 1, ptr @gf119_disp_base_mthd_base }, %struct.anon.0 { ptr @.str.2, i32 2, ptr @gf119_disp_base_mthd_image }, %struct.anon.0 zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@gf119_disp_dmac_func = external dso_local constant %struct.nv50_disp_chan_func, align 4
@gf119_disp_base_mthd_base = internal constant { { i32, i32, [42 x %struct.anon] }, [128 x i8] } { { i32, i32, [42 x %struct.anon] } { i32 0, i32 0, [42 x %struct.anon] [%struct.anon { i32 128, i32 6688896, ptr null }, %struct.anon { i32 132, i32 6688900, ptr null }, %struct.anon { i32 136, i32 6688904, ptr null }, %struct.anon { i32 140, i32 6688908, ptr null }, %struct.anon { i32 144, i32 6688912, ptr null }, %struct.anon { i32 148, i32 6688916, ptr null }, %struct.anon { i32 160, i32 6688928, ptr null }, %struct.anon { i32 164, i32 6688932, ptr null }, %struct.anon { i32 192, i32 6688960, ptr null }, %struct.anon { i32 196, i32 6688964, ptr null }, %struct.anon { i32 200, i32 6688968, ptr null }, %struct.anon { i32 204, i32 6688972, ptr null }, %struct.anon { i32 224, i32 6688992, ptr null }, %struct.anon { i32 228, i32 6688996, ptr null }, %struct.anon { i32 232, i32 6689000, ptr null }, %struct.anon { i32 236, i32 6689004, ptr null }, %struct.anon { i32 252, i32 6689020, ptr null }, %struct.anon { i32 256, i32 6689024, ptr null }, %struct.anon { i32 260, i32 6689028, ptr null }, %struct.anon { i32 264, i32 6689032, ptr null }, %struct.anon { i32 268, i32 6689036, ptr null }, %struct.anon { i32 272, i32 6689040, ptr null }, %struct.anon { i32 276, i32 6689044, ptr null }, %struct.anon { i32 280, i32 6689048, ptr null }, %struct.anon { i32 284, i32 6689052, ptr null }, %struct.anon { i32 304, i32 6689072, ptr null }, %struct.anon { i32 308, i32 6689076, ptr null }, %struct.anon { i32 312, i32 6689080, ptr null }, %struct.anon { i32 316, i32 6689084, ptr null }, %struct.anon { i32 320, i32 6689088, ptr null }, %struct.anon { i32 324, i32 6689092, ptr null }, %struct.anon { i32 328, i32 6689096, ptr null }, %struct.anon { i32 332, i32 6689100, ptr null }, %struct.anon { i32 336, i32 6689104, ptr null }, %struct.anon { i32 340, i32 6689108, ptr null }, %struct.anon { i32 344, i32 6689112, ptr null }, %struct.anon { i32 348, i32 6689116, ptr null }, %struct.anon { i32 352, i32 6689120, ptr null }, %struct.anon { i32 356, i32 6689124, ptr null }, %struct.anon { i32 360, i32 6689128, ptr null }, %struct.anon { i32 364, i32 6689132, ptr null }, %struct.anon zeroinitializer] }, [128 x i8] zeroinitializer }, align 32
@gf119_disp_base_mthd_image = internal constant { { i32, i32, [6 x %struct.anon] }, [48 x i8] } { { i32, i32, [6 x %struct.anon] } { i32 32, i32 32, [6 x %struct.anon] [%struct.anon { i32 1024, i32 6689792, ptr null }, %struct.anon { i32 1028, i32 6689796, ptr null }, %struct.anon { i32 1032, i32 6689800, ptr null }, %struct.anon { i32 1036, i32 6689804, ptr null }, %struct.anon { i32 1040, i32 6689808, ptr null }, %struct.anon zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 92, i32 10 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 96, i32 5 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 97, i32 6 }
@___asan_gen_.14 = private unnamed_addr constant [21 x i8] c"gf119_disp_base_mthd\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 91, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant [26 x i8] c"gf119_disp_base_mthd_base\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 27, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant [27 x i8] c"gf119_disp_base_mthd_image\00", align 1
@___asan_gen_.21 = private constant [56 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/basegf119.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 77, i32 1 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @gf119_disp_base_mthd, ptr @gf119_disp_base_mthd_base, ptr @gf119_disp_base_mthd_image], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_disp_base_mthd to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_disp_base_mthd_base to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_disp_base_mthd_image to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf119_disp_base_new(ptr noundef %oclass, ptr noundef %argv, i32 noundef %argc, ptr noundef %disp, ptr noundef %pobject) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv50_disp_base_new_(ptr noundef nonnull @gf119_disp_dmac_func, ptr noundef nonnull @gf119_disp_base_mthd, ptr noundef %disp, i32 noundef 1, ptr noundef %oclass, ptr noundef %argv, i32 noundef %argc, ptr noundef %pobject) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_base_new_(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/basegf119.c", i32 92, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/basegf119.c", i32 96, i32 5}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/basegf119.c", i32 97, i32 6}
!6 = !{ptr @gf119_disp_base_mthd, !7, !"gf119_disp_base_mthd", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/basegf119.c", i32 91, i32 1}
!8 = !{ptr @gf119_disp_base_mthd_base, !9, !"gf119_disp_base_mthd_base", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/basegf119.c", i32 27, i32 1}
!10 = !{ptr @gf119_disp_base_mthd_image, !11, !"gf119_disp_base_mthd_image", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/basegf119.c", i32 77, i32 1}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
