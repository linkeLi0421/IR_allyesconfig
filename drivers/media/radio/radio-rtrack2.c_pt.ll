; ModuleID = '/llk/IR_all_yes/drivers/media/radio/radio-rtrack2.c_pt.bc'
source_filename = "../drivers/media/radio/radio-rtrack2.c"
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
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }

@__UNIQUE_ID_author292 = internal constant [31 x i8] c"radio_rtrack2.author=Ben Pfaff\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [69 x i8] c"radio_rtrack2.description=A driver for the RadioTrack II radio card.\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [53 x i8] c"radio_rtrack2.file=drivers/media/radio/radio-rtrack2\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [26 x i8] c"radio_rtrack2.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version296 = internal constant [29 x i8] c"radio_rtrack2.version=0.1.99\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"radio_rtrack2\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.1.99\00", [25 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_io = internal constant [17 x i8] c"radio_rtrack2.io\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_io = internal constant %struct.kparam_array { i32 2, i32 4, ptr null, ptr @param_ops_int, ptr @io }, align 4
@__param_io = internal constant %struct.kernel_param { ptr @__param_str_io, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_io } }, section "__param", align 4
@__UNIQUE_ID_iotype297 = internal constant [39 x i8] c"radio_rtrack2.parmtype=io:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_io298 = internal constant [76 x i8] c"radio_rtrack2.parm=io:I/O addresses of the RadioTrack card (0x20f or 0x30f)\00", section ".modinfo", align 1
@__param_str_radio_nr = internal constant [23 x i8] c"radio_rtrack2.radio_nr\00", align 1
@__param_arr_radio_nr = internal constant %struct.kparam_array { i32 2, i32 4, ptr null, ptr @param_ops_int, ptr @radio_nr }, align 4
@__param_radio_nr = internal constant %struct.kernel_param { ptr @__param_str_radio_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_radio_nr } }, section "__param", align 4
@__UNIQUE_ID_radio_nrtype299 = internal constant [45 x i8] c"radio_rtrack2.parmtype=radio_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_radio_nr300 = internal constant [49 x i8] c"radio_rtrack2.parm=radio_nr:Radio device numbers\00", section ".modinfo", align 1
@__initcall__kmod_radio_rtrack2__301_141_rtrack2_init6 = internal global ptr @rtrack2_init, section ".initcall6.init", align 4
@__exitcall_rtrack2_exit = internal global ptr @rtrack2_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@io = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 780, i32 -1], [24 x i8] zeroinitializer }, align 32
@radio_nr = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 -1, i32 -1], [24 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 31, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 39, i32 12 }
@___asan_gen_.17 = private unnamed_addr constant [9 x i8] c"radio_nr\00", align 1
@___asan_gen_.18 = private constant [39 x i8] c"../drivers/media/radio/radio-rtrack2.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 41, i32 12 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_io298, ptr @__UNIQUE_ID_iotype297, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_radio_nr300, ptr @__UNIQUE_ID_radio_nrtype299, ptr @__UNIQUE_ID_version296, ptr @__exitcall_rtrack2_exit, ptr @__initcall__kmod_radio_rtrack2__301_141_rtrack2_init6, ptr @__modver_attr, ptr @__param_io, ptr @__param_radio_nr, ptr @rtrack2_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @io, ptr @radio_nr], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_nr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rtrack2_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtrack2_init() #1 section ".init.text" align 64 {
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !21, !23, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__UNIQUE_ID_author292, !1, !"__UNIQUE_ID_author292", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/radio-rtrack2.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_description293, !3, !"__UNIQUE_ID_description293", i1 false, i1 false}
!3 = !{!"../drivers/media/radio/radio-rtrack2.c", i32 29, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/radio/radio-rtrack2.c", i32 30, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version296, !8, !"__UNIQUE_ID_version296", i1 false, i1 false}
!8 = !{!"../drivers/media/radio/radio-rtrack2.c", i32 31, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_io, !14, !"__param_io", i1 false, i1 false}
!14 = !{!"../drivers/media/radio/radio-rtrack2.c", i32 43, i32 1}
!15 = !{ptr @__UNIQUE_ID_iotype297, !14, !"__UNIQUE_ID_iotype297", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_io298, !17, !"__UNIQUE_ID_io298", i1 false, i1 false}
!17 = !{!"../drivers/media/radio/radio-rtrack2.c", i32 44, i32 1}
!18 = !{ptr @__param_radio_nr, !19, !"__param_radio_nr", i1 false, i1 false}
!19 = !{!"../drivers/media/radio/radio-rtrack2.c", i32 45, i32 1}
!20 = !{ptr @__UNIQUE_ID_radio_nrtype299, !19, !"__UNIQUE_ID_radio_nrtype299", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_radio_nr300, !22, !"__UNIQUE_ID_radio_nr300", i1 false, i1 false}
!22 = !{!"../drivers/media/radio/radio-rtrack2.c", i32 46, i32 1}
!23 = !{ptr @__initcall__kmod_radio_rtrack2__301_141_rtrack2_init6, !24, !"__initcall__kmod_radio_rtrack2__301_141_rtrack2_init6", i1 false, i1 false}
!24 = !{!"../drivers/media/radio/radio-rtrack2.c", i32 141, i32 1}
!25 = !{ptr @__exitcall_rtrack2_exit, !26, !"__exitcall_rtrack2_exit", i1 false, i1 false}
!26 = !{!"../drivers/media/radio/radio-rtrack2.c", i32 142, i32 1}
!27 = !{ptr @__param_str_io, !14, !"__param_str_io", i1 false, i1 false}
!28 = !{ptr @__param_arr_io, !14, !"__param_arr_io", i1 false, i1 false}
!29 = !{ptr @io, !30, !"io", i1 false, i1 false}
!30 = !{!"../drivers/media/radio/radio-rtrack2.c", i32 39, i32 12}
!31 = !{ptr @__param_str_radio_nr, !19, !"__param_str_radio_nr", i1 false, i1 false}
!32 = !{ptr @__param_arr_radio_nr, !19, !"__param_arr_radio_nr", i1 false, i1 false}
!33 = !{ptr @radio_nr, !34, !"radio_nr", i1 false, i1 false}
!34 = !{!"../drivers/media/radio/radio-rtrack2.c", i32 41, i32 12}
!35 = distinct !{null, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/radio/radio-rtrack2.c", i32 118, i32 12}
!37 = distinct !{null, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/radio/radio-rtrack2.c", i32 126, i32 10}
!39 = distinct !{null, !40, !"rtrack2_driver", i1 false, i1 false}
!40 = !{!"../drivers/media/radio/radio-rtrack2.c", i32 112, i32 32}
!41 = distinct !{null, !42, !"rtrack2_ops", i1 false, i1 false}
!42 = !{!"../drivers/media/radio/radio-rtrack2.c", i32 103, i32 35}
!43 = distinct !{null, !44, !"rtrack2_ioports", i1 false, i1 false}
!44 = !{!"../drivers/media/radio/radio-rtrack2.c", i32 110, i32 18}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
