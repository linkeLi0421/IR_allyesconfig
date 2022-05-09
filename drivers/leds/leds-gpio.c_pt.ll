; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-gpio.c_pt.bc'
source_filename = "../drivers/leds/leds-gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gpio_led = type { ptr, ptr, i32, i8, ptr }
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
%struct.gpio_led_platform_data = type { i32, ptr, ptr }
%struct.gpio_leds_priv = type { i32, [0 x %struct.gpio_led_data] }
%struct.gpio_led_data = type { %struct.led_classdev, ptr, i8, i8, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }

@__initcall__kmod_leds_gpio__223_308_gpio_led_driver_init6 = internal global ptr @gpio_led_driver_init, section ".initcall6.init", align 4
@gpio_led_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gpio_led_probe, ptr null, ptr @gpio_led_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_gpio_leds_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gpio_led_driver_exit = internal global ptr @gpio_led_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author224 = internal constant [85 x i8] c"leds_gpio.author=Raphael Assenat <raph@8d.com>, Trent Piepho <tpiepho@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [38 x i8] c"leds_gpio.description=GPIO LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [38 x i8] c"leds_gpio.file=drivers/leds/leds-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [22 x i8] c"leds_gpio.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias228 = internal constant [35 x i8] c"leds_gpio.alias=platform:leds-gpio\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"leds-gpio\00", [22 x i8] zeroinitializer }, align 32
@of_gpio_leds_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gpio-leds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@gpio_led_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 265, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Skipping unavailable LED gpio %d (%s)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio_led_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/leds/leds-gpio.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gpio_led_probe._entry_ptr = internal global ptr @gpio_led_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"retain-state-suspended\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"retain-state-shutdown\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"panic-indicator\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [16 x i8] c"gpio_led_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 299, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 303, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"of_gpio_leds_match\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 187, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 264, i32 5 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 166, i32 38 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 168, i32 38 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [28 x i8] c"../drivers/leds/leds-gpio.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 170, i32 38 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_alias228, ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_gpio_led_driver_exit, ptr @__initcall__kmod_leds_gpio__223_308_gpio_led_driver_init6, ptr @gpio_led_driver_exit, ptr @gpio_led_probe._entry, ptr @gpio_led_probe._entry_ptr, ptr @gpio_led_driver, ptr @.str, ptr @of_gpio_leds_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_led_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_gpio_leds_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_led_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_led_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_led_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gpio_led_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpio_led_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_led_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %led.i = alloca %struct.gpio_led, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.else32_crit_edge, label %land.lhs.true

entry.if.else32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else32

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.else32_crit_edge, label %if.then

land.lhs.true.if.else32_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else32

if.then:                                          ; preds = %land.lhs.true
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 412) #6
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %7 = add nuw i32 %6, 4
  %retval.0.i = select i1 %5, i32 -1, i32 %7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %retval.0.i, i32 noundef 3520) #6
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.then.cleanup39_crit_edge, label %if.end

if.then.cleanup39_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39

if.end:                                           ; preds = %if.then
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp94 = icmp sgt i32 %9, 0
  br i1 %cmp94, label %for.body.lr.ph, label %if.end.if.end38_crit_edge

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

for.body.lr.ph:                                   ; preds = %if.end
  %leds = getelementptr inbounds %struct.gpio_led_platform_data, ptr %1, i32 0, i32 1
  %gpio_blink_set = getelementptr inbounds %struct.gpio_led_platform_data, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.095 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %leds to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %leds, align 4
  %arrayidx = getelementptr %struct.gpio_led, ptr %12, i32 %i.095
  %arrayidx12 = getelementptr %struct.gpio_leds_priv, ptr %call.i, i32 0, i32 1, i32 %i.095
  %gpiod = getelementptr %struct.gpio_led, ptr %12, i32 %i.095, i32 4
  %13 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpiod, align 4
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %if.else, label %for.body.if.end20_crit_edge

for.body.if.end20_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.else:                                          ; preds = %for.body
  %call.i74 = tail call ptr @devm_gpiod_get_index(ptr noundef %dev, ptr noundef null, i32 noundef %i.095, i32 noundef 3) #6
  %cmp.i.i = icmp ugt ptr %call.i74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %call2.i = tail call i32 @gpiod_set_consumer_name(ptr noundef %call.i74, ptr noundef %16) #6
  br label %if.end20

if.end.i:                                         ; preds = %if.else
  %cmp.not.i = icmp eq ptr %call.i74, inttoptr (i32 -2 to ptr)
  br i1 %cmp.not.i, label %if.end5.i, label %if.end.i.if.end20_crit_edge

if.end.i.if.end20_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end5.i:                                        ; preds = %if.end.i
  %gpio.i = getelementptr %struct.gpio_led, ptr %12, i32 %i.095, i32 2
  %17 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gpio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %18)
  %19 = icmp ult i32 %18, 2048
  br i1 %19, label %if.end9.i, label %if.end5.i.if.end20_crit_edge

if.end5.i.if.end20_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end9.i:                                        ; preds = %if.end5.i
  %active_low.i = getelementptr %struct.gpio_led, ptr %12, i32 %i.095, i32 3
  %20 = ptrtoint ptr %active_low.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %active_low.i, align 4
  %21 = lshr i8 %bf.load.i, 5
  %22 = and i8 %21, 4
  %23 = zext i8 %22 to i32
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %call14.i = tail call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %18, i32 noundef %23, ptr noundef %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.then16.i, label %if.end18.i

if.then16.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = inttoptr i32 %call14.i to ptr
  br label %if.end20

if.end18.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gpio.i, align 4
  %call20.i = tail call ptr @gpio_to_desc(i32 noundef %28) #6
  %tobool21.not.i = icmp eq ptr %call20.i, null
  %spec.select41.i = select i1 %tobool21.not.i, ptr inttoptr (i32 -22 to ptr), ptr %call20.i
  br label %if.end20

if.end20:                                         ; preds = %if.end18.i, %if.then16.i, %if.end5.i.if.end20_crit_edge, %if.end.i.if.end20_crit_edge, %if.then.i, %for.body.if.end20_crit_edge
  %retval.0.i75.sink = phi ptr [ %14, %for.body.if.end20_crit_edge ], [ %26, %if.then16.i ], [ %call.i74, %if.then.i ], [ %call.i74, %if.end.i.if.end20_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end5.i.if.end20_crit_edge ], [ %spec.select41.i, %if.end18.i ]
  %gpiod19 = getelementptr %struct.gpio_leds_priv, ptr %call.i, i32 0, i32 1, i32 %i.095, i32 1
  %29 = ptrtoint ptr %gpiod19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %retval.0.i75.sink, ptr %gpiod19, align 4
  %cmp.i = icmp ugt ptr %retval.0.i75.sink, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end25

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %gpio = getelementptr %struct.gpio_led, ptr %12, i32 %i.095, i32 2
  %30 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gpio, align 4
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %31, ptr noundef %33) #9
  br label %for.inc

if.end25:                                         ; preds = %if.end20
  %34 = ptrtoint ptr %gpio_blink_set to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gpio_blink_set, align 4
  %call27 = tail call fastcc i32 @create_gpio_led(ptr noundef %arrayidx, ptr noundef %arrayidx12, ptr noundef %dev, ptr noundef null, ptr noundef %35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end25.cleanup39_crit_edge, label %if.end25.for.inc_crit_edge

if.end25.for.inc_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end25.cleanup39_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39

for.inc:                                          ; preds = %if.end25.for.inc_crit_edge, %do.end
  %inc = add nuw nsw i32 %i.095, 1
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call.i, align 4
  %cmp = icmp slt i32 %inc, %37
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end38_crit_edge

for.inc.if.end38_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.else32:                                        ; preds = %land.lhs.true.if.else32_crit_edge, %entry.if.else32_crit_edge
  %call.i76 = tail call i32 @device_get_child_node_count(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool.not.i = icmp eq i32 %call.i76, 0
  br i1 %tobool.not.i, label %if.else32.if.then35_crit_edge, label %if.end.i77

if.else32.if.then35_crit_edge:                    ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then35

if.end.i77:                                       ; preds = %if.else32
  %38 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i76, i32 412) #6
  %39 = extractvalue { i32, i1 } %38, 1
  %40 = extractvalue { i32, i1 } %38, 0
  %41 = add nuw i32 %40, 4
  %retval.0.i.i = select i1 %39, i32 -1, i32 %41
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %retval.0.i.i, i32 noundef 3520) #6
  %tobool5.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not.i, label %if.end.i77.if.then35_crit_edge, label %if.end8.i

if.end.i77.if.then35_crit_edge:                   ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then35

if.end8.i:                                        ; preds = %if.end.i77
  %call9.i = tail call ptr @device_get_next_child_node(ptr noundef %dev, ptr noundef null) #6
  %tobool10.not83.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not83.i, label %if.end8.i.gpio_leds_create.exit_crit_edge, label %for.body.lr.ph.i

if.end8.i.gpio_leds_create.exit_crit_edge:        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gpio_leds_create.exit

for.body.lr.ph.i:                                 ; preds = %if.end8.i
  %gpiod.i = getelementptr inbounds %struct.gpio_led, ptr %led.i, i32 0, i32 4
  %default_state.i = getelementptr inbounds %struct.gpio_led, ptr %led.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %child.084.i = phi ptr [ %call9.i, %for.body.lr.ph.i ], [ %call48.i, %for.inc.i.for.body.i_crit_edge ]
  %42 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %call.i.i, align 4
  %arrayidx.i = getelementptr %struct.gpio_leds_priv, ptr %call.i.i, i32 0, i32 1, i32 %43
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %led.i) #6
  %44 = call ptr @memset(ptr %led.i, i32 0, i32 16)
  %call.i77.i = tail call ptr @devm_fwnode_gpiod_get_index(ptr noundef %dev, ptr noundef nonnull %child.084.i, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #6
  %45 = ptrtoint ptr %gpiod.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i77.i, ptr %gpiod.i, align 4
  %cmp.i.i78 = icmp ugt ptr %call.i77.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i78, label %if.then14.i, label %if.end17.i

if.then14.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @fwnode_handle_put(ptr noundef nonnull %child.084.i) #6
  br label %cleanup.thread.i

if.end17.i:                                       ; preds = %for.body.i
  %gpiod19.i = getelementptr %struct.gpio_leds_priv, ptr %call.i.i, i32 0, i32 1, i32 %43, i32 1
  %46 = ptrtoint ptr %gpiod19.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i77.i, ptr %gpiod19.i, align 4
  %call20.i79 = tail call i32 @led_init_default_state_get(ptr noundef nonnull %child.084.i) #6
  %47 = trunc i32 %call20.i79 to i8
  %48 = ptrtoint ptr %default_state.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load.i80 = load i8, ptr %default_state.i, align 4
  %bf.value.i = shl i8 %47, 3
  %bf.shl.i = and i8 %bf.value.i, 24
  %bf.clear.i = and i8 %bf.load.i80, -25
  %bf.set.i = or i8 %bf.shl.i, %bf.clear.i
  store i8 %bf.set.i, ptr %default_state.i, align 4
  %call21.i = tail call zeroext i1 @fwnode_property_present(ptr noundef nonnull %child.084.i, ptr noundef nonnull @.str.6) #6
  br i1 %call21.i, label %if.then22.i, label %if.end17.i.if.end26.i_crit_edge

if.end17.i.if.end26.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.then22.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %bf.set25.i = or i8 %bf.set.i, 64
  %49 = ptrtoint ptr %default_state.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %bf.set25.i, ptr %default_state.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then22.i, %if.end17.i.if.end26.i_crit_edge
  %call27.i = tail call zeroext i1 @fwnode_property_present(ptr noundef nonnull %child.084.i, ptr noundef nonnull @.str.7) #6
  br i1 %call27.i, label %if.then28.i, label %if.end26.i.if.end32.i_crit_edge

if.end26.i.if.end32.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %default_state.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load29.i = load i8, ptr %default_state.i, align 4
  %bf.set31.i = or i8 %bf.load29.i, 4
  store i8 %bf.set31.i, ptr %default_state.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then28.i, %if.end26.i.if.end32.i_crit_edge
  %call33.i = tail call zeroext i1 @fwnode_property_present(ptr noundef nonnull %child.084.i, ptr noundef nonnull @.str.8) #6
  br i1 %call33.i, label %if.then34.i, label %if.end32.i.if.end38.i_crit_edge

if.end32.i.if.end38.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i

if.then34.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %default_state.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load35.i = load i8, ptr %default_state.i, align 4
  %bf.set37.i = or i8 %bf.load35.i, 32
  store i8 %bf.set37.i, ptr %default_state.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then34.i, %if.end32.i.if.end38.i_crit_edge
  %call39.i = call fastcc i32 @create_gpio_led(ptr noundef nonnull %led.i, ptr noundef %arrayidx.i, ptr noundef %dev, ptr noundef nonnull %child.084.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %cmp.i81 = icmp slt i32 %call39.i, 0
  br i1 %cmp.i81, label %if.then40.i, label %for.inc.i

if.then40.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @fwnode_handle_put(ptr noundef nonnull %child.084.i) #6
  %52 = inttoptr i32 %call39.i to ptr
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then40.i, %if.then14.i
  %retval.1.ph.i = phi ptr [ %52, %if.then40.i ], [ %call.i77.i, %if.then14.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %led.i) #6
  br label %gpio_leds_create.exit

for.inc.i:                                        ; preds = %if.end38.i
  %53 = ptrtoint ptr %gpiod19.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %gpiod19.i, align 4
  %dev44.i = getelementptr inbounds %struct.led_classdev, ptr %arrayidx.i, i32 0, i32 11
  %55 = ptrtoint ptr %dev44.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev44.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  %call45.i = tail call i32 @gpiod_set_consumer_name(ptr noundef %54, ptr noundef %58) #6
  %59 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %call.i.i, align 4
  %inc.i = add i32 %60, 1
  store i32 %inc.i, ptr %call.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %led.i) #6
  %call48.i = tail call ptr @device_get_next_child_node(ptr noundef %dev, ptr noundef nonnull %child.084.i) #6
  %tobool10.not.i = icmp eq ptr %call48.i, null
  br i1 %tobool10.not.i, label %for.inc.i.gpio_leds_create.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.gpio_leds_create.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gpio_leds_create.exit

gpio_leds_create.exit:                            ; preds = %for.inc.i.gpio_leds_create.exit_crit_edge, %cleanup.thread.i, %if.end8.i.gpio_leds_create.exit_crit_edge
  %retval.2.i = phi ptr [ %retval.1.ph.i, %cleanup.thread.i ], [ %call.i.i, %if.end8.i.gpio_leds_create.exit_crit_edge ], [ %call.i.i, %for.inc.i.gpio_leds_create.exit_crit_edge ]
  %cmp.i82 = icmp ugt ptr %retval.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %gpio_leds_create.exit.if.then35_crit_edge, label %gpio_leds_create.exit.if.end38_crit_edge

gpio_leds_create.exit.if.end38_crit_edge:         ; preds = %gpio_leds_create.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

gpio_leds_create.exit.if.then35_crit_edge:        ; preds = %gpio_leds_create.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then35

if.then35:                                        ; preds = %gpio_leds_create.exit.if.then35_crit_edge, %if.end.i77.if.then35_crit_edge, %if.else32.if.then35_crit_edge
  %retval.2.i88 = phi ptr [ %retval.2.i, %gpio_leds_create.exit.if.then35_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i77.if.then35_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.else32.if.then35_crit_edge ]
  %61 = ptrtoint ptr %retval.2.i88 to i32
  br label %cleanup39

if.end38:                                         ; preds = %gpio_leds_create.exit.if.end38_crit_edge, %for.inc.if.end38_crit_edge, %if.end.if.end38_crit_edge
  %priv.0 = phi ptr [ %retval.2.i, %gpio_leds_create.exit.if.end38_crit_edge ], [ %call.i, %if.end.if.end38_crit_edge ], [ %call.i, %for.inc.if.end38_crit_edge ]
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %62 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %priv.0, ptr %driver_data.i.i, align 4
  br label %cleanup39

cleanup39:                                        ; preds = %if.end38, %if.then35, %if.end25.cleanup39_crit_edge, %if.then.cleanup39_crit_edge
  %retval.2 = phi i32 [ 0, %if.end38 ], [ %61, %if.then35 ], [ -12, %if.then.cleanup39_crit_edge ], [ %call27, %if.end25.cleanup39_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_led_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6 = icmp sgt i32 %3, 0
  br i1 %cmp6, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %flags = getelementptr %struct.gpio_leds_priv, ptr %1, i32 0, i32 1, i32 %i.07, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.body
  %blinking.i = getelementptr %struct.gpio_leds_priv, ptr %1, i32 0, i32 1, i32 %i.07, i32 3
  %6 = ptrtoint ptr %blinking.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %blinking.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.else4.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %platform_gpio_blink_set.i = getelementptr %struct.gpio_leds_priv, ptr %1, i32 0, i32 1, i32 %i.07, i32 4
  %8 = ptrtoint ptr %platform_gpio_blink_set.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_gpio_blink_set.i, align 4
  %gpiod.i = getelementptr %struct.gpio_leds_priv, ptr %1, i32 0, i32 1, i32 %i.07, i32 1
  %10 = ptrtoint ptr %gpiod.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpiod.i, align 4
  %call2.i = tail call i32 %9(ptr noundef %11, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  %12 = ptrtoint ptr %blinking.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %blinking.i, align 1
  br label %if.end

if.else4.i:                                       ; preds = %if.then
  %can_sleep.i = getelementptr %struct.gpio_leds_priv, ptr %1, i32 0, i32 1, i32 %i.07, i32 2
  %13 = ptrtoint ptr %can_sleep.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %can_sleep.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool5.not.i = icmp eq i8 %14, 0
  %gpiod9.i = getelementptr %struct.gpio_leds_priv, ptr %1, i32 0, i32 1, i32 %i.07, i32 1
  %15 = ptrtoint ptr %gpiod9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpiod9.i, align 4
  br i1 %tobool5.not.i, label %if.else8.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef %16, i32 noundef 0) #6
  br label %if.end

if.else8.i:                                       ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value(ptr noundef %16, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.else8.i, %if.then6.i, %if.then1.i, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %i.07, 1
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  %cmp = icmp slt i32 %inc, %18
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_gpio_led(ptr nocapture noundef readonly %template, ptr noundef %led_dat, ptr noundef %parent, ptr noundef %fwnode, ptr noundef %blink_set) unnamed_addr #2 align 64 {
entry:
  %init_data = alloca %struct.led_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #6
  %0 = call ptr @memset(ptr %init_data, i32 0, i32 16)
  %default_trigger = getelementptr inbounds %struct.gpio_led, ptr %template, i32 0, i32 1
  %1 = ptrtoint ptr %default_trigger to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %default_trigger, align 4
  %default_trigger1 = getelementptr inbounds %struct.led_classdev, ptr %led_dat, i32 0, i32 14
  %3 = ptrtoint ptr %default_trigger1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %default_trigger1, align 4
  %gpiod = getelementptr inbounds %struct.gpio_led_data, ptr %led_dat, i32 0, i32 1
  %4 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpiod, align 4
  %call = tail call i32 @gpiod_cansleep(ptr noundef %5) #6
  %conv = trunc i32 %call to i8
  %can_sleep = getelementptr inbounds %struct.gpio_led_data, ptr %led_dat, i32 0, i32 2
  %6 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %can_sleep, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool.not = icmp eq i8 %conv, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %brightness_set = getelementptr inbounds %struct.led_classdev, ptr %led_dat, i32 0, i32 5
  %7 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @gpio_led_set, ptr %brightness_set, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %brightness_set_blocking = getelementptr inbounds %struct.led_classdev, ptr %led_dat, i32 0, i32 6
  %8 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @gpio_led_set_blocking, ptr %brightness_set_blocking, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %blinking = getelementptr inbounds %struct.gpio_led_data, ptr %led_dat, i32 0, i32 3
  %9 = ptrtoint ptr %blinking to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %blinking, align 1
  %tobool5.not = icmp eq ptr %blink_set, null
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %platform_gpio_blink_set = getelementptr inbounds %struct.gpio_led_data, ptr %led_dat, i32 0, i32 4
  %10 = ptrtoint ptr %platform_gpio_blink_set to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %blink_set, ptr %platform_gpio_blink_set, align 4
  %blink_set8 = getelementptr inbounds %struct.led_classdev, ptr %led_dat, i32 0, i32 8
  %11 = ptrtoint ptr %blink_set8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @gpio_blink_set, ptr %blink_set8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %default_state = getelementptr inbounds %struct.gpio_led, ptr %template, i32 0, i32 3
  %12 = ptrtoint ptr %default_state to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %default_state, align 4
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.clear)
  %cmp = icmp eq i8 %bf.clear, 2
  br i1 %cmp, label %if.then11, label %if.else18

if.then11:                                        ; preds = %if.end9
  %13 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpiod, align 4
  %call13 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then11.cleanup_crit_edge, label %if.then11.if.end26_crit_edge

if.then11.if.end26_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else18:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear)
  %cmp24 = icmp eq i8 %bf.clear, 1
  %conv25 = zext i1 %cmp24 to i32
  br label %if.end26

if.end26:                                         ; preds = %if.else18, %if.then11.if.end26_crit_edge
  %state.0 = phi i32 [ %call13, %if.then11.if.end26_crit_edge ], [ %conv25, %if.else18 ]
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %led_dat, i32 0, i32 1
  %15 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %state.0, ptr %brightness, align 4
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %led_dat, i32 0, i32 2
  %16 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %max_brightness, align 4
  %17 = ptrtoint ptr %default_state to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load29 = load i8, ptr %default_state, align 4
  %18 = and i8 %bf.load29, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool33.not = icmp eq i8 %18, 0
  br i1 %tobool33.not, label %if.then34, label %if.end26.if.end36_crit_edge

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then34:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.led_classdev, ptr %led_dat, i32 0, i32 3
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %or = or i32 %20, 65536
  store i32 %or, ptr %flags, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end26.if.end36_crit_edge
  %21 = ptrtoint ptr %default_state to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load37 = load i8, ptr %default_state, align 4
  %22 = and i8 %bf.load37, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool41.not = icmp eq i8 %22, 0
  br i1 %tobool41.not, label %if.end36.if.end46_crit_edge, label %if.then42

if.end36.if.end46_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %flags44 = getelementptr inbounds %struct.led_classdev, ptr %led_dat, i32 0, i32 3
  %23 = ptrtoint ptr %flags44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags44, align 4
  %or45 = or i32 %24, 1048576
  store i32 %or45, ptr %flags44, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end36.if.end46_crit_edge
  %25 = ptrtoint ptr %default_state to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load47 = load i8, ptr %default_state, align 4
  %26 = and i8 %bf.load47, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool51.not = icmp eq i8 %26, 0
  br i1 %tobool51.not, label %if.end46.if.end56_crit_edge, label %if.then52

if.end46.if.end56_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then52:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %flags54 = getelementptr inbounds %struct.led_classdev, ptr %led_dat, i32 0, i32 3
  %27 = ptrtoint ptr %flags54 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags54, align 4
  %or55 = or i32 %28, 4194304
  store i32 %or55, ptr %flags54, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.end46.if.end56_crit_edge
  %29 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gpiod, align 4
  %call58 = tail call i32 @gpiod_direction_output(ptr noundef %30, i32 noundef %state.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.end56.cleanup_crit_edge, label %if.end62

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end62:                                         ; preds = %if.end56
  %31 = ptrtoint ptr %template to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %template, align 4
  %tobool63.not = icmp eq ptr %32, null
  br i1 %tobool63.not, label %if.else70, label %if.then64

if.then64:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %led_dat to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %led_dat, align 4
  %call.i = tail call i32 @devm_led_classdev_register_ext(ptr noundef %parent, ptr noundef %led_dat, ptr noundef null) #6
  br label %cleanup

if.else70:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %fwnode, ptr %init_data, align 4
  %call73 = call i32 @devm_led_classdev_register_ext(ptr noundef %parent, ptr noundef %led_dat, ptr noundef nonnull %init_data) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else70, %if.then64, %if.end56.cleanup_crit_edge, %if.then11.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then11.cleanup_crit_edge ], [ %call58, %if.end56.cleanup_crit_edge ], [ %call.i, %if.then64 ], [ %call73, %if.else70 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_led_set(ptr nocapture noundef %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp = icmp ne i32 %value, 0
  %. = zext i1 %cmp to i32
  %blinking = getelementptr inbounds %struct.gpio_led_data, ptr %led_cdev, i32 0, i32 3
  %0 = ptrtoint ptr %blinking to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %blinking, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else4, label %if.then1

if.then1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %platform_gpio_blink_set = getelementptr inbounds %struct.gpio_led_data, ptr %led_cdev, i32 0, i32 4
  %2 = ptrtoint ptr %platform_gpio_blink_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_gpio_blink_set, align 4
  %gpiod = getelementptr inbounds %struct.gpio_led_data, ptr %led_cdev, i32 0, i32 1
  %4 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpiod, align 4
  %call2 = tail call i32 %3(ptr noundef %5, i32 noundef %., ptr noundef null, ptr noundef null) #6
  %6 = ptrtoint ptr %blinking to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %blinking, align 1
  br label %if.end11

if.else4:                                         ; preds = %entry
  %can_sleep = getelementptr inbounds %struct.gpio_led_data, ptr %led_cdev, i32 0, i32 2
  %7 = ptrtoint ptr %can_sleep to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %can_sleep, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  %gpiod9 = getelementptr inbounds %struct.gpio_led_data, ptr %led_cdev, i32 0, i32 1
  %9 = ptrtoint ptr %gpiod9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpiod9, align 4
  br i1 %tobool5.not, label %if.else8, label %if.then6

if.then6:                                         ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef %10, i32 noundef %.) #6
  br label %if.end11

if.else8:                                         ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value(ptr noundef %10, i32 noundef %.) #6
  br label %if.end11

if.end11:                                         ; preds = %if.else8, %if.then6, %if.then1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_led_set_blocking(ptr nocapture noundef %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp.i = icmp ne i32 %value, 0
  %..i = zext i1 %cmp.i to i32
  %blinking.i = getelementptr inbounds %struct.gpio_led_data, ptr %led_cdev, i32 0, i32 3
  %0 = ptrtoint ptr %blinking.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %blinking.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.else4.i, label %if.then1.i

if.then1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %platform_gpio_blink_set.i = getelementptr inbounds %struct.gpio_led_data, ptr %led_cdev, i32 0, i32 4
  %2 = ptrtoint ptr %platform_gpio_blink_set.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_gpio_blink_set.i, align 4
  %gpiod.i = getelementptr inbounds %struct.gpio_led_data, ptr %led_cdev, i32 0, i32 1
  %4 = ptrtoint ptr %gpiod.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpiod.i, align 4
  %call2.i = tail call i32 %3(ptr noundef %5, i32 noundef %..i, ptr noundef null, ptr noundef null) #6
  %6 = ptrtoint ptr %blinking.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %blinking.i, align 1
  br label %gpio_led_set.exit

if.else4.i:                                       ; preds = %entry
  %can_sleep.i = getelementptr inbounds %struct.gpio_led_data, ptr %led_cdev, i32 0, i32 2
  %7 = ptrtoint ptr %can_sleep.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %can_sleep.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not.i = icmp eq i8 %8, 0
  %gpiod9.i = getelementptr inbounds %struct.gpio_led_data, ptr %led_cdev, i32 0, i32 1
  %9 = ptrtoint ptr %gpiod9.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpiod9.i, align 4
  br i1 %tobool5.not.i, label %if.else8.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef %10, i32 noundef %..i) #6
  br label %gpio_led_set.exit

if.else8.i:                                       ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value(ptr noundef %10, i32 noundef %..i) #6
  br label %gpio_led_set.exit

gpio_led_set.exit:                                ; preds = %if.else8.i, %if.then6.i, %if.then1.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_blink_set(ptr nocapture noundef %led_cdev, ptr noundef %delay_on, ptr noundef %delay_off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %blinking = getelementptr inbounds %struct.gpio_led_data, ptr %led_cdev, i32 0, i32 3
  %0 = ptrtoint ptr %blinking to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %blinking, align 1
  %platform_gpio_blink_set = getelementptr inbounds %struct.gpio_led_data, ptr %led_cdev, i32 0, i32 4
  %1 = ptrtoint ptr %platform_gpio_blink_set to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_gpio_blink_set, align 4
  %gpiod = getelementptr inbounds %struct.gpio_led_data, ptr %led_cdev, i32 0, i32 1
  %3 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gpiod, align 4
  %call1 = tail call i32 %2(ptr noundef %4, i32 noundef 2, ptr noundef %delay_on, ptr noundef %delay_off) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_init_default_state_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_fwnode_gpiod_get_index(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_leds_gpio__223_308_gpio_led_driver_init6, !1, !"__initcall__kmod_leds_gpio__223_308_gpio_led_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-gpio.c", i32 308, i32 1}
!2 = !{ptr @__exitcall_gpio_led_driver_exit, !1, !"__exitcall_gpio_led_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author224, !4, !"__UNIQUE_ID_author224", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-gpio.c", i32 310, i32 1}
!5 = !{ptr @__UNIQUE_ID_description225, !6, !"__UNIQUE_ID_description225", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-gpio.c", i32 311, i32 1}
!7 = !{ptr @__UNIQUE_ID_file226, !8, !"__UNIQUE_ID_file226", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-gpio.c", i32 312, i32 1}
!9 = !{ptr @__UNIQUE_ID_license227, !8, !"__UNIQUE_ID_license227", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias228, !11, !"__UNIQUE_ID_alias228", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-gpio.c", i32 313, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-gpio.c", i32 303, i32 11}
!14 = !{ptr @gpio_led_driver, !15, !"gpio_led_driver", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-gpio.c", i32 299, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-gpio.c", i32 264, i32 5}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @gpio_led_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @gpio_led_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/leds/leds-gpio.c", i32 166, i32 38}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/leds/leds-gpio.c", i32 168, i32 38}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/leds/leds-gpio.c", i32 170, i32 38}
!30 = !{ptr @of_gpio_leds_match, !31, !"of_gpio_leds_match", i1 false, i1 false}
!31 = !{!"../drivers/leds/leds-gpio.c", i32 187, i32 34}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
