; ModuleID = '/llk/IR_all_yes/lib/glob.c_pt.bc'
source_filename = "../lib/glob.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+glob_match\22, \22a\22\09"
module asm "\09.weak\09__crc_glob_match\09\09\09\09"
module asm "\09.long\09__crc_glob_match\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_glob_match:\09\09\09\09\09"
module asm "\09.asciz \09\22glob_match\22\09\09\09\09\09"
module asm "__kstrtabns_glob_match:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__UNIQUE_ID_description106 = internal constant [34 x i8] c"glob.description=glob(7) matching\00", section ".modinfo", align 1
@__UNIQUE_ID_file107 = internal constant [19 x i8] c"glob.file=lib/glob\00", section ".modinfo", align 1
@__UNIQUE_ID_license108 = internal constant [26 x i8] c"glob.license=Dual MIT/GPL\00", section ".modinfo", align 1
@__kstrtab_glob_match = external dso_local constant [0 x i8], align 1
@__kstrtabns_glob_match = external dso_local constant [0 x i8], align 1
@__ksymtab_glob_match = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @glob_match to i32), ptr @__kstrtab_glob_match, ptr @__kstrtabns_glob_match }, section "___ksymtab+glob_match", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 42, i64 63, i64 91, i64 92]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 93]
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_description106, ptr @__UNIQUE_ID_file107, ptr @__UNIQUE_ID_license108, ptr @__ksymtab_glob_match], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @glob_match(ptr noundef readonly %pat, ptr nocapture noundef readonly %str) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #2
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.cond.outer.backedge, %entry
  %pat.addr.0.ph = phi ptr [ %pat, %entry ], [ %pat.addr.0.ph.be, %for.cond.outer.backedge ]
  %str.addr.0.ph = phi ptr [ %str, %entry ], [ %str.addr.0.ph.be, %for.cond.outer.backedge ]
  %back_pat.0.ph = phi ptr [ null, %entry ], [ %back_pat.0, %for.cond.outer.backedge ]
  %back_str.0.ph = phi ptr [ inttoptr (i32 -1 to ptr), %entry ], [ %back_str.0.ph.be, %for.cond.outer.backedge ]
  br label %for.cond

for.cond:                                         ; preds = %sw.bb4.for.cond_crit_edge, %for.cond.outer
  %pat.addr.0 = phi ptr [ %incdec.ptr1, %sw.bb4.for.cond_crit_edge ], [ %pat.addr.0.ph, %for.cond.outer ]
  %back_pat.0 = phi ptr [ %incdec.ptr1, %sw.bb4.for.cond_crit_edge ], [ %back_pat.0.ph, %for.cond.outer ]
  %back_str.0 = phi ptr [ %str.addr.0.ph, %sw.bb4.for.cond_crit_edge ], [ %back_str.0.ph, %for.cond.outer ]
  %incdec.ptr1 = getelementptr i8, ptr %pat.addr.0, i32 1
  %0 = ptrtoint ptr %pat.addr.0 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pat.addr.0, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %literal.loopexit143 [
    i8 63, label %sw.bb
    i8 42, label %sw.bb4
    i8 91, label %sw.bb11
    i8 92, label %sw.bb68
  ]

sw.bb:                                            ; preds = %for.cond
  %incdec.ptr.le217 = getelementptr i8, ptr %str.addr.0.ph, i32 1
  %3 = ptrtoint ptr %str.addr.0.ph to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %str.addr.0.ph, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %sw.bb.cleanup92_crit_edge, label %sw.bb.for.cond.outer.backedge_crit_edge

sw.bb.for.cond.outer.backedge_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #2
  br label %for.cond.outer.backedge

sw.bb.cleanup92_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #2
  br label %cleanup92

sw.bb4:                                           ; preds = %for.cond
  %5 = ptrtoint ptr %incdec.ptr1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %incdec.ptr1, align 1
  %cmp6 = icmp eq i8 %6, 0
  br i1 %cmp6, label %sw.bb4.cleanup92_crit_edge, label %sw.bb4.for.cond_crit_edge

sw.bb4.for.cond_crit_edge:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #2
  br label %for.cond

sw.bb4.cleanup92_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #2
  br label %cleanup92

sw.bb11:                                          ; preds = %for.cond
  %incdec.ptr.le216 = getelementptr i8, ptr %str.addr.0.ph, i32 1
  %7 = ptrtoint ptr %str.addr.0.ph to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %str.addr.0.ph, align 1
  %9 = ptrtoint ptr %incdec.ptr1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %10)
  %cmp13 = icmp eq i8 %10, 33
  %conv15 = zext i1 %cmp13 to i32
  %add.ptr = getelementptr i8, ptr %incdec.ptr1, i32 %conv15
  %incdec.ptr16 = getelementptr i8, ptr %add.ptr, i32 1
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr, align 1
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %sw.bb11
  %match.0.off0 = phi i1 [ false, %sw.bb11 ], [ %or125, %do.cond.do.body_crit_edge ]
  %class.0 = phi ptr [ %incdec.ptr16, %sw.bb11 ], [ %incdec.ptr50, %do.cond.do.body_crit_edge ]
  %a.0 = phi i8 [ %12, %sw.bb11 ], [ %20, %do.cond.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %a.0)
  %cmp18 = icmp eq i8 %a.0, 0
  br i1 %cmp18, label %do.body.literal_crit_edge, label %if.end21

do.body.literal_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #2
  br label %literal

if.end21:                                         ; preds = %do.body
  %13 = ptrtoint ptr %class.0 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %class.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %14)
  %cmp23 = icmp eq i8 %14, 45
  br i1 %cmp23, label %land.lhs.true, label %if.end21.do.cond_crit_edge

if.end21.do.cond_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #2
  br label %do.cond

land.lhs.true:                                    ; preds = %if.end21
  %arrayidx25 = getelementptr i8, ptr %class.0, i32 1
  %15 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx25, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %16, label %if.end35 [
    i8 93, label %land.lhs.true.do.cond_crit_edge
    i8 0, label %land.lhs.true.literal_crit_edge
  ]

land.lhs.true.literal_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #2
  br label %literal

land.lhs.true.do.cond_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #2
  br label %do.cond

if.end35:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #2
  %add.ptr36 = getelementptr i8, ptr %class.0, i32 2
  br label %do.cond

do.cond:                                          ; preds = %if.end35, %land.lhs.true.do.cond_crit_edge, %if.end21.do.cond_crit_edge
  %class.1 = phi ptr [ %add.ptr36, %if.end35 ], [ %class.0, %land.lhs.true.do.cond_crit_edge ], [ %class.0, %if.end21.do.cond_crit_edge ]
  %b.0 = phi i8 [ %16, %if.end35 ], [ %a.0, %land.lhs.true.do.cond_crit_edge ], [ %a.0, %if.end21.do.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %a.0, i8 %8)
  %cmp40.not = icmp ule i8 %a.0, %8
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %b.0)
  %cmp44 = icmp ule i8 %8, %b.0
  %18 = select i1 %cmp40.not, i1 %cmp44, i1 false
  %or125 = or i1 %match.0.off0, %18
  %incdec.ptr50 = getelementptr i8, ptr %class.1, i32 1
  %19 = ptrtoint ptr %class.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %class.1, align 1
  %cmp52.not = icmp eq i8 %20, 93
  br i1 %cmp52.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #2
  br label %do.body

do.end:                                           ; preds = %do.cond
  %21 = xor i1 %cmp13, %or125
  br i1 %21, label %do.end.for.cond.outer.backedge_crit_edge, label %do.end.backtrack_crit_edge

do.end.backtrack_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #2
  br label %backtrack

do.end.for.cond.outer.backedge_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #2
  br label %for.cond.outer.backedge

sw.bb68:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #2
  %incdec.ptr.le = getelementptr i8, ptr %str.addr.0.ph, i32 1
  %22 = ptrtoint ptr %str.addr.0.ph to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %str.addr.0.ph, align 1
  %incdec.ptr69 = getelementptr i8, ptr %pat.addr.0, i32 2
  %24 = ptrtoint ptr %incdec.ptr1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %incdec.ptr1, align 1
  br label %literal

literal.loopexit143:                              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #2
  %incdec.ptr.le218 = getelementptr i8, ptr %str.addr.0.ph, i32 1
  %26 = ptrtoint ptr %str.addr.0.ph to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %str.addr.0.ph, align 1
  br label %literal

literal:                                          ; preds = %literal.loopexit143, %sw.bb68, %land.lhs.true.literal_crit_edge, %do.body.literal_crit_edge
  %incdec.ptr197 = phi ptr [ %incdec.ptr.le, %sw.bb68 ], [ %incdec.ptr.le218, %literal.loopexit143 ], [ %incdec.ptr.le216, %land.lhs.true.literal_crit_edge ], [ %incdec.ptr.le216, %do.body.literal_crit_edge ]
  %28 = phi i8 [ %23, %sw.bb68 ], [ %27, %literal.loopexit143 ], [ %8, %land.lhs.true.literal_crit_edge ], [ %8, %do.body.literal_crit_edge ]
  %pat.addr.2 = phi ptr [ %incdec.ptr69, %sw.bb68 ], [ %incdec.ptr1, %literal.loopexit143 ], [ %incdec.ptr1, %land.lhs.true.literal_crit_edge ], [ %incdec.ptr1, %do.body.literal_crit_edge ]
  %d.0 = phi i8 [ %25, %sw.bb68 ], [ %1, %literal.loopexit143 ], [ 91, %land.lhs.true.literal_crit_edge ], [ 91, %do.body.literal_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %d.0)
  %cmp72 = icmp eq i8 %28, %d.0
  br i1 %cmp72, label %if.then74, label %literal.backtrack_crit_edge

literal.backtrack_crit_edge:                      ; preds = %literal
  call void @__sanitizer_cov_trace_pc() #2
  br label %backtrack

if.then74:                                        ; preds = %literal
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp76 = icmp eq i8 %28, 0
  br i1 %cmp76, label %if.then74.cleanup92_crit_edge, label %if.then74.for.cond.outer.backedge_crit_edge

if.then74.for.cond.outer.backedge_crit_edge:      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #2
  br label %for.cond.outer.backedge

if.then74.cleanup92_crit_edge:                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #2
  br label %cleanup92

for.cond.outer.backedge:                          ; preds = %if.end86, %if.then74.for.cond.outer.backedge_crit_edge, %do.end.for.cond.outer.backedge_crit_edge, %sw.bb.for.cond.outer.backedge_crit_edge
  %pat.addr.0.ph.be = phi ptr [ %incdec.ptr50, %do.end.for.cond.outer.backedge_crit_edge ], [ %incdec.ptr1, %sw.bb.for.cond.outer.backedge_crit_edge ], [ %back_pat.0, %if.end86 ], [ %pat.addr.2, %if.then74.for.cond.outer.backedge_crit_edge ]
  %str.addr.0.ph.be = phi ptr [ %incdec.ptr.le216, %do.end.for.cond.outer.backedge_crit_edge ], [ %incdec.ptr.le217, %sw.bb.for.cond.outer.backedge_crit_edge ], [ %incdec.ptr87, %if.end86 ], [ %incdec.ptr197, %if.then74.for.cond.outer.backedge_crit_edge ]
  %back_str.0.ph.be = phi ptr [ %back_str.0, %do.end.for.cond.outer.backedge_crit_edge ], [ %back_str.0, %sw.bb.for.cond.outer.backedge_crit_edge ], [ %incdec.ptr87, %if.end86 ], [ %back_str.0, %if.then74.for.cond.outer.backedge_crit_edge ]
  br label %for.cond.outer

backtrack:                                        ; preds = %literal.backtrack_crit_edge, %do.end.backtrack_crit_edge
  %29 = phi i8 [ %8, %do.end.backtrack_crit_edge ], [ %28, %literal.backtrack_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp82 = icmp eq i8 %29, 0
  %tobool84.not = icmp eq ptr %back_pat.0, null
  %or.cond = select i1 %cmp82, i1 true, i1 %tobool84.not
  br i1 %or.cond, label %backtrack.cleanup92_crit_edge, label %if.end86

backtrack.cleanup92_crit_edge:                    ; preds = %backtrack
  call void @__sanitizer_cov_trace_pc() #2
  br label %cleanup92

if.end86:                                         ; preds = %backtrack
  call void @__sanitizer_cov_trace_pc() #2
  %incdec.ptr87 = getelementptr i8, ptr %back_str.0, i32 1
  br label %for.cond.outer.backedge

cleanup92:                                        ; preds = %backtrack.cleanup92_crit_edge, %if.then74.cleanup92_crit_edge, %sw.bb4.cleanup92_crit_edge, %sw.bb.cleanup92_crit_edge
  %retval.1.ph = phi i1 [ true, %sw.bb4.cleanup92_crit_edge ], [ false, %sw.bb.cleanup92_crit_edge ], [ true, %if.then74.cleanup92_crit_edge ], [ false, %backtrack.cleanup92_crit_edge ]
  ret i1 %retval.1.ph
}

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind uwtable(sync) }
attributes #2 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__UNIQUE_ID_description106, !1, !"__UNIQUE_ID_description106", i1 false, i1 false}
!1 = !{!"../lib/glob.c", i32 9, i32 1}
!2 = !{ptr @__UNIQUE_ID_file107, !3, !"__UNIQUE_ID_file107", i1 false, i1 false}
!3 = !{!"../lib/glob.c", i32 10, i32 1}
!4 = !{ptr @__UNIQUE_ID_license108, !3, !"__UNIQUE_ID_license108", i1 false, i1 false}
!5 = !{ptr @__ksymtab_glob_match, !6, !"__ksymtab_glob_match", i1 false, i1 false}
!6 = !{!"../lib/glob.c", i32 123, i32 1}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
