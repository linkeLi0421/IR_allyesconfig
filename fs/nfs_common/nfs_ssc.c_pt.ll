; ModuleID = '/llk/IR_all_yes/fs/nfs_common/nfs_ssc.c_pt.bc'
source_filename = "../fs/nfs_common/nfs_ssc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nfs_ssc_client_tbl\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs_ssc_client_tbl\09\09\09\09"
module asm "\09.long\09__crc_nfs_ssc_client_tbl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_ssc_client_tbl:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_ssc_client_tbl\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_ssc_client_tbl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nfs42_ssc_register\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs42_ssc_register\09\09\09\09"
module asm "\09.long\09__crc_nfs42_ssc_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs42_ssc_register:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs42_ssc_register\22\09\09\09\09\09"
module asm "__kstrtabns_nfs42_ssc_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nfs42_ssc_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs42_ssc_unregister\09\09\09\09"
module asm "\09.long\09__crc_nfs42_ssc_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs42_ssc_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs42_ssc_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_nfs42_ssc_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nfs_ssc_register\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs_ssc_register\09\09\09\09"
module asm "\09.long\09__crc_nfs_ssc_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_ssc_register:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_ssc_register\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_ssc_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nfs_ssc_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs_ssc_unregister\09\09\09\09"
module asm "\09.long\09__crc_nfs_ssc_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_ssc_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_ssc_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_ssc_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.nfs_ssc_client_ops_tbl = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }

@__UNIQUE_ID_file490 = internal constant [35 x i8] c"nfs_ssc.file=fs/nfs_common/nfs_ssc\00", section ".modinfo", align 1
@__UNIQUE_ID_license491 = internal constant [20 x i8] c"nfs_ssc.license=GPL\00", section ".modinfo", align 1
@nfs_ssc_client_tbl = dso_local global { %struct.nfs_ssc_client_ops_tbl, [24 x i8] } zeroinitializer, align 32
@__kstrtab_nfs_ssc_client_tbl = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_ssc_client_tbl = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_ssc_client_tbl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_ssc_client_tbl to i32), ptr @__kstrtab_nfs_ssc_client_tbl, ptr @__kstrtabns_nfs_ssc_client_tbl }, section "___ksymtab_gpl+nfs_ssc_client_tbl", align 4
@__kstrtab_nfs42_ssc_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs42_ssc_register = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs42_ssc_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs42_ssc_register to i32), ptr @__kstrtab_nfs42_ssc_register, ptr @__kstrtabns_nfs42_ssc_register }, section "___ksymtab_gpl+nfs42_ssc_register", align 4
@__kstrtab_nfs42_ssc_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs42_ssc_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs42_ssc_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs42_ssc_unregister to i32), ptr @__kstrtab_nfs42_ssc_unregister, ptr @__kstrtabns_nfs42_ssc_unregister }, section "___ksymtab_gpl+nfs42_ssc_unregister", align 4
@__kstrtab_nfs_ssc_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_ssc_register = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_ssc_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_ssc_register to i32), ptr @__kstrtab_nfs_ssc_register, ptr @__kstrtabns_nfs_ssc_register }, section "___ksymtab_gpl+nfs_ssc_register", align 4
@__kstrtab_nfs_ssc_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_ssc_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_ssc_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_ssc_unregister to i32), ptr @__kstrtab_nfs_ssc_unregister, ptr @__kstrtabns_nfs_ssc_unregister }, section "___ksymtab_gpl+nfs_ssc_unregister", align 4
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"nfs_ssc_client_tbl\00", align 1
@___asan_gen_.2 = private constant [27 x i8] c"../fs/nfs_common/nfs_ssc.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 17, i32 31 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_file490, ptr @__UNIQUE_ID_license491, ptr @__ksymtab_nfs42_ssc_register, ptr @__ksymtab_nfs42_ssc_unregister, ptr @__ksymtab_nfs_ssc_client_tbl, ptr @__ksymtab_nfs_ssc_register, ptr @__ksymtab_nfs_ssc_unregister, ptr @nfs_ssc_client_tbl], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_ssc_client_tbl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nfs42_ssc_register(ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %ops, ptr @nfs_ssc_client_tbl, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nfs42_ssc_unregister(ptr nocapture noundef readnone %ops) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @nfs_ssc_client_tbl, align 4
  %cmp.not = icmp eq ptr %0, %ops
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  store ptr null, ptr @nfs_ssc_client_tbl, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nfs_ssc_register(ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %ops, ptr getelementptr inbounds (%struct.nfs_ssc_client_ops_tbl, ptr @nfs_ssc_client_tbl, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nfs_ssc_unregister(ptr noundef readnone %ops) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.nfs_ssc_client_ops_tbl, ptr @nfs_ssc_client_tbl, i32 0, i32 1), align 4
  %cmp.not = icmp eq ptr %0, %ops
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  store ptr null, ptr getelementptr inbounds (%struct.nfs_ssc_client_ops_tbl, ptr @nfs_ssc_client_tbl, i32 0, i32 1), align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__UNIQUE_ID_file490, !1, !"__UNIQUE_ID_file490", i1 false, i1 false}
!1 = !{!"../fs/nfs_common/nfs_ssc.c", i32 15, i32 1}
!2 = !{ptr @__UNIQUE_ID_license491, !1, !"__UNIQUE_ID_license491", i1 false, i1 false}
!3 = !{ptr @__ksymtab_nfs_ssc_client_tbl, !4, !"__ksymtab_nfs_ssc_client_tbl", i1 false, i1 false}
!4 = !{!"../fs/nfs_common/nfs_ssc.c", i32 18, i32 1}
!5 = !{ptr @__ksymtab_nfs42_ssc_register, !6, !"__ksymtab_nfs42_ssc_register", i1 false, i1 false}
!6 = !{!"../fs/nfs_common/nfs_ssc.c", i32 32, i32 1}
!7 = !{ptr @__ksymtab_nfs42_ssc_unregister, !8, !"__ksymtab_nfs42_ssc_unregister", i1 false, i1 false}
!8 = !{!"../fs/nfs_common/nfs_ssc.c", i32 49, i32 1}
!9 = !{ptr @__ksymtab_nfs_ssc_register, !10, !"__ksymtab_nfs_ssc_register", i1 false, i1 false}
!10 = !{!"../fs/nfs_common/nfs_ssc.c", i32 64, i32 1}
!11 = !{ptr @__ksymtab_nfs_ssc_unregister, !12, !"__ksymtab_nfs_ssc_unregister", i1 false, i1 false}
!12 = !{!"../fs/nfs_common/nfs_ssc.c", i32 80, i32 1}
!13 = !{ptr @nfs_ssc_client_tbl, !14, !"nfs_ssc_client_tbl", i1 false, i1 false}
!14 = !{!"../fs/nfs_common/nfs_ssc.c", i32 17, i32 31}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
