; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-dac124s085.c_pt.bc'
source_filename = "../drivers/leds/leds-dac124s085.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.dac124s085_led = type { %struct.led_classdev, ptr, i32, [13 x i8], %struct.mutex }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_leds_dac124s085__230_107_dac124s085_driver_init6 = internal global ptr @dac124s085_driver_init, section ".initcall6.init", align 4
@dac124s085_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @dac124s085_probe, ptr @dac124s085_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_dac124s085_driver_exit = internal global ptr @dac124s085_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author231 = internal constant [58 x i8] c"leds_dac124s085.author=Guennadi Liakhovetski <lg@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [50 x i8] c"leds_dac124s085.description=DAC124S085 LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [50 x i8] c"leds_dac124s085.file=drivers/leds/leds-dac124s085\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [31 x i8] c"leds_dac124s085.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias235 = internal constant [37 x i8] c"leds_dac124s085.alias=spi:dac124s085\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dac124s085\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dac124s085-%d\00", [18 x i8] zeroinitializer }, align 32
@dac124s085_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&led->mutex\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [18 x i8] c"dac124s085_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 99, i32 26 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 103, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 66, i32 42 }
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [34 x i8] c"../drivers/leds/leds-dac124s085.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 67, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias235, ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_dac124s085_driver_exit, ptr @__initcall__kmod_leds_dac124s085__230_107_dac124s085_driver_init6, ptr @dac124s085_driver_exit, ptr @dac124s085_driver, ptr @.str, ptr @.str.1, ptr @dac124s085_probe.__key, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac124s085_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac124s085_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dac124s085_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @dac124s085_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dac124s085_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @dac124s085_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac124s085_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 2064, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %0 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 16, ptr %bits_per_word, align 1
  %id = getelementptr %struct.dac124s085_led, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %id, align 4
  %spi1 = getelementptr %struct.dac124s085_led, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %spi1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %spi1, align 4
  %name = getelementptr %struct.dac124s085_led, ptr %call.i, i32 0, i32 3
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 13, ptr noundef nonnull @.str.1, i32 noundef 0)
  %mutex = getelementptr %struct.dac124s085_led, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.2, ptr noundef nonnull @dac124s085_probe.__key) #6
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %call.i, align 4
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %brightness, align 4
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4095, ptr %max_brightness, align 4
  %brightness_set_blocking = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dac124s085_set_brightness, ptr %brightness_set_blocking, align 4
  %call.i45 = tail call i32 @led_classdev_register_ext(ptr noundef %spi, ptr noundef nonnull %call.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %cmp13 = icmp slt i32 %call.i45, 0
  br i1 %cmp13, label %if.end.cleanup_crit_edge, label %for.inc

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %if.end
  %add.ptr.1 = getelementptr %struct.dac124s085_led, ptr %call.i, i32 1
  %id.1 = getelementptr %struct.dac124s085_led, ptr %call.i, i32 1, i32 2
  %7 = ptrtoint ptr %id.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %id.1, align 4
  %spi1.1 = getelementptr %struct.dac124s085_led, ptr %call.i, i32 1, i32 1
  %8 = ptrtoint ptr %spi1.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %spi, ptr %spi1.1, align 4
  %name.1 = getelementptr %struct.dac124s085_led, ptr %call.i, i32 1, i32 3
  %call3.1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.1, i32 noundef 13, ptr noundef nonnull @.str.1, i32 noundef 1)
  %mutex.1 = getelementptr %struct.dac124s085_led, ptr %call.i, i32 1, i32 4
  tail call void @__mutex_init(ptr noundef %mutex.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @dac124s085_probe.__key) #6
  %9 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %name.1, ptr %add.ptr.1, align 4
  %brightness.1 = getelementptr %struct.dac124s085_led, ptr %call.i, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %brightness.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %brightness.1, align 4
  %max_brightness.1 = getelementptr %struct.dac124s085_led, ptr %call.i, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %max_brightness.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4095, ptr %max_brightness.1, align 4
  %brightness_set_blocking.1 = getelementptr %struct.dac124s085_led, ptr %call.i, i32 1, i32 0, i32 6
  %12 = ptrtoint ptr %brightness_set_blocking.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @dac124s085_set_brightness, ptr %brightness_set_blocking.1, align 4
  %call.i45.1 = tail call i32 @led_classdev_register_ext(ptr noundef %spi, ptr noundef %add.ptr.1, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45.1)
  %cmp13.1 = icmp slt i32 %call.i45.1, 0
  br i1 %cmp13.1, label %for.inc.while.body_crit_edge, label %for.inc.1

for.inc.while.body_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

for.inc.1:                                        ; preds = %for.inc
  %add.ptr.2 = getelementptr %struct.dac124s085_led, ptr %call.i, i32 2
  %id.2 = getelementptr %struct.dac124s085_led, ptr %call.i, i32 2, i32 2
  %13 = ptrtoint ptr %id.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %id.2, align 4
  %spi1.2 = getelementptr %struct.dac124s085_led, ptr %call.i, i32 2, i32 1
  %14 = ptrtoint ptr %spi1.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %spi, ptr %spi1.2, align 4
  %name.2 = getelementptr %struct.dac124s085_led, ptr %call.i, i32 2, i32 3
  %call3.2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.2, i32 noundef 13, ptr noundef nonnull @.str.1, i32 noundef 2)
  %mutex.2 = getelementptr %struct.dac124s085_led, ptr %call.i, i32 2, i32 4
  tail call void @__mutex_init(ptr noundef %mutex.2, ptr noundef nonnull @.str.2, ptr noundef nonnull @dac124s085_probe.__key) #6
  %15 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %name.2, ptr %add.ptr.2, align 4
  %brightness.2 = getelementptr %struct.dac124s085_led, ptr %call.i, i32 2, i32 0, i32 1
  %16 = ptrtoint ptr %brightness.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %brightness.2, align 4
  %max_brightness.2 = getelementptr %struct.dac124s085_led, ptr %call.i, i32 2, i32 0, i32 2
  %17 = ptrtoint ptr %max_brightness.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4095, ptr %max_brightness.2, align 4
  %brightness_set_blocking.2 = getelementptr %struct.dac124s085_led, ptr %call.i, i32 2, i32 0, i32 6
  %18 = ptrtoint ptr %brightness_set_blocking.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @dac124s085_set_brightness, ptr %brightness_set_blocking.2, align 4
  %call.i45.2 = tail call i32 @led_classdev_register_ext(ptr noundef %spi, ptr noundef %add.ptr.2, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45.2)
  %cmp13.2 = icmp slt i32 %call.i45.2, 0
  br i1 %cmp13.2, label %for.inc.1.while.body_crit_edge, label %for.inc.2

for.inc.1.while.body_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

for.inc.2:                                        ; preds = %for.inc.1
  %add.ptr.3 = getelementptr %struct.dac124s085_led, ptr %call.i, i32 3
  %id.3 = getelementptr %struct.dac124s085_led, ptr %call.i, i32 3, i32 2
  %19 = ptrtoint ptr %id.3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %id.3, align 4
  %spi1.3 = getelementptr %struct.dac124s085_led, ptr %call.i, i32 3, i32 1
  %20 = ptrtoint ptr %spi1.3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %spi, ptr %spi1.3, align 4
  %name.3 = getelementptr %struct.dac124s085_led, ptr %call.i, i32 3, i32 3
  %call3.3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.3, i32 noundef 13, ptr noundef nonnull @.str.1, i32 noundef 3)
  %mutex.3 = getelementptr %struct.dac124s085_led, ptr %call.i, i32 3, i32 4
  tail call void @__mutex_init(ptr noundef %mutex.3, ptr noundef nonnull @.str.2, ptr noundef nonnull @dac124s085_probe.__key) #6
  %21 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %name.3, ptr %add.ptr.3, align 4
  %brightness.3 = getelementptr %struct.dac124s085_led, ptr %call.i, i32 3, i32 0, i32 1
  %22 = ptrtoint ptr %brightness.3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %brightness.3, align 4
  %max_brightness.3 = getelementptr %struct.dac124s085_led, ptr %call.i, i32 3, i32 0, i32 2
  %23 = ptrtoint ptr %max_brightness.3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4095, ptr %max_brightness.3, align 4
  %brightness_set_blocking.3 = getelementptr %struct.dac124s085_led, ptr %call.i, i32 3, i32 0, i32 6
  %24 = ptrtoint ptr %brightness_set_blocking.3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @dac124s085_set_brightness, ptr %brightness_set_blocking.3, align 4
  %call.i45.3 = tail call i32 @led_classdev_register_ext(ptr noundef %spi, ptr noundef %add.ptr.3, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45.3)
  %cmp13.3 = icmp slt i32 %call.i45.3, 0
  br i1 %cmp13.3, label %for.inc.2.while.body_crit_edge, label %for.inc.3

for.inc.2.while.body_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

while.body:                                       ; preds = %for.inc.2.while.body_crit_edge, %for.inc.1.while.body_crit_edge, %for.inc.while.body_crit_edge
  %i.047.lcssa.ph = phi i32 [ 2, %for.inc.2.while.body_crit_edge ], [ 1, %for.inc.1.while.body_crit_edge ], [ 0, %for.inc.while.body_crit_edge ]
  %call.i45.lcssa.ph = phi i32 [ %call.i45.3, %for.inc.2.while.body_crit_edge ], [ %call.i45.2, %for.inc.1.while.body_crit_edge ], [ %call.i45.1, %for.inc.while.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.dac124s085_led], ptr %call.i, i32 0, i32 %i.047.lcssa.ph
  tail call void @led_classdev_unregister(ptr noundef %arrayidx) #6
  br i1 %cmp13.1, label %while.body.cleanup_crit_edge, label %while.body.1

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.1:                                     ; preds = %while.body
  %dec.1 = add nsw i32 %i.047.lcssa.ph, -1
  %arrayidx.1 = getelementptr [4 x %struct.dac124s085_led], ptr %call.i, i32 0, i32 %dec.1
  tail call void @led_classdev_unregister(ptr noundef %arrayidx.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.1)
  %tobool16.not.1 = icmp eq i32 %dec.1, 0
  br i1 %tobool16.not.1, label %while.body.1.cleanup_crit_edge, label %while.body.2

while.body.1.cleanup_crit_edge:                   ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.2:                                     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #8
  %dec.2 = add nsw i32 %i.047.lcssa.ph, -2
  %arrayidx.2 = getelementptr [4 x %struct.dac124s085_led], ptr %call.i, i32 0, i32 %dec.2
  tail call void @led_classdev_unregister(ptr noundef %arrayidx.2) #6
  br label %cleanup

cleanup:                                          ; preds = %while.body.2, %while.body.1.cleanup_crit_edge, %while.body.cleanup_crit_edge, %for.inc.3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc.3 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i45, %if.end.cleanup_crit_edge ], [ %call.i45.lcssa.ph, %while.body.2 ], [ %call.i45.lcssa.ph, %while.body.1.cleanup_crit_edge ], [ %call.i45.lcssa.ph, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac124s085_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @led_classdev_unregister(ptr noundef %1) #6
  %arrayidx.1 = getelementptr [4 x %struct.dac124s085_led], ptr %1, i32 0, i32 1
  tail call void @led_classdev_unregister(ptr noundef %arrayidx.1) #6
  %arrayidx.2 = getelementptr [4 x %struct.dac124s085_led], ptr %1, i32 0, i32 2
  tail call void @led_classdev_unregister(ptr noundef %arrayidx.2) #6
  %arrayidx.3 = getelementptr [4 x %struct.dac124s085_led], ptr %1, i32 0, i32 3
  tail call void @led_classdev_unregister(ptr noundef %arrayidx.3) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac124s085_set_brightness(ptr noundef %ldev, i32 noundef %brightness) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %word = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %word) #6
  %mutex = getelementptr inbounds %struct.dac124s085_led, ptr %ldev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %id = getelementptr inbounds %struct.dac124s085_led, ptr %ldev, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %shl = shl i32 %1, 14
  %and = and i32 %brightness, 4095
  %or = or i32 %shl, %and
  %2 = trunc i32 %or to i16
  %conv = or i16 %2, 4096
  %3 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %4 = ptrtoint ptr %word to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %word, align 2
  %spi = getelementptr inbounds %struct.dac124s085_led, ptr %ldev, i32 0, i32 1
  %5 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %7 = getelementptr inbounds i8, ptr %t.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 92)
  %9 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %word, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %10 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
  %11 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_write.exit_crit_edge

entry.spi_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %entry.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %6, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  call void @mutex_unlock(ptr noundef %mutex) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %word) #6
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__initcall__kmod_leds_dac124s085__230_107_dac124s085_driver_init6, !1, !"__initcall__kmod_leds_dac124s085__230_107_dac124s085_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-dac124s085.c", i32 107, i32 1}
!2 = !{ptr @__exitcall_dac124s085_driver_exit, !1, !"__exitcall_dac124s085_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author231, !4, !"__UNIQUE_ID_author231", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-dac124s085.c", i32 109, i32 1}
!5 = !{ptr @__UNIQUE_ID_description232, !6, !"__UNIQUE_ID_description232", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-dac124s085.c", i32 110, i32 1}
!7 = !{ptr @__UNIQUE_ID_file233, !8, !"__UNIQUE_ID_file233", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-dac124s085.c", i32 111, i32 1}
!9 = !{ptr @__UNIQUE_ID_license234, !8, !"__UNIQUE_ID_license234", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias235, !11, !"__UNIQUE_ID_alias235", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-dac124s085.c", i32 112, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-dac124s085.c", i32 103, i32 11}
!14 = !{ptr @dac124s085_driver, !15, !"dac124s085_driver", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-dac124s085.c", i32 99, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-dac124s085.c", i32 66, i32 42}
!18 = !{ptr @dac124s085_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/leds/leds-dac124s085.c", i32 67, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
