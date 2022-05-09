; ModuleID = '/llk/IR_all_yes/arch/arm/crypto/nhpoly1305-neon-glue.c_pt.bc'
source_filename = "../arch/arm/crypto/nhpoly1305-neon-glue.c"
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@nhpoly1305_alg = internal global %struct.shash_alg { ptr @crypto_nhpoly1305_init, ptr @nhpoly1305_neon_update, ptr @crypto_nhpoly1305_final, ptr null, ptr null, ptr null, ptr null, ptr @crypto_nhpoly1305_setkey, ptr null, ptr null, i32 80, [84 x i8] undef, i32 16, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 1120, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"nhpoly1305\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"nhpoly1305-neon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, align 128
@__initcall__kmod_nhpoly1305_neon__175_71_nhpoly1305_mod_init6 = internal global ptr @nhpoly1305_mod_init, section ".initcall6.init", align 4
@__exitcall_nhpoly1305_mod_exit = internal global ptr @nhpoly1305_mod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description176 = internal constant [96 x i8] c"nhpoly1305_neon.description=NHPoly1305 \CE\B5-almost-\E2\88\86-universal hash function (NEON-accelerated)\00", section ".modinfo", align 1
@__UNIQUE_ID_file177 = internal constant [53 x i8] c"nhpoly1305_neon.file=arch/arm/crypto/nhpoly1305-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_license178 = internal constant [31 x i8] c"nhpoly1305_neon.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author179 = internal constant [58 x i8] c"nhpoly1305_neon.author=Eric Biggers <ebiggers@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace180 = internal constant [33 x i8] c"nhpoly1305_neon.alias=nhpoly1305\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto181 = internal constant [40 x i8] c"nhpoly1305_neon.alias=crypto-nhpoly1305\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace182 = internal constant [38 x i8] c"nhpoly1305_neon.alias=nhpoly1305-neon\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto183 = internal constant [45 x i8] c"nhpoly1305_neon.alias=crypto-nhpoly1305-neon\00", section ".modinfo", align 1
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias_crypto181, ptr @__UNIQUE_ID_alias_crypto183, ptr @__UNIQUE_ID_alias_userspace180, ptr @__UNIQUE_ID_alias_userspace182, ptr @__UNIQUE_ID_author179, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file177, ptr @__UNIQUE_ID_license178, ptr @__exitcall_nhpoly1305_mod_exit, ptr @__initcall__kmod_nhpoly1305_neon__175_71_nhpoly1305_mod_init6, ptr @nhpoly1305_mod_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nhpoly1305_mod_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @crypto_unregister_shash(ptr noundef nonnull @nhpoly1305_alg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shash(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nhpoly1305_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %0 = load i32, ptr @elf_hwcap, align 4
  %and = and i32 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @crypto_register_shash(ptr noundef nonnull @nhpoly1305_alg) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_nhpoly1305_init(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nhpoly1305_neon_update(ptr noundef %desc, ptr noundef %src, i32 noundef %srclen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %srclen)
  %cmp = icmp ult i32 %srclen, 64
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !19) #5
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !19) #5
  %and.i.i6.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i6.i to ptr
  %preempt_count.i7.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i7.i, align 4
  %and2.i = and i32 %7, 983040
  %or.i = or i32 %and2.i, %and.i
  %8 = tail call i32 @llvm.read_register.i32(metadata !19) #5
  %and.i.i8.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i8.i to ptr
  %preempt_count.i9.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i9.i, align 4
  %and4.i = and i32 %11, 65280
  %or5.i = or i32 %or.i, %and4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %tobool.not.i = icmp eq i32 %or5.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  br label %do.body

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call1 = tail call i32 @crypto_nhpoly1305_update(ptr noundef %desc, ptr noundef %src, i32 noundef %srclen) #5
  br label %return

do.body:                                          ; preds = %do.body.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge
  %src.addr.0 = phi ptr [ %add.ptr, %do.body.do.body_crit_edge ], [ %src, %lor.lhs.false.do.body_crit_edge ]
  %srclen.addr.0 = phi i32 [ %sub, %do.body.do.body_crit_edge ], [ %srclen, %lor.lhs.false.do.body_crit_edge ]
  %12 = tail call i32 @llvm.umin.i32(i32 %srclen.addr.0, i32 4096)
  tail call void @kernel_neon_begin() #5
  %call3 = tail call i32 @crypto_nhpoly1305_update_helper(ptr noundef %desc, ptr noundef %src.addr.0, i32 noundef %12, ptr noundef nonnull @_nh_neon) #5
  tail call void @kernel_neon_end() #5
  %add.ptr = getelementptr i8, ptr %src.addr.0, i32 %12
  %sub = sub i32 %srclen.addr.0, %12
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %do.body.return_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

return:                                           ; preds = %do.body.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %do.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_nhpoly1305_final(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_nhpoly1305_setkey(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_nhpoly1305_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_begin() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_nhpoly1305_update_helper(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_nh_neon(ptr noundef %key, ptr noundef %message, i32 noundef %message_len, ptr noundef %hash) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nh_neon(ptr noundef %key, ptr noundef %message, i32 noundef %message_len, ptr noundef %hash) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_end() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nh_neon(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shash(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !16, !17}
!llvm.named.register.sp = !{!19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__initcall__kmod_nhpoly1305_neon__175_71_nhpoly1305_mod_init6, !1, !"__initcall__kmod_nhpoly1305_neon__175_71_nhpoly1305_mod_init6", i1 false, i1 false}
!1 = !{!"../arch/arm/crypto/nhpoly1305-neon-glue.c", i32 71, i32 1}
!2 = !{ptr @__exitcall_nhpoly1305_mod_exit, !3, !"__exitcall_nhpoly1305_mod_exit", i1 false, i1 false}
!3 = !{!"../arch/arm/crypto/nhpoly1305-neon-glue.c", i32 72, i32 1}
!4 = !{ptr @__UNIQUE_ID_description176, !5, !"__UNIQUE_ID_description176", i1 false, i1 false}
!5 = !{!"../arch/arm/crypto/nhpoly1305-neon-glue.c", i32 74, i32 1}
!6 = !{ptr @__UNIQUE_ID_file177, !7, !"__UNIQUE_ID_file177", i1 false, i1 false}
!7 = !{!"../arch/arm/crypto/nhpoly1305-neon-glue.c", i32 75, i32 1}
!8 = !{ptr @__UNIQUE_ID_license178, !7, !"__UNIQUE_ID_license178", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author179, !10, !"__UNIQUE_ID_author179", i1 false, i1 false}
!10 = !{!"../arch/arm/crypto/nhpoly1305-neon-glue.c", i32 76, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_userspace180, !12, !"__UNIQUE_ID_alias_userspace180", i1 false, i1 false}
!12 = !{!"../arch/arm/crypto/nhpoly1305-neon-glue.c", i32 77, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_crypto181, !12, !"__UNIQUE_ID_alias_crypto181", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_alias_userspace182, !15, !"__UNIQUE_ID_alias_userspace182", i1 false, i1 false}
!15 = !{!"../arch/arm/crypto/nhpoly1305-neon-glue.c", i32 78, i32 1}
!16 = !{ptr @__UNIQUE_ID_alias_crypto183, !15, !"__UNIQUE_ID_alias_crypto183", i1 false, i1 false}
!17 = !{ptr @nhpoly1305_alg, !18, !"nhpoly1305_alg", i1 false, i1 false}
!18 = !{!"../arch/arm/crypto/nhpoly1305-neon-glue.c", i32 44, i32 25}
!19 = !{!"sp"}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
