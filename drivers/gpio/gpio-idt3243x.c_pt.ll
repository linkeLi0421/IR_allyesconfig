; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-idt3243x.c_pt.bc'
source_filename = "../drivers/gpio/gpio-idt3243x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.idt_gpio_ctrl = type { %struct.gpio_chip, ptr, ptr, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_gpio_idt3243x__223_202_idt_gpio_driver_init6 = internal global ptr @idt_gpio_driver_init, section ".initcall6.init", align 4
@idt_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @idt_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @idt_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_idt_gpio_driver_exit = internal global ptr @idt_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description224 = internal constant [56 x i8] c"gpio_idt3243x.description=IDT 79RC3243x GPIO/PIC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author225 = internal constant [69 x i8] c"gpio_idt3243x.author=Thomas Bogendoerfer <tsbogend@alpha.franken.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [46 x i8] c"gpio_idt3243x.file=drivers/gpio/gpio-idt3243x\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [26 x i8] c"gpio_idt3243x.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"idt3243x-gpio\00", [18 x i8] zeroinitializer }, align 32
@idt_gpio_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"idt,32434-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@idt_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 153, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bgpio_init failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"idt_gpio_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/gpio/gpio-idt3243x.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@idt_gpio_probe._entry_ptr = internal global ptr @idt_gpio_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ngpios\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"interrupt-controller\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pic\00", [28 x i8] zeroinitializer }, align 32
@idt_gpio_irqchip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.10, ptr null, ptr null, ptr null, ptr null, ptr @idt_gpio_ack, ptr @idt_gpio_mask, ptr null, ptr @idt_gpio_unmask, ptr null, ptr null, ptr null, ptr @idt_gpio_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@idt_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@idt_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IDTGPIO\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"idt_gpio_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 195, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 198, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [18 x i8] c"idt_gpio_of_match\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 189, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 144, i32 59 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 153, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 157, i32 38 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 161, i32 37 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 162, i32 59 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"idt_gpio_irqchip\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 122, i32 24 }
@___asan_gen_.53 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 186, i32 9 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [32 x i8] c"../drivers/gpio/gpio-idt3243x.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 123, i32 10 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_idt_gpio_driver_exit, ptr @__initcall__kmod_gpio_idt3243x__223_202_idt_gpio_driver_init6, ptr @idt_gpio_driver_exit, ptr @idt_gpio_probe._entry, ptr @idt_gpio_probe._entry_ptr, ptr @idt_gpio_driver, ptr @.str, ptr @idt_gpio_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @idt_gpio_irqchip, ptr @idt_gpio_probe.lock_key, ptr @idt_gpio_probe.request_key, ptr @.str.10], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_gpio_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_gpio_irqchip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idt_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @idt_gpio_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @idt_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @idt_gpio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %ngpios = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ngpios) #6
  %0 = ptrtoint ptr %ngpios to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ngpios, align 4, !annotation !48
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 360, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #6
  %gpio = getelementptr inbounds %struct.idt_gpio_ctrl, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %gpio to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %gpio, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %parent, align 4
  %add.ptr = getelementptr i8, ptr %call2, i32 4
  %call14 = tail call i32 @bgpio_init(ptr noundef nonnull %call.i, ptr noundef %dev1, i32 noundef 4, ptr noundef %add.ptr, ptr noundef null, ptr noundef null, ptr noundef %call2, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %do.end

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %call.i90 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef nonnull %ngpios, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool19.not = icmp eq i32 %call.i90, 0
  br i1 %tobool19.not, label %if.then20, label %if.end17.if.end22_crit_edge

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %ngpios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ngpios, align 4
  %conv = trunc i32 %5 to i16
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %6 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %ngpio, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end17.if.end22_crit_edge
  %call.i91 = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.8) #6
  br i1 %call.i91, label %if.then24, label %if.end22.if.end44_crit_edge

if.end22.if.end44_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then24:                                        ; preds = %if.end22
  %call25 = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.9) #6
  %pic = getelementptr inbounds %struct.idt_gpio_ctrl, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %pic to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call25, ptr %pic, align 4
  %cmp.i92 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.then24
  %call32 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp = icmp slt i32 %call32, 0
  br i1 %cmp, label %if.end31.cleanup_crit_edge, label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %irq = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @idt_gpio_irqchip, ptr %irq, align 4
  %init_hw = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 20
  %10 = ptrtoint ptr %init_hw to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @idt_gpio_irq_init_hw, ptr %init_hw, align 4
  %parent_handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 13
  %11 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @idt_gpio_dispatch, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 15
  %12 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %num_parents, align 4
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 4, i32 noundef 3520) #6
  %parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 16
  %13 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5.i.i, ptr %parents, align 4
  %tobool40.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool40.not, label %if.end35.cleanup_crit_edge, label %if.end42

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call32, ptr %call5.i.i, align 4
  %default_type = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 10
  %15 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 9
  %16 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @handle_bad_irq, ptr %handler, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end42, %if.end22.if.end44_crit_edge
  %call47 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @idt_gpio_probe.lock_key, ptr noundef nonnull @idt_gpio_probe.request_key) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end35.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.then28, %do.end, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then5 ], [ %call14, %do.end ], [ %8, %if.then28 ], [ %call47, %if.end44 ], [ -12, %entry.cleanup_crit_edge ], [ %call32, %if.end31.cleanup_crit_edge ], [ -12, %if.end35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ngpios) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgpio_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_gpio_irq_init_hw(ptr noundef %gc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %mask_cache = getelementptr inbounds %struct.idt_gpio_ctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %mask_cache to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask_cache, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %1 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mask_cache, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %pic = getelementptr inbounds %struct.idt_gpio_ctrl, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %pic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pic, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #6, !srcloc !50
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idt_gpio_dispatch(ptr noundef %desc) #2 align 64 {
entry:
  %irq.i.i = alloca i32, align 4
  %pending = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pending) #6
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
  %pic = getelementptr inbounds %struct.idt_gpio_ctrl, ptr %call1, i32 0, i32 1
  %12 = ptrtoint ptr %pic to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pic, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !51
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %mask_cache = getelementptr inbounds %struct.idt_gpio_ctrl, ptr %call1, i32 0, i32 3
  %16 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask_cache, align 4
  %neg = xor i32 %17, -1
  %and = and i32 %15, %neg
  %18 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %pending, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %19 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %20 to i32
  %call5 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef %conv, i32 noundef 0) #6
  %21 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ngpio, align 4
  %conv732 = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %conv732)
  %cmp33 = icmp ult i32 %call5, %conv732
  br i1 %cmp33, label %for.body.lr.ph, label %chained_irq_enter.exit.for.end_crit_edge

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %bit.034 = phi i32 [ %call5, %for.body.lr.ph ], [ %call13, %for.inc.for.body_crit_edge ]
  %23 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i) #6
  %25 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %irq.i.i, align 4, !annotation !48
  %call.i.i = call ptr @__irq_resolve_mapping(ptr noundef %24, i32 noundef %bit.034, ptr noundef nonnull %irq.i.i) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %irq_linear_revmap.exit.thread, label %irq_linear_revmap.exit

irq_linear_revmap.exit.thread:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #6
  br label %for.inc

irq_linear_revmap.exit:                           ; preds = %for.body
  %26 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not = icmp eq i32 %27, 0
  br i1 %tobool.not, label %irq_linear_revmap.exit.for.inc_crit_edge, label %if.then

irq_linear_revmap.exit.for.inc_crit_edge:         ; preds = %irq_linear_revmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %irq_linear_revmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = call i32 @generic_handle_irq(i32 noundef %27) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %irq_linear_revmap.exit.for.inc_crit_edge, %irq_linear_revmap.exit.thread
  %28 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ngpio, align 4
  %conv12 = zext i16 %29 to i32
  %add = add nuw i32 %bit.034, 1
  %call13 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef %conv12, i32 noundef %add) #6
  %30 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %ngpio, align 4
  %conv7 = zext i16 %31 to i32
  %cmp = icmp ult i32 %call13, %conv7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %32 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i27 = icmp eq ptr %33, null
  br i1 %tobool.not.i27, label %if.else.i28, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_exit.exit

if.else.i28:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %34 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i28, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %35, %if.else.i28 ], [ %33, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pending) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idt_gpio_ack(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  %neg = xor i32 %shl, -1
  %4 = tail call i32 @llvm.bswap.i32(i32 %neg)
  %gpio = getelementptr inbounds %struct.idt_gpio_ctrl, ptr %call1, i32 0, i32 2
  %5 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gpio, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #6, !srcloc !50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idt_gpio_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 34
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock) #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  %mask_cache = getelementptr inbounds %struct.idt_gpio_ctrl, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask_cache, align 4
  %or = or i32 %5, %shl
  store i32 %or, ptr %mask_cache, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask_cache, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %pic = getelementptr inbounds %struct.idt_gpio_ctrl, ptr %call1, i32 0, i32 1
  %9 = ptrtoint ptr %pic to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pic, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #6, !srcloc !50
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idt_gpio_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 34
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock) #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  %neg = xor i32 %shl, -1
  %mask_cache = getelementptr inbounds %struct.idt_gpio_ctrl, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask_cache, align 4
  %and = and i32 %5, %neg
  store i32 %and, ptr %mask_cache, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask_cache, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %pic = getelementptr inbounds %struct.idt_gpio_ctrl, ptr %call1, i32 0, i32 1
  %9 = ptrtoint ptr %pic to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pic, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #6, !srcloc !50
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idt_gpio_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %flow_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %and = and i32 %flow_type, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp ne i32 %and, 0
  %and2 = and i32 %flow_type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %do.body3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body3:                                         ; preds = %entry
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 34
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock) #6
  %gpio = getelementptr inbounds %struct.idt_gpio_ctrl, ptr %call1, i32 0, i32 2
  %2 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !51
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %and12 = and i32 %flow_type, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %7
  %or = or i32 %shl, %5
  br label %do.body23

if.else:                                          ; preds = %do.body3
  %and15 = and i32 %flow_type, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else.do.body23_crit_edge, label %if.then17

if.else.do.body23_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body23

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %hwirq18 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %8 = ptrtoint ptr %hwirq18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq18, align 4
  %shl19 = shl nuw i32 1, %9
  %neg = xor i32 %shl19, -1
  %and20 = and i32 %5, %neg
  br label %do.body23

do.body23:                                        ; preds = %if.then17, %if.else.do.body23_crit_edge, %if.then14
  %ilevel.0 = phi i32 [ %or, %if.then14 ], [ %and20, %if.then17 ], [ %5, %if.else.do.body23_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %ilevel.0)
  %11 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpio, align 4
  %add.ptr27 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %10) #6, !srcloc !50
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %13 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %common.i.i, align 4
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @handle_level_irq, ptr %handle_irq.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call6) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body23 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_gpio_idt3243x__223_202_idt_gpio_driver_init6, !1, !"__initcall__kmod_gpio_idt3243x__223_202_idt_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-idt3243x.c", i32 202, i32 1}
!2 = !{ptr @__exitcall_idt_gpio_driver_exit, !1, !"__exitcall_idt_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description224, !4, !"__UNIQUE_ID_description224", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-idt3243x.c", i32 204, i32 1}
!5 = !{ptr @__UNIQUE_ID_author225, !6, !"__UNIQUE_ID_author225", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-idt3243x.c", i32 205, i32 1}
!7 = !{ptr @__UNIQUE_ID_file226, !8, !"__UNIQUE_ID_file226", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-idt3243x.c", i32 206, i32 1}
!9 = !{ptr @__UNIQUE_ID_license227, !8, !"__UNIQUE_ID_license227", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-idt3243x.c", i32 198, i32 11}
!12 = !{ptr @idt_gpio_driver, !13, !"idt_gpio_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-idt3243x.c", i32 195, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-idt3243x.c", i32 144, i32 59}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-idt3243x.c", i32 153, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @idt_gpio_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @idt_gpio_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpio/gpio-idt3243x.c", i32 157, i32 38}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpio/gpio-idt3243x.c", i32 161, i32 37}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-idt3243x.c", i32 162, i32 59}
!30 = !{ptr @idt_gpio_probe.lock_key, !31, !"lock_key", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpio-idt3243x.c", i32 186, i32 9}
!32 = !{ptr @idt_gpio_probe.request_key, !31, !"request_key", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpio/gpio-idt3243x.c", i32 123, i32 10}
!35 = !{ptr @idt_gpio_irqchip, !36, !"idt_gpio_irqchip", i1 false, i1 false}
!36 = !{!"../drivers/gpio/gpio-idt3243x.c", i32 122, i32 24}
!37 = !{ptr @idt_gpio_of_match, !38, !"idt_gpio_of_match", i1 false, i1 false}
!38 = !{!"../drivers/gpio/gpio-idt3243x.c", i32 189, i32 34}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
!49 = !{i64 2153788685}
!50 = !{i64 4842584}
!51 = !{i64 4843002}
!52 = !{i64 2153784322}
!53 = !{i64 2153786404}
!54 = !{i64 2153787353}
!55 = !{i64 2153788241}
!56 = !{i64 2153785500}
!57 = !{i64 2153785886}
