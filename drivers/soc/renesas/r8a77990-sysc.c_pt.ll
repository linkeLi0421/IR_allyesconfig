; ModuleID = '/llk/IR_all_yes/drivers/soc/renesas/r8a77990-sysc.c_pt.bc'
source_filename = "../drivers/soc/renesas/r8a77990-sysc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rcar_sysc_area = type { ptr, i16, i8, i8, i32, i32 }
%struct.rcar_sysc_info = type { ptr, ptr, i32, i32, i32 }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@r8a77990_areas = internal global [9 x %struct.rcar_sysc_area] [%struct.rcar_sysc_area { ptr @.str.2, i16 0, i8 0, i8 32, i32 -1, i32 4 }, %struct.rcar_sysc_area { ptr @.str.3, i16 320, i8 0, i8 21, i32 32, i32 2 }, %struct.rcar_sysc_area { ptr @.str.4, i16 512, i8 0, i8 5, i32 21, i32 5 }, %struct.rcar_sysc_area { ptr @.str.5, i16 512, i8 1, i8 6, i32 21, i32 5 }, %struct.rcar_sysc_area { ptr @.str.6, i16 576, i8 0, i8 13, i32 32, i32 0 }, %struct.rcar_sysc_area { ptr @.str.7, i16 896, i8 0, i8 14, i32 32, i32 0 }, %struct.rcar_sysc_area { ptr @.str.8, i16 960, i8 1, i8 26, i32 14, i32 0 }, %struct.rcar_sysc_area { ptr @.str.9, i16 256, i8 0, i8 17, i32 32, i32 0 }, %struct.rcar_sysc_area { ptr @.str.10, i16 256, i8 1, i8 18, i32 17, i32 0 }], section ".init.data", align 4
@r8a77990_sysc_info = dso_local local_unnamed_addr constant %struct.rcar_sysc_info { ptr @r8a77990_sysc_init, ptr @r8a77990_areas, i32 9, i32 760, i32 1 }, section ".init.rodata", align 4
@r8a77990 = internal constant [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr @.str, ptr null, ptr @.str.1, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], section ".init.rodata", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ES1.0\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"r8a77990\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"always-on\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ca53-scu\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ca53-cpu0\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ca53-cpu1\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cr7\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"a3vc\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"a2vc1\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3dg-a\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3dg-b\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 33, i32 38 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 33, i32 14 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 17, i32 4 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 18, i32 4 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 20, i32 4 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 22, i32 4 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 24, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 25, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 26, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 27, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [39 x i8] c"../drivers/soc/renesas/r8a77990-sysc.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 28, i32 4 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @r8a77990_sysc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @soc_device_match(ptr noundef nonnull @r8a77990) #2
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %__tmp.sroa.0.0.copyload = load ptr, ptr getelementptr inbounds ([9 x %struct.rcar_sysc_area], ptr @r8a77990_areas, i32 0, i32 7), align 4
  %__tmp.sroa.5.0.copyload = load i16, ptr getelementptr inbounds ([9 x %struct.rcar_sysc_area], ptr @r8a77990_areas, i32 0, i32 7, i32 1), align 4
  %__tmp.sroa.6.0.copyload = load i8, ptr getelementptr inbounds ([9 x %struct.rcar_sysc_area], ptr @r8a77990_areas, i32 0, i32 7, i32 2), align 2
  %__tmp.sroa.7.0.copyload = load i8, ptr getelementptr inbounds ([9 x %struct.rcar_sysc_area], ptr @r8a77990_areas, i32 0, i32 7, i32 3), align 1
  %__tmp.sroa.9.0.copyload = load i32, ptr getelementptr inbounds ([9 x %struct.rcar_sysc_area], ptr @r8a77990_areas, i32 0, i32 7, i32 5), align 4
  %0 = call ptr @memcpy(ptr getelementptr inbounds ([9 x %struct.rcar_sysc_area], ptr @r8a77990_areas, i32 0, i32 7), ptr getelementptr inbounds ([9 x %struct.rcar_sysc_area], ptr @r8a77990_areas, i32 0, i32 8), i32 16)
  store ptr %__tmp.sroa.0.0.copyload, ptr getelementptr inbounds ([9 x %struct.rcar_sysc_area], ptr @r8a77990_areas, i32 0, i32 8), align 4
  store i16 %__tmp.sroa.5.0.copyload, ptr getelementptr inbounds ([9 x %struct.rcar_sysc_area], ptr @r8a77990_areas, i32 0, i32 8, i32 1), align 4
  store i8 %__tmp.sroa.6.0.copyload, ptr getelementptr inbounds ([9 x %struct.rcar_sysc_area], ptr @r8a77990_areas, i32 0, i32 8, i32 2), align 2
  store i8 %__tmp.sroa.7.0.copyload, ptr getelementptr inbounds ([9 x %struct.rcar_sysc_area], ptr @r8a77990_areas, i32 0, i32 8, i32 3), align 1
  store i32 %__tmp.sroa.9.0.copyload, ptr getelementptr inbounds ([9 x %struct.rcar_sysc_area], ptr @r8a77990_areas, i32 0, i32 8, i32 5), align 4
  store i32 32, ptr getelementptr inbounds ([9 x %struct.rcar_sysc_area], ptr @r8a77990_areas, i32 0, i32 7, i32 4), align 4
  store i32 18, ptr getelementptr inbounds ([9 x %struct.rcar_sysc_area], ptr @r8a77990_areas, i32 0, i32 8, i32 4), align 4
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @r8a77990_sysc_info, !1, !"r8a77990_sysc_info", i1 false, i1 false}
!1 = !{!"../drivers/soc/renesas/r8a77990-sysc.c", i32 49, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soc/renesas/r8a77990-sysc.c", i32 33, i32 38}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/soc/renesas/r8a77990-sysc.c", i32 33, i32 14}
!6 = !{ptr @r8a77990, !7, !"r8a77990", i1 false, i1 false}
!7 = !{!"../drivers/soc/renesas/r8a77990-sysc.c", i32 32, i32 42}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/soc/renesas/r8a77990-sysc.c", i32 17, i32 4}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/renesas/r8a77990-sysc.c", i32 18, i32 4}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/soc/renesas/r8a77990-sysc.c", i32 20, i32 4}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/renesas/r8a77990-sysc.c", i32 22, i32 4}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soc/renesas/r8a77990-sysc.c", i32 24, i32 4}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/soc/renesas/r8a77990-sysc.c", i32 25, i32 4}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/soc/renesas/r8a77990-sysc.c", i32 26, i32 4}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soc/renesas/r8a77990-sysc.c", i32 27, i32 4}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/soc/renesas/r8a77990-sysc.c", i32 28, i32 4}
!26 = !{ptr @r8a77990_areas, !27, !"r8a77990_areas", i1 false, i1 false}
!27 = !{!"../drivers/soc/renesas/r8a77990-sysc.c", i32 16, i32 30}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
