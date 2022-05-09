; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8723bs/core/rtw_rf.c_pt.bc'
source_filename = "../drivers/staging/rtl8723bs/core/rtw_rf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ch_freq = type { i32, i32 }

@ch_freq_map = internal constant { [53 x %struct.ch_freq], [120 x i8] } { [53 x %struct.ch_freq] [%struct.ch_freq { i32 1, i32 2412 }, %struct.ch_freq { i32 2, i32 2417 }, %struct.ch_freq { i32 3, i32 2422 }, %struct.ch_freq { i32 4, i32 2427 }, %struct.ch_freq { i32 5, i32 2432 }, %struct.ch_freq { i32 6, i32 2437 }, %struct.ch_freq { i32 7, i32 2442 }, %struct.ch_freq { i32 8, i32 2447 }, %struct.ch_freq { i32 9, i32 2452 }, %struct.ch_freq { i32 10, i32 2457 }, %struct.ch_freq { i32 11, i32 2462 }, %struct.ch_freq { i32 12, i32 2467 }, %struct.ch_freq { i32 13, i32 2472 }, %struct.ch_freq { i32 14, i32 2484 }, %struct.ch_freq { i32 36, i32 5180 }, %struct.ch_freq { i32 40, i32 5200 }, %struct.ch_freq { i32 44, i32 5220 }, %struct.ch_freq { i32 48, i32 5240 }, %struct.ch_freq { i32 52, i32 5260 }, %struct.ch_freq { i32 56, i32 5280 }, %struct.ch_freq { i32 60, i32 5300 }, %struct.ch_freq { i32 64, i32 5320 }, %struct.ch_freq { i32 149, i32 5745 }, %struct.ch_freq { i32 153, i32 5765 }, %struct.ch_freq { i32 157, i32 5785 }, %struct.ch_freq { i32 161, i32 5805 }, %struct.ch_freq { i32 165, i32 5825 }, %struct.ch_freq { i32 167, i32 5835 }, %struct.ch_freq { i32 169, i32 5845 }, %struct.ch_freq { i32 171, i32 5855 }, %struct.ch_freq { i32 173, i32 5865 }, %struct.ch_freq { i32 100, i32 5500 }, %struct.ch_freq { i32 104, i32 5520 }, %struct.ch_freq { i32 108, i32 5540 }, %struct.ch_freq { i32 112, i32 5560 }, %struct.ch_freq { i32 116, i32 5580 }, %struct.ch_freq { i32 120, i32 5600 }, %struct.ch_freq { i32 124, i32 5620 }, %struct.ch_freq { i32 128, i32 5640 }, %struct.ch_freq { i32 132, i32 5660 }, %struct.ch_freq { i32 136, i32 5680 }, %struct.ch_freq { i32 140, i32 5700 }, %struct.ch_freq { i32 34, i32 5170 }, %struct.ch_freq { i32 38, i32 5190 }, %struct.ch_freq { i32 42, i32 5210 }, %struct.ch_freq { i32 46, i32 5230 }, %struct.ch_freq { i32 184, i32 4920 }, %struct.ch_freq { i32 188, i32 4940 }, %struct.ch_freq { i32 192, i32 4960 }, %struct.ch_freq { i32 196, i32 4980 }, %struct.ch_freq { i32 208, i32 5040 }, %struct.ch_freq { i32 212, i32 5060 }, %struct.ch_freq { i32 216, i32 5080 }], [120 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"ch_freq_map\00", align 1
@___asan_gen_.2 = private constant [43 x i8] c"../drivers/staging/rtl8723bs/core/rtw_rf.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 17, i32 23 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @ch_freq_map], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_freq_map to i32), i32 424, i32 544, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_ch2freq(i32 noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [53 x %struct.ch_freq], ptr @ch_freq_map, i32 0, i32 %indvars.iv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %channel)
  %cmp3 = icmp eq i32 %1, %channel
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #3
  %2 = trunc i32 %indvars.iv to i8
  %frequency = getelementptr [53 x %struct.ch_freq], ptr @ch_freq_map, i32 0, i32 %indvars.iv, i32 1
  %3 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 53, i8 %2)
  %phi.cmp = icmp eq i8 %2, 53
  %phi.sel = select i1 %phi.cmp, i32 2412, i32 %4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 53
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then
  %i.017 = phi i32 [ %phi.sel, %if.then ], [ 2412, %for.inc.for.end_crit_edge ]
  ret i32 %i.017
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @ch_freq_map, !1, !"ch_freq_map", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8723bs/core/rtw_rf.c", i32 17, i32 23}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
