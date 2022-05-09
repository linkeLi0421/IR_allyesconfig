; ModuleID = '/llk/IR_all_yes/kernel/cpu_pm.c_pt.bc'
source_filename = "../kernel/cpu_pm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cpu_pm_register_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_cpu_pm_register_notifier\09\09\09\09"
module asm "\09.long\09__crc_cpu_pm_register_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_pm_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_pm_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_pm_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpu_pm_unregister_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_cpu_pm_unregister_notifier\09\09\09\09"
module asm "\09.long\09__crc_cpu_pm_unregister_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_pm_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_pm_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_pm_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpu_pm_enter\22, \22a\22\09"
module asm "\09.weak\09__crc_cpu_pm_enter\09\09\09\09"
module asm "\09.long\09__crc_cpu_pm_enter\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_pm_enter:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_pm_enter\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_pm_enter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpu_pm_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_cpu_pm_exit\09\09\09\09"
module asm "\09.long\09__crc_cpu_pm_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_pm_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_pm_exit\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_pm_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpu_cluster_pm_enter\22, \22a\22\09"
module asm "\09.weak\09__crc_cpu_cluster_pm_enter\09\09\09\09"
module asm "\09.long\09__crc_cpu_cluster_pm_enter\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_cluster_pm_enter:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_cluster_pm_enter\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_cluster_pm_enter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpu_cluster_pm_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_cpu_cluster_pm_exit\09\09\09\09"
module asm "\09.long\09__crc_cpu_cluster_pm_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_cluster_pm_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_cluster_pm_exit\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_cluster_pm_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.anon = type { %struct.raw_notifier_head, %struct.raw_spinlock }
%struct.raw_notifier_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@cpu_pm_notifier = internal global { %struct.anon, [48 x i8] } { %struct.anon { %struct.raw_notifier_head zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } } }, [48 x i8] zeroinitializer }, align 32
@__kstrtab_cpu_pm_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_pm_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_pm_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_pm_register_notifier to i32), ptr @__kstrtab_cpu_pm_register_notifier, ptr @__kstrtabns_cpu_pm_register_notifier }, section "___ksymtab_gpl+cpu_pm_register_notifier", align 4
@__kstrtab_cpu_pm_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_pm_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_pm_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_pm_unregister_notifier to i32), ptr @__kstrtab_cpu_pm_unregister_notifier, ptr @__kstrtabns_cpu_pm_unregister_notifier }, section "___ksymtab_gpl+cpu_pm_unregister_notifier", align 4
@__kstrtab_cpu_pm_enter = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_pm_enter = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_pm_enter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_pm_enter to i32), ptr @__kstrtab_cpu_pm_enter, ptr @__kstrtabns_cpu_pm_enter }, section "___ksymtab_gpl+cpu_pm_enter", align 4
@__kstrtab_cpu_pm_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_pm_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_pm_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_pm_exit to i32), ptr @__kstrtab_cpu_pm_exit, ptr @__kstrtabns_cpu_pm_exit }, section "___ksymtab_gpl+cpu_pm_exit", align 4
@__kstrtab_cpu_cluster_pm_enter = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_cluster_pm_enter = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_cluster_pm_enter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_cluster_pm_enter to i32), ptr @__kstrtab_cpu_cluster_pm_enter, ptr @__kstrtabns_cpu_cluster_pm_enter }, section "___ksymtab_gpl+cpu_cluster_pm_enter", align 4
@__kstrtab_cpu_cluster_pm_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_cluster_pm_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_cluster_pm_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_cluster_pm_exit to i32), ptr @__kstrtab_cpu_cluster_pm_exit, ptr @__kstrtabns_cpu_cluster_pm_exit }, section "___ksymtab_gpl+cpu_cluster_pm_exit", align 4
@__initcall__kmod_cpu_pm__106_213_cpu_pm_init1 = internal global ptr @cpu_pm_init, section ".initcall1.init", align 4
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cpu_pm_notifier.lock\00", [43 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@cpu_pm_syscore_ops = internal global { %struct.syscore_ops, [44 x i8] } { %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @cpu_pm_suspend, ptr @cpu_pm_resume, ptr null }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"cpu_pm_notifier\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 24, i32 3 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 26, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 695, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 723, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [19 x i8] c"cpu_pm_syscore_ops\00", align 1
@___asan_gen_.20 = private constant [19 x i8] c"../kernel/cpu_pm.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 203, i32 27 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__initcall__kmod_cpu_pm__106_213_cpu_pm_init1, ptr @__ksymtab_cpu_cluster_pm_enter, ptr @__ksymtab_cpu_cluster_pm_exit, ptr @__ksymtab_cpu_pm_enter, ptr @__ksymtab_cpu_pm_exit, ptr @__ksymtab_cpu_pm_register_notifier, ptr @__ksymtab_cpu_pm_unregister_notifier, ptr @cpu_pm_notifier, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @cpu_pm_syscore_ops], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_pm_notifier to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_pm_syscore_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpu_pm_register_notifier(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.anon, ptr @cpu_pm_notifier, i32 0, i32 1)) #4
  %call1 = tail call i32 @raw_notifier_chain_register(ptr noundef nonnull @cpu_pm_notifier, ptr noundef %nb) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.anon, ptr @cpu_pm_notifier, i32 0, i32 1), i32 noundef %call) #4
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpu_pm_unregister_notifier(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.anon, ptr @cpu_pm_notifier, i32 0, i32 1)) #4
  %call1 = tail call i32 @raw_notifier_chain_unregister(ptr noundef nonnull @cpu_pm_notifier, ptr noundef %nb) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.anon, ptr @cpu_pm_notifier, i32 0, i32 1), i32 noundef %call) #4
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpu_pm_enter() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rcu_irq_enter_irqson() #4
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.anon, ptr @cpu_pm_notifier, i32 0, i32 1)) #4
  %call1.i = tail call i32 @raw_notifier_call_chain_robust(ptr noundef nonnull @cpu_pm_notifier, i32 noundef 0, i32 noundef 1, ptr noundef null) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.anon, ptr @cpu_pm_notifier, i32 0, i32 1), i32 noundef %call.i) #4
  tail call void @rcu_irq_exit_irqson() #4
  %and.i.i = and i32 %call1.i, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.i = icmp sgt i32 %and.i.i, 1
  %sub.i.i = sub i32 1, %and.i.i
  %spec.select.i.i = select i1 %cmp.i.i, i32 %sub.i.i, i32 0
  ret i32 %spec.select.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpu_pm_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cpu_pm_notify(i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpu_pm_notify(i32 noundef %event) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rcu_irq_enter_irqson() #4
  %0 = tail call i32 @llvm.read_register.i32(metadata !27) #4
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !37
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #4
  %call.i = tail call zeroext i1 @rcu_is_watching() #4
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #4
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @raw_notifier_call_chain(ptr noundef nonnull @cpu_pm_notifier, i32 noundef %event, ptr noundef null) #4
  %call.i2 = tail call zeroext i1 @rcu_is_watching() #4
  br i1 %call.i2, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %rcu_read_lock.exit
  %call1.i3 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #4
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !38
  %4 = tail call i32 @llvm.read_register.i32(metadata !27) #4
  %and.i.i.i.i.i9 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  tail call void @rcu_read_unlock_strict() #4
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #4
  tail call void @rcu_irq_exit_irqson() #4
  %and.i = and i32 %call, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp sgt i32 %and.i, 1
  %sub.i = sub i32 1, %and.i
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpu_cluster_pm_enter() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rcu_irq_enter_irqson() #4
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.anon, ptr @cpu_pm_notifier, i32 0, i32 1)) #4
  %call1.i = tail call i32 @raw_notifier_call_chain_robust(ptr noundef nonnull @cpu_pm_notifier, i32 noundef 3, i32 noundef 4, ptr noundef null) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.anon, ptr @cpu_pm_notifier, i32 0, i32 1), i32 noundef %call.i) #4
  tail call void @rcu_irq_exit_irqson() #4
  %and.i.i = and i32 %call1.i, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.i = icmp sgt i32 %and.i.i, 1
  %sub.i.i = sub i32 1, %and.i.i
  %spec.select.i.i = select i1 %cmp.i.i, i32 %sub.i.i, i32 0
  ret i32 %spec.select.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpu_cluster_pm_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cpu_pm_notify(i32 noundef 5)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_pm_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_syscore_ops(ptr noundef nonnull @cpu_pm_syscore_ops) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_enter_irqson() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_call_chain_robust(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_exit_irqson() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_pm_suspend() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rcu_irq_enter_irqson() #4
  %call.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.anon, ptr @cpu_pm_notifier, i32 0, i32 1)) #4
  %call1.i.i = tail call i32 @raw_notifier_call_chain_robust(ptr noundef nonnull @cpu_pm_notifier, i32 noundef 0, i32 noundef 1, ptr noundef null) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.anon, ptr @cpu_pm_notifier, i32 0, i32 1), i32 noundef %call.i.i) #4
  tail call void @rcu_irq_exit_irqson() #4
  %and.i.i.i = and i32 %call1.i.i, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %and.i.i.i, 1
  %sub.i.i.i = sub i32 1, %and.i.i.i
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %sub.i.i.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i)
  %tobool.not = icmp eq i32 %spec.select.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rcu_irq_enter_irqson() #4
  %call.i.i4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.anon, ptr @cpu_pm_notifier, i32 0, i32 1)) #4
  %call1.i.i5 = tail call i32 @raw_notifier_call_chain_robust(ptr noundef nonnull @cpu_pm_notifier, i32 noundef 3, i32 noundef 4, ptr noundef null) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.anon, ptr @cpu_pm_notifier, i32 0, i32 1), i32 noundef %call.i.i4) #4
  tail call void @rcu_irq_exit_irqson() #4
  %and.i.i.i6 = and i32 %call1.i.i5, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i6)
  %cmp.i.i.i7 = icmp sgt i32 %and.i.i.i6, 1
  %sub.i.i.i8 = sub i32 1, %and.i.i.i6
  %spec.select.i.i.i9 = select i1 %cmp.i.i.i7, i32 %sub.i.i.i8, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i.i.i9, %if.end ], [ %spec.select.i.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpu_pm_resume() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @cpu_pm_notify(i32 noundef 5) #4
  %call.i2 = tail call fastcc i32 @cpu_pm_notify(i32 noundef 2) #4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !24, !25}
!llvm.named.register.sp = !{!27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__ksymtab_cpu_pm_register_notifier, !1, !"__ksymtab_cpu_pm_register_notifier", i1 false, i1 false}
!1 = !{!"../kernel/cpu_pm.c", i32 80, i32 1}
!2 = !{ptr @__ksymtab_cpu_pm_unregister_notifier, !3, !"__ksymtab_cpu_pm_unregister_notifier", i1 false, i1 false}
!3 = !{!"../kernel/cpu_pm.c", i32 100, i32 1}
!4 = !{ptr @__ksymtab_cpu_pm_enter, !5, !"__ksymtab_cpu_pm_enter", i1 false, i1 false}
!5 = !{!"../kernel/cpu_pm.c", i32 121, i32 1}
!6 = !{ptr @__ksymtab_cpu_pm_exit, !7, !"__ksymtab_cpu_pm_exit", i1 false, i1 false}
!7 = !{!"../kernel/cpu_pm.c", i32 139, i32 1}
!8 = !{ptr @__ksymtab_cpu_cluster_pm_enter, !9, !"__ksymtab_cpu_cluster_pm_enter", i1 false, i1 false}
!9 = !{!"../kernel/cpu_pm.c", i32 161, i32 1}
!10 = !{ptr @__ksymtab_cpu_cluster_pm_exit, !11, !"__ksymtab_cpu_cluster_pm_exit", i1 false, i1 false}
!11 = !{!"../kernel/cpu_pm.c", i32 182, i32 1}
!12 = !{ptr @__initcall__kmod_cpu_pm__106_213_cpu_pm_init1, !13, !"__initcall__kmod_cpu_pm__106_213_cpu_pm_init1", i1 false, i1 false}
!13 = !{!"../kernel/cpu_pm.c", i32 213, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../kernel/cpu_pm.c", i32 26, i32 11}
!16 = !{ptr @cpu_pm_notifier, !17, !"cpu_pm_notifier", i1 false, i1 false}
!17 = !{!"../kernel/cpu_pm.c", i32 24, i32 3}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @cpu_pm_syscore_ops, !26, !"cpu_pm_syscore_ops", i1 false, i1 false}
!26 = !{!"../kernel/cpu_pm.c", i32 203, i32 27}
!27 = !{!"sp"}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2149265824}
!38 = !{i64 2149266090}
