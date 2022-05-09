; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-sprd.c_pt.bc'
source_filename = "../drivers/gpio/gpio-sprd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.sprd_gpio = type { %struct.gpio_chip, ptr, %struct.spinlock, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_gpio_sprd__223_273_sprd_gpio_driver_init6 = internal global ptr @sprd_gpio_driver_init, section ".initcall6.init", align 4
@sprd_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sprd_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sprd_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sprd_gpio_driver_exit = internal global ptr @sprd_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description224 = internal constant [45 x i8] c"gpio_sprd.description=Spreadtrum GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [38 x i8] c"gpio_sprd.file=drivers/gpio/gpio-sprd\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [25 x i8] c"gpio_sprd.license=GPL v2\00", section ".modinfo", align 1
@sprd_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&sprd_gpio->lock\00", [47 x i8] zeroinitializer }, align 32
@sprd_gpio_irqchip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.1, ptr null, ptr null, ptr null, ptr null, ptr @sprd_gpio_irq_ack, ptr @sprd_gpio_irq_mask, ptr null, ptr @sprd_gpio_irq_unmask, ptr null, ptr null, ptr null, ptr @sprd_gpio_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 16 }, [56 x i8] zeroinitializer }, align 32
@sprd_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sprd_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sprd-gpio\00", [22 x i8] zeroinitializer }, align 32
@sprd_gpio_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sc9860-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"sprd_gpio_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 265, i32 31 }
@___asan_gen_.5 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 234, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"sprd_gpio_irqchip\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 208, i32 24 }
@___asan_gen_.14 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 256, i32 9 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 209, i32 10 }
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"sprd_gpio_of_match\00", align 1
@___asan_gen_.24 = private constant [28 x i8] c"../drivers/gpio/gpio-sprd.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 259, i32 34 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__exitcall_sprd_gpio_driver_exit, ptr @__initcall__kmod_gpio_sprd__223_273_sprd_gpio_driver_init6, ptr @sprd_gpio_driver_exit, ptr @sprd_gpio_driver, ptr @sprd_gpio_probe.__key, ptr @.str, ptr @sprd_gpio_irqchip, ptr @sprd_gpio_probe.lock_key, ptr @sprd_gpio_probe.request_key, ptr @.str.1, ptr @sprd_gpio_of_match], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_gpio_irqchip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_gpio_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @sprd_gpio_driver, ptr noundef nonnull @sprd_gpio_probe, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sprd_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @sprd_gpio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 400, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %irq2 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %irq2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call1, ptr %irq2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %base = getelementptr inbounds %struct.sprd_gpio, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %do.body

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call7 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end6
  %lock = getelementptr inbounds %struct.sprd_gpio, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @sprd_gpio_probe.__key, i16 noundef signext 3) #5
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %do.body.dev_name.exit_crit_edge

do.body.dev_name.exit_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.body.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.end.i ], [ %4, %do.body.dev_name.exit_crit_edge ]
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %retval.0.i, ptr %call.i, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %8 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 256, ptr %ngpio, align 4
  %base19 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %9 = ptrtoint ptr %base19 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %base19, align 4
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %parent, align 4
  %request = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sprd_gpio_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @sprd_gpio_free, ptr %free, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %13 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @sprd_gpio_get, ptr %get, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %14 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @sprd_gpio_set, ptr %set, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 8
  %15 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @sprd_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 9
  %16 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @sprd_gpio_direction_output, ptr %direction_output, align 4
  %irq29 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37
  %17 = ptrtoint ptr %irq29 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sprd_gpio_irqchip, ptr %irq29, align 4
  %handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 9
  %18 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @handle_bad_irq, ptr %handler, align 4
  %default_type = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 10
  %19 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %default_type, align 4
  %parent_handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 13
  %20 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @sprd_gpio_irq_handler, ptr %parent_handler, align 4
  %21 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 14
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %21, align 4
  %num_parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 15
  %23 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %num_parents, align 4
  %parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 16
  %24 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %irq2, ptr %parents, align 4
  %call34 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @sprd_gpio_probe.lock_key, ptr noundef nonnull @sprd_gpio_probe.request_key) #5
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then10 ], [ %call34, %dev_name.exit ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_gpio_request(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %base.i.i = getelementptr inbounds %struct.sprd_gpio, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %2 = shl i32 %offset, 3
  %mul.i.i = and i32 %2, -128
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %mul.i.i
  %lock.i = getelementptr inbounds %struct.sprd_gpio, ptr %call.i, i32 0, i32 2
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !31
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #5
  %and11.i = and i32 %offset, 15
  %shl12.i = shl nuw nsw i32 1, %and11.i
  %or.i = or i32 %4, %shl12.i
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_gpio_free(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %base.i.i = getelementptr inbounds %struct.sprd_gpio, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %2 = shl i32 %offset, 3
  %mul.i.i = and i32 %2, -128
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %mul.i.i
  %lock.i = getelementptr inbounds %struct.sprd_gpio, ptr %call.i, i32 0, i32 2
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !31
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #5
  %and11.i = and i32 %offset, 15
  %shl12.i = shl nuw nsw i32 1, %and11.i
  %neg.i = xor i32 %shl12.i, -1
  %and13.i = and i32 %4, %neg.i
  %5 = tail call i32 @llvm.bswap.i32(i32 %and13.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %base.i.i = getelementptr inbounds %struct.sprd_gpio, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %2 = shl i32 %offset, 3
  %mul.i.i = and i32 %2, -128
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %mul.i.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !31
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #5
  %and.i = and i32 %offset, 15
  %5 = lshr i32 %4, %and.i
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %base.i.i = getelementptr inbounds %struct.sprd_gpio, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %2 = shl i32 %offset, 3
  %mul.i.i = and i32 %2, -128
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %mul.i.i
  %lock.i = getelementptr inbounds %struct.sprd_gpio, ptr %call.i, i32 0, i32 2
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !31
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %and11.i = and i32 %offset, 15
  %shl12.i = shl nuw nsw i32 1, %and11.i
  %or.i = or i32 %4, %shl12.i
  %neg.i = xor i32 %shl12.i, -1
  %and13.i = and i32 %4, %neg.i
  %tmp.0.i = select i1 %tobool.not.i, i32 %and13.i, i32 %or.i
  %5 = tail call i32 @llvm.bswap.i32(i32 %tmp.0.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %base.i.i = getelementptr inbounds %struct.sprd_gpio, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %2 = shl i32 %offset, 3
  %mul.i.i = and i32 %2, -128
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %mul.i.i
  %lock.i = getelementptr inbounds %struct.sprd_gpio, ptr %call.i, i32 0, i32 2
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 8
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !31
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #5
  %and11.i = and i32 %offset, 15
  %shl12.i = shl nuw nsw i32 1, %and11.i
  %neg.i = xor i32 %shl12.i, -1
  %and13.i = and i32 %4, %neg.i
  %5 = tail call i32 @llvm.bswap.i32(i32 %and13.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #5
  %call.i3 = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %base.i.i4 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i3, i32 0, i32 1
  %6 = ptrtoint ptr %base.i.i4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i4, align 4
  %add.ptr.i.i6 = getelementptr i8, ptr %7, i32 %mul.i.i
  %lock.i7 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i3, i32 0, i32 2
  %call5.i8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i7) #5
  %add.ptr.i9 = getelementptr i8, ptr %add.ptr.i.i6, i32 40
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #5, !srcloc !31
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  %or.i12 = or i32 %9, %shl12.i
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i12) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %10) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i7, i32 noundef %call5.i8) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %base.i.i = getelementptr inbounds %struct.sprd_gpio, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %2 = shl i32 %offset, 3
  %mul.i.i = and i32 %2, -128
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %mul.i.i
  %lock.i = getelementptr inbounds %struct.sprd_gpio, ptr %call.i, i32 0, i32 2
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 8
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !31
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #5
  %and11.i = and i32 %offset, 15
  %shl12.i = shl nuw nsw i32 1, %and11.i
  %or.i = or i32 %4, %shl12.i
  %neg.i = xor i32 %shl12.i, -1
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #5
  %call.i5 = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %base.i.i6 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i5, i32 0, i32 1
  %6 = ptrtoint ptr %base.i.i6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i6, align 4
  %add.ptr.i.i8 = getelementptr i8, ptr %7, i32 %mul.i.i
  %lock.i9 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i5, i32 0, i32 2
  %call5.i10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i9) #5
  %add.ptr.i11 = getelementptr i8, ptr %add.ptr.i.i8, i32 40
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #5, !srcloc !31
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  %and13.i16 = and i32 %9, %neg.i
  %10 = tail call i32 @llvm.bswap.i32(i32 %and13.i16) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %10) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i9, i32 noundef %call5.i10) #5
  %call.i17 = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %base.i.i18 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i17, i32 0, i32 1
  %11 = ptrtoint ptr %base.i.i18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i18, align 4
  %add.ptr.i.i20 = getelementptr i8, ptr %12, i32 %mul.i.i
  %lock.i21 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i17, i32 0, i32 2
  %call5.i22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i21) #5
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i20) #5, !srcloc !31
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %or.i25 = or i32 %14, %shl12.i
  %and13.i27 = and i32 %14, %neg.i
  %tmp.0.i = select i1 %tobool.not.i, i32 %and13.i27, i32 %or.i25
  %15 = tail call i32 @llvm.bswap.i32(i32 %tmp.0.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i20, i32 %15) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i21, i32 noundef %call5.i22) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_gpio_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  %call2 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #5
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #5
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %11(ptr noundef %irq_data4.i) #5
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %12 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp35.not = icmp eq i16 %13, 0
  br i1 %cmp35.not, label %chained_irq_enter.exit.for.end16_crit_edge, label %for.body.lr.ph

chained_irq_enter.exit.for.end16_crit_edge:       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end16

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %base.i = getelementptr inbounds %struct.sprd_gpio, ptr %call2, i32 0, i32 1
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 1
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %mul37 = phi i32 [ 0, %for.body.lr.ph ], [ %mul, %for.end.for.body_crit_edge ]
  %bank.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.end.for.body_crit_edge ]
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %mul.i = shl i32 %bank.036, 7
  %add.ptr.i = getelementptr i8, ptr %15, i32 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #5
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %reg, align 4, !annotation !33
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !31
  %18 = and i32 %17, -65536
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %reg, align 4
  %call6 = call i32 @_find_next_bit_be(ptr noundef nonnull %reg, i32 noundef 16, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call6)
  %cmp832 = icmp ult i32 %call6, 16
  br i1 %cmp832, label %for.body.for.body10_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body10_crit_edge:                    ; preds = %for.body
  br label %for.body10

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.body.for.body10_crit_edge
  %n.033 = phi i32 [ %call14, %for.body10.for.body10_crit_edge ], [ %call6, %for.body.for.body10_crit_edge ]
  %21 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %domain, align 4
  %add = add i32 %n.033, %mul37
  %call12 = call i32 @generic_handle_domain_irq(ptr noundef %22, i32 noundef %add) #5
  %add13 = add nuw nsw i32 %n.033, 1
  %call14 = call i32 @_find_next_bit_be(ptr noundef nonnull %reg, i32 noundef 16, i32 noundef %add13) #5
  %cmp8 = icmp ult i32 %call14, 16
  br i1 %cmp8, label %for.body10.for.body10_crit_edge, label %for.body10.for.end_crit_edge

for.body10.for.end_crit_edge:                     ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body10

for.end:                                          ; preds = %for.body10.for.end_crit_edge, %for.body.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #5
  %inc = add nuw nsw i32 %bank.036, 1
  %mul = shl i32 %inc, 4
  %23 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %24 to i32
  %cmp = icmp ult i32 %mul, %conv
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end16_crit_edge

for.end.for.end16_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end16

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end16:                                        ; preds = %for.end.for.end16_crit_edge, %chained_irq_enter.exit.for.end16_crit_edge
  %25 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i29 = icmp eq ptr %26, null
  br i1 %tobool.not.i29, label %if.else.i30, label %for.end16.chained_irq_exit.exit_crit_edge

for.end16.chained_irq_exit.exit_crit_edge:        ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %chained_irq_exit.exit

if.else.i30:                                      ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #7
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %27 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i30, %for.end16.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %28, %if.else.i30 ], [ %26, %for.end16.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #5
  ret void
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
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_gpio_irq_ack(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %base.i.i = getelementptr inbounds %struct.sprd_gpio, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %6 = shl i32 %3, 3
  %mul.i.i = and i32 %6, -128
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %mul.i.i
  %lock.i = getelementptr inbounds %struct.sprd_gpio, ptr %call.i, i32 0, i32 2
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 36
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !31
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %and11.i = and i32 %3, 15
  %shl12.i = shl nuw nsw i32 1, %and11.i
  %or.i = or i32 %8, %shl12.i
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_gpio_irq_mask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %base.i.i = getelementptr inbounds %struct.sprd_gpio, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %6 = shl i32 %3, 3
  %mul.i.i = and i32 %6, -128
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %mul.i.i
  %lock.i = getelementptr inbounds %struct.sprd_gpio, ptr %call.i, i32 0, i32 2
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !31
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %and11.i = and i32 %3, 15
  %shl12.i = shl nuw nsw i32 1, %and11.i
  %neg.i = xor i32 %shl12.i, -1
  %and13.i = and i32 %8, %neg.i
  %9 = tail call i32 @llvm.bswap.i32(i32 %and13.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_gpio_irq_unmask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %base.i.i = getelementptr inbounds %struct.sprd_gpio, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %6 = shl i32 %3, 3
  %mul.i.i = and i32 %6, -128
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %mul.i.i
  %lock.i = getelementptr inbounds %struct.sprd_gpio, ptr %call.i, i32 0, i32 2
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !31
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %and11.i = and i32 %3, 15
  %shl12.i = shl nuw nsw i32 1, %and11.i
  %or.i = or i32 %8, %shl12.i
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_gpio_irq_set_type(ptr nocapture noundef readonly %data, i32 noundef %flow_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %4 = zext i32 %flow_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %flow_type, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 8, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %base.i.i = getelementptr inbounds %struct.sprd_gpio, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 4
  %7 = shl i32 %3, 3
  %mul.i.i = and i32 %7, -128
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %mul.i.i
  %lock.i = getelementptr inbounds %struct.sprd_gpio, ptr %call.i, i32 0, i32 2
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !31
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  %and11.i = and i32 %3, 15
  %shl12.i = shl nuw nsw i32 1, %and11.i
  %neg.i = xor i32 %shl12.i, -1
  %and13.i = and i32 %9, %neg.i
  %10 = tail call i32 @llvm.bswap.i32(i32 %and13.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #5
  %call.i45 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %base.i.i46 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i45, i32 0, i32 1
  %11 = ptrtoint ptr %base.i.i46 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i46, align 4
  %add.ptr.i.i48 = getelementptr i8, ptr %12, i32 %mul.i.i
  %lock.i49 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i45, i32 0, i32 2
  %call5.i50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i49) #5
  %add.ptr.i51 = getelementptr i8, ptr %add.ptr.i.i48, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #5, !srcloc !31
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %and13.i56 = and i32 %14, %neg.i
  %15 = tail call i32 @llvm.bswap.i32(i32 %and13.i56) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %15) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i49, i32 noundef %call5.i50) #5
  %call.i57 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %base.i.i58 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i57, i32 0, i32 1
  %16 = ptrtoint ptr %base.i.i58 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i58, align 4
  %add.ptr.i.i60 = getelementptr i8, ptr %17, i32 %mul.i.i
  %lock.i61 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i57, i32 0, i32 2
  %call5.i62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i61) #5
  %add.ptr.i63 = getelementptr i8, ptr %add.ptr.i.i60, i32 20
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #5, !srcloc !31
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  %or.i66 = or i32 %19, %shl12.i
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i66) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %20) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i61, i32 noundef %call5.i62) #5
  %call.i69 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %base.i.i70 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i69, i32 0, i32 1
  %21 = ptrtoint ptr %base.i.i70 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i70, align 4
  %add.ptr.i.i72 = getelementptr i8, ptr %22, i32 %mul.i.i
  %lock.i73 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i69, i32 0, i32 2
  %call5.i74 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i73) #5
  %add.ptr.i75 = getelementptr i8, ptr %add.ptr.i.i72, i32 36
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75) #5, !srcloc !31
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  %or.i78 = or i32 %24, %shl12.i
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i78) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75, i32 %25) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i73, i32 noundef %call5.i74) #5
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i81 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %base.i.i82 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i81, i32 0, i32 1
  %26 = ptrtoint ptr %base.i.i82 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i82, align 4
  %28 = shl i32 %3, 3
  %mul.i.i83 = and i32 %28, -128
  %add.ptr.i.i84 = getelementptr i8, ptr %27, i32 %mul.i.i83
  %lock.i85 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i81, i32 0, i32 2
  %call5.i86 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i85) #5
  %add.ptr.i87 = getelementptr i8, ptr %add.ptr.i.i84, i32 12
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87) #5, !srcloc !31
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  %and11.i88 = and i32 %3, 15
  %shl12.i89 = shl nuw nsw i32 1, %and11.i88
  %neg.i91 = xor i32 %shl12.i89, -1
  %and13.i92 = and i32 %30, %neg.i91
  %31 = tail call i32 @llvm.bswap.i32(i32 %and13.i92) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %31) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i85, i32 noundef %call5.i86) #5
  %call.i93 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %base.i.i94 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i93, i32 0, i32 1
  %32 = ptrtoint ptr %base.i.i94 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i94, align 4
  %add.ptr.i.i96 = getelementptr i8, ptr %33, i32 %mul.i.i83
  %lock.i97 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i93, i32 0, i32 2
  %call5.i98 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i97) #5
  %add.ptr.i99 = getelementptr i8, ptr %add.ptr.i.i96, i32 16
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99) #5, !srcloc !31
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  %and13.i104 = and i32 %35, %neg.i91
  %36 = tail call i32 @llvm.bswap.i32(i32 %and13.i104) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 %36) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i97, i32 noundef %call5.i98) #5
  %call.i105 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %base.i.i106 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i105, i32 0, i32 1
  %37 = ptrtoint ptr %base.i.i106 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i.i106, align 4
  %add.ptr.i.i108 = getelementptr i8, ptr %38, i32 %mul.i.i83
  %lock.i109 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i105, i32 0, i32 2
  %call5.i110 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i109) #5
  %add.ptr.i111 = getelementptr i8, ptr %add.ptr.i.i108, i32 20
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #5, !srcloc !31
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #5
  %and13.i116 = and i32 %40, %neg.i91
  %41 = tail call i32 @llvm.bswap.i32(i32 %and13.i116) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 %41) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i109, i32 noundef %call5.i110) #5
  %call.i117 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %base.i.i118 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i117, i32 0, i32 1
  %42 = ptrtoint ptr %base.i.i118 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i118, align 4
  %add.ptr.i.i120 = getelementptr i8, ptr %43, i32 %mul.i.i83
  %lock.i121 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i117, i32 0, i32 2
  %call5.i122 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i121) #5
  %add.ptr.i123 = getelementptr i8, ptr %add.ptr.i.i120, i32 36
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i123) #5, !srcloc !31
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #5
  %or.i126 = or i32 %45, %shl12.i89
  %46 = tail call i32 @llvm.bswap.i32(i32 %or.i126) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 %46) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i121, i32 noundef %call5.i122) #5
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i131 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %base.i.i132 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i131, i32 0, i32 1
  %47 = ptrtoint ptr %base.i.i132 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i.i132, align 4
  %49 = shl i32 %3, 3
  %mul.i.i133 = and i32 %49, -128
  %add.ptr.i.i134 = getelementptr i8, ptr %48, i32 %mul.i.i133
  %lock.i135 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i131, i32 0, i32 2
  %call5.i136 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i135) #5
  %add.ptr.i137 = getelementptr i8, ptr %add.ptr.i.i134, i32 12
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i137) #5, !srcloc !31
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #5
  %and11.i138 = and i32 %3, 15
  %shl12.i139 = shl nuw nsw i32 1, %and11.i138
  %neg.i141 = xor i32 %shl12.i139, -1
  %and13.i142 = and i32 %51, %neg.i141
  %52 = tail call i32 @llvm.bswap.i32(i32 %and13.i142) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137, i32 %52) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i135, i32 noundef %call5.i136) #5
  %call.i143 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %base.i.i144 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i143, i32 0, i32 1
  %53 = ptrtoint ptr %base.i.i144 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i.i144, align 4
  %add.ptr.i.i146 = getelementptr i8, ptr %54, i32 %mul.i.i133
  %lock.i147 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i143, i32 0, i32 2
  %call5.i148 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i147) #5
  %add.ptr.i149 = getelementptr i8, ptr %add.ptr.i.i146, i32 16
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i149) #5, !srcloc !31
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #5
  %or.i152 = or i32 %56, %shl12.i139
  %57 = tail call i32 @llvm.bswap.i32(i32 %or.i152) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149, i32 %57) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i147, i32 noundef %call5.i148) #5
  %call.i155 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %base.i.i156 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i155, i32 0, i32 1
  %58 = ptrtoint ptr %base.i.i156 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i.i156, align 4
  %add.ptr.i.i158 = getelementptr i8, ptr %59, i32 %mul.i.i133
  %lock.i159 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i155, i32 0, i32 2
  %call5.i160 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i159) #5
  %add.ptr.i161 = getelementptr i8, ptr %add.ptr.i.i158, i32 36
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i161) #5, !srcloc !31
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #5
  %or.i164 = or i32 %61, %shl12.i139
  %62 = tail call i32 @llvm.bswap.i32(i32 %or.i164) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i161, i32 %62) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i159, i32 noundef %call5.i160) #5
  br label %cleanup.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i169 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %base.i.i170 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i169, i32 0, i32 1
  %63 = ptrtoint ptr %base.i.i170 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i.i170, align 4
  %65 = shl i32 %3, 3
  %mul.i.i171 = and i32 %65, -128
  %add.ptr.i.i172 = getelementptr i8, ptr %64, i32 %mul.i.i171
  %lock.i173 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i169, i32 0, i32 2
  %call5.i174 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i173) #5
  %add.ptr.i175 = getelementptr i8, ptr %add.ptr.i.i172, i32 12
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i175) #5, !srcloc !31
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #5
  %and11.i176 = and i32 %3, 15
  %shl12.i177 = shl nuw nsw i32 1, %and11.i176
  %or.i178 = or i32 %67, %shl12.i177
  %neg.i179 = xor i32 %shl12.i177, -1
  %68 = tail call i32 @llvm.bswap.i32(i32 %or.i178) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i175, i32 %68) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i173, i32 noundef %call5.i174) #5
  %call.i181 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %base.i.i182 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i181, i32 0, i32 1
  %69 = ptrtoint ptr %base.i.i182 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i.i182, align 4
  %add.ptr.i.i184 = getelementptr i8, ptr %70, i32 %mul.i.i171
  %lock.i185 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i181, i32 0, i32 2
  %call5.i186 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i185) #5
  %add.ptr.i187 = getelementptr i8, ptr %add.ptr.i.i184, i32 16
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i187) #5, !srcloc !31
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #5
  %and13.i192 = and i32 %72, %neg.i179
  %73 = tail call i32 @llvm.bswap.i32(i32 %and13.i192) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i187, i32 %73) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i185, i32 noundef %call5.i186) #5
  %call.i193 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %base.i.i194 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i193, i32 0, i32 1
  %74 = ptrtoint ptr %base.i.i194 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i.i194, align 4
  %add.ptr.i.i196 = getelementptr i8, ptr %75, i32 %mul.i.i171
  %lock.i197 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i193, i32 0, i32 2
  %call5.i198 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i197) #5
  %add.ptr.i199 = getelementptr i8, ptr %add.ptr.i.i196, i32 20
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i199) #5, !srcloc !31
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #5
  %or.i202 = or i32 %77, %shl12.i177
  %78 = tail call i32 @llvm.bswap.i32(i32 %or.i202) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i199, i32 %78) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i197, i32 noundef %call5.i198) #5
  br label %cleanup.sink.split

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i207 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %base.i.i208 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i207, i32 0, i32 1
  %79 = ptrtoint ptr %base.i.i208 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i.i208, align 4
  %81 = shl i32 %3, 3
  %mul.i.i209 = and i32 %81, -128
  %add.ptr.i.i210 = getelementptr i8, ptr %80, i32 %mul.i.i209
  %lock.i211 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i207, i32 0, i32 2
  %call5.i212 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i211) #5
  %add.ptr.i213 = getelementptr i8, ptr %add.ptr.i.i210, i32 12
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i213) #5, !srcloc !31
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #5
  %and11.i214 = and i32 %3, 15
  %shl12.i215 = shl nuw nsw i32 1, %and11.i214
  %or.i216 = or i32 %83, %shl12.i215
  %neg.i217 = xor i32 %shl12.i215, -1
  %84 = tail call i32 @llvm.bswap.i32(i32 %or.i216) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i213, i32 %84) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i211, i32 noundef %call5.i212) #5
  %call.i219 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %base.i.i220 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i219, i32 0, i32 1
  %85 = ptrtoint ptr %base.i.i220 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base.i.i220, align 4
  %add.ptr.i.i222 = getelementptr i8, ptr %86, i32 %mul.i.i209
  %lock.i223 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i219, i32 0, i32 2
  %call5.i224 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i223) #5
  %add.ptr.i225 = getelementptr i8, ptr %add.ptr.i.i222, i32 16
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i225) #5, !srcloc !31
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #5
  %and13.i230 = and i32 %88, %neg.i217
  %89 = tail call i32 @llvm.bswap.i32(i32 %and13.i230) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i225, i32 %89) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i223, i32 noundef %call5.i224) #5
  %call.i231 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %base.i.i232 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i231, i32 0, i32 1
  %90 = ptrtoint ptr %base.i.i232 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i.i232, align 4
  %add.ptr.i.i234 = getelementptr i8, ptr %91, i32 %mul.i.i209
  %lock.i235 = getelementptr inbounds %struct.sprd_gpio, ptr %call.i231, i32 0, i32 2
  %call5.i236 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i235) #5
  %add.ptr.i237 = getelementptr i8, ptr %add.ptr.i.i234, i32 20
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i237) #5, !srcloc !31
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #5
  %and13.i242 = and i32 %93, %neg.i217
  %94 = tail call i32 @llvm.bswap.i32(i32 %and13.i242) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i237, i32 %94) #5, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i235, i32 noundef %call5.i236) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  %handle_edge_irq.sink = phi ptr [ @handle_edge_irq, %sw.bb ], [ @handle_edge_irq, %sw.bb2 ], [ @handle_edge_irq, %sw.bb3 ], [ @handle_level_irq, %sw.bb4 ], [ @handle_level_irq, %sw.bb5 ]
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %95 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %common.i.i, align 4
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %handle_edge_irq.sink, ptr %handle_irq.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__initcall__kmod_gpio_sprd__223_273_sprd_gpio_driver_init6, !1, !"__initcall__kmod_gpio_sprd__223_273_sprd_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-sprd.c", i32 273, i32 1}
!2 = !{ptr @__exitcall_sprd_gpio_driver_exit, !1, !"__exitcall_sprd_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description224, !4, !"__UNIQUE_ID_description224", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-sprd.c", i32 275, i32 1}
!5 = !{ptr @__UNIQUE_ID_file225, !6, !"__UNIQUE_ID_file225", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-sprd.c", i32 276, i32 1}
!7 = !{ptr @__UNIQUE_ID_license226, !6, !"__UNIQUE_ID_license226", i1 false, i1 false}
!8 = !{ptr @sprd_gpio_probe.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-sprd.c", i32 234, i32 2}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @sprd_gpio_probe.lock_key, !12, !"lock_key", i1 false, i1 false}
!12 = !{!"../drivers/gpio/gpio-sprd.c", i32 256, i32 9}
!13 = !{ptr @sprd_gpio_probe.request_key, !12, !"request_key", i1 false, i1 false}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-sprd.c", i32 209, i32 10}
!16 = !{ptr @sprd_gpio_irqchip, !17, !"sprd_gpio_irqchip", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-sprd.c", i32 208, i32 24}
!18 = !{ptr @sprd_gpio_driver, !19, !"sprd_gpio_driver", i1 false, i1 false}
!19 = !{!"../drivers/gpio/gpio-sprd.c", i32 265, i32 31}
!20 = !{ptr @sprd_gpio_of_match, !21, !"sprd_gpio_of_match", i1 false, i1 false}
!21 = !{!"../drivers/gpio/gpio-sprd.c", i32 259, i32 34}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 4845552}
!32 = !{i64 4845134}
!33 = !{!"auto-init"}
