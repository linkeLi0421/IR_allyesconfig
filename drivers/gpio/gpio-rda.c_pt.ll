; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-rda.c_pt.bc'
source_filename = "../drivers/gpio/gpio-rda.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.rda_gpio = type { %struct.gpio_chip, ptr, %struct.spinlock, %struct.irq_chip, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_gpio_rda__223_285_rda_gpio_driver_init6 = internal global ptr @rda_gpio_driver_init, section ".initcall6.init", align 4
@rda_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rda_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.7, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rda_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rda_gpio_driver_exit = internal global ptr @rda_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description224 = internal constant [43 x i8] c"gpio_rda.description=RDA Micro GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author225 = internal constant [73 x i8] c"gpio_rda.author=Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [36 x i8] c"gpio_rda.file=drivers/gpio/gpio-rda\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [24 x i8] c"gpio_rda.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ngpios\00", [25 x i8] zeroinitializer }, align 32
@rda_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&rda_gpio->lock\00", [16 x i8] zeroinitializer }, align 32
@rda_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 235, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bgpio_init failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rda_gpio_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/gpio/gpio-rda.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rda_gpio_probe._entry_ptr = internal global ptr @rda_gpio_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rda-gpio\00", [23 x i8] zeroinitializer }, align 32
@rda_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rda_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rda_gpio_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rda,8810pl-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@___asan_gen_.8 = private unnamed_addr constant [16 x i8] c"rda_gpio_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 277, i32 31 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 210, i32 38 }
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 225, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 235, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 244, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 268, i32 9 }
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"rda_gpio_of_match\00", align 1
@___asan_gen_.48 = private constant [27 x i8] c"../drivers/gpio/gpio-rda.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 271, i32 34 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_rda_gpio_driver_exit, ptr @__initcall__kmod_gpio_rda__223_285_rda_gpio_driver_init6, ptr @rda_gpio_driver_exit, ptr @rda_gpio_probe._entry, ptr @rda_gpio_probe._entry_ptr, ptr @rda_gpio_driver, ptr @.str, ptr @rda_gpio_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @rda_gpio_probe.lock_key, ptr @rda_gpio_probe.request_key, ptr @rda_gpio_of_match], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rda_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rda_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rda_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rda_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rda_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rda_gpio_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rda_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @rda_gpio_driver, ptr noundef nonnull @rda_gpio_probe, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rda_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @rda_gpio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rda_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %ngpios = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ngpios) #6
  %0 = ptrtoint ptr %ngpios to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ngpios, align 4, !annotation !41
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 536, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i110 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str, ptr noundef nonnull %ngpios, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %cmp = icmp slt i32 %call.i110, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.rda_gpio, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call5, ptr %irq, align 4
  %call6 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.rda_gpio, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call6, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %do.body

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call6 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end4
  %lock = getelementptr inbounds %struct.rda_gpio, ptr %call.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @rda_gpio_probe.__key, i16 noundef signext 3) #6
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 12
  %add.ptr16 = getelementptr i8, ptr %5, i32 16
  %add.ptr18 = getelementptr i8, ptr %5, i32 20
  %add.ptr20 = getelementptr i8, ptr %5, i32 4
  %add.ptr22 = getelementptr i8, ptr %5, i32 8
  %call23 = call i32 @bgpio_init(ptr noundef nonnull %call.i, ptr noundef %dev1, i32 noundef 4, ptr noundef %add.ptr, ptr noundef %add.ptr16, ptr noundef %add.ptr18, ptr noundef %add.ptr20, ptr noundef %add.ptr22, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end29, label %do.end28

do.end28:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end29:                                         ; preds = %do.body
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end29.dev_name.exit_crit_edge

if.end29.dev_name.exit_crit_edge:                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end29.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %if.end29.dev_name.exit_crit_edge ]
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i, ptr %call.i, align 4
  %11 = ptrtoint ptr %ngpios to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ngpios, align 4
  %conv = trunc i32 %12 to i16
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %13 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %ngpio, align 4
  %base34 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %14 = ptrtoint ptr %base34 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %base34, align 4
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp36 = icmp sgt i32 %16, -1
  br i1 %cmp36, label %if.then38, label %dev_name.exit.if.end55_crit_edge

dev_name.exit.if.end55_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then38:                                        ; preds = %dev_name.exit
  %irq_chip = getelementptr inbounds %struct.rda_gpio, ptr %call.i, i32 0, i32 3
  %name = getelementptr inbounds %struct.rda_gpio, ptr %call.i, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.7, ptr %name, align 4
  %irq_ack = getelementptr inbounds %struct.rda_gpio, ptr %call.i, i32 0, i32 3, i32 6
  %18 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @rda_gpio_irq_ack, ptr %irq_ack, align 4
  %irq_mask = getelementptr inbounds %struct.rda_gpio, ptr %call.i, i32 0, i32 3, i32 7
  %19 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @rda_gpio_irq_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.rda_gpio, ptr %call.i, i32 0, i32 3, i32 9
  %20 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @rda_gpio_irq_unmask, ptr %irq_unmask, align 4
  %irq_set_type = getelementptr inbounds %struct.rda_gpio, ptr %call.i, i32 0, i32 3, i32 13
  %21 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @rda_gpio_irq_set_type, ptr %irq_set_type, align 4
  %flags = getelementptr inbounds %struct.rda_gpio, ptr %call.i, i32 0, i32 3, i32 33
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16, ptr %flags, align 4
  %irq45 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37
  %23 = ptrtoint ptr %irq45 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %irq_chip, ptr %irq45, align 4
  %handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 9
  %24 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @handle_bad_irq, ptr %handler, align 4
  %default_type = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 10
  %25 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %default_type, align 4
  %parent_handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 13
  %26 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @rda_gpio_irq_handler, ptr %parent_handler, align 4
  %27 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 14
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %27, align 4
  %num_parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 15
  %29 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %num_parents, align 4
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 4, i32 noundef 3520) #6
  %parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 16
  %30 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call5.i.i, ptr %parents, align 4
  %tobool50.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool50.not, label %if.then38.cleanup_crit_edge, label %if.end52

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end52:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  %33 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %call5.i.i, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.end52, %dev_name.exit.if.end55_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call57 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @rda_gpio_probe.lock_key, ptr noundef nonnull @rda_gpio_probe.request_key) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then38.cleanup_crit_edge, %do.end28, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then9 ], [ %call23, %do.end28 ], [ %call57, %if.end55 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i110, %if.end.cleanup_crit_edge ], [ -12, %if.then38.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ngpios) #6
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgpio_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rda_gpio_irq_ack(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %base1.i = getelementptr inbounds %struct.rda_gpio, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base1.i, align 4
  %lock.i = getelementptr inbounds %struct.rda_gpio, ptr %call.i, i32 0, i32 2
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %add.ptr.i = getelementptr i8, ptr %5, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !42
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  %shl.i = shl nuw i32 1, %3
  %or.i = or i32 %7, %shl.i
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #6, !srcloc !43
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rda_gpio_irq_mask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %base2 = getelementptr inbounds %struct.rda_gpio, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base2, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq.i, align 4
  %shl = shl nuw i32 1, %5
  %shl6 = shl i32 %shl, 8
  %or = or i32 %shl6, %shl
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %add.ptr = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #6, !srcloc !43
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rda_gpio_irq_unmask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %common.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and.i = and i32 %7, 15
  %call3 = tail call fastcc i32 @rda_gpio_set_irq(ptr noundef %1, i32 noundef %3, i32 noundef %and.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rda_gpio_irq_set_type(ptr nocapture noundef readonly %data, i32 noundef %flow_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %call2 = tail call fastcc i32 @rda_gpio_set_irq(ptr noundef %1, i32 noundef %3, i32 noundef %flow_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %flow_type, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  %and5 = and i32 %flow_type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else.cleanup_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %handle_level_irq.sink = phi ptr [ @handle_level_irq, %if.end.cleanup.sink.split_crit_edge ], [ @handle_edge_irq, %if.else.cleanup.sink.split_crit_edge ]
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common.i.i, align 4
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %handle_level_irq.sink, ptr %handle_irq.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rda_gpio_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  %call2 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #6
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #6
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #6
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %11(ptr noundef %irq_data4.i) #6
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %base = getelementptr inbounds %struct.rda_gpio, ptr %call2, i32 0, i32 1
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 36
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !42
  %15 = lshr i32 %14, 24
  %16 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %status, align 4
  %call4 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef 32, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call4)
  %cmp18 = icmp ult i32 %call4, 32
  br i1 %cmp18, label %for.body.lr.ph, label %chained_irq_enter.exit.for.end_crit_edge

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %n.019 = phi i32 [ %call4, %for.body.lr.ph ], [ %call6, %for.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %domain, align 4
  %call5 = call i32 @generic_handle_domain_irq(ptr noundef %18, i32 noundef %n.019) #6
  %add = add nuw nsw i32 %n.019, 1
  %call6 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef 32, i32 noundef %add) #6
  %cmp = icmp ult i32 %call6, 32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %19 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i15 = icmp eq ptr %20, null
  br i1 %tobool.not.i15, label %if.else.i16, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_exit.exit

if.else.i16:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %21 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i16, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %22, %if.else.i16 ], [ %20, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rda_gpio_set_irq(ptr noundef %chip, i32 noundef %offset, i32 noundef %flow_type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %base1 = getelementptr inbounds %struct.rda_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %2 = zext i32 %flow_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %flow_type, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 3, label %sw.bb13
    i32 4, label %sw.bb22
    i32 8, label %sw.bb29
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl nuw i32 1, %offset
  %3 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #6, !srcloc !43
  %4 = and i32 %shl, 255
  %add.ptr5 = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %4) #6, !srcloc !43
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shl7 = shl nuw i32 1, %offset
  %5 = tail call i32 @llvm.bswap.i32(i32 %shl7)
  %6 = lshr i32 %5, 8
  %add.ptr9 = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %6) #6, !srcloc !43
  %7 = and i32 %shl7, 255
  %add.ptr12 = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %7) #6, !srcloc !43
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shl14 = shl nuw i32 1, %offset
  %shl17 = shl i32 %shl14, 8
  %or = or i32 %shl17, %shl14
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %add.ptr18 = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %8) #6, !srcloc !43
  %9 = and i32 %shl14, 255
  %add.ptr21 = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %9) #6, !srcloc !43
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shl23 = shl nuw i32 1, %offset
  %shl26 = shl i32 %shl23, 24
  %or27 = or i32 %shl26, %shl23
  %10 = tail call i32 @llvm.bswap.i32(i32 %or27)
  %add.ptr28 = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %10) #6, !srcloc !43
  br label %cleanup

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shl30 = shl nuw i32 1, %offset
  %shl31 = shl i32 %shl30, 8
  %shl33 = shl i32 %shl30, 24
  %or34 = or i32 %shl31, %shl33
  %11 = tail call i32 @llvm.bswap.i32(i32 %or34)
  %add.ptr35 = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %11) #6, !srcloc !43
  br label %cleanup

cleanup:                                          ; preds = %sw.bb29, %sw.bb22, %sw.bb13, %sw.bb6, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb29 ], [ 0, %sw.bb22 ], [ 0, %sw.bb13 ], [ 0, %sw.bb6 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_gpio_rda__223_285_rda_gpio_driver_init6, !1, !"__initcall__kmod_gpio_rda__223_285_rda_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-rda.c", i32 285, i32 1}
!2 = !{ptr @__exitcall_rda_gpio_driver_exit, !1, !"__exitcall_rda_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description224, !4, !"__UNIQUE_ID_description224", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-rda.c", i32 287, i32 1}
!5 = !{ptr @__UNIQUE_ID_author225, !6, !"__UNIQUE_ID_author225", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-rda.c", i32 288, i32 1}
!7 = !{ptr @__UNIQUE_ID_file226, !8, !"__UNIQUE_ID_file226", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-rda.c", i32 289, i32 1}
!9 = !{ptr @__UNIQUE_ID_license227, !8, !"__UNIQUE_ID_license227", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-rda.c", i32 210, i32 38}
!12 = !{ptr @rda_gpio_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-rda.c", i32 225, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpio/gpio-rda.c", i32 235, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rda_gpio_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @rda_gpio_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpio/gpio-rda.c", i32 244, i32 29}
!25 = !{ptr @rda_gpio_probe.lock_key, !26, !"lock_key", i1 false, i1 false}
!26 = !{!"../drivers/gpio/gpio-rda.c", i32 268, i32 9}
!27 = !{ptr @rda_gpio_probe.request_key, !26, !"request_key", i1 false, i1 false}
!28 = !{ptr @rda_gpio_driver, !29, !"rda_gpio_driver", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-rda.c", i32 277, i32 31}
!30 = !{ptr @rda_gpio_of_match, !31, !"rda_gpio_of_match", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpio-rda.c", i32 271, i32 34}
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
!42 = !{i64 4845445}
!43 = !{i64 4845027}
