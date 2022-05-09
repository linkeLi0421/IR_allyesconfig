; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-tc3589x.c_pt.bc'
source_filename = "../drivers/gpio/gpio-tc3589x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tc3589x_gpio = type { %struct.gpio_chip, ptr, ptr, %struct.mutex, [5 x [3 x i8]], [5 x [3 x i8]] }
%struct.tc3589x = type { %struct.mutex, ptr, ptr, ptr, i32, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_gpio_tc3589x__227_371_tc3589x_gpio_init4 = internal global ptr @tc3589x_gpio_init, section ".initcall4.init", align 4
@tc3589x_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tc3589x_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tc3589x-gpio\00", [19 x i8] zeroinitializer }, align 32
@tc3589x_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 300, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No Device Tree node found\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tc3589x_gpio_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/gpio/gpio-tc3589x.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tc3589x_gpio_probe._entry_ptr = internal global ptr @tc3589x_gpio_probe._entry, section ".printk_index", align 4
@tc3589x_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&tc3589x_gpio->irq_lock\00", [40 x i8] zeroinitializer }, align 32
@template_chip = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr @.str.10, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tc3589x_gpio_get_direction, ptr @tc3589x_gpio_direction_input, ptr @tc3589x_gpio_direction_output, ptr @tc3589x_gpio_get, ptr null, ptr @tc3589x_gpio_set, ptr null, ptr @tc3589x_gpio_set_config, ptr null, ptr null, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 1, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@tc3589x_gpio_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tc3589x_gpio_irq_mask, ptr null, ptr @tc3589x_gpio_irq_unmask, ptr null, ptr null, ptr null, ptr @tc3589x_gpio_irq_set_type, ptr null, ptr @tc3589x_gpio_irq_lock, ptr @tc3589x_gpio_irq_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@tc3589x_gpio_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 355, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to get irq: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@tc3589x_gpio_probe._entry_ptr.9 = internal global ptr @tc3589x_gpio_probe._entry.7, section ".printk_index", align 4
@tc3589x_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tc3589x_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tc3589x\00", [24 x i8] zeroinitializer }, align 32
@tc3589x_gpio_irq_sync_unlock.regmap = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\CC\CF\C9\D2\EC", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@___asan_gen_.13 = private unnamed_addr constant [20 x i8] c"tc3589x_gpio_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 362, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 363, i32 17 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 300, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 313, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"template_chip\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 145, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant [22 x i8] c"tc3589x_gpio_irq_chip\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 247, i32 24 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 355, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 359, i32 9 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 146, i32 13 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"regmap\00", align 1
@___asan_gen_.65 = private constant [31 x i8] c"../drivers/gpio/gpio-tc3589x.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 198, i32 18 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__initcall__kmod_gpio_tc3589x__227_371_tc3589x_gpio_init4, ptr @tc3589x_gpio_probe._entry, ptr @tc3589x_gpio_probe._entry.7, ptr @tc3589x_gpio_probe._entry_ptr, ptr @tc3589x_gpio_probe._entry_ptr.9, ptr @tc3589x_gpio_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tc3589x_gpio_probe.__key, ptr @.str.6, ptr @template_chip, ptr @tc3589x_gpio_irq_chip, ptr @.str.8, ptr @tc3589x_gpio_probe.lock_key, ptr @tc3589x_gpio_probe.request_key, ptr @.str.10, ptr @tc3589x_gpio_irq_sync_unlock.regmap], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @template_chip to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_gpio_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_gpio_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc3589x_gpio_irq_sync_unlock.regmap to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tc3589x_gpio_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tc3589x_gpio_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc3589x_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 480, i32 noundef 3520) #6
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %do.body11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body11:                                        ; preds = %if.end5
  %irq_lock = getelementptr inbounds %struct.tc3589x_gpio, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @tc3589x_gpio_probe.__key) #6
  %dev15 = getelementptr inbounds %struct.tc3589x_gpio, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %dev15 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev15, align 4
  %tc3589x16 = getelementptr inbounds %struct.tc3589x_gpio, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %tc3589x16 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %3, ptr %tc3589x16, align 4
  %8 = call ptr @memcpy(ptr %call.i, ptr @template_chip, i32 348)
  %num_gpio = getelementptr inbounds %struct.tc3589x, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %num_gpio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_gpio, align 4
  %conv = trunc i32 %10 to i16
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %11 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %ngpio, align 4
  %parent20 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %parent20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %parent20, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %13 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %base, align 4
  %irq23 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37
  %14 = ptrtoint ptr %irq23 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @tc3589x_gpio_irq_chip, ptr %irq23, align 4
  %parent_handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 13
  %15 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 15
  %16 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %num_parents, align 4
  %parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 16
  %17 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %parents, align 4
  %default_type = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 10
  %18 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 9
  %19 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @handle_simple_irq, ptr %handler, align 4
  %threaded = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 18
  %20 = ptrtoint ptr %threaded to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %threaded, align 4
  %call25 = tail call i32 @tc3589x_set_bits(ptr noundef %3, i8 noundef zeroext -126, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.body11.cleanup_crit_edge, label %if.end29

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %do.body11
  %call30 = tail call i32 @tc3589x_reg_write(ptr noundef %3, i8 noundef zeroext -13, i8 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end29.cleanup_crit_edge, label %if.end34

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  %call36 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call3, ptr noundef null, ptr noundef nonnull @tc3589x_gpio_irq, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call36) #9
  br label %cleanup

if.end43:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %call46 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @tc3589x_gpio_probe.lock_key, ptr noundef nonnull @tc3589x_gpio_probe.request_key) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %do.end41, %if.end29.cleanup_crit_edge, %do.body11.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call36, %do.end41 ], [ %call46, %if.end43 ], [ -22, %do.end ], [ %call3, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ %call25, %do.body11.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tc3589x_set_bits(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tc3589x_reg_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc3589x_gpio_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  %status = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tc3589x1 = getelementptr inbounds %struct.tc3589x_gpio, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %tc3589x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tc3589x1, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %status) #6
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %status, align 1, !annotation !41
  %3 = getelementptr inbounds [3 x i8], ptr %status, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !41
  %5 = getelementptr inbounds [3 x i8], ptr %status, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !41
  %call = call i32 @tc3589x_block_read(ptr noundef %1, i8 noundef zeroext -39, i8 noundef zeroext 3, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup14_crit_edge, label %for.cond.preheader

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup14

for.cond.preheader:                               ; preds = %entry
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %dev, i32 0, i32 37, i32 1
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %for.cond.preheader.cleanup_crit_edge, label %while.cond.preheader

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.preheader:                             ; preds = %for.cond.preheader
  %conv = zext i8 %8 to i32
  br label %while.body

while.body:                                       ; preds = %irq_find_mapping.exit.while.body_crit_edge, %while.cond.preheader
  %stat.031 = phi i32 [ %conv, %while.cond.preheader ], [ %and, %irq_find_mapping.exit.while.body_crit_edge ]
  %9 = call i32 @llvm.cttz.i32(i32 %stat.031, i1 true) #6, !range !42
  %10 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %irq.i, align 4, !annotation !41
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %11, i32 noundef %9, ptr noundef nonnull %irq.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.irq_find_mapping.exit_crit_edge, label %if.then.i

while.body.irq_find_mapping.exit_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %while.body.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %14, %if.then.i ], [ 0, %while.body.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  call void @handle_nested_irq(i32 noundef %retval.0.i) #6
  %shl = shl nuw i32 1, %9
  %neg = xor i32 %shl, -1
  %and = and i32 %stat.031, %neg
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %while.cond.while.end_crit_edge, label %irq_find_mapping.exit.while.body_crit_edge

irq_find_mapping.exit.while.body_crit_edge:       ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %status, align 1
  %call13 = call i32 @tc3589x_reg_write(ptr noundef %1, i8 noundef zeroext -36, i8 noundef zeroext %16) #6
  br label %cleanup

cleanup:                                          ; preds = %while.cond.while.end_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.1 = icmp eq i8 %18, 0
  br i1 %tobool.not.1, label %cleanup.cleanup.1_crit_edge, label %while.cond.preheader.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.1

while.cond.preheader.1:                           ; preds = %cleanup
  %conv.1 = zext i8 %18 to i32
  br label %while.body.1

while.body.1:                                     ; preds = %irq_find_mapping.exit.1.while.body.1_crit_edge, %while.cond.preheader.1
  %stat.031.1 = phi i32 [ %conv.1, %while.cond.preheader.1 ], [ %and.1, %irq_find_mapping.exit.1.while.body.1_crit_edge ]
  %19 = call i32 @llvm.cttz.i32(i32 %stat.031.1, i1 true) #6, !range !42
  %add.1 = add nuw nsw i32 %19, 8
  %20 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %22 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %irq.i, align 4, !annotation !41
  %call.i.1 = call ptr @__irq_resolve_mapping(ptr noundef %21, i32 noundef %add.1, ptr noundef nonnull %irq.i) #6
  %tobool.not.i.1 = icmp eq ptr %call.i.1, null
  br i1 %tobool.not.i.1, label %while.body.1.irq_find_mapping.exit.1_crit_edge, label %if.then.i.1

while.body.1.irq_find_mapping.exit.1_crit_edge:   ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit.1

if.then.i.1:                                      ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit.1

irq_find_mapping.exit.1:                          ; preds = %if.then.i.1, %while.body.1.irq_find_mapping.exit.1_crit_edge
  %retval.0.i.1 = phi i32 [ %24, %if.then.i.1 ], [ 0, %while.body.1.irq_find_mapping.exit.1_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  call void @handle_nested_irq(i32 noundef %retval.0.i.1) #6
  %shl.1 = shl nuw i32 1, %19
  %neg.1 = xor i32 %shl.1, -1
  %and.1 = and i32 %stat.031.1, %neg.1
  %tobool5.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool5.not.1, label %while.cond.while.end_crit_edge.1, label %irq_find_mapping.exit.1.while.body.1_crit_edge

irq_find_mapping.exit.1.while.body.1_crit_edge:   ; preds = %irq_find_mapping.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.1

while.cond.while.end_crit_edge.1:                 ; preds = %irq_find_mapping.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %3, align 1
  %call13.1 = call i32 @tc3589x_reg_write(ptr noundef %1, i8 noundef zeroext -35, i8 noundef zeroext %26) #6
  br label %cleanup.1

cleanup.1:                                        ; preds = %while.cond.while.end_crit_edge.1, %cleanup.cleanup.1_crit_edge
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.2 = icmp eq i8 %28, 0
  br i1 %tobool.not.2, label %cleanup.1.cleanup14_crit_edge, label %while.cond.preheader.2

cleanup.1.cleanup14_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup14

while.cond.preheader.2:                           ; preds = %cleanup.1
  %conv.2 = zext i8 %28 to i32
  br label %while.body.2

while.body.2:                                     ; preds = %irq_find_mapping.exit.2.while.body.2_crit_edge, %while.cond.preheader.2
  %stat.031.2 = phi i32 [ %conv.2, %while.cond.preheader.2 ], [ %and.2, %irq_find_mapping.exit.2.while.body.2_crit_edge ]
  %29 = call i32 @llvm.cttz.i32(i32 %stat.031.2, i1 true) #6, !range !42
  %add.2 = add nuw nsw i32 %29, 16
  %30 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %32 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %irq.i, align 4, !annotation !41
  %call.i.2 = call ptr @__irq_resolve_mapping(ptr noundef %31, i32 noundef %add.2, ptr noundef nonnull %irq.i) #6
  %tobool.not.i.2 = icmp eq ptr %call.i.2, null
  br i1 %tobool.not.i.2, label %while.body.2.irq_find_mapping.exit.2_crit_edge, label %if.then.i.2

while.body.2.irq_find_mapping.exit.2_crit_edge:   ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit.2

if.then.i.2:                                      ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit.2

irq_find_mapping.exit.2:                          ; preds = %if.then.i.2, %while.body.2.irq_find_mapping.exit.2_crit_edge
  %retval.0.i.2 = phi i32 [ %34, %if.then.i.2 ], [ 0, %while.body.2.irq_find_mapping.exit.2_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  call void @handle_nested_irq(i32 noundef %retval.0.i.2) #6
  %shl.2 = shl nuw i32 1, %29
  %neg.2 = xor i32 %shl.2, -1
  %and.2 = and i32 %stat.031.2, %neg.2
  %tobool5.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool5.not.2, label %while.cond.while.end_crit_edge.2, label %irq_find_mapping.exit.2.while.body.2_crit_edge

irq_find_mapping.exit.2.while.body.2_crit_edge:   ; preds = %irq_find_mapping.exit.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.2

while.cond.while.end_crit_edge.2:                 ; preds = %irq_find_mapping.exit.2
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %5, align 1
  %call13.2 = call i32 @tc3589x_reg_write(ptr noundef %1, i8 noundef zeroext -34, i8 noundef zeroext %36) #6
  br label %cleanup14

cleanup14:                                        ; preds = %while.cond.while.end_crit_edge.2, %cleanup.1.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup14_crit_edge ], [ 1, %while.cond.while.end_crit_edge.2 ], [ 1, %cleanup.1.cleanup14_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %status) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc3589x_gpio_get_direction(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %tc3589x1 = getelementptr inbounds %struct.tc3589x_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %tc3589x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tc3589x1, align 4
  %div13 = lshr i32 %offset, 3
  %2 = trunc i32 %div13 to i8
  %conv = add i8 %2, -58
  %call2 = tail call i32 @tc3589x_reg_read(ptr noundef %1, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  %rem = and i32 %offset, 7
  %3 = xor i32 %call2, -1
  %4 = lshr i32 %3, %rem
  %5 = and i32 %4, 1
  %retval.0 = select i1 %cmp, i32 %call2, i32 %5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc3589x_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %tc3589x1 = getelementptr inbounds %struct.tc3589x_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %tc3589x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tc3589x1, align 4
  %div5 = lshr i32 %offset, 3
  %2 = trunc i32 %div5 to i8
  %conv = add i8 %2, -58
  %rem = and i32 %offset, 7
  %shl = shl nuw nsw i32 1, %rem
  %conv2 = trunc i32 %shl to i8
  %call3 = tail call i32 @tc3589x_set_bits(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %conv2, i8 noundef zeroext 0) #6
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc3589x_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  %data.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %tc3589x1 = getelementptr inbounds %struct.tc3589x_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %tc3589x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tc3589x1, align 4
  %div10 = lshr i32 %offset, 3
  %2 = trunc i32 %div10 to i8
  %conv = add i8 %2, -58
  %rem = and i32 %offset, 7
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %tc3589x1.i = getelementptr inbounds %struct.tc3589x_gpio, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %tc3589x1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tc3589x1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #6
  %5 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i = icmp eq i32 %val, 0
  %shl.i = shl nuw nsw i32 1, %rem
  %phi.cast.i = trunc i32 %shl.i to i8
  %cond.i = select i1 %tobool.not.i, i8 0, i8 %phi.cast.i
  %6 = lshr i32 %offset, 2
  %7 = trunc i32 %6 to i8
  %8 = add i8 %7, -64
  %conv.i = and i8 %8, -2
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %cond.i, ptr %data.i, align 1
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %phi.cast.i, ptr %5, align 1
  %call5.i = call i32 @tc3589x_block_write(ptr noundef %4, i8 noundef zeroext %conv.i, i8 noundef zeroext 2, ptr noundef nonnull %data.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #6
  %call5 = call i32 @tc3589x_set_bits(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %phi.cast.i, i8 noundef zeroext %phi.cast.i) #6
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc3589x_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %tc3589x1 = getelementptr inbounds %struct.tc3589x_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %tc3589x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tc3589x1, align 4
  %2 = lshr i32 %offset, 2
  %3 = trunc i32 %2 to i8
  %4 = add i8 %3, -64
  %conv = and i8 %4, -2
  %call3 = tail call i32 @tc3589x_reg_read(ptr noundef %1, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  %rem = and i32 %offset, 7
  %5 = lshr i32 %call3, %rem
  %6 = and i32 %5, 1
  %retval.0 = select i1 %cmp, i32 %call3, i32 %6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc3589x_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %tc3589x1 = getelementptr inbounds %struct.tc3589x_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %tc3589x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tc3589x1, align 4
  %rem = and i32 %offset, 7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #6
  %2 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %shl = shl nuw nsw i32 1, %rem
  %phi.cast = trunc i32 %shl to i8
  %cond = select i1 %tobool.not, i8 0, i8 %phi.cast
  %3 = lshr i32 %offset, 2
  %4 = trunc i32 %3 to i8
  %5 = add i8 %4, -64
  %conv = and i8 %5, -2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %cond, ptr %data, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %phi.cast, ptr %2, align 1
  %call5 = call i32 @tc3589x_block_write(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext 2, ptr noundef nonnull %data) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc3589x_gpio_set_config(ptr noundef %chip, i32 noundef %offset, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %tc3589x1 = getelementptr inbounds %struct.tc3589x_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %tc3589x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tc3589x1, align 4
  %2 = lshr i32 %offset, 2
  %3 = trunc i32 %2 to i8
  %4 = and i8 %3, -2
  %conv = add i8 %4, -32
  %conv5 = add i8 %4, -31
  %rem = and i32 %offset, 7
  %trunc = trunc i32 %config to i8
  %5 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 6, label %sw.bb
    i8 7, label %sw.bb14
    i8 8, label %sw.bb28
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %shl = shl nuw nsw i32 1, %rem
  %conv7 = trunc i32 %shl to i8
  %call8 = tail call i32 @tc3589x_set_bits(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %conv7, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 @tc3589x_set_bits(ptr noundef %1, i8 noundef zeroext %conv5, i8 noundef zeroext %conv7, i8 noundef zeroext %conv7) #6
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %shl15 = shl nuw nsw i32 1, %rem
  %conv16 = trunc i32 %shl15 to i8
  %call19 = tail call i32 @tc3589x_set_bits(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %conv16, i8 noundef zeroext %conv16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %sw.bb14.cleanup_crit_edge

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call i32 @tc3589x_set_bits(ptr noundef %1, i8 noundef zeroext %conv5, i8 noundef zeroext %conv16, i8 noundef zeroext %conv16) #6
  br label %cleanup

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shl29 = shl nuw nsw i32 1, %rem
  %conv30 = trunc i32 %shl29 to i8
  %call31 = tail call i32 @tc3589x_set_bits(ptr noundef %1, i8 noundef zeroext %conv5, i8 noundef zeroext %conv30, i8 noundef zeroext 0) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb28, %if.end22, %sw.bb14.cleanup_crit_edge, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %sw.bb28 ], [ %call27, %if.end22 ], [ %call13, %if.end ], [ %call8, %sw.bb.cleanup_crit_edge ], [ %call19, %sw.bb14.cleanup_crit_edge ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tc3589x_reg_read(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tc3589x_block_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc3589x_gpio_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %div = sdiv i32 %3, 8
  %rem14 = and i32 %3, 7
  %shl = shl nuw nsw i32 1, %rem14
  %arrayidx2 = getelementptr %struct.tc3589x_gpio, ptr %call1, i32 0, i32 4, i32 3, i32 %div
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  %6 = trunc i32 %shl to i8
  %7 = xor i8 %6, -1
  %conv3 = and i8 %5, %7
  store i8 %conv3, ptr %arrayidx2, align 1
  %arrayidx6 = getelementptr %struct.tc3589x_gpio, ptr %call1, i32 0, i32 4, i32 4, i32 %div
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6, align 1
  %conv8 = or i8 %9, %6
  store i8 %conv8, ptr %arrayidx6, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc3589x_gpio_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %div = sdiv i32 %3, 8
  %rem14 = and i32 %3, 7
  %shl = shl nuw nsw i32 1, %rem14
  %arrayidx2 = getelementptr %struct.tc3589x_gpio, ptr %call1, i32 0, i32 4, i32 3, i32 %div
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  %6 = trunc i32 %shl to i8
  %conv3 = or i8 %5, %6
  store i8 %conv3, ptr %arrayidx2, align 1
  %arrayidx6 = getelementptr %struct.tc3589x_gpio, ptr %call1, i32 0, i32 4, i32 4, i32 %div
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx6, align 1
  %9 = xor i8 %6, -1
  %conv8 = and i8 %8, %9
  store i8 %conv8, ptr %arrayidx6, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc3589x_gpio_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %div = sdiv i32 %3, 8
  %rem74 = and i32 %3, 7
  %shl = shl nuw nsw i32 1, %rem74
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp = icmp eq i32 %type, 3
  %regs = getelementptr inbounds %struct.tc3589x_gpio, ptr %call1, i32 0, i32 4
  %arrayidx2 = getelementptr [3 x i8], ptr %regs, i32 0, i32 %div
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  %6 = trunc i32 %shl to i8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv3 = or i8 %5, %6
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3, ptr %arrayidx2, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = xor i8 %6, -1
  %conv8 = and i8 %5, %8
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv8, ptr %arrayidx2, align 1
  %10 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %type, label %if.else [
    i32 8, label %if.end.if.then13_crit_edge
    i32 4, label %if.end.if.then13_crit_edge75
  ]

if.end.if.then13_crit_edge75:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

if.end.if.then13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

if.then13:                                        ; preds = %if.end.if.then13_crit_edge, %if.end.if.then13_crit_edge75
  %arrayidx16 = getelementptr %struct.tc3589x_gpio, ptr %call1, i32 0, i32 4, i32 2, i32 %div
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx16, align 1
  %conv19 = or i8 %12, %6
  store i8 %conv19, ptr %arrayidx16, align 1
  br label %if.end27

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx23 = getelementptr %struct.tc3589x_gpio, ptr %call1, i32 0, i32 4, i32 2, i32 %div
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx23, align 1
  %conv26 = and i8 %14, %8
  store i8 %conv26, ptr %arrayidx23, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then13
  %15 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %type, label %if.else40 [
    i32 1, label %if.end27.if.then33_crit_edge
    i32 4, label %if.end27.if.then33_crit_edge76
  ]

if.end27.if.then33_crit_edge76:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33

if.end27.if.then33_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33

if.then33:                                        ; preds = %if.end27.if.then33_crit_edge, %if.end27.if.then33_crit_edge76
  %arrayidx36 = getelementptr %struct.tc3589x_gpio, ptr %call1, i32 0, i32 4, i32 1, i32 %div
  %16 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx36, align 1
  %conv39 = or i8 %17, %6
  store i8 %conv39, ptr %arrayidx36, align 1
  br label %cleanup

if.else40:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx44 = getelementptr %struct.tc3589x_gpio, ptr %call1, i32 0, i32 4, i32 1, i32 %div
  %18 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx44, align 1
  %conv47 = and i8 %19, %8
  store i8 %conv47, ptr %arrayidx44, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else40, %if.then33, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc3589x_gpio_irq_lock(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %irq_lock = getelementptr inbounds %struct.tc3589x_gpio, ptr %call1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %irq_lock, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc3589x_gpio_irq_sync_unlock(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %tc3589x2 = getelementptr inbounds %struct.tc3589x_gpio, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %tc3589x2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tc3589x2, align 4
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %cleanup.2.for.cond3.preheader_crit_edge, %entry
  %i.041 = phi i32 [ 0, %entry ], [ %inc21, %cleanup.2.for.cond3.preheader_crit_edge ]
  %arrayidx15 = getelementptr [5 x i8], ptr @tc3589x_gpio_irq_sync_unlock.regmap, i32 0, i32 %i.041
  %arrayidx6 = getelementptr %struct.tc3589x_gpio, ptr %call1, i32 0, i32 5, i32 %i.041, i32 0
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx6, align 1
  %arrayidx8 = getelementptr %struct.tc3589x_gpio, ptr %call1, i32 0, i32 4, i32 %i.041, i32 0
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %5)
  %cmp10 = icmp eq i8 %7, %5
  br i1 %cmp10, label %for.cond3.preheader.cleanup_crit_edge, label %if.end

for.cond3.preheader.cleanup_crit_edge:            ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx6, align 1
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx15, align 1
  %call18 = tail call i32 @tc3589x_reg_write(ptr noundef %3, i8 noundef zeroext %10, i8 noundef zeroext %7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.cond3.preheader.cleanup_crit_edge
  %arrayidx6.1 = getelementptr %struct.tc3589x_gpio, ptr %call1, i32 0, i32 5, i32 %i.041, i32 1
  %11 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx6.1, align 1
  %arrayidx8.1 = getelementptr %struct.tc3589x_gpio, ptr %call1, i32 0, i32 4, i32 %i.041, i32 1
  %13 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx8.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %12)
  %cmp10.1 = icmp eq i8 %14, %12
  br i1 %cmp10.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx6.1, align 1
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx15, align 1
  %conv17.1 = add i8 %17, 1
  %call18.1 = tail call i32 @tc3589x_reg_write(ptr noundef %3, i8 noundef zeroext %conv17.1, i8 noundef zeroext %14) #6
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end.1, %cleanup.cleanup.1_crit_edge
  %arrayidx6.2 = getelementptr %struct.tc3589x_gpio, ptr %call1, i32 0, i32 5, i32 %i.041, i32 2
  %18 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx6.2, align 1
  %arrayidx8.2 = getelementptr %struct.tc3589x_gpio, ptr %call1, i32 0, i32 4, i32 %i.041, i32 2
  %20 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx8.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %19)
  %cmp10.2 = icmp eq i8 %21, %19
  br i1 %cmp10.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.2

if.end.2:                                         ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx6.2, align 1
  %23 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx15, align 1
  %conv17.2 = add i8 %24, 2
  %call18.2 = tail call i32 @tc3589x_reg_write(ptr noundef %3, i8 noundef zeroext %conv17.2, i8 noundef zeroext %21) #6
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end.2, %cleanup.1.cleanup.2_crit_edge
  %inc21 = add nuw nsw i32 %i.041, 1
  %exitcond.not = icmp eq i32 %inc21, 5
  br i1 %exitcond.not, label %for.end22, label %cleanup.2.for.cond3.preheader_crit_edge

cleanup.2.for.cond3.preheader_crit_edge:          ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond3.preheader

for.end22:                                        ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #8
  %irq_lock = getelementptr inbounds %struct.tc3589x_gpio, ptr %call1, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %irq_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tc3589x_block_read(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !19, !20, !21, !23, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_gpio_tc3589x__227_371_tc3589x_gpio_init4, !1, !"__initcall__kmod_gpio_tc3589x__227_371_tc3589x_gpio_init4", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-tc3589x.c", i32 371, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-tc3589x.c", i32 363, i32 17}
!4 = !{ptr @tc3589x_gpio_driver, !5, !"tc3589x_gpio_driver", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-tc3589x.c", i32 362, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-tc3589x.c", i32 300, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @tc3589x_gpio_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @tc3589x_gpio_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @tc3589x_gpio_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-tc3589x.c", i32 313, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpio/gpio-tc3589x.c", i32 355, i32 3}
!19 = !{ptr @tc3589x_gpio_probe._entry.7, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @tc3589x_gpio_probe._entry_ptr.9, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @tc3589x_gpio_probe.lock_key, !22, !"lock_key", i1 false, i1 false}
!22 = !{!"../drivers/gpio/gpio-tc3589x.c", i32 359, i32 9}
!23 = !{ptr @tc3589x_gpio_probe.request_key, !22, !"request_key", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpio/gpio-tc3589x.c", i32 146, i32 13}
!26 = !{ptr @template_chip, !27, !"template_chip", i1 false, i1 false}
!27 = !{!"../drivers/gpio/gpio-tc3589x.c", i32 145, i32 31}
!28 = !{ptr @tc3589x_gpio_irq_chip, !29, !"tc3589x_gpio_irq_chip", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-tc3589x.c", i32 247, i32 24}
!30 = !{ptr @tc3589x_gpio_irq_sync_unlock.regmap, !31, !"regmap", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpio-tc3589x.c", i32 198, i32 18}
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
!42 = !{i32 0, i32 33}
