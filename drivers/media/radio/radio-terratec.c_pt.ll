; ModuleID = '/llk/IR_all_yes/drivers/media/radio/radio-terratec.c_pt.bc'
source_filename = "../drivers/media/radio/radio-terratec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }

@__UNIQUE_ID_author292 = internal constant [44 x i8] c"radio_terratec.author=R. Offermans & others\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [88 x i8] c"radio_terratec.description=A driver for the TerraTec ActiveRadio Standalone radio card.\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [55 x i8] c"radio_terratec.file=drivers/media/radio/radio-terratec\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [27 x i8] c"radio_terratec.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version296 = internal constant [30 x i8] c"radio_terratec.version=0.1.99\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"radio_terratec\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.1.99\00", [25 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_radio_nr = internal constant [24 x i8] c"radio_terratec.radio_nr\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@radio_nr = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_radio_nr = internal constant %struct.kernel_param { ptr @__param_str_radio_nr, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radio_nr } }, section "__param", align 4
@__UNIQUE_ID_radio_nrtype297 = internal constant [37 x i8] c"radio_terratec.parmtype=radio_nr:int\00", section ".modinfo", align 1
@__UNIQUE_ID_radio_nr298 = internal constant [49 x i8] c"radio_terratec.parm=radio_nr:Radio device number\00", section ".modinfo", align 1
@__initcall__kmod_radio_terratec__299_169_terratec_init6 = internal global ptr @terratec_init, section ".initcall6.init", align 4
@__exitcall_terratec_exit = internal global ptr @terratec_exit, section ".exitcall.exit", align 4
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 38, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant [9 x i8] c"radio_nr\00", align 1
@___asan_gen_.15 = private constant [40 x i8] c"../drivers/media/radio/radio-terratec.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 44, i32 12 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_radio_nr298, ptr @__UNIQUE_ID_radio_nrtype297, ptr @__UNIQUE_ID_version296, ptr @__exitcall_terratec_exit, ptr @__initcall__kmod_radio_terratec__299_169_terratec_init6, ptr @__modver_attr, ptr @__param_radio_nr, ptr @terratec_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @radio_nr], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @terratec_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @terratec_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -19
}

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

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__UNIQUE_ID_author292, !1, !"__UNIQUE_ID_author292", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/radio-terratec.c", i32 35, i32 1}
!2 = !{ptr @__UNIQUE_ID_description293, !3, !"__UNIQUE_ID_description293", i1 false, i1 false}
!3 = !{!"../drivers/media/radio/radio-terratec.c", i32 36, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/radio/radio-terratec.c", i32 37, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version296, !8, !"__UNIQUE_ID_version296", i1 false, i1 false}
!8 = !{!"../drivers/media/radio/radio-terratec.c", i32 38, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_radio_nr, !14, !"__param_radio_nr", i1 false, i1 false}
!14 = !{!"../drivers/media/radio/radio-terratec.c", i32 46, i32 1}
!15 = !{ptr @__UNIQUE_ID_radio_nrtype297, !14, !"__UNIQUE_ID_radio_nrtype297", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_radio_nr298, !17, !"__UNIQUE_ID_radio_nr298", i1 false, i1 false}
!17 = !{!"../drivers/media/radio/radio-terratec.c", i32 47, i32 1}
!18 = !{ptr @__initcall__kmod_radio_terratec__299_169_terratec_init6, !19, !"__initcall__kmod_radio_terratec__299_169_terratec_init6", i1 false, i1 false}
!19 = !{!"../drivers/media/radio/radio-terratec.c", i32 169, i32 1}
!20 = !{ptr @__exitcall_terratec_exit, !21, !"__exitcall_terratec_exit", i1 false, i1 false}
!21 = !{!"../drivers/media/radio/radio-terratec.c", i32 170, i32 1}
!22 = !{ptr @__param_str_radio_nr, !14, !"__param_str_radio_nr", i1 false, i1 false}
!23 = !{ptr @radio_nr, !24, !"radio_nr", i1 false, i1 false}
!24 = !{!"../drivers/media/radio/radio-terratec.c", i32 44, i32 12}
!25 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/radio/radio-terratec.c", i32 145, i32 12}
!27 = distinct !{null, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/radio/radio-terratec.c", i32 153, i32 10}
!29 = distinct !{null, !30, !"terratec_driver", i1 false, i1 false}
!30 = !{!"../drivers/media/radio/radio-terratec.c", i32 139, i32 32}
!31 = distinct !{null, !32, !"terratec_ops", i1 false, i1 false}
!32 = !{!"../drivers/media/radio/radio-terratec.c", i32 130, i32 35}
!33 = distinct !{null, !34, !"io", i1 false, i1 false}
!34 = !{!"../drivers/media/radio/radio-terratec.c", i32 43, i32 12}
!35 = distinct !{null, !36, !"terratec_ioports", i1 false, i1 false}
!36 = !{!"../drivers/media/radio/radio-terratec.c", i32 137, i32 18}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
