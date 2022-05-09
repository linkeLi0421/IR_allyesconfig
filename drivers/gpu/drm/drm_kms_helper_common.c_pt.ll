; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_kms_helper_common.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_kms_helper_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@__UNIQUE_ID_author306 = internal constant [49 x i8] c"drm_kms_helper.author=David Airlie, Jesse Barnes\00", section ".modinfo", align 1
@__UNIQUE_ID_description307 = internal constant [42 x i8] c"drm_kms_helper.description=DRM KMS helper\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [51 x i8] c"drm_kms_helper.file=drivers/gpu/drm/drm_kms_helper\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [49 x i8] c"drm_kms_helper.license=GPL and additional rights\00", section ".modinfo", align 1
@__param_str_edid_firmware = internal constant [29 x i8] c"drm_kms_helper.edid_firmware\00", align 1
@edid_firmware_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @edid_firmware_set, ptr @edid_firmware_get, ptr null }, [16 x i8] zeroinitializer }, align 32
@__param_edid_firmware = internal constant %struct.kernel_param { ptr @__param_str_edid_firmware, ptr null, ptr @edid_firmware_ops, i16 420, i8 -1, i8 0, %union.anon.76 zeroinitializer }, section "__param", align 4
@__UNIQUE_ID_edid_firmwaretype310 = internal constant [44 x i8] c"drm_kms_helper.parmtype=edid_firmware:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_edid_firmware311 = internal constant [94 x i8] c"drm_kms_helper.parm=edid_firmware:DEPRECATED. Use drm.edid_firmware module parameter instead.\00", section ".modinfo", align 1
@__initcall__kmod_drm_kms_helper__312_76_drm_kms_helper_init6 = internal global ptr @drm_kms_helper_init, section ".initcall6.init", align 4
@__exitcall_drm_kms_helper_exit = internal global ptr @drm_kms_helper_exit, section ".exitcall.exit", align 4
@edid_firmware_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\015[drm] drm_kms_helper.edid_firmware is deprecated, please use drm.edid_firmware instead.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"edid_firmware_set\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/drm_kms_helper_common.c\00", [56 x i8] zeroinitializer }, align 32
@edid_firmware_set._entry_ptr = internal global ptr @edid_firmware_set._entry, section ".printk_index", align 4
@___asan_gen_.3 = private unnamed_addr constant [18 x i8] c"edid_firmware_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 53, i32 38 }
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [43 x i8] c"../drivers/gpu/drm/drm_kms_helper_common.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 43, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_edid_firmware311, ptr @__UNIQUE_ID_edid_firmwaretype310, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__exitcall_drm_kms_helper_exit, ptr @__initcall__kmod_drm_kms_helper__312_76_drm_kms_helper_init6, ptr @__param_edid_firmware, ptr @drm_kms_helper_exit, ptr @edid_firmware_set._entry, ptr @edid_firmware_set._entry_ptr, ptr @edid_firmware_ops, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edid_firmware_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edid_firmware_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @drm_kms_helper_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_dp_aux_dev_exit() #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_aux_dev_exit() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_kms_helper_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @drm_dp_aux_dev_init() #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edid_firmware_set(ptr noundef %val, ptr nocapture noundef readnone %kp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  %call1 = tail call i32 @__drm_set_edid_firmware_path(ptr noundef %val) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edid_firmware_get(ptr noundef %buffer, ptr nocapture noundef readnone %kp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__drm_get_edid_firmware_path(ptr noundef %buffer, i32 noundef 4096) #4
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drm_set_edid_firmware_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drm_get_edid_firmware_path(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_aux_dev_init() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !20, !22, !23, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__UNIQUE_ID_author306, !1, !"__UNIQUE_ID_author306", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_kms_helper_common.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_description307, !3, !"__UNIQUE_ID_description307", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_kms_helper_common.c", i32 35, i32 1}
!4 = !{ptr @__UNIQUE_ID_file308, !5, !"__UNIQUE_ID_file308", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_kms_helper_common.c", i32 36, i32 1}
!6 = !{ptr @__UNIQUE_ID_license309, !5, !"__UNIQUE_ID_license309", i1 false, i1 false}
!7 = !{ptr @__param_edid_firmware, !8, !"__param_edid_firmware", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/drm_kms_helper_common.c", i32 58, i32 1}
!9 = !{ptr @__UNIQUE_ID_edid_firmwaretype310, !10, !"__UNIQUE_ID_edid_firmwaretype310", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/drm_kms_helper_common.c", i32 59, i32 1}
!11 = !{ptr @__UNIQUE_ID_edid_firmware311, !12, !"__UNIQUE_ID_edid_firmware311", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/drm_kms_helper_common.c", i32 60, i32 1}
!13 = !{ptr @__initcall__kmod_drm_kms_helper__312_76_drm_kms_helper_init6, !14, !"__initcall__kmod_drm_kms_helper__312_76_drm_kms_helper_init6", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/drm_kms_helper_common.c", i32 76, i32 1}
!15 = !{ptr @__exitcall_drm_kms_helper_exit, !16, !"__exitcall_drm_kms_helper_exit", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/drm_kms_helper_common.c", i32 77, i32 1}
!17 = !{ptr @__param_str_edid_firmware, !8, !"__param_str_edid_firmware", i1 false, i1 false}
!18 = !{ptr @edid_firmware_ops, !19, !"edid_firmware_ops", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/drm_kms_helper_common.c", i32 53, i32 38}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/drm_kms_helper_common.c", i32 43, i32 2}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @edid_firmware_set._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @edid_firmware_set._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
