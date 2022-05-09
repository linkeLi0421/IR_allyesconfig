; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-ucb1400.c_pt.bc'
source_filename = "../drivers/gpio/gpio-ucb1400.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.ucb1400_gpio = type { %struct.gpio_chip, ptr, i32, ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.72, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.72 = type { ptr }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.75, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.75 = type { i32, [28 x i8] }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_gpio_ucb1400__234_100_ucb1400_gpio_driver_init6 = internal global ptr @ucb1400_gpio_driver_init, section ".initcall6.init", align 4
@ucb1400_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ucb1400_gpio_probe, ptr @ucb1400_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ucb1400_gpio_driver_exit = internal global ptr @ucb1400_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description235 = internal constant [53 x i8] c"gpio_ucb1400.description=Philips UCB1400 GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [44 x i8] c"gpio_ucb1400.file=drivers/gpio/gpio-ucb1400\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [25 x i8] c"gpio_ucb1400.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias238 = internal constant [41 x i8] c"gpio_ucb1400.alias=platform:ucb1400_gpio\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ucb1400_gpio\00", [19 x i8] zeroinitializer }, align 32
@ucb1400_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ucb1400_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"ucb1400_gpio_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 92, i32 31 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 96, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.11 = private constant [31 x i8] c"../drivers/gpio/gpio-ucb1400.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 66, i32 8 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias238, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__exitcall_ucb1400_gpio_driver_exit, ptr @__initcall__kmod_gpio_ucb1400__234_100_ucb1400_gpio_driver_init6, ptr @ucb1400_gpio_driver_exit, ptr @ucb1400_gpio_driver, ptr @.str, ptr @ucb1400_gpio_probe.lock_key, ptr @ucb1400_gpio_probe.request_key], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucb1400_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucb1400_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucb1400_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ucb1400_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ucb1400_gpio_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ucb1400_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @ucb1400_gpio_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucb1400_gpio_probe(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.err26_crit_edge, label %land.lhs.true

entry.err26_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %err26

land.lhs.true:                                    ; preds = %entry
  %gpio_offset = getelementptr inbounds %struct.ucb1400_gpio, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %gpio_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.err26_crit_edge, label %if.end

land.lhs.true.err26_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %err26

if.end:                                           ; preds = %land.lhs.true
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %driver_data.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str, ptr %1, align 4
  %6 = ptrtoint ptr %gpio_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio_offset, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %base, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 10, ptr %ngpio, align 4
  %owner = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %owner, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ucb1400_gpio_dir_in, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ucb1400_gpio_dir_out, ptr %direction_output, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ucb1400_gpio_get, ptr %get, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ucb1400_gpio_set, ptr %set, align 4
  %can_sleep = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 23
  %15 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %can_sleep, align 4
  %call14 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull @ucb1400_gpio_probe.lock_key, ptr noundef nonnull @ucb1400_gpio_probe.request_key) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end.err26_crit_edge

if.end.err26_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %err26

if.end17:                                         ; preds = %if.end
  %gpio_setup = getelementptr inbounds %struct.ucb1400_gpio, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %gpio_setup to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpio_setup, align 4
  %tobool18.not = icmp eq ptr %17, null
  br i1 %tobool18.not, label %if.end17.err26_crit_edge, label %if.then19

if.end17.err26_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %err26

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %19 to i32
  %call24 = tail call i32 %17(ptr noundef %dev1, i32 noundef %conv) #3
  br label %err26

err26:                                            ; preds = %if.then19, %if.end17.err26_crit_edge, %if.end.err26_crit_edge, %land.lhs.true.err26_crit_edge, %entry.err26_crit_edge
  %err.0 = phi i32 [ %call14, %if.end.err26_crit_edge ], [ %call24, %if.then19 ], [ 0, %if.end17.err26_crit_edge ], [ -22, %land.lhs.true.err26_crit_edge ], [ -22, %entry.err26_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucb1400_gpio_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %land.lhs.true

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %gpio_teardown = getelementptr inbounds %struct.ucb1400_gpio, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gpio_teardown to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_teardown, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end7_crit_edge, label %if.then

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %5 to i32
  %call4 = tail call i32 %3(ptr noundef %dev3, i32 noundef %conv) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %call4, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucb1400_gpio_dir_in(ptr noundef %gc, i32 noundef %off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #3
  %ac97 = getelementptr inbounds %struct.ucb1400_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ac97, align 4
  %bus.i11.i = getelementptr inbounds %struct.snd_ac97, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bus.i11.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i11.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %read.i12.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %read.i12.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i12.i, align 4
  %call.i13.i = tail call zeroext i16 %7(ptr noundef %1, i16 noundef zeroext 92) #3
  %conv5.i = and i32 %off, 65535
  %shl6.i = shl nuw i32 1, %conv5.i
  %8 = trunc i32 %shl6.i to i16
  %9 = xor i16 %8, -1
  %conv7.i = and i16 %call.i13.i, %9
  %10 = ptrtoint ptr %bus.i11.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i11.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %write.i.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write.i.i, align 4
  tail call void %15(ptr noundef %1, i16 noundef zeroext 92, i16 noundef zeroext %conv7.i) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucb1400_gpio_dir_out(ptr noundef %gc, i32 noundef %off, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #3
  %ac97 = getelementptr inbounds %struct.ucb1400_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ac97, align 4
  %bus.i11.i = getelementptr inbounds %struct.snd_ac97, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bus.i11.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i11.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %read.i12.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %read.i12.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i12.i, align 4
  %call.i13.i = tail call zeroext i16 %7(ptr noundef %1, i16 noundef zeroext 92) #3
  %conv5.i = and i32 %off, 65535
  %shl6.i = shl nuw i32 1, %conv5.i
  %neg.i = xor i32 %shl6.i, -1
  %8 = trunc i32 %shl6.i to i16
  %conv7.i = or i16 %call.i13.i, %8
  %9 = ptrtoint ptr %bus.i11.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i11.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %write.i.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write.i.i, align 4
  tail call void %14(ptr noundef %1, i16 noundef zeroext 92, i16 noundef zeroext %conv7.i) #3
  %15 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ac97, align 4
  %conv3 = trunc i32 %val to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3)
  %tobool.not.i = icmp eq i16 %conv3, 0
  %bus.i11.i6 = getelementptr inbounds %struct.snd_ac97, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %bus.i11.i6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus.i11.i6, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %read.i12.i7 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %read.i12.i7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read.i12.i7, align 4
  %call.i13.i8 = tail call zeroext i16 %22(ptr noundef %16, i16 noundef zeroext 90) #3
  %conv4.i9 = zext i16 %call.i13.i8 to i32
  %or.i12 = or i32 %shl6.i, %conv4.i9
  %and.i14 = and i32 %conv4.i9, %neg.i
  %cond.i = select i1 %tobool.not.i, i32 %and.i14, i32 %or.i12
  %conv7.i15 = trunc i32 %cond.i to i16
  %23 = ptrtoint ptr %bus.i11.i6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus.i11.i6, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %write.i.i17 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %write.i.i17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write.i.i17, align 4
  tail call void %28(ptr noundef %16, i16 noundef zeroext 90, i16 noundef zeroext %conv7.i15) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucb1400_gpio_get(ptr noundef %gc, i32 noundef %off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #3
  %ac97 = getelementptr inbounds %struct.ucb1400_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ac97, align 4
  %bus.i.i = getelementptr inbounds %struct.snd_ac97, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %read.i.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i.i, align 4
  %call.i.i = tail call zeroext i16 %7(ptr noundef %1, i16 noundef zeroext 90) #3
  %conv1.i = and i32 %off, 65535
  %shl.i = shl nuw i32 1, %conv1.i
  %8 = trunc i32 %shl.i to i16
  %conv2.i = and i16 %call.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv2.i)
  %tobool = icmp ne i16 %conv2.i, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ucb1400_gpio_set(ptr noundef %gc, i32 noundef %off, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #3
  %ac97 = getelementptr inbounds %struct.ucb1400_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ac97, align 4
  %conv1 = trunc i32 %val to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv1)
  %tobool.not.i = icmp eq i16 %conv1, 0
  %bus.i11.i = getelementptr inbounds %struct.snd_ac97, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bus.i11.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i11.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %read.i12.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %read.i12.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i12.i, align 4
  %call.i13.i = tail call zeroext i16 %7(ptr noundef %1, i16 noundef zeroext 90) #3
  %conv4.i = zext i16 %call.i13.i to i32
  %conv5.i = and i32 %off, 65535
  %shl6.i = shl nuw i32 1, %conv5.i
  %or.i = or i32 %shl6.i, %conv4.i
  %neg.i = xor i32 %shl6.i, -1
  %and.i = and i32 %conv4.i, %neg.i
  %cond.i = select i1 %tobool.not.i, i32 %and.i, i32 %or.i
  %conv7.i = trunc i32 %cond.i to i16
  %8 = ptrtoint ptr %bus.i11.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i11.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %write.i.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i.i, align 4
  tail call void %13(ptr noundef %1, i16 noundef zeroext 90, i16 noundef zeroext %conv7.i) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__initcall__kmod_gpio_ucb1400__234_100_ucb1400_gpio_driver_init6, !1, !"__initcall__kmod_gpio_ucb1400__234_100_ucb1400_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-ucb1400.c", i32 100, i32 1}
!2 = !{ptr @__exitcall_ucb1400_gpio_driver_exit, !1, !"__exitcall_ucb1400_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description235, !4, !"__UNIQUE_ID_description235", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-ucb1400.c", i32 102, i32 1}
!5 = !{ptr @__UNIQUE_ID_file236, !6, !"__UNIQUE_ID_file236", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-ucb1400.c", i32 103, i32 1}
!7 = !{ptr @__UNIQUE_ID_license237, !6, !"__UNIQUE_ID_license237", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias238, !9, !"__UNIQUE_ID_alias238", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-ucb1400.c", i32 104, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-ucb1400.c", i32 96, i32 11}
!12 = !{ptr @ucb1400_gpio_driver, !13, !"ucb1400_gpio_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-ucb1400.c", i32 92, i32 31}
!14 = !{ptr @ucb1400_gpio_probe.lock_key, !15, !"lock_key", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-ucb1400.c", i32 66, i32 8}
!16 = !{ptr @ucb1400_gpio_probe.request_key, !15, !"request_key", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
