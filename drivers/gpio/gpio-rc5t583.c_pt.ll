; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-rc5t583.c_pt.bc'
source_filename = "../drivers/gpio/gpio-rc5t583.c"
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
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.rc5t583_gpio = type { %struct.gpio_chip, ptr }
%struct.rc5t583_platform_data = type { i32, i32, i8, [14 x i32], [14 x i32], [14 x ptr] }
%struct.rc5t583 = type { ptr, ptr, i32, i32, %struct.mutex, [5 x i32], i8, [8 x i8], [2 x i8] }

@__initcall__kmod_gpio_rc5t583__223_141_rc5t583_gpio_init4 = internal global ptr @rc5t583_gpio_init, section ".initcall4.init", align 4
@rc5t583_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rc5t583_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc5t583-gpio\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpio-rc5t583\00", [19 x i8] zeroinitializer }, align 32
@rc5t583_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rc5t583_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@___asan_gen_.2 = private unnamed_addr constant [20 x i8] c"rc5t583_gpio_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 130, i32 31 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 132, i32 14 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 107, i32 34 }
@___asan_gen_.11 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.15 = private constant [31 x i8] c"../drivers/gpio/gpio-rc5t583.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 126, i32 9 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__initcall__kmod_gpio_rc5t583__223_141_rc5t583_gpio_init4, ptr @rc5t583_gpio_driver, ptr @.str, ptr @.str.1, ptr @rc5t583_gpio_probe.lock_key, ptr @rc5t583_gpio_probe.request_key], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rc5t583_gpio_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rc5t583_gpio_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rc5t583_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 352, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.1, ptr %call.i, align 4
  %owner = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %owner, align 4
  %free = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @rc5t583_gpio_free, ptr %free, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 8
  %11 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @rc5t583_gpio_dir_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 9
  %12 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @rc5t583_gpio_dir_output, ptr %direction_output, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %13 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @rc5t583_gpio_set, ptr %set, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %14 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @rc5t583_gpio_get, ptr %get, align 4
  %to_irq = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 15
  %15 = ptrtoint ptr %to_irq to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @rc5t583_gpio_to_irq, ptr %to_irq, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %16 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 8, ptr %ngpio, align 4
  %can_sleep = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 23
  %17 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %can_sleep, align 4
  %parent16 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %parent16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %parent16, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %19 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %base, align 4
  %rc5t58318 = getelementptr inbounds %struct.rc5t583_gpio, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %rc5t58318 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %3, ptr %rc5t58318, align 4
  %tobool19.not = icmp eq ptr %7, null
  br i1 %tobool19.not, label %if.end.if.end25_crit_edge, label %land.lhs.true

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end
  %gpio_base = getelementptr inbounds %struct.rc5t583_platform_data, ptr %7, i32 0, i32 1
  %21 = ptrtoint ptr %gpio_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gpio_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool20.not = icmp eq i32 %22, 0
  br i1 %tobool20.not, label %land.lhs.true.if.end25_crit_edge, label %if.then21

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %base, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %land.lhs.true.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call28 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @rc5t583_gpio_probe.lock_key, ptr noundef nonnull @rc5t583_gpio_probe.request_key) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.end25 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rc5t583_gpio_free(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %rc5t583 = getelementptr inbounds %struct.rc5t583_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %rc5t583 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rc5t583, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %shl = shl nuw i32 1, %offset
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.rc5t583, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 163, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rc5t583_gpio_dir_input(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %rc5t583 = getelementptr inbounds %struct.rc5t583_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %rc5t583 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rc5t583, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %shl = shl nuw i32 1, %offset
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.rc5t583, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 160, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i10 = getelementptr inbounds %struct.rc5t583, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i10, align 4
  %call.i.i11 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 163, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i11, %if.end ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rc5t583_gpio_dir_output(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %rc5t583 = getelementptr inbounds %struct.rc5t583_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %rc5t583 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rc5t583, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %rc5t583.i = getelementptr inbounds %struct.rc5t583_gpio, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %rc5t583.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rc5t583.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %shl2.i = shl nuw i32 1, %offset
  %driver_data.i.i6.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i6.i, align 4
  %regmap.i7.i = getelementptr inbounds %struct.rc5t583, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i7.i, align 4
  %.shl2.i = select i1 %tobool.not.i, i32 0, i32 %shl2.i
  %call.i.i8.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 162, i32 noundef %shl2.i, i32 noundef %.shl2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.rc5t583, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 160, i32 noundef %shl2.i, i32 noundef %shl2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i12 = getelementptr inbounds %struct.rc5t583, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i12, align 4
  %call.i.i13 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 163, i32 noundef %shl2.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i13, %if.end ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rc5t583_gpio_set(ptr noundef %gc, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %rc5t583 = getelementptr inbounds %struct.rc5t583_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %rc5t583 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rc5t583, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %shl2 = shl nuw i32 1, %offset
  %driver_data.i.i6 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i6, align 4
  %regmap.i7 = getelementptr inbounds %struct.rc5t583, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i7, align 4
  %.shl2 = select i1 %tobool.not, i32 0, i32 %shl2
  %call.i.i8 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 162, i32 noundef %shl2, i32 noundef %.shl2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rc5t583_gpio_get(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  %ival.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %rc5t583 = getelementptr inbounds %struct.rc5t583_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %rc5t583 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rc5t583, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ival.i) #4
  %6 = ptrtoint ptr %ival.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %ival.i, align 4, !annotation !20
  %regmap.i = getelementptr inbounds %struct.rc5t583, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 171, ptr noundef nonnull %ival.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rc5t583_read.exit.thread, label %rc5t583_read.exit

rc5t583_read.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %ival.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ival.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ival.i) #4
  %phi.cast = and i32 %10, 255
  br label %if.end

rc5t583_read.exit:                                ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ival.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %rc5t583_read.exit.cleanup_crit_edge, label %rc5t583_read.exit.if.end_crit_edge

rc5t583_read.exit.if.end_crit_edge:               ; preds = %rc5t583_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

rc5t583_read.exit.cleanup_crit_edge:              ; preds = %rc5t583_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %rc5t583_read.exit.if.end_crit_edge, %rc5t583_read.exit.thread
  %val.09 = phi i32 [ %phi.cast, %rc5t583_read.exit.thread ], [ 0, %rc5t583_read.exit.if.end_crit_edge ]
  %11 = lshr i32 %val.09, %offset
  %12 = and i32 %11, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %rc5t583_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.end ], [ %call1.i, %rc5t583_read.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rc5t583_gpio_to_irq(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %offset)
  %cmp = icmp ult i32 %offset, 8
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %rc5t583 = getelementptr inbounds %struct.rc5t583_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %rc5t583 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rc5t583, align 4
  %irq_base = getelementptr inbounds %struct.rc5t583, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_base, align 4
  %add = add nuw nsw i32 %offset, 31
  %add1 = add i32 %add, %3
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add1, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @__initcall__kmod_gpio_rc5t583__223_141_rc5t583_gpio_init4, !1, !"__initcall__kmod_gpio_rc5t583__223_141_rc5t583_gpio_init4", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-rc5t583.c", i32 141, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-rc5t583.c", i32 132, i32 14}
!4 = !{ptr @rc5t583_gpio_driver, !5, !"rc5t583_gpio_driver", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-rc5t583.c", i32 130, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-rc5t583.c", i32 107, i32 34}
!8 = !{ptr @rc5t583_gpio_probe.lock_key, !9, !"lock_key", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-rc5t583.c", i32 126, i32 9}
!10 = !{ptr @rc5t583_gpio_probe.request_key, !9, !"request_key", i1 false, i1 false}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"auto-init"}
