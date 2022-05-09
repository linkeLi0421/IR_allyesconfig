; ModuleID = '/llk/IR_all_yes/crypto/testmgr.c_pt.bc'
source_filename = "../crypto/testmgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+alg_test\22, \22a\22\09"
module asm "\09.weak\09__crc_alg_test\09\09\09\09"
module asm "\09.long\09__crc_alg_test\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alg_test:\09\09\09\09\09"
module asm "\09.asciz \09\22alg_test\22\09\09\09\09\09"
module asm "__kstrtabns_alg_test:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }

@__UNIQUE_ID_import_ns228 = internal constant [36 x i8] c"cryptomgr.import_ns=CRYPTO_INTERNAL\00", section ".modinfo", align 1
@__param_str_notests = internal constant [18 x i8] c"cryptomgr.notests\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@notests = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_notests = internal constant %struct.kernel_param { ptr @__param_str_notests, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @notests } }, section "__param", align 4
@__UNIQUE_ID_noteststype229 = internal constant [32 x i8] c"cryptomgr.parmtype=notests:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_notests230 = internal constant [49 x i8] c"cryptomgr.parm=notests:disable crypto self-tests\00", section ".modinfo", align 1
@__param_str_panic_on_fail = internal constant [24 x i8] c"cryptomgr.panic_on_fail\00", align 1
@panic_on_fail = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_panic_on_fail = internal constant %struct.kernel_param { ptr @__param_str_panic_on_fail, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @panic_on_fail } }, section "__param", align 4
@__UNIQUE_ID_panic_on_failtype231 = internal constant [38 x i8] c"cryptomgr.parmtype=panic_on_fail:bool\00", section ".modinfo", align 1
@__kstrtab_alg_test = external dso_local constant [0 x i8], align 1
@__kstrtabns_alg_test = external dso_local constant [0 x i8], align 1
@__ksymtab_alg_test = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alg_test to i32), ptr @__kstrtab_alg_test, ptr @__kstrtabns_alg_test }, section "___ksymtab_gpl+alg_test", align 4
@___asan_gen_.1 = private unnamed_addr constant [8 x i8] c"notests\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 43, i32 13 }
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"panic_on_fail\00", align 1
@___asan_gen_.5 = private constant [20 x i8] c"../crypto/testmgr.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 47, i32 13 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_import_ns228, ptr @__UNIQUE_ID_notests230, ptr @__UNIQUE_ID_noteststype229, ptr @__UNIQUE_ID_panic_on_failtype231, ptr @__ksymtab_alg_test, ptr @__param_notests, ptr @__param_panic_on_fail, ptr @notests, ptr @panic_on_fail], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @notests to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic_on_fail to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @alg_test(ptr nocapture readnone %driver, ptr nocapture readnone %alg, i32 %type, i32 %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_pc()

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

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__UNIQUE_ID_import_ns228, !1, !"__UNIQUE_ID_import_ns228", i1 false, i1 false}
!1 = !{!"../crypto/testmgr.c", i32 41, i32 1}
!2 = !{ptr @__param_notests, !3, !"__param_notests", i1 false, i1 false}
!3 = !{!"../crypto/testmgr.c", i32 44, i32 1}
!4 = !{ptr @__UNIQUE_ID_noteststype229, !3, !"__UNIQUE_ID_noteststype229", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_notests230, !6, !"__UNIQUE_ID_notests230", i1 false, i1 false}
!6 = !{!"../crypto/testmgr.c", i32 45, i32 1}
!7 = !{ptr @__param_panic_on_fail, !8, !"__param_panic_on_fail", i1 false, i1 false}
!8 = !{!"../crypto/testmgr.c", i32 48, i32 1}
!9 = !{ptr @__UNIQUE_ID_panic_on_failtype231, !8, !"__UNIQUE_ID_panic_on_failtype231", i1 false, i1 false}
!10 = !{ptr @__ksymtab_alg_test, !11, !"__ksymtab_alg_test", i1 false, i1 false}
!11 = !{!"../crypto/testmgr.c", i32 5691, i32 1}
!12 = !{ptr @notests, !13, !"notests", i1 false, i1 false}
!13 = !{!"../crypto/testmgr.c", i32 43, i32 13}
!14 = !{ptr @panic_on_fail, !15, !"panic_on_fail", i1 false, i1 false}
!15 = !{!"../crypto/testmgr.c", i32 47, i32 13}
!16 = !{ptr @__param_str_notests, !3, !"__param_str_notests", i1 false, i1 false}
!17 = !{ptr @__param_str_panic_on_fail, !8, !"__param_str_panic_on_fail", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
