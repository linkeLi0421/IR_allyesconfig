; ModuleID = '/llk/IR_all_yes/lib/crypto/blake2s.c_pt.bc'
source_filename = "../lib/crypto/blake2s.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+blake2s_update\22, \22a\22\09"
module asm "\09.weak\09__crc_blake2s_update\09\09\09\09"
module asm "\09.long\09__crc_blake2s_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blake2s_update:\09\09\09\09\09"
module asm "\09.asciz \09\22blake2s_update\22\09\09\09\09\09"
module asm "__kstrtabns_blake2s_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+blake2s_final\22, \22a\22\09"
module asm "\09.weak\09__crc_blake2s_final\09\09\09\09"
module asm "\09.long\09__crc_blake2s_final\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blake2s_final:\09\09\09\09\09"
module asm "\09.asciz \09\22blake2s_final\22\09\09\09\09\09"
module asm "__kstrtabns_blake2s_final:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.blake2s_state = type { [8 x i32], [2 x i32], [2 x i32], [64 x i8], i32, i32 }

@__kstrtab_blake2s_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_blake2s_update = external dso_local constant [0 x i8], align 1
@__ksymtab_blake2s_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blake2s_update to i32), ptr @__kstrtab_blake2s_update, ptr @__kstrtabns_blake2s_update }, section "___ksymtab+blake2s_update", align 4
@__kstrtab_blake2s_final = external dso_local constant [0 x i8], align 1
@__kstrtabns_blake2s_final = external dso_local constant [0 x i8], align 1
@__ksymtab_blake2s_final = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blake2s_final to i32), ptr @__kstrtab_blake2s_final, ptr @__kstrtabns_blake2s_final }, section "___ksymtab+blake2s_final", align 4
@__initcall__kmod_libblake2s__173_45_blake2s_mod_init6 = internal global ptr @blake2s_mod_init, section ".initcall6.init", align 4
@__exitcall_blake2s_mod_exit = internal global ptr @blake2s_mod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file174 = internal constant [38 x i8] c"libblake2s.file=lib/crypto/libblake2s\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [26 x i8] c"libblake2s.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [45 x i8] c"libblake2s.description=BLAKE2s hash function\00", section ".modinfo", align 1
@__UNIQUE_ID_author177 = internal constant [55 x i8] c"libblake2s.author=Jason A. Donenfeld <Jason@zx2c4.com>\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author177, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_blake2s_mod_exit, ptr @__initcall__kmod_libblake2s__173_45_blake2s_mod_init6, ptr @__ksymtab_blake2s_final, ptr @__ksymtab_blake2s_update, ptr @blake2s_mod_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blake2s_update(ptr noundef %state, ptr noundef %in, i32 noundef %inlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %buflen.i = getelementptr inbounds %struct.blake2s_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buflen.i, align 4
  %sub.i = sub i32 64, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inlen)
  %tobool.not.i = icmp eq i32 %inlen, 0
  br i1 %tobool.not.i, label %entry.__blake2s_update.exit_crit_edge, label %if.end.i, !prof !26

entry.__blake2s_update.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__blake2s_update.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %inlen)
  %cmp.i = icmp ult i32 %sub.i, %inlen
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.if.end16.i_crit_edge

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %buf.i = getelementptr inbounds %struct.blake2s_state, ptr %state, i32 0, i32 3
  %add.ptr.i = getelementptr i8, ptr %buf.i, i32 %1
  %2 = call ptr @memcpy(ptr %add.ptr.i, ptr %in, i32 %sub.i)
  tail call void @blake2s_compress(ptr noundef %state, ptr noundef %buf.i, i32 noundef 1, i32 noundef 64) #4
  %3 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %buflen.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %in, i32 %sub.i
  %sub15.i = sub i32 %inlen, %sub.i
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then4.i, %if.end.i.if.end16.i_crit_edge
  %inlen.addr.0.i = phi i32 [ %sub15.i, %if.then4.i ], [ %inlen, %if.end.i.if.end16.i_crit_edge ]
  %in.addr.0.i = phi ptr [ %add.ptr14.i, %if.then4.i ], [ %in, %if.end.i.if.end16.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %inlen.addr.0.i)
  %cmp17.i = icmp ugt i32 %inlen.addr.0.i, 64
  br i1 %cmp17.i, label %if.else23.i, label %if.end16.i.if.end31.i_crit_edge

if.end16.i.if.end31.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31.i

if.else23.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub19.i = add i32 %inlen.addr.0.i, 63
  %div1.i = lshr i32 %sub19.i, 6
  %sub24.i = add nsw i32 %div1.i, -1
  tail call void @blake2s_compress(ptr noundef %state, ptr noundef %in.addr.0.i, i32 noundef %sub24.i, i32 noundef 64) #4
  %4 = add i32 %inlen.addr.0.i, -1
  %mul.i = and i32 %4, -64
  %add.ptr27.i = getelementptr i8, ptr %in.addr.0.i, i32 %mul.i
  %sub30.i = sub i32 %inlen.addr.0.i, %mul.i
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else23.i, %if.end16.i.if.end31.i_crit_edge
  %inlen.addr.1.i = phi i32 [ %sub30.i, %if.else23.i ], [ %inlen.addr.0.i, %if.end16.i.if.end31.i_crit_edge ]
  %in.addr.1.i = phi ptr [ %add.ptr27.i, %if.else23.i ], [ %in.addr.0.i, %if.end16.i.if.end31.i_crit_edge ]
  %buf32.i = getelementptr inbounds %struct.blake2s_state, ptr %state, i32 0, i32 3
  %5 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %buflen.i, align 4
  %add.ptr35.i = getelementptr i8, ptr %buf32.i, i32 %6
  %7 = call ptr @memcpy(ptr %add.ptr35.i, ptr %in.addr.1.i, i32 %inlen.addr.1.i)
  %8 = load i32, ptr %buflen.i, align 4
  %add37.i = add i32 %8, %inlen.addr.1.i
  store i32 %add37.i, ptr %buflen.i, align 4
  br label %__blake2s_update.exit

__blake2s_update.exit:                            ; preds = %if.end31.i, %entry.__blake2s_update.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blake2s_final(ptr noundef %state, ptr nocapture noundef writeonly %out) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %f.i.i = getelementptr inbounds %struct.blake2s_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %f.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %f.i.i, align 4
  %buf.i = getelementptr inbounds %struct.blake2s_state, ptr %state, i32 0, i32 3
  %buflen.i = getelementptr inbounds %struct.blake2s_state, ptr %state, i32 0, i32 4
  %1 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %buflen.i, align 4
  %add.ptr.i = getelementptr i8, ptr %buf.i, i32 %2
  %sub.i = sub i32 64, %2
  %3 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i)
  %4 = load i32, ptr %buflen.i, align 4
  tail call void @blake2s_compress(ptr noundef %state, ptr noundef %buf.i, i32 noundef 1, i32 noundef %4) #4
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #4
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %state, align 4
  %incdec.ptr.i.i = getelementptr i32, ptr %state, i32 1
  %9 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %incdec.ptr.i.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #4
  %12 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %incdec.ptr.i.i, align 4
  %incdec.ptr.1.i.i = getelementptr i32, ptr %state, i32 2
  %13 = ptrtoint ptr %incdec.ptr.1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %incdec.ptr.1.i.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #4
  %16 = ptrtoint ptr %incdec.ptr.1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %incdec.ptr.1.i.i, align 4
  %incdec.ptr.2.i.i = getelementptr i32, ptr %state, i32 3
  %17 = ptrtoint ptr %incdec.ptr.2.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %incdec.ptr.2.i.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #4
  %20 = ptrtoint ptr %incdec.ptr.2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %incdec.ptr.2.i.i, align 4
  %incdec.ptr.3.i.i = getelementptr i32, ptr %state, i32 4
  %21 = ptrtoint ptr %incdec.ptr.3.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %incdec.ptr.3.i.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #4
  %24 = ptrtoint ptr %incdec.ptr.3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %incdec.ptr.3.i.i, align 4
  %incdec.ptr.4.i.i = getelementptr i32, ptr %state, i32 5
  %25 = ptrtoint ptr %incdec.ptr.4.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %incdec.ptr.4.i.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #4
  %28 = ptrtoint ptr %incdec.ptr.4.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %incdec.ptr.4.i.i, align 4
  %incdec.ptr.5.i.i = getelementptr i32, ptr %state, i32 6
  %29 = ptrtoint ptr %incdec.ptr.5.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %incdec.ptr.5.i.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #4
  %32 = ptrtoint ptr %incdec.ptr.5.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %incdec.ptr.5.i.i, align 4
  %incdec.ptr.6.i.i = getelementptr i32, ptr %state, i32 7
  %33 = ptrtoint ptr %incdec.ptr.6.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %incdec.ptr.6.i.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #4
  %36 = ptrtoint ptr %incdec.ptr.6.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %incdec.ptr.6.i.i, align 4
  %outlen.i = getelementptr inbounds %struct.blake2s_state, ptr %state, i32 0, i32 5
  %37 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %outlen.i, align 4
  %39 = call ptr @memcpy(ptr %out, ptr %state, i32 %38)
  %40 = call ptr @memset(ptr %state, i32 0, i32 120)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %state) #4, !srcloc !27
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @blake2s_mod_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @blake2s_mod_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blake2s_compress(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__ksymtab_blake2s_update, !1, !"__ksymtab_blake2s_update", i1 false, i1 false}
!1 = !{!"../lib/crypto/blake2s.c", i32 23, i32 1}
!2 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/crypto/blake2s.c", i32 27, i32 2}
!4 = !{ptr @__ksymtab_blake2s_final, !5, !"__ksymtab_blake2s_final", i1 false, i1 false}
!5 = !{!"../lib/crypto/blake2s.c", i32 31, i32 1}
!6 = !{ptr @__initcall__kmod_libblake2s__173_45_blake2s_mod_init6, !7, !"__initcall__kmod_libblake2s__173_45_blake2s_mod_init6", i1 false, i1 false}
!7 = !{!"../lib/crypto/blake2s.c", i32 45, i32 1}
!8 = !{ptr @__exitcall_blake2s_mod_exit, !9, !"__exitcall_blake2s_mod_exit", i1 false, i1 false}
!9 = !{!"../lib/crypto/blake2s.c", i32 46, i32 1}
!10 = !{ptr @__UNIQUE_ID_file174, !11, !"__UNIQUE_ID_file174", i1 false, i1 false}
!11 = !{!"../lib/crypto/blake2s.c", i32 47, i32 1}
!12 = !{ptr @__UNIQUE_ID_license175, !11, !"__UNIQUE_ID_license175", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_description176, !14, !"__UNIQUE_ID_description176", i1 false, i1 false}
!14 = !{!"../lib/crypto/blake2s.c", i32 48, i32 1}
!15 = !{ptr @__UNIQUE_ID_author177, !16, !"__UNIQUE_ID_author177", i1 false, i1 false}
!16 = !{!"../lib/crypto/blake2s.c", i32 49, i32 1}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{i64 2148177396}
