; ModuleID = '/llk/IR_all_yes/drivers/net/phy/mii_timestamper.c_pt.bc'
source_filename = "../drivers/net/phy/mii_timestamper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+register_mii_tstamp_controller\22, \22a\22\09"
module asm "\09.weak\09__crc_register_mii_tstamp_controller\09\09\09\09"
module asm "\09.long\09__crc_register_mii_tstamp_controller\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_mii_tstamp_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22register_mii_tstamp_controller\22\09\09\09\09\09"
module asm "__kstrtabns_register_mii_tstamp_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unregister_mii_tstamp_controller\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_mii_tstamp_controller\09\09\09\09"
module asm "\09.long\09__crc_unregister_mii_tstamp_controller\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_mii_tstamp_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_mii_tstamp_controller\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_mii_tstamp_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+register_mii_timestamper\22, \22a\22\09"
module asm "\09.weak\09__crc_register_mii_timestamper\09\09\09\09"
module asm "\09.long\09__crc_register_mii_timestamper\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_mii_timestamper:\09\09\09\09\09"
module asm "\09.asciz \09\22register_mii_timestamper\22\09\09\09\09\09"
module asm "__kstrtabns_register_mii_timestamper:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unregister_mii_timestamper\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_mii_timestamper\09\09\09\09"
module asm "\09.long\09__crc_unregister_mii_timestamper\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_mii_timestamper:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_mii_timestamper\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_mii_timestamper:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mii_timestamping_desc = type { %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mii_timestamper = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mii_timestamping_ctrl = type { ptr, ptr }

@tstamping_devices_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tstamping_devices_lock, i64 52), ptr getelementptr (i8, ptr @tstamping_devices_lock, i64 52) }, ptr @tstamping_devices_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@mii_timestamping_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @mii_timestamping_devices, ptr @mii_timestamping_devices }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_register_mii_tstamp_controller = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_mii_tstamp_controller = external dso_local constant [0 x i8], align 1
@__ksymtab_register_mii_tstamp_controller = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_mii_tstamp_controller to i32), ptr @__kstrtab_register_mii_tstamp_controller, ptr @__kstrtabns_register_mii_tstamp_controller }, section "___ksymtab+register_mii_tstamp_controller", align 4
@__kstrtab_unregister_mii_tstamp_controller = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_mii_tstamp_controller = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_mii_tstamp_controller = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_mii_tstamp_controller to i32), ptr @__kstrtab_unregister_mii_tstamp_controller, ptr @__kstrtabns_unregister_mii_tstamp_controller }, section "___ksymtab+unregister_mii_tstamp_controller", align 4
@__kstrtab_register_mii_timestamper = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_mii_timestamper = external dso_local constant [0 x i8], align 1
@__ksymtab_register_mii_timestamper = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_mii_timestamper to i32), ptr @__kstrtab_register_mii_timestamper, ptr @__kstrtabns_register_mii_timestamper }, section "___ksymtab+register_mii_timestamper", align 4
@__kstrtab_unregister_mii_timestamper = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_mii_timestamper = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_mii_timestamper = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_mii_timestamper to i32), ptr @__kstrtab_unregister_mii_timestamper, ptr @__kstrtabns_unregister_mii_timestamper }, section "___ksymtab+unregister_mii_timestamper", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tstamping_devices_lock.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tstamping_devices_lock\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [23 x i8] c"tstamping_devices_lock\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [25 x i8] c"mii_timestamping_devices\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 9, i32 8 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [37 x i8] c"../drivers/net/phy/mii_timestamper.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 10, i32 8 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_register_mii_timestamper, ptr @__ksymtab_register_mii_tstamp_controller, ptr @__ksymtab_unregister_mii_timestamper, ptr @__ksymtab_unregister_mii_tstamp_controller, ptr @tstamping_devices_lock, ptr @mii_timestamping_devices, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tstamping_devices_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_timestamping_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_mii_tstamp_controller(ptr noundef %device, ptr noundef %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %ctrl1 = getelementptr inbounds %struct.mii_timestamping_desc, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ctrl, ptr %ctrl1, align 8
  %device2 = getelementptr inbounds %struct.mii_timestamping_desc, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %device2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %device, ptr %device2, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @tstamping_devices_lock, i32 noundef 0) #3
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull @mii_timestamping_devices, ptr noundef %6, ptr noundef nonnull %call7.i.i) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mii_timestamping_devices, ptr %prev.i, align 4
  store ptr %call7.i.i, ptr @mii_timestamping_devices, align 4
  store ptr %6, ptr getelementptr inbounds (%struct.list_head, ptr @mii_timestamping_devices, i32 0, i32 1), align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr @mii_timestamping_devices, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @tstamping_devices_lock) #3
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_mii_tstamp_controller(ptr noundef readnone %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @tstamping_devices_lock, i32 noundef 0) #3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %this.0.in = phi ptr [ @mii_timestamping_devices, %entry ], [ %this.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %this.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %this.0 = load ptr, ptr %this.0.in, align 4
  %cmp.i.not = icmp eq ptr %this.0, @mii_timestamping_devices
  br i1 %cmp.i.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %for.cond
  %device2 = getelementptr inbounds %struct.mii_timestamping_desc, ptr %this.0, i32 0, i32 2
  %1 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device2, align 4
  %cmp = icmp eq ptr %2, %device
  br i1 %cmp, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %this.0) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %this.0, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %this.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %this.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %this.0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %this.0, ptr %this.0, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %this.0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %this.0, ptr %prev.i3.i, align 4
  tail call void @kfree(ptr noundef %this.0) #3
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit, %for.cond.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @tstamping_devices_lock) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @register_mii_timestamper(ptr noundef readnone %node, i32 noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @tstamping_devices_lock, i32 noundef 0) #3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %this.0.in = phi ptr [ @mii_timestamping_devices, %entry ], [ %this.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %this.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %this.0 = load ptr, ptr %this.0.in, align 4
  %cmp.i.not = icmp eq ptr %this.0, @mii_timestamping_devices
  br i1 %cmp.i.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mutex_unlock(ptr noundef nonnull @tstamping_devices_lock) #3
  br label %cond.false

for.body:                                         ; preds = %for.cond
  %device = getelementptr inbounds %struct.mii_timestamping_desc, ptr %this.0, i32 0, i32 2
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %cmp = icmp eq ptr %4, %node
  br i1 %cmp, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond

if.then:                                          ; preds = %for.body
  %ctrl = getelementptr inbounds %struct.mii_timestamping_desc, ptr %this.0, i32 0, i32 1
  %5 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call2 = tail call ptr %8(ptr noundef %2, i32 noundef %port) #3
  %cmp.i21 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i21, label %if.then.for.end_crit_edge, label %if.then4

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %device.le = getelementptr inbounds %struct.mii_timestamping_desc, ptr %this.0, i32 0, i32 2
  %9 = ptrtoint ptr %device.le to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device.le, align 4
  %device6 = getelementptr inbounds %struct.mii_timestamper, ptr %call2, i32 0, i32 5
  %11 = ptrtoint ptr %device6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %device6, align 4
  %12 = load ptr, ptr %device.le, align 4
  %call8 = tail call ptr @get_device(ptr noundef %12) #3
  br label %for.end

for.end:                                          ; preds = %if.then4, %if.then.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @tstamping_devices_lock) #3
  %tobool10.not = icmp eq ptr %call2, null
  br i1 %tobool10.not, label %for.end.cond.false_crit_edge, label %for.end.cond.end_crit_edge

for.end.cond.end_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

for.end.cond.false_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.false:                                       ; preds = %for.end.cond.false_crit_edge, %for.end.thread
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.end.cond.end_crit_edge
  %cond = phi ptr [ inttoptr (i32 -517 to ptr), %cond.false ], [ %call2, %for.end.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_mii_timestamper(ptr noundef %mii_ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mii_ts, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.mii_timestamper, ptr %mii_ts, i32 0, i32 5
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @tstamping_devices_lock, i32 noundef 0) #3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end3
  %this.0.in = phi ptr [ @mii_timestamping_devices, %if.end3 ], [ %this.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %this.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %this.0 = load ptr, ptr %this.0.in, align 4
  %cmp.i.not = icmp eq ptr %this.0, @mii_timestamping_devices
  br i1 %cmp.i.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %for.cond
  %device5 = getelementptr inbounds %struct.mii_timestamping_desc, ptr %this.0, i32 0, i32 2
  %3 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device5, align 4
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %cmp = icmp eq ptr %4, %6
  br i1 %cmp, label %if.then7, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %device5.le = getelementptr inbounds %struct.mii_timestamping_desc, ptr %this.0, i32 0, i32 2
  %ctrl = getelementptr inbounds %struct.mii_timestamping_desc, ptr %this.0, i32 0, i32 1
  %7 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrl, align 4
  %release_channel = getelementptr inbounds %struct.mii_timestamping_ctrl, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %release_channel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %release_channel, align 4
  tail call void %10(ptr noundef %4, ptr noundef nonnull %mii_ts) #3
  %11 = ptrtoint ptr %device5.le to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device5.le, align 4
  tail call void @put_device(ptr noundef %12) #3
  br label %for.end

for.end:                                          ; preds = %if.then7, %for.cond.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @tstamping_devices_lock) #3
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__ksymtab_register_mii_tstamp_controller, !1, !"__ksymtab_register_mii_tstamp_controller", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/mii_timestamper.c", i32 45, i32 1}
!2 = !{ptr @__ksymtab_unregister_mii_tstamp_controller, !3, !"__ksymtab_unregister_mii_tstamp_controller", i1 false, i1 false}
!3 = !{!"../drivers/net/phy/mii_timestamper.c", i32 68, i32 1}
!4 = !{ptr @__ksymtab_register_mii_timestamper, !5, !"__ksymtab_register_mii_timestamper", i1 false, i1 false}
!5 = !{!"../drivers/net/phy/mii_timestamper.c", i32 101, i32 1}
!6 = !{ptr @__ksymtab_unregister_mii_timestamper, !7, !"__ksymtab_unregister_mii_timestamper", i1 false, i1 false}
!7 = !{!"../drivers/net/phy/mii_timestamper.c", i32 135, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/phy/mii_timestamper.c", i32 10, i32 8}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @tstamping_devices_lock, !9, !"tstamping_devices_lock", i1 false, i1 false}
!12 = !{ptr @mii_timestamping_devices, !13, !"mii_timestamping_devices", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/mii_timestamper.c", i32 9, i32 8}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
