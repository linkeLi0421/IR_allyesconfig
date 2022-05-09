; ModuleID = '/llk/IR_all_yes/kernel/irq/resend.c_pt.bc'
source_filename = "../kernel/irq/resend.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+irq_inject_interrupt\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_inject_interrupt\09\09\09\09"
module asm "\09.long\09__crc_irq_inject_interrupt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_inject_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_inject_interrupt\22\09\09\09\09\09"
module asm "__kstrtabns_irq_inject_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%struct.atomic_t = type { i32 }
%union.anon.68 = type { ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
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

@__kstrtab_irq_inject_interrupt = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_inject_interrupt = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_inject_interrupt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_inject_interrupt to i32), ptr @__kstrtab_irq_inject_interrupt, ptr @__kstrtabns_irq_inject_interrupt }, section "___ksymtab_gpl+irq_inject_interrupt", align 4
@irqs_resend = internal global { [257 x i32], [284 x i8] } zeroinitializer, align 32
@resend_tasklet = internal global { %struct.tasklet_struct, [40 x i8] } { %struct.tasklet_struct { ptr null, i32 0, %struct.atomic_t zeroinitializer, i8 1, %union.anon.68 { ptr @resend_irqs }, i32 0 }, [40 x i8] zeroinitializer }, align 32
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"irqs_resend\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 25, i32 8 }
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"resend_tasklet\00", align 1
@___asan_gen_.5 = private constant [23 x i8] c"../kernel/irq/resend.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 48, i32 8 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_irq_inject_interrupt, ptr @irqs_resend, ptr @resend_tasklet], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irqs_resend to i32), i32 1028, i32 1312, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resend_tasklet to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @check_irq_resend(ptr noundef %desc, i1 noundef zeroext %inject) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 5
  %0 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status_use_accessors.i, align 4
  %and.i = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %core_internal_state__do_not_mess_with_it1 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 6
  %2 = ptrtoint ptr %core_internal_state__do_not_mess_with_it1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %core_internal_state__do_not_mess_with_it1, align 8
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and = and i32 %3, -513
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %and2 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and6 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp ne i32 %and6, 0
  %brmerge = or i1 %tobool7.not, %inject
  br i1 %brmerge, label %if.end10, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %and12 = and i32 %3, -513
  %4 = ptrtoint ptr %core_internal_state__do_not_mess_with_it1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and12, ptr %core_internal_state__do_not_mess_with_it1, align 8
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip.i, align 8
  %irq_retrigger.i = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %irq_retrigger.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irq_retrigger.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %call.i = tail call i32 %8(ptr noundef %irq_data.i) #3
  br label %try_retrigger.exit

if.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %call6.i = tail call i32 @irq_chip_retrigger_hierarchy(ptr noundef %irq_data.i) #3
  br label %try_retrigger.exit

try_retrigger.exit:                               ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call6.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool14.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool14.not, label %if.then15, label %try_retrigger.exit.if.then19_crit_edge

try_retrigger.exit.if.then19_crit_edge:           ; preds = %try_retrigger.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then19

if.then15:                                        ; preds = %try_retrigger.exit
  %irq.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq.i.i, align 4
  %11 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status_use_accessors.i, align 4
  %and.i.i = and i32 %12, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then15.if.end7.i_crit_edge, label %if.then3.i

if.then15.if.end7.i_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7.i

if.then3.i:                                       ; preds = %if.then15
  %parent_irq.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 33
  %13 = ptrtoint ptr %parent_irq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %parent_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i30 = icmp eq i32 %14, 0
  br i1 %tobool.not.i30, label %if.then3.i.cleanup_crit_edge, label %if.then3.i.if.end7.i_crit_edge

if.then3.i.if.end7.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7.i

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7.i:                                        ; preds = %if.then3.i.if.end7.i_crit_edge, %if.then15.if.end7.i_crit_edge
  %irq.0.i = phi i32 [ %10, %if.then15.if.end7.i_crit_edge ], [ %14, %if.then3.i.if.end7.i_crit_edge ]
  tail call void @_set_bit(i32 noundef %irq.0.i, ptr noundef nonnull @irqs_resend) #3
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @resend_tasklet, i32 0, i32 1)) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end7.i.if.then19_crit_edge

if.end7.i.if.then19_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then19

if.then.i.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @__tasklet_schedule(ptr noundef nonnull @resend_tasklet) #3
  br label %if.then19

if.then19:                                        ; preds = %if.then.i.i, %if.end7.i.if.then19_crit_edge, %try_retrigger.exit.if.then19_crit_edge
  %15 = ptrtoint ptr %core_internal_state__do_not_mess_with_it1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %core_internal_state__do_not_mess_with_it1, align 8
  %or = or i32 %16, 64
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then19, %if.then
  %or.sink = phi i32 [ %or, %if.then19 ], [ %and, %if.then ]
  %retval.0.ph = phi i32 [ 0, %if.then19 ], [ -22, %if.then ]
  %17 = ptrtoint ptr %core_internal_state__do_not_mess_with_it1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.sink, ptr %core_internal_state__do_not_mess_with_it1, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then3.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ -22, %if.then3.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_inject_interrupt(i32 noundef %irq) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !15
  %call = tail call i32 @irq_set_irqchip_state(i32 noundef %irq, i32 noundef 0, i1 noundef zeroext true) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call ptr @__irq_get_desc_lock(i32 noundef %irq, ptr noundef nonnull %flags, i1 noundef zeroext true, i32 noundef 0) #3
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %core_internal_state__do_not_mess_with_it to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 8
  %and = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end4.if.end9_crit_edge

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

lor.lhs.false:                                    ; preds = %if.end4
  %common.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %common.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %and.i = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.if.end9_crit_edge, label %if.else

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  %call8 = call i32 @check_irq_resend(ptr noundef nonnull %call.i, i1 noundef zeroext true)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %lor.lhs.false.if.end9_crit_edge, %if.end4.if.end9_crit_edge
  %err.0 = phi i32 [ %call8, %if.else ], [ -22, %lor.lhs.false.if.end9_crit_edge ], [ -22, %if.end4.if.end9_crit_edge ]
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %call.i, i32 noundef %8, i1 noundef zeroext true) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #3
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irqchip_state(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @resend_irqs(ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br label %bitmap_empty.exit

bitmap_empty.exit:                                ; preds = %bitmap_empty.exit.backedge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %0 = load i32, ptr @nr_irqs, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @irqs_resend, i32 noundef %0) #3
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %0)
  %cmp4.i = icmp eq i32 %call.i, %0
  br i1 %cmp4.i, label %while.end, label %while.body

while.body:                                       ; preds = %bitmap_empty.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %1 = load i32, ptr @nr_irqs, align 4
  %call1 = tail call i32 @_find_first_bit_be(ptr noundef nonnull @irqs_resend, i32 noundef %1) #3
  tail call void @_clear_bit(i32 noundef %call1, ptr noundef nonnull @irqs_resend) #3
  %call2 = tail call ptr @irq_to_desc(i32 noundef %call1) #3
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %while.body.bitmap_empty.exit.backedge_crit_edge, label %do.body

while.body.bitmap_empty.exit.backedge_crit_edge:  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %bitmap_empty.exit.backedge

do.body:                                          ; preds = %while.body
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #3, !srcloc !16
  %and.i.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool4.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #3, !srcloc !17
  br i1 %tobool4.not, label %if.then6, label %do.body.if.end7_crit_edge

do.body.if.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @trace_hardirqs_off() #3
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.body.if.end7_crit_edge
  %handle_irq = getelementptr inbounds %struct.irq_desc, ptr %call2, i32 0, i32 3
  %3 = ptrtoint ptr %handle_irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %handle_irq, align 4
  tail call void %4(ptr noundef nonnull %call2) #3
  tail call void @trace_hardirqs_on() #3
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #3, !srcloc !18
  br label %bitmap_empty.exit.backedge

bitmap_empty.exit.backedge:                       ; preds = %if.end7, %while.body.bitmap_empty.exit.backedge_crit_edge
  br label %bitmap_empty.exit

while.end:                                        ; preds = %bitmap_empty.exit
  call void @__sanitizer_cov_trace_pc() #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_get_desc_lock(i32 noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_put_desc_unlock(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab_irq_inject_interrupt, !1, !"__ksymtab_irq_inject_interrupt", i1 false, i1 false}
!1 = !{!"../kernel/irq/resend.c", i32 183, i32 1}
!2 = !{ptr @irqs_resend, !3, !"irqs_resend", i1 false, i1 false}
!3 = !{!"../kernel/irq/resend.c", i32 25, i32 8}
!4 = !{ptr @resend_tasklet, !5, !"resend_tasklet", i1 false, i1 false}
!5 = !{!"../kernel/irq/resend.c", i32 48, i32 8}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
!16 = !{i64 930056}
!17 = !{i64 927759}
!18 = !{i64 927569}
