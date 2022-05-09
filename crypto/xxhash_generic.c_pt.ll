; ModuleID = '/llk/IR_all_yes/crypto/xxhash_generic.c_pt.bc'
source_filename = "../crypto/xxhash_generic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [84 x i8], i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.44, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.44 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }

@alg = internal global %struct.shash_alg { ptr @xxhash64_init, ptr @xxhash64_update, ptr @xxhash64_final, ptr null, ptr @xxhash64_digest, ptr null, ptr null, ptr @xxhash64_setkey, ptr null, ptr null, i32 80, [84 x i8] undef, i32 8, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 16384, i32 32, i32 8, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"xxhash64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"xxhash64-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, align 128
@__initcall__kmod_xxhash_generic__173_99_xxhash_mod_init4 = internal global ptr @xxhash_mod_init, section ".initcall4.init", align 4
@__exitcall_xxhash_mod_fini = internal global ptr @xxhash_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_author174 = internal constant [58 x i8] c"xxhash_generic.author=Nikolay Borisov <nborisov@suse.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description175 = internal constant [72 x i8] c"xxhash_generic.description=xxhash calculations wrapper for lib/xxhash.c\00", section ".modinfo", align 1
@__UNIQUE_ID_file176 = internal constant [42 x i8] c"xxhash_generic.file=crypto/xxhash_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license177 = internal constant [27 x i8] c"xxhash_generic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace178 = internal constant [30 x i8] c"xxhash_generic.alias=xxhash64\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto179 = internal constant [37 x i8] c"xxhash_generic.alias=crypto-xxhash64\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace180 = internal constant [38 x i8] c"xxhash_generic.alias=xxhash64-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto181 = internal constant [45 x i8] c"xxhash_generic.alias=crypto-xxhash64-generic\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias_crypto179, ptr @__UNIQUE_ID_alias_crypto181, ptr @__UNIQUE_ID_alias_userspace178, ptr @__UNIQUE_ID_alias_userspace180, ptr @__UNIQUE_ID_author174, ptr @__UNIQUE_ID_description175, ptr @__UNIQUE_ID_file176, ptr @__UNIQUE_ID_license177, ptr @__exitcall_xxhash_mod_fini, ptr @__initcall__kmod_xxhash_generic__173_99_xxhash_mod_init4, ptr @xxhash_mod_fini], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xxhash_mod_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_shash(ptr noundef nonnull @alg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shash(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xxhash_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_shash(ptr noundef nonnull @alg) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xxhash64_init(ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %__crt_ctx.i.i, align 8
  tail call void @xxh64_reset(ptr noundef %__ctx.i, i64 noundef %3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xxhash64_update(ptr noundef %desc, ptr noundef %data, i32 noundef %length) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %call1 = tail call i32 @xxh64_update(ptr noundef %__ctx.i, ptr noundef %data, i32 noundef %length) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xxhash64_final(ptr noundef %desc, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %call1 = tail call i64 @xxh64_digest(ptr noundef %__ctx.i) #5
  %0 = tail call i64 @llvm.bswap.i64(i64 %call1) #5
  %1 = ptrtoint ptr %out to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 %0, ptr %out, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xxhash64_digest(ptr nocapture noundef readonly %desc, ptr noundef %data, i32 noundef %length, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 1
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %__crt_ctx.i.i, align 8
  %call1 = tail call i64 @xxh64(ptr noundef %data, i32 noundef %length, i64 noundef %3) #5
  %4 = tail call i64 @llvm.bswap.i64(i64 %call1) #5
  %5 = ptrtoint ptr %out to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %4, ptr %out, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xxhash64_setkey(ptr nocapture noundef writeonly %tfm, ptr nocapture noundef readonly %key, i32 noundef %keylen) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %keylen)
  %cmp.not = icmp eq i32 %keylen, 8
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_shash, ptr %tfm, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %key, align 1
  %2 = tail call i64 @llvm.bswap.i64(i64 %1) #5
  %3 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %__crt_ctx.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xxh64_reset(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xxh64_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xxh64_digest(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xxh64(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shash(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store8_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__initcall__kmod_xxhash_generic__173_99_xxhash_mod_init4, !1, !"__initcall__kmod_xxhash_generic__173_99_xxhash_mod_init4", i1 false, i1 false}
!1 = !{!"../crypto/xxhash_generic.c", i32 99, i32 1}
!2 = !{ptr @__exitcall_xxhash_mod_fini, !3, !"__exitcall_xxhash_mod_fini", i1 false, i1 false}
!3 = !{!"../crypto/xxhash_generic.c", i32 100, i32 1}
!4 = !{ptr @__UNIQUE_ID_author174, !5, !"__UNIQUE_ID_author174", i1 false, i1 false}
!5 = !{!"../crypto/xxhash_generic.c", i32 102, i32 1}
!6 = !{ptr @__UNIQUE_ID_description175, !7, !"__UNIQUE_ID_description175", i1 false, i1 false}
!7 = !{!"../crypto/xxhash_generic.c", i32 103, i32 1}
!8 = !{ptr @__UNIQUE_ID_file176, !9, !"__UNIQUE_ID_file176", i1 false, i1 false}
!9 = !{!"../crypto/xxhash_generic.c", i32 104, i32 1}
!10 = !{ptr @__UNIQUE_ID_license177, !9, !"__UNIQUE_ID_license177", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias_userspace178, !12, !"__UNIQUE_ID_alias_userspace178", i1 false, i1 false}
!12 = !{!"../crypto/xxhash_generic.c", i32 105, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_crypto179, !12, !"__UNIQUE_ID_alias_crypto179", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_alias_userspace180, !15, !"__UNIQUE_ID_alias_userspace180", i1 false, i1 false}
!15 = !{!"../crypto/xxhash_generic.c", i32 106, i32 1}
!16 = !{ptr @__UNIQUE_ID_alias_crypto181, !15, !"__UNIQUE_ID_alias_crypto181", i1 false, i1 false}
!17 = !{ptr @alg, !18, !"alg", i1 false, i1 false}
!18 = !{!"../crypto/xxhash_generic.c", i32 70, i32 25}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
