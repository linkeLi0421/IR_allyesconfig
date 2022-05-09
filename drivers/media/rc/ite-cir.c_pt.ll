; ModuleID = '/llk/IR_all_yes/drivers/media/rc/ite-cir.c_pt.bc'
source_filename = "../drivers/media/rc/ite-cir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@__param_str_sample_period = internal constant [22 x i8] c"ite_cir.sample_period\00", align 1
@param_ops_long = external dso_local constant %struct.kernel_param_ops, align 4
@sample_period = internal global { i32, [28 x i8] } { i32 8680, [28 x i8] zeroinitializer }, align 32
@__param_sample_period = internal constant %struct.kernel_param { ptr @__param_str_sample_period, ptr null, ptr @param_ops_long, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @sample_period } }, section "__param", align 4
@__UNIQUE_ID_sample_periodtype232 = internal constant [36 x i8] c"ite_cir.parmtype=sample_period:long\00", section ".modinfo", align 1
@__UNIQUE_ID_sample_period233 = internal constant [41 x i8] c"ite_cir.parm=sample_period:sample period\00", section ".modinfo", align 1
@__param_str_model_number = internal constant [21 x i8] c"ite_cir.model_number\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@model_number = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_model_number = internal constant %struct.kernel_param { ptr @__param_str_model_number, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @model_number } }, section "__param", align 4
@__UNIQUE_ID_model_numbertype234 = internal constant [34 x i8] c"ite_cir.parmtype=model_number:int\00", section ".modinfo", align 1
@__UNIQUE_ID_model_number235 = internal constant [66 x i8] c"ite_cir.parm=model_number:Use this model number, don't autodetect\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [62 x i8] c"ite_cir.description=ITE Tech Inc. IT8712F/ITE8512F CIR driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [61 x i8] c"ite_cir.author=Juan J. Garcia de Soria <skandalfo@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [38 x i8] c"ite_cir.file=drivers/media/rc/ite-cir\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [20 x i8] c"ite_cir.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_ite_cir__245_1511_ite_driver_init6 = internal global ptr @ite_driver_init, section ".initcall6.init", align 4
@__exitcall_ite_driver_exit = internal global ptr @ite_driver_exit, section ".exitcall.exit", align 4
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ite_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/rc/ite-cir.c\00", [37 x i8] zeroinitializer }, align 32
@ite_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1327, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"model has been forced to: %s\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ite_probe._entry_ptr = internal global ptr @ite_probe._entry, section ".printk_index", align 4
@ite_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1337, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IR PNP Port not valid!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ite_probe._entry_ptr.11 = internal global ptr @ite_probe._entry.8, section ".printk_index", align 4
@ite_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1342, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PNP IRQ not valid!\0A\00", [44 x i8] zeroinitializer }, align 32
@ite_probe._entry_ptr.14 = internal global ptr @ite_probe._entry.12, section ".printk_index", align 4
@ite_cir_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 240, ptr @.str.31, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"receive overflow\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ite_cir_isr\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ite_cir_isr._entry_ptr = internal global ptr @ite_cir_isr._entry, section ".printk_index", align 4
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"sample_period\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 37, i32 13 }
@___asan_gen_.39 = private unnamed_addr constant [13 x i8] c"model_number\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 42, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1321, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1326, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1337, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1342, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [30 x i8] c"../drivers/media/rc/ite-cir.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 240, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__UNIQUE_ID_model_number235, ptr @__UNIQUE_ID_model_numbertype234, ptr @__UNIQUE_ID_sample_period233, ptr @__UNIQUE_ID_sample_periodtype232, ptr @__exitcall_ite_driver_exit, ptr @__initcall__kmod_ite_cir__245_1511_ite_driver_init6, ptr @__param_model_number, ptr @__param_sample_period, ptr @ite_cir_isr._entry, ptr @ite_cir_isr._entry_ptr, ptr @ite_driver_exit, ptr @ite_probe._entry, ptr @ite_probe._entry.12, ptr @ite_probe._entry.8, ptr @ite_probe._entry_ptr, ptr @ite_probe._entry_ptr.11, ptr @ite_probe._entry_ptr.14, ptr @sample_period, ptr @model_number, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sample_period to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @model_number to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ite_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ite_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ite_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ite_cir_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ite_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -19
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ite_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !20, !21, !23, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !40, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !61, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !79, !80, !82, !83, !84, !85, !86, !88, !89, !91, !92, !94, !95}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @__param_sample_period, !1, !"__param_sample_period", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/ite-cir.c", i32 38, i32 1}
!2 = !{ptr @__UNIQUE_ID_sample_periodtype232, !1, !"__UNIQUE_ID_sample_periodtype232", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_sample_period233, !4, !"__UNIQUE_ID_sample_period233", i1 false, i1 false}
!4 = !{!"../drivers/media/rc/ite-cir.c", i32 39, i32 1}
!5 = !{ptr @__param_model_number, !6, !"__param_model_number", i1 false, i1 false}
!6 = !{!"../drivers/media/rc/ite-cir.c", i32 43, i32 1}
!7 = !{ptr @__UNIQUE_ID_model_numbertype234, !6, !"__UNIQUE_ID_model_numbertype234", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_model_number235, !9, !"__UNIQUE_ID_model_number235", i1 false, i1 false}
!9 = !{!"../drivers/media/rc/ite-cir.c", i32 44, i32 1}
!10 = !{ptr @__UNIQUE_ID_description241, !11, !"__UNIQUE_ID_description241", i1 false, i1 false}
!11 = !{!"../drivers/media/rc/ite-cir.c", i32 1506, i32 1}
!12 = !{ptr @__UNIQUE_ID_author242, !13, !"__UNIQUE_ID_author242", i1 false, i1 false}
!13 = !{!"../drivers/media/rc/ite-cir.c", i32 1508, i32 1}
!14 = !{ptr @__UNIQUE_ID_file243, !15, !"__UNIQUE_ID_file243", i1 false, i1 false}
!15 = !{!"../drivers/media/rc/ite-cir.c", i32 1509, i32 1}
!16 = !{ptr @__UNIQUE_ID_license244, !15, !"__UNIQUE_ID_license244", i1 false, i1 false}
!17 = !{ptr @__initcall__kmod_ite_cir__245_1511_ite_driver_init6, !18, !"__initcall__kmod_ite_cir__245_1511_ite_driver_init6", i1 false, i1 false}
!18 = !{!"../drivers/media/rc/ite-cir.c", i32 1511, i32 1}
!19 = !{ptr @__exitcall_ite_driver_exit, !18, !"__exitcall_ite_driver_exit", i1 false, i1 false}
!20 = !{ptr @__param_str_sample_period, !1, !"__param_str_sample_period", i1 false, i1 false}
!21 = !{ptr @sample_period, !22, !"sample_period", i1 false, i1 false}
!22 = !{!"../drivers/media/rc/ite-cir.c", i32 37, i32 13}
!23 = !{ptr @__param_str_model_number, !6, !"__param_str_model_number", i1 false, i1 false}
!24 = !{ptr @model_number, !25, !"model_number", i1 false, i1 false}
!25 = !{!"../drivers/media/rc/ite-cir.c", i32 42, i32 12}
!26 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/rc/ite-cir.c", i32 1496, i32 11}
!28 = distinct !{null, !29, !"ite_driver", i1 false, i1 false}
!29 = !{!"../drivers/media/rc/ite-cir.c", i32 1495, i32 26}
!30 = distinct !{null, !31, !"ite_ids", i1 false, i1 false}
!31 = !{!"../drivers/media/rc/ite-cir.c", i32 1288, i32 35}
!32 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/rc/ite-cir.c", i32 1321, i32 2}
!34 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !33, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!38 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/rc/ite-cir.c", i32 1326, i32 3}
!40 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ite_probe._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @ite_probe._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/rc/ite-cir.c", i32 1337, i32 3}
!46 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ite_probe._entry.8, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @ite_probe._entry_ptr.11, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/rc/ite-cir.c", i32 1342, i32 3}
!51 = !{ptr @ite_probe._entry.12, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @ite_probe._entry_ptr.14, !50, !"_entry_ptr", i1 false, i1 false}
!53 = distinct !{null, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/media/rc/ite-cir.c", i32 1351, i32 2}
!55 = distinct !{null, !54, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/media/rc/ite-cir.c", i32 1358, i32 2}
!58 = distinct !{null, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/media/rc/ite-cir.c", i32 1359, i32 2}
!61 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/rc/ite-cir.c", i32 1396, i32 19}
!64 = distinct !{null, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/rc/ite-cir.c", i32 1209, i32 18}
!66 = distinct !{null, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/rc/ite-cir.c", i32 1228, i32 18}
!68 = distinct !{null, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/rc/ite-cir.c", i32 1247, i32 18}
!70 = distinct !{null, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/rc/ite-cir.c", i32 1267, i32 18}
!72 = distinct !{null, !73, !"ite_dev_descs", i1 false, i1 false}
!73 = !{!"../drivers/media/rc/ite-cir.c", i32 1207, i32 36}
!74 = distinct !{null, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/rc/ite-cir.c", i32 373, i32 3}
!76 = distinct !{null, !75, !"<string literal>", i1 false, i1 false}
!77 = distinct !{null, !75, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!78 = distinct !{null, !75, !"<string literal>", i1 false, i1 false}
!79 = distinct !{null, !75, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/rc/ite-cir.c", i32 240, i32 3}
!82 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @ite_cir_isr._entry, !81, !"_entry", i1 false, i1 false}
!85 = !{ptr @ite_cir_isr._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!86 = distinct !{null, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/rc/ite-cir.c", i32 250, i32 3}
!88 = distinct !{null, !87, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!89 = distinct !{null, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/rc/ite-cir.c", i32 269, i32 3}
!91 = distinct !{null, !90, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!92 = distinct !{null, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/rc/ite-cir.c", i32 171, i32 2}
!94 = distinct !{null, !93, !"<string literal>", i1 false, i1 false}
!95 = distinct !{null, !93, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
