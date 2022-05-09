; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/coregk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregk104.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_disp_mthd_list = type { i32, i32, [0 x %struct.anon] }
%struct.anon = type { i32, i32, ptr }
%struct.anon.0 = type { ptr, i32, ptr }
%struct.nv50_disp_chan_func = type { ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Core\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Global\00", [25 x i8] zeroinitializer }, align 32
@gf119_disp_core_mthd_base = external dso_local constant %struct.nv50_disp_mthd_list, align 4
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@gf119_disp_core_mthd_dac = external dso_local constant %struct.nv50_disp_mthd_list, align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SOR\00", [28 x i8] zeroinitializer }, align 32
@gf119_disp_core_mthd_sor = external dso_local constant %struct.nv50_disp_mthd_list, align 4
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PIOR\00", [27 x i8] zeroinitializer }, align 32
@gf119_disp_core_mthd_pior = external dso_local constant %struct.nv50_disp_mthd_list, align 4
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HEAD\00", [27 x i8] zeroinitializer }, align 32
@gk104_disp_core_mthd = dso_local constant { { ptr, i32, i32, [6 x %struct.anon.0] }, [44 x i8] } { { ptr, i32, i32, [6 x %struct.anon.0] } { ptr @.str, i32 0, i32 -131072, [6 x %struct.anon.0] [%struct.anon.0 { ptr @.str.1, i32 1, ptr @gf119_disp_core_mthd_base }, %struct.anon.0 { ptr @.str.2, i32 3, ptr @gf119_disp_core_mthd_dac }, %struct.anon.0 { ptr @.str.3, i32 8, ptr @gf119_disp_core_mthd_sor }, %struct.anon.0 { ptr @.str.4, i32 4, ptr @gf119_disp_core_mthd_pior }, %struct.anon.0 { ptr @.str.5, i32 4, ptr @gk104_disp_core_mthd_head }, %struct.anon.0 zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@gf119_disp_core_func = external dso_local constant %struct.nv50_disp_chan_func, align 4
@gk104_disp_core_mthd_head = internal constant { { i32, i32, [71 x %struct.anon] }, [196 x i8] } { { i32, i32, [71 x %struct.anon] } { i32 768, i32 768, [71 x %struct.anon] [%struct.anon { i32 1024, i32 6685696, ptr null }, %struct.anon { i32 1028, i32 6685700, ptr null }, %struct.anon { i32 1032, i32 6685704, ptr null }, %struct.anon { i32 1036, i32 6685708, ptr null }, %struct.anon { i32 1040, i32 6685712, ptr null }, %struct.anon { i32 1044, i32 6685716, ptr null }, %struct.anon { i32 1048, i32 6685720, ptr null }, %struct.anon { i32 1052, i32 6685724, ptr null }, %struct.anon { i32 1056, i32 6685728, ptr null }, %struct.anon { i32 1060, i32 6685732, ptr null }, %struct.anon { i32 1064, i32 6685736, ptr null }, %struct.anon { i32 1068, i32 6685740, ptr null }, %struct.anon { i32 1072, i32 6685744, ptr null }, %struct.anon { i32 1076, i32 6685748, ptr null }, %struct.anon { i32 1080, i32 6685752, ptr null }, %struct.anon { i32 1088, i32 6685760, ptr null }, %struct.anon { i32 1092, i32 6685764, ptr null }, %struct.anon { i32 1096, i32 6685768, ptr null }, %struct.anon { i32 1100, i32 6685772, ptr null }, %struct.anon { i32 1104, i32 6685776, ptr null }, %struct.anon { i32 1108, i32 6685780, ptr null }, %struct.anon { i32 1112, i32 6685784, ptr null }, %struct.anon { i32 1116, i32 6685788, ptr null }, %struct.anon { i32 1120, i32 6685792, ptr null }, %struct.anon { i32 1128, i32 6685800, ptr null }, %struct.anon { i32 1132, i32 6685804, ptr null }, %struct.anon { i32 1136, i32 6685808, ptr null }, %struct.anon { i32 1140, i32 6685812, ptr null }, %struct.anon { i32 1148, i32 6685820, ptr null }, %struct.anon { i32 1152, i32 6685824, ptr null }, %struct.anon { i32 1156, i32 6685828, ptr null }, %struct.anon { i32 1160, i32 6685832, ptr null }, %struct.anon { i32 1164, i32 6685836, ptr null }, %struct.anon { i32 1168, i32 6685840, ptr null }, %struct.anon { i32 1172, i32 6685844, ptr null }, %struct.anon { i32 1176, i32 6685848, ptr null }, %struct.anon { i32 1184, i32 6685856, ptr null }, %struct.anon { i32 1200, i32 6685872, ptr null }, %struct.anon { i32 1208, i32 6685880, ptr null }, %struct.anon { i32 1212, i32 6685884, ptr null }, %struct.anon { i32 1216, i32 6685888, ptr null }, %struct.anon { i32 1220, i32 6685892, ptr null }, %struct.anon { i32 1224, i32 6685896, ptr null }, %struct.anon { i32 1232, i32 6685904, ptr null }, %struct.anon { i32 1236, i32 6685908, ptr null }, %struct.anon { i32 1248, i32 6685920, ptr null }, %struct.anon { i32 1252, i32 6685924, ptr null }, %struct.anon { i32 1256, i32 6685928, ptr null }, %struct.anon { i32 1260, i32 6685932, ptr null }, %struct.anon { i32 1264, i32 6685936, ptr null }, %struct.anon { i32 1268, i32 6685940, ptr null }, %struct.anon { i32 1272, i32 6685944, ptr null }, %struct.anon { i32 1276, i32 6685948, ptr null }, %struct.anon { i32 1280, i32 6685952, ptr null }, %struct.anon { i32 1284, i32 6685956, ptr null }, %struct.anon { i32 1288, i32 6685960, ptr null }, %struct.anon { i32 1292, i32 6685964, ptr null }, %struct.anon { i32 1296, i32 6685968, ptr null }, %struct.anon { i32 1300, i32 6685972, ptr null }, %struct.anon { i32 1304, i32 6685976, ptr null }, %struct.anon { i32 1308, i32 6685980, ptr null }, %struct.anon { i32 1312, i32 6685984, ptr null }, %struct.anon { i32 1316, i32 6685988, ptr null }, %struct.anon { i32 1324, i32 6685996, ptr null }, %struct.anon { i32 1328, i32 6686000, ptr null }, %struct.anon { i32 1356, i32 6686028, ptr null }, %struct.anon { i32 1360, i32 6686032, ptr null }, %struct.anon { i32 1364, i32 6686036, ptr null }, %struct.anon { i32 1368, i32 6686040, ptr null }, %struct.anon { i32 1372, i32 6686044, ptr null }, %struct.anon zeroinitializer] }, [196 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 107, i32 10 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 111, i32 5 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 112, i32 8 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 113, i32 8 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 114, i32 7 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 115, i32 7 }
@___asan_gen_.25 = private unnamed_addr constant [21 x i8] c"gk104_disp_core_mthd\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 106, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [26 x i8] c"gk104_disp_core_mthd_head\00", align 1
@___asan_gen_.29 = private constant [56 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregk104.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 27, i32 1 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @gk104_disp_core_mthd, ptr @gk104_disp_core_mthd_head], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_disp_core_mthd to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_disp_core_mthd_head to i32), i32 860, i32 1056, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk104_disp_core_new(ptr noundef %oclass, ptr noundef %argv, i32 noundef %argc, ptr noundef %disp, ptr noundef %pobject) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv50_disp_core_new_(ptr noundef nonnull @gf119_disp_core_func, ptr noundef nonnull @gk104_disp_core_mthd, ptr noundef %disp, i32 noundef 0, ptr noundef %oclass, ptr noundef %argv, i32 noundef %argc, ptr noundef %pobject) #2
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregk104.c", i32 107, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregk104.c", i32 111, i32 5}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregk104.c", i32 112, i32 8}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregk104.c", i32 113, i32 8}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregk104.c", i32 114, i32 7}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregk104.c", i32 115, i32 7}
!12 = !{ptr @gk104_disp_core_mthd, !13, !"gk104_disp_core_mthd", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregk104.c", i32 106, i32 1}
!14 = !{ptr @gk104_disp_core_mthd_head, !15, !"gk104_disp_core_mthd_head", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/coregk104.c", i32 27, i32 1}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
