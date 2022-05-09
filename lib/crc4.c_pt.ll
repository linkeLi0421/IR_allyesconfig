; ModuleID = '/llk/IR_all_yes/lib/crc4.c_pt.bc'
source_filename = "../lib/crc4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+crc4\22, \22a\22\09"
module asm "\09.weak\09__crc_crc4\09\09\09\09"
module asm "\09.long\09__crc_crc4\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crc4:\09\09\09\09\09"
module asm "\09.asciz \09\22crc4\22\09\09\09\09\09"
module asm "__kstrtabns_crc4:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@crc4_tab = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\07\0E\09\0B\0C\05\02\01\06\0F\08\0A\0D\04\03", [16 x i8] zeroinitializer }, align 32
@__kstrtab_crc4 = external dso_local constant [0 x i8], align 1
@__kstrtabns_crc4 = external dso_local constant [0 x i8], align 1
@__ksymtab_crc4 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crc4 to i32), ptr @__kstrtab_crc4, ptr @__kstrtabns_crc4 }, section "___ksymtab_gpl+crc4", align 4
@__UNIQUE_ID_description106 = internal constant [35 x i8] c"crc4.description=CRC4 calculations\00", section ".modinfo", align 1
@__UNIQUE_ID_file107 = internal constant [19 x i8] c"crc4.file=lib/crc4\00", section ".modinfo", align 1
@__UNIQUE_ID_license108 = internal constant [17 x i8] c"crc4.license=GPL\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [9 x i8] c"crc4_tab\00", align 1
@___asan_gen_.2 = private constant [14 x i8] c"../lib/crc4.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 9, i32 22 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_description106, ptr @__UNIQUE_ID_file107, ptr @__UNIQUE_ID_license108, ptr @__ksymtab_crc4, ptr @crc4_tab], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc4_tab to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @crc4(i8 noundef zeroext %c, i64 noundef %x, i32 noundef %bits) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #2
  %sh_prom = zext i32 %bits to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %and = and i64 %sub, %x
  %0 = add i32 %bits, -1
  %sub2 = and i32 %0, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub2)
  %cmp12 = icmp sgt i32 %sub2, -1
  br i1 %cmp12, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #2
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %sub5, %for.body.for.body_crit_edge ], [ %sub2, %entry.for.body_crit_edge ]
  %c.addr.013 = phi i8 [ %2, %for.body.for.body_crit_edge ], [ %c, %entry.for.body_crit_edge ]
  %conv = zext i8 %c.addr.013 to i64
  %sh_prom3 = zext i32 %i.014 to i64
  %shr = lshr i64 %and, %sh_prom3
  %and4 = and i64 %shr, 15
  %xor = xor i64 %and4, %conv
  %idxprom = trunc i64 %xor to i32
  %arrayidx = getelementptr [16 x i8], ptr @crc4_tab, i32 0, i32 %idxprom
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %sub5 = add nsw i32 %i.014, -4
  %cmp.not = icmp eq i32 %i.014, 0
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #2
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #2
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %c.addr.0.lcssa = phi i8 [ %c, %entry.for.end_crit_edge ], [ %2, %for.body.for.end_crit_edge ]
  ret i8 %c.addr.0.lcssa
}

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #1 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind uwtable(sync) }
attributes #2 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @__ksymtab_crc4, !1, !"__ksymtab_crc4", i1 false, i1 false}
!1 = !{!"../lib/crc4.c", i32 41, i32 1}
!2 = !{ptr @__UNIQUE_ID_description106, !3, !"__UNIQUE_ID_description106", i1 false, i1 false}
!3 = !{!"../lib/crc4.c", i32 43, i32 1}
!4 = !{ptr @__UNIQUE_ID_file107, !5, !"__UNIQUE_ID_file107", i1 false, i1 false}
!5 = !{!"../lib/crc4.c", i32 44, i32 1}
!6 = !{ptr @__UNIQUE_ID_license108, !5, !"__UNIQUE_ID_license108", i1 false, i1 false}
!7 = !{ptr @crc4_tab, !8, !"crc4_tab", i1 false, i1 false}
!8 = !{!"../lib/crc4.c", i32 9, i32 22}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
