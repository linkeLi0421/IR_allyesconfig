; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/coreg84.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/coreg84.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon = type { i32, i32, ptr }
%struct.nv50_disp_mthd_list = type { i32, i32, [0 x %struct.anon] }
%struct.anon.0 = type { ptr, i32, ptr }
%struct.nv50_disp_chan_func = type { ptr, ptr, ptr, ptr, ptr }

@g84_disp_core_mthd_dac = dso_local constant { { i32, i32, [4 x %struct.anon] }, [40 x i8] } { { i32, i32, [4 x %struct.anon] } { i32 128, i32 8, [4 x %struct.anon] [%struct.anon { i32 1024, i32 6359896, ptr null }, %struct.anon { i32 1028, i32 6360028, ptr null }, %struct.anon { i32 1056, i32 6360004, ptr null }, %struct.anon zeroinitializer] }, [40 x i8] zeroinitializer }, align 32
@g84_disp_core_mthd_head = dso_local constant { { i32, i32, [44 x %struct.anon] }, [136 x i8] } { { i32, i32, [44 x %struct.anon] } { i32 1024, i32 1344, [44 x %struct.anon] [%struct.anon { i32 2048, i32 6359768, ptr null }, %struct.anon { i32 2052, i32 6359760, ptr null }, %struct.anon { i32 2056, i32 6359624, ptr null }, %struct.anon { i32 2060, i32 6359672, ptr null }, %struct.anon { i32 2064, i32 6359744, ptr null }, %struct.anon { i32 2068, i32 6359800, ptr null }, %struct.anon { i32 2072, i32 6359808, ptr null }, %struct.anon { i32 2076, i32 6359784, ptr null }, %struct.anon { i32 2080, i32 6359792, ptr null }, %struct.anon { i32 2084, i32 6359816, ptr null }, %struct.anon { i32 2088, i32 6359824, ptr null }, %struct.anon { i32 2092, i32 6359656, ptr null }, %struct.anon { i32 2096, i32 6359648, ptr null }, %struct.anon { i32 2100, i32 0, ptr null }, %struct.anon { i32 2104, i32 6359616, ptr null }, %struct.anon { i32 2112, i32 6359588, ptr null }, %struct.anon { i32 2116, i32 6359596, ptr null }, %struct.anon { i32 2120, i32 6359720, ptr null }, %struct.anon { i32 2124, i32 6359728, ptr null }, %struct.anon { i32 2140, i32 6360156, ptr null }, %struct.anon { i32 2144, i32 6359684, ptr null }, %struct.anon { i32 2148, i32 6359696, ptr null }, %struct.anon { i32 2152, i32 6359832, ptr null }, %struct.anon { i32 2156, i32 6359840, ptr null }, %struct.anon { i32 2160, i32 6359752, ptr null }, %struct.anon { i32 2164, i32 6359608, ptr null }, %struct.anon { i32 2168, i32 6360144, ptr null }, %struct.anon { i32 2176, i32 6359640, ptr null }, %struct.anon { i32 2180, i32 6359708, ptr null }, %struct.anon { i32 2204, i32 6360168, ptr null }, %struct.anon { i32 2208, i32 6359664, ptr null }, %struct.anon { i32 2212, i32 6359632, ptr null }, %struct.anon { i32 2216, i32 6359776, ptr null }, %struct.anon { i32 2240, i32 6359848, ptr null }, %struct.anon { i32 2244, i32 6359856, ptr null }, %struct.anon { i32 2248, i32 6359872, ptr null }, %struct.anon { i32 2260, i32 6359864, ptr null }, %struct.anon { i32 2264, i32 6359880, ptr null }, %struct.anon { i32 2268, i32 6359888, ptr null }, %struct.anon { i32 2304, i32 6359576, ptr null }, %struct.anon { i32 2308, i32 6359736, ptr null }, %struct.anon { i32 2320, i32 6360176, ptr null }, %struct.anon { i32 2324, i32 6360184, ptr null }, %struct.anon zeroinitializer] }, [136 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Core\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Global\00", [25 x i8] zeroinitializer }, align 32
@nv50_disp_core_mthd_base = external dso_local constant %struct.nv50_disp_mthd_list, align 4
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SOR\00", [28 x i8] zeroinitializer }, align 32
@nv50_disp_core_mthd_sor = external dso_local constant %struct.nv50_disp_mthd_list, align 4
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PIOR\00", [27 x i8] zeroinitializer }, align 32
@nv50_disp_core_mthd_pior = external dso_local constant %struct.nv50_disp_mthd_list, align 4
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HEAD\00", [27 x i8] zeroinitializer }, align 32
@g84_disp_core_mthd = dso_local constant { { ptr, i32, i32, [6 x %struct.anon.0] }, [44 x i8] } { { ptr, i32, i32, [6 x %struct.anon.0] } { ptr @.str, i32 0, i32 4, [6 x %struct.anon.0] [%struct.anon.0 { ptr @.str.1, i32 1, ptr @nv50_disp_core_mthd_base }, %struct.anon.0 { ptr @.str.2, i32 3, ptr @g84_disp_core_mthd_dac }, %struct.anon.0 { ptr @.str.3, i32 2, ptr @nv50_disp_core_mthd_sor }, %struct.anon.0 { ptr @.str.4, i32 3, ptr @nv50_disp_core_mthd_pior }, %struct.anon.0 { ptr @.str.5, i32 2, ptr @g84_disp_core_mthd_head }, %struct.anon.0 zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@nv50_disp_core_func = external dso_local constant %struct.nv50_disp_chan_func, align 4
@___asan_gen_.6 = private unnamed_addr constant [23 x i8] c"g84_disp_core_mthd_dac\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 27, i32 1 }
@___asan_gen_.9 = private unnamed_addr constant [24 x i8] c"g84_disp_core_mthd_head\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 39, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 92, i32 10 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 96, i32 5 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 97, i32 8 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 98, i32 8 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 99, i32 7 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 100, i32 7 }
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"g84_disp_core_mthd\00", align 1
@___asan_gen_.31 = private constant [54 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coreg84.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 91, i32 1 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @g84_disp_core_mthd_dac, ptr @g84_disp_core_mthd_head, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @g84_disp_core_mthd], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g84_disp_core_mthd_dac to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g84_disp_core_mthd_head to i32), i32 536, i32 672, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g84_disp_core_mthd to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @g84_disp_core_new(ptr noundef %oclass, ptr noundef %argv, i32 noundef %argc, ptr noundef %disp, ptr noundef %pobject) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv50_disp_core_new_(ptr noundef nonnull @nv50_disp_core_func, ptr noundef nonnull @g84_disp_core_mthd, ptr noundef %disp, i32 noundef 0, ptr noundef %oclass, ptr noundef %argv, i32 noundef %argc, ptr noundef %pobject) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_core_new_(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @g84_disp_core_mthd_dac, !1, !"g84_disp_core_mthd_dac", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coreg84.c", i32 27, i32 1}
!2 = !{ptr @g84_disp_core_mthd_head, !3, !"g84_disp_core_mthd_head", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coreg84.c", i32 39, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coreg84.c", i32 92, i32 10}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coreg84.c", i32 96, i32 5}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coreg84.c", i32 97, i32 8}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coreg84.c", i32 98, i32 8}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coreg84.c", i32 99, i32 7}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coreg84.c", i32 100, i32 7}
!16 = !{ptr @g84_disp_core_mthd, !17, !"g84_disp_core_mthd", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coreg84.c", i32 91, i32 1}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
