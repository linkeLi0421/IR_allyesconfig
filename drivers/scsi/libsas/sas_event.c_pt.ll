; ModuleID = '/llk/IR_all_yes/drivers/scsi/libsas/sas_event.c_pt.bc'
source_filename = "../drivers/scsi/libsas/sas_event.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sas_drain_work\22, \22a\22\09"
module asm "\09.weak\09__crc_sas_drain_work\09\09\09\09"
module asm "\09.long\09__crc_sas_drain_work\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sas_drain_work:\09\09\09\09\09"
module asm "\09.asciz \09\22sas_drain_work\22\09\09\09\09\09"
module asm "__kstrtabns_sas_drain_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sas_notify_port_event\22, \22a\22\09"
module asm "\09.weak\09__crc_sas_notify_port_event\09\09\09\09"
module asm "\09.long\09__crc_sas_notify_port_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sas_notify_port_event:\09\09\09\09\09"
module asm "\09.asciz \09\22sas_notify_port_event\22\09\09\09\09\09"
module asm "__kstrtabns_sas_notify_port_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sas_notify_phy_event\22, \22a\22\09"
module asm "\09.weak\09__crc_sas_notify_phy_event\09\09\09\09"
module asm "\09.long\09__crc_sas_notify_phy_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sas_notify_phy_event:\09\09\09\09\09"
module asm "\09.asciz \09\22sas_notify_phy_event\22\09\09\09\09\09"
module asm "__kstrtabns_sas_notify_phy_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sas_ha_struct = type { %struct.list_head, %struct.mutex, i32, %struct.spinlock, i32, %struct.wait_queue_head, %struct.list_head, %struct.mutex, %struct.scsi_core, ptr, ptr, ptr, ptr, ptr, ptr, [3 x i8], %struct.spinlock, ptr, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.scsi_core = type { ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.sas_work = type { %struct.list_head, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sas_discovery = type { [4 x %struct.sas_discovery_event], i32, [8 x i8], [8 x i8], [8 x i8], i32 }
%struct.sas_discovery_event = type { %struct.sas_work, ptr }
%struct.asd_sas_port = type { %struct.sas_discovery, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.sas_work, i32, i32, i32, [8 x i8], [8 x i8], i32, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, ptr, ptr, ptr }
%struct.asd_sas_phy = type { %struct.atomic_t, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [8 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, %struct.list_head, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.asd_sas_event = type { %struct.sas_work, ptr, i32 }

@__kstrtab_sas_drain_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_sas_drain_work = external dso_local constant [0 x i8], align 1
@__ksymtab_sas_drain_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sas_drain_work to i32), ptr @__kstrtab_sas_drain_work, ptr @__kstrtabns_sas_drain_work }, section "___ksymtab_gpl+sas_drain_work", align 4
@__kstrtab_sas_notify_port_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_sas_notify_port_event = external dso_local constant [0 x i8], align 1
@__ksymtab_sas_notify_port_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sas_notify_port_event to i32), ptr @__kstrtab_sas_notify_port_event, ptr @__kstrtabns_sas_notify_port_event }, section "___ksymtab_gpl+sas_notify_port_event", align 4
@__kstrtab_sas_notify_phy_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_sas_notify_phy_event = external dso_local constant [0 x i8], align 1
@__ksymtab_sas_notify_phy_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sas_notify_phy_event to i32), ptr @__kstrtab_sas_notify_phy_event, ptr @__kstrtabns_sas_notify_phy_event }, section "___ksymtab_gpl+sas_notify_phy_event", align 4
@INIT_SAS_WORK.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&sw->work)\00", [35 x i8] zeroinitializer }, align 32
@sas_port_event_fns = external dso_local local_unnamed_addr constant [5 x ptr], align 4
@sas_phy_event_fns = external dso_local local_unnamed_addr constant [6 x ptr], align 4
@___asan_gen_ = private constant [35 x i8] c"../drivers/scsi/libsas/sas_event.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [25 x i8] c"../include/scsi/libsas.h\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 218, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_sas_drain_work, ptr @__ksymtab_sas_notify_phy_event, ptr @__ksymtab_sas_notify_port_event, ptr @INIT_SAS_WORK.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @INIT_SAS_WORK.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sas_queue_work(ptr noundef %ha, ptr noundef %sw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.sas_ha_struct, ptr %ha, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %5 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %sw, align 4
  %cmp.i.not = icmp eq ptr %6, %sw
  br i1 %cmp.i.not, label %if.then7, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then7:                                         ; preds = %if.then4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ha, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %sw, ptr noundef %8, ptr noundef %ha) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %sw, ptr %prev.i, align 4
  %10 = ptrtoint ptr %sw to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ha, ptr %sw, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %sw, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %sw, ptr %8, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %event_q = getelementptr inbounds %struct.sas_ha_struct, ptr %ha, i32 0, i32 12
  %13 = ptrtoint ptr %event_q to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %event_q, align 4
  %work = getelementptr inbounds %struct.sas_work, ptr %sw, i32 0, i32 1
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %work) #3
  %conv = zext i1 %call.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.i.i, %if.then7.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then4.cleanup_crit_edge ], [ %conv, %if.else ], [ 1, %if.then7.cleanup_crit_edge ], [ 1, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_queue_deferred_work(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sas_ha_struct, ptr %ha, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #3
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 4
  %cmp.not35 = icmp eq ptr %1, %ha
  br i1 %cmp.not35, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %state.i = getelementptr inbounds %struct.sas_ha_struct, ptr %ha, i32 0, i32 2
  %prev.i.i27 = getelementptr inbounds %struct.list_head, ptr %ha, i32 0, i32 1
  %event_q.i = getelementptr inbounds %struct.sas_ha_struct, ptr %ha, i32 0, i32 12
  %dev = getelementptr inbounds %struct.sas_ha_struct, ptr %ha, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sw.036 = phi ptr [ %1, %for.body.lr.ph ], [ %_sw.037, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %sw.036 to i32
  call void @__asan_load4_noabort(i32 %2)
  %_sw.037 = load ptr, ptr %sw.036, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sw.036) #3
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %sw.036, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %sw.036 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sw.036, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %sw.036 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %sw.036, ptr %sw.036, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %sw.036, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sw.036, ptr %prev.i3.i, align 4
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %list_del_init.exit.if.then_crit_edge, label %if.end.i

list_del_init.exit.if.then_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.end.i:                                         ; preds = %list_del_init.exit
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.not.i = icmp eq i32 %15, 0
  br i1 %tobool3.not.i, label %sas_queue_work.exit, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  %16 = ptrtoint ptr %sw.036 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %sw.036, align 4
  %cmp.i.not.i = icmp eq ptr %17, %sw.036
  br i1 %cmp.i.not.i, label %if.then7.i, label %if.then4.i.for.inc_crit_edge

if.then4.i.for.inc_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then7.i:                                       ; preds = %if.then4.i
  %18 = ptrtoint ptr %prev.i.i27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i27, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %sw.036, ptr noundef %19, ptr noundef %ha) #3
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then7.i.for.inc_crit_edge

if.then7.i.for.inc_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end.i.i.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %prev.i.i27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %sw.036, ptr %prev.i.i27, align 4
  %21 = ptrtoint ptr %sw.036 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ha, ptr %sw.036, align 4
  %22 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev.i3.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %sw.036, ptr %19, align 4
  br label %for.inc

sas_queue_work.exit:                              ; preds = %if.end.i
  %24 = ptrtoint ptr %event_q.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %event_q.i, align 4
  %work.i = getelementptr inbounds %struct.sas_work, ptr %sw.036, i32 0, i32 1
  %call.i.i28 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %work.i) #3
  br i1 %call.i.i28, label %sas_queue_work.exit.for.inc_crit_edge, label %sas_queue_work.exit.if.then_crit_edge

sas_queue_work.exit.if.then_crit_edge:            ; preds = %sas_queue_work.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

sas_queue_work.exit.for.inc_crit_edge:            ; preds = %sas_queue_work.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then:                                          ; preds = %sas_queue_work.exit.if.then_crit_edge, %list_del_init.exit.if.then_crit_edge
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %27, i32 noundef 5) #3
  tail call void @sas_free_event(ptr noundef %sw.036) #3
  br label %for.inc

for.inc:                                          ; preds = %if.then, %sas_queue_work.exit.for.inc_crit_edge, %if.end.i.i.i, %if.then7.i.for.inc_crit_edge, %if.then4.i.for.inc_crit_edge
  %cmp.not = icmp eq ptr %_sw.037, %ha
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_free_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__sas_drain_work(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.sas_ha_struct, ptr %ha, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state) #3
  %lock = getelementptr inbounds %struct.sas_ha_struct, ptr %ha, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #3
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #3
  %event_q = getelementptr inbounds %struct.sas_ha_struct, ptr %ha, i32 0, i32 12
  %0 = ptrtoint ptr %event_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %event_q, align 4
  tail call void @drain_workqueue(ptr noundef %1) #3
  %disco_q = getelementptr inbounds %struct.sas_ha_struct, ptr %ha, i32 0, i32 13
  %2 = ptrtoint ptr %disco_q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disco_q, align 4
  tail call void @drain_workqueue(ptr noundef %3) #3
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #3
  tail call void @sas_queue_deferred_work(ptr noundef %ha)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drain_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sas_drain_work(ptr noundef %ha) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %drain_mutex = getelementptr inbounds %struct.sas_ha_struct, ptr %ha, i32 0, i32 1
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %drain_mutex, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.sas_ha_struct, ptr %ha, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state) #3
  %lock.i = getelementptr inbounds %struct.sas_ha_struct, ptr %ha, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #3
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #3
  %event_q.i = getelementptr inbounds %struct.sas_ha_struct, ptr %ha, i32 0, i32 12
  %2 = ptrtoint ptr %event_q.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event_q.i, align 4
  tail call void @drain_workqueue(ptr noundef %3) #3
  %disco_q.i = getelementptr inbounds %struct.sas_ha_struct, ptr %ha, i32 0, i32 13
  %4 = ptrtoint ptr %disco_q.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disco_q.i, align 4
  tail call void @drain_workqueue(ptr noundef %5) #3
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #3
  tail call void @sas_queue_deferred_work(ptr noundef %ha) #3
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  tail call void @mutex_unlock(ptr noundef %drain_mutex) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_disable_revalidation(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %disco_mutex = getelementptr inbounds %struct.sas_ha_struct, ptr %ha, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %disco_mutex, i32 noundef 0) #3
  %state = getelementptr inbounds %struct.sas_ha_struct, ptr %ha, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state) #3
  tail call void @mutex_unlock(ptr noundef %disco_mutex) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_enable_revalidation(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %disco_mutex = getelementptr inbounds %struct.sas_ha_struct, ptr %ha, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %disco_mutex, i32 noundef 0) #3
  %state = getelementptr inbounds %struct.sas_ha_struct, ptr %ha, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state) #3
  %num_phys = getelementptr inbounds %struct.sas_ha_struct, ptr %ha, i32 0, i32 19
  %0 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_phys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp24 = icmp sgt i32 %1, 0
  br i1 %cmp24, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sas_port = getelementptr inbounds %struct.sas_ha_struct, ptr %ha, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %2 = ptrtoint ptr %sas_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sas_port, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.025
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %pending = getelementptr inbounds %struct.sas_discovery, ptr %5, i32 0, i32 1
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %pending) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %for.body
  %phy_list_lock = getelementptr inbounds %struct.asd_sas_port, ptr %5, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %phy_list_lock) #3
  %phy_list = getelementptr inbounds %struct.asd_sas_port, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %phy_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %phy_list, align 4
  %cmp.i.not = icmp eq ptr %7, %phy_list
  br i1 %cmp.i.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_raw_spin_unlock(ptr noundef %phy_list_lock) #3
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr = getelementptr i8, ptr %7, i32 -168
  tail call void @_raw_spin_unlock(ptr noundef %phy_list_lock) #3
  %call8 = tail call i32 @sas_notify_port_event(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 3264)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.025, 1
  %8 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_phys, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %disco_mutex) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sas_notify_port_event(ptr noundef %phy, i32 noundef %event, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ha1 = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 23
  %0 = ptrtoint ptr %ha1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %event)
  %cmp = icmp ugt i32 %event, 4
  br i1 %cmp, label %do.body3, label %do.end8, !prof !18

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/libsas/sas_event.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 175, 0\0A.popsection", ""() #3, !srcloc !19
  unreachable

do.end8:                                          ; preds = %entry
  %call = tail call ptr @sas_alloc_event(ptr noundef %phy, i32 noundef %gfp_flags) #3
  %tobool9.not = icmp eq ptr %call, null
  br i1 %tobool9.not, label %do.end8.cleanup_crit_edge, label %if.end11

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end11:                                         ; preds = %do.end8
  %dev = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #3
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #3
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #3, !srcloc !20
  %work.i.i = getelementptr inbounds %struct.sas_work, ptr %call, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work.i.i, i32 noundef 0) #3
  %5 = ptrtoint ptr %work.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %work.i.i, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.sas_work, ptr %call, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @INIT_SAS_WORK.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  %entry4.i.i = getelementptr inbounds %struct.sas_work, ptr %call, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %entry4.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry4.i.i, ptr %entry4.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.sas_work, ptr %call, i32 0, i32 1, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry4.i.i, ptr %prev.i.i.i, align 4
  %func.i.i = getelementptr inbounds %struct.sas_work, ptr %call, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sas_port_event_worker, ptr %func.i.i, align 4
  %9 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call, ptr %call, align 4
  %prev.i11.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i11.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %prev.i11.i.i, align 4
  %phy1.i = getelementptr inbounds %struct.asd_sas_event, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %phy1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %phy, ptr %phy1.i, align 4
  %event2.i = getelementptr inbounds %struct.asd_sas_event, ptr %call, i32 0, i32 2
  %12 = ptrtoint ptr %event2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %event, ptr %event2.i, align 4
  %13 = ptrtoint ptr %ha1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ha1, align 4
  %lock.i = getelementptr inbounds %struct.sas_ha_struct, ptr %14, i32 0, i32 3
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #3
  %state.i = getelementptr inbounds %struct.sas_ha_struct, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i, align 4
  %17 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.end11.if.end14_crit_edge, label %land.lhs.true.i

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

land.lhs.true.i:                                  ; preds = %if.end11
  %suspended.i = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 3
  %18 = ptrtoint ptr %suspended.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %suspended.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool7.not.i = icmp eq i32 %19, 0
  br i1 %tobool7.not.i, label %if.then.i, label %land.lhs.true.i.if.end14_crit_edge

land.lhs.true.i.if.end14_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

if.then.i:                                        ; preds = %land.lhs.true.i
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i35 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef %21, ptr noundef %14) #3
  br i1 %call.i.i.i35, label %if.end.i.i.i, label %if.then.i.sas_defer_event.exit.thread_crit_edge

if.then.i.sas_defer_event.exit.thread_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sas_defer_event.exit.thread

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %14, ptr %call, align 4
  %24 = ptrtoint ptr %prev.i11.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev.i11.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %call, ptr %21, align 4
  br label %sas_defer_event.exit.thread

sas_defer_event.exit.thread:                      ; preds = %if.end.i.i.i, %if.then.i.sas_defer_event.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #3
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true.i.if.end14_crit_edge, %if.end11.if.end14_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #3
  %lock.i36 = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i36) #3
  %state.i.i = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %sas_queue_event.exit.thread43, label %if.end.i.i

sas_queue_event.exit.thread43:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i36, i32 noundef %call2.i) #3
  br label %if.then17

if.end.i.i:                                       ; preds = %if.end14
  %28 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %state.i.i, align 4
  %30 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool3.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool3.not.i.i, label %sas_queue_event.exit, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  %31 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %call, align 4
  %cmp.i.not.i.i = icmp eq ptr %32, %call
  br i1 %cmp.i.not.i.i, label %if.then7.i.i, label %if.then4.i.i.sas_queue_event.exit.thread_crit_edge

if.then4.i.i.sas_queue_event.exit.thread_crit_edge: ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sas_queue_event.exit.thread

if.then7.i.i:                                     ; preds = %if.then4.i.i
  %prev.i.i.i37 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i.i37, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef %34, ptr noundef %1) #3
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then7.i.i.sas_queue_event.exit.thread_crit_edge

if.then7.i.i.sas_queue_event.exit.thread_crit_edge: ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sas_queue_event.exit.thread

if.end.i.i.i.i:                                   ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %35 = ptrtoint ptr %prev.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call, ptr %prev.i.i.i37, align 4
  %36 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %1, ptr %call, align 4
  %37 = ptrtoint ptr %prev.i11.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev.i11.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %call, ptr %34, align 4
  br label %sas_queue_event.exit.thread

sas_queue_event.exit.thread:                      ; preds = %if.end.i.i.i.i, %if.then7.i.i.sas_queue_event.exit.thread_crit_edge, %if.then4.i.i.sas_queue_event.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i36, i32 noundef %call2.i) #3
  br label %cleanup

sas_queue_event.exit:                             ; preds = %if.end.i.i
  %event_q.i.i = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 12
  %39 = ptrtoint ptr %event_q.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %event_q.i.i, align 4
  %call.i.i.i39 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %40, ptr noundef %work.i.i) #3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i36, i32 noundef %call2.i) #3
  br i1 %call.i.i.i39, label %sas_queue_event.exit.cleanup_crit_edge, label %sas_queue_event.exit.if.then17_crit_edge

sas_queue_event.exit.if.then17_crit_edge:         ; preds = %sas_queue_event.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then17

sas_queue_event.exit.cleanup_crit_edge:           ; preds = %sas_queue_event.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then17:                                        ; preds = %sas_queue_event.exit.if.then17_crit_edge, %sas_queue_event.exit.thread43
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %42, i32 noundef 5) #3
  tail call void @sas_free_event(ptr noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %sas_queue_event.exit.cleanup_crit_edge, %sas_queue_event.exit.thread, %sas_defer_event.exit.thread, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end8.cleanup_crit_edge ], [ 0, %if.then17 ], [ 1, %sas_queue_event.exit.cleanup_crit_edge ], [ 0, %sas_defer_event.exit.thread ], [ 1, %sas_queue_event.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_alloc_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sas_port_event_worker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %work, i32 -8
  %phy1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 4
  %ha2 = getelementptr inbounds %struct.asd_sas_phy, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %ha2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha2, align 4
  %event = getelementptr i8, ptr %work, i32 48
  %4 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @sas_port_event_fns, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void %7(ptr noundef %work) #3
  %dev = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 5) #3
  tail call void @sas_free_event(ptr noundef %add.ptr.i) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sas_notify_phy_event(ptr noundef %phy, i32 noundef %event, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ha1 = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 23
  %0 = ptrtoint ptr %ha1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %event)
  %cmp = icmp ugt i32 %event, 5
  br i1 %cmp, label %do.body3, label %do.end8, !prof !18

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/libsas/sas_event.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 206, 0\0A.popsection", ""() #3, !srcloc !21
  unreachable

do.end8:                                          ; preds = %entry
  %call = tail call ptr @sas_alloc_event(ptr noundef %phy, i32 noundef %gfp_flags) #3
  %tobool9.not = icmp eq ptr %call, null
  br i1 %tobool9.not, label %do.end8.cleanup_crit_edge, label %if.end11

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end11:                                         ; preds = %do.end8
  %dev = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #3
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #3
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #3, !srcloc !20
  %work.i.i = getelementptr inbounds %struct.sas_work, ptr %call, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work.i.i, i32 noundef 0) #3
  %5 = ptrtoint ptr %work.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %work.i.i, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.sas_work, ptr %call, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @INIT_SAS_WORK.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  %entry4.i.i = getelementptr inbounds %struct.sas_work, ptr %call, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %entry4.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry4.i.i, ptr %entry4.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.sas_work, ptr %call, i32 0, i32 1, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry4.i.i, ptr %prev.i.i.i, align 4
  %func.i.i = getelementptr inbounds %struct.sas_work, ptr %call, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sas_phy_event_worker, ptr %func.i.i, align 4
  %9 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call, ptr %call, align 4
  %prev.i11.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i11.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %prev.i11.i.i, align 4
  %phy1.i = getelementptr inbounds %struct.asd_sas_event, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %phy1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %phy, ptr %phy1.i, align 4
  %event2.i = getelementptr inbounds %struct.asd_sas_event, ptr %call, i32 0, i32 2
  %12 = ptrtoint ptr %event2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %event, ptr %event2.i, align 4
  %13 = ptrtoint ptr %ha1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ha1, align 4
  %lock.i = getelementptr inbounds %struct.sas_ha_struct, ptr %14, i32 0, i32 3
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #3
  %state.i = getelementptr inbounds %struct.sas_ha_struct, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i, align 4
  %17 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.end11.if.end14_crit_edge, label %land.lhs.true.i

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

land.lhs.true.i:                                  ; preds = %if.end11
  %suspended.i = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 3
  %18 = ptrtoint ptr %suspended.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %suspended.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool7.not.i = icmp eq i32 %19, 0
  br i1 %tobool7.not.i, label %if.then.i, label %land.lhs.true.i.if.end14_crit_edge

land.lhs.true.i.if.end14_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

if.then.i:                                        ; preds = %land.lhs.true.i
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i35 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef %21, ptr noundef %14) #3
  br i1 %call.i.i.i35, label %if.end.i.i.i, label %if.then.i.sas_defer_event.exit.thread_crit_edge

if.then.i.sas_defer_event.exit.thread_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sas_defer_event.exit.thread

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %14, ptr %call, align 4
  %24 = ptrtoint ptr %prev.i11.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev.i11.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %call, ptr %21, align 4
  br label %sas_defer_event.exit.thread

sas_defer_event.exit.thread:                      ; preds = %if.end.i.i.i, %if.then.i.sas_defer_event.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #3
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true.i.if.end14_crit_edge, %if.end11.if.end14_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #3
  %lock.i36 = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i36) #3
  %state.i.i = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %sas_queue_event.exit.thread43, label %if.end.i.i

sas_queue_event.exit.thread43:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i36, i32 noundef %call2.i) #3
  br label %if.then17

if.end.i.i:                                       ; preds = %if.end14
  %28 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %state.i.i, align 4
  %30 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool3.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool3.not.i.i, label %sas_queue_event.exit, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  %31 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %call, align 4
  %cmp.i.not.i.i = icmp eq ptr %32, %call
  br i1 %cmp.i.not.i.i, label %if.then7.i.i, label %if.then4.i.i.sas_queue_event.exit.thread_crit_edge

if.then4.i.i.sas_queue_event.exit.thread_crit_edge: ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sas_queue_event.exit.thread

if.then7.i.i:                                     ; preds = %if.then4.i.i
  %prev.i.i.i37 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i.i37, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef %34, ptr noundef %1) #3
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then7.i.i.sas_queue_event.exit.thread_crit_edge

if.then7.i.i.sas_queue_event.exit.thread_crit_edge: ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sas_queue_event.exit.thread

if.end.i.i.i.i:                                   ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %35 = ptrtoint ptr %prev.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call, ptr %prev.i.i.i37, align 4
  %36 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %1, ptr %call, align 4
  %37 = ptrtoint ptr %prev.i11.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev.i11.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %call, ptr %34, align 4
  br label %sas_queue_event.exit.thread

sas_queue_event.exit.thread:                      ; preds = %if.end.i.i.i.i, %if.then7.i.i.sas_queue_event.exit.thread_crit_edge, %if.then4.i.i.sas_queue_event.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i36, i32 noundef %call2.i) #3
  br label %cleanup

sas_queue_event.exit:                             ; preds = %if.end.i.i
  %event_q.i.i = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 12
  %39 = ptrtoint ptr %event_q.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %event_q.i.i, align 4
  %call.i.i.i39 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %40, ptr noundef %work.i.i) #3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i36, i32 noundef %call2.i) #3
  br i1 %call.i.i.i39, label %sas_queue_event.exit.cleanup_crit_edge, label %sas_queue_event.exit.if.then17_crit_edge

sas_queue_event.exit.if.then17_crit_edge:         ; preds = %sas_queue_event.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then17

sas_queue_event.exit.cleanup_crit_edge:           ; preds = %sas_queue_event.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then17:                                        ; preds = %sas_queue_event.exit.if.then17_crit_edge, %sas_queue_event.exit.thread43
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %42, i32 noundef 5) #3
  tail call void @sas_free_event(ptr noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %sas_queue_event.exit.cleanup_crit_edge, %sas_queue_event.exit.thread, %sas_defer_event.exit.thread, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end8.cleanup_crit_edge ], [ 0, %if.then17 ], [ 1, %sas_queue_event.exit.cleanup_crit_edge ], [ 0, %sas_defer_event.exit.thread ], [ 1, %sas_queue_event.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sas_phy_event_worker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %work, i32 -8
  %phy1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 4
  %ha2 = getelementptr inbounds %struct.asd_sas_phy, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %ha2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha2, align 4
  %event = getelementptr i8, ptr %work, i32 48
  %4 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event, align 4
  %arrayidx = getelementptr [6 x ptr], ptr @sas_phy_event_fns, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void %7(ptr noundef %work) #3
  %dev = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 5) #3
  tail call void @sas_free_event(ptr noundef %add.ptr.i) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__ksymtab_sas_drain_work, !1, !"__ksymtab_sas_drain_work", i1 false, i1 false}
!1 = !{!"../drivers/scsi/libsas/sas_event.c", i32 88, i32 1}
!2 = !{ptr @__ksymtab_sas_notify_port_event, !3, !"__ksymtab_sas_notify_port_event", i1 false, i1 false}
!3 = !{!"../drivers/scsi/libsas/sas_event.c", i32 197, i32 1}
!4 = !{ptr @__ksymtab_sas_notify_phy_event, !5, !"__ksymtab_sas_notify_phy_event", i1 false, i1 false}
!5 = !{!"../drivers/scsi/libsas/sas_event.c", i32 228, i32 1}
!6 = !{ptr @INIT_SAS_WORK.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../include/scsi/libsas.h", i32 218, i32 2}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2155847659, i64 2155848155, i64 2155847696, i64 2155847752, i64 2155847786, i64 2155847810, i64 2155847851, i64 2155847872, i64 2155847900, i64 2155847934}
!20 = !{i64 2148494438, i64 2148494464, i64 2148494493, i64 2148494527, i64 2148494558, i64 2148494581}
!21 = !{i64 2155850895, i64 2155851391, i64 2155850932, i64 2155850988, i64 2155851022, i64 2155851046, i64 2155851087, i64 2155851108, i64 2155851136, i64 2155851170}
