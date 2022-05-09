; ModuleID = '/llk/IR_all_yes/drivers/leds/trigger/ledtrig-backlight.c_pt.bc'
source_filename = "../drivers/leds/trigger/ledtrig-backlight.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.bl_trig_notifier = type { ptr, i32, i32, %struct.notifier_block, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.fb_event = type { ptr, ptr }
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

@__initcall__kmod_ledtrig_backlight__301_138_bl_led_trigger_init6 = internal global ptr @bl_led_trigger_init, section ".initcall6.init", align 4
@bl_led_trigger = internal global { %struct.led_trigger, [48 x i8] } { %struct.led_trigger { ptr @.str, ptr @bl_trig_activate, ptr @bl_trig_deactivate, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr @bl_trig_groups }, [48 x i8] zeroinitializer }, align 32
@__exitcall_bl_led_trigger_exit = internal global ptr @bl_led_trigger_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author302 = internal constant [62 x i8] c"ledtrig_backlight.author=Rodolfo Giometti <giometti@linux.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_description303 = internal constant [62 x i8] c"ledtrig_backlight.description=Backlight emulation LED trigger\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [62 x i8] c"ledtrig_backlight.file=drivers/leds/trigger/ledtrig-backlight\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [33 x i8] c"ledtrig_backlight.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"backlight\00", [22 x i8] zeroinitializer }, align 32
@bl_trig_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bl_trig_group, ptr null], [24 x i8] zeroinitializer }, align 32
@bl_trig_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 119, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to register backlight trigger\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bl_trig_activate\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/leds/trigger/ledtrig-backlight.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bl_trig_activate._entry_ptr = internal global ptr @bl_trig_activate._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bl_trig_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @bl_trig_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@bl_trig_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_inverted, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_inverted = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bl_trig_invert_show, ptr @bl_trig_invert_store }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"inverted\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [15 x i8] c"bl_led_trigger\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 132, i32 27 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 133, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant [15 x i8] c"bl_trig_groups\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 119, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [14 x i8] c"bl_trig_group\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 99, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"bl_trig_attrs\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 95, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"dev_attr_inverted\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 93, i32 8 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [44 x i8] c"../drivers/leds/trigger/ledtrig-backlight.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 65, i32 22 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_bl_led_trigger_exit, ptr @__initcall__kmod_ledtrig_backlight__301_138_bl_led_trigger_init6, ptr @bl_led_trigger_exit, ptr @bl_trig_activate._entry, ptr @bl_trig_activate._entry_ptr, ptr @bl_led_trigger, ptr @.str, ptr @bl_trig_groups, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @bl_trig_group, ptr @bl_trig_attrs, ptr @dev_attr_inverted, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_led_trigger to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_trig_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_trig_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_trig_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_trig_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_inverted to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bl_led_trigger_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @led_trigger_register(ptr noundef nonnull @bl_led_trigger) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bl_led_trigger_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @led_trigger_unregister(ptr noundef nonnull @bl_led_trigger) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_trigger_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bl_trig_activate(ptr noundef %led) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %trigger_data1.i = getelementptr inbounds %struct.led_classdev, ptr %led, i32 0, i32 26
  %1 = ptrtoint ptr %trigger_data1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %trigger_data1.i, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %led, ptr %call7.i.i, align 8
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %led, i32 0, i32 1
  %3 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %brightness, align 4
  %brightness2 = getelementptr inbounds %struct.bl_trig_notifier, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %brightness2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %brightness2, align 4
  %old_status = getelementptr inbounds %struct.bl_trig_notifier, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %old_status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %old_status, align 8
  %notifier = getelementptr inbounds %struct.bl_trig_notifier, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @fb_notifier_callback, ptr %notifier, align 4
  %call4 = tail call i32 @fb_register_client(ptr noundef %notifier) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.led_classdev, ptr %led, i32 0, i32 11
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bl_trig_deactivate(ptr nocapture noundef readonly %led) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger_data.i = getelementptr inbounds %struct.led_classdev, ptr %led, i32 0, i32 26
  %0 = ptrtoint ptr %trigger_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trigger_data.i, align 4
  %notifier = getelementptr inbounds %struct.bl_trig_notifier, ptr %1, i32 0, i32 3
  %call1 = tail call i32 @fb_unregister_client(ptr noundef %notifier) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fb_notifier_callback(ptr nocapture noundef %p, i32 noundef %event, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %p, i32 -12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %event)
  %cmp.not = icmp eq i32 %event, 9
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data2 = getelementptr inbounds %struct.fb_event, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp ne i32 %5, 0
  %cond = zext i1 %tobool.not to i32
  %old_status = getelementptr i8, ptr %p, i32 -4
  %6 = ptrtoint ptr %old_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old_status, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %cond)
  %cmp3 = icmp eq i32 %7, %cond
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7 = icmp eq i32 %7, 0
  %conv = zext i1 %cmp7 to i32
  %invert = getelementptr i8, ptr %p, i32 12
  %8 = ptrtoint ptr %invert to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %invert, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %tobool8.not = icmp eq i32 %9, %conv
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %brightness, align 4
  %brightness10 = getelementptr i8, ptr %p, i32 -8
  %12 = ptrtoint ptr %brightness10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %brightness10, align 4
  br label %if.end12

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %brightness11 = getelementptr i8, ptr %p, i32 -8
  %13 = ptrtoint ptr %brightness11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %brightness11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %.sink = phi i32 [ %14, %if.else ], [ 0, %if.then9 ]
  tail call void @led_set_brightness_nosleep(ptr noundef %1, i32 noundef %.sink) #8
  %15 = ptrtoint ptr %old_status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond, ptr %old_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_register_client(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_set_brightness_nosleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_unregister_client(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bl_trig_invert_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
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
  %invert = getelementptr inbounds %struct.bl_trig_notifier, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %invert to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %invert, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.7, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bl_trig_invert_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %num) #2 align 64 {
entry:
  %invert = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %invert) #8
  %4 = ptrtoint ptr %invert to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %invert, align 4, !annotation !41
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %invert) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %invert to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %invert, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp4 = icmp ugt i32 %6, 1
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %invert7 = getelementptr inbounds %struct.bl_trig_notifier, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %invert7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %invert7, align 4
  %old_status = getelementptr inbounds %struct.bl_trig_notifier, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %old_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp8 = icmp eq i32 %9, 1
  %conv = zext i1 %cmp8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %tobool.not = icmp eq i32 %6, %conv
  br i1 %tobool.not, label %if.else, label %if.end6.cleanup.sink.split_crit_edge

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %brightness = getelementptr inbounds %struct.bl_trig_notifier, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %brightness, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.end6.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %11, %if.else ], [ 0, %if.end6.cleanup.sink.split_crit_edge ]
  call void @led_set_brightness_nosleep(ptr noundef %1, i32 noundef %.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %num, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %invert) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !29, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_ledtrig_backlight__301_138_bl_led_trigger_init6, !1, !"__initcall__kmod_ledtrig_backlight__301_138_bl_led_trigger_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/trigger/ledtrig-backlight.c", i32 138, i32 1}
!2 = !{ptr @__exitcall_bl_led_trigger_exit, !1, !"__exitcall_bl_led_trigger_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author302, !4, !"__UNIQUE_ID_author302", i1 false, i1 false}
!4 = !{!"../drivers/leds/trigger/ledtrig-backlight.c", i32 140, i32 1}
!5 = !{ptr @__UNIQUE_ID_description303, !6, !"__UNIQUE_ID_description303", i1 false, i1 false}
!6 = !{!"../drivers/leds/trigger/ledtrig-backlight.c", i32 141, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../drivers/leds/trigger/ledtrig-backlight.c", i32 142, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/trigger/ledtrig-backlight.c", i32 133, i32 11}
!12 = !{ptr @bl_led_trigger, !13, !"bl_led_trigger", i1 false, i1 false}
!13 = !{!"../drivers/leds/trigger/ledtrig-backlight.c", i32 132, i32 27}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/trigger/ledtrig-backlight.c", i32 119, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bl_trig_activate._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @bl_trig_activate._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @bl_trig_groups, !23, !"bl_trig_groups", i1 false, i1 false}
!23 = !{!"../drivers/leds/trigger/ledtrig-backlight.c", i32 99, i32 1}
!24 = !{ptr @bl_trig_group, !23, !"bl_trig_group", i1 false, i1 false}
!25 = !{ptr @bl_trig_attrs, !26, !"bl_trig_attrs", i1 false, i1 false}
!26 = !{!"../drivers/leds/trigger/ledtrig-backlight.c", i32 95, i32 26}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/leds/trigger/ledtrig-backlight.c", i32 93, i32 8}
!29 = !{ptr @dev_attr_inverted, !28, !"dev_attr_inverted", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/leds/trigger/ledtrig-backlight.c", i32 65, i32 22}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"auto-init"}
