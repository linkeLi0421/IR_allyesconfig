; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-timberdale.c_pt.bc'
source_filename = "../drivers/gpio/gpio-timberdale.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.timbgpio_platform_data = type { i32, i32, i32 }
%struct.timbgpio = type { ptr, %struct.spinlock, %struct.gpio_chip, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_gpio_timberdale__227_289_timbgpio_platform_driver_init6 = internal global ptr @timbgpio_platform_driver_init, section ".initcall6.init", align 4
@timbgpio_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @timbgpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"timb-gpio\00", [22 x i8] zeroinitializer }, align 32
@timbgpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 224, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid platform data\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"timbgpio_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpio/gpio-timberdale.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@timbgpio_probe._entry_ptr = internal global ptr @timbgpio_probe._entry, section ".printk_index", align 4
@timbgpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&tgpio->lock\00", [19 x i8] zeroinitializer }, align 32
@timbgpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@timbgpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@timbgpio_irqchip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.7, ptr null, ptr null, ptr @timbgpio_irq_enable, ptr @timbgpio_irq_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @timbgpio_irq_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GPIO\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [25 x i8] c"timbgpio_platform_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 279, i32 31 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 281, i32 13 }
@___asan_gen_.14 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 224, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 234, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 255, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"timbgpio_irqchip\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 207, i32 24 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [34 x i8] c"../drivers/gpio/gpio-timberdale.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 208, i32 11 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__initcall__kmod_gpio_timberdale__227_289_timbgpio_platform_driver_init6, ptr @timbgpio_probe._entry, ptr @timbgpio_probe._entry_ptr, ptr @timbgpio_platform_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @timbgpio_probe.__key, ptr @.str.6, ptr @timbgpio_probe.lock_key, ptr @timbgpio_probe.request_key, ptr @timbgpio_irqchip, ptr @.str.7], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timbgpio_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timbgpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timbgpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timbgpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timbgpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timbgpio_irqchip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @timbgpio_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @timbgpio_platform_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timbgpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call3 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %nr_pins = getelementptr inbounds %struct.timbgpio_platform_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nr_pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp = icmp sgt i32 %3, 32
  br i1 %cmp, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 404, i32 noundef 3520) #6
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %irq_base = getelementptr inbounds %struct.timbgpio_platform_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_base, align 4
  %irq_base8 = getelementptr inbounds %struct.timbgpio, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %irq_base8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %irq_base8, align 4
  %lock = getelementptr inbounds %struct.timbgpio, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @timbgpio_probe.__key, i16 noundef signext 3) #6
  %call13 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call13, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end7
  %gpio = getelementptr inbounds %struct.timbgpio, ptr %call.i, i32 0, i32 2
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end19.dev_name.exit_crit_edge

if.end19.dev_name.exit_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end19.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %if.end19.dev_name.exit_crit_edge ]
  %13 = ptrtoint ptr %gpio to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %retval.0.i, ptr %gpio, align 4
  %owner = getelementptr inbounds %struct.timbgpio, ptr %call.i, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %owner, align 4
  %parent = getelementptr inbounds %struct.timbgpio, ptr %call.i, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev1, ptr %parent, align 4
  %direction_input = getelementptr inbounds %struct.timbgpio, ptr %call.i, i32 0, i32 2, i32 8
  %16 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @timbgpio_gpio_direction_input, ptr %direction_input, align 4
  %get = getelementptr inbounds %struct.timbgpio, ptr %call.i, i32 0, i32 2, i32 10
  %17 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @timbgpio_gpio_get, ptr %get, align 4
  %direction_output = getelementptr inbounds %struct.timbgpio, ptr %call.i, i32 0, i32 2, i32 9
  %18 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @timbgpio_gpio_direction_output, ptr %direction_output, align 4
  %set = getelementptr inbounds %struct.timbgpio, ptr %call.i, i32 0, i32 2, i32 12
  %19 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @timbgpio_gpio_set, ptr %set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp23 = icmp sgt i32 %call3, -1
  br i1 %cmp23, label %land.rhs, label %dev_name.exit.land.end_crit_edge

dev_name.exit.land.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %irq_base8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq_base8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp25 = icmp sgt i32 %21, 0
  %phi.sel = select i1 %cmp25, ptr @timbgpio_to_irq, ptr null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %dev_name.exit.land.end_crit_edge
  %22 = phi ptr [ null, %dev_name.exit.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  %to_irq = getelementptr inbounds %struct.timbgpio, ptr %call.i, i32 0, i32 2, i32 15
  %23 = ptrtoint ptr %to_irq to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %to_irq, align 4
  %dbg_show = getelementptr inbounds %struct.timbgpio, ptr %call.i, i32 0, i32 2, i32 16
  %24 = ptrtoint ptr %dbg_show to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %dbg_show, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  %base = getelementptr inbounds %struct.timbgpio, ptr %call.i, i32 0, i32 2, i32 19
  %27 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %base, align 4
  %28 = ptrtoint ptr %nr_pins to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr_pins, align 4
  %conv = trunc i32 %29 to i16
  %ngpio = getelementptr inbounds %struct.timbgpio, ptr %call.i, i32 0, i32 2, i32 20
  %30 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv, ptr %ngpio, align 4
  %can_sleep = getelementptr inbounds %struct.timbgpio, ptr %call.i, i32 0, i32 2, i32 23
  %31 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %can_sleep, align 4
  %call28 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef %gpio, ptr noundef nonnull %call.i, ptr noundef nonnull @timbgpio_probe.lock_key, ptr noundef nonnull @timbgpio_probe.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %land.end.cleanup_crit_edge

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %land.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  %add.ptr = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp33 = icmp slt i32 %call3, 0
  br i1 %cmp33, label %if.end31.cleanup_crit_edge, label %lor.lhs.false35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false35:                                  ; preds = %if.end31
  %35 = ptrtoint ptr %irq_base8 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq_base8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp37 = icmp slt i32 %36, 1
  br i1 %cmp37, label %lor.lhs.false35.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false35.cleanup_crit_edge:                ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false35
  %37 = ptrtoint ptr %nr_pins to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nr_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp42104 = icmp sgt i32 %38, 0
  br i1 %cmp42104, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0105 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %39 = ptrtoint ptr %irq_base8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq_base8, align 4
  %add = add i32 %40, %i.0105
  tail call void @irq_set_chip_and_handler_name(i32 noundef %add, ptr noundef nonnull @timbgpio_irqchip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #6
  %41 = ptrtoint ptr %irq_base8 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq_base8, align 4
  %add46 = add i32 %42, %i.0105
  %call47 = tail call i32 @irq_set_chip_data(i32 noundef %add46, ptr noundef nonnull %call.i) #6
  %43 = ptrtoint ptr %irq_base8 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq_base8, align 4
  %add49 = add i32 %44, %i.0105
  tail call void @irq_modify_status(i32 noundef %add49, i32 noundef 3072, i32 noundef 0) #6
  %inc = add nuw nsw i32 %i.0105, 1
  %45 = ptrtoint ptr %nr_pins to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nr_pins, align 4
  %cmp42 = icmp slt i32 %inc, %46
  br i1 %cmp42, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call3, ptr noundef nonnull @timbgpio_irq, ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.lhs.false35.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %land.end.cleanup_crit_edge, %if.then16, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %8, %if.then16 ], [ 0, %for.end ], [ -22, %if.end.cleanup_crit_edge ], [ %call28, %land.end.cleanup_crit_edge ], [ 0, %lor.lhs.false35.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timbgpio_gpio_direction_input(ptr noundef %gpio, i32 noundef %nr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gpio) #6
  %lock.i = getelementptr inbounds %struct.timbgpio, ptr %call.i, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #6
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !35
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  %shl.i = shl nuw i32 1, %nr
  %or.i = or i32 %3, %shl.i
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %6) #6, !srcloc !34
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timbgpio_gpio_get(ptr noundef %gpio, i32 noundef %nr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gpio) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !35
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  %4 = lshr i32 %3, %nr
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timbgpio_gpio_direction_output(ptr noundef %gpio, i32 noundef %nr, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gpio) #6
  %lock.i = getelementptr inbounds %struct.timbgpio, ptr %call.i, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #6
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !35
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  %shl.i = shl nuw i32 1, %nr
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %3, %neg.i
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %6) #6, !srcloc !34
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @timbgpio_gpio_set(ptr noundef %gpio, i32 noundef %nr, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp.not = icmp eq i32 %val, 0
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gpio) #6
  %lock.i = getelementptr inbounds %struct.timbgpio, ptr %call.i, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #6
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !35
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  %shl.i = shl nuw i32 1, %nr
  %or.i = or i32 %3, %shl.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %3, %neg.i
  %reg.0.i = select i1 %cmp.not, i32 %and.i, i32 %or.i
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %6) #6, !srcloc !34
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timbgpio_to_irq(ptr noundef %gpio, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gpio) #6
  %irq_base = getelementptr inbounds %struct.timbgpio, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  %add = add i32 %1, %offset
  %retval.0 = select i1 %cmp, i32 -22, i32 %add
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @timbgpio_irq(ptr noundef %desc) #2 align 64 {
entry:
  %ipr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ipr) #6
  %chip = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %irq_ack = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq_ack to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_ack, align 4
  tail call void %5(ptr noundef %irq_data.i) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !35
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  %10 = ptrtoint ptr %ipr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ipr, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr4 = getelementptr i8, ptr %12, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %8) #6, !srcloc !34
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr6 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #6, !srcloc !34
  %gpio = getelementptr inbounds %struct.timbgpio, ptr %1, i32 0, i32 2
  %ngpio = getelementptr inbounds %struct.timbgpio, ptr %1, i32 0, i32 2, i32 20
  %15 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %16 to i32
  %call7 = call i32 @_find_next_bit_be(ptr noundef nonnull %ipr, i32 noundef %conv, i32 noundef 0) #6
  %17 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ngpio, align 4
  %conv1033 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %conv1033)
  %cmp34 = icmp slt i32 %call7, %conv1033
  br i1 %cmp34, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %offset.035 = phi i32 [ %call18, %for.body.for.body_crit_edge ], [ %call7, %entry.for.body_crit_edge ]
  %call.i = call ptr @gpiochip_get_data(ptr noundef %gpio) #6
  %irq_base.i = getelementptr inbounds %struct.timbgpio, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i = icmp slt i32 %20, 1
  %add.i = add i32 %20, %offset.035
  %retval.0.i = select i1 %cmp.i, i32 -22, i32 %add.i
  %call14 = call i32 @generic_handle_irq(i32 noundef %retval.0.i) #6
  %21 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ngpio, align 4
  %conv17 = zext i16 %22 to i32
  %add = add nsw i32 %offset.035, 1
  %call18 = call i32 @_find_next_bit_be(ptr noundef nonnull %ipr, i32 noundef %conv17, i32 noundef %add) #6
  %23 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ngpio, align 4
  %conv10 = zext i16 %24 to i32
  %cmp = icmp slt i32 %call18, %conv10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %last_ier = getelementptr inbounds %struct.timbgpio, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %last_ier to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %last_ier, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %add.ptr20 = getelementptr i8, ptr %28, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  call void @arm_heavy_mb() #6
  %29 = call i32 @llvm.bswap.i32(i32 %26) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %29) #6, !srcloc !34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ipr) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @timbgpio_irq_enable(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq_base = getelementptr inbounds %struct.timbgpio, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_base, align 4
  %sub = sub i32 %3, %5
  %lock = getelementptr inbounds %struct.timbgpio, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %shl = shl nuw i32 1, %sub
  %last_ier = getelementptr inbounds %struct.timbgpio, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %last_ier to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_ier, align 4
  %or = or i32 %7, %shl
  store i32 %or, ptr %last_ier, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #6, !srcloc !34
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @timbgpio_irq_disable(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq_base = getelementptr inbounds %struct.timbgpio, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_base, align 4
  %sub = sub i32 %3, %5
  %lock = getelementptr inbounds %struct.timbgpio, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %shl = shl nuw i32 1, %sub
  %neg = xor i32 %shl, -1
  %last_ier = getelementptr inbounds %struct.timbgpio, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %last_ier to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_ier, align 4
  %and = and i32 %7, %neg
  store i32 %and, ptr %last_ier, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %and) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #6, !srcloc !34
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timbgpio_irq_type(ptr nocapture noundef readonly %d, i32 noundef %trigger) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq_base = getelementptr inbounds %struct.timbgpio, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_base, align 4
  %sub = sub i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ngpio = getelementptr inbounds %struct.timbgpio, ptr %1, i32 0, i32 2, i32 20
  %6 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp1 = icmp ugt i32 %sub, %conv
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !35
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  %lock = getelementptr inbounds %struct.timbgpio, ptr %1, i32 0, i32 1
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr12 = getelementptr i8, ptr %13, i32 28
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #6, !srcloc !35
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr15 = getelementptr i8, ptr %17, i32 24
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #6, !srcloc !35
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp17 = icmp ugt i32 %11, 2
  br i1 %cmp17, label %if.then19, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr21 = getelementptr i8, ptr %21, i32 36
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #6, !srcloc !35
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end.if.end23_crit_edge
  %bflr.0 = phi i32 [ %23, %if.then19 ], [ 0, %if.end.if.end23_crit_edge ]
  %and = and i32 %trigger, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end23.if.end37_crit_edge, label %if.then24

if.end23.if.end37_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then24:                                        ; preds = %if.end23
  %shl = shl nuw i32 1, %sub
  %neg = xor i32 %shl, -1
  %and25 = and i32 %bflr.0, %neg
  %and28 = and i32 %19, %neg
  %and29 = and i32 %trigger, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %15, %shl
  br label %if.end37

if.else:                                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  %and35 = and i32 %15, %neg
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then31, %if.end23.if.end37_crit_edge
  %lvr.0 = phi i32 [ %or, %if.then31 ], [ %and35, %if.else ], [ %15, %if.end23.if.end37_crit_edge ]
  %flr.0 = phi i32 [ %and28, %if.then31 ], [ %and28, %if.else ], [ %19, %if.end23.if.end37_crit_edge ]
  %bflr.1 = phi i32 [ %and25, %if.then31 ], [ %and25, %if.else ], [ %bflr.0, %if.end23.if.end37_crit_edge ]
  %and38 = and i32 %trigger, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and38)
  %cmp39 = icmp eq i32 %and38, 3
  br i1 %cmp39, label %if.then41, label %if.else51

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp42 = icmp ult i32 %11, 3
  br i1 %cmp42, label %if.then41.out_crit_edge, label %if.else45

if.then41.out_crit_edge:                          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.else45:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  %shl46 = shl nuw i32 1, %sub
  %or49 = or i32 %bflr.1, %shl46
  br label %if.end67

if.else51:                                        ; preds = %if.end37
  %shl52 = shl nuw i32 1, %sub
  %neg53 = xor i32 %shl52, -1
  %and54 = and i32 %bflr.1, %neg53
  %and57 = and i32 %trigger, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.else63, label %if.then59

if.then59:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #8
  %and62 = and i32 %lvr.0, %neg53
  br label %if.end67

if.else63:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #8
  %or65 = or i32 %lvr.0, %shl52
  br label %if.end67

if.end67:                                         ; preds = %if.else63, %if.then59, %if.else45
  %lvr.1 = phi i32 [ %lvr.0, %if.else45 ], [ %and62, %if.then59 ], [ %or65, %if.else63 ]
  %shl46.pn = phi i32 [ %shl46, %if.else45 ], [ %shl52, %if.then59 ], [ %shl52, %if.else63 ]
  %bflr.2 = phi i32 [ %or49, %if.else45 ], [ %and54, %if.then59 ], [ %and54, %if.else63 ]
  %flr.1 = or i32 %shl46.pn, %flr.0
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %add.ptr69 = getelementptr i8, ptr %25, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  %26 = tail call i32 @llvm.bswap.i32(i32 %lvr.1) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %26) #6, !srcloc !34
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %add.ptr71 = getelementptr i8, ptr %28, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  %29 = tail call i32 @llvm.bswap.i32(i32 %flr.1) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 %29) #6, !srcloc !34
  br i1 %cmp17, label %if.then74, label %if.end67.if.end77_crit_edge

if.end67.if.end77_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then74:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %add.ptr76 = getelementptr i8, ptr %31, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  %32 = tail call i32 @llvm.bswap.i32(i32 %bflr.2) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %32) #6, !srcloc !34
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.end67.if.end77_crit_edge
  %shl78 = shl nuw i32 1, %sub
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %add.ptr80 = getelementptr i8, ptr %34, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  %35 = tail call i32 @llvm.bswap.i32(i32 %shl78) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %35) #6, !srcloc !34
  br label %out

out:                                              ; preds = %if.end77, %if.then41.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end77 ], [ -22, %if.then41.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !19, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_gpio_timberdale__227_289_timbgpio_platform_driver_init6, !1, !"__initcall__kmod_gpio_timberdale__227_289_timbgpio_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-timberdale.c", i32 289, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-timberdale.c", i32 281, i32 13}
!4 = !{ptr @timbgpio_platform_driver, !5, !"timbgpio_platform_driver", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-timberdale.c", i32 279, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-timberdale.c", i32 224, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @timbgpio_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @timbgpio_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @timbgpio_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-timberdale.c", i32 234, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @timbgpio_probe.lock_key, !18, !"lock_key", i1 false, i1 false}
!18 = !{!"../drivers/gpio/gpio-timberdale.c", i32 255, i32 8}
!19 = !{ptr @timbgpio_probe.request_key, !18, !"request_key", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpio/gpio-timberdale.c", i32 208, i32 11}
!22 = !{ptr @timbgpio_irqchip, !23, !"timbgpio_irqchip", i1 false, i1 false}
!23 = !{!"../drivers/gpio/gpio-timberdale.c", i32 207, i32 24}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2152386401}
!34 = !{i64 4844279}
!35 = !{i64 4844697}
!36 = !{i64 2152385046}
