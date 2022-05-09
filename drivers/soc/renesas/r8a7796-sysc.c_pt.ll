; ModuleID = '/llk/IR_all_yes/drivers/soc/renesas/r8a7796-sysc.c_pt.bc'
source_filename = "../drivers/soc/renesas/r8a7796-sysc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rcar_sysc_area = type { ptr, i16, i8, i8, i32, i32 }
%struct.rcar_sysc_info = type { ptr, ptr, i32, i32, i32 }

@r8a7796_areas = internal global [16 x %struct.rcar_sysc_area] [%struct.rcar_sysc_area { ptr @.str, i16 0, i8 0, i8 32, i32 -1, i32 4 }, %struct.rcar_sysc_area { ptr @.str.1, i16 448, i8 0, i8 12, i32 32, i32 2 }, %struct.rcar_sysc_area { ptr @.str.2, i16 128, i8 0, i8 0, i32 12, i32 5 }, %struct.rcar_sysc_area { ptr @.str.3, i16 128, i8 1, i8 1, i32 12, i32 5 }, %struct.rcar_sysc_area { ptr @.str.4, i16 320, i8 0, i8 21, i32 32, i32 2 }, %struct.rcar_sysc_area { ptr @.str.5, i16 512, i8 0, i8 5, i32 21, i32 5 }, %struct.rcar_sysc_area { ptr @.str.6, i16 512, i8 1, i8 6, i32 21, i32 5 }, %struct.rcar_sysc_area { ptr @.str.7, i16 512, i8 2, i8 7, i32 21, i32 5 }, %struct.rcar_sysc_area { ptr @.str.8, i16 512, i8 3, i8 8, i32 21, i32 5 }, %struct.rcar_sysc_area { ptr @.str.9, i16 576, i8 0, i8 13, i32 32, i32 0 }, %struct.rcar_sysc_area { ptr @.str.10, i16 896, i8 0, i8 14, i32 32, i32 0 }, %struct.rcar_sysc_area { ptr @.str.11, i16 960, i8 0, i8 25, i32 14, i32 0 }, %struct.rcar_sysc_area { ptr @.str.12, i16 960, i8 1, i8 26, i32 14, i32 0 }, %struct.rcar_sysc_area { ptr @.str.13, i16 256, i8 0, i8 17, i32 32, i32 0 }, %struct.rcar_sysc_area { ptr @.str.14, i16 256, i8 1, i8 18, i32 17, i32 0 }, %struct.rcar_sysc_area { ptr @.str.15, i16 384, i8 0, i8 24, i32 32, i32 0 }], section ".init.data", align 4
@r8a77960_sysc_info = dso_local local_unnamed_addr constant %struct.rcar_sysc_info { ptr null, ptr @r8a7796_areas, i32 16, i32 0, i32 0 }, section ".init.rodata", align 4
@r8a77961_sysc_info = dso_local local_unnamed_addr constant %struct.rcar_sysc_info { ptr @r8a77961_sysc_init, ptr @r8a7796_areas, i32 16, i32 760, i32 1 }, section ".init.rodata", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"always-on\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ca57-scu\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ca57-cpu0\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ca57-cpu1\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ca53-scu\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ca53-cpu0\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ca53-cpu1\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ca53-cpu2\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ca53-cpu3\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cr7\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"a3vc\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"a2vc0\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"a2vc1\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3dg-a\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3dg-b\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"a3ir\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 17, i32 4 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 18, i32 4 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 20, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 22, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 24, i32 4 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 26, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 28, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 30, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 32, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 34, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 35, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 36, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 37, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 38, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 39, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [38 x i8] c"../drivers/soc/renesas/r8a7796-sysc.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 40, i32 4 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a77961_sysc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rcar_sysc_nullify(ptr noundef nonnull @r8a7796_areas, i32 noundef 16, i8 noundef zeroext 25) #2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_sysc_nullify(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @r8a77960_sysc_info, !1, !"r8a77960_sysc_info", i1 false, i1 false}
!1 = !{!"../drivers/soc/renesas/r8a7796-sysc.c", i32 45, i32 29}
!2 = !{ptr @r8a77961_sysc_info, !3, !"r8a77961_sysc_info", i1 false, i1 false}
!3 = !{!"../drivers/soc/renesas/r8a7796-sysc.c", i32 60, i32 29}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/soc/renesas/r8a7796-sysc.c", i32 17, i32 4}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/soc/renesas/r8a7796-sysc.c", i32 18, i32 4}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/soc/renesas/r8a7796-sysc.c", i32 20, i32 4}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/renesas/r8a7796-sysc.c", i32 22, i32 4}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/soc/renesas/r8a7796-sysc.c", i32 24, i32 4}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/renesas/r8a7796-sysc.c", i32 26, i32 4}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soc/renesas/r8a7796-sysc.c", i32 28, i32 4}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/soc/renesas/r8a7796-sysc.c", i32 30, i32 4}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/soc/renesas/r8a7796-sysc.c", i32 32, i32 4}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soc/renesas/r8a7796-sysc.c", i32 34, i32 4}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/soc/renesas/r8a7796-sysc.c", i32 35, i32 4}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/soc/renesas/r8a7796-sysc.c", i32 36, i32 4}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/soc/renesas/r8a7796-sysc.c", i32 37, i32 4}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/soc/renesas/r8a7796-sysc.c", i32 38, i32 4}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/soc/renesas/r8a7796-sysc.c", i32 39, i32 4}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/soc/renesas/r8a7796-sysc.c", i32 40, i32 4}
!36 = !{ptr @r8a7796_areas, !37, !"r8a7796_areas", i1 false, i1 false}
!37 = !{!"../drivers/soc/renesas/r8a7796-sysc.c", i32 16, i32 30}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
