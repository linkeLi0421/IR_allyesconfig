; ModuleID = '/llk/IR_all_yes/drivers/leds/trigger/ledtrig-activity.c_pt.bc'
source_filename = "../drivers/leds/trigger/ledtrig-activity.c"
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
%struct.cpumask = type { [1 x i32] }
%struct.kernel_cpustat = type { [10 x i64] }
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
%struct.activity_data = type { %struct.timer_list, ptr, i64, i64, i32, i32, i32 }
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

@activity_reboot_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @activity_reboot_notifier, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@panic_notifier_list = external dso_local global %struct.atomic_notifier_head, align 4
@activity_panic_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @activity_panic_notifier, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@activity_led_trigger = internal global { %struct.led_trigger, [48 x i8] } { %struct.led_trigger { ptr @.str, ptr @activity_activate, ptr @activity_deactivate, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr @activity_led_groups }, [48 x i8] zeroinitializer }, align 32
@__initcall__kmod_ledtrig_activity__189_265_activity_init6 = internal global ptr @activity_init, section ".initcall6.init", align 4
@__exitcall_activity_exit = internal global ptr @activity_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author190 = internal constant [49 x i8] c"ledtrig_activity.author=Willy Tarreau <w@1wt.eu>\00", section ".modinfo", align 1
@__UNIQUE_ID_description191 = internal constant [50 x i8] c"ledtrig_activity.description=Activity LED trigger\00", section ".modinfo", align 1
@__UNIQUE_ID_file192 = internal constant [60 x i8] c"ledtrig_activity.file=drivers/leds/trigger/ledtrig-activity\00", section ".modinfo", align 1
@__UNIQUE_ID_license193 = internal constant [32 x i8] c"ledtrig_activity.license=GPL v2\00", section ".modinfo", align 1
@panic_detected = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"activity\00", [23 x i8] zeroinitializer }, align 32
@activity_led_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @activity_led_group, ptr null], [24 x i8] zeroinitializer }, align 32
@activity_activate.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&activity_data->timer)\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kernel_cpustat = external dso_local global %struct.kernel_cpustat, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@activity_led_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @activity_led_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@activity_led_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_invert, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_invert = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @led_invert_show, ptr @led_invert_store }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"invert\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [19 x i8] c"activity_reboot_nb\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 237, i32 30 }
@___asan_gen_.7 = private unnamed_addr constant [18 x i8] c"activity_panic_nb\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 241, i32 30 }
@___asan_gen_.10 = private unnamed_addr constant [21 x i8] c"activity_led_trigger\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 216, i32 27 }
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"panic_detected\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 217, i32 16 }
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"activity_led_groups\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 198, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"activity_led_group\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 185, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"activity_led_attrs\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 181, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"dev_attr_invert\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 179, i32 8 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [43 x i8] c"../drivers/leds/trigger/ledtrig-activity.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 159, i32 22 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file192, ptr @__UNIQUE_ID_license193, ptr @__exitcall_activity_exit, ptr @__initcall__kmod_ledtrig_activity__189_265_activity_init6, ptr @activity_exit, ptr @activity_reboot_nb, ptr @activity_panic_nb, ptr @activity_led_trigger, ptr @panic_detected, ptr @.str, ptr @activity_led_groups, ptr @activity_activate.__key, ptr @.str.1, ptr @activity_led_group, ptr @activity_led_attrs, ptr @dev_attr_invert, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @activity_reboot_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @activity_panic_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @activity_led_trigger to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic_detected to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @activity_led_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @activity_activate.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @activity_led_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @activity_led_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_invert to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @activity_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @activity_reboot_nb) #10
  %call1 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef nonnull @panic_notifier_list, ptr noundef nonnull @activity_panic_nb) #10
  tail call void @led_trigger_unregister(ptr noundef nonnull @activity_led_trigger) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @activity_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @led_trigger_register(ptr noundef nonnull @activity_led_trigger) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @panic_notifier_list, ptr noundef nonnull @activity_panic_nb) #10
  %call2 = tail call i32 @register_reboot_notifier(ptr noundef nonnull @activity_reboot_nb) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @activity_reboot_notifier(ptr nocapture noundef readnone %nb, i32 noundef %code, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @led_trigger_unregister(ptr noundef nonnull @activity_led_trigger) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @activity_panic_notifier(ptr nocapture noundef readnone %nb, i32 noundef %code, ptr nocapture noundef readnone %unused) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @panic_detected, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @activity_activate(ptr noundef %led_cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 88) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %trigger_data1.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 26
  %1 = ptrtoint ptr %trigger_data1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %trigger_data1.i, align 4
  %led_cdev1 = getelementptr inbounds %struct.activity_data, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %led_cdev1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %led_cdev, ptr %led_cdev1, align 8
  tail call void @init_timer_key(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @led_activity_function, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @activity_activate.__key) #10
  %blink_brightness = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 18
  %3 = ptrtoint ptr %blink_brightness to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %blink_brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 2
  %5 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_brightness, align 4
  %7 = ptrtoint ptr %blink_brightness to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %blink_brightness, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  tail call void @led_activity_function(ptr noundef nonnull %call7.i.i)
  %work_flags = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %work_flags) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @activity_deactivate(ptr noundef %led_cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger_data.i = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 26
  %0 = ptrtoint ptr %trigger_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trigger_data.i, align 4
  %call1 = tail call i32 @del_timer_sync(ptr noundef %1) #10
  tail call void @kfree(ptr noundef %1) #10
  %work_flags = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %work_flags) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @led_activity_function(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %led_cdev1 = getelementptr inbounds %struct.activity_data, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %led_cdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %led_cdev1, align 8
  %work_flags = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 4
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %work_flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %new_blink_brightness = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %new_blink_brightness to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %new_blink_brightness, align 4
  %blink_brightness = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %blink_brightness to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %blink_brightness, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.b = load i1, ptr @panic_detected, align 4
  br i1 %.b, label %if.then5, label %for.cond.preheader, !prof !43

for.cond.preheader:                               ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %call8173 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call8173, i32 %5)
  %cmp174 = icmp ult i32 %call8173, %5
  br i1 %cmp174, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %blink_brightness6 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %blink_brightness6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blink_brightness6, align 4
  tail call void @led_set_brightness_nosleep(ptr noundef %1, i32 noundef %7) #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call8177 = phi i32 [ %call8, %for.body.for.body_crit_edge ], [ %call8173, %for.cond.preheader.for.body_crit_edge ]
  %cpus.0176 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %curr_used.0175 = phi i64 [ %add20, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call8177
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, ptrtoint (ptr @kernel_cpustat to i32)
  %10 = inttoptr i32 %add.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %11)
  %kcpustat.sroa.0.0.copyload = load i64, ptr %10, align 8
  %kcpustat.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %10, i32 8
  %12 = ptrtoint ptr %kcpustat.sroa.5.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %12)
  %kcpustat.sroa.5.0.copyload = load i64, ptr %kcpustat.sroa.5.0..sroa_idx, align 8
  %kcpustat.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %10, i32 16
  %13 = ptrtoint ptr %kcpustat.sroa.6.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %13)
  %kcpustat.sroa.6.0.copyload = load i64, ptr %kcpustat.sroa.6.0..sroa_idx, align 8
  %kcpustat.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %10, i32 24
  %14 = ptrtoint ptr %kcpustat.sroa.7.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %14)
  %kcpustat.sroa.7.0.copyload = load i64, ptr %kcpustat.sroa.7.0..sroa_idx, align 8
  %kcpustat.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %10, i32 32
  %15 = ptrtoint ptr %kcpustat.sroa.8.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %15)
  %kcpustat.sroa.8.0.copyload = load i64, ptr %kcpustat.sroa.8.0..sroa_idx, align 8
  %add = add i64 %kcpustat.sroa.0.0.copyload, %curr_used.0175
  %add13 = add i64 %add, %kcpustat.sroa.5.0.copyload
  %add16 = add i64 %add13, %kcpustat.sroa.6.0.copyload
  %add19 = add i64 %add16, %kcpustat.sroa.7.0.copyload
  %add20 = add i64 %add19, %kcpustat.sroa.8.0.copyload
  %inc = add i32 %cpus.0176, 1
  %call8 = tail call i32 @cpumask_next(i32 noundef %call8177, ptr noundef nonnull @__cpu_possible_mask) #14
  %cmp = icmp ult i32 %call8, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %curr_used.0.lcssa = phi i64 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add20, %for.body.for.end_crit_edge ]
  %cpus.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #10
  %conv = sext i32 %cpus.0.lcssa to i64
  %mul = mul i64 %call.i.i, %conv
  %last_boot = getelementptr inbounds %struct.activity_data, ptr %t, i32 0, i32 3
  %16 = ptrtoint ptr %last_boot to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %last_boot, align 8
  %sub = sub i64 %mul, %17
  %shr = lshr i64 %sub, 16
  %conv22 = trunc i64 %shr to i32
  %last_used = getelementptr inbounds %struct.activity_data, ptr %t, i32 0, i32 2
  %18 = ptrtoint ptr %last_used to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %last_used, align 8
  %sub23 = sub i64 %curr_used.0.lcssa, %19
  %shr24 = lshr i64 %sub23, 16
  %conv25 = trunc i64 %shr24 to i32
  store i64 %mul, ptr %last_boot, align 8
  store i64 %curr_used.0.lcssa, ptr %last_used, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv22)
  %cmp28 = icmp slt i32 %conv22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv25)
  %cmp30 = icmp slt i32 %conv25, 0
  %or.cond = select i1 %cmp28, i1 true, i1 %cmp30
  br i1 %or.cond, label %for.end.if.end39_crit_edge, label %if.else

for.end.if.end39_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_cmp4(i32 %conv25, i32 %conv22)
  %cmp33.not = icmp ult i32 %conv25, %conv22
  br i1 %cmp33.not, label %if.else36, label %if.else.if.end39_crit_edge

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.else36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %mul37 = mul i32 %conv25, 100
  %div = sdiv i32 %mul37, %conv22
  br label %if.end39

if.end39:                                         ; preds = %if.else36, %if.else.if.end39_crit_edge, %for.end.if.end39_crit_edge
  %usage.0 = phi i32 [ %div, %if.else36 ], [ 0, %for.end.if.end39_crit_edge ], [ 100, %if.else.if.end39_crit_edge ]
  %time_left = getelementptr inbounds %struct.activity_data, ptr %t, i32 0, i32 4
  %20 = ptrtoint ptr %time_left to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %time_left, align 8
  %sub40 = add i32 %21, -100
  store i32 %sub40, ptr %time_left, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub40)
  %cmp42 = icmp slt i32 %sub40, 1
  br i1 %cmp42, label %if.then44, label %if.end39.if.end53_crit_edge

if.end39.if.end53_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then44:                                        ; preds = %if.end39
  %22 = ptrtoint ptr %time_left to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %time_left, align 8
  %state = getelementptr inbounds %struct.activity_data, ptr %t, i32 0, i32 5
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool46.not = icmp eq i32 %24, 0
  %lnot.ext48 = zext i1 %tobool46.not to i32
  %25 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %lnot.ext48, ptr %state, align 4
  %invert = getelementptr inbounds %struct.activity_data, ptr %t, i32 0, i32 6
  %26 = ptrtoint ptr %invert to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %invert, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %lnot.ext48)
  %tobool51.not = icmp eq i32 %27, %lnot.ext48
  br i1 %tobool51.not, label %if.then44.cond.end_crit_edge, label %cond.true

if.then44.cond.end_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  %blink_brightness52 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 18
  %28 = ptrtoint ptr %blink_brightness52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %blink_brightness52, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then44.cond.end_crit_edge
  %cond = phi i32 [ %29, %cond.true ], [ 0, %if.then44.cond.end_crit_edge ]
  tail call void @led_set_brightness_nosleep(ptr noundef %1, i32 noundef %cond) #10
  br label %if.end53

if.end53:                                         ; preds = %cond.end, %if.end39.if.end53_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cpus.0.lcssa)
  %cmp54 = icmp sgt i32 %cpus.0.lcssa, 1
  br i1 %cmp54, label %cond.true56, label %if.end53.cond.end59_crit_edge

if.end53.cond.end59_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end59

cond.true56:                                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %div57171 = udiv i32 100, %cpus.0.lcssa
  br label %cond.end59

cond.end59:                                       ; preds = %cond.true56, %if.end53.cond.end59_crit_edge
  %cond60 = phi i32 [ %div57171, %cond.true56 ], [ 50, %if.end53.cond.end59_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %usage.0, i32 %cond60)
  %cmp61 = icmp ult i32 %usage.0, %cond60
  %state64 = getelementptr inbounds %struct.activity_data, ptr %t, i32 0, i32 5
  %30 = ptrtoint ptr %state64 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool65.not = icmp eq i32 %31, 0
  br i1 %cmp61, label %if.then63, label %if.else73

if.then63:                                        ; preds = %cond.end59
  br i1 %tobool65.not, label %cond.false67, label %if.then63.if.end90_crit_edge

if.then63.if.end90_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

cond.false67:                                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  %mul68 = mul i32 %usage.0, 900
  %div69 = udiv i32 %mul68, %cond60
  %sub70 = sub i32 990, %div69
  br label %if.end90

if.else73:                                        ; preds = %cond.end59
  %sub83 = sub i32 %usage.0, %cond60
  %mul84 = mul i32 %sub83, 80
  %sub85 = sub nuw nsw i32 100, %cond60
  %div86 = udiv i32 %mul84, %sub85
  br i1 %tobool65.not, label %cond.false82, label %cond.true76

cond.true76:                                      ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #12
  %add81 = add nuw nsw i32 %div86, 10
  br label %if.end90

cond.false82:                                     ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #12
  %sub87 = sub nsw i32 90, %div86
  br label %if.end90

if.end90:                                         ; preds = %cond.false82, %cond.true76, %cond.false67, %if.then63.if.end90_crit_edge
  %delay.0 = phi i32 [ %sub70, %cond.false67 ], [ 10, %if.then63.if.end90_crit_edge ], [ %add81, %cond.true76 ], [ %sub87, %cond.false82 ]
  %32 = ptrtoint ptr %time_left to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %time_left, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool92.not = icmp ne i32 %33, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %delay.0, i32 %33)
  %cmp95.not = icmp sgt i32 %delay.0, %33
  %or.cond170 = select i1 %tobool92.not, i1 %cmp95.not, i1 false
  br i1 %or.cond170, label %if.end90.if.end99_crit_edge, label %if.then97

if.end90.if.end99_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.then97:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %time_left to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %delay.0, ptr %time_left, align 8
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.end90.if.end99_crit_edge
  %35 = ptrtoint ptr %time_left to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %time_left, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %38 = tail call i32 @llvm.smin.i32(i32 %36, i32 100)
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %38) #10
  %add109 = add i32 %call2.i, %37
  %call110 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add109) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %if.then5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_set_brightness_nosleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @led_invert_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %trigger_data.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %trigger_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trigger_data.i, align 4
  %invert = getelementptr inbounds %struct.activity_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %invert to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %invert, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @led_invert_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %trigger_data.i = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %trigger_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trigger_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #10
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %state, align 4, !annotation !44
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3 = icmp ne i32 %6, 0
  %lnot.ext = zext i1 %tobool3 to i32
  %invert = getelementptr inbounds %struct.activity_data, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %invert to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %lnot.ext, ptr %invert, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_trigger_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !24, !26, !27, !29, !31, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_ledtrig_activity__189_265_activity_init6, !1, !"__initcall__kmod_ledtrig_activity__189_265_activity_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/trigger/ledtrig-activity.c", i32 265, i32 1}
!2 = !{ptr @__exitcall_activity_exit, !3, !"__exitcall_activity_exit", i1 false, i1 false}
!3 = !{!"../drivers/leds/trigger/ledtrig-activity.c", i32 266, i32 1}
!4 = !{ptr @__UNIQUE_ID_author190, !5, !"__UNIQUE_ID_author190", i1 false, i1 false}
!5 = !{!"../drivers/leds/trigger/ledtrig-activity.c", i32 268, i32 1}
!6 = !{ptr @__UNIQUE_ID_description191, !7, !"__UNIQUE_ID_description191", i1 false, i1 false}
!7 = !{!"../drivers/leds/trigger/ledtrig-activity.c", i32 269, i32 1}
!8 = !{ptr @__UNIQUE_ID_file192, !9, !"__UNIQUE_ID_file192", i1 false, i1 false}
!9 = !{!"../drivers/leds/trigger/ledtrig-activity.c", i32 270, i32 1}
!10 = !{ptr @__UNIQUE_ID_license193, !9, !"__UNIQUE_ID_license193", i1 false, i1 false}
!11 = !{ptr @activity_reboot_nb, !12, !"activity_reboot_nb", i1 false, i1 false}
!12 = !{!"../drivers/leds/trigger/ledtrig-activity.c", i32 237, i32 30}
!13 = !{ptr @activity_panic_nb, !14, !"activity_panic_nb", i1 false, i1 false}
!14 = !{!"../drivers/leds/trigger/ledtrig-activity.c", i32 241, i32 30}
!15 = distinct !{null, !16, !"panic_detected", i1 false, i1 false}
!16 = !{!"../drivers/leds/trigger/ledtrig-activity.c", i32 21, i32 12}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/leds/trigger/ledtrig-activity.c", i32 217, i32 16}
!19 = !{ptr @activity_led_trigger, !20, !"activity_led_trigger", i1 false, i1 false}
!20 = !{!"../drivers/leds/trigger/ledtrig-activity.c", i32 216, i32 27}
!21 = !{ptr @activity_activate.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/leds/trigger/ledtrig-activity.c", i32 198, i32 2}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @activity_led_groups, !25, !"activity_led_groups", i1 false, i1 false}
!25 = !{!"../drivers/leds/trigger/ledtrig-activity.c", i32 185, i32 1}
!26 = !{ptr @activity_led_group, !25, !"activity_led_group", i1 false, i1 false}
!27 = !{ptr @activity_led_attrs, !28, !"activity_led_attrs", i1 false, i1 false}
!28 = !{!"../drivers/leds/trigger/ledtrig-activity.c", i32 181, i32 26}
!29 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/leds/trigger/ledtrig-activity.c", i32 179, i32 8}
!31 = !{ptr @dev_attr_invert, !30, !"dev_attr_invert", i1 false, i1 false}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/leds/trigger/ledtrig-activity.c", i32 159, i32 22}
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
