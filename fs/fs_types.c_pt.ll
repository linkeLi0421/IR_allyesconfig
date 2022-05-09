; ModuleID = '/llk/IR_all_yes/fs/fs_types.c_pt.bc'
source_filename = "../fs/fs_types.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fs_ftype_to_dtype\22, \22a\22\09"
module asm "\09.weak\09__crc_fs_ftype_to_dtype\09\09\09\09"
module asm "\09.long\09__crc_fs_ftype_to_dtype\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fs_ftype_to_dtype:\09\09\09\09\09"
module asm "\09.asciz \09\22fs_ftype_to_dtype\22\09\09\09\09\09"
module asm "__kstrtabns_fs_ftype_to_dtype:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fs_umode_to_ftype\22, \22a\22\09"
module asm "\09.weak\09__crc_fs_umode_to_ftype\09\09\09\09"
module asm "\09.long\09__crc_fs_umode_to_ftype\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fs_umode_to_ftype:\09\09\09\09\09"
module asm "\09.asciz \09\22fs_umode_to_ftype\22\09\09\09\09\09"
module asm "__kstrtabns_fs_umode_to_ftype:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fs_umode_to_dtype\22, \22a\22\09"
module asm "\09.weak\09__crc_fs_umode_to_dtype\09\09\09\09"
module asm "\09.long\09__crc_fs_umode_to_dtype\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fs_umode_to_dtype:\09\09\09\09\09"
module asm "\09.asciz \09\22fs_umode_to_dtype\22\09\09\09\09\09"
module asm "__kstrtabns_fs_umode_to_dtype:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@fs_dtype_by_ftype = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\08\04\02\06\01\0C\0A", [24 x i8] zeroinitializer }, align 32
@__kstrtab_fs_ftype_to_dtype = external dso_local constant [0 x i8], align 1
@__kstrtabns_fs_ftype_to_dtype = external dso_local constant [0 x i8], align 1
@__ksymtab_fs_ftype_to_dtype = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fs_ftype_to_dtype to i32), ptr @__kstrtab_fs_ftype_to_dtype, ptr @__kstrtabns_fs_ftype_to_dtype }, section "___ksymtab_gpl+fs_ftype_to_dtype", align 4
@fs_ftype_by_dtype = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\05\03\00\02\00\04\00\01\00\07\00\06\00\00\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_fs_umode_to_ftype = external dso_local constant [0 x i8], align 1
@__kstrtabns_fs_umode_to_ftype = external dso_local constant [0 x i8], align 1
@__ksymtab_fs_umode_to_ftype = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fs_umode_to_ftype to i32), ptr @__kstrtab_fs_umode_to_ftype, ptr @__kstrtabns_fs_umode_to_ftype }, section "___ksymtab_gpl+fs_umode_to_ftype", align 4
@__kstrtab_fs_umode_to_dtype = external dso_local constant [0 x i8], align 1
@__kstrtabns_fs_umode_to_dtype = external dso_local constant [0 x i8], align 1
@__ksymtab_fs_umode_to_dtype = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fs_umode_to_dtype to i32), ptr @__kstrtab_fs_umode_to_dtype, ptr @__kstrtabns_fs_umode_to_dtype }, section "___ksymtab_gpl+fs_umode_to_dtype", align 4
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"fs_dtype_by_ftype\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 8, i32 28 }
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"fs_ftype_by_dtype\00", align 1
@___asan_gen_.5 = private constant [17 x i8] c"../fs/fs_types.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 50, i32 28 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_fs_ftype_to_dtype, ptr @__ksymtab_fs_umode_to_dtype, ptr @__ksymtab_fs_umode_to_ftype, ptr @fs_dtype_by_ftype, ptr @fs_ftype_by_dtype], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_dtype_by_ftype to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_ftype_by_dtype to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @fs_ftype_to_dtype(i32 noundef %filetype) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %filetype)
  %cmp = icmp ugt i32 %filetype, 7
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %arrayidx = getelementptr [8 x i8], ptr @fs_dtype_by_ftype, i32 0, i32 %filetype
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i8 [ %1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @fs_umode_to_ftype(i16 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i16 %mode, 12
  %1 = zext i16 %0 to i32
  %arrayidx = getelementptr [16 x i8], ptr @fs_ftype_by_dtype, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  ret i8 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @fs_umode_to_dtype(i16 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i16 %mode, 12
  %1 = zext i16 %0 to i32
  %arrayidx.i = getelementptr [16 x i8], ptr @fs_ftype_by_dtype, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %conv = zext i8 %3 to i32
  %arrayidx.i2 = getelementptr [8 x i8], ptr @fs_dtype_by_ftype, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx.i2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i2, align 1
  ret i8 %5
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_fs_ftype_to_dtype, !1, !"__ksymtab_fs_ftype_to_dtype", i1 false, i1 false}
!1 = !{!"../fs/fs_types.c", i32 44, i32 1}
!2 = !{ptr @__ksymtab_fs_umode_to_ftype, !3, !"__ksymtab_fs_umode_to_ftype", i1 false, i1 false}
!3 = !{!"../fs/fs_types.c", i32 81, i32 1}
!4 = !{ptr @__ksymtab_fs_umode_to_dtype, !5, !"__ksymtab_fs_umode_to_dtype", i1 false, i1 false}
!5 = !{!"../fs/fs_types.c", i32 105, i32 1}
!6 = !{ptr @fs_dtype_by_ftype, !7, !"fs_dtype_by_ftype", i1 false, i1 false}
!7 = !{!"../fs/fs_types.c", i32 8, i32 28}
!8 = !{ptr @fs_ftype_by_dtype, !9, !"fs_ftype_by_dtype", i1 false, i1 false}
!9 = !{!"../fs/fs_types.c", i32 50, i32 28}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
