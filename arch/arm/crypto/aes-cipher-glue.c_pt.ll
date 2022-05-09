; ModuleID = '/llk/IR_all_yes/arch/arm/crypto/aes-cipher-glue.c_pt.bc'
source_filename = "../arch/arm/crypto/aes-cipher-glue.c"
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

@aes_alg = internal global %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, i32 16, i32 484, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"aes-arm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon { %struct.cipher_alg { i32 16, i32 32, ptr @crypto_aes_set_key, ptr @aes_arm_encrypt, ptr @aes_arm_decrypt } }, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef }, align 128
@__initcall__kmod_aes_arm__173_62_aes_init6 = internal global ptr @aes_init, section ".initcall6.init", align 4
@__exitcall_aes_fini = internal global ptr @aes_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_description174 = internal constant [46 x i8] c"aes_arm.description=Scalar AES cipher for ARM\00", section ".modinfo", align 1
@__UNIQUE_ID_author175 = internal constant [58 x i8] c"aes_arm.author=Ard Biesheuvel <ard.biesheuvel@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file176 = internal constant [37 x i8] c"aes_arm.file=arch/arm/crypto/aes-arm\00", section ".modinfo", align 1
@__UNIQUE_ID_license177 = internal constant [23 x i8] c"aes_arm.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace178 = internal constant [18 x i8] c"aes_arm.alias=aes\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto179 = internal constant [25 x i8] c"aes_arm.alias=crypto-aes\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias_crypto179, ptr @__UNIQUE_ID_alias_userspace178, ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file176, ptr @__UNIQUE_ID_license177, ptr @__exitcall_aes_fini, ptr @__initcall__kmod_aes_arm__173_62_aes_init6, ptr @aes_fini], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aes_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @crypto_unregister_alg(ptr noundef nonnull @aes_alg) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aes_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_alg(ptr noundef nonnull @aes_alg) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aes_set_key(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aes_arm_encrypt(ptr noundef %tfm, ptr noundef %out, ptr noundef %in) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %key_length = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 4, i32 4, i32 80
  %0 = ptrtoint ptr %key_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_length, align 4
  %div2 = lshr i32 %1, 2
  %add = add nuw nsw i32 %div2, 6
  tail call void @__aes_arm_encrypt(ptr noundef %__crt_ctx.i, i32 noundef %add, ptr noundef %in, ptr noundef %out) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aes_arm_decrypt(ptr noundef %tfm, ptr noundef %out, ptr noundef %in) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %key_length = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 4, i32 4, i32 80
  %0 = ptrtoint ptr %key_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_length, align 4
  %div2 = lshr i32 %1, 2
  %add = add nuw nsw i32 %div2, 6
  %key_dec = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 96
  tail call void @__aes_arm_decrypt(ptr noundef %key_dec, i32 noundef %add, ptr noundef %in, ptr noundef %out) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__aes_arm_encrypt(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__aes_arm_decrypt(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__initcall__kmod_aes_arm__173_62_aes_init6, !1, !"__initcall__kmod_aes_arm__173_62_aes_init6", i1 false, i1 false}
!1 = !{!"../arch/arm/crypto/aes-cipher-glue.c", i32 62, i32 1}
!2 = !{ptr @__exitcall_aes_fini, !3, !"__exitcall_aes_fini", i1 false, i1 false}
!3 = !{!"../arch/arm/crypto/aes-cipher-glue.c", i32 63, i32 1}
!4 = !{ptr @__UNIQUE_ID_description174, !5, !"__UNIQUE_ID_description174", i1 false, i1 false}
!5 = !{!"../arch/arm/crypto/aes-cipher-glue.c", i32 65, i32 1}
!6 = !{ptr @__UNIQUE_ID_author175, !7, !"__UNIQUE_ID_author175", i1 false, i1 false}
!7 = !{!"../arch/arm/crypto/aes-cipher-glue.c", i32 66, i32 1}
!8 = !{ptr @__UNIQUE_ID_file176, !9, !"__UNIQUE_ID_file176", i1 false, i1 false}
!9 = !{!"../arch/arm/crypto/aes-cipher-glue.c", i32 67, i32 1}
!10 = !{ptr @__UNIQUE_ID_license177, !9, !"__UNIQUE_ID_license177", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias_userspace178, !12, !"__UNIQUE_ID_alias_userspace178", i1 false, i1 false}
!12 = !{!"../arch/arm/crypto/aes-cipher-glue.c", i32 68, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_crypto179, !12, !"__UNIQUE_ID_alias_crypto179", i1 false, i1 false}
!14 = !{ptr @aes_alg, !15, !"aes_alg", i1 false, i1 false}
!15 = !{!"../arch/arm/crypto/aes-cipher-glue.c", i32 32, i32 26}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
