; ModuleID = '/llk/IR_all_yes/crypto/curve25519-generic.c_pt.bc'
source_filename = "../crypto/curve25519-generic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kpp_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, [100 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.68, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.kpp_request = type { %struct.crypto_async_request, ptr, ptr, i32, i32, [88 x i8], [0 x ptr] }

@__initcall__kmod_curve25519_generic__228_85_curve25519_init4 = internal global ptr @curve25519_init, section ".initcall4.init", align 4
@__exitcall_curve25519_exit = internal global ptr @curve25519_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias_userspace229 = internal constant [36 x i8] c"curve25519_generic.alias=curve25519\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto230 = internal constant [43 x i8] c"curve25519_generic.alias=crypto-curve25519\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace231 = internal constant [44 x i8] c"curve25519_generic.alias=curve25519-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto232 = internal constant [51 x i8] c"curve25519_generic.alias=crypto-curve25519-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [50 x i8] c"curve25519_generic.file=crypto/curve25519-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [31 x i8] c"curve25519_generic.license=GPL\00", section ".modinfo", align 1
@curve25519_alg = internal global %struct.kpp_alg { ptr @curve25519_set_secret, ptr @curve25519_compute_value, ptr @curve25519_compute_value, ptr @curve25519_max_size, ptr null, ptr null, i32 0, [100 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 32, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"curve25519\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"curve25519-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, align 128
@curve25519_null_point = external dso_local constant [0 x i8], align 1
@curve25519_base_point = external dso_local constant [0 x i8], align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 32]
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias_crypto230, ptr @__UNIQUE_ID_alias_crypto232, ptr @__UNIQUE_ID_alias_userspace229, ptr @__UNIQUE_ID_alias_userspace231, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_curve25519_exit, ptr @__initcall__kmod_curve25519_generic__228_85_curve25519_init4], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @curve25519_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_kpp(ptr noundef nonnull @curve25519_alg) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @curve25519_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @crypto_unregister_kpp(ptr noundef nonnull @curve25519_alg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_kpp(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @curve25519_set_secret(ptr noundef %tfm, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %len, label %entry.cleanup_crit_edge [
    i32 0, label %if.then
    i32 32, label %land.lhs.true
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @wait_for_random_bytes() #5
  tail call void @get_random_bytes(ptr noundef %__crt_ctx.i, i32 noundef 32) #5
  %1 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %__crt_ctx.i, align 1
  %3 = and i8 %2, -8
  store i8 %3, ptr %__crt_ctx.i, align 1
  %arrayidx2.i.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 15
  %4 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2.i.i, align 1
  %6 = and i8 %5, 63
  %7 = or i8 %6, 64
  store i8 %7, ptr %arrayidx2.i.i, align 1
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %call.i = tail call i32 @__crypto_memneq(ptr noundef %buf, ptr noundef nonnull @curve25519_null_point, i32 noundef 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i.not, label %land.lhs.true.cleanup_crit_edge, label %if.then3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %8 = call ptr @memcpy(ptr %__crt_ctx.i, ptr %buf, i32 32)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %land.lhs.true.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then3 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @curve25519_compute_value(ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  %public_key = alloca [32 x i8], align 1
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %public_key) #5
  %2 = call ptr @memset(ptr %public_key, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #5
  %src = getelementptr inbounds %struct.kpp_request, ptr %req, i32 0, i32 1
  %3 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %4 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @sg_nents_for_len(ptr noundef nonnull %5, i64 noundef 32) #5
  %call5 = call i32 @sg_copy_to_buffer(ptr noundef nonnull %5, i32 noundef %call4, ptr noundef nonnull %public_key, i32 noundef 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 32
  br i1 %cmp.not, label %if.then.if.end8_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %bp.0 = phi ptr [ %public_key, %if.then.if.end8_crit_edge ], [ @curve25519_base_point, %entry.if.end8_crit_edge ]
  call void @curve25519_generic(ptr noundef nonnull %buf, ptr noundef %__crt_ctx.i, ptr noundef nonnull %bp.0) #5
  %dst_len = getelementptr inbounds %struct.kpp_request, ptr %req, i32 0, i32 4
  %6 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dst_len, align 4
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 32)
  %dst = getelementptr inbounds %struct.kpp_request, ptr %req, i32 0, i32 2
  %9 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dst, align 4
  %conv37 = zext i32 %8 to i64
  %call12 = call i32 @sg_nents_for_len(ptr noundef %10, i64 noundef %conv37) #5
  %call14 = call i32 @sg_copy_from_buffer(ptr noundef %10, i32 noundef %call12, ptr noundef nonnull %buf, i32 noundef %8) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call14, i32 %8)
  %cmp15.not = icmp eq i32 %call14, %8
  %spec.select = select i1 %cmp15.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ %spec.select, %if.end8 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %public_key) #5
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @curve25519_max_size(ptr nocapture noundef readnone %tfm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 32
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_random_bytes() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @curve25519_generic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_kpp(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__initcall__kmod_curve25519_generic__228_85_curve25519_init4, !1, !"__initcall__kmod_curve25519_generic__228_85_curve25519_init4", i1 false, i1 false}
!1 = !{!"../crypto/curve25519-generic.c", i32 85, i32 1}
!2 = !{ptr @__exitcall_curve25519_exit, !3, !"__exitcall_curve25519_exit", i1 false, i1 false}
!3 = !{!"../crypto/curve25519-generic.c", i32 86, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias_userspace229, !5, !"__UNIQUE_ID_alias_userspace229", i1 false, i1 false}
!5 = !{!"../crypto/curve25519-generic.c", i32 88, i32 1}
!6 = !{ptr @__UNIQUE_ID_alias_crypto230, !5, !"__UNIQUE_ID_alias_crypto230", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias_userspace231, !8, !"__UNIQUE_ID_alias_userspace231", i1 false, i1 false}
!8 = !{!"../crypto/curve25519-generic.c", i32 89, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias_crypto232, !8, !"__UNIQUE_ID_alias_crypto232", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_file233, !11, !"__UNIQUE_ID_file233", i1 false, i1 false}
!11 = !{!"../crypto/curve25519-generic.c", i32 90, i32 1}
!12 = !{ptr @__UNIQUE_ID_license234, !11, !"__UNIQUE_ID_license234", i1 false, i1 false}
!13 = !{ptr @curve25519_alg, !14, !"curve25519_alg", i1 false, i1 false}
!14 = !{!"../crypto/curve25519-generic.c", i32 62, i32 23}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
