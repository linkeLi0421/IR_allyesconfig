; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-max77620.c_pt.bc'
source_filename = "../drivers/gpio/gpio-max77620.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.max77620_gpio = type { %struct.gpio_chip, ptr, ptr, %struct.mutex, [8 x i32], [8 x i8] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.max77620_chip = type { ptr, ptr, i32, i32, i8, i8, [3 x i32], [3 x i32], ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_gpio_max77620__227_363_max77620_gpio_driver_init6 = internal global ptr @max77620_gpio_driver_init, section ".initcall6.init", align 4
@max77620_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max77620_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max77620_gpio_devtype, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max77620_gpio_driver_exit = internal global ptr @max77620_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description228 = internal constant [72 x i8] c"gpio_max77620.description=GPIO interface for MAX77620 and MAX20024 PMIC\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [60 x i8] c"gpio_max77620.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [57 x i8] c"gpio_max77620.author=Chaitanya Bandi <bandik@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [46 x i8] c"gpio_max77620.file=drivers/gpio/gpio-max77620\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [29 x i8] c"gpio_max77620.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max77620-gpio\00", [18 x i8] zeroinitializer }, align 32
@max77620_gpio_devtype = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max77620-gpio\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"max20024-gpio\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@max77620_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&mgpio->buslock\00", [16 x i8] zeroinitializer }, align 32
@max77620_gpio_irqchip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77620_gpio_irq_mask, ptr null, ptr @max77620_gpio_irq_unmask, ptr null, ptr null, ptr null, ptr @max77620_gpio_set_irq_type, ptr null, ptr @max77620_gpio_bus_lock, ptr @max77620_gpio_bus_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 4 }, [56 x i8] zeroinitializer }, align 32
@max77620_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max77620_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max77620_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 335, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"gpio_init: Failed to add max77620_gpio\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max77620_gpio_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/gpio/gpio-max77620.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max77620_gpio_probe._entry_ptr = internal global ptr @max77620_gpio_probe._entry, section ".printk_index", align 4
@max77620_gpio_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 343, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@max77620_gpio_probe._entry_ptr.9 = internal global ptr @max77620_gpio_probe._entry.7, section ".printk_index", align 4
@max77620_gpio_dir_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 141, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CNFG_GPIOx dir update failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max77620_gpio_dir_input\00", [40 x i8] zeroinitializer }, align 32
@max77620_gpio_dir_input._entry_ptr = internal global ptr @max77620_gpio_dir_input._entry, section ".printk_index", align 4
@max77620_gpio_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 154, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CNFG_GPIOx read failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max77620_gpio_get\00", [46 x i8] zeroinitializer }, align 32
@max77620_gpio_get._entry_ptr = internal global ptr @max77620_gpio_get._entry, section ".printk_index", align 4
@max77620_gpio_dir_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 177, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CNFG_GPIOx val update failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"max77620_gpio_dir_output\00", [39 x i8] zeroinitializer }, align 32
@max77620_gpio_dir_output._entry_ptr = internal global ptr @max77620_gpio_dir_output._entry, section ".printk_index", align 4
@max77620_gpio_dir_output._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.15, ptr @.str.4, i32 185, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@max77620_gpio_dir_output._entry_ptr.17 = internal global ptr @max77620_gpio_dir_output._entry.16, section ".printk_index", align 4
@max77620_gpio_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 236, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CNFG_GPIO_OUT update failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max77620_gpio_set\00", [46 x i8] zeroinitializer }, align 32
@max77620_gpio_set._entry_ptr = internal global ptr @max77620_gpio_set._entry, section ".printk_index", align 4
@max77620_gpio_set_debounce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 211, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Illegal value %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"max77620_gpio_set_debounce\00", [37 x i8] zeroinitializer }, align 32
@max77620_gpio_set_debounce._entry_ptr = internal global ptr @max77620_gpio_set_debounce._entry, section ".printk_index", align 4
@max77620_gpio_set_debounce._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 218, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CNFG_GPIOx_DBNC update failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@max77620_gpio_set_debounce._entry_ptr.24 = internal global ptr @max77620_gpio_set_debounce._entry.22, section ".printk_index", align 4
@max77620_gpio_bus_sync_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 117, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to update interrupt mask: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"max77620_gpio_bus_sync_unlock\00", [34 x i8] zeroinitializer }, align 32
@max77620_gpio_bus_sync_unlock._entry_ptr = internal global ptr @max77620_gpio_bus_sync_unlock._entry, section ".printk_index", align 4
@max77620_gpio_irq_init_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 279, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to disable interrupt: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max77620_gpio_irq_init_hw\00", [38 x i8] zeroinitializer }, align 32
@max77620_gpio_irq_init_hw._entry_ptr = internal global ptr @max77620_gpio_irq_init_hw._entry, section ".printk_index", align 4
@max77620_gpio_irqhandler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 35, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"REG_IRQ_LVL2_GPIO read failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"max77620_gpio_irqhandler\00", [39 x i8] zeroinitializer }, align 32
@max77620_gpio_irqhandler._entry_ptr = internal global ptr @max77620_gpio_irqhandler._entry, section ".printk_index", align 4
@switch.table.max77620_gpio_set_irq_type = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 32, i32 16, i32 48], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 8, i64 11]
@___asan_gen_.31 = private unnamed_addr constant [21 x i8] c"max77620_gpio_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 357, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 358, i32 17 }
@___asan_gen_.37 = private unnamed_addr constant [22 x i8] c"max77620_gpio_devtype\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 350, i32 40 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 305, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [22 x i8] c"max77620_gpio_irqchip\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 122, i32 24 }
@___asan_gen_.49 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 333, i32 8 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 335, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 343, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 141, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 154, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 177, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 185, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 236, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 211, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 218, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 116, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 278, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.158 = private constant [32 x i8] c"../drivers/gpio/gpio-max77620.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 35, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [40 x i8] c"switch.table.max77620_gpio_set_irq_type\00", align 1
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_max77620_gpio_driver_exit, ptr @__initcall__kmod_gpio_max77620__227_363_max77620_gpio_driver_init6, ptr @max77620_gpio_bus_sync_unlock._entry, ptr @max77620_gpio_bus_sync_unlock._entry_ptr, ptr @max77620_gpio_dir_input._entry, ptr @max77620_gpio_dir_input._entry_ptr, ptr @max77620_gpio_dir_output._entry, ptr @max77620_gpio_dir_output._entry.16, ptr @max77620_gpio_dir_output._entry_ptr, ptr @max77620_gpio_dir_output._entry_ptr.17, ptr @max77620_gpio_driver_exit, ptr @max77620_gpio_get._entry, ptr @max77620_gpio_get._entry_ptr, ptr @max77620_gpio_irq_init_hw._entry, ptr @max77620_gpio_irq_init_hw._entry_ptr, ptr @max77620_gpio_irqhandler._entry, ptr @max77620_gpio_irqhandler._entry_ptr, ptr @max77620_gpio_probe._entry, ptr @max77620_gpio_probe._entry.7, ptr @max77620_gpio_probe._entry_ptr, ptr @max77620_gpio_probe._entry_ptr.9, ptr @max77620_gpio_set._entry, ptr @max77620_gpio_set._entry_ptr, ptr @max77620_gpio_set_debounce._entry, ptr @max77620_gpio_set_debounce._entry.22, ptr @max77620_gpio_set_debounce._entry_ptr, ptr @max77620_gpio_set_debounce._entry_ptr.24, ptr @max77620_gpio_driver, ptr @.str, ptr @max77620_gpio_devtype, ptr @max77620_gpio_probe.__key, ptr @.str.1, ptr @max77620_gpio_irqchip, ptr @max77620_gpio_probe.lock_key, ptr @max77620_gpio_probe.request_key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @switch.table.max77620_gpio_set_irq_type], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_gpio_devtype to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_gpio_irqchip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_gpio_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_gpio_dir_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_gpio_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_gpio_dir_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_gpio_dir_output._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_gpio_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_gpio_set_debounce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_gpio_set_debounce._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_gpio_bus_sync_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_gpio_irq_init_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_gpio_irqhandler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77620_gpio_set_irq_type to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max77620_gpio_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max77620_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @max77620_gpio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 488, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  %buslock = getelementptr inbounds %struct.max77620_gpio, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %buslock, ptr noundef nonnull @.str.1, ptr noundef nonnull @max77620_gpio_probe.__key) #5
  %rmap = getelementptr inbounds %struct.max77620_chip, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmap, align 4
  %rmap6 = getelementptr inbounds %struct.max77620_gpio, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %rmap6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %rmap6, align 4
  %dev8 = getelementptr inbounds %struct.max77620_gpio, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %dev8, align 4
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %call.i, align 4
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %parent12 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %parent12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %parent12, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @max77620_gpio_dir_input, ptr %direction_input, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %15 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @max77620_gpio_get, ptr %get, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 9
  %16 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @max77620_gpio_dir_output, ptr %direction_output, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %17 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @max77620_gpio_set, ptr %set, align 4
  %set_config = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 14
  %18 = ptrtoint ptr %set_config to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @max77620_gpio_set_config, ptr %set_config, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %19 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 8, ptr %ngpio, align 4
  %can_sleep = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 23
  %20 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %can_sleep, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %21 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %base, align 4
  %irq = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @max77620_gpio_irqchip, ptr %irq, align 4
  %parent_handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 13
  %23 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 15
  %24 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %num_parents, align 4
  %parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 16
  %25 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %parents, align 4
  %default_type = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 10
  %26 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 9
  %27 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @handle_edge_irq, ptr %handler, align 4
  %init_hw = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 20
  %28 = ptrtoint ptr %init_hw to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @max77620_gpio_irq_init_hw, ptr %init_hw, align 4
  %threaded = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 18
  %29 = ptrtoint ptr %threaded to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %threaded, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call25 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @max77620_gpio_probe.lock_key, ptr noundef nonnull @max77620_gpio_probe.request_key) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.end30, label %if.end32

do.end30:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end32:                                         ; preds = %do.body
  %call34 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call1, ptr noundef null, ptr noundef nonnull @max77620_gpio_irqhandler, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end39, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call34) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %if.end32.cleanup_crit_edge, %do.end30, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %do.end30 ], [ %call34, %do.end39 ], [ %call1, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_gpio_dir_input(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %rmap = getelementptr inbounds %struct.max77620_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmap, align 4
  %add = add i32 %offset, 54
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.max77620_gpio, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef %call.i) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_gpio_get(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !94
  %rmap = getelementptr inbounds %struct.max77620_gpio, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmap, align 4
  %add = add i32 %offset, 54
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.max77620_gpio, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12, i32 noundef %call1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %and3 = lshr i32 %6, 2
  %and3.lobit = and i32 %and3, 1
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %and6 = lshr i32 %6, 3
  %and6.lobit = and i32 %and6, 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %and3.lobit, %if.then2 ], [ %and6.lobit, %if.else ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_gpio_dir_output(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %rmap = getelementptr inbounds %struct.max77620_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmap, align 4
  %add = add i32 %offset, 54
  %conv1 = select i1 %tobool.not, i32 0, i32 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add, i32 noundef 8, i32 noundef %conv1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.max77620_gpio, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %call.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmap, align 4
  %call.i26 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp7 = icmp slt i32 %call.i26, 0
  br i1 %cmp7, label %do.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev13 = getelementptr inbounds %struct.max77620_gpio, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.10, i32 noundef %call.i26) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i26, %do.end12 ], [ %call.i26, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max77620_gpio_set(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %rmap = getelementptr inbounds %struct.max77620_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmap, align 4
  %add = add i32 %offset, 54
  %conv1 = select i1 %tobool.not, i32 0, i32 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add, i32 noundef 8, i32 noundef %conv1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.max77620_gpio, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.18, i32 noundef %call.i) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_gpio_set_config(ptr noundef %gc, i32 noundef %offset, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %trunc = trunc i32 %config to i8
  %0 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 6, label %sw.bb
    i8 8, label %sw.bb3
    i8 11, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rmap = getelementptr inbounds %struct.max77620_gpio, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmap, align 4
  %add = add i32 %offset, 54
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef %add, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rmap4 = getelementptr inbounds %struct.max77620_gpio, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %rmap4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmap4, align 4
  %add5 = add i32 %offset, 54
  %call.i15 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %add5, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %shr.i = lshr i32 %config, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %config)
  %cond.i = icmp ult i32 %config, 256
  br i1 %cond.i, label %sw.bb7.sw.epilog.i_crit_edge, label %sw.caserange6.i

sw.bb7.sw.epilog.i_crit_edge:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.caserange.i:                                   ; preds = %sw.caserange3.i
  %5 = add nsw i32 %shr.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %5)
  %inbounds.i = icmp ult i32 %5, 8000
  br i1 %inbounds.i, label %sw.caserange.i.sw.epilog.i_crit_edge, label %do.end.i

sw.caserange.i.sw.epilog.i_crit_edge:             ; preds = %sw.caserange.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.caserange3.i:                                  ; preds = %sw.caserange6.i
  %6 = add nsw i32 %shr.i, -8001
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %6)
  %inbounds4.i = icmp ult i32 %6, 8000
  br i1 %inbounds4.i, label %sw.caserange3.i.sw.epilog.i_crit_edge, label %sw.caserange.i

sw.caserange3.i.sw.epilog.i_crit_edge:            ; preds = %sw.caserange3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.caserange6.i:                                  ; preds = %sw.bb7
  %7 = add nsw i32 %shr.i, -16001
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000, i32 %7)
  %inbounds7.i = icmp ult i32 %7, 16000
  br i1 %inbounds7.i, label %sw.caserange6.i.sw.epilog.i_crit_edge, label %sw.caserange3.i

sw.caserange6.i.sw.epilog.i_crit_edge:            ; preds = %sw.caserange6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

do.end.i:                                         ; preds = %sw.caserange.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.max77620_gpio, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.20, i32 noundef %shr.i) #8
  br label %cleanup

sw.epilog.i:                                      ; preds = %sw.caserange6.i.sw.epilog.i_crit_edge, %sw.caserange3.i.sw.epilog.i_crit_edge, %sw.caserange.i.sw.epilog.i_crit_edge, %sw.bb7.sw.epilog.i_crit_edge
  %val.0.i = phi i32 [ 0, %sw.bb7.sw.epilog.i_crit_edge ], [ 64, %sw.caserange.i.sw.epilog.i_crit_edge ], [ 128, %sw.caserange3.i.sw.epilog.i_crit_edge ], [ 192, %sw.caserange6.i.sw.epilog.i_crit_edge ]
  %rmap.i = getelementptr inbounds %struct.max77620_gpio, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %rmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmap.i, align 4
  %add.i = add i32 %offset, 54
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %add.i, i32 noundef 192, i32 noundef %val.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end11.i, label %sw.epilog.i.cleanup_crit_edge

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end11.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev12.i = getelementptr inbounds %struct.max77620_gpio, ptr %call, i32 0, i32 2
  %12 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev12.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.23, i32 noundef %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i, %sw.epilog.i.cleanup_crit_edge, %do.end.i, %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i15, %sw.bb3 ], [ %call.i, %sw.bb ], [ -524, %entry.cleanup_crit_edge ], [ -22, %do.end.i ], [ %call.i.i, %do.end11.i ], [ %call.i.i, %sw.epilog.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_gpio_irq_init_hw(ptr noundef %gc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %rmap = getelementptr inbounds %struct.max77620_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 54, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %entry.do.end_crit_edge, label %for.cond

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond:                                         ; preds = %entry
  %2 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmap, align 4
  %call.i.1 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 55, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp2.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp2.1, label %for.cond.do.end_crit_edge, label %for.cond.1

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.1:                                       ; preds = %for.cond
  %4 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmap, align 4
  %call.i.2 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 56, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp2.2 = icmp slt i32 %call.i.2, 0
  br i1 %cmp2.2, label %for.cond.1.do.end_crit_edge, label %for.cond.2

for.cond.1.do.end_crit_edge:                      ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.2:                                       ; preds = %for.cond.1
  %6 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmap, align 4
  %call.i.3 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 57, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %cmp2.3 = icmp slt i32 %call.i.3, 0
  br i1 %cmp2.3, label %for.cond.2.do.end_crit_edge, label %for.cond.3

for.cond.2.do.end_crit_edge:                      ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.3:                                       ; preds = %for.cond.2
  %8 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmap, align 4
  %call.i.4 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 58, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %cmp2.4 = icmp slt i32 %call.i.4, 0
  br i1 %cmp2.4, label %for.cond.3.do.end_crit_edge, label %for.cond.4

for.cond.3.do.end_crit_edge:                      ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.4:                                       ; preds = %for.cond.3
  %10 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmap, align 4
  %call.i.5 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 59, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5)
  %cmp2.5 = icmp slt i32 %call.i.5, 0
  br i1 %cmp2.5, label %for.cond.4.do.end_crit_edge, label %for.cond.5

for.cond.4.do.end_crit_edge:                      ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.5:                                       ; preds = %for.cond.4
  %12 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmap, align 4
  %call.i.6 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 60, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.6)
  %cmp2.6 = icmp slt i32 %call.i.6, 0
  br i1 %cmp2.6, label %for.cond.5.do.end_crit_edge, label %for.cond.6

for.cond.5.do.end_crit_edge:                      ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.6:                                       ; preds = %for.cond.5
  %14 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmap, align 4
  %call.i.7 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 61, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.7)
  %cmp2.7 = icmp slt i32 %call.i.7, 0
  br i1 %cmp2.7, label %for.cond.6.do.end_crit_edge, label %for.cond.6.cleanup_crit_edge

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.6.do.end_crit_edge:                      ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %for.cond.6.do.end_crit_edge, %for.cond.5.do.end_crit_edge, %for.cond.4.do.end_crit_edge, %for.cond.3.do.end_crit_edge, %for.cond.2.do.end_crit_edge, %for.cond.1.do.end_crit_edge, %for.cond.do.end_crit_edge, %entry.do.end_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %entry.do.end_crit_edge ], [ %call.i.1, %for.cond.do.end_crit_edge ], [ %call.i.2, %for.cond.1.do.end_crit_edge ], [ %call.i.3, %for.cond.2.do.end_crit_edge ], [ %call.i.4, %for.cond.3.do.end_crit_edge ], [ %call.i.5, %for.cond.4.do.end_crit_edge ], [ %call.i.6, %for.cond.5.do.end_crit_edge ], [ %call.i.7, %for.cond.6.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.max77620_gpio, ptr %call, i32 0, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.27, i32 noundef %call.i.lcssa) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.cond.6.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.lcssa, %do.end ], [ 0, %for.cond.6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_gpio_irqhandler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  %value = alloca i32, align 4
  %pending = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #5
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pending) #5
  %rmap = getelementptr inbounds %struct.max77620_gpio, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.max77620_gpio, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.29, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  %7 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %pending, align 4
  %call1 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef 8, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call1)
  %cmp215 = icmp ult i32 %call1, 8
  br i1 %cmp215, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %data, i32 0, i32 37, i32 1
  br label %for.body

for.body:                                         ; preds = %irq_find_mapping.exit.for.body_crit_edge, %for.body.lr.ph
  %offset.016 = phi i32 [ %call1, %for.body.lr.ph ], [ %call5, %irq_find_mapping.exit.for.body_crit_edge ]
  %8 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #5
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %irq.i, align 4, !annotation !94
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %9, i32 noundef %offset.016, ptr noundef nonnull %irq.i) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.irq_find_mapping.exit_crit_edge, label %if.then.i

for.body.irq_find_mapping.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %for.body.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %12, %if.then.i ], [ 0, %for.body.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #5
  call void @handle_nested_irq(i32 noundef %retval.0.i) #5
  %add = add nuw nsw i32 %offset.016, 1
  %call5 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef 8, i32 noundef %add) #5
  %cmp2 = icmp ult i32 %call5, 8
  br i1 %cmp2, label %irq_find_mapping.exit.for.body_crit_edge, label %irq_find_mapping.exit.cleanup_crit_edge

irq_find_mapping.exit.cleanup_crit_edge:          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

irq_find_mapping.exit.for.body_crit_edge:         ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %irq_find_mapping.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %irq_find_mapping.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pending) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #5
  ret i32 %retval.0
}

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max77620_gpio_irq_mask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr %struct.max77620_gpio, ptr %call1, i32 0, i32 5, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max77620_gpio_irq_unmask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr %struct.max77620_gpio, ptr %call1, i32 0, i32 5, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77620_gpio_set_irq_type(ptr nocapture noundef readonly %data, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 3
  br i1 %2, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.max77620_gpio_set_irq_type, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr %struct.max77620_gpio, ptr %call1, i32 0, i32 4, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %switch.load, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max77620_gpio_bus_lock(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %buslock = getelementptr inbounds %struct.max77620_gpio, ptr %call1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %buslock, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max77620_gpio_bus_sync_unlock(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr %struct.max77620_gpio, ptr %call1, i32 0, i32 5, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx2 = getelementptr %struct.max77620_gpio, ptr %call1, i32 0, i32 4, i32 %3
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %7, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %rmap = getelementptr inbounds %struct.max77620_gpio, ptr %call1, i32 0, i32 1
  %8 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmap, align 4
  %add = add i32 %3, 54
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %add, i32 noundef 48, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.25, i32 noundef %call.i) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %cond.end.if.end_crit_edge
  %buslock = getelementptr inbounds %struct.max77620_gpio, ptr %call1, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %buslock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__initcall__kmod_gpio_max77620__227_363_max77620_gpio_driver_init6, !1, !"__initcall__kmod_gpio_max77620__227_363_max77620_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-max77620.c", i32 363, i32 1}
!2 = !{ptr @__exitcall_max77620_gpio_driver_exit, !1, !"__exitcall_max77620_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description228, !4, !"__UNIQUE_ID_description228", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-max77620.c", i32 365, i32 1}
!5 = !{ptr @__UNIQUE_ID_author229, !6, !"__UNIQUE_ID_author229", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-max77620.c", i32 366, i32 1}
!7 = !{ptr @__UNIQUE_ID_author230, !8, !"__UNIQUE_ID_author230", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-max77620.c", i32 367, i32 1}
!9 = !{ptr @__UNIQUE_ID_file231, !10, !"__UNIQUE_ID_file231", i1 false, i1 false}
!10 = !{!"../drivers/gpio/gpio-max77620.c", i32 368, i32 1}
!11 = !{ptr @__UNIQUE_ID_license232, !10, !"__UNIQUE_ID_license232", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-max77620.c", i32 358, i32 17}
!14 = !{ptr @max77620_gpio_driver, !15, !"max77620_gpio_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-max77620.c", i32 357, i32 31}
!16 = !{ptr @max77620_gpio_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-max77620.c", i32 305, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @max77620_gpio_probe.lock_key, !20, !"lock_key", i1 false, i1 false}
!20 = !{!"../drivers/gpio/gpio-max77620.c", i32 333, i32 8}
!21 = !{ptr @max77620_gpio_probe.request_key, !20, !"request_key", i1 false, i1 false}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpio/gpio-max77620.c", i32 335, i32 3}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @max77620_gpio_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @max77620_gpio_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpio-max77620.c", i32 343, i32 3}
!32 = !{ptr @max77620_gpio_probe._entry.7, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @max77620_gpio_probe._entry_ptr.9, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpio/gpio-max77620.c", i32 141, i32 3}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @max77620_gpio_dir_input._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @max77620_gpio_dir_input._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpio/gpio-max77620.c", i32 154, i32 3}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @max77620_gpio_get._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @max77620_gpio_get._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpio/gpio-max77620.c", i32 177, i32 3}
!46 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @max77620_gpio_dir_output._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @max77620_gpio_dir_output._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @max77620_gpio_dir_output._entry.16, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/gpio/gpio-max77620.c", i32 185, i32 3}
!51 = !{ptr @max77620_gpio_dir_output._entry_ptr.17, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpio/gpio-max77620.c", i32 236, i32 3}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @max77620_gpio_set._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @max77620_gpio_set._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpio/gpio-max77620.c", i32 211, i32 3}
!59 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @max77620_gpio_set_debounce._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @max77620_gpio_set_debounce._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpio/gpio-max77620.c", i32 218, i32 3}
!64 = !{ptr @max77620_gpio_set_debounce._entry.22, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @max77620_gpio_set_debounce._entry_ptr.24, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @max77620_gpio_irqchip, !67, !"max77620_gpio_irqchip", i1 false, i1 false}
!67 = !{!"../drivers/gpio/gpio-max77620.c", i32 122, i32 24}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpio/gpio-max77620.c", i32 116, i32 3}
!70 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @max77620_gpio_bus_sync_unlock._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @max77620_gpio_bus_sync_unlock._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpio/gpio-max77620.c", i32 278, i32 4}
!75 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @max77620_gpio_irq_init_hw._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @max77620_gpio_irq_init_hw._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpio/gpio-max77620.c", i32 35, i32 3}
!80 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @max77620_gpio_irqhandler._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @max77620_gpio_irqhandler._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @max77620_gpio_devtype, !84, !"max77620_gpio_devtype", i1 false, i1 false}
!84 = !{!"../drivers/gpio/gpio-max77620.c", i32 350, i32 40}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{!"auto-init"}
!95 = !{i8 0, i8 2}
