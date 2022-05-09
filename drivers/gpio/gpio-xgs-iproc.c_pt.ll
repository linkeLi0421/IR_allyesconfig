; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-xgs-iproc.c_pt.bc'
source_filename = "../drivers/gpio/gpio-xgs-iproc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.iproc_gpio_chip = type { %struct.irq_chip, %struct.gpio_chip, %struct.spinlock, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_gpio_xgs_iproc__227_316_bcm_iproc_gpio_driver_init6 = internal global ptr @bcm_iproc_gpio_driver_init, section ".initcall6.init", align 4
@bcm_iproc_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @iproc_gpio_probe, ptr @iproc_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_iproc_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm_iproc_gpio_driver_exit = internal global ptr @bcm_iproc_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description228 = internal constant [49 x i8] c"gpio_xgs_iproc.description=XGS IPROC GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [48 x i8] c"gpio_xgs_iproc.file=drivers/gpio/gpio-xgs-iproc\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [30 x i8] c"gpio_xgs_iproc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iproc-xgs-gpio\00", [17 x i8] zeroinitializer }, align 32
@bcm_iproc_gpio_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-gpio-cca\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@iproc_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@iproc_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 222, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to init GPIO chip\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iproc_gpio_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpio/gpio-xgs-iproc.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iproc_gpio_probe._entry_ptr = internal global ptr @iproc_gpio_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ngpios\00", [25 x i8] zeroinitializer }, align 32
@iproc_gpio_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 259, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Fail to request IRQ%d: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@iproc_gpio_probe._entry_ptr.10 = internal global ptr @iproc_gpio_probe._entry.8, section ".printk_index", align 4
@iproc_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@iproc_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@iproc_gpio_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 275, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to add GPIO chip\0A\00", [39 x i8] zeroinitializer }, align 32
@iproc_gpio_probe._entry_ptr.13 = internal global ptr @iproc_gpio_probe._entry.11, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.14 = private unnamed_addr constant [22 x i8] c"bcm_iproc_gpio_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 307, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 309, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [24 x i8] c"bcm_iproc_gpio_of_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 301, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 208, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 222, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 227, i32 32 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 259, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 273, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [33 x i8] c"../drivers/gpio/gpio-xgs-iproc.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 275, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_bcm_iproc_gpio_driver_exit, ptr @__initcall__kmod_gpio_xgs_iproc__227_316_bcm_iproc_gpio_driver_init6, ptr @bcm_iproc_gpio_driver_exit, ptr @iproc_gpio_probe._entry, ptr @iproc_gpio_probe._entry.11, ptr @iproc_gpio_probe._entry.8, ptr @iproc_gpio_probe._entry_ptr, ptr @iproc_gpio_probe._entry_ptr.10, ptr @iproc_gpio_probe._entry_ptr.13, ptr @bcm_iproc_gpio_driver, ptr @.str, ptr @bcm_iproc_gpio_of_match, ptr @iproc_gpio_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @iproc_gpio_probe.lock_key, ptr @iproc_gpio_probe.request_key, ptr @.str.12], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_iproc_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_iproc_gpio_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_gpio_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_gpio_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_iproc_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_iproc_gpio_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm_iproc_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm_iproc_gpio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %num_gpios = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_gpios) #6
  %2 = ptrtoint ptr %num_gpios to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %num_gpios, align 4, !annotation !47
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 540, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup72_crit_edge, label %if.end

entry.cleanup72_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup72

if.end:                                           ; preds = %entry
  %dev3 = getelementptr inbounds %struct.iproc_gpio_chip, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev3, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.iproc_gpio_chip, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @iproc_gpio_probe.__key, i16 noundef signext 3) #6
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.iproc_gpio_chip, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call5 to i32
  br label %cleanup72

if.end11:                                         ; preds = %if.end
  %gc = getelementptr inbounds %struct.iproc_gpio_chip, ptr %call.i, i32 0, i32 1
  %add.ptr14 = getelementptr i8, ptr %call5, i32 4
  %add.ptr16 = getelementptr i8, ptr %call5, i32 8
  %call17 = tail call i32 @bgpio_init(ptr noundef %gc, ptr noundef %dev1, i32 noundef 4, ptr noundef %call5, ptr noundef %add.ptr14, ptr noundef null, ptr noundef %add.ptr16, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end23, label %do.end22

do.end22:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup72

if.end23:                                         ; preds = %if.end11
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end23.dev_name.exit_crit_edge

if.end23.dev_name.exit_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end23.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ %8, %if.end23.dev_name.exit_crit_edge ]
  %11 = ptrtoint ptr %gc to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %retval.0.i, ptr %gc, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %num_gpios, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool27.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool27.not, label %if.then28, label %dev_name.exit.if.end30_crit_edge

dev_name.exit.if.end30_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then28:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %num_gpios to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_gpios, align 4
  %conv = trunc i32 %13 to i16
  %ngpio = getelementptr inbounds %struct.iproc_gpio_chip, ptr %call.i, i32 0, i32 1, i32 20
  %14 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %ngpio, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %dev_name.exit.if.end30_crit_edge
  %call31 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp sgt i32 %call31, 0
  br i1 %cmp, label %if.then33, label %if.end30.if.end62_crit_edge

if.end30.if.end62_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then33:                                        ; preds = %if.end30
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i135 = icmp eq ptr %16, null
  br i1 %tobool.not.i135, label %if.end.i136, label %if.then33.dev_name.exit138_crit_edge

if.then33.dev_name.exit138_crit_edge:             ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit138

if.end.i136:                                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit138

dev_name.exit138:                                 ; preds = %if.end.i136, %if.then33.dev_name.exit138_crit_edge
  %retval.0.i137 = phi ptr [ %18, %if.end.i136 ], [ %16, %if.then33.dev_name.exit138_crit_edge ]
  %name = getelementptr inbounds %struct.irq_chip, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %retval.0.i137, ptr %name, align 4
  %irq_ack = getelementptr inbounds %struct.irq_chip, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @iproc_gpio_irq_ack, ptr %irq_ack, align 4
  %irq_mask = getelementptr inbounds %struct.irq_chip, ptr %call.i, i32 0, i32 7
  %21 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @iproc_gpio_irq_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.irq_chip, ptr %call.i, i32 0, i32 9
  %22 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @iproc_gpio_irq_unmask, ptr %irq_unmask, align 4
  %irq_set_type = getelementptr inbounds %struct.irq_chip, ptr %call.i, i32 0, i32 13
  %23 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @iproc_gpio_irq_set_type, ptr %irq_set_type, align 4
  %call35 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #6
  %intr = getelementptr inbounds %struct.iproc_gpio_chip, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %intr to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call35, ptr %intr, align 4
  %cmp.i139 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i139, label %if.then38, label %if.end41

if.then38:                                        ; preds = %dev_name.exit138
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %call35 to i32
  br label %cleanup72

if.end41:                                         ; preds = %dev_name.exit138
  %add.ptr43 = getelementptr i8, ptr %call35, i32 36
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #6, !srcloc !48
  %27 = or i32 %26, 16777216
  %28 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %intr, align 4
  %add.ptr46 = getelementptr i8, ptr %29, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %27) #6, !srcloc !49
  %30 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gc, align 4
  %call.i140 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call31, ptr noundef nonnull @iproc_gpio_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %31, ptr noundef %gc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool51.not = icmp eq i32 %call.i140, 0
  br i1 %tobool51.not, label %cleanup, label %do.end55

do.end55:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %call31, i32 noundef %call.i140) #9
  br label %cleanup72

cleanup:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %irq58 = getelementptr inbounds %struct.iproc_gpio_chip, ptr %call.i, i32 0, i32 1, i32 37
  %32 = ptrtoint ptr %irq58 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %irq58, align 4
  %parent_handler = getelementptr inbounds %struct.iproc_gpio_chip, ptr %call.i, i32 0, i32 1, i32 37, i32 13
  %33 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.iproc_gpio_chip, ptr %call.i, i32 0, i32 1, i32 37, i32 15
  %34 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %num_parents, align 4
  %parents = getelementptr inbounds %struct.iproc_gpio_chip, ptr %call.i, i32 0, i32 1, i32 37, i32 16
  %35 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %parents, align 4
  %default_type = getelementptr inbounds %struct.iproc_gpio_chip, ptr %call.i, i32 0, i32 1, i32 37, i32 10
  %36 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.iproc_gpio_chip, ptr %call.i, i32 0, i32 1, i32 37, i32 9
  %37 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @handle_simple_irq, ptr %handler, align 4
  br label %if.end62

if.end62:                                         ; preds = %cleanup, %if.end30.if.end62_crit_edge
  %call65 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef %gc, ptr noundef nonnull %call.i, ptr noundef nonnull @iproc_gpio_probe.lock_key, ptr noundef nonnull @iproc_gpio_probe.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end62.cleanup72_crit_edge, label %do.end70

if.end62.cleanup72_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup72

do.end70:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #9
  br label %cleanup72

cleanup72:                                        ; preds = %do.end70, %if.end62.cleanup72_crit_edge, %do.end55, %if.then38, %do.end22, %if.then8, %entry.cleanup72_crit_edge
  %retval.1 = phi i32 [ %6, %if.then8 ], [ %call17, %do.end22 ], [ %call65, %do.end70 ], [ -12, %entry.cleanup72_crit_edge ], [ 0, %if.end62.cleanup72_crit_edge ], [ %25, %if.then38 ], [ %call.i140, %do.end55 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_gpios) #6
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_gpio_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %intr = getelementptr inbounds %struct.iproc_gpio_chip, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intr, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %3, i32 36
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !48
  %5 = and i32 %4, -16777217
  %6 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intr, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %5) #6, !srcloc !49
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgpio_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iproc_gpio_irq_ack(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %irq2 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %4 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq2, align 4
  %lock = getelementptr i8, ptr %1, i32 348
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %5) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %irq_get_trigger_type.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

irq_get_trigger_type.exit:                        ; preds = %entry
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %common.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %irq_get_trigger_type.exit.if.end_crit_edge, label %if.then

irq_get_trigger_type.exit.if.end_crit_edge:       ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl nuw i32 1, %3
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %base = getelementptr i8, ptr %1, i32 396
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #6, !srcloc !49
  br label %if.end

if.end:                                           ; preds = %if.then, %irq_get_trigger_type.exit.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iproc_gpio_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %irq2 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %4 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq2, align 4
  %lock = getelementptr i8, ptr %1, i32 348
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %5) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.irq_get_trigger_type.exit_crit_edge, label %cond.true.i

entry.irq_get_trigger_type.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_get_trigger_type.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %common.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %phi.bo = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo)
  %phi.cmp = icmp eq i32 %phi.bo, 0
  br label %irq_get_trigger_type.exit

irq_get_trigger_type.exit:                        ; preds = %cond.true.i, %entry.irq_get_trigger_type.exit_crit_edge
  %cond.i = phi i1 [ %phi.cmp, %cond.true.i ], [ true, %entry.irq_get_trigger_type.exit_crit_edge ]
  %base = getelementptr i8, ptr %1, i32 396
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 28
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !48
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %14, i32 20
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #6, !srcloc !48
  br i1 %cond.i, label %if.else, label %if.then

if.then:                                          ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %12)
  %shl = shl nuw i32 1, %3
  %neg = xor i32 %shl, -1
  %and16 = and i32 %16, %neg
  %17 = tail call i32 @llvm.bswap.i32(i32 %and16)
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr18 = getelementptr i8, ptr %19, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %17) #6, !srcloc !49
  br label %if.end

if.else:                                          ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  %20 = tail call i32 @llvm.bswap.i32(i32 %15)
  %shl19 = shl nuw i32 1, %3
  %neg20 = xor i32 %shl19, -1
  %and21 = and i32 %20, %neg20
  %21 = tail call i32 @llvm.bswap.i32(i32 %and21)
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr23 = getelementptr i8, ptr %23, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %21) #6, !srcloc !49
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iproc_gpio_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %irq2 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %4 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq2, align 4
  %lock = getelementptr i8, ptr %1, i32 348
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %5) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.irq_get_trigger_type.exit_crit_edge, label %cond.true.i

entry.irq_get_trigger_type.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_get_trigger_type.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %common.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %phi.bo = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo)
  %phi.cmp = icmp eq i32 %phi.bo, 0
  br label %irq_get_trigger_type.exit

irq_get_trigger_type.exit:                        ; preds = %cond.true.i, %entry.irq_get_trigger_type.exit_crit_edge
  %cond.i = phi i1 [ %phi.cmp, %cond.true.i ], [ true, %entry.irq_get_trigger_type.exit_crit_edge ]
  %base = getelementptr i8, ptr %1, i32 396
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 28
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !48
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %14, i32 20
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #6, !srcloc !48
  br i1 %cond.i, label %if.else, label %if.then

if.then:                                          ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %12)
  %shl = shl nuw i32 1, %3
  %or = or i32 %16, %shl
  %17 = tail call i32 @llvm.bswap.i32(i32 %or)
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr17 = getelementptr i8, ptr %19, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %17) #6, !srcloc !49
  br label %if.end

if.else:                                          ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  %20 = tail call i32 @llvm.bswap.i32(i32 %15)
  %shl18 = shl nuw i32 1, %3
  %or19 = or i32 %20, %shl18
  %21 = tail call i32 @llvm.bswap.i32(i32 %or19)
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr21 = getelementptr i8, ptr %23, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %21) #6, !srcloc !49
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_gpio_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %irq2 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %4 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq2, align 4
  %lock = getelementptr i8, ptr %1, i32 348
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %and = and i32 %type, 15
  %6 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %entry.out_unlock_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb13
    i32 4, label %sw.bb22
    i32 8, label %sw.bb33
  ]

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base = getelementptr i8, ptr %1, i32 396
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 36
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !48
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %shl = shl nuw i32 1, %3
  %neg = xor i32 %shl, -1
  %and10 = and i32 %10, %neg
  %11 = tail call i32 @llvm.bswap.i32(i32 %and10)
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %13, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %11) #6, !srcloc !49
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base15 = getelementptr i8, ptr %1, i32 396
  %14 = ptrtoint ptr %base15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base15, align 4
  %add.ptr16 = getelementptr i8, ptr %15, i32 36
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #6, !srcloc !48
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %shl19 = shl nuw i32 1, %3
  %or = or i32 %17, %shl19
  %18 = tail call i32 @llvm.bswap.i32(i32 %or)
  %19 = ptrtoint ptr %base15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base15, align 4
  %add.ptr21 = getelementptr i8, ptr %20, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %18) #6, !srcloc !49
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base24 = getelementptr i8, ptr %1, i32 396
  %21 = ptrtoint ptr %base24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base24, align 4
  %add.ptr25 = getelementptr i8, ptr %22, i32 16
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #6, !srcloc !48
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %shl28 = shl nuw i32 1, %3
  %neg29 = xor i32 %shl28, -1
  %and30 = and i32 %24, %neg29
  %25 = tail call i32 @llvm.bswap.i32(i32 %and30)
  %26 = ptrtoint ptr %base24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base24, align 4
  %add.ptr32 = getelementptr i8, ptr %27, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %25) #6, !srcloc !49
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base35 = getelementptr i8, ptr %1, i32 396
  %28 = ptrtoint ptr %base35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base35, align 4
  %add.ptr36 = getelementptr i8, ptr %29, i32 16
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #6, !srcloc !48
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %shl39 = shl nuw i32 1, %3
  %or40 = or i32 %31, %shl39
  %32 = tail call i32 @llvm.bswap.i32(i32 %or40)
  %33 = ptrtoint ptr %base35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base35, align 4
  %add.ptr42 = getelementptr i8, ptr %34, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %32) #6, !srcloc !49
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb33, %sw.bb22, %sw.bb13, %sw.bb
  %and43 = and i32 %type, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool.not = icmp eq i32 %and43, 0
  br i1 %tobool.not, label %if.else, label %sw.epilog.out_unlock.sink.split_crit_edge

sw.epilog.out_unlock.sink.split_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock.sink.split

if.else:                                          ; preds = %sw.epilog
  %and45 = and i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.else.out_unlock_crit_edge, label %if.else.out_unlock.sink.split_crit_edge

if.else.out_unlock.sink.split_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock.sink.split

if.else.out_unlock_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

out_unlock.sink.split:                            ; preds = %if.else.out_unlock.sink.split_crit_edge, %sw.epilog.out_unlock.sink.split_crit_edge
  %handle_level_irq.sink = phi ptr [ @handle_level_irq, %sw.epilog.out_unlock.sink.split_crit_edge ], [ @handle_edge_irq, %if.else.out_unlock.sink.split_crit_edge ]
  %call44 = tail call ptr @irq_get_irq_data(i32 noundef %5) #6
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call44, i32 0, i32 3
  %35 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %common.i.i, align 4
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %handle_level_irq.sink, ptr %handle_irq.i, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %out_unlock.sink.split, %if.else.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %ret.0 = phi i32 [ 0, %if.else.out_unlock_crit_edge ], [ -22, %entry.out_unlock_crit_edge ], [ 0, %out_unlock.sink.split ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #6
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_gpio_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %int_bits = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_bits) #6
  %0 = ptrtoint ptr %int_bits to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %int_bits, align 4
  %intr = getelementptr i8, ptr %data, i32 400
  %1 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %intr, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 32
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !48
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %base = getelementptr i8, ptr %data, i32 396
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 28
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #6, !srcloc !48
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #6, !srcloc !48
  %11 = and i32 %10, %7
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !48
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr19 = getelementptr i8, ptr %16, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #6, !srcloc !48
  %18 = xor i32 %17, %14
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr24 = getelementptr i8, ptr %20, i32 20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #6, !srcloc !48
  %22 = and i32 %21, %18
  %23 = or i32 %22, %11
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %int_bits to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %int_bits, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %data, i32 0, i32 20
  %26 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %27 to i32
  %call28 = call i32 @_find_next_bit_be(ptr noundef nonnull %int_bits, i32 noundef %conv, i32 noundef 0) #6
  %28 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ngpio, align 4
  %conv3052 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call28, i32 %conv3052)
  %cmp53 = icmp slt i32 %call28, %conv3052
  br i1 %cmp53, label %for.body.lr.ph, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.lr.ph:                                   ; preds = %if.then
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %data, i32 0, i32 37, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %bit.054 = phi i32 [ %call28, %for.body.lr.ph ], [ %call36, %for.body.for.body_crit_edge ]
  %30 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %domain, align 4
  %call33 = call i32 @generic_handle_domain_irq(ptr noundef %31, i32 noundef %bit.054) #6
  %32 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ngpio, align 4
  %conv35 = zext i16 %33 to i32
  %add = add nsw i32 %bit.054, 1
  %call36 = call i32 @_find_next_bit_be(ptr noundef nonnull %int_bits, i32 noundef %conv35, i32 noundef %add) #6
  %34 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ngpio, align 4
  %conv30 = zext i16 %35 to i32
  %cmp = icmp slt i32 %call36, %conv30
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %36 = ptrtoint ptr %int_bits to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %int_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool37.not = icmp ne i32 %37, 0
  %cond = zext i1 %tobool37.not to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_bits) #6
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !28, !29, !31, !32, !34, !35, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_gpio_xgs_iproc__227_316_bcm_iproc_gpio_driver_init6, !1, !"__initcall__kmod_gpio_xgs_iproc__227_316_bcm_iproc_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-xgs-iproc.c", i32 316, i32 1}
!2 = !{ptr @__exitcall_bcm_iproc_gpio_driver_exit, !1, !"__exitcall_bcm_iproc_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description228, !4, !"__UNIQUE_ID_description228", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-xgs-iproc.c", i32 318, i32 1}
!5 = !{ptr @__UNIQUE_ID_file229, !6, !"__UNIQUE_ID_file229", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-xgs-iproc.c", i32 319, i32 1}
!7 = !{ptr @__UNIQUE_ID_license230, !6, !"__UNIQUE_ID_license230", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-xgs-iproc.c", i32 309, i32 11}
!10 = !{ptr @bcm_iproc_gpio_driver, !11, !"bcm_iproc_gpio_driver", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-xgs-iproc.c", i32 307, i32 31}
!12 = !{ptr @iproc_gpio_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-xgs-iproc.c", i32 208, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpio/gpio-xgs-iproc.c", i32 222, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @iproc_gpio_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @iproc_gpio_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpio/gpio-xgs-iproc.c", i32 227, i32 32}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpio/gpio-xgs-iproc.c", i32 259, i32 4}
!27 = !{ptr @iproc_gpio_probe._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @iproc_gpio_probe._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @iproc_gpio_probe.lock_key, !30, !"lock_key", i1 false, i1 false}
!30 = !{!"../drivers/gpio/gpio-xgs-iproc.c", i32 273, i32 8}
!31 = !{ptr @iproc_gpio_probe.request_key, !30, !"request_key", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpio/gpio-xgs-iproc.c", i32 275, i32 3}
!34 = !{ptr @iproc_gpio_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @iproc_gpio_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @bcm_iproc_gpio_of_match, !37, !"bcm_iproc_gpio_of_match", i1 false, i1 false}
!37 = !{!"../drivers/gpio/gpio-xgs-iproc.c", i32 301, i32 34}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"auto-init"}
!48 = !{i64 4846387}
!49 = !{i64 4845969}
