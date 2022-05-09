; ModuleID = '/llk/IR_all_yes/lib/libcrc32c.c_pt.bc'
source_filename = "../lib/libcrc32c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+crc32c\22, \22a\22\09"
module asm "\09.weak\09__crc_crc32c\09\09\09\09"
module asm "\09.long\09__crc_crc32c\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crc32c:\09\09\09\09\09"
module asm "\09.asciz \09\22crc32c\22\09\09\09\09\09"
module asm "__kstrtabns_crc32c:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+crc32c_impl\22, \22a\22\09"
module asm "\09.weak\09__crc_crc32c_impl\09\09\09\09"
module asm "\09.long\09__crc_crc32c_impl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crc32c_impl:\09\09\09\09\09"
module asm "\09.asciz \09\22crc32c_impl\22\09\09\09\09\09"
module asm "__kstrtabns_crc32c_impl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.44, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.44 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }

@tfm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_crc32c = external dso_local constant [0 x i8], align 1
@__kstrtabns_crc32c = external dso_local constant [0 x i8], align 1
@__ksymtab_crc32c = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crc32c to i32), ptr @__kstrtab_crc32c, ptr @__kstrtabns_crc32c }, section "___ksymtab+crc32c", align 4
@__kstrtab_crc32c_impl = external dso_local constant [0 x i8], align 1
@__kstrtabns_crc32c_impl = external dso_local constant [0 x i8], align 1
@__ksymtab_crc32c_impl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crc32c_impl to i32), ptr @__kstrtab_crc32c_impl, ptr @__kstrtabns_crc32c_impl }, section "___ksymtab+crc32c_impl", align 4
@__initcall__kmod_libcrc32c__173_74_libcrc32c_mod_init6 = internal global ptr @libcrc32c_mod_init, section ".initcall6.init", align 4
@__exitcall_libcrc32c_mod_fini = internal global ptr @libcrc32c_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_author174 = internal constant [51 x i8] c"libcrc32c.author=Clay Haapala <chaapala@cisco.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description175 = internal constant [55 x i8] c"libcrc32c.description=CRC32c (Castagnoli) calculations\00", section ".modinfo", align 1
@__UNIQUE_ID_file176 = internal constant [29 x i8] c"libcrc32c.file=lib/libcrc32c\00", section ".modinfo", align 1
@__UNIQUE_ID_license177 = internal constant [22 x i8] c"libcrc32c.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep178 = internal constant [30 x i8] c"libcrc32c.softdep=pre: crc32c\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"crc32c\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [4 x i8] c"tfm\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 36, i32 29 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [19 x i8] c"../lib/libcrc32c.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 59, i32 27 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author174, ptr @__UNIQUE_ID_description175, ptr @__UNIQUE_ID_file176, ptr @__UNIQUE_ID_license177, ptr @__UNIQUE_ID_softdep178, ptr @__exitcall_libcrc32c_mod_fini, ptr @__initcall__kmod_libcrc32c__173_74_libcrc32c_mod_init6, ptr @__ksymtab_crc32c, ptr @__ksymtab_crc32c_impl, ptr @libcrc32c_mod_fini, ptr @tfm, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crc32c(i32 noundef %crc, ptr noundef %address, i32 noundef %length) #0 align 64 {
entry:
  %__shash_desc = alloca [376 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__shash_desc) #7
  %0 = call ptr @memset(ptr %__shash_desc, i32 255, i32 376)
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %__shash_desc, i32 0, i32 2
  %1 = load ptr, ptr @tfm, align 4
  %2 = ptrtoint ptr %__shash_desc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %__shash_desc, align 8
  %3 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %crc, ptr %__ctx.i, align 8
  %call1 = call i32 @crypto_shash_update(ptr noundef nonnull %__shash_desc, ptr noundef %address, i32 noundef %length) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.end9, label %do.body4, !prof !29

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/libcrc32c.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 48, 0\0A.popsection", ""() #7, !srcloc !30
  unreachable

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__ctx.i, align 8
  call void asm sideeffect "", "r,~{memory}"(ptr %__ctx.i) #7, !srcloc !31
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__shash_desc) #7
  ret i32 %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @libcrc32c_mod_fini() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %0 = load ptr, ptr @tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %0, ptr noundef %base.i.i) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @crc32c_impl() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %0 = load ptr, ptr @tfm, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 2, i32 3
  %1 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_driver_name.i.i = getelementptr inbounds %struct.crypto_alg, ptr %2, i32 0, i32 9
  ret ptr %cra_driver_name.i.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @libcrc32c_mod_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #7
  store ptr %call, ptr @tfm, align 4
  %cmp.i.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %0 = ptrtoint ptr %call to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %0, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind uwtable(sync) }
attributes #6 = { nomerge }
attributes #7 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__ksymtab_crc32c, !1, !"__ksymtab_crc32c", i1 false, i1 false}
!1 = !{!"../lib/libcrc32c.c", i32 55, i32 1}
!2 = !{ptr @__ksymtab_crc32c_impl, !3, !"__ksymtab_crc32c_impl", i1 false, i1 false}
!3 = !{!"../lib/libcrc32c.c", i32 72, i32 1}
!4 = !{ptr @__initcall__kmod_libcrc32c__173_74_libcrc32c_mod_init6, !5, !"__initcall__kmod_libcrc32c__173_74_libcrc32c_mod_init6", i1 false, i1 false}
!5 = !{!"../lib/libcrc32c.c", i32 74, i32 1}
!6 = !{ptr @__exitcall_libcrc32c_mod_fini, !7, !"__exitcall_libcrc32c_mod_fini", i1 false, i1 false}
!7 = !{!"../lib/libcrc32c.c", i32 75, i32 1}
!8 = !{ptr @__UNIQUE_ID_author174, !9, !"__UNIQUE_ID_author174", i1 false, i1 false}
!9 = !{!"../lib/libcrc32c.c", i32 77, i32 1}
!10 = !{ptr @__UNIQUE_ID_description175, !11, !"__UNIQUE_ID_description175", i1 false, i1 false}
!11 = !{!"../lib/libcrc32c.c", i32 78, i32 1}
!12 = !{ptr @__UNIQUE_ID_file176, !13, !"__UNIQUE_ID_file176", i1 false, i1 false}
!13 = !{!"../lib/libcrc32c.c", i32 79, i32 1}
!14 = !{ptr @__UNIQUE_ID_license177, !13, !"__UNIQUE_ID_license177", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_softdep178, !16, !"__UNIQUE_ID_softdep178", i1 false, i1 false}
!16 = !{!"../lib/libcrc32c.c", i32 80, i32 1}
!17 = !{ptr @tfm, !18, !"tfm", i1 false, i1 false}
!18 = !{!"../lib/libcrc32c.c", i32 36, i32 29}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../lib/libcrc32c.c", i32 59, i32 27}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 2152488258, i64 2152488737, i64 2152488295, i64 2152488351, i64 2152488385, i64 2152488409, i64 2152488450, i64 2152488471, i64 2152488499, i64 2152488533}
!31 = !{i64 2152489581}
