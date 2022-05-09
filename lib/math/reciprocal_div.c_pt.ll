; ModuleID = '/llk/IR_all_yes/lib/math/reciprocal_div.c_pt.bc'
source_filename = "../lib/math/reciprocal_div.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+reciprocal_value\22, \22a\22\09"
module asm "\09.weak\09__crc_reciprocal_value\09\09\09\09"
module asm "\09.long\09__crc_reciprocal_value\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reciprocal_value:\09\09\09\09\09"
module asm "\09.asciz \09\22reciprocal_value\22\09\09\09\09\09"
module asm "__kstrtabns_reciprocal_value:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+reciprocal_value_adv\22, \22a\22\09"
module asm "\09.weak\09__crc_reciprocal_value_adv\09\09\09\09"
module asm "\09.long\09__crc_reciprocal_value_adv\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reciprocal_value_adv:\09\09\09\09\09"
module asm "\09.asciz \09\22reciprocal_value_adv\22\09\09\09\09\09"
module asm "__kstrtabns_reciprocal_value_adv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.reciprocal_value_adv = type { i32, i8, i8, i8 }

@__kstrtab_reciprocal_value = external dso_local constant [0 x i8], align 1
@__kstrtabns_reciprocal_value = external dso_local constant [0 x i8], align 1
@__ksymtab_reciprocal_value = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reciprocal_value to i32), ptr @__kstrtab_reciprocal_value, ptr @__kstrtabns_reciprocal_value }, section "___ksymtab+reciprocal_value", align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lib/math/reciprocal_div.c\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ceil(log2(0x%08x)) == 32, %s doesn't support such divisor\00", [38 x i8] zeroinitializer }, align 32
@__func__.reciprocal_value_adv = private unnamed_addr constant [21 x i8] c"reciprocal_value_adv\00", align 1
@__kstrtab_reciprocal_value_adv = external dso_local constant [0 x i8], align 1
@__kstrtabns_reciprocal_value_adv = external dso_local constant [0 x i8], align 1
@__ksymtab_reciprocal_value_adv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reciprocal_value_adv to i32), ptr @__kstrtab_reciprocal_value_adv, ptr @__kstrtabns_reciprocal_value_adv }, section "___ksymtab+reciprocal_value_adv", align 4
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [29 x i8] c"../lib/math/reciprocal_div.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 47, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_reciprocal_value, ptr @__ksymtab_reciprocal_value_adv, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @reciprocal_value(ptr noalias nocapture writeonly sret(%struct.reciprocal_value) align 4 %agg.result, i32 noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %agg.result to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 -1, ptr %agg.result, align 4, !annotation !17
  %sub = add i32 %d, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not.i = icmp eq i32 %sub, 0
  %1 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #4, !range !18
  %sub.i = sub nuw nsw i32 32, %1
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %sh_prom = zext i32 %cond.i to i64
  %shl = shl nuw nsw i64 1, %sh_prom
  %conv = zext i32 %d to i64
  %sub1 = sub nsw i64 %shl, %conv
  %mul = shl i64 %sub1, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mul)
  %cmp172 = icmp eq i64 %mul, 0
  br i1 %cmp172, label %entry.if.end186_crit_edge, label %if.else182, !prof !19

entry.if.end186_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end186

if.else182:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %d, i64 %mul) #7, !srcloc !20
  %asmresult1.i = extractvalue { i64, i64 } %2, 1
  %extract.t323 = trunc i64 %asmresult1.i to i32
  %phi.bo = add i32 %extract.t323, 1
  br label %if.end186

if.end186:                                        ; preds = %if.else182, %entry.if.end186_crit_edge
  %m.0.off0 = phi i32 [ %phi.bo, %if.else182 ], [ 1, %entry.if.end186_crit_edge ]
  %3 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %m.0.off0, ptr %agg.result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp191 = icmp ne i32 %cond.i, 0
  %cond196 = zext i1 %cmp191 to i8
  %sh1 = getelementptr inbounds %struct.reciprocal_value, ptr %agg.result, i32 0, i32 1
  %4 = ptrtoint ptr %sh1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %cond196, ptr %sh1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond.i)
  %cmp200 = icmp ugt i32 %cond.i, 1
  %5 = trunc i32 %cond.i to i8
  %phi.cast294 = add nsw i8 %5, -1
  %cond205 = select i1 %cmp200, i8 %phi.cast294, i8 0
  %sh2 = getelementptr inbounds %struct.reciprocal_value, ptr %agg.result, i32 0, i32 2
  %6 = ptrtoint ptr %sh2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %cond205, ptr %sh2, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reciprocal_value_adv(ptr noalias nocapture writeonly sret(%struct.reciprocal_value_adv) align 4 %agg.result, i32 noundef %d, i8 noundef zeroext %prec) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %agg.result to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 -1, ptr %agg.result, align 4, !annotation !17
  %sub = add i32 %d, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not.i = icmp eq i32 %sub, 0
  %1 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #4, !range !18
  %sub.i = sub nuw nsw i32 32, %1
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %cond.i)
  %cmp = icmp eq i32 %cond.i, 32
  br i1 %cmp, label %do.end, label %entry.if.else420_crit_edge, !prof !21

entry.if.else420_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else420

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 49, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %d, ptr noundef nonnull @__func__.reciprocal_value_adv) #4
  br label %if.else420

if.else420:                                       ; preds = %do.end, %entry.if.else420_crit_edge
  %add = add nuw nsw i32 %cond.i, 32
  %sh_prom = zext i32 %add to i64
  %shl = shl nuw i64 1, %sh_prom
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %d, i64 %shl) #7, !srcloc !20
  %asmresult1.i = extractvalue { i64, i64 } %2, 1
  %conv216 = zext i8 %prec to i32
  %sub217 = sub nsw i32 %add, %conv216
  %sh_prom218 = zext i32 %sub217 to i64
  %shl219 = shl nuw i64 1, %sh_prom218
  %add220 = add i64 %shl219, %shl
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add220)
  %cmp422 = icmp ult i64 %add220, 4294967296
  br i1 %cmp422, label %if.then430, label %if.else436, !prof !19

if.then430:                                       ; preds = %if.else420
  call void @__sanitizer_cov_trace_pc() #6
  %conv431 = trunc i64 %add220 to i32
  %div434 = udiv i32 %conv431, %d
  %conv435 = zext i32 %div434 to i64
  br label %if.end440

if.else436:                                       ; preds = %if.else420
  call void @__sanitizer_cov_trace_pc() #6
  %3 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %d, i64 %add220) #7, !srcloc !20
  %asmresult1.i665 = extractvalue { i64, i64 } %3, 1
  br label %if.end440

if.end440:                                        ; preds = %if.else436, %if.then430
  %mhigh.0 = phi i64 [ %conv435, %if.then430 ], [ %asmresult1.i665, %if.else436 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp442.not749 = icmp eq i32 %cond.i, 0
  br i1 %cmp442.not749, label %if.end440.for.end_crit_edge, label %if.end440.for.body_crit_edge

if.end440.for.body_crit_edge:                     ; preds = %if.end440
  br label %for.body

if.end440.for.end_crit_edge:                      ; preds = %if.end440
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end440.for.body_crit_edge
  %post_shift.0752 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ %sub.i, %if.end440.for.body_crit_edge ]
  %mlow.1751 = phi i64 [ %shr444, %for.inc.for.body_crit_edge ], [ %asmresult1.i, %if.end440.for.body_crit_edge ]
  %mhigh.1750 = phi i64 [ %shr445, %for.inc.for.body_crit_edge ], [ %mhigh.0, %if.end440.for.body_crit_edge ]
  %shr444 = lshr i64 %mlow.1751, 1
  %shr445 = lshr i64 %mhigh.1750, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shr444, i64 %shr445)
  %cmp446.not = icmp ult i64 %shr444, %shr445
  br i1 %cmp446.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %post_shift.0752, -1
  %cmp442.not = icmp eq i32 %dec, 0
  br i1 %cmp442.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end440.for.end_crit_edge
  %mhigh.1.lcssa = phi i64 [ %mhigh.0, %if.end440.for.end_crit_edge ], [ %mhigh.1750, %for.body.for.end_crit_edge ], [ %shr445, %for.inc.for.end_crit_edge ]
  %post_shift.0.lcssa = phi i32 [ 0, %if.end440.for.end_crit_edge ], [ %post_shift.0752, %for.body.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %conv451 = trunc i64 %mhigh.1.lcssa to i32
  %4 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv451, ptr %agg.result, align 4
  %conv452 = trunc i32 %post_shift.0.lcssa to i8
  %sh = getelementptr inbounds %struct.reciprocal_value_adv, ptr %agg.result, i32 0, i32 1
  %5 = ptrtoint ptr %sh to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv452, ptr %sh, align 4
  %conv453 = trunc i32 %cond.i to i8
  %exp = getelementptr inbounds %struct.reciprocal_value_adv, ptr %agg.result, i32 0, i32 2
  %6 = ptrtoint ptr %exp to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv453, ptr %exp, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %mhigh.1.lcssa)
  %cmp454 = icmp ugt i64 %mhigh.1.lcssa, 4294967295
  %is_wide_m = getelementptr inbounds %struct.reciprocal_value_adv, ptr %agg.result, i32 0, i32 3
  %frombool = zext i1 %cmp454 to i8
  %7 = ptrtoint ptr %is_wide_m to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %is_wide_m, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @__ksymtab_reciprocal_value, !1, !"__ksymtab_reciprocal_value", i1 false, i1 false}
!1 = !{!"../lib/math/reciprocal_div.c", i32 33, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/math/reciprocal_div.c", i32 47, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__func__.reciprocal_value_adv, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__ksymtab_reciprocal_value_adv, !7, !"__ksymtab_reciprocal_value_adv", i1 false, i1 false}
!7 = !{!"../lib/math/reciprocal_div.c", i32 73, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"auto-init"}
!18 = !{i32 0, i32 33}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2148655814, i64 2148656094, i64 2148656428, i64 2148656762}
!21 = !{!"branch_weights", i32 1, i32 2000}
