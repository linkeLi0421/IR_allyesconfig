; ModuleID = '/llk/IR_all_yes/lib/errseq.c_pt.bc'
source_filename = "../lib/errseq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+errseq_set\22, \22a\22\09"
module asm "\09.weak\09__crc_errseq_set\09\09\09\09"
module asm "\09.long\09__crc_errseq_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_errseq_set:\09\09\09\09\09"
module asm "\09.asciz \09\22errseq_set\22\09\09\09\09\09"
module asm "__kstrtabns_errseq_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+errseq_sample\22, \22a\22\09"
module asm "\09.weak\09__crc_errseq_sample\09\09\09\09"
module asm "\09.long\09__crc_errseq_sample\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_errseq_sample:\09\09\09\09\09"
module asm "\09.asciz \09\22errseq_sample\22\09\09\09\09\09"
module asm "__kstrtabns_errseq_sample:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+errseq_check\22, \22a\22\09"
module asm "\09.weak\09__crc_errseq_check\09\09\09\09"
module asm "\09.long\09__crc_errseq_check\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_errseq_check:\09\09\09\09\09"
module asm "\09.asciz \09\22errseq_check\22\09\09\09\09\09"
module asm "__kstrtabns_errseq_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+errseq_check_and_advance\22, \22a\22\09"
module asm "\09.weak\09__crc_errseq_check_and_advance\09\09\09\09"
module asm "\09.long\09__crc_errseq_check_and_advance\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_errseq_check_and_advance:\09\09\09\09\09"
module asm "\09.asciz \09\22errseq_check_and_advance\22\09\09\09\09\09"
module asm "__kstrtabns_errseq_check_and_advance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lib/errseq.c\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"err = %d\0A\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab_errseq_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_errseq_set = external dso_local constant [0 x i8], align 1
@__ksymtab_errseq_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @errseq_set to i32), ptr @__kstrtab_errseq_set, ptr @__kstrtabns_errseq_set }, section "___ksymtab+errseq_set", align 4
@__kstrtab_errseq_sample = external dso_local constant [0 x i8], align 1
@__kstrtabns_errseq_sample = external dso_local constant [0 x i8], align 1
@__ksymtab_errseq_sample = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @errseq_sample to i32), ptr @__kstrtab_errseq_sample, ptr @__kstrtabns_errseq_sample }, section "___ksymtab+errseq_sample", align 4
@__kstrtab_errseq_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_errseq_check = external dso_local constant [0 x i8], align 1
@__ksymtab_errseq_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @errseq_check to i32), ptr @__kstrtab_errseq_check, ptr @__kstrtabns_errseq_check }, section "___ksymtab+errseq_check", align 4
@__kstrtab_errseq_check_and_advance = external dso_local constant [0 x i8], align 1
@__kstrtabns_errseq_check_and_advance = external dso_local constant [0 x i8], align 1
@__ksymtab_errseq_check_and_advance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @errseq_check_and_advance to i32), ptr @__kstrtab_errseq_check_and_advance, ptr @__kstrtabns_errseq_check_and_advance }, section "___ksymtab+errseq_check_and_advance", align 4
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [16 x i8] c"../lib/errseq.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 74, i32 6 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_errseq_check, ptr @__ksymtab_errseq_check_and_advance, ptr @__ksymtab_errseq_sample, ptr @__ksymtab_errseq_set, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @errseq_set(ptr noundef %eseq, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %eseq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %eseq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4095, i32 %err)
  %2 = icmp ult i32 %err, -4095
  br i1 %2, label %do.end20, label %for.cond.preheader, !prof !19

for.cond.preheader:                               ; preds = %entry
  %sub36 = sub nsw i32 0, %err
  br label %for.cond

do.end20:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %err) #6
  br label %cleanup74

for.cond:                                         ; preds = %__cmpxchg.exit.for.cond_crit_edge, %for.cond.preheader
  %old.0 = phi i32 [ %asmresult1.i, %__cmpxchg.exit.for.cond_crit_edge ], [ %1, %for.cond.preheader ]
  %and = and i32 %old.0, -8192
  %or = or i32 %and, %sub36
  %and37 = and i32 %old.0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %add = add i32 %or, 8192
  %spec.select = select i1 %tobool38.not, i32 %or, i32 %add
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %old.0)
  %cmp41 = icmp eq i32 %spec.select, %old.0
  br i1 %cmp41, label %for.cond.cleanup74_crit_edge, label %if.end43

for.cond.cleanup74_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup74

if.end43:                                         ; preds = %for.cond
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %eseq, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !20
  tail call void @llvm.prefetch.p0(ptr %eseq, i32 1, i32 3, i32 1) #6
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end43
  %3 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %eseq, i32 %old.0, i32 %spec.select) #6, !srcloc !21
  %asmresult.i = extractvalue { i32, i32 } %3, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult1.i, i32 %old.0)
  %cmp62 = icmp eq i32 %asmresult1.i, %old.0
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult1.i, i32 %spec.select)
  %cmp64 = icmp eq i32 %asmresult1.i, %spec.select
  %spec.select94 = select i1 %cmp62, i1 true, i1 %cmp64
  br i1 %spec.select94, label %cleanup74.loopexit.split.loop.exit, label %__cmpxchg.exit.for.cond_crit_edge, !prof !23

__cmpxchg.exit.for.cond_crit_edge:                ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond

cleanup74.loopexit.split.loop.exit:               ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %asmresult1.i.le = extractvalue { i32, i32 } %3, 1
  br label %cleanup74

cleanup74:                                        ; preds = %cleanup74.loopexit.split.loop.exit, %for.cond.cleanup74_crit_edge, %do.end20
  %retval.0 = phi i32 [ %1, %do.end20 ], [ %asmresult1.i.le, %cleanup74.loopexit.split.loop.exit ], [ %old.0, %for.cond.cleanup74_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @errseq_sample(ptr noundef %eseq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %eseq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %eseq, align 4
  %and = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool.not, i32 0, i32 %1
  ret i32 %spec.store.select
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @errseq_check(ptr noundef %eseq, i32 noundef %since) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %eseq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %eseq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %since)
  %cmp = icmp eq i32 %1, %since
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !23

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and = and i32 %1, 4095
  %sub = sub nsw i32 0, %and
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @errseq_check_and_advance(ptr noundef %eseq, ptr nocapture noundef %since) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %eseq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %eseq, align 4
  %2 = ptrtoint ptr %since to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %since, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21

if.then:                                          ; preds = %entry
  %or = or i32 %1, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %1)
  %cmp1.not = icmp eq i32 %or, %1
  br i1 %cmp1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then2:                                         ; preds = %if.then
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %eseq, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !24
  tail call void @llvm.prefetch.p0(ptr %eseq, i32 1, i32 3, i32 1) #6
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then2
  %4 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %eseq, i32 %1, i32 %or) #6, !srcloc !21
  %asmresult.i = extractvalue { i32, i32 } %4, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  br label %if.end

if.end:                                           ; preds = %__cmpxchg.exit, %if.then.if.end_crit_edge
  %5 = ptrtoint ptr %since to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %since, align 4
  %and = and i32 %1, 4095
  %sub = sub nsw i32 0, %and
  br label %if.end21

if.end21:                                         ; preds = %if.end, %entry.if.end21_crit_edge
  %err.0 = phi i32 [ %sub, %if.end ], [ 0, %entry.if.end21_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/errseq.c", i32 74, i32 6}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_errseq_set, !4, !"__ksymtab_errseq_set", i1 false, i1 false}
!4 = !{!"../lib/errseq.c", i32 109, i32 1}
!5 = !{ptr @__ksymtab_errseq_sample, !6, !"__ksymtab_errseq_sample", i1 false, i1 false}
!6 = !{!"../lib/errseq.c", i32 132, i32 1}
!7 = !{ptr @__ksymtab_errseq_check, !8, !"__ksymtab_errseq_check", i1 false, i1 false}
!8 = !{!"../lib/errseq.c", i32 153, i32 1}
!9 = !{ptr @__ksymtab_errseq_check_and_advance, !10, !"__ksymtab_errseq_check_and_advance", i1 false, i1 false}
!10 = !{!"../lib/errseq.c", i32 207, i32 1}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2148675692}
!21 = !{i64 784107, i64 784128, i64 784151, i64 784170, i64 784189}
!22 = !{i64 2148676097}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{i64 2148689487}
!25 = !{i64 2148689892}
