; ModuleID = '/llk/IR_all_yes/drivers/base/firmware_loader/fallback_table.c_pt.bc'
source_filename = "../drivers/base/firmware_loader/fallback_table.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fw_fallback_config\22, \22a\22\09"
module asm "\09.weak\09__crc_fw_fallback_config\09\09\09\09"
module asm "\09.long\09__crc_fw_fallback_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fw_fallback_config:\09\09\09\09\09"
module asm "\09.asciz \09\22fw_fallback_config\22\09\09\09\09\09"
module asm "__kstrtabns_fw_fallback_config:\09\09\09\09\09"
module asm "\09.asciz \09\22FIRMWARE_LOADER_PRIVATE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+register_firmware_config_sysctl\22, \22a\22\09"
module asm "\09.weak\09__crc_register_firmware_config_sysctl\09\09\09\09"
module asm "\09.long\09__crc_register_firmware_config_sysctl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_firmware_config_sysctl:\09\09\09\09\09"
module asm "\09.asciz \09\22register_firmware_config_sysctl\22\09\09\09\09\09"
module asm "__kstrtabns_register_firmware_config_sysctl:\09\09\09\09\09"
module asm "\09.asciz \09\22FIRMWARE_LOADER_PRIVATE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unregister_firmware_config_sysctl\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_firmware_config_sysctl\09\09\09\09"
module asm "\09.long\09__crc_unregister_firmware_config_sysctl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_firmware_config_sysctl:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_firmware_config_sysctl\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_firmware_config_sysctl:\09\09\09\09\09"
module asm "\09.asciz \09\22FIRMWARE_LOADER_PRIVATE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.firmware_fallback_config = type { i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }

@fw_fallback_config = dso_local global { %struct.firmware_fallback_config, [16 x i8] } { %struct.firmware_fallback_config { i32 1, i32 0, i32 60, i32 60 }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_fw_fallback_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_fw_fallback_config = external dso_local constant [0 x i8], align 1
@__ksymtab_fw_fallback_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fw_fallback_config to i32), ptr @__kstrtab_fw_fallback_config, ptr @__kstrtabns_fw_fallback_config }, section "___ksymtab_gpl+fw_fallback_config", align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kernel/firmware_config\00", [41 x i8] zeroinitializer }, align 32
@firmware_config_table = internal global { [3 x %struct.ctl_table], [52 x i8] } { [3 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.1, ptr @fw_fallback_config, i32 4, i16 420, ptr null, ptr @proc_douintvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.2, ptr getelementptr (i8, ptr @fw_fallback_config, i64 4), i32 4, i16 420, ptr null, ptr @proc_douintvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table zeroinitializer], [52 x i8] zeroinitializer }, align 32
@firmware_config_sysct_table_header = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_register_firmware_config_sysctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_firmware_config_sysctl = external dso_local constant [0 x i8], align 1
@__ksymtab_register_firmware_config_sysctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_firmware_config_sysctl to i32), ptr @__kstrtab_register_firmware_config_sysctl, ptr @__kstrtabns_register_firmware_config_sysctl }, section "___ksymtab_gpl+register_firmware_config_sysctl", align 4
@__kstrtab_unregister_firmware_config_sysctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_firmware_config_sysctl = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_firmware_config_sysctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_firmware_config_sysctl to i32), ptr @__kstrtab_unregister_firmware_config_sysctl, ptr @__kstrtabns_unregister_firmware_config_sysctl }, section "___ksymtab_gpl+unregister_firmware_config_sysctl", align 4
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"force_sysfs_fallback\00", [43 x i8] zeroinitializer }, align 32
@sysctl_vals = external dso_local constant [0 x i32], align 4
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ignore_sysfs_fallback\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [19 x i8] c"fw_fallback_config\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 20, i32 33 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 54, i32 19 }
@___asan_gen_.9 = private unnamed_addr constant [22 x i8] c"firmware_config_table\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 28, i32 25 }
@___asan_gen_.12 = private unnamed_addr constant [35 x i8] c"firmware_config_sysct_table_header\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 50, i32 33 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 30, i32 15 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private constant [49 x i8] c"../drivers/base/firmware_loader/fallback_table.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 39, i32 15 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_fw_fallback_config, ptr @__ksymtab_register_firmware_config_sysctl, ptr @__ksymtab_unregister_firmware_config_sysctl, ptr @fw_fallback_config, ptr @.str, ptr @firmware_config_table, ptr @firmware_config_sysct_table_header, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_fallback_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_config_table to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_config_sysct_table_header to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_firmware_config_sysctl() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @register_sysctl(ptr noundef nonnull @.str, ptr noundef nonnull @firmware_config_table) #2
  store ptr %call, ptr @firmware_config_sysct_table_header, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_firmware_config_sysctl() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @firmware_config_sysct_table_header, align 4
  tail call void @unregister_sysctl_table(ptr noundef %0) #2
  store ptr null, ptr @firmware_config_sysct_table_header, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_sysctl_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_douintvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
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

!0 = !{ptr @fw_fallback_config, !1, !"fw_fallback_config", i1 false, i1 false}
!1 = !{!"../drivers/base/firmware_loader/fallback_table.c", i32 20, i32 33}
!2 = !{ptr @__ksymtab_fw_fallback_config, !3, !"__ksymtab_fw_fallback_config", i1 false, i1 false}
!3 = !{!"../drivers/base/firmware_loader/fallback_table.c", i32 25, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/base/firmware_loader/fallback_table.c", i32 54, i32 19}
!6 = !{ptr @__ksymtab_register_firmware_config_sysctl, !7, !"__ksymtab_register_firmware_config_sysctl", i1 false, i1 false}
!7 = !{!"../drivers/base/firmware_loader/fallback_table.c", i32 60, i32 1}
!8 = !{ptr @__ksymtab_unregister_firmware_config_sysctl, !9, !"__ksymtab_unregister_firmware_config_sysctl", i1 false, i1 false}
!9 = !{!"../drivers/base/firmware_loader/fallback_table.c", i32 67, i32 1}
!10 = !{ptr @firmware_config_sysct_table_header, !11, !"firmware_config_sysct_table_header", i1 false, i1 false}
!11 = !{!"../drivers/base/firmware_loader/fallback_table.c", i32 50, i32 33}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/base/firmware_loader/fallback_table.c", i32 30, i32 15}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/base/firmware_loader/fallback_table.c", i32 39, i32 15}
!16 = !{ptr @firmware_config_table, !17, !"firmware_config_table", i1 false, i1 false}
!17 = !{!"../drivers/base/firmware_loader/fallback_table.c", i32 28, i32 25}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
