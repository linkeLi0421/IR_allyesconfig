; ModuleID = '/llk/IR_all_yes/arch/arm/mach-spear/hotplug.c_pt.bc'
source_filename = "../arch/arm/mach-spear/hotplug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@spear13xx_cpu_die._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014CPU%u: %u spurious wakeup calls\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spear13xx_cpu_die\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"arch/arm/mach-spear/hotplug.c\00", [34 x i8] zeroinitializer }, align 32
@spear13xx_cpu_die._entry_ptr = internal global ptr @spear13xx_cpu_die._entry, section ".printk_index", align 4
@spear_pen_release = external dso_local global i32, align 4
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [33 x i8] c"../arch/arm/mach-spear/hotplug.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 99, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @spear13xx_cpu_die._entry, ptr @spear13xx_cpu_die._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear13xx_cpu_die._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @spear13xx_cpu_die(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mcr\09p15, 0, $1, c7, c5, 0\0A\09dsb\0A\09mrc\09p15, 0, $0, c1, c0, 1\0A\09bic\09$0, $0, #0x20\0A\09mcr\09p15, 0, $0, c1, c0, 1\0A\09mrc\09p15, 0, $0, c1, c0, 0\0A\09bic\09$0, $0, $2\0A\09mcr\09p15, 0, $0, c1, c0, 0\0A", "=&r,r,Ir,~{cc},~{memory}"(i32 0, i32 4) #2, !srcloc !15
  tail call void asm sideeffect "wfi", "~{memory}"() #2, !srcloc !16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @spear_pen_release to i32))
  %1 = load volatile i32, ptr @spear_pen_release, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cpu)
  %cmp1.i = icmp eq i32 %1, %cpu
  br i1 %cmp1.i, label %spear13xx_do_lowpower.exit.thread, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

spear13xx_do_lowpower.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %2 = tail call i32 asm sideeffect "mrc\09p15, 0, $0, c1, c0, 0\0A\09orr\09$0, $0, $1\0A\09mcr\09p15, 0, $0, c1, c0, 0\0A\09mrc\09p15, 0, $0, c1, c0, 1\0A\09orr\09$0, $0, #0x20\0A\09mcr\09p15, 0, $0, c1, c0, 1\0A", "=&r,Ir,~{cc}"(i32 4) #2, !srcloc !17
  br label %if.end

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %spurious.0 = phi i32 [ %inc.i, %if.end.i.if.end.i_crit_edge ], [ 0, %entry.if.end.i_crit_edge ]
  %inc.i = add i32 %spurious.0, 1
  tail call void asm sideeffect "wfi", "~{memory}"() #2, !srcloc !16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @spear_pen_release to i32))
  %3 = load volatile i32, ptr @spear_pen_release, align 4
  %cmp.i = icmp eq i32 %3, %cpu
  br i1 %cmp.i, label %spear13xx_do_lowpower.exit, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i

spear13xx_do_lowpower.exit:                       ; preds = %if.end.i
  %4 = tail call i32 asm sideeffect "mrc\09p15, 0, $0, c1, c0, 0\0A\09orr\09$0, $0, $1\0A\09mcr\09p15, 0, $0, c1, c0, 0\0A\09mrc\09p15, 0, $0, c1, c0, 1\0A\09orr\09$0, $0, #0x20\0A\09mcr\09p15, 0, $0, c1, c0, 1\0A", "=&r,Ir,~{cc}"(i32 4) #2, !srcloc !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool.not = icmp eq i32 %inc.i, 0
  br i1 %tobool.not, label %spear13xx_do_lowpower.exit.if.end_crit_edge, label %do.end

spear13xx_do_lowpower.exit.if.end_crit_edge:      ; preds = %spear13xx_do_lowpower.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

do.end:                                           ; preds = %spear13xx_do_lowpower.exit
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %cpu, i32 noundef %inc.i) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %spear13xx_do_lowpower.exit.if.end_crit_edge, %spear13xx_do_lowpower.exit.thread
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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }
attributes #5 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-spear/hotplug.c", i32 99, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @spear13xx_cpu_die._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @spear13xx_cpu_die._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 462, i64 495, i64 537, i64 569, i64 593, i64 625, i64 657, i64 678}
!16 = !{i64 2154202650}
!17 = !{i64 846, i64 878, i64 899, i64 931, i64 963, i64 987}
