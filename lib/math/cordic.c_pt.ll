; ModuleID = '/llk/IR_all_yes/lib/math/cordic.c_pt.bc'
source_filename = "../lib/math/cordic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cordic_calc_iq\22, \22a\22\09"
module asm "\09.weak\09__crc_cordic_calc_iq\09\09\09\09"
module asm "\09.long\09__crc_cordic_calc_iq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cordic_calc_iq:\09\09\09\09\09"
module asm "\09.asciz \09\22cordic_calc_iq\22\09\09\09\09\09"
module asm "__kstrtabns_cordic_calc_iq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cordic_iq = type { i32, i32 }

@arctan_table = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 2949120, i32 1740967, i32 919879, i32 466945, i32 234379, i32 117304, i32 58666, i32 29335, i32 14668, i32 7334, i32 3667, i32 1833, i32 917, i32 458, i32 229, i32 115, i32 57, i32 29], [56 x i8] zeroinitializer }, align 32
@__kstrtab_cordic_calc_iq = external dso_local constant [0 x i8], align 1
@__kstrtabns_cordic_calc_iq = external dso_local constant [0 x i8], align 1
@__ksymtab_cordic_calc_iq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cordic_calc_iq to i32), ptr @__kstrtab_cordic_calc_iq, ptr @__kstrtabns_cordic_calc_iq }, section "___ksymtab+cordic_calc_iq", align 4
@__UNIQUE_ID_description106 = internal constant [36 x i8] c"cordic.description=CORDIC algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_author107 = internal constant [35 x i8] c"cordic.author=Broadcom Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file108 = internal constant [28 x i8] c"cordic.file=lib/math/cordic\00", section ".modinfo", align 1
@__UNIQUE_ID_license109 = internal constant [28 x i8] c"cordic.license=Dual BSD/GPL\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"arctan_table\00", align 1
@___asan_gen_.2 = private constant [21 x i8] c"../lib/math/cordic.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 19, i32 18 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author107, ptr @__UNIQUE_ID_description106, ptr @__UNIQUE_ID_file108, ptr @__UNIQUE_ID_license109, ptr @__ksymtab_cordic_calc_iq, ptr @arctan_table], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arctan_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cordic_calc_iq(ptr noalias nocapture sret(%struct.cordic_iq) align 4 %agg.result, i32 noundef %theta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.cordic_iq, ptr %agg.result, i32 0, i32 1
  %1 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 39797, ptr %agg.result, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %0, align 4
  %shl = shl i32 %theta, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl)
  %cmp.inv = icmp sgt i32 %shl, -1
  %mul = select i1 %cmp.inv, i32 11796480, i32 -11796480
  %add = add i32 %mul, %shl
  %rem = srem i32 %add, 23592960
  %sub = sub nsw i32 %rem, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp2 = icmp sgt i32 %sub, -1
  br i1 %cmp2, label %cond.end, label %cond.false18

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5931007, i32 %sub)
  %cmp11 = icmp ugt i32 %sub, 5931007
  br i1 %cmp11, label %if.then, label %cond.true14

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #3
  %sub12 = add nsw i32 %sub, -11796480
  br label %if.end29

cond.true14:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #3
  %shr1586 = lshr i32 %sub, 15
  %add16 = add nuw nsw i32 %shr1586, 1
  %shr1787 = lshr i32 %add16, 1
  br label %cond.end24

cond.false18:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %sub19 = sub nsw i32 0, %sub
  %shr2088 = lshr i32 %sub19, 15
  %add21 = add nuw nsw i32 %shr2088, 1
  %shr2289 = lshr i32 %add21, 1
  %sub23 = sub nsw i32 0, %shr2289
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false18, %cond.true14
  %cond25 = phi i32 [ %shr1787, %cond.true14 ], [ %sub23, %cond.false18 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90, i32 %cond25)
  %cmp26 = icmp slt i32 %cond25, -90
  %add28 = add nsw i32 %sub, 11796480
  %spec.select = select i1 %cmp26, i32 -1, i32 1
  %spec.select81 = select i1 %cmp26, i32 %add28, i32 %sub
  br label %if.end29

if.end29:                                         ; preds = %cond.end24, %if.then
  %signx.0 = phi i32 [ -1, %if.then ], [ %spec.select, %cond.end24 ]
  %theta.addr.0 = phi i32 [ %sub12, %if.then ], [ %spec.select81, %cond.end24 ]
  %3 = ptrtoint ptr %agg.result to i32
  call void @__asan_load4_noabort(i32 %3)
  %agg.result.promoted = load i32, ptr %agg.result, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.promoted = load i32, ptr %0, align 4
  br label %for.body

for.body:                                         ; preds = %if.end53.for.body_crit_edge, %if.end29
  %iter.094 = phi i32 [ 0, %if.end29 ], [ %inc, %if.end53.for.body_crit_edge ]
  %angle.093 = phi i32 [ 0, %if.end29 ], [ %angle.1, %if.end53.for.body_crit_edge ]
  %5 = phi i32 [ %agg.result.promoted, %if.end29 ], [ %valtmp.0, %if.end53.for.body_crit_edge ]
  %sub509092 = phi i32 [ %.promoted, %if.end29 ], [ %sub5091, %if.end53.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %theta.addr.0, i32 %angle.093)
  %cmp31 = icmp sgt i32 %theta.addr.0, %angle.093
  %shr35 = ashr i32 %sub509092, %iter.094
  br i1 %cmp31, label %if.then32, label %if.else42

if.then32:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #3
  %sub36 = sub i32 %5, %shr35
  %shr38 = ashr i32 %5, %iter.094
  %add40 = add i32 %sub509092, %shr38
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add40, ptr %0, align 4
  %arrayidx = getelementptr [18 x i32], ptr @arctan_table, i32 0, i32 %iter.094
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add41 = add i32 %8, %angle.093
  br label %if.end53

if.else42:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #3
  %add46 = add i32 %shr35, %5
  %shr48 = ashr i32 %5, %iter.094
  %sub50 = sub i32 %sub509092, %shr48
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub50, ptr %0, align 4
  %arrayidx51 = getelementptr [18 x i32], ptr @arctan_table, i32 0, i32 %iter.094
  %10 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx51, align 4
  %sub52 = sub i32 %angle.093, %11
  br label %if.end53

if.end53:                                         ; preds = %if.else42, %if.then32
  %sub5091 = phi i32 [ %add40, %if.then32 ], [ %sub50, %if.else42 ]
  %angle.1 = phi i32 [ %add41, %if.then32 ], [ %sub52, %if.else42 ]
  %valtmp.0 = phi i32 [ %sub36, %if.then32 ], [ %add46, %if.else42 ]
  %inc = add nuw nsw i32 %iter.094, 1
  %exitcond.not = icmp eq i32 %inc, 18
  br i1 %exitcond.not, label %for.end, label %if.end53.for.body_crit_edge

if.end53.for.body_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.body

for.end:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #3
  %mul56 = mul i32 %valtmp.0, %signx.0
  %12 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul56, ptr %agg.result, align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %0, align 4
  %mul58 = mul i32 %14, %signx.0
  store i32 %mul58, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @__ksymtab_cordic_calc_iq, !1, !"__ksymtab_cordic_calc_iq", i1 false, i1 false}
!1 = !{!"../lib/math/cordic.c", i32 88, i32 1}
!2 = !{ptr @__UNIQUE_ID_description106, !3, !"__UNIQUE_ID_description106", i1 false, i1 false}
!3 = !{!"../lib/math/cordic.c", i32 90, i32 1}
!4 = !{ptr @__UNIQUE_ID_author107, !5, !"__UNIQUE_ID_author107", i1 false, i1 false}
!5 = !{!"../lib/math/cordic.c", i32 91, i32 1}
!6 = !{ptr @__UNIQUE_ID_file108, !7, !"__UNIQUE_ID_file108", i1 false, i1 false}
!7 = !{!"../lib/math/cordic.c", i32 92, i32 1}
!8 = !{ptr @__UNIQUE_ID_license109, !7, !"__UNIQUE_ID_license109", i1 false, i1 false}
!9 = !{ptr @arctan_table, !10, !"arctan_table", i1 false, i1 false}
!10 = !{!"../lib/math/cordic.c", i32 19, i32 18}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
