; ModuleID = '/llk/IR_all_yes/crypto/des_generic.c_pt.bc'
source_filename = "../crypto/des_generic.c"
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

@des_algs = internal global [2 x %struct.crypto_alg] [%struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, i32 8, i32 128, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"des-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon { %struct.cipher_alg { i32 8, i32 8, ptr @des_setkey, ptr @crypto_des_encrypt, ptr @crypto_des_decrypt } }, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef }, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, i32 8, i32 384, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"des3_ede\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"des3_ede-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon { %struct.cipher_alg { i32 24, i32 24, ptr @des3_ede_setkey, ptr @crypto_des3_ede_encrypt, ptr @crypto_des3_ede_decrypt } }, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef }], align 128
@__initcall__kmod_des_generic__173_125_des_generic_mod_init4 = internal global ptr @des_generic_mod_init, section ".initcall4.init", align 4
@__exitcall_des_generic_mod_fini = internal global ptr @des_generic_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file174 = internal constant [36 x i8] c"des_generic.file=crypto/des_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [24 x i8] c"des_generic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [63 x i8] c"des_generic.description=DES & Triple DES EDE Cipher Algorithms\00", section ".modinfo", align 1
@__UNIQUE_ID_author177 = internal constant [48 x i8] c"des_generic.author=Dag Arne Osvik <da@osvik.no>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace178 = internal constant [22 x i8] c"des_generic.alias=des\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto179 = internal constant [29 x i8] c"des_generic.alias=crypto-des\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace180 = internal constant [30 x i8] c"des_generic.alias=des-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto181 = internal constant [37 x i8] c"des_generic.alias=crypto-des-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace182 = internal constant [27 x i8] c"des_generic.alias=des3_ede\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto183 = internal constant [34 x i8] c"des_generic.alias=crypto-des3_ede\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace184 = internal constant [35 x i8] c"des_generic.alias=des3_ede-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto185 = internal constant [42 x i8] c"des_generic.alias=crypto-des3_ede-generic\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967170]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967170]
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_alias_crypto179, ptr @__UNIQUE_ID_alias_crypto181, ptr @__UNIQUE_ID_alias_crypto183, ptr @__UNIQUE_ID_alias_crypto185, ptr @__UNIQUE_ID_alias_userspace178, ptr @__UNIQUE_ID_alias_userspace180, ptr @__UNIQUE_ID_alias_userspace182, ptr @__UNIQUE_ID_alias_userspace184, ptr @__UNIQUE_ID_author177, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_des_generic_mod_fini, ptr @__initcall__kmod_des_generic__173_125_des_generic_mod_init4, ptr @des_generic_mod_fini], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @des_generic_mod_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @crypto_unregister_algs(ptr noundef nonnull @des_algs, i32 noundef 2) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_algs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @des_generic_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_algs(ptr noundef nonnull @des_algs, i32 noundef 2) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @des_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %call1 = tail call i32 @des_expand_key(ptr noundef %__crt_ctx.i, ptr noundef %key, i32 noundef %keylen) #3
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1, label %entry.if.then6_crit_edge [
    i32 -126, label %if.then
    i32 0, label %entry.if.end7_crit_edge
  ]

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

entry.if.then6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then6

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tfm, align 128
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end7_crit_edge, label %if.then.if.then6_crit_edge

if.then.if.then6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then6

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then6:                                         ; preds = %if.then.if.then6_crit_edge, %entry.if.then6_crit_edge
  %err.018 = phi i32 [ -22, %if.then.if.then6_crit_edge ], [ %call1, %entry.if.then6_crit_edge ]
  %3 = call ptr @memset(ptr %__crt_ctx.i, i32 0, i32 128)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %err.014 = phi i32 [ %err.018, %if.then6 ], [ 0, %if.then.if.end7_crit_edge ], [ %call1, %entry.if.end7_crit_edge ]
  ret i32 %err.014
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_des_encrypt(ptr noundef %tfm, ptr noundef %dst, ptr noundef %src) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  tail call void @des_encrypt(ptr noundef %__crt_ctx.i, ptr noundef %dst, ptr noundef %src) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_des_decrypt(ptr noundef %tfm, ptr noundef %dst, ptr noundef %src) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  tail call void @des_decrypt(ptr noundef %__crt_ctx.i, ptr noundef %dst, ptr noundef %src) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @des3_ede_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %call1 = tail call i32 @des3_ede_expand_key(ptr noundef %__crt_ctx.i, ptr noundef %key, i32 noundef %keylen) #3
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %call1, label %entry.if.then6_crit_edge [
    i32 -126, label %if.then
    i32 0, label %entry.if.end7_crit_edge
  ]

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

entry.if.then6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then6

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tfm, align 128
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end7_crit_edge, label %if.then.if.then6_crit_edge

if.then.if.then6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then6

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then6:                                         ; preds = %if.then.if.then6_crit_edge, %entry.if.then6_crit_edge
  %err.018 = phi i32 [ -22, %if.then.if.then6_crit_edge ], [ %call1, %entry.if.then6_crit_edge ]
  %3 = call ptr @memset(ptr %__crt_ctx.i, i32 0, i32 384)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %err.014 = phi i32 [ %err.018, %if.then6 ], [ 0, %if.then.if.end7_crit_edge ], [ %call1, %entry.if.end7_crit_edge ]
  ret i32 %err.014
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_des3_ede_encrypt(ptr noundef %tfm, ptr noundef %dst, ptr noundef %src) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  tail call void @des3_ede_encrypt(ptr noundef %__crt_ctx.i, ptr noundef %dst, ptr noundef %src) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_des3_ede_decrypt(ptr noundef %tfm, ptr noundef %dst, ptr noundef %src) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  tail call void @des3_ede_decrypt(ptr noundef %__crt_ctx.i, ptr noundef %dst, ptr noundef %src) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @des_expand_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @des_encrypt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @des_decrypt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @des3_ede_expand_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @des3_ede_encrypt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @des3_ede_decrypt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_algs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !17, !19, !20, !22, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__initcall__kmod_des_generic__173_125_des_generic_mod_init4, !1, !"__initcall__kmod_des_generic__173_125_des_generic_mod_init4", i1 false, i1 false}
!1 = !{!"../crypto/des_generic.c", i32 125, i32 1}
!2 = !{ptr @__exitcall_des_generic_mod_fini, !3, !"__exitcall_des_generic_mod_fini", i1 false, i1 false}
!3 = !{!"../crypto/des_generic.c", i32 126, i32 1}
!4 = !{ptr @__UNIQUE_ID_file174, !5, !"__UNIQUE_ID_file174", i1 false, i1 false}
!5 = !{!"../crypto/des_generic.c", i32 128, i32 1}
!6 = !{ptr @__UNIQUE_ID_license175, !5, !"__UNIQUE_ID_license175", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description176, !8, !"__UNIQUE_ID_description176", i1 false, i1 false}
!8 = !{!"../crypto/des_generic.c", i32 129, i32 1}
!9 = !{ptr @__UNIQUE_ID_author177, !10, !"__UNIQUE_ID_author177", i1 false, i1 false}
!10 = !{!"../crypto/des_generic.c", i32 130, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_userspace178, !12, !"__UNIQUE_ID_alias_userspace178", i1 false, i1 false}
!12 = !{!"../crypto/des_generic.c", i32 131, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_crypto179, !12, !"__UNIQUE_ID_alias_crypto179", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_alias_userspace180, !15, !"__UNIQUE_ID_alias_userspace180", i1 false, i1 false}
!15 = !{!"../crypto/des_generic.c", i32 132, i32 1}
!16 = !{ptr @__UNIQUE_ID_alias_crypto181, !15, !"__UNIQUE_ID_alias_crypto181", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_alias_userspace182, !18, !"__UNIQUE_ID_alias_userspace182", i1 false, i1 false}
!18 = !{!"../crypto/des_generic.c", i32 133, i32 1}
!19 = !{ptr @__UNIQUE_ID_alias_crypto183, !18, !"__UNIQUE_ID_alias_crypto183", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_alias_userspace184, !21, !"__UNIQUE_ID_alias_userspace184", i1 false, i1 false}
!21 = !{!"../crypto/des_generic.c", i32 134, i32 1}
!22 = !{ptr @__UNIQUE_ID_alias_crypto185, !21, !"__UNIQUE_ID_alias_crypto185", i1 false, i1 false}
!23 = !{ptr @des_algs, !24, !"des_algs", i1 false, i1 false}
!24 = !{!"../crypto/des_generic.c", i32 85, i32 26}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
