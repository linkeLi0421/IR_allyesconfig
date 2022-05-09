; ModuleID = '/llk/IR_all_yes/drivers/clk/tegra/cvb.c_pt.bc'
source_filename = "../drivers/clk/tegra/cvb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cvb_table = type { i32, i32, i32, i32, i32, i32, [40 x %struct.cvb_table_freq_entry], %struct.cvb_cpu_dfll_data }
%struct.cvb_table_freq_entry = type { i32, %struct.cvb_coefficients }
%struct.cvb_coefficients = type { i32, i32, i32 }
%struct.cvb_cpu_dfll_data = type { i32, i32, i32, i32 }
%struct.rail_alignment = type { i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_cvb_add_opp_table(ptr noundef %dev, ptr noundef readonly %tables, i32 noundef %count, ptr nocapture noundef readonly %align, i32 noundef %process_id, i32 noundef %speedo_id, i32 noundef %speedo_value, i32 noundef %max_freq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp36.not = icmp eq i32 %count, 0
  br i1 %cmp36.not, label %entry.cleanup14_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup14

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.037 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cvb_table, ptr %tables, i32 %i.037
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp2.not = icmp eq i32 %1, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %speedo_id)
  %cmp4.not = icmp eq i32 %1, %speedo_id
  %or.cond = or i1 %cmp2.not, %cmp4.not
  br i1 %or.cond, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end:                                           ; preds = %for.body
  %process_id5 = getelementptr %struct.cvb_table, ptr %tables, i32 %i.037, i32 1
  %2 = ptrtoint ptr %process_id5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %process_id5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp6.not = icmp eq i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %process_id)
  %cmp9.not = icmp eq i32 %3, %process_id
  %or.cond26 = or i1 %cmp6.not, %cmp9.not
  br i1 %or.cond26, label %if.end11, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end11:                                         ; preds = %if.end
  %min_millivolts.i = getelementptr %struct.cvb_table, ptr %tables, i32 %i.037, i32 2
  %4 = ptrtoint ptr %min_millivolts.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min_millivolts.i, align 4
  %step_uv.i.i = getelementptr inbounds %struct.rail_alignment, ptr %align, i32 0, i32 1
  %6 = ptrtoint ptr %step_uv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %step_uv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %round_voltage.exit.thread.i, label %if.then.i51.i

round_voltage.exit.thread.i:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  %max_millivolts62.i = getelementptr %struct.cvb_table, ptr %tables, i32 %i.037, i32 3
  %8 = ptrtoint ptr %max_millivolts62.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_millivolts62.i, align 4
  br label %round_voltage.exit53.i

if.then.i51.i:                                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  %mul.i.i = mul i32 %5, 1000
  %10 = ptrtoint ptr %align to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %align, align 4
  %12 = tail call i32 @llvm.smax.i32(i32 %mul.i.i, i32 %11) #3
  %sub.i.i = sub i32 %12, %11
  %sub5.i.i = add i32 %7, -1
  %add.i.i = add i32 %sub5.i.i, %sub.i.i
  %13 = srem i32 %add.i.i, %7
  %mul11.i.i = sub i32 %11, %13
  %add13.i.i = add i32 %mul11.i.i, %add.i.i
  %div14.i.i = sdiv i32 %add13.i.i, 1000
  %max_millivolts.i = getelementptr %struct.cvb_table, ptr %tables, i32 %i.037, i32 3
  %14 = ptrtoint ptr %max_millivolts.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_millivolts.i, align 4
  %mul.i45.i = mul i32 %15, 1000
  %16 = tail call i32 @llvm.smax.i32(i32 %mul.i45.i, i32 %11) #3
  %sub.i46.i = sub i32 %16, %11
  %17 = srem i32 %sub.i46.i, %7
  %mul11.i48.i = sub i32 %11, %17
  %add13.i49.i = add i32 %mul11.i48.i, %sub.i46.i
  %div14.i50.i = sdiv i32 %add13.i49.i, 1000
  br label %round_voltage.exit53.i

round_voltage.exit53.i:                           ; preds = %if.then.i51.i, %round_voltage.exit.thread.i
  %retval.0.i63.i = phi i32 [ %div14.i.i, %if.then.i51.i ], [ %5, %round_voltage.exit.thread.i ]
  %retval.0.i52.i = phi i32 [ %div14.i50.i, %if.then.i51.i ], [ %9, %round_voltage.exit.thread.i ]
  %speedo_scale.i = getelementptr %struct.cvb_table, ptr %tables, i32 %i.037, i32 4
  %voltage_scale.i = getelementptr %struct.cvb_table, ptr %tables, i32 %i.037, i32 5
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end.i
  %inc.i = add nuw nsw i32 %i.071.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 40
  br i1 %exitcond.not.i, label %for.cond.i.cleanup14_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.cond.i.cleanup14_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup14

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %round_voltage.exit53.i
  %i.071.i = phi i32 [ 0, %round_voltage.exit53.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cvb_table, ptr %tables, i32 %i.037, i32 6, i32 %i.071.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %20 = add i32 %19, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %max_freq)
  %.not.i = icmp ult i32 %20, %max_freq
  br i1 %.not.i, label %if.end.i, label %for.body.i.cleanup14_crit_edge

for.body.i.cleanup14_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup14

if.end.i:                                         ; preds = %for.body.i
  %21 = ptrtoint ptr %speedo_scale.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %speedo_scale.i, align 4
  %coefficients.i = getelementptr %struct.cvb_table, ptr %tables, i32 %i.037, i32 6, i32 %i.071.i, i32 1
  %c2.i.i = getelementptr %struct.cvb_table, ptr %tables, i32 %i.037, i32 6, i32 %i.071.i, i32 1, i32 2
  %23 = ptrtoint ptr %c2.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %c2.i.i, align 4
  %mul.i54.i = mul i32 %24, %speedo_value
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul.i54.i)
  %cmp.i.i = icmp slt i32 %mul.i54.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp1.i.i = icmp sgt i32 %22, 0
  %cmp3.i.i = xor i1 %cmp1.i.i, %cmp.i.i
  %div.i.i = sdiv i32 %22, 2
  %div6.neg.i.i = sdiv i32 %22, -2
  %add.pn.v.i.i = select i1 %cmp3.i.i, i32 %div.i.i, i32 %div6.neg.i.i
  %add.pn.i.i = add i32 %add.pn.v.i.i, %mul.i54.i
  %cond.i.i = sdiv i32 %add.pn.i.i, %22
  %c1.i.i = getelementptr %struct.cvb_table, ptr %tables, i32 %i.037, i32 6, i32 %i.071.i, i32 1, i32 1
  %25 = ptrtoint ptr %c1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %c1.i.i, align 4
  %add9.i.i = add i32 %26, %cond.i.i
  %mul10.i.i = mul i32 %add9.i.i, %speedo_value
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul10.i.i)
  %cmp13.i.i = icmp slt i32 %mul10.i.i, 1
  %cmp17.i.i = xor i1 %cmp1.i.i, %cmp13.i.i
  %add21.pn.v.i.i = select i1 %cmp17.i.i, i32 %div.i.i, i32 %div6.neg.i.i
  %add21.pn.i.i = add i32 %add21.pn.v.i.i, %mul10.i.i
  %cond28.i.i = sdiv i32 %add21.pn.i.i, %22
  %27 = ptrtoint ptr %coefficients.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %coefficients.i, align 4
  %add29.i.i = add i32 %28, %cond28.i.i
  %29 = ptrtoint ptr %voltage_scale.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %voltage_scale.i, align 4
  %31 = ptrtoint ptr %step_uv.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %step_uv.i.i, align 4
  %33 = ptrtoint ptr %align to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %align, align 4
  %mul1.i.i = mul i32 %34, %30
  %mul2.i.i = mul i32 %add29.i.i, 1000
  %35 = tail call i32 @llvm.smax.i32(i32 %mul2.i.i, i32 %mul1.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i56.i = icmp eq i32 %32, 0
  %..i.i = select i1 %tobool.not.i56.i, i32 1000, i32 %32
  %mul.i57.i = mul i32 %..i.i, %30
  %sub.i58.i = xor i32 %mul1.i.i, -1
  %add.i59.i = add i32 %35, %sub.i58.i
  %sub7.i.i = add i32 %add.i59.i, %mul.i57.i
  %div.i60.i = sdiv i32 %sub7.i.i, %mul.i57.i
  %mul9.i.i = mul i32 %div.i60.i, %32
  %add11.i.i = add i32 %mul9.i.i, %34
  %div12.i.i = sdiv i32 %add11.i.i, 1000
  %36 = tail call i32 @llvm.smax.i32(i32 %div12.i.i, i32 %retval.0.i63.i) #3
  %37 = tail call i32 @llvm.smin.i32(i32 %36, i32 %retval.0.i52.i) #3
  %mul.i = mul i32 %37, 1000
  %call15.i = tail call i32 @dev_pm_opp_add(ptr noundef %dev, i32 noundef %19, i32 noundef %mul.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %for.cond.i, label %cond.true

cond.true:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %38 = inttoptr i32 %call15.i to ptr
  br label %cleanup14

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.cleanup14_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.cleanup14_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup14

cleanup14:                                        ; preds = %for.inc.cleanup14_crit_edge, %cond.true, %for.body.i.cleanup14_crit_edge, %for.cond.i.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %retval.2 = phi ptr [ %38, %cond.true ], [ inttoptr (i32 -22 to ptr), %entry.cleanup14_crit_edge ], [ %arrayidx, %for.body.i.cleanup14_crit_edge ], [ %arrayidx, %for.cond.i.cleanup14_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.inc.cleanup14_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_cvb_remove_opp_table(ptr noundef %dev, ptr nocapture noundef readonly %table, i32 noundef %max_freq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.011 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cvb_table, ptr %table, i32 0, i32 6, i32 %i.011
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = add i32 %1, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %max_freq)
  %.not = icmp ult i32 %2, %max_freq
  br i1 %.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.inc:                                          ; preds = %for.body
  tail call void @dev_pm_opp_remove(ptr noundef %dev, i32 noundef %1) #3
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, 40
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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
