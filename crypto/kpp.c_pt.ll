; ModuleID = '/llk/IR_all_yes/crypto/kpp.c_pt.bc'
source_filename = "../crypto/kpp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+crypto_alloc_kpp\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_alloc_kpp\09\09\09\09"
module asm "\09.long\09__crc_crypto_alloc_kpp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_alloc_kpp:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_alloc_kpp\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_alloc_kpp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+crypto_register_kpp\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_register_kpp\09\09\09\09"
module asm "\09.long\09__crc_crypto_register_kpp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_register_kpp:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_register_kpp\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_register_kpp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+crypto_unregister_kpp\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_unregister_kpp\09\09\09\09"
module asm "\09.long\09__crc_crypto_unregister_kpp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_unregister_kpp:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_unregister_kpp\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_unregister_kpp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.crypto_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kpp_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, [100 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.94, ptr, ptr, ptr, ptr, %union.anon.95, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.94 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.95 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_report_kpp = type { [64 x i8] }

@crypto_kpp_type = internal constant { %struct.crypto_type, [52 x i8] } { %struct.crypto_type { ptr null, ptr @crypto_alg_extsize, ptr null, ptr @crypto_kpp_init_tfm, ptr @crypto_kpp_show, ptr @crypto_kpp_report, ptr null, i32 8, i32 -16, i32 15, i32 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_crypto_alloc_kpp = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_alloc_kpp = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_alloc_kpp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_alloc_kpp to i32), ptr @__kstrtab_crypto_alloc_kpp, ptr @__kstrtabns_crypto_alloc_kpp }, section "___ksymtab_gpl+crypto_alloc_kpp", align 4
@__kstrtab_crypto_register_kpp = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_register_kpp = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_register_kpp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_register_kpp to i32), ptr @__kstrtab_crypto_register_kpp, ptr @__kstrtabns_crypto_register_kpp }, section "___ksymtab_gpl+crypto_register_kpp", align 4
@__kstrtab_crypto_unregister_kpp = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_unregister_kpp = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_unregister_kpp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_unregister_kpp to i32), ptr @__kstrtab_crypto_unregister_kpp, ptr @__kstrtabns_crypto_unregister_kpp }, section "___ksymtab_gpl+crypto_unregister_kpp", align 4
@__UNIQUE_ID_file271 = internal constant [20 x i8] c"kpp.file=crypto/kpp\00", section ".modinfo", align 1
@__UNIQUE_ID_license272 = internal constant [16 x i8] c"kpp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description273 = internal constant [50 x i8] c"kpp.description=Key-agreement Protocol Primitives\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"type         : kpp\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"kpp\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [16 x i8] c"crypto_kpp_type\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 71, i32 33 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 46, i32 14 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [16 x i8] c"../crypto/kpp.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 30, i32 21 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_description273, ptr @__UNIQUE_ID_file271, ptr @__UNIQUE_ID_license272, ptr @__ksymtab_crypto_alloc_kpp, ptr @__ksymtab_crypto_register_kpp, ptr @__ksymtab_crypto_unregister_kpp, ptr @crypto_kpp_type, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_kpp_type to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @crypto_alloc_kpp(ptr noundef %alg_name, i32 noundef %type, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @crypto_alloc_tfm_node(ptr noundef %alg_name, ptr noundef nonnull @crypto_kpp_type, i32 noundef %type, i32 noundef %mask, i32 noundef -1) #3
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_register_kpp(ptr noundef %alg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.kpp_alg, ptr %alg, i32 0, i32 8
  %cra_type.i = getelementptr inbounds %struct.kpp_alg, ptr %alg, i32 0, i32 8, i32 10
  %0 = ptrtoint ptr %cra_type.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @crypto_kpp_type, ptr %cra_type.i, align 8
  %cra_flags.i = getelementptr inbounds %struct.kpp_alg, ptr %alg, i32 0, i32 8, i32 2
  %1 = ptrtoint ptr %cra_flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cra_flags.i, align 16
  %and.i = and i32 %2, -16
  %or.i = or i32 %and.i, 8
  store i32 %or.i, ptr %cra_flags.i, align 16
  %call = tail call i32 @crypto_register_alg(ptr noundef %base1) #3
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_alg(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @crypto_unregister_kpp(ptr noundef %alg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.kpp_alg, ptr %alg, i32 0, i32 8
  tail call void @crypto_unregister_alg(ptr noundef %base) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_tfm_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_alg_extsize(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_kpp_init_tfm(ptr noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %exit = getelementptr i8, ptr %1, i32 -108
  %2 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %exit, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %exit2 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 2
  %4 = ptrtoint ptr %exit2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @crypto_kpp_exit_tfm, ptr %exit2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %init = getelementptr i8, ptr %1, i32 -112
  %5 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init, align 16
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call6 = tail call i32 %6(ptr noundef %tfm) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_kpp_show(ptr noundef %m, ptr nocapture noundef readnone %alg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_kpp_report(ptr noundef %skb, ptr nocapture noundef readnone %alg) #0 align 64 {
entry:
  %rkpp = alloca %struct.crypto_report_kpp, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rkpp) #3
  %0 = call ptr @memset(ptr %rkpp, i32 0, i32 64)
  %call = call i32 @strscpy(ptr noundef nonnull %rkpp, ptr noundef nonnull @.str.1, i32 noundef 64) #3
  %call1 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 64, ptr noundef nonnull %rkpp) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rkpp) #3
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_kpp_exit_tfm(ptr noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %exit = getelementptr i8, ptr %1, i32 -108
  %2 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %exit, align 4
  tail call void %3(ptr noundef %tfm) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__ksymtab_crypto_alloc_kpp, !1, !"__ksymtab_crypto_alloc_kpp", i1 false, i1 false}
!1 = !{!"../crypto/kpp.c", i32 88, i32 1}
!2 = !{ptr @__ksymtab_crypto_register_kpp, !3, !"__ksymtab_crypto_register_kpp", i1 false, i1 false}
!3 = !{!"../crypto/kpp.c", i32 106, i32 1}
!4 = !{ptr @__ksymtab_crypto_unregister_kpp, !5, !"__ksymtab_crypto_unregister_kpp", i1 false, i1 false}
!5 = !{!"../crypto/kpp.c", i32 112, i32 1}
!6 = !{ptr @__UNIQUE_ID_file271, !7, !"__UNIQUE_ID_file271", i1 false, i1 false}
!7 = !{!"../crypto/kpp.c", i32 114, i32 1}
!8 = !{ptr @__UNIQUE_ID_license272, !7, !"__UNIQUE_ID_license272", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description273, !10, !"__UNIQUE_ID_description273", i1 false, i1 false}
!10 = !{!"../crypto/kpp.c", i32 115, i32 1}
!11 = !{ptr @crypto_kpp_type, !12, !"crypto_kpp_type", i1 false, i1 false}
!12 = !{!"../crypto/kpp.c", i32 71, i32 33}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../crypto/kpp.c", i32 46, i32 14}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../crypto/kpp.c", i32 30, i32 21}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
