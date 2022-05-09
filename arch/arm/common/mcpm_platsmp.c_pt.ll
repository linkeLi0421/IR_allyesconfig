; ModuleID = '/llk/IR_all_yes/arch/arm/common/mcpm_platsmp.c_pt.bc'
source_filename = "../arch/arm/common/mcpm_platsmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }

@mcpm_smp_ops = internal constant %struct.smp_operations { ptr null, ptr null, ptr @mcpm_secondary_init, ptr @mcpm_boot_secondary, ptr @mcpm_cpu_kill, ptr @mcpm_cpu_die, ptr @mcpm_cpu_can_disable, ptr null }, section ".init.rodata", align 4
@mcpm_boot_secondary.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mcpm_platsmp\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mcpm_boot_secondary\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"arch/arm/common/mcpm_platsmp.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: logical CPU %d is physical CPU %d cluster %d\0A\00", [46 x i8] zeroinitializer }, align 32
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [34 x i8] c"../arch/arm/common/mcpm_platsmp.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 36, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mcpm_smp_set_ops() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @smp_set_ops(ptr noundef nonnull @mcpm_smp_ops) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_set_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcpm_secondary_init(i32 noundef %cpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mcpm_cpu_powered_up() #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcpm_boot_secondary(i32 noundef %cpu, ptr nocapture noundef readnone %idle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %1, 255
  %shr1.i = lshr i32 %1, 8
  %and2.i = and i32 %shr1.i, 255
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcpm_boot_secondary.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcpm_boot_secondary, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !17

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mcpm_boot_secondary.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %cpu, i32 noundef %and.i, i32 noundef %and2.i) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @mcpm_set_entry_vector(i32 noundef %and.i, i32 noundef %and2.i, ptr noundef null) #4
  %call3 = tail call i32 @mcpm_cpu_power_up(i32 noundef %and.i, i32 noundef %and2.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mcpm_set_entry_vector(i32 noundef %and.i, i32 noundef %and2.i, ptr noundef nonnull @secondary_startup) #4
  %rem.i = and i32 %cpu, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i13 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i13, i32 %idx.neg.i
  tail call void @arch_send_wakeup_ipi_mask(ptr noundef %add.ptr.i) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !19
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end.cleanup_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcpm_cpu_kill(i32 noundef %cpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %1, 255
  %shr1.i = lshr i32 %1, 8
  %and2.i = and i32 %shr1.i, 255
  %call = tail call i32 @mcpm_wait_for_cpu_powerdown(i32 noundef %and.i, i32 noundef %and2.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcpm_cpu_die(i32 noundef %cpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #7, !srcloc !20
  %and = and i32 %0, 255
  %shr1 = lshr i32 %0, 8
  %and2 = and i32 %shr1, 255
  tail call void @mcpm_set_entry_vector(i32 noundef %and, i32 noundef %and2, ptr noundef null) #4
  tail call void @mcpm_cpu_power_down() #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mcpm_cpu_can_disable(i32 noundef %cpu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcpm_cpu_powered_up() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcpm_set_entry_vector(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcpm_cpu_power_up(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_wakeup_ipi_mask(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcpm_wait_for_cpu_powerdown(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcpm_cpu_power_down() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @mcpm_smp_ops, !1, !"mcpm_smp_ops", i1 false, i1 false}
!1 = !{!"../arch/arm/common/mcpm_platsmp.c", i32 83, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/common/mcpm_platsmp.c", i32 36, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mcpm_boot_secondary.__UNIQUE_ID_ddebug227, !3, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 2148824901, i64 2148824906, i64 2148824919, i64 2148824963, i64 2148824997, i64 2148825018}
!18 = !{i64 2149122467}
!19 = !{i64 2149122566, i64 2149122593, i64 2149122640, i64 2149122662, i64 2149122690, i64 2149122710}
!20 = !{i64 2153754705}
