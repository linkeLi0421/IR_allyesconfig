; ModuleID = '/llk/IR_all_yes/drivers/firmware/google/vpd_decode.c_pt.bc'
source_filename = "../drivers/firmware/google/vpd_decode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 254]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vpd_decode_string(i32 noundef %max_len, ptr noundef %input_buf, ptr nocapture noundef %consumed, ptr nocapture noundef readonly %callback, ptr noundef %callback_arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %consumed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %consumed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %max_len)
  %cmp.not = icmp ult i32 %1, %max_len
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i8, ptr %input_buf, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %if.end.cleanup_crit_edge [
    i8 -2, label %if.end.sw.bb_crit_edge
    i8 1, label %if.end.sw.bb_crit_edge68
  ]

if.end.sw.bb_crit_edge68:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge68
  %inc = add nuw i32 %1, 1
  %5 = ptrtoint ptr %consumed to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inc, ptr %consumed, align 4
  %sub.i = sub i32 %max_len, %inc
  %arrayidx.i = getelementptr i8, ptr %input_buf, i32 %inc
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end3.i.i.do.body.i.i_crit_edge, %sw.bb
  %key_len.0 = phi i32 [ 0, %sw.bb ], [ %or.i.i, %if.end3.i.i.do.body.i.i_crit_edge ]
  %i.0.i.i = phi i32 [ 0, %sw.bb ], [ %inc.i.i, %if.end3.i.i.do.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i.i, i32 %sub.i)
  %exitcond.not.i.i = icmp eq i32 %i.0.i.i, %sub.i
  br i1 %exitcond.not.i.i, label %do.body.i.i.cleanup_crit_edge, label %if.end3.i.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end3.i.i:                                      ; preds = %do.body.i.i
  %arrayidx.i.i = getelementptr i8, ptr %arrayidx.i, i32 %i.0.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i, align 1
  %shl.i.i = shl i32 %key_len.0, 7
  %8 = and i8 %7, 127
  %and7.i.i = zext i8 %8 to i32
  %or.i.i = or i32 %shl.i.i, %and7.i.i
  %inc.i.i = add i32 %i.0.i.i, 1
  %tobool8.not.i.i = icmp sgt i8 %7, -1
  br i1 %tobool8.not.i.i, label %if.end.i, label %if.end3.i.i.do.body.i.i_crit_edge

if.end3.i.i.do.body.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.body.i.i

if.end.i:                                         ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %inc.i.i)
  %cmp3.i = icmp ult i32 %sub.i, %inc.i.i
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %add.i = add i32 %inc.i.i, %inc
  %add.ptr.i = getelementptr i8, ptr %input_buf, i32 %add.i
  %sub6.i = sub i32 %max_len, %add.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6.i, i32 %or.i.i)
  %cmp7.i = icmp ult i32 %sub6.i, %or.i.i
  br i1 %cmp7.i, label %if.end5.i.cleanup_crit_edge, label %if.end4

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end4:                                          ; preds = %if.end5.i
  %add10.i = add i32 %or.i.i, %add.i
  %9 = ptrtoint ptr %consumed to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add10.i, ptr %consumed, align 4
  %sub.i28 = sub i32 %max_len, %add10.i
  %arrayidx.i29 = getelementptr i8, ptr %input_buf, i32 %add10.i
  br label %do.body.i.i32

do.body.i.i32:                                    ; preds = %if.end3.i.i39.do.body.i.i32_crit_edge, %if.end4
  %value_len.0 = phi i32 [ 0, %if.end4 ], [ %or.i.i36, %if.end3.i.i39.do.body.i.i32_crit_edge ]
  %i.0.i.i30 = phi i32 [ 0, %if.end4 ], [ %inc.i.i37, %if.end3.i.i39.do.body.i.i32_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i.i30, i32 %sub.i28)
  %exitcond.not.i.i31 = icmp eq i32 %i.0.i.i30, %sub.i28
  br i1 %exitcond.not.i.i31, label %do.body.i.i32.cleanup_crit_edge, label %if.end3.i.i39

do.body.i.i32.cleanup_crit_edge:                  ; preds = %do.body.i.i32
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end3.i.i39:                                    ; preds = %do.body.i.i32
  %arrayidx.i.i33 = getelementptr i8, ptr %arrayidx.i29, i32 %i.0.i.i30
  %10 = ptrtoint ptr %arrayidx.i.i33 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i33, align 1
  %shl.i.i34 = shl i32 %value_len.0, 7
  %12 = and i8 %11, 127
  %and7.i.i35 = zext i8 %12 to i32
  %or.i.i36 = or i32 %shl.i.i34, %and7.i.i35
  %inc.i.i37 = add i32 %i.0.i.i30, 1
  %tobool8.not.i.i38 = icmp sgt i8 %11, -1
  br i1 %tobool8.not.i.i38, label %if.end.i41, label %if.end3.i.i39.do.body.i.i32_crit_edge

if.end3.i.i39.do.body.i.i32_crit_edge:            ; preds = %if.end3.i.i39
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.body.i.i32

if.end.i41:                                       ; preds = %if.end3.i.i39
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i28, i32 %inc.i.i37)
  %cmp3.i40 = icmp ult i32 %sub.i28, %inc.i.i37
  br i1 %cmp3.i40, label %if.end.i41.cleanup_crit_edge, label %if.end5.i46

if.end.i41.cleanup_crit_edge:                     ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end5.i46:                                      ; preds = %if.end.i41
  %add.i42 = add i32 %inc.i.i37, %add10.i
  %add.ptr.i43 = getelementptr i8, ptr %input_buf, i32 %add.i42
  %sub6.i44 = sub i32 %max_len, %add.i42
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6.i44, i32 %or.i.i36)
  %cmp7.i45 = icmp ult i32 %sub6.i44, %or.i.i36
  br i1 %cmp7.i45, label %if.end5.i46.cleanup_crit_edge, label %if.end9

if.end5.i46.cleanup_crit_edge:                    ; preds = %if.end5.i46
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end9:                                          ; preds = %if.end5.i46
  %add10.i47 = add i32 %or.i.i36, %add.i42
  %13 = ptrtoint ptr %consumed to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add10.i47, ptr %consumed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp10 = icmp eq i8 %3, 1
  br i1 %cmp10, label %if.then12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #3
  %call13 = tail call i32 %callback(ptr noundef %add.ptr.i, i32 noundef %or.i.i, ptr noundef %add.ptr.i43, i32 noundef %or.i.i36, ptr noundef %callback_arg) #1
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end9.cleanup_crit_edge, %if.end5.i46.cleanup_crit_edge, %if.end.i41.cleanup_crit_edge, %do.body.i.i32.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.body.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then12 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ 1, %if.end.i.cleanup_crit_edge ], [ 1, %if.end5.i.cleanup_crit_edge ], [ 1, %if.end.i41.cleanup_crit_edge ], [ 1, %if.end5.i46.cleanup_crit_edge ], [ 1, %do.body.i.i32.cleanup_crit_edge ], [ 1, %do.body.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
