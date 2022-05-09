; ModuleID = '/llk/IR_all_yes/arch/arm/plat-versatile/hotplug.c_pt.bc'
source_filename = "../arch/arm/plat-versatile/hotplug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@versatile_immitation_cpu_die._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014CPU%u: %u spurious wakeup calls\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"versatile_immitation_cpu_die\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"arch/arm/plat-versatile/hotplug.c\00", [62 x i8] zeroinitializer }, align 32
@versatile_immitation_cpu_die._entry_ptr = internal global ptr @versatile_immitation_cpu_die._entry, section ".printk_index", align 4
@versatile_cpu_release = external dso_local global i32, align 4
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [37 x i8] c"../arch/arm/plat-versatile/hotplug.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 101, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @versatile_immitation_cpu_die._entry, ptr @versatile_immitation_cpu_die._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @versatile_immitation_cpu_die._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @versatile_immitation_cpu_die(i32 noundef %cpu, i32 noundef %actrl_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "mcr\09p15, 0, $1, c7, c5, 0\0A\09mcr\09p15, 0, $1, c7, c10, 4\0A\09mrc\09p15, 0, $0, c1, c0, 1\0A\09bic\09$0, $0, $3\0A\09mcr\09p15, 0, $0, c1, c0, 1\0A\09mrc\09p15, 0, $0, c1, c0, 0\0A\09bic\09$0, $0, $2\0A\09mcr\09p15, 0, $0, c1, c0, 0\0A", "=&r,r,Ir,Ir,~{cc}"(i32 0, i32 4, i32 %actrl_mask) #2, !srcloc !15
  tail call void asm sideeffect "wfi", "~{memory}"() #2, !srcloc !16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @versatile_cpu_release to i32))
  %1 = load volatile i32, ptr @versatile_cpu_release, align 4
  %arrayidx.i = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %cpu
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp1.i = icmp eq i32 %1, %3
  br i1 %cmp1.i, label %versatile_immitation_do_lowpower.exit.thread, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

versatile_immitation_do_lowpower.exit.thread:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %4 = tail call i32 asm sideeffect "mrc\09p15, 0, $0, c1, c0, 0\0A\09orr\09$0, $0, $1\0A\09mcr\09p15, 0, $0, c1, c0, 0\0A\09mrc\09p15, 0, $0, c1, c0, 1\0A\09orr\09$0, $0, $2\0A\09mcr\09p15, 0, $0, c1, c0, 1\0A", "=&r,Ir,Ir,~{cc}"(i32 4, i32 %actrl_mask) #2, !srcloc !17
  br label %if.end

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %spurious.0 = phi i32 [ %inc.i, %if.end.i.if.end.i_crit_edge ], [ 0, %entry.if.end.i_crit_edge ]
  %inc.i = add i32 %spurious.0, 1
  tail call void asm sideeffect "wfi", "~{memory}"() #2, !srcloc !16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @versatile_cpu_release to i32))
  %5 = load volatile i32, ptr @versatile_cpu_release, align 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %cmp.i = icmp eq i32 %5, %7
  br i1 %cmp.i, label %versatile_immitation_do_lowpower.exit, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i

versatile_immitation_do_lowpower.exit:            ; preds = %if.end.i
  %8 = tail call i32 asm sideeffect "mrc\09p15, 0, $0, c1, c0, 0\0A\09orr\09$0, $0, $1\0A\09mcr\09p15, 0, $0, c1, c0, 0\0A\09mrc\09p15, 0, $0, c1, c0, 1\0A\09orr\09$0, $0, $2\0A\09mcr\09p15, 0, $0, c1, c0, 1\0A", "=&r,Ir,Ir,~{cc}"(i32 4, i32 %actrl_mask) #2, !srcloc !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool.not = icmp eq i32 %inc.i, 0
  br i1 %tobool.not, label %versatile_immitation_do_lowpower.exit.if.end_crit_edge, label %do.end

versatile_immitation_do_lowpower.exit.if.end_crit_edge: ; preds = %versatile_immitation_do_lowpower.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

do.end:                                           ; preds = %versatile_immitation_do_lowpower.exit
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %cpu, i32 noundef %inc.i) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %versatile_immitation_do_lowpower.exit.if.end_crit_edge, %versatile_immitation_do_lowpower.exit.thread
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }
attributes #5 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/plat-versatile/hotplug.c", i32 101, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @versatile_immitation_cpu_die._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @versatile_immitation_cpu_die._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 618, i64 650, i64 715, i64 747, i64 768, i64 800, i64 832, i64 853}
!16 = !{i64 2152305377}
!17 = !{i64 1075, i64 1107, i64 1128, i64 1160, i64 1192, i64 1213}
