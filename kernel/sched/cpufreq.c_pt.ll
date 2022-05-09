; ModuleID = '/llk/IR_all_yes/kernel/sched/cpufreq.c_pt.bc'
source_filename = "../kernel/sched/cpufreq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cpufreq_add_update_util_hook\22, \22a\22\09"
module asm "\09.weak\09__crc_cpufreq_add_update_util_hook\09\09\09\09"
module asm "\09.long\09__crc_cpufreq_add_update_util_hook\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_add_update_util_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_add_update_util_hook\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_add_update_util_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpufreq_remove_update_util_hook\22, \22a\22\09"
module asm "\09.weak\09__crc_cpufreq_remove_update_util_hook\09\09\09\09"
module asm "\09.long\09__crc_cpufreq_remove_update_util_hook\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_remove_update_util_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_remove_update_util_hook\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_remove_update_util_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cpufreq_policy = type { ptr, ptr, ptr, i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kernel/sched/cpufreq.c\00", [41 x i8] zeroinitializer }, align 32
@cpufreq_update_util_data = weak dso_local global ptr null, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_cpufreq_add_update_util_hook = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_add_update_util_hook = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_add_update_util_hook = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_add_update_util_hook to i32), ptr @__kstrtab_cpufreq_add_update_util_hook, ptr @__kstrtabns_cpufreq_add_update_util_hook }, section "___ksymtab_gpl+cpufreq_add_update_util_hook", align 4
@__kstrtab_cpufreq_remove_update_util_hook = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_remove_update_util_hook = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_remove_update_util_hook = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_remove_update_util_hook to i32), ptr @__kstrtab_cpufreq_remove_update_util_hook, ptr @__kstrtabns_cpufreq_remove_update_util_hook }, section "___ksymtab_gpl+cpufreq_remove_update_util_hook", align 4
@cpufreq_this_cpu_can_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__pcpu_scope_cpufreq_update_util_data = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_cpufreq_update_util_data = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 36, i32 6 }
@___asan_gen_.7 = private constant [26 x i8] c"../kernel/sched/cpufreq.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 76, i32 4 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 108, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_cpufreq_add_update_util_hook, ptr @__ksymtab_cpufreq_remove_update_util_hook, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpufreq_add_update_util_hook(i32 noundef %cpu, ptr noundef %data, ptr noundef %func) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  %tobool1.not = icmp eq ptr %func, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end24.critedge, !prof !26

do.end:                                           ; preds = %entry
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 36, i32 noundef 9, ptr noundef null) #4
  br label %do.end117

if.end24.critedge:                                ; preds = %entry
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cpufreq_update_util_data to i32)
  %2 = inttoptr i32 %add to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool31.not = icmp eq ptr %4, null
  br i1 %tobool31.not, label %if.end63.critedge, label %do.end47, !prof !27

do.end47:                                         ; preds = %if.end24.critedge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 39, i32 noundef 9, ptr noundef null) #4
  br label %do.end117

if.end63.critedge:                                ; preds = %if.end24.critedge
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %func, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !28
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add106 = add i32 %7, ptrtoint (ptr @cpufreq_update_util_data to i32)
  %8 = inttoptr i32 %add106 to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %data, ptr %8, align 4
  br label %do.end117

do.end117:                                        ; preds = %if.end63.critedge, %do.end47, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpufreq_remove_update_util_hook(i32 noundef %cpu) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cpufreq_update_util_data to i32)
  %2 = inttoptr i32 %add to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cpufreq_this_cpu_can_update(ptr nocapture noundef readonly %policy) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !16) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %4 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %policy, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i = icmp ugt i32 %6, %3
  br i1 %cmp.not.i.i.i, label %cpumask_test_cpu.exit, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %cpumask_test_cpu.exit, label %if.then.i.i.i, !prof !27

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i, %entry
  %div3.i.i = lshr i32 %3, 5
  %arrayidx.i.i = getelementptr i32, ptr %5, i32 %div3.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %3, 31
  %9 = shl nuw i32 1, %and.i.i
  %10 = and i32 %8, %9
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %cpumask_test_cpu.exit
  %dvfs_possible_from_any_cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 31
  %11 = ptrtoint ptr %dvfs_possible_from_any_cpu to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dvfs_possible_from_any_cpu, align 4, !range !29
  %tobool2.not = icmp eq i8 %12, 0
  br i1 %tobool2.not, label %lor.end, label %land.rhs

land.rhs:                                         ; preds = %lor.rhs
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add = add i32 %16, ptrtoint (ptr @cpufreq_update_util_data to i32)
  %17 = inttoptr i32 %add to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %17, align 4
  %call11 = tail call i32 @rcu_read_lock_sched_held() #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true, label %do.end18

land.lhs.true:                                    ; preds = %land.rhs
  %call13 = tail call i32 @debug_lockdep_rcu_enabled() #4
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.end18, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %land.lhs.true
  %.b22 = load i1, ptr @cpufreq_this_cpu_can_update.__warned, align 1
  br i1 %.b22, label %do.end18, label %if.then

if.then:                                          ; preds = %land.lhs.true15
  store i1 true, ptr @cpufreq_this_cpu_can_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 76, ptr noundef nonnull @.str.1) #4
  br label %do.end18

do.end18:                                         ; preds = %if.then, %land.lhs.true15, %land.lhs.true, %land.rhs
  %tobool20 = icmp ne ptr %19, null
  br label %lor.end

lor.end:                                          ; preds = %do.end18, %lor.rhs, %cpumask_test_cpu.exit
  %20 = phi i1 [ true, %cpumask_test_cpu.exit ], [ false, %lor.rhs ], [ %tobool20, %do.end18 ]
  ret i1 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !15}
!llvm.named.register.sp = !{!16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/sched/cpufreq.c", i32 36, i32 6}
!2 = !{ptr @__ksymtab_cpufreq_add_update_util_hook, !3, !"__ksymtab_cpufreq_add_update_util_hook", i1 false, i1 false}
!3 = !{!"../kernel/sched/cpufreq.c", i32 45, i32 1}
!4 = !{ptr @__ksymtab_cpufreq_remove_update_util_hook, !5, !"__ksymtab_cpufreq_remove_update_util_hook", i1 false, i1 false}
!5 = !{!"../kernel/sched/cpufreq.c", i32 61, i32 1}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../kernel/sched/cpufreq.c", i32 76, i32 4}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__pcpu_scope_cpufreq_update_util_data, !10, !"__pcpu_scope_cpufreq_update_util_data", i1 false, i1 false}
!10 = !{!"../kernel/sched/cpufreq.c", i32 12, i32 1}
!11 = !{ptr @__pcpu_unique_cpufreq_update_util_data, !10, !"__pcpu_unique_cpufreq_update_util_data", i1 false, i1 false}
!12 = !{ptr @cpufreq_update_util_data, !10, !"cpufreq_update_util_data", i1 false, i1 false}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{!"sp"}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2158475280}
!29 = !{i8 0, i8 2}
