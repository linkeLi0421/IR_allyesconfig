; ModuleID = '/llk/IR_all_yes/drivers/media/radio/radio-sf16fmr2.c_pt.bc'
source_filename = "../drivers/media/radio/radio-sf16fmr2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@__UNIQUE_ID_author292 = internal constant [34 x i8] c"radio_sf16fmr2.author=Ondrej Zary\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [83 x i8] c"radio_sf16fmr2.description=MediaForte SF16-FMR2 and SF16-FMD2 FM radio card driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [55 x i8] c"radio_sf16fmr2.file=drivers/media/radio/radio-sf16fmr2\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [27 x i8] c"radio_sf16fmr2.license=GPL\00", section ".modinfo", align 1
@__param_str_radio_nr = internal constant [24 x i8] c"radio_sf16fmr2.radio_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_radio_nr = internal constant %struct.kparam_array { i32 2, i32 4, ptr null, ptr @param_ops_int, ptr @radio_nr }, align 4
@__param_radio_nr = internal constant %struct.kernel_param { ptr @__param_str_radio_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_radio_nr } }, section "__param", align 4
@__UNIQUE_ID_radio_nrtype296 = internal constant [46 x i8] c"radio_sf16fmr2.parmtype=radio_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_radio_nr297 = internal constant [50 x i8] c"radio_sf16fmr2.parm=radio_nr:Radio device numbers\00", section ".modinfo", align 1
@__initcall__kmod_radio_sf16fmr2__302_344_fmr2_init6 = internal global ptr @fmr2_init, section ".initcall6.init", align 4
@__exitcall_fmr2_exit = internal global ptr @fmr2_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@radio_nr = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 -1, i32 -1], [24 x i8] zeroinitializer }, align 32
@fmr2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013radio-sf16fmr2: I/O port 0x%x already in use\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fmr2_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/radio/radio-sf16fmr2.c\00", [59 x i8] zeroinitializer }, align 32
@fmr2_probe._entry_ptr = internal global ptr @fmr2_probe._entry, section ".printk_index", align 4
@fmr2_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Could not register v4l2_device\0A\00", [58 x i8] zeroinitializer }, align 32
@fmr2_probe._entry_ptr.8 = internal global ptr @fmr2_probe._entry.6, section ".printk_index", align 4
@fmr2_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013radio-sf16fmr2: Unable to detect TEA575x tuner\0A\00", [46 x i8] zeroinitializer }, align 32
@fmr2_probe._entry_ptr.14 = internal global ptr @fmr2_probe._entry.12, section ".printk_index", align 4
@fmr2_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016radio-sf16fmr2: %s radio card at 0x%x.\0A\00", [54 x i8] zeroinitializer }, align 32
@fmr2_probe._entry_ptr.17 = internal global ptr @fmr2_probe._entry.15, section ".printk_index", align 4
@fmr2_tea_ext_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.5, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013radio-sf16fmr2: can't initialize controls\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fmr2_tea_ext_init\00", [46 x i8] zeroinitializer }, align 32
@fmr2_tea_ext_init._entry_ptr = internal global ptr @fmr2_tea_ext_init._entry, section ".printk_index", align 4
@___asan_gen_.20 = private unnamed_addr constant [9 x i8] c"radio_nr\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 27, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 222, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 229, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 243, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 248, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [40 x i8] c"../drivers/media/radio/radio-sf16fmr2.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 193, i32 4 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_radio_nr297, ptr @__UNIQUE_ID_radio_nrtype296, ptr @__exitcall_fmr2_exit, ptr @__initcall__kmod_radio_sf16fmr2__302_344_fmr2_init6, ptr @__param_radio_nr, ptr @fmr2_exit, ptr @fmr2_probe._entry, ptr @fmr2_probe._entry.12, ptr @fmr2_probe._entry.15, ptr @fmr2_probe._entry.6, ptr @fmr2_probe._entry_ptr, ptr @fmr2_probe._entry_ptr.14, ptr @fmr2_probe._entry_ptr.17, ptr @fmr2_probe._entry_ptr.8, ptr @fmr2_tea_ext_init._entry, ptr @fmr2_tea_ext_init._entry_ptr, ptr @radio_nr, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_nr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmr2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmr2_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmr2_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmr2_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmr2_tea_ext_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fmr2_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fmr2_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -19
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !53, !54, !56, !57, !58, !60, !62, !63, !64, !65, !67, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__UNIQUE_ID_author292, !1, !"__UNIQUE_ID_author292", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_description293, !3, !"__UNIQUE_ID_description293", i1 false, i1 false}
!3 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 21, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 22, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__param_radio_nr, !8, !"__param_radio_nr", i1 false, i1 false}
!8 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 28, i32 1}
!9 = !{ptr @__UNIQUE_ID_radio_nrtype296, !8, !"__UNIQUE_ID_radio_nrtype296", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_radio_nr297, !11, !"__UNIQUE_ID_radio_nr297", i1 false, i1 false}
!11 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 29, i32 1}
!12 = !{ptr @__initcall__kmod_radio_sf16fmr2__302_344_fmr2_init6, !13, !"__initcall__kmod_radio_sf16fmr2__302_344_fmr2_init6", i1 false, i1 false}
!13 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 344, i32 1}
!14 = !{ptr @__exitcall_fmr2_exit, !15, !"__exitcall_fmr2_exit", i1 false, i1 false}
!15 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 345, i32 1}
!16 = distinct !{null, !17, !"isa_registered", i1 false, i1 false}
!17 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 42, i32 13}
!18 = distinct !{null, !19, !"pnp_registered", i1 false, i1 false}
!19 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 43, i32 13}
!20 = !{ptr @__param_str_radio_nr, !8, !"__param_str_radio_nr", i1 false, i1 false}
!21 = !{ptr @__param_arr_radio_nr, !8, !"__param_arr_radio_nr", i1 false, i1 false}
!22 = !{ptr @radio_nr, !23, !"radio_nr", i1 false, i1 false}
!23 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 27, i32 12}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 316, i32 11}
!26 = distinct !{null, !27, !"fmr2_pnp_driver", i1 false, i1 false}
!27 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 315, i32 26}
!28 = distinct !{null, !29, !"fmr2_pnp_ids", i1 false, i1 false}
!29 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 201, i32 35}
!30 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 210, i32 36}
!32 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 210, i32 50}
!34 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 222, i32 3}
!36 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @fmr2_probe._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @fmr2_probe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 229, i32 3}
!42 = !{ptr @fmr2_probe._entry.6, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @fmr2_probe._entry_ptr.8, !41, !"_entry_ptr", i1 false, i1 false}
!44 = distinct !{null, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 239, i32 59}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 240, i32 20}
!48 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 240, i32 28}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 243, i32 3}
!52 = !{ptr @fmr2_probe._entry.12, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @fmr2_probe._entry_ptr.14, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 248, i32 2}
!56 = !{ptr @fmr2_probe._entry.15, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @fmr2_probe._entry_ptr.17, !55, !"_entry_ptr", i1 false, i1 false}
!58 = distinct !{null, !59, !"fmr2_tea_ops", i1 false, i1 false}
!59 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 86, i32 37}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 193, i32 4}
!62 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @fmr2_tea_ext_init._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @fmr2_tea_ext_init._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = distinct !{null, !66, !"fmr2_ctrl_ops", i1 false, i1 false}
!66 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 180, i32 35}
!67 = distinct !{null, !68, !"fmr2_cards", i1 false, i1 false}
!68 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 41, i32 21}
!69 = distinct !{null, !70, !"num_fmr2_cards", i1 false, i1 false}
!70 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 40, i32 12}
!71 = distinct !{null, !72, !"fmr2_isa_driver", i1 false, i1 false}
!72 = !{!"../drivers/media/radio/radio-sf16fmr2.c", i32 307, i32 26}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
