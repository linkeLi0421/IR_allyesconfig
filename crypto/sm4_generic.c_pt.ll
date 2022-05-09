; ModuleID = '/llk/IR_all_yes/crypto/sm4_generic.c_pt.bc'
source_filename = "../crypto/sm4_generic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.44, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.44 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@sm4_alg = internal global %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, i32 16, i32 256, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"sm4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sm4-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon { %struct.cipher_alg { i32 16, i32 16, ptr @sm4_setkey, ptr @sm4_encrypt, ptr @sm4_decrypt } }, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef }, align 128
@__initcall__kmod_sm4_generic__173_86_sm4_init4 = internal global ptr @sm4_init, section ".initcall4.init", align 4
@__exitcall_sm4_fini = internal global ptr @sm4_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_description174 = internal constant [45 x i8] c"sm4_generic.description=SM4 Cipher Algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_file175 = internal constant [36 x i8] c"sm4_generic.file=crypto/sm4_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [27 x i8] c"sm4_generic.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace177 = internal constant [22 x i8] c"sm4_generic.alias=sm4\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto178 = internal constant [29 x i8] c"sm4_generic.alias=crypto-sm4\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace179 = internal constant [30 x i8] c"sm4_generic.alias=sm4-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto180 = internal constant [37 x i8] c"sm4_generic.alias=crypto-sm4-generic\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias_crypto178, ptr @__UNIQUE_ID_alias_crypto180, ptr @__UNIQUE_ID_alias_userspace177, ptr @__UNIQUE_ID_alias_userspace179, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__exitcall_sm4_fini, ptr @__initcall__kmod_sm4_generic__173_86_sm4_init4, ptr @sm4_fini], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sm4_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @crypto_unregister_alg(ptr noundef nonnull @sm4_alg) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sm4_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_alg(ptr noundef nonnull @sm4_alg) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm4_setkey(ptr noundef %tfm, ptr noundef %in_key, i32 noundef %key_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %call1 = tail call i32 @sm4_expandkey(ptr noundef %__crt_ctx.i, ptr noundef %in_key, i32 noundef %key_len) #3
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sm4_encrypt(ptr noundef %tfm, ptr noundef %out, ptr noundef %in) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  tail call void @sm4_crypt_block(ptr noundef %__crt_ctx.i, ptr noundef %out, ptr noundef %in) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sm4_decrypt(ptr noundef %tfm, ptr noundef %out, ptr noundef %in) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rkey_dec = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2
  tail call void @sm4_crypt_block(ptr noundef %rkey_dec, ptr noundef %out, ptr noundef %in) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm4_expandkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sm4_crypt_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__initcall__kmod_sm4_generic__173_86_sm4_init4, !1, !"__initcall__kmod_sm4_generic__173_86_sm4_init4", i1 false, i1 false}
!1 = !{!"../crypto/sm4_generic.c", i32 86, i32 1}
!2 = !{ptr @__exitcall_sm4_fini, !3, !"__exitcall_sm4_fini", i1 false, i1 false}
!3 = !{!"../crypto/sm4_generic.c", i32 87, i32 1}
!4 = !{ptr @__UNIQUE_ID_description174, !5, !"__UNIQUE_ID_description174", i1 false, i1 false}
!5 = !{!"../crypto/sm4_generic.c", i32 89, i32 1}
!6 = !{ptr @__UNIQUE_ID_file175, !7, !"__UNIQUE_ID_file175", i1 false, i1 false}
!7 = !{!"../crypto/sm4_generic.c", i32 90, i32 1}
!8 = !{ptr @__UNIQUE_ID_license176, !7, !"__UNIQUE_ID_license176", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_alias_userspace177, !10, !"__UNIQUE_ID_alias_userspace177", i1 false, i1 false}
!10 = !{!"../crypto/sm4_generic.c", i32 91, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_crypto178, !10, !"__UNIQUE_ID_alias_crypto178", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias_userspace179, !13, !"__UNIQUE_ID_alias_userspace179", i1 false, i1 false}
!13 = !{!"../crypto/sm4_generic.c", i32 92, i32 1}
!14 = !{ptr @__UNIQUE_ID_alias_crypto180, !13, !"__UNIQUE_ID_alias_crypto180", i1 false, i1 false}
!15 = !{ptr @sm4_alg, !16, !"sm4_alg", i1 false, i1 false}
!16 = !{!"../crypto/sm4_generic.c", i32 57, i32 26}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
