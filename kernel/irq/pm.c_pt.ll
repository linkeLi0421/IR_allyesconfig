; ModuleID = '/llk/IR_all_yes/kernel/irq/pm.c_pt.bc'
source_filename = "../kernel/irq/pm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+suspend_device_irqs\22, \22a\22\09"
module asm "\09.weak\09__crc_suspend_device_irqs\09\09\09\09"
module asm "\09.long\09__crc_suspend_device_irqs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_suspend_device_irqs:\09\09\09\09\09"
module asm "\09.asciz \09\22suspend_device_irqs\22\09\09\09\09\09"
module asm "__kstrtabns_suspend_device_irqs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+resume_device_irqs\22, \22a\22\09"
module asm "\09.weak\09__crc_resume_device_irqs\09\09\09\09"
module asm "\09.long\09__crc_resume_device_irqs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_resume_device_irqs:\09\09\09\09\09"
module asm "\09.asciz \09\22resume_device_irqs\22\09\09\09\09\09"
module asm "__kstrtabns_resume_device_irqs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.irqaction = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, [76 x i8] }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@irq_pm_install_action.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kernel/irq/pm.c\00", [16 x i8] zeroinitializer }, align 32
@irq_pm_install_action.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_suspend_device_irqs = external dso_local constant [0 x i8], align 1
@__kstrtabns_suspend_device_irqs = external dso_local constant [0 x i8], align 1
@__ksymtab_suspend_device_irqs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @suspend_device_irqs to i32), ptr @__kstrtab_suspend_device_irqs, ptr @__kstrtabns_suspend_device_irqs }, section "___ksymtab_gpl+suspend_device_irqs", align 4
@__initcall__kmod_pm__289_249_irq_pm_init_ops6 = internal global ptr @irq_pm_init_ops, section ".initcall6.init", align 4
@__kstrtab_resume_device_irqs = external dso_local constant [0 x i8], align 1
@__kstrtabns_resume_device_irqs = external dso_local constant [0 x i8], align 1
@__ksymtab_resume_device_irqs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @resume_device_irqs to i32), ptr @__kstrtab_resume_device_irqs, ptr @__kstrtabns_resume_device_irqs }, section "___ksymtab_gpl+resume_device_irqs", align 4
@chained_action = external dso_local global %struct.irqaction, align 128
@irq_pm_syscore_ops = internal global { %struct.syscore_ops, [44 x i8] } { %struct.syscore_ops { %struct.list_head zeroinitializer, ptr null, ptr @irq_pm_syscore_resume, ptr null }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 40, i32 2 }
@___asan_gen_.5 = private unnamed_addr constant [19 x i8] c"irq_pm_syscore_ops\00", align 1
@___asan_gen_.6 = private constant [19 x i8] c"../kernel/irq/pm.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 239, i32 27 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__initcall__kmod_pm__289_249_irq_pm_init_ops6, ptr @__ksymtab_resume_device_irqs, ptr @__ksymtab_suspend_device_irqs, ptr @.str, ptr @irq_pm_syscore_ops], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_pm_syscore_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @irq_pm_check_wakeup(ptr noundef %desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  br i1 %tobool.i, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and.i9 = and i32 %3, -524289
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and.i9, ptr %1, align 4
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 6
  %5 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 8
  %or = or i32 %6, 2560
  store i32 %or, ptr %core_internal_state__do_not_mess_with_it, align 8
  %depth = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 7
  %7 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %depth, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %depth, align 4
  tail call void @irq_disable(ptr noundef %desc) #5
  %irq.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq.i, align 4
  tail call void @pm_system_irq_wakeup(i32 noundef %10) #5
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  ret i1 %tobool.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_system_irq_wakeup(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_pm_install_action(ptr nocapture noundef %desc, ptr nocapture noundef readonly %action) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_actions = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 23
  %0 = ptrtoint ptr %nr_actions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_actions, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %nr_actions, align 4
  %flags = getelementptr inbounds %struct.irqaction, ptr %action, i32 0, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 32
  %and = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %force_resume_depth = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 26
  %4 = ptrtoint ptr %force_resume_depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %force_resume_depth, align 16
  %inc1 = add i32 %5, 1
  store i32 %inc1, ptr %force_resume_depth, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %force_resume_depth2 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 26
  %6 = ptrtoint ptr %force_resume_depth2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %force_resume_depth2, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp ne i32 %7, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %inc)
  %cmp = icmp ne i32 %7, %inc
  %or.cond = select i1 %tobool3.not, i1 %cmp, i1 false
  br i1 %or.cond, label %land.rhs8, label %if.end.if.end37_crit_edge

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

land.rhs8:                                        ; preds = %if.end
  %.b137 = load i1, ptr @irq_pm_install_action.__already_done, align 1
  br i1 %.b137, label %land.rhs8.if.end37_crit_edge, label %if.then15, !prof !22

land.rhs8.if.end37_crit_edge:                     ; preds = %land.rhs8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then15:                                        ; preds = %land.rhs8
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @irq_pm_install_action.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef null) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then15, %land.rhs8.if.end37_crit_edge, %if.end.if.end37_crit_edge
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 32
  %and46 = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.else, label %if.then48

if.then48:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %no_suspend_depth = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 24
  %10 = ptrtoint ptr %no_suspend_depth to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %no_suspend_depth, align 8
  %inc49 = add i32 %11, 1
  store i32 %inc49, ptr %no_suspend_depth, align 8
  br label %if.end56

if.else:                                          ; preds = %if.end37
  %and51 = and i32 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.else.if.end56_crit_edge, label %if.then53

if.else.if.end56_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %cond_suspend_depth = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 25
  %12 = ptrtoint ptr %cond_suspend_depth to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cond_suspend_depth, align 4
  %inc54 = add i32 %13, 1
  store i32 %inc54, ptr %cond_suspend_depth, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.else.if.end56_crit_edge, %if.then48
  %no_suspend_depth58 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 24
  %14 = ptrtoint ptr %no_suspend_depth58 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %no_suspend_depth58, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool59.not = icmp eq i32 %15, 0
  br i1 %tobool59.not, label %if.end56.if.end110_crit_edge, label %land.rhs60

if.end56.if.end110_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

land.rhs60:                                       ; preds = %if.end56
  %cond_suspend_depth62 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 25
  %16 = ptrtoint ptr %cond_suspend_depth62 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cond_suspend_depth62, align 4
  %add = add i32 %17, %15
  %18 = ptrtoint ptr %nr_actions to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_actions, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %19)
  %cmp64.not = icmp eq i32 %add, %19
  br i1 %cmp64.not, label %land.rhs60.if.end110_crit_edge, label %land.rhs72

land.rhs60.if.end110_crit_edge:                   ; preds = %land.rhs60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

land.rhs72:                                       ; preds = %land.rhs60
  %.b135136 = load i1, ptr @irq_pm_install_action.__already_done.1, align 1
  br i1 %.b135136, label %land.rhs72.if.end110_crit_edge, label %if.then83, !prof !22

land.rhs72.if.end110_crit_edge:                   ; preds = %land.rhs72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

if.then83:                                        ; preds = %land.rhs72
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @irq_pm_install_action.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 50, i32 noundef 9, ptr noundef null) #5
  br label %if.end110

if.end110:                                        ; preds = %if.then83, %land.rhs72.if.end110_crit_edge, %land.rhs60.if.end110_crit_edge, %if.end56.if.end110_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @irq_pm_remove_action(ptr nocapture noundef %desc, ptr nocapture noundef readonly %action) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_actions = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 23
  %0 = ptrtoint ptr %nr_actions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_actions, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %nr_actions, align 4
  %flags = getelementptr inbounds %struct.irqaction, ptr %action, i32 0, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 32
  %and = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %force_resume_depth = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 26
  %4 = ptrtoint ptr %force_resume_depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %force_resume_depth, align 16
  %dec1 = add i32 %5, -1
  store i32 %dec1, ptr %force_resume_depth, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 32
  %and3 = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %no_suspend_depth = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 24
  %8 = ptrtoint ptr %no_suspend_depth to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %no_suspend_depth, align 8
  %dec6 = add i32 %9, -1
  store i32 %dec6, ptr %no_suspend_depth, align 8
  br label %if.end13

if.else:                                          ; preds = %if.end
  %and8 = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else.if.end13_crit_edge, label %if.then10

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %cond_suspend_depth = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 25
  %10 = ptrtoint ptr %cond_suspend_depth to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cond_suspend_depth, align 4
  %dec11 = add i32 %11, -1
  store i32 %dec11, ptr %cond_suspend_depth, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.else.if.end13_crit_edge, %if.then5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @suspend_device_irqs() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_to_desc(i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %0 = load i32, ptr @nr_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp31 = icmp sgt i32 %0, 0
  br i1 %cmp31, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %desc.035 = phi ptr [ %call20, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %irq.032 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %tobool.not = icmp eq ptr %desc.035, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.else:                                          ; preds = %for.body
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %desc.035, i32 0, i32 5
  %1 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %status_use_accessors.i, align 4
  %and.i = and i32 %2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.body:                                          ; preds = %if.else
  %lock = getelementptr inbounds %struct.irq_desc, ptr %desc.035, i32 0, i32 15
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %chip.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc.035, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip.i.i, align 8
  %flags.i = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %action.i = getelementptr inbounds %struct.irq_desc, ptr %desc.035, i32 0, i32 4
  %7 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %action.i, align 64
  %tobool.not.i = icmp eq ptr %8, null
  %cmp.i.not.i = icmp eq ptr %8, @chained_action
  %or.cond.i = or i1 %tobool.not.i, %cmp.i.not.i
  br i1 %or.cond.i, label %do.body.suspend_device_irq.exit_crit_edge, label %lor.lhs.false3.i

do.body.suspend_device_irq.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %suspend_device_irq.exit

lor.lhs.false3.i:                                 ; preds = %do.body
  %no_suspend_depth.i = getelementptr inbounds %struct.irq_desc, ptr %desc.035, i32 0, i32 24
  %9 = ptrtoint ptr %no_suspend_depth.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %no_suspend_depth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not.i = icmp eq i32 %10, 0
  br i1 %tobool4.not.i, label %if.end.i, label %lor.lhs.false3.i.suspend_device_irq.exit_crit_edge

lor.lhs.false3.i.suspend_device_irq.exit_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %suspend_device_irq.exit

if.end.i:                                         ; preds = %lor.lhs.false3.i
  %common.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc.035, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %common.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %and.i.i = and i32 %14, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end11.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  %or.i.i = or i32 %14, 524288
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i.i, ptr %12, align 4
  %and.i29 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29)
  %tobool7.not.i = icmp eq i32 %and.i29, 0
  br i1 %tobool7.not.i, label %if.then6.i.if.then16_crit_edge, label %land.lhs.true.i

if.then6.i.if.then16_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

land.lhs.true.i:                                  ; preds = %if.then6.i
  %16 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %common.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %and.i31.i = and i32 %19, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.i32.not.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.i32.not.i, label %land.lhs.true.i.if.then16_crit_edge, label %if.then9.i

land.lhs.true.i.if.then16_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__enable_irq(ptr noundef nonnull %desc.035) #5
  %20 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %common.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %or.i34.i = or i32 %23, 1073741824
  store i32 %or.i34.i, ptr %21, align 4
  br label %if.then16

if.end11.i:                                       ; preds = %if.end.i
  %core_internal_state__do_not_mess_with_it.i = getelementptr inbounds %struct.irq_desc, ptr %desc.035, i32 0, i32 6
  %24 = ptrtoint ptr %core_internal_state__do_not_mess_with_it.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %core_internal_state__do_not_mess_with_it.i, align 8
  %or.i = or i32 %25, 2048
  store i32 %or.i, ptr %core_internal_state__do_not_mess_with_it.i, align 8
  tail call void @__disable_irq(ptr noundef nonnull %desc.035) #5
  %and12.i = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.if.then16_crit_edge, label %if.then14.i

if.end11.i.if.then16_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mask_irq(ptr noundef nonnull %desc.035) #5
  br label %if.then16

suspend_device_irq.exit:                          ; preds = %lor.lhs.false3.i.suspend_device_irq.exit_crit_edge, %do.body.suspend_device_irq.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #5
  br label %for.inc

if.then16:                                        ; preds = %if.then14.i, %if.end11.i.if.then16_crit_edge, %if.then9.i, %land.lhs.true.i.if.then16_crit_edge, %if.then6.i.if.then16_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #5
  tail call void @synchronize_irq(i32 noundef %irq.032) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %suspend_device_irq.exit, %if.else.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %irq.032, 1
  %call20 = tail call ptr @irq_to_desc(i32 noundef %inc) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %26 = load i32, ptr @nr_irqs, align 4
  %cmp = icmp slt i32 %inc, %26
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rearm_wake_irq(i32 noundef %irq) local_unnamed_addr #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !23
  %call.i = call ptr @__irq_get_desc_lock(i32 noundef %irq, ptr noundef nonnull %flags, i1 noundef zeroext true, i32 noundef 1) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 8
  %and = and i32 %2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.unlock_crit_edge, label %lor.lhs.false

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

lor.lhs.false:                                    ; preds = %if.end
  %common.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %common.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %and.i = and i32 %6, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.unlock_crit_edge, label %if.end4

lor.lhs.false.unlock_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end4:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %and6 = and i32 %2, -2049
  %7 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and6, ptr %core_internal_state__do_not_mess_with_it, align 8
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %4, align 4
  %or.i = or i32 %9, 524288
  store i32 %or.i, ptr %4, align 4
  call void @__enable_irq(ptr noundef nonnull %call.i) #5
  br label %unlock

unlock:                                           ; preds = %if.end4, %lor.lhs.false.unlock_crit_edge, %if.end.unlock_crit_edge
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %call.i, i32 noundef %11, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__enable_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_pm_init_ops() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_syscore_ops(ptr noundef nonnull @irq_pm_syscore_ops) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @resume_device_irqs() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @resume_irqs(i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @resume_irqs(i1 noundef zeroext %want_early) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_to_desc(i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %0 = load i32, ptr @nr_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp36 = icmp sgt i32 %0, 0
  br i1 %cmp36, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %desc.038 = phi ptr [ %call25, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %irq.037 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %tobool.not = icmp eq ptr %desc.038, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.else:                                          ; preds = %for.body
  %action = getelementptr inbounds %struct.irq_desc, ptr %desc.038, i32 0, i32 4
  %1 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %action, align 64
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %land.lhs.true.critedge, label %land.rhs

land.rhs:                                         ; preds = %if.else
  %flags3 = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags3, align 32
  %and = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4 = icmp eq i32 %and, 0
  %5 = and i1 %tobool4, %want_early
  br i1 %5, label %land.rhs.for.inc_crit_edge, label %land.rhs.if.end_crit_edge

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true.critedge:                           ; preds = %if.else
  br i1 %want_early, label %land.lhs.true.critedge.for.inc_crit_edge, label %land.lhs.true.critedge.if.end_crit_edge

land.lhs.true.critedge.if.end_crit_edge:          ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.critedge.for.inc_crit_edge:         ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true.critedge.if.end_crit_edge, %land.rhs.if.end_crit_edge
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %desc.038, i32 0, i32 5
  %6 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status_use_accessors.i, align 4
  %and.i = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.irq_desc, ptr %desc.038, i32 0, i32 15
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %common.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc.038, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %common.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %and.i.i = and i32 %11, -524289
  store i32 %and.i.i, ptr %9, align 4
  %12 = load ptr, ptr %common.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %and.i19.i = and i32 %14, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19.i)
  %tobool.i.not.i = icmp eq i32 %and.i19.i, 0
  br i1 %tobool.i.not.i, label %do.body.if.end.i_crit_edge, label %if.then.i

do.body.if.end.i_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__disable_irq(ptr noundef nonnull %desc.038) #5
  %15 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %common.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %and.i21.i = and i32 %18, -1073741825
  store i32 %and.i21.i, ptr %16, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.body.if.end.i_crit_edge
  %core_internal_state__do_not_mess_with_it.i = getelementptr inbounds %struct.irq_desc, ptr %desc.038, i32 0, i32 6
  %19 = ptrtoint ptr %core_internal_state__do_not_mess_with_it.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %core_internal_state__do_not_mess_with_it.i, align 8
  %and.i35 = and i32 %20, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i35)
  %tobool.not.i = icmp eq i32 %and.i35, 0
  br i1 %tobool.not.i, label %if.end2.i, label %if.end.i.resume.i_crit_edge

if.end.i.resume.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %resume.i

if.end2.i:                                        ; preds = %if.end.i
  %force_resume_depth.i = getelementptr inbounds %struct.irq_desc, ptr %desc.038, i32 0, i32 26
  %21 = ptrtoint ptr %force_resume_depth.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %force_resume_depth.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool3.not.i = icmp eq i32 %22, 0
  br i1 %tobool3.not.i, label %if.end2.i.resume_irq.exit_crit_edge, label %if.end5.i

if.end2.i.resume_irq.exit_crit_edge:              ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %resume_irq.exit

if.end5.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  %depth.i = getelementptr inbounds %struct.irq_desc, ptr %desc.038, i32 0, i32 7
  %23 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %depth.i, align 4
  %inc.i = add i32 %24, 1
  store i32 %inc.i, ptr %depth.i, align 4
  %25 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %common.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %or.i.i.i = or i32 %28, 65536
  store i32 %or.i.i.i, ptr %26, align 4
  %29 = load ptr, ptr %common.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %or.i.i23.i = or i32 %31, 131072
  store i32 %or.i.i23.i, ptr %29, align 4
  br label %resume.i

resume.i:                                         ; preds = %if.end5.i, %if.end.i.resume.i_crit_edge
  %32 = ptrtoint ptr %core_internal_state__do_not_mess_with_it.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %core_internal_state__do_not_mess_with_it.i, align 8
  %and7.i = and i32 %33, -2049
  store i32 %and7.i, ptr %core_internal_state__do_not_mess_with_it.i, align 8
  tail call void @__enable_irq(ptr noundef nonnull %desc.038) #5
  br label %resume_irq.exit

resume_irq.exit:                                  ; preds = %resume.i, %if.end2.i.resume_irq.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #5
  br label %for.inc

for.inc:                                          ; preds = %resume_irq.exit, %if.end.for.inc_crit_edge, %land.lhs.true.critedge.for.inc_crit_edge, %land.rhs.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %irq.037, 1
  %call25 = tail call ptr @irq_to_desc(i32 noundef %inc) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %34 = load i32, ptr @nr_irqs, align 4
  %cmp = icmp slt i32 %inc, %34
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__disable_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mask_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_get_desc_lock(i32 noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_put_desc_unlock(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irq_pm_syscore_resume() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @resume_irqs(i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../kernel/irq/pm.c", i32 40, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../kernel/irq/pm.c", i32 48, i32 2}
!5 = !{ptr @__ksymtab_suspend_device_irqs, !6, !"__ksymtab_suspend_device_irqs", i1 false, i1 false}
!6 = !{!"../kernel/irq/pm.c", i32 150, i32 1}
!7 = !{ptr @__initcall__kmod_pm__289_249_irq_pm_init_ops6, !8, !"__initcall__kmod_pm__289_249_irq_pm_init_ops6", i1 false, i1 false}
!8 = !{!"../kernel/irq/pm.c", i32 249, i32 1}
!9 = !{ptr @__ksymtab_resume_device_irqs, !10, !"__ksymtab_resume_device_irqs", i1 false, i1 false}
!10 = !{!"../kernel/irq/pm.c", i32 262, i32 1}
!11 = !{ptr @irq_pm_syscore_ops, !12, !"irq_pm_syscore_ops", i1 false, i1 false}
!12 = !{!"../kernel/irq/pm.c", i32 239, i32 27}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{!"auto-init"}
