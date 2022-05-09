; ModuleID = '/llk/IR_all_yes/drivers/net/phy/phy_led_triggers.c_pt.bc'
source_filename = "../drivers/net/phy/phy_led_triggers.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+phy_led_trigger_change_speed\22, \22a\22\09"
module asm "\09.weak\09__crc_phy_led_trigger_change_speed\09\09\09\09"
module asm "\09.long\09__crc_phy_led_trigger_change_speed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_led_trigger_change_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_led_trigger_change_speed\22\09\09\09\09\09"
module asm "__kstrtabns_phy_led_trigger_change_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+phy_led_triggers_register\22, \22a\22\09"
module asm "\09.weak\09__crc_phy_led_triggers_register\09\09\09\09"
module asm "\09.long\09__crc_phy_led_triggers_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_led_triggers_register:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_led_triggers_register\22\09\09\09\09\09"
module asm "__kstrtabns_phy_led_triggers_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+phy_led_triggers_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_phy_led_triggers_unregister\09\09\09\09"
module asm "\09.long\09__crc_phy_led_triggers_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_led_triggers_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_led_triggers_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_phy_led_triggers_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.phy_led_trigger = type { %struct.led_trigger, [76 x i8], i32 }
%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }

@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"No phy led trigger registered for speed(%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@__kstrtab_phy_led_trigger_change_speed = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_led_trigger_change_speed = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_led_trigger_change_speed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_led_trigger_change_speed to i32), ptr @__kstrtab_phy_led_trigger_change_speed, ptr @__kstrtabns_phy_led_trigger_change_speed }, section "___ksymtab_gpl+phy_led_trigger_change_speed", align 4
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@__kstrtab_phy_led_triggers_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_led_triggers_register = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_led_triggers_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_led_triggers_register to i32), ptr @__kstrtab_phy_led_triggers_register, ptr @__kstrtabns_phy_led_triggers_register }, section "___ksymtab_gpl+phy_led_triggers_register", align 4
@__kstrtab_phy_led_triggers_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_led_triggers_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_led_triggers_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_led_triggers_unregister to i32), ptr @__kstrtab_phy_led_triggers_unregister, ptr @__kstrtabns_phy_led_triggers_unregister }, section "___ksymtab_gpl+phy_led_triggers_unregister", align 4
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s:%02x:%s\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 42, i32 9 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 102, i32 64 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [38 x i8] c"../drivers/net/phy/phy_led_triggers.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 63, i32 22 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_phy_led_trigger_change_speed, ptr @__ksymtab_phy_led_triggers_register, ptr @__ksymtab_phy_led_triggers_unregister, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @phy_led_trigger_change_speed(ptr nocapture noundef %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr inbounds %struct.phy_device, ptr %phy, i32 0, i32 4
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %link, align 8
  %1 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %last_triggered.i = getelementptr inbounds %struct.phy_device, ptr %phy, i32 0, i32 23
  %2 = ptrtoint ptr %last_triggered.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %last_triggered.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.then.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @led_trigger_event(ptr noundef nonnull %3, i32 noundef 0) #6
  %led_link_trigger.i = getelementptr inbounds %struct.phy_device, ptr %phy, i32 0, i32 24
  %4 = ptrtoint ptr %led_link_trigger.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %led_link_trigger.i, align 8
  tail call void @led_trigger_event(ptr noundef %5, i32 noundef 0) #6
  %6 = ptrtoint ptr %last_triggered.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %last_triggered.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %speed = getelementptr inbounds %struct.phy_device, ptr %phy, i32 0, i32 8
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %phy_num_led_triggers.i = getelementptr inbounds %struct.phy_device, ptr %phy, i32 0, i32 22
  %9 = ptrtoint ptr %phy_num_led_triggers.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phy_num_led_triggers.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp11.not.i = icmp eq i32 %10, 0
  br i1 %cmp11.not.i, label %if.end2.if.then5_crit_edge, label %for.body.lr.ph.i

if.end2.if.then5_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

for.body.lr.ph.i:                                 ; preds = %if.end2
  %phy_led_triggers.i = getelementptr inbounds %struct.phy_device, ptr %phy, i32 0, i32 21
  %11 = ptrtoint ptr %phy_led_triggers.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy_led_triggers.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %speed1.i = getelementptr %struct.phy_led_trigger, ptr %12, i32 %i.012.i, i32 2
  %13 = ptrtoint ptr %speed1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %speed1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %8)
  %cmp2.i = icmp eq i32 %14, %8
  br i1 %cmp2.i, label %phy_speed_to_led_trigger.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %10
  br i1 %exitcond.not.i, label %for.inc.i.if.then5_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.then5_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

phy_speed_to_led_trigger.exit:                    ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.phy_led_trigger, ptr %12, i32 %i.012.i
  %tobool4.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool4.not, label %phy_speed_to_led_trigger.exit.if.then5_crit_edge, label %if.end7

phy_speed_to_led_trigger.exit.if.then5_crit_edge: ; preds = %phy_speed_to_led_trigger.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

if.then5:                                         ; preds = %phy_speed_to_led_trigger.exit.if.then5_crit_edge, %for.inc.i.if.then5_crit_edge, %if.end2.if.then5_crit_edge
  %attached_dev = getelementptr inbounds %struct.phy_device, ptr %phy, i32 0, i32 36
  %15 = ptrtoint ptr %attached_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %attached_dev, align 8
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %16, ptr noundef nonnull @.str, i32 noundef %8) #9
  %last_triggered.i36 = getelementptr inbounds %struct.phy_device, ptr %phy, i32 0, i32 23
  %17 = ptrtoint ptr %last_triggered.i36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %last_triggered.i36, align 4
  %tobool.not.i37 = icmp eq ptr %18, null
  br i1 %tobool.not.i37, label %if.then5.cleanup_crit_edge, label %if.then.i39

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i39:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @led_trigger_event(ptr noundef nonnull %18, i32 noundef 0) #6
  %led_link_trigger.i38 = getelementptr inbounds %struct.phy_device, ptr %phy, i32 0, i32 24
  %19 = ptrtoint ptr %led_link_trigger.i38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %led_link_trigger.i38, align 8
  tail call void @led_trigger_event(ptr noundef %20, i32 noundef 0) #6
  %21 = ptrtoint ptr %last_triggered.i36 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %last_triggered.i36, align 4
  br label %cleanup

if.end7:                                          ; preds = %phy_speed_to_led_trigger.exit
  %last_triggered = getelementptr inbounds %struct.phy_device, ptr %phy, i32 0, i32 23
  %22 = ptrtoint ptr %last_triggered to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %last_triggered, align 4
  %cmp8.not = icmp eq ptr %arrayidx.i, %23
  br i1 %cmp8.not, label %if.end7.cleanup_crit_edge, label %if.then9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  %tobool11.not = icmp eq ptr %23, null
  br i1 %tobool11.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %led_link_trigger = getelementptr inbounds %struct.phy_device, ptr %phy, i32 0, i32 24
  %24 = ptrtoint ptr %led_link_trigger to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %led_link_trigger, align 8
  tail call void @led_trigger_event(ptr noundef %25, i32 noundef 255) #6
  br label %if.end15

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @led_trigger_event(ptr noundef nonnull %23, i32 noundef 0) #6
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then12
  tail call void @led_trigger_event(ptr noundef nonnull %arrayidx.i, i32 noundef 255) #6
  %26 = ptrtoint ptr %last_triggered to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx.i, ptr %last_triggered, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end7.cleanup_crit_edge, %if.then.i39, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.i, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_event(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phy_led_triggers_register(ptr noundef %phy) #0 align 64 {
entry:
  %speeds = alloca [50 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %speeds) #6
  %0 = call ptr @memset(ptr %speeds, i32 255, i32 200)
  %call = call i32 @phy_supported_speeds(ptr noundef %phy, ptr noundef nonnull %speeds, i32 noundef 50) #6
  %phy_num_led_triggers = getelementptr inbounds %struct.phy_device, ptr %phy, i32 0, i32 22
  %1 = ptrtoint ptr %phy_num_led_triggers to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call, ptr %phy_num_led_triggers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %phy, i32 noundef 160, i32 noundef 3520) #6
  %led_link_trigger = getelementptr inbounds %struct.phy_device, ptr %phy, i32 0, i32 24
  %2 = ptrtoint ptr %led_link_trigger to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %led_link_trigger, align 8
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.out_clear_crit_edge, label %if.end6

if.end.out_clear_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_clear

if.end6:                                          ; preds = %if.end
  %speed1.i = getelementptr inbounds %struct.phy_led_trigger, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %speed1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %speed1.i, align 4
  %name.i = getelementptr inbounds %struct.phy_led_trigger, ptr %call.i, i32 0, i32 1
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phy, i32 0, i32 1
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 8
  %id.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 2
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phy, i32 0, i32 6
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i, align 8
  %call.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 76, ptr noundef nonnull @.str.2, ptr noundef %id.i.i, i32 noundef %7, ptr noundef nonnull @.str.1) #6
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %name.i, ptr %call.i, align 4
  %call.i75 = call i32 @led_trigger_register(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool9.not = icmp eq i32 %call.i75, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.out_free_link_crit_edge

if.end6.out_free_link_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_link

if.end11:                                         ; preds = %if.end6
  %9 = ptrtoint ptr %phy_num_led_triggers to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phy_num_led_triggers, align 8
  %11 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 160) #6
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !21

devm_kcalloc.exit.thread:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %phy_led_triggers84 = getelementptr inbounds %struct.phy_device, ptr %phy, i32 0, i32 21
  %13 = ptrtoint ptr %phy_led_triggers84 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %phy_led_triggers84, align 4
  br label %out_unreg_link

devm_kcalloc.exit:                                ; preds = %if.end11
  %14 = extractvalue { i32, i1 } %11, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %phy, i32 noundef %14, i32 noundef 3520) #6
  %phy_led_triggers = getelementptr inbounds %struct.phy_device, ptr %phy, i32 0, i32 21
  %15 = ptrtoint ptr %phy_led_triggers to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call5.i.i, ptr %phy_led_triggers, align 4
  %tobool17.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool17.not, label %devm_kcalloc.exit.out_unreg_link_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.out_unreg_link_crit_edge:       ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unreg_link

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %16 = ptrtoint ptr %phy_num_led_triggers to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phy_num_led_triggers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp87.not = icmp eq i32 %17, 0
  br i1 %cmp87.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.088 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %18 = ptrtoint ptr %phy_led_triggers to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy_led_triggers, align 4
  %arrayidx = getelementptr %struct.phy_led_trigger, ptr %19, i32 %i.088
  %arrayidx22 = getelementptr [50 x i32], ptr %speeds, i32 0, i32 %i.088
  %20 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx22, align 4
  %call24 = call ptr @phy_speed_to_str(i32 noundef %21) #6
  %speed1.i76 = getelementptr %struct.phy_led_trigger, ptr %19, i32 %i.088, i32 2
  %22 = ptrtoint ptr %speed1.i76 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %speed1.i76, align 4
  %name.i77 = getelementptr %struct.phy_led_trigger, ptr %19, i32 %i.088, i32 1
  %23 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus.i.i, align 8
  %id.i.i79 = getelementptr inbounds %struct.mii_bus, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr.i.i, align 8
  %call.i.i81 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i77, i32 noundef 76, ptr noundef nonnull @.str.2, ptr noundef %id.i.i79, i32 noundef %26, ptr noundef %call24) #6
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %name.i77, ptr %arrayidx, align 4
  %call.i82 = call i32 @led_trigger_register(ptr noundef %arrayidx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %tobool26.not = icmp eq i32 %call.i82, 0
  br i1 %tobool26.not, label %for.inc, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.088)
  %tobool29.not89 = icmp eq i32 %i.088, 0
  br i1 %tobool29.not89, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.088, 1
  %28 = ptrtoint ptr %phy_num_led_triggers to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %phy_num_led_triggers, align 8
  %cmp = icmp ult i32 %inc, %29
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %last_triggered = getelementptr inbounds %struct.phy_device, ptr %phy, i32 0, i32 23
  %30 = ptrtoint ptr %last_triggered to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %last_triggered, align 4
  call void @phy_led_trigger_change_speed(ptr noundef %phy)
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.190 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.088, %while.cond.preheader.while.body_crit_edge ]
  %dec = add i32 %i.190, -1
  %31 = ptrtoint ptr %phy_led_triggers to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phy_led_triggers, align 4
  %arrayidx31 = getelementptr %struct.phy_led_trigger, ptr %32, i32 %dec
  call void @led_trigger_unregister(ptr noundef %arrayidx31) #6
  %tobool29.not = icmp eq i32 %dec, 0
  br i1 %tobool29.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %33 = ptrtoint ptr %phy_led_triggers to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %phy_led_triggers, align 4
  call void @devm_kfree(ptr noundef %phy, ptr noundef %34) #6
  br label %out_unreg_link

out_unreg_link:                                   ; preds = %while.end, %devm_kcalloc.exit.out_unreg_link_crit_edge, %devm_kcalloc.exit.thread
  %err.0 = phi i32 [ %call.i82, %while.end ], [ -12, %devm_kcalloc.exit.out_unreg_link_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  %35 = ptrtoint ptr %led_link_trigger to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %led_link_trigger, align 8
  call void @led_trigger_unregister(ptr noundef %36) #6
  br label %out_free_link

out_free_link:                                    ; preds = %out_unreg_link, %if.end6.out_free_link_crit_edge
  %err.1 = phi i32 [ %call.i75, %if.end6.out_free_link_crit_edge ], [ %err.0, %out_unreg_link ]
  %37 = ptrtoint ptr %led_link_trigger to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %led_link_trigger, align 8
  call void @devm_kfree(ptr noundef %phy, ptr noundef %38) #6
  %39 = ptrtoint ptr %led_link_trigger to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %led_link_trigger, align 8
  br label %out_clear

out_clear:                                        ; preds = %out_free_link, %if.end.out_clear_crit_edge
  %err.2 = phi i32 [ %err.1, %out_free_link ], [ -12, %if.end.out_clear_crit_edge ]
  %40 = ptrtoint ptr %phy_num_led_triggers to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %phy_num_led_triggers, align 8
  br label %cleanup

cleanup:                                          ; preds = %out_clear, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %out_clear ], [ 0, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %speeds) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_supported_speeds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_speed_to_str(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @phy_led_triggers_unregister(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_num_led_triggers = getelementptr inbounds %struct.phy_device, ptr %phy, i32 0, i32 22
  %0 = ptrtoint ptr %phy_num_led_triggers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_num_led_triggers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7.not = icmp eq i32 %1, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %phy_led_triggers = getelementptr inbounds %struct.phy_device, ptr %phy, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %phy_led_triggers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_led_triggers, align 4
  %arrayidx = getelementptr %struct.phy_led_trigger, ptr %3, i32 %i.08
  tail call void @led_trigger_unregister(ptr noundef %arrayidx) #6
  %inc = add nuw i32 %i.08, 1
  %4 = ptrtoint ptr %phy_num_led_triggers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_num_led_triggers, align 8
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %led_link_trigger = getelementptr inbounds %struct.phy_device, ptr %phy, i32 0, i32 24
  %6 = ptrtoint ptr %led_link_trigger to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %led_link_trigger, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @led_trigger_unregister(ptr noundef nonnull %7) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_trigger_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/phy_led_triggers.c", i32 42, i32 9}
!2 = !{ptr @__ksymtab_phy_led_trigger_change_speed, !3, !"__ksymtab_phy_led_trigger_change_speed", i1 false, i1 false}
!3 = !{!"../drivers/net/phy/phy_led_triggers.c", i32 58, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/phy/phy_led_triggers.c", i32 102, i32 64}
!6 = !{ptr @__ksymtab_phy_led_triggers_register, !7, !"__ksymtab_phy_led_triggers_register", i1 false, i1 false}
!7 = !{!"../drivers/net/phy/phy_led_triggers.c", i32 140, i32 1}
!8 = !{ptr @__ksymtab_phy_led_triggers_unregister, !9, !"__ksymtab_phy_led_triggers_unregister", i1 false, i1 false}
!9 = !{!"../drivers/net/phy/phy_led_triggers.c", i32 152, i32 1}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/phy_led_triggers.c", i32 63, i32 22}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 1, i32 2000}
