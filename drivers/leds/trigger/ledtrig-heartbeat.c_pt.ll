; ModuleID = '/llk/IR_all_yes/drivers/leds/trigger/ledtrig-heartbeat.c_pt.bc'
source_filename = "../drivers/leds/trigger/ledtrig-heartbeat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.heartbeat_trig_data = type { ptr, i32, i32, %struct.timer_list, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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

@heartbeat_reboot_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @heartbeat_reboot_notifier, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@panic_notifier_list = external dso_local global %struct.atomic_notifier_head, align 4
@heartbeat_panic_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @heartbeat_panic_notifier, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@heartbeat_led_trigger = internal global { %struct.led_trigger, [48 x i8] } { %struct.led_trigger { ptr @.str, ptr @heartbeat_trig_activate, ptr @heartbeat_trig_deactivate, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr @heartbeat_trig_groups }, [48 x i8] zeroinitializer }, align 32
@__initcall__kmod_ledtrig_heartbeat__183_208_heartbeat_trig_init6 = internal global ptr @heartbeat_trig_init, section ".initcall6.init", align 4
@__exitcall_heartbeat_trig_exit = internal global ptr @heartbeat_trig_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [62 x i8] c"ledtrig_heartbeat.author=Atsushi Nemoto <anemo@mba.ocn.ne.jp>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [52 x i8] c"ledtrig_heartbeat.description=Heartbeat LED trigger\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [62 x i8] c"ledtrig_heartbeat.file=drivers/leds/trigger/ledtrig-heartbeat\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [33 x i8] c"ledtrig_heartbeat.license=GPL v2\00", section ".modinfo", align 1
@panic_heartbeats = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"heartbeat\00", [22 x i8] zeroinitializer }, align 32
@heartbeat_trig_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @heartbeat_trig_group, ptr null], [24 x i8] zeroinitializer }, align 32
@heartbeat_trig_activate.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(&heartbeat_data->timer)\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@avenrun = external dso_local local_unnamed_addr global [0 x i32], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@heartbeat_trig_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @heartbeat_trig_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@heartbeat_trig_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_invert, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_invert = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @led_invert_show, ptr @led_invert_store }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"invert\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.4 = private unnamed_addr constant [20 x i8] c"heartbeat_reboot_nb\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 180, i32 30 }
@___asan_gen_.7 = private unnamed_addr constant [19 x i8] c"heartbeat_panic_nb\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 184, i32 30 }
@___asan_gen_.10 = private unnamed_addr constant [22 x i8] c"heartbeat_led_trigger\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 159, i32 27 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"panic_heartbeats\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 160, i32 14 }
@___asan_gen_.17 = private unnamed_addr constant [22 x i8] c"heartbeat_trig_groups\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 139, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [21 x i8] c"heartbeat_trig_group\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 126, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [21 x i8] c"heartbeat_trig_attrs\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 122, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"dev_attr_invert\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 120, i32 8 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [44 x i8] c"../drivers/leds/trigger/ledtrig-heartbeat.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 100, i32 22 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_heartbeat_trig_exit, ptr @__initcall__kmod_ledtrig_heartbeat__183_208_heartbeat_trig_init6, ptr @heartbeat_trig_exit, ptr @heartbeat_reboot_nb, ptr @heartbeat_panic_nb, ptr @heartbeat_led_trigger, ptr @panic_heartbeats, ptr @.str, ptr @heartbeat_trig_groups, ptr @heartbeat_trig_activate.__key, ptr @.str.1, ptr @heartbeat_trig_group, ptr @heartbeat_trig_attrs, ptr @dev_attr_invert, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @heartbeat_reboot_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @heartbeat_panic_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @heartbeat_led_trigger to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic_heartbeats to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @heartbeat_trig_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @heartbeat_trig_activate.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @heartbeat_trig_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @heartbeat_trig_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_invert to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @heartbeat_trig_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @heartbeat_reboot_nb) #8
  %call1 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef nonnull @panic_notifier_list, ptr noundef nonnull @heartbeat_panic_nb) #8
  tail call void @led_trigger_unregister(ptr noundef nonnull @heartbeat_led_trigger) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @heartbeat_trig_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @led_trigger_register(ptr noundef nonnull @heartbeat_led_trigger) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @panic_notifier_list, ptr noundef nonnull @heartbeat_panic_nb) #8
  %call2 = tail call i32 @register_reboot_notifier(ptr noundef nonnull @heartbeat_reboot_nb) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @heartbeat_reboot_notifier(ptr nocapture noundef readnone %nb, i32 noundef %code, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @led_trigger_unregister(ptr noundef nonnull @heartbeat_led_trigger) #8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @heartbeat_panic_notifier(ptr nocapture noundef readnone %nb, i32 noundef %code, ptr nocapture noundef readnone %unused) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @panic_heartbeats, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @heartbeat_trig_activate(ptr noundef %led_cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %trigger_data1.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 26
  %1 = ptrtoint ptr %trigger_data1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %trigger_data1.i, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %led_cdev, ptr %call7.i.i, align 8
  %timer = getelementptr inbounds %struct.heartbeat_trig_data, ptr %call7.i.i, i32 0, i32 3
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @led_heartbeat_function, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @heartbeat_trig_activate.__key) #8
  %phase = getelementptr inbounds %struct.heartbeat_trig_data, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %phase to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %phase, align 4
  %blink_brightness = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 18
  %4 = ptrtoint ptr %blink_brightness to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %blink_brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 2
  %6 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_brightness, align 4
  %8 = ptrtoint ptr %blink_brightness to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %blink_brightness, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  tail call void @led_heartbeat_function(ptr noundef %timer)
  %work_flags = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %work_flags) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @heartbeat_trig_deactivate(ptr noundef %led_cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger_data.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 26
  %0 = ptrtoint ptr %trigger_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trigger_data.i, align 4
  %timer = getelementptr inbounds %struct.heartbeat_trig_data, ptr %1, i32 0, i32 3
  %call1 = tail call i32 @del_timer_sync(ptr noundef %timer) #8
  tail call void @kfree(ptr noundef %1) #8
  %work_flags = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %work_flags) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @led_heartbeat_function(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %.b = load i1, ptr @panic_heartbeats, align 4
  br i1 %.b, label %if.then, label %if.end, !prof !43

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @led_set_brightness_nosleep(ptr noundef %1, i32 noundef 0) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %work_flags = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 4
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %work_flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %new_blink_brightness = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %new_blink_brightness to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %new_blink_brightness, align 4
  %blink_brightness = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %blink_brightness to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %blink_brightness, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %phase = getelementptr i8, ptr %t, i32 -8
  %5 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phase, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb17
    i32 2, label %sw.bb28
  ]

sw.bb:                                            ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @avenrun to i32))
  %8 = load i32, ptr @avenrun, align 4
  %mul = mul i32 %8, 5
  %add = add i32 %mul, 14336
  %div = udiv i32 13762560, %add
  %add7 = add nuw nsw i32 %div, 300
  %period = getelementptr i8, ptr %t, i32 -4
  %9 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add7, ptr %period, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %add7) #8
  %10 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call2.i, ptr %period, align 4
  %11 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phase, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %phase, align 4
  %invert = getelementptr i8, ptr %t, i32 48
  %13 = ptrtoint ptr %invert to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %invert, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp eq i32 %14, 0
  br i1 %tobool13.not, label %sw.bb.sw.epilog.sink.split_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.bb17:                                          ; preds = %if.end6
  %period18 = getelementptr i8, ptr %t, i32 -4
  %15 = ptrtoint ptr %period18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %period18, align 4
  %div1978 = lshr i32 %16, 2
  %sub = add nsw i32 %div1978, -7
  %17 = ptrtoint ptr %phase to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %phase, align 4
  %invert23 = getelementptr i8, ptr %t, i32 48
  %18 = ptrtoint ptr %invert23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %invert23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool24.not = icmp eq i32 %19, 0
  br i1 %tobool24.not, label %sw.bb17.sw.epilog_crit_edge, label %sw.bb17.sw.epilog.sink.split_crit_edge

sw.bb17.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end6
  %20 = ptrtoint ptr %phase to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %phase, align 4
  %invert32 = getelementptr i8, ptr %t, i32 48
  %21 = ptrtoint ptr %invert32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %invert32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool33.not = icmp eq i32 %22, 0
  br i1 %tobool33.not, label %sw.bb28.sw.epilog.sink.split_crit_edge, label %sw.bb28.sw.epilog_crit_edge

sw.bb28.sw.epilog_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb28.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %if.end6
  %period37 = getelementptr i8, ptr %t, i32 -4
  %23 = ptrtoint ptr %period37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %period37, align 4
  %div3979 = lshr i32 %24, 2
  %.neg = add i32 %24, -7
  %sub42 = sub i32 %.neg, %div3979
  %25 = ptrtoint ptr %phase to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %phase, align 4
  %invert44 = getelementptr i8, ptr %t, i32 48
  %26 = ptrtoint ptr %invert44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %invert44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool45.not = icmp eq i32 %27, 0
  br i1 %tobool45.not, label %sw.default.sw.epilog_crit_edge, label %sw.default.sw.epilog.sink.split_crit_edge

sw.default.sw.epilog.sink.split_crit_edge:        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.default.sw.epilog.sink.split_crit_edge, %sw.bb28.sw.epilog.sink.split_crit_edge, %sw.bb17.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %delay.0.ph = phi i32 [ 7, %sw.bb.sw.epilog.sink.split_crit_edge ], [ %sub, %sw.bb17.sw.epilog.sink.split_crit_edge ], [ 7, %sw.bb28.sw.epilog.sink.split_crit_edge ], [ %sub42, %sw.default.sw.epilog.sink.split_crit_edge ]
  %blink_brightness47 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 18
  %28 = ptrtoint ptr %blink_brightness47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %blink_brightness47, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.default.sw.epilog_crit_edge, %sw.bb28.sw.epilog_crit_edge, %sw.bb17.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %brightness.0 = phi i32 [ 0, %sw.default.sw.epilog_crit_edge ], [ 0, %sw.bb28.sw.epilog_crit_edge ], [ 0, %sw.bb17.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ %29, %sw.epilog.sink.split ]
  %delay.0 = phi i32 [ %sub42, %sw.default.sw.epilog_crit_edge ], [ 7, %sw.bb28.sw.epilog_crit_edge ], [ %sub, %sw.bb17.sw.epilog_crit_edge ], [ 7, %sw.bb.sw.epilog_crit_edge ], [ %delay.0.ph, %sw.epilog.sink.split ]
  tail call void @led_set_brightness_nosleep(ptr noundef %1, i32 noundef %brightness.0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %add49 = add i32 %30, %delay.0
  %call50 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add49) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_set_brightness_nosleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @led_invert_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %trigger_data.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %trigger_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trigger_data.i, align 4
  %invert = getelementptr inbounds %struct.heartbeat_trig_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %invert to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %invert, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @led_invert_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %trigger_data.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %trigger_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trigger_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #8
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %state, align 4, !annotation !44
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3 = icmp ne i32 %6, 0
  %lnot.ext = zext i1 %tobool3 to i32
  %invert = getelementptr inbounds %struct.heartbeat_trig_data, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %invert to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %lnot.ext, ptr %invert, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_trigger_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !24, !26, !27, !29, !31, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_ledtrig_heartbeat__183_208_heartbeat_trig_init6, !1, !"__initcall__kmod_ledtrig_heartbeat__183_208_heartbeat_trig_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/trigger/ledtrig-heartbeat.c", i32 208, i32 1}
!2 = !{ptr @__exitcall_heartbeat_trig_exit, !3, !"__exitcall_heartbeat_trig_exit", i1 false, i1 false}
!3 = !{!"../drivers/leds/trigger/ledtrig-heartbeat.c", i32 209, i32 1}
!4 = !{ptr @__UNIQUE_ID_author184, !5, !"__UNIQUE_ID_author184", i1 false, i1 false}
!5 = !{!"../drivers/leds/trigger/ledtrig-heartbeat.c", i32 211, i32 1}
!6 = !{ptr @__UNIQUE_ID_description185, !7, !"__UNIQUE_ID_description185", i1 false, i1 false}
!7 = !{!"../drivers/leds/trigger/ledtrig-heartbeat.c", i32 212, i32 1}
!8 = !{ptr @__UNIQUE_ID_file186, !9, !"__UNIQUE_ID_file186", i1 false, i1 false}
!9 = !{!"../drivers/leds/trigger/ledtrig-heartbeat.c", i32 213, i32 1}
!10 = !{ptr @__UNIQUE_ID_license187, !9, !"__UNIQUE_ID_license187", i1 false, i1 false}
!11 = !{ptr @heartbeat_reboot_nb, !12, !"heartbeat_reboot_nb", i1 false, i1 false}
!12 = !{!"../drivers/leds/trigger/ledtrig-heartbeat.c", i32 180, i32 30}
!13 = !{ptr @heartbeat_panic_nb, !14, !"heartbeat_panic_nb", i1 false, i1 false}
!14 = !{!"../drivers/leds/trigger/ledtrig-heartbeat.c", i32 184, i32 30}
!15 = distinct !{null, !16, !"panic_heartbeats", i1 false, i1 false}
!16 = !{!"../drivers/leds/trigger/ledtrig-heartbeat.c", i32 23, i32 12}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/leds/trigger/ledtrig-heartbeat.c", i32 160, i32 14}
!19 = !{ptr @heartbeat_led_trigger, !20, !"heartbeat_led_trigger", i1 false, i1 false}
!20 = !{!"../drivers/leds/trigger/ledtrig-heartbeat.c", i32 159, i32 27}
!21 = !{ptr @heartbeat_trig_activate.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/leds/trigger/ledtrig-heartbeat.c", i32 139, i32 2}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @heartbeat_trig_groups, !25, !"heartbeat_trig_groups", i1 false, i1 false}
!25 = !{!"../drivers/leds/trigger/ledtrig-heartbeat.c", i32 126, i32 1}
!26 = !{ptr @heartbeat_trig_group, !25, !"heartbeat_trig_group", i1 false, i1 false}
!27 = !{ptr @heartbeat_trig_attrs, !28, !"heartbeat_trig_attrs", i1 false, i1 false}
!28 = !{!"../drivers/leds/trigger/ledtrig-heartbeat.c", i32 122, i32 26}
!29 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/leds/trigger/ledtrig-heartbeat.c", i32 120, i32 8}
!31 = !{ptr @dev_attr_invert, !30, !"dev_attr_invert", i1 false, i1 false}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/leds/trigger/ledtrig-heartbeat.c", i32 100, i32 22}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{!"auto-init"}
