; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/omap_hwmod_reset.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/omap_hwmod_reset.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_hwmod_rtc_unlock(ptr noundef %oh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #2, !srcloc !9
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.for.body.i.preheader_crit_edge

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @trace_hardirqs_off() #2
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then, %entry.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.02.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %call.i = tail call i32 @omap_hwmod_read(ptr noundef %oh, i16 noundef zeroext 68) #2
  %and.i48 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %tobool.not.i = icmp eq i32 %and.i48, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.omap_rtc_wait_not_busy.exit_crit_edge

for.body.i.omap_rtc_wait_not_busy.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %omap_rtc_wait_not_busy.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748) #2
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 50
  br i1 %exitcond.not.i, label %if.end.i.omap_rtc_wait_not_busy.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

if.end.i.omap_rtc_wait_not_busy.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %omap_rtc_wait_not_busy.exit

omap_rtc_wait_not_busy.exit:                      ; preds = %if.end.i.omap_rtc_wait_not_busy.exit_crit_edge, %for.body.i.omap_rtc_wait_not_busy.exit_crit_edge
  tail call void @omap_hwmod_write(i32 noundef -2082010349, ptr noundef %oh, i16 noundef zeroext 108) #2
  tail call void @omap_hwmod_write(i32 noundef -1784352288, ptr noundef %oh, i16 noundef zeroext 112) #2
  br i1 %tobool.not, label %if.then21, label %omap_rtc_wait_not_busy.exit.do.body23_crit_edge

omap_rtc_wait_not_busy.exit.do.body23_crit_edge:  ; preds = %omap_rtc_wait_not_busy.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body23

if.then21:                                        ; preds = %omap_rtc_wait_not_busy.exit
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @trace_hardirqs_on() #2
  br label %do.body23

do.body23:                                        ; preds = %if.then21, %omap_rtc_wait_not_busy.exit.do.body23_crit_edge
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #2, !srcloc !10
  %and.i.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.body23.do.end39_crit_edge, !prof !11

do.body23.do.end39_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end39

if.then36:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @warn_bogus_irq_restore() #2
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body23.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #2, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_hwmod_write(i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_hwmod_rtc_lock(ptr noundef %oh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #2, !srcloc !9
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.for.body.i.preheader_crit_edge

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @trace_hardirqs_off() #2
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then, %entry.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.02.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %call.i = tail call i32 @omap_hwmod_read(ptr noundef %oh, i16 noundef zeroext 68) #2
  %and.i48 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %tobool.not.i = icmp eq i32 %and.i48, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.omap_rtc_wait_not_busy.exit_crit_edge

for.body.i.omap_rtc_wait_not_busy.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %omap_rtc_wait_not_busy.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748) #2
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 50
  br i1 %exitcond.not.i, label %if.end.i.omap_rtc_wait_not_busy.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

if.end.i.omap_rtc_wait_not_busy.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %omap_rtc_wait_not_busy.exit

omap_rtc_wait_not_busy.exit:                      ; preds = %if.end.i.omap_rtc_wait_not_busy.exit_crit_edge, %for.body.i.omap_rtc_wait_not_busy.exit_crit_edge
  tail call void @omap_hwmod_write(i32 noundef 0, ptr noundef %oh, i16 noundef zeroext 108) #2
  tail call void @omap_hwmod_write(i32 noundef 0, ptr noundef %oh, i16 noundef zeroext 112) #2
  br i1 %tobool.not, label %if.then21, label %omap_rtc_wait_not_busy.exit.do.body23_crit_edge

omap_rtc_wait_not_busy.exit.do.body23_crit_edge:  ; preds = %omap_rtc_wait_not_busy.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body23

if.then21:                                        ; preds = %omap_rtc_wait_not_busy.exit
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @trace_hardirqs_on() #2
  br label %do.body23

do.body23:                                        ; preds = %if.then21, %omap_rtc_wait_not_busy.exit.do.body23_crit_edge
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #2, !srcloc !10
  %and.i.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.body23.do.end39_crit_edge, !prof !11

do.body23.do.end39_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end39

if.then36:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @warn_bogus_irq_restore() #2
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body23.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #2, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwmod_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

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
!9 = !{i64 603568, i64 603629}
!10 = !{i64 606300}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 606585}
