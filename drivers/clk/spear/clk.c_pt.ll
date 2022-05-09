; ModuleID = '/llk/IR_all_yes/drivers/clk/spear/clk.c_pt.bc'
source_filename = "../drivers/clk/spear/clk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clk_round_rate_index(ptr noundef %hw, i32 noundef %drate, i32 noundef %parent_rate, ptr nocapture noundef readonly %calc_rate, i8 noundef zeroext %rtbl_cnt, ptr nocapture noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %rtbl_cnt to i32
  %0 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rtbl_cnt)
  %cmp27.not = icmp eq i8 %rtbl_cnt, 0
  br i1 %cmp27.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %call37 = tail call i32 %calc_rate(ptr noundef %hw, i32 noundef %parent_rate, i32 noundef 0) #1
  call void @__sanitizer_cov_trace_cmp4(i32 %call37, i32 %drate)
  %cmp238 = icmp ugt i32 %call37, %drate
  br i1 %cmp238, label %for.body.preheader.if.then_crit_edge, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  br label %for.inc

for.body.preheader.if.then_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then

for.body:                                         ; preds = %for.inc
  %call = tail call i32 %calc_rate(ptr noundef %hw, i32 noundef %parent_rate, i32 noundef %inc) #1
  %cmp2 = icmp ugt i32 %call, %drate
  br i1 %cmp2, label %for.body.if.then_crit_edge, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.inc

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then

if.then:                                          ; preds = %for.body.if.then_crit_edge, %for.body.preheader.if.then_crit_edge
  %rate.029.lcssa = phi i32 [ 0, %for.body.preheader.if.then_crit_edge ], [ %call39, %for.body.if.then_crit_edge ]
  %call.lcssa = phi i32 [ %call37, %for.body.preheader.if.then_crit_edge ], [ %call, %for.body.if.then_crit_edge ]
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then.for.end_crit_edge, label %if.then4

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #3
  %dec = add i32 %2, -1
  %3 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dec, ptr %index, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %call39 = phi i32 [ %call, %for.body.for.inc_crit_edge ], [ %call37, %for.body.preheader.for.inc_crit_edge ]
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp = icmp slt i32 %inc, %conv
  br i1 %cmp, label %for.body, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then4, %if.then.for.end_crit_edge, %entry.for.end_crit_edge
  %rate.1 = phi i32 [ %rate.029.lcssa, %if.then4 ], [ %call.lcssa, %if.then.for.end_crit_edge ], [ 0, %entry.for.end_crit_edge ], [ %call39, %for.inc.for.end_crit_edge ]
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp7 = icmp eq i32 %7, %conv
  br i1 %cmp7, label %if.then9, label %for.end.if.end11_crit_edge

for.end.if.end11_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end11

if.then9:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #3
  %dec10 = add nsw i32 %conv, -1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dec10, ptr %index, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %for.end.if.end11_crit_edge
  ret i32 %rate.1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
