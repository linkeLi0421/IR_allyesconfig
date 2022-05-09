; ModuleID = '/llk/IR_all_yes/drivers/edac/layerscape_edac.c_pt.bc'
source_filename = "../drivers/edac/layerscape_edac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }

@__initcall__kmod_layerscape_edac_mod__236_60_fsl_ddr_mc_init6 = internal global ptr @fsl_ddr_mc_init, section ".initcall6.init", align 4
@fsl_ddr_mc_err_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fsl_mc_err_probe, ptr @fsl_mc_err_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_ddr_mc_err_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fsl_ddr_mc_exit = internal global ptr @fsl_ddr_mc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file237 = internal constant [58 x i8] c"layerscape_edac_mod.file=drivers/edac/layerscape_edac_mod\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [32 x i8] c"layerscape_edac_mod.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [45 x i8] c"layerscape_edac_mod.author=NXP Semiconductor\00", section ".modinfo", align 1
@__param_str_edac_op_state = internal constant [34 x i8] c"layerscape_edac_mod.edac_op_state\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@edac_op_state = external dso_local global i32, align 4
@__param_edac_op_state = internal constant %struct.kernel_param { ptr @__param_str_edac_op_state, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @edac_op_state } }, section "__param", align 4
@__UNIQUE_ID_edac_op_statetype240 = internal constant [47 x i8] c"layerscape_edac_mod.parmtype=edac_op_state:int\00", section ".modinfo", align 1
@__UNIQUE_ID_edac_op_state241 = internal constant [87 x i8] c"layerscape_edac_mod.parm=edac_op_state:EDAC Error Reporting state: 0=Poll, 2=Interrupt\00", section ".modinfo", align 1
@fsl_ddr_mc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013layerscape_edac_mod: MC fails to register\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl_ddr_mc_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/edac/layerscape_edac.c\00", [33 x i8] zeroinitializer }, align 32
@fsl_ddr_mc_init._entry_ptr = internal global ptr @fsl_ddr_mc_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl_ddr_mc_err\00", [17 x i8] zeroinitializer }, align 32
@fsl_ddr_mc_err_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,qoriq-memory-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.4 = private unnamed_addr constant [22 x i8] c"fsl_ddr_mc_err_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 28, i32 31 }
@___asan_gen_.7 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 53, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 32, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [24 x i8] c"fsl_ddr_mc_err_of_match\00", align 1
@___asan_gen_.23 = private constant [34 x i8] c"../drivers/edac/layerscape_edac.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 22, i32 34 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_edac_op_state241, ptr @__UNIQUE_ID_edac_op_statetype240, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_fsl_ddr_mc_exit, ptr @__initcall__kmod_layerscape_edac_mod__236_60_fsl_ddr_mc_init6, ptr @__param_edac_op_state, ptr @fsl_ddr_mc_exit, ptr @fsl_ddr_mc_init._entry, ptr @fsl_ddr_mc_init._entry_ptr, ptr @fsl_ddr_mc_err_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @fsl_ddr_mc_err_of_match], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ddr_mc_err_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ddr_mc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ddr_mc_err_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ddr_mc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_op_state to i32))
  %0 = load i32, ptr @edac_op_state, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %sw.default [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 2, label %entry.sw.epilog_crit_edge3
  ]

entry.sw.epilog_crit_edge3:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @edac_op_state to i32))
  store i32 2, ptr @edac_op_state, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge3
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_ddr_mc_err_driver, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %do.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.epilog.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsl_ddr_mc_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_ddr_mc_err_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_mc_err_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_mc_err_remove(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !17, !18, !19, !20, !22, !24, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__initcall__kmod_layerscape_edac_mod__236_60_fsl_ddr_mc_init6, !1, !"__initcall__kmod_layerscape_edac_mod__236_60_fsl_ddr_mc_init6", i1 false, i1 false}
!1 = !{!"../drivers/edac/layerscape_edac.c", i32 60, i32 1}
!2 = !{ptr @__exitcall_fsl_ddr_mc_exit, !3, !"__exitcall_fsl_ddr_mc_exit", i1 false, i1 false}
!3 = !{!"../drivers/edac/layerscape_edac.c", i32 67, i32 1}
!4 = !{ptr @__UNIQUE_ID_file237, !5, !"__UNIQUE_ID_file237", i1 false, i1 false}
!5 = !{!"../drivers/edac/layerscape_edac.c", i32 69, i32 1}
!6 = !{ptr @__UNIQUE_ID_license238, !5, !"__UNIQUE_ID_license238", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author239, !8, !"__UNIQUE_ID_author239", i1 false, i1 false}
!8 = !{!"../drivers/edac/layerscape_edac.c", i32 70, i32 1}
!9 = !{ptr @__param_edac_op_state, !10, !"__param_edac_op_state", i1 false, i1 false}
!10 = !{!"../drivers/edac/layerscape_edac.c", i32 71, i32 1}
!11 = !{ptr @__UNIQUE_ID_edac_op_statetype240, !10, !"__UNIQUE_ID_edac_op_statetype240", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_edac_op_state241, !13, !"__UNIQUE_ID_edac_op_state241", i1 false, i1 false}
!13 = !{!"../drivers/edac/layerscape_edac.c", i32 72, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/edac/layerscape_edac.c", i32 53, i32 3}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @fsl_ddr_mc_init._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @fsl_ddr_mc_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/edac/layerscape_edac.c", i32 32, i32 11}
!22 = !{ptr @fsl_ddr_mc_err_driver, !23, !"fsl_ddr_mc_err_driver", i1 false, i1 false}
!23 = !{!"../drivers/edac/layerscape_edac.c", i32 28, i32 31}
!24 = !{ptr @fsl_ddr_mc_err_of_match, !25, !"fsl_ddr_mc_err_of_match", i1 false, i1 false}
!25 = !{!"../drivers/edac/layerscape_edac.c", i32 22, i32 34}
!26 = !{ptr @__param_str_edac_op_state, !10, !"__param_str_edac_op_state", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
