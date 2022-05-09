; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/sdrc2xxx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/sdrc2xxx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.memory_timings = type { i32, i32, i32, i32, i32 }

@curr_perf_level = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@mem_timings = internal global { %struct.memory_timings, [44 x i8] } zeroinitializer, align 32
@omap2_sdrc_base = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"curr_perf_level\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 40, i32 12 }
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"mem_timings\00", align 1
@___asan_gen_.5 = private constant [34 x i8] c"../arch/arm/mach-omap2/sdrc2xxx.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 39, i32 30 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @curr_perf_level, ptr @mem_timings], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @curr_perf_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_timings to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2xxx_sdrc_dll_is_unlocked() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap2_sdrc_base to i32))
  %0 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 96
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !13
  %2 = lshr i32 %1, 26
  %.lobit = and i32 %2, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2xxx_sdrc_reprogram(i32 noundef %level, i32 noundef %force) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @curr_perf_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %level)
  %cmp = icmp eq i32 %0, %level
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force)
  %tobool.not = icmp eq i32 %force, 0
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %level, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.if.end8_crit_edge
    i32 2, label %if.then4
  ]

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %dll_ctrl.0.in = phi ptr [ getelementptr inbounds (%struct.memory_timings, ptr @mem_timings, i32 0, i32 3), %if.then4 ], [ getelementptr inbounds (%struct.memory_timings, ptr @mem_timings, i32 0, i32 2), %if.end.if.end8_crit_edge ]
  %2 = ptrtoint ptr %dll_ctrl.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %dll_ctrl.0 = load i32, ptr %dll_ctrl.0.in, align 4
  %3 = load i32, ptr @mem_timings, align 4
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #3, !srcloc !14
  %and.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not = icmp eq i32 %and.i, 0
  br i1 %tobool20.not, label %if.then21, label %if.end8.do.end24_crit_edge

if.end8.do.end24_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end24

if.then21:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @trace_hardirqs_off() #3
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %if.end8.do.end24_crit_edge
  %call.i = tail call i32 @omap_rev() #3
  %shr.mask.i = and i32 %call.i, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 606076928, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 606076928
  br i1 %cmp.i.not, label %if.then27, label %if.else28

if.then27:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -100630384 to ptr), i32 -65536) #3, !srcloc !15
  br label %if.end29

if.else28:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -83861360 to ptr), i32 -65536) #3, !srcloc !15
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.then27
  tail call void @omap2_sram_reprogram_sdrc(i32 noundef %level, i32 noundef %dll_ctrl.0, i32 noundef %3) #3
  store i32 %level, ptr @curr_perf_level, align 4
  br i1 %tobool20.not, label %if.then39, label %if.end29.do.body41_crit_edge

if.end29.do.body41_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body41

if.then39:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @trace_hardirqs_on() #3
  br label %do.body41

do.body41:                                        ; preds = %if.then39, %if.end29.do.body41_crit_edge
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #3, !srcloc !16
  %and.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool49.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool49.not, label %if.then53, label %do.body41.do.end56_crit_edge, !prof !17

do.body41.do.end56_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end56

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @warn_bogus_irq_restore() #3
  br label %do.end56

do.end56:                                         ; preds = %if.then53, %do.body41.do.end56_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #3, !srcloc !18
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_sram_reprogram_sdrc(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2xxx_sdrc_init_params(i32 noundef %force_lock_to_unlock_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap2_sdrc_base to i32))
  %0 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 132
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !13
  %2 = and i32 %1, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %2)
  %cmp = icmp ne i32 %2, 16777216
  %lnot.ext = zext i1 %cmp to i32
  store i32 %lnot.ext, ptr @mem_timings, align 4
  %call.i = tail call i32 @omap_rev() #3
  %shr.mask.i = and i32 %call.i, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 606208000, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 606208000
  %. = zext i1 %cmp.i.not to i32
  store i32 %., ptr getelementptr inbounds (%struct.memory_timings, ptr @mem_timings, i32 0, i32 4), align 4
  %3 = load i32, ptr @mem_timings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp2.not = icmp eq i32 %3, 1
  br i1 %cmp2.not, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %entry
  %4 = load i32, ptr getelementptr inbounds (%struct.memory_timings, ptr @mem_timings, i32 0, i32 3), align 4
  %and5 = lshr i32 %4, 2
  %and5.lobit = and i32 %and5, 1
  %5 = xor i32 %and5.lobit, 1
  store i32 %5, ptr getelementptr inbounds (%struct.memory_timings, ptr @mem_timings, i32 0, i32 1), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap2_sdrc_base to i32))
  %6 = load ptr, ptr @omap2_sdrc_base, align 4
  br i1 %cmp.i.not, label %if.else15, label %if.then11

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i36 = getelementptr i8, ptr %6, i32 96
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #3, !srcloc !13
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap2_sdrc_base to i32))
  %9 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr.i37 = getelementptr i8, ptr %9, i32 100
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #3, !srcloc !13
  br label %if.end19

if.else15:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i38 = getelementptr i8, ptr %6, i32 104
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #3, !srcloc !13
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap2_sdrc_base to i32))
  %13 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr.i39 = getelementptr i8, ptr %13, i32 108
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #3, !srcloc !13
  br label %if.end19

if.end19:                                         ; preds = %if.else15, %if.then11
  %.sink = phi i32 [ %14, %if.else15 ], [ %10, %if.then11 ]
  %fast_dll.0 = phi i32 [ %12, %if.else15 ], [ %8, %if.then11 ]
  %15 = lshr i32 %.sink, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force_lock_to_unlock_mode)
  %tobool20.not = icmp eq i32 %force_lock_to_unlock_mode, 0
  %dll_cnt.0 = and i32 %15, 64512
  %and22 = and i32 %fast_dll.0, -65281
  %or = or i32 %and22, %dll_cnt.0
  %fast_dll.1 = select i1 %tobool20.not, i32 %fast_dll.0, i32 %or
  %or24 = or i32 %fast_dll.1, 768
  store i32 %or24, ptr getelementptr inbounds (%struct.memory_timings, ptr @mem_timings, i32 0, i32 3), align 4
  %16 = load i32, ptr getelementptr inbounds (%struct.memory_timings, ptr @mem_timings, i32 0, i32 4), align 4
  tail call void @omap2_sram_ddr_init(ptr noundef getelementptr inbounds (%struct.memory_timings, ptr @mem_timings, i32 0, i32 2), i32 noundef %or24, i32 noundef %16, i32 noundef %force_lock_to_unlock_mode) #3
  %17 = load i32, ptr getelementptr inbounds (%struct.memory_timings, ptr @mem_timings, i32 0, i32 2), align 4
  %and25 = and i32 %17, 64512
  %18 = load i32, ptr getelementptr inbounds (%struct.memory_timings, ptr @mem_timings, i32 0, i32 3), align 4
  %and26 = and i32 %18, 9
  %or28 = or i32 %and25, %and26
  %or29 = or i32 %or28, 774
  store i32 %or29, ptr getelementptr inbounds (%struct.memory_timings, ptr @mem_timings, i32 0, i32 2), align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_sram_ddr_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @mem_timings, !1, !"mem_timings", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/sdrc2xxx.c", i32 39, i32 30}
!2 = !{ptr @curr_perf_level, !3, !"curr_perf_level", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/sdrc2xxx.c", i32 40, i32 12}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 4812661}
!14 = !{i64 746005, i64 746066}
!15 = !{i64 4812243}
!16 = !{i64 748737}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 749022}
