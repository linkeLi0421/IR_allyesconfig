; ModuleID = '/llk/IR_all_yes/lib/crypto/poly1305.c_pt.bc'
source_filename = "../lib/crypto/poly1305.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+poly1305_init_generic\22, \22a\22\09"
module asm "\09.weak\09__crc_poly1305_init_generic\09\09\09\09"
module asm "\09.long\09__crc_poly1305_init_generic\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_poly1305_init_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22poly1305_init_generic\22\09\09\09\09\09"
module asm "__kstrtabns_poly1305_init_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+poly1305_update_generic\22, \22a\22\09"
module asm "\09.weak\09__crc_poly1305_update_generic\09\09\09\09"
module asm "\09.long\09__crc_poly1305_update_generic\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_poly1305_update_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22poly1305_update_generic\22\09\09\09\09\09"
module asm "__kstrtabns_poly1305_update_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+poly1305_final_generic\22, \22a\22\09"
module asm "\09.weak\09__crc_poly1305_final_generic\09\09\09\09"
module asm "\09.long\09__crc_poly1305_final_generic\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_poly1305_final_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22poly1305_final_generic\22\09\09\09\09\09"
module asm "__kstrtabns_poly1305_final_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.poly1305_desc_ctx = type { [16 x i8], i32, i16, i8, [4 x i32], %struct.poly1305_state, %union.anon.0 }
%struct.poly1305_state = type { %union.anon }
%union.anon = type { [3 x i64] }
%union.anon.0 = type { [9 x %struct.poly1305_key] }
%struct.poly1305_key = type { %union.anon.1 }
%union.anon.1 = type { [3 x i64] }

@__kstrtab_poly1305_init_generic = external dso_local constant [0 x i8], align 1
@__kstrtabns_poly1305_init_generic = external dso_local constant [0 x i8], align 1
@__ksymtab_poly1305_init_generic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @poly1305_init_generic to i32), ptr @__kstrtab_poly1305_init_generic, ptr @__kstrtabns_poly1305_init_generic }, section "___ksymtab_gpl+poly1305_init_generic", align 4
@__kstrtab_poly1305_update_generic = external dso_local constant [0 x i8], align 1
@__kstrtabns_poly1305_update_generic = external dso_local constant [0 x i8], align 1
@__ksymtab_poly1305_update_generic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @poly1305_update_generic to i32), ptr @__kstrtab_poly1305_update_generic, ptr @__kstrtabns_poly1305_update_generic }, section "___ksymtab_gpl+poly1305_update_generic", align 4
@__kstrtab_poly1305_final_generic = external dso_local constant [0 x i8], align 1
@__kstrtabns_poly1305_final_generic = external dso_local constant [0 x i8], align 1
@__ksymtab_poly1305_final_generic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @poly1305_final_generic to i32), ptr @__kstrtab_poly1305_final_generic, ptr @__kstrtabns_poly1305_final_generic }, section "___ksymtab_gpl+poly1305_final_generic", align 4
@__UNIQUE_ID_file175 = internal constant [40 x i8] c"libpoly1305.file=lib/crypto/libpoly1305\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [24 x i8] c"libpoly1305.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author177 = internal constant [56 x i8] c"libpoly1305.author=Martin Willi <martin@strongswan.org>\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author177, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__ksymtab_poly1305_final_generic, ptr @__ksymtab_poly1305_init_generic, ptr @__ksymtab_poly1305_update_generic], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @poly1305_init_generic(ptr noundef %desc, ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %desc, i32 0, i32 6
  tail call void @poly1305_core_setkey(ptr noundef %0, ptr noundef %key) #3
  %add.ptr = getelementptr i8, ptr %key, i32 16
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %add.ptr, align 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #3
  %s = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %desc, i32 0, i32 4
  %4 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %s, align 8
  %add.ptr1 = getelementptr i8, ptr %key, i32 20
  %5 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %add.ptr1, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #3
  %arrayidx4 = getelementptr %struct.poly1305_desc_ctx, ptr %desc, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx4, align 4
  %add.ptr5 = getelementptr i8, ptr %key, i32 24
  %9 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %add.ptr5, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #3
  %arrayidx8 = getelementptr %struct.poly1305_desc_ctx, ptr %desc, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx8, align 8
  %add.ptr9 = getelementptr i8, ptr %key, i32 28
  %13 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %add.ptr9, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #3
  %arrayidx12 = getelementptr %struct.poly1305_desc_ctx, ptr %desc, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx12, align 4
  %h = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %desc, i32 0, i32 5
  %17 = call ptr @memset(ptr %h, i32 0, i32 24)
  %buflen = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %desc, i32 0, i32 1
  %18 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %buflen, align 8
  %sset = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %desc, i32 0, i32 3
  %19 = ptrtoint ptr %sset to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %sset, align 2
  %rset = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %desc, i32 0, i32 2
  %20 = ptrtoint ptr %rset to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %rset, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @poly1305_core_setkey(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @poly1305_update_generic(ptr noundef %desc, ptr noundef %src, i32 noundef %nbytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %buflen = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buflen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then, !prof !20

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

if.then:                                          ; preds = %entry
  %sub = sub i32 16, %1
  %2 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %nbytes)
  %add.ptr = getelementptr i8, ptr %desc, i32 %1
  %3 = call ptr @memcpy(ptr %add.ptr, ptr %src, i32 %2)
  %add.ptr5 = getelementptr i8, ptr %src, i32 %2
  %sub6 = sub i32 %nbytes, %2
  %4 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buflen, align 8
  %add = add i32 %5, %2
  store i32 %add, ptr %buflen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add)
  %cmp9 = icmp eq i32 %add, 16
  br i1 %cmp9, label %if.then10, label %if.then.if.end14_crit_edge

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %h = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %desc, i32 0, i32 5
  %6 = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %desc, i32 0, i32 6
  tail call void @poly1305_core_blocks(ptr noundef %h, ptr noundef %6, ptr noundef %desc, i32 noundef 1, i32 noundef 1) #3
  %7 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %buflen, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.then.if.end14_crit_edge, %entry.if.end14_crit_edge
  %nbytes.addr.0 = phi i32 [ %sub6, %if.then10 ], [ %sub6, %if.then.if.end14_crit_edge ], [ %nbytes, %entry.if.end14_crit_edge ]
  %src.addr.0 = phi ptr [ %add.ptr5, %if.then10 ], [ %add.ptr5, %if.then.if.end14_crit_edge ], [ %src, %entry.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %nbytes.addr.0)
  %cmp15 = icmp ugt i32 %nbytes.addr.0, 15
  br i1 %cmp15, label %if.then22, label %if.end14.if.end27_crit_edge, !prof !20

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

if.then22:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  %h23 = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %desc, i32 0, i32 5
  %8 = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %desc, i32 0, i32 6
  %div71 = lshr i32 %nbytes.addr.0, 4
  tail call void @poly1305_core_blocks(ptr noundef %h23, ptr noundef %8, ptr noundef %src.addr.0, i32 noundef %div71, i32 noundef 1) #3
  %rem = and i32 %nbytes.addr.0, 15
  %sub24 = and i32 %nbytes.addr.0, -16
  %add.ptr25 = getelementptr i8, ptr %src.addr.0, i32 %sub24
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end14.if.end27_crit_edge
  %nbytes.addr.1 = phi i32 [ %rem, %if.then22 ], [ %nbytes.addr.0, %if.end14.if.end27_crit_edge ]
  %src.addr.1 = phi ptr [ %add.ptr25, %if.then22 ], [ %src.addr.0, %if.end14.if.end27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.addr.1)
  %tobool28.not = icmp eq i32 %nbytes.addr.1, 0
  br i1 %tobool28.not, label %if.end27.if.end39_crit_edge, label %if.then35, !prof !20

if.end27.if.end39_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end39

if.then35:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %nbytes.addr.1, ptr %buflen, align 8
  %10 = call ptr @memcpy(ptr %desc, ptr %src.addr.1, i32 %nbytes.addr.1)
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.end27.if.end39_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @poly1305_core_blocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @poly1305_final_generic(ptr noundef %desc, ptr noundef %dst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %buflen = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buflen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !20

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %inc = add i32 %1, 1
  %2 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc, ptr %buflen, align 8
  %arrayidx = getelementptr [16 x i8], ptr %desc, i32 0, i32 %1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %arrayidx, align 1
  %4 = load i32, ptr %buflen, align 8
  %add.ptr = getelementptr i8, ptr %desc, i32 %4
  %sub = sub i32 16, %4
  %5 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  %h = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %desc, i32 0, i32 5
  %6 = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %desc, i32 0, i32 6
  tail call void @poly1305_core_blocks(ptr noundef %h, ptr noundef %6, ptr noundef %desc, i32 noundef 1, i32 noundef 0) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %h9 = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %desc, i32 0, i32 5
  %s = getelementptr inbounds %struct.poly1305_desc_ctx, ptr %desc, i32 0, i32 4
  tail call void @poly1305_core_emit(ptr noundef %h9, ptr noundef %s, ptr noundef %dst) #3
  %7 = call ptr @memset(ptr %desc, i32 0, i32 280)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @poly1305_core_emit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @__ksymtab_poly1305_init_generic, !1, !"__ksymtab_poly1305_init_generic", i1 false, i1 false}
!1 = !{!"../lib/crypto/poly1305.c", i32 28, i32 1}
!2 = !{ptr @__ksymtab_poly1305_update_generic, !3, !"__ksymtab_poly1305_update_generic", i1 false, i1 false}
!3 = !{!"../lib/crypto/poly1305.c", i32 61, i32 1}
!4 = !{ptr @__ksymtab_poly1305_final_generic, !5, !"__ksymtab_poly1305_final_generic", i1 false, i1 false}
!5 = !{!"../lib/crypto/poly1305.c", i32 75, i32 1}
!6 = !{ptr @__UNIQUE_ID_file175, !7, !"__UNIQUE_ID_file175", i1 false, i1 false}
!7 = !{!"../lib/crypto/poly1305.c", i32 77, i32 1}
!8 = !{ptr @__UNIQUE_ID_license176, !7, !"__UNIQUE_ID_license176", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author177, !10, !"__UNIQUE_ID_author177", i1 false, i1 false}
!10 = !{!"../lib/crypto/poly1305.c", i32 78, i32 1}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"branch_weights", i32 2000, i32 1}
