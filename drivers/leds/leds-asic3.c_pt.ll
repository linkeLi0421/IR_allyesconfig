; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-asic3.c_pt.bc'
source_filename = "../drivers/leds/leds-asic3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.asic3_led = type { ptr, ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }

@__initcall__kmod_leds_asic3__183_172_asic3_led_driver_init6 = internal global ptr @asic3_led_driver_init, section ".initcall6.init", align 4
@asic3_led_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @asic3_led_probe, ptr @asic3_led_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @asic3_led_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_asic3_led_driver_exit = internal global ptr @asic3_led_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [57 x i8] c"leds_asic3.author=Paul Parsons <lost.distance@yahoo.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [44 x i8] c"leds_asic3.description=HTC ASIC3 LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [40 x i8] c"leds_asic3.file=drivers/leds/leds-asic3\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [23 x i8] c"leds_asic3.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias188 = internal constant [37 x i8] c"leds_asic3.alias=platform:leds-asic3\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"leds-asic3\00", [21 x i8] zeroinitializer }, align 32
@asic3_led_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @asic3_led_suspend, ptr @asic3_led_resume, ptr @asic3_led_suspend, ptr @asic3_led_resume, ptr @asic3_led_suspend, ptr @asic3_led_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@led_n_base = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1792, i32 2048, i32 2304], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"asic3_led_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 163, i32 31 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 167, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"asic3_led_pm_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 161, i32 8 }
@___asan_gen_.10 = private unnamed_addr constant [11 x i8] c"led_n_base\00", align 1
@___asan_gen_.11 = private constant [29 x i8] c"../drivers/leds/leds-asic3.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 30, i32 27 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_alias188, ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_asic3_led_driver_exit, ptr @__initcall__kmod_leds_asic3__183_172_asic3_led_driver_init6, ptr @asic3_led_driver_exit, ptr @asic3_led_driver, ptr @.str, ptr @asic3_led_pm_ops, ptr @led_n_base], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asic3_led_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asic3_led_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_n_base to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @asic3_led_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @asic3_led_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @asic3_led_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @asic3_led_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asic3_led_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call1 = tail call i32 @mfd_cell_enable(ptr noundef %pdev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 400, i32 noundef 3520) #3
  %cdev = getelementptr inbounds %struct.asic3_led, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cdev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %cdev, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end6:                                          ; preds = %if.end
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %call.i, align 4
  %6 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cdev, align 4
  %flags = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 65536, ptr %flags, align 4
  %9 = load ptr, ptr %cdev, align 4
  %brightness_set = getelementptr inbounds %struct.led_classdev, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @brightness_set, ptr %brightness_set, align 4
  %11 = load ptr, ptr %cdev, align 4
  %blink_set = getelementptr inbounds %struct.led_classdev, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %blink_set to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @blink_set, ptr %blink_set, align 4
  %default_trigger = getelementptr inbounds %struct.asic3_led, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %default_trigger to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %default_trigger, align 4
  %15 = load ptr, ptr %cdev, align 4
  %default_trigger13 = getelementptr inbounds %struct.led_classdev, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %default_trigger13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %default_trigger13, align 4
  %17 = load ptr, ptr %cdev, align 4
  %call.i38 = tail call i32 @led_classdev_register_ext(ptr noundef %dev, ptr noundef %17, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %cmp17 = icmp slt i32 %call.i38, 0
  br i1 %cmp17, label %if.end6.out_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

out:                                              ; preds = %if.end6.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call.i38, %if.end6.out_crit_edge ], [ -12, %if.end.out_crit_edge ]
  %call20 = tail call i32 @mfd_cell_disable(ptr noundef %pdev) #3
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asic3_led_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %cdev = getelementptr inbounds %struct.asic3_led, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev, align 4
  tail call void @led_classdev_unregister(ptr noundef %3) #3
  %call1 = tail call i32 @mfd_cell_disable(ptr noundef %pdev) #3
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_cell_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brightness_set(ptr nocapture noundef readonly %cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.led_classdev, ptr %cdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %mfd_cell.i = getelementptr i8, ptr %3, i32 964
  %4 = ptrtoint ptr %mfd_cell.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mfd_cell.i, align 4
  %parent2 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent2, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp = icmp eq i32 %value, 0
  %cond = select i1 %cmp, i32 0, i32 20
  %id = getelementptr inbounds %struct.mfd_cell, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [3 x i32], ptr @led_n_base, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add = add i32 %13, 4
  tail call void @asic3_write_register(ptr noundef %9, i32 noundef %add, i32 noundef 32) #3
  %add4 = add i32 %13, 8
  tail call void @asic3_write_register(ptr noundef %9, i32 noundef %add4, i32 noundef 32) #3
  %add5 = add i32 %13, 12
  tail call void @asic3_write_register(ptr noundef %9, i32 noundef %add5, i32 noundef 0) #3
  tail call void @asic3_write_register(ptr noundef %9, i32 noundef %13, i32 noundef %cond) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blink_set(ptr nocapture noundef readonly %cdev, ptr nocapture noundef %delay_on, ptr nocapture noundef %delay_off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.led_classdev, ptr %cdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %mfd_cell.i = getelementptr i8, ptr %3, i32 964
  %4 = ptrtoint ptr %mfd_cell.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mfd_cell.i, align 4
  %parent2 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent2, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i, align 4
  %10 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %delay_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 125000, i32 %11)
  %cmp = icmp ugt i32 %11, 125000
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %12 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 125000, i32 %13)
  %cmp4 = icmp ugt i32 %13, 125000
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp5 = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp6 = icmp eq i32 %13, 0
  %or.cond = select i1 %cmp5, i1 %cmp6, i1 false
  br i1 %or.cond, label %if.end.if.end54_crit_edge, label %if.else

if.end.if.end54_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end54

if.else:                                          ; preds = %if.end
  %mul = shl nuw nsw i32 %11, 10
  %add40 = add nuw nsw i32 %mul, 16000
  %div41 = udiv i32 %add40, 32000
  %mul43 = shl nuw nsw i32 %13, 10
  %add47 = add nuw nsw i32 %mul43, 16000
  %div48 = udiv i32 %add47, 32000
  %add49 = add nuw nsw i32 %div48, %div41
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %add49)
  %cmp50 = icmp ugt i32 %add49, 4000
  br i1 %cmp50, label %if.else.cleanup_crit_edge, label %if.else.if.end54_crit_edge

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end54

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end54:                                         ; preds = %if.else.if.end54_crit_edge, %if.end.if.end54_crit_edge
  %off.0 = phi i32 [ %div48, %if.else.if.end54_crit_edge ], [ 16, %if.end.if.end54_crit_edge ]
  %on.0 = phi i32 [ %div41, %if.else.if.end54_crit_edge ], [ 16, %if.end.if.end54_crit_edge ]
  %id = getelementptr inbounds %struct.mfd_cell, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [3 x i32], ptr @led_n_base, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %add55 = add i32 %17, 4
  %add56 = add nuw nsw i32 %on.0, %off.0
  tail call void @asic3_write_register(ptr noundef %9, i32 noundef %add55, i32 noundef %add56) #3
  %add57 = add i32 %17, 8
  tail call void @asic3_write_register(ptr noundef %9, i32 noundef %add57, i32 noundef %on.0) #3
  %add58 = add i32 %17, 12
  tail call void @asic3_write_register(ptr noundef %9, i32 noundef %add58, i32 noundef 0) #3
  tail call void @asic3_write_register(ptr noundef %9, i32 noundef %17, i32 noundef 20) #3
  %mul60 = mul nuw nsw i32 %on.0, 32000
  %div61102 = lshr i32 %mul60, 10
  %18 = ptrtoint ptr %delay_on to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div61102, ptr %delay_on, align 4
  %mul62 = mul nuw nsw i32 %off.0, 32000
  %div63103 = lshr i32 %mul62, 10
  %19 = ptrtoint ptr %delay_off to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div63103, ptr %delay_off, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.else.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end54 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_cell_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asic3_write_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asic3_led_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mfd_cell.i = getelementptr i8, ptr %dev, i32 964
  %0 = ptrtoint ptr %mfd_cell.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfd_cell.i, align 4
  %suspend = getelementptr inbounds %struct.mfd_cell, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %suspend, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %call2 = tail call i32 %3(ptr noundef %add.ptr) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asic3_led_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mfd_cell.i = getelementptr i8, ptr %dev, i32 964
  %0 = ptrtoint ptr %mfd_cell.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfd_cell.i, align 4
  %resume = getelementptr inbounds %struct.mfd_cell, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resume, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %call2 = tail call i32 %3(ptr noundef %add.ptr) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__initcall__kmod_leds_asic3__183_172_asic3_led_driver_init6, !1, !"__initcall__kmod_leds_asic3__183_172_asic3_led_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-asic3.c", i32 172, i32 1}
!2 = !{ptr @__exitcall_asic3_led_driver_exit, !1, !"__exitcall_asic3_led_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-asic3.c", i32 174, i32 1}
!5 = !{ptr @__UNIQUE_ID_description185, !6, !"__UNIQUE_ID_description185", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-asic3.c", i32 175, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-asic3.c", i32 176, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias188, !11, !"__UNIQUE_ID_alias188", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-asic3.c", i32 177, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-asic3.c", i32 167, i32 11}
!14 = !{ptr @asic3_led_driver, !15, !"asic3_led_driver", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-asic3.c", i32 163, i32 31}
!16 = !{ptr @led_n_base, !17, !"led_n_base", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-asic3.c", i32 30, i32 27}
!18 = !{ptr @asic3_led_pm_ops, !19, !"asic3_led_pm_ops", i1 false, i1 false}
!19 = !{!"../drivers/leds/leds-asic3.c", i32 161, i32 8}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
