; ModuleID = '/llk/IR_all_yes/arch/arm/plat-versatile/platsmp.c_pt.bc'
source_filename = "../arch/arm/plat-versatile/platsmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@versatile_cpu_release = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@versatile_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"versatile_lock\00", [17 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@___asan_gen_.1 = private unnamed_addr constant [22 x i8] c"versatile_cpu_release\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 31, i32 14 }
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"versatile_lock\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [37 x i8] c"../arch/arm/plat-versatile/platsmp.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 51, i32 8 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @versatile_cpu_release, ptr @versatile_lock, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @versatile_cpu_release to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @versatile_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @versatile_secondary_init(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  store volatile i32 -1, ptr @versatile_cpu_release, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #2, !srcloc !14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %0(ptr noundef nonnull @versatile_cpu_release, i32 noundef 4) #2
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @versatile_cpu_release to i32)) #2
  %call1.i.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr getelementptr inbounds (i32, ptr @versatile_cpu_release, i32 1) to i32)) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.versatile_write_cpu_release.exit_crit_edge, label %if.then.i.i.i

entry.versatile_write_cpu_release.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %versatile_write_cpu_release.exit

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %1(i32 noundef %call.i.i, i32 noundef %call1.i.i) #2
  br label %versatile_write_cpu_release.exit

versatile_write_cpu_release.exit:                 ; preds = %if.then.i.i.i, %entry.versatile_write_cpu_release.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @versatile_lock) #2
  tail call void @_raw_spin_unlock(ptr noundef nonnull @versatile_lock) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @versatile_boot_secondary(i32 noundef %cpu, ptr nocapture noundef readnone %idle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @versatile_lock) #2
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  store volatile i32 %1, ptr @versatile_cpu_release, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #2, !srcloc !14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %2(ptr noundef nonnull @versatile_cpu_release, i32 noundef 4) #2
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @versatile_cpu_release to i32)) #2
  %call1.i.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr getelementptr inbounds (i32, ptr @versatile_cpu_release, i32 1) to i32)) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %entry.versatile_write_cpu_release.exit_crit_edge, label %if.then.i.i.i

entry.versatile_write_cpu_release.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %versatile_write_cpu_release.exit

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %3(i32 noundef %call.i.i, i32 noundef %call1.i.i) #2
  br label %versatile_write_cpu_release.exit

versatile_write_cpu_release.exit:                 ; preds = %if.then.i.i.i, %entry.versatile_write_cpu_release.exit_crit_edge
  %rem.i = and i32 %cpu, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  tail call void @arch_send_wakeup_ipi_mask(ptr noundef %add.ptr.i) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -100, %4
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub7 = add i32 %add.neg, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7)
  %cmp8 = icmp slt i32 %sub7, 0
  br i1 %cmp8, label %versatile_write_cpu_release.exit.do.end_crit_edge, label %versatile_write_cpu_release.exit.while.end_crit_edge

versatile_write_cpu_release.exit.while.end_crit_edge: ; preds = %versatile_write_cpu_release.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

versatile_write_cpu_release.exit.do.end_crit_edge: ; preds = %versatile_write_cpu_release.exit
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %versatile_write_cpu_release.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #2, !srcloc !15
  %6 = load volatile i32, ptr @versatile_cpu_release, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp4 = icmp eq i32 %6, -1
  br i1 %cmp4, label %do.end.while.end_crit_edge, label %if.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

if.end:                                           ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %8
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.do.end_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %do.end.while.end_crit_edge, %versatile_write_cpu_release.exit.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @versatile_lock) #2
  %9 = load volatile i32, ptr @versatile_cpu_release, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp5.not = icmp eq i32 %9, -1
  %cond = select i1 %cmp5.not, i32 0, i32 -38
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_wakeup_ipi_mask(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @versatile_cpu_release, !1, !"versatile_cpu_release", i1 false, i1 false}
!1 = !{!"../arch/arm/plat-versatile/platsmp.c", i32 31, i32 14}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/plat-versatile/platsmp.c", i32 51, i32 8}
!4 = !{ptr @versatile_lock, !3, !"versatile_lock", i1 false, i1 false}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{i64 2153753509}
!15 = !{i64 2153754829}
