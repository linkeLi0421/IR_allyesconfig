; ModuleID = '/llk/IR_all_yes/drivers/staging/r8188eu/hal/HalPwrSeqCmd.c_pt.bc'
source_filename = "../drivers/staging/r8188eu/hal/HalPwrSeqCmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wl_pwr_cfg = type { i16, i8, i8, i8 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@GlobalDebugLevel = external dso_local local_unnamed_addr global i32, align 4
@HalPwrSeqCmdParsing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016R8188EU: Fail to polling Offset[%#x]\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HalPwrSeqCmdParsing\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/staging/r8188eu/hal/HalPwrSeqCmd.c\00", [53 x i8] zeroinitializer }, align 32
@HalPwrSeqCmdParsing._entry_ptr = internal global ptr @HalPwrSeqCmdParsing._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [46 x i8] c"../drivers/staging/r8188eu/hal/HalPwrSeqCmd.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 67, i32 6 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @HalPwrSeqCmdParsing._entry, ptr @HalPwrSeqCmdParsing._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HalPwrSeqCmdParsing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @HalPwrSeqCmdParsing(ptr noundef %padapter, ptr nocapture noundef readonly %pwrseqcmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %sw.epilog, %entry
  %aryidx.0 = phi i32 [ 0, %entry ], [ %inc88, %sw.epilog ]
  %poll_count.0 = phi i32 [ 0, %entry ], [ %poll_count.2, %sw.epilog ]
  %arrayidx = getelementptr %struct.wl_pwr_cfg, ptr %pwrseqcmd, i32 %aryidx.0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %pwrcfgcmd.sroa.0.0.copyload = load i16, ptr %arrayidx, align 2
  %pwrcfgcmd.sroa.14.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 2
  %1 = ptrtoint ptr %pwrcfgcmd.sroa.14.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %pwrcfgcmd.sroa.14.0.copyload = load i8, ptr %pwrcfgcmd.sroa.14.0.arrayidx.sroa_idx, align 2
  %pwrcfgcmd.sroa.15.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 3
  %2 = ptrtoint ptr %pwrcfgcmd.sroa.15.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %pwrcfgcmd.sroa.15.0.copyload = load i8, ptr %pwrcfgcmd.sroa.15.0.arrayidx.sroa_idx, align 1
  %pwrcfgcmd.sroa.19.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %3 = ptrtoint ptr %pwrcfgcmd.sroa.19.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %pwrcfgcmd.sroa.19.0.copyload = load i8, ptr %pwrcfgcmd.sroa.19.0.arrayidx.sroa_idx, align 2
  %bf.lshr = lshr i8 %pwrcfgcmd.sroa.14.0.copyload, 4
  %conv = zext i8 %bf.lshr to i32
  %4 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv, label %do.body.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
    i32 3, label %sw.bb46
    i32 4, label %do.body.cleanup_crit_edge
  ]

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %conv2 = zext i16 %pwrcfgcmd.sroa.0.0.copyload to i32
  %call = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef %conv2) #4
  %neg = xor i8 %pwrcfgcmd.sroa.15.0.copyload, -1
  %and = and i8 %call, %neg
  %and10137 = and i8 %pwrcfgcmd.sroa.19.0.copyload, %pwrcfgcmd.sroa.15.0.copyload
  %or138 = or i8 %and, %and10137
  %call13 = tail call i32 @rtw_write8(ptr noundef %padapter, i32 noundef %conv2, i8 noundef zeroext %or138) #4
  br label %sw.epilog

sw.bb14:                                          ; preds = %do.body
  %conv16 = zext i16 %pwrcfgcmd.sroa.0.0.copyload to i32
  %call18149 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef %conv16) #4
  %5 = xor i8 %call18149, %pwrcfgcmd.sroa.19.0.copyload
  %6 = and i8 %5, %pwrcfgcmd.sroa.15.0.copyload
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp150 = icmp eq i8 %6, 0
  br i1 %cmp150, label %sw.bb14.if.end.thread_crit_edge, label %if.end.preheader

sw.bb14.if.end.thread_crit_edge:                  ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.thread

if.end.preheader:                                 ; preds = %sw.bb14
  %umax = call i32 @llvm.umax.i32(i32 %poll_count.0, i32 5001)
  br label %if.end

if.end:                                           ; preds = %do.cond44.if.end_crit_edge, %if.end.preheader
  %poll_count.1151 = phi i32 [ %inc, %do.cond44.if.end_crit_edge ], [ %poll_count.0, %if.end.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %poll_count.1151, i32 %umax)
  %exitcond = icmp eq i32 %poll_count.1151, %umax
  br i1 %exitcond, label %if.end.do.body34_crit_edge, label %do.cond44

if.end.do.body34_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body34

if.end.thread:                                    ; preds = %do.cond44.if.end.thread_crit_edge, %sw.bb14.if.end.thread_crit_edge
  %poll_count.1.lcssa = phi i32 [ %poll_count.0, %sw.bb14.if.end.thread_crit_edge ], [ %inc, %do.cond44.if.end.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %poll_count.1.lcssa)
  %cmp31140 = icmp ugt i32 %poll_count.1.lcssa, 5000
  br i1 %cmp31140, label %if.end.thread.do.body34_crit_edge, label %do.cond44.thread

if.end.thread.do.body34_crit_edge:                ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body34

do.cond44.thread:                                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #6
  %inc143 = add nuw nsw i32 %poll_count.1.lcssa, 1
  br label %sw.epilog

do.body34:                                        ; preds = %if.end.thread.do.body34_crit_edge, %if.end.do.body34_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @GlobalDebugLevel to i32))
  %8 = load i32, ptr @GlobalDebugLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp35 = icmp ugt i32 %8, 4
  br i1 %cmp35, label %do.end, label %do.body34.cleanup_crit_edge

do.body34.cleanup_crit_edge:                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #6
  %conv16.le = zext i16 %pwrcfgcmd.sroa.0.0.copyload to i32
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv16.le) #7
  br label %cleanup

do.cond44:                                        ; preds = %if.end
  %inc = add i32 %poll_count.1151, 1
  %call18 = tail call zeroext i8 @rtw_read8(ptr noundef %padapter, i32 noundef %conv16) #4
  %9 = xor i8 %call18, %pwrcfgcmd.sroa.19.0.copyload
  %10 = and i8 %9, %pwrcfgcmd.sroa.15.0.copyload
  %cmp = icmp eq i8 %10, 0
  br i1 %cmp, label %do.cond44.if.end.thread_crit_edge, label %do.cond44.if.end_crit_edge

do.cond44.if.end_crit_edge:                       ; preds = %do.cond44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.cond44.if.end.thread_crit_edge:                ; preds = %do.cond44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.thread

sw.bb46:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pwrcfgcmd.sroa.19.0.copyload)
  %cmp49 = icmp eq i8 %pwrcfgcmd.sroa.19.0.copyload, 0
  br i1 %cmp49, label %cond.false60, label %cond.false81

cond.false60:                                     ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv62 = zext i16 %pwrcfgcmd.sroa.0.0.copyload to i32
  tail call void %11(i32 noundef %conv62) #4
  br label %sw.epilog

cond.false81:                                     ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #6
  %conv66 = zext i16 %pwrcfgcmd.sroa.0.0.copyload to i32
  %mul67 = mul nuw nsw i32 %conv66, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %12(i32 noundef %mul67) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.false81, %cond.false60, %do.cond44.thread, %sw.bb, %do.body.sw.epilog_crit_edge
  %poll_count.2 = phi i32 [ %poll_count.0, %do.body.sw.epilog_crit_edge ], [ %poll_count.0, %cond.false60 ], [ %poll_count.0, %cond.false81 ], [ %poll_count.0, %sw.bb ], [ %inc143, %do.cond44.thread ]
  %inc88 = add i32 %aryidx.0, 1
  br label %do.body

cleanup:                                          ; preds = %do.end, %do.body34.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %do.end ], [ 0, %do.body34.cleanup_crit_edge ], [ 1, %do.body.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_read8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/r8188eu/hal/HalPwrSeqCmd.c", i32 67, i32 6}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @HalPwrSeqCmdParsing._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @HalPwrSeqCmdParsing._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
