; ModuleID = '/llk/IR_all_yes/drivers/mfd/htc-i2cpld.c_pt.bc'
source_filename = "../drivers/mfd/htc-i2cpld.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.htcpld_data = type { i16, i32, i32, i32, i32, i32, ptr, i32 }
%struct.htcpld_core_platform_data = type { i32, i32, i32, ptr, i32 }
%struct.htcpld_chip_platform_data = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.htcpld_chip = type { %struct.spinlock, i8, i8, ptr, ptr, i8, %struct.gpio_chip, i8, %struct.gpio_chip, i16, i32, i32, i32, %struct.work_struct }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.86, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.86 = type { ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_htc_i2cpld__294_631_htcpld_core_init6 = internal global ptr @htcpld_core_init, section ".initcall6.init", align 4
@htcpld_chip_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @htcpld_chip_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@htcpld_core_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"htcpld-chip\00", [20 x i8] zeroinitializer }, align 32
@htcpld_chip_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"htcpld-chip\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c-htcpld\00", [21 x i8] zeroinitializer }, align 32
@htcpld_core_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 529, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Platform data not found for htcpld core!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"htcpld_core_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/mfd/htc-i2cpld.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@htcpld_core_probe._entry_ptr = internal global ptr @htcpld_core_probe._entry, section ".printk_index", align 4
@htcpld_core_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 550, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unable to setup chained irq handler: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@htcpld_core_probe._entry_ptr.9 = internal global ptr @htcpld_core_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"htcpld-core\00", [20 x i8] zeroinitializer }, align 32
@htcpld_core_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 572, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Unable to request int_reset_gpio_hi -- interrupts may not work\0A\00", [32 x i8] zeroinitializer }, align 32
@htcpld_core_probe._entry_ptr.13 = internal global ptr @htcpld_core_probe._entry.11, section ".printk_index", align 4
@htcpld_core_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 587, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Unable to request int_reset_gpio_lo -- interrupts may not work\0A\00", [32 x i8] zeroinitializer }, align 32
@htcpld_core_probe._entry_ptr.16 = internal global ptr @htcpld_core_probe._entry.14, section ".printk_index", align 4
@htcpld_core_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 595, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Initialized successfully\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@htcpld_core_probe._entry_ptr.20 = internal global ptr @htcpld_core_probe._entry.17, section ".printk_index", align 4
@htcpld_handler.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.4, ptr @.str.23, i8 0, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"htc_i2cpld\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"htcpld_handler\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"htcpld is null in ISR\0A\00", [41 x i8] zeroinitializer }, align 32
@htcpld_handler.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.4, ptr @.str.24, i8 0, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"chip %d is null in ISR\0A\00", [40 x i8] zeroinitializer }, align 32
@htcpld_handler.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.4, ptr @.str.25, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"client %d is null in ISR\0A\00", [38 x i8] zeroinitializer }, align 32
@htcpld_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.4, i32 156, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to read from chip: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@htcpld_handler._entry_ptr = internal global ptr @htcpld_handler._entry, section ".printk_index", align 4
@htcpld_handler.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.4, ptr @.str.27, i8 0, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fire IRQ %d\0A\00", [19 x i8] zeroinitializer }, align 32
@htcpld_setup_chips.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(htcpld->chip[i].set_val_work))\00", [45 x i8] zeroinitializer }, align 32
@htcpld_setup_chips.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(htcpld->chip[i].lock)\00", [40 x i8] zeroinitializer }, align 32
@htcpld_setup_chips._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 510, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Registered chip at 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"htcpld_setup_chips\00", [45 x i8] zeroinitializer }, align 32
@htcpld_setup_chips._entry_ptr = internal global ptr @htcpld_setup_chips._entry, section ".printk_index", align 4
@htcpld_muxed_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.33, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @htcpld_mask, ptr null, ptr @htcpld_unmask, ptr null, ptr null, ptr null, ptr @htcpld_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"htcpld\00", [25 x i8] zeroinitializer }, align 32
@htcpld_mask.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.34, ptr @.str.4, ptr @.str.35, i8 0, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"htcpld_mask\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HTCPLD mask %d %04x\0A\00", [43 x i8] zeroinitializer }, align 32
@htcpld_unmask.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.36, ptr @.str.4, ptr @.str.37, i8 0, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"htcpld_unmask\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HTCPLD unmask %d %04x\0A\00", [41 x i8] zeroinitializer }, align 32
@htcpld_register_chip_i2c._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 342, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Chip at i2c address 0x%x: Invalid i2c adapter %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"htcpld_register_chip_i2c\00", [39 x i8] zeroinitializer }, align 32
@htcpld_register_chip_i2c._entry_ptr = internal global ptr @htcpld_register_chip_i2c._entry, section ".printk_index", align 4
@htcpld_register_chip_i2c._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.4, i32 348, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"i2c adapter %d non-functional\0A\00", [33 x i8] zeroinitializer }, align 32
@htcpld_register_chip_i2c._entry_ptr.42 = internal global ptr @htcpld_register_chip_i2c._entry.40, section ".printk_index", align 4
@htcpld_register_chip_i2c._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.4, i32 363, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to add I2C device for 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@htcpld_register_chip_i2c._entry_ptr.45 = internal global ptr @htcpld_register_chip_i2c._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Chip_0x%x\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"htcpld-out\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"htcpld-in\00", [22 x i8] zeroinitializer }, align 32
@htcpld_register_chip_gpio.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@htcpld_register_chip_gpio.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@htcpld_register_chip_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 439, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Unable to register output GPIOs for 0x%x: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"htcpld_register_chip_gpio\00", [38 x i8] zeroinitializer }, align 32
@htcpld_register_chip_gpio._entry_ptr = internal global ptr @htcpld_register_chip_gpio._entry, section ".printk_index", align 4
@htcpld_register_chip_gpio.lock_key.51 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@htcpld_register_chip_gpio.request_key.52 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@htcpld_register_chip_gpio._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.50, ptr @.str.4, i32 446, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unable to register input GPIOs for 0x%x: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@htcpld_register_chip_gpio._entry_ptr.55 = internal global ptr @htcpld_register_chip_gpio._entry.53, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.56 = private unnamed_addr constant [19 x i8] c"htcpld_chip_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 605, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"htcpld_core_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 613, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 607, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant [15 x i8] c"htcpld_chip_id\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 600, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 615, i32 11 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 529, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 550, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 566, i32 48 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 572, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 587, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 595, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 120, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 138, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 147, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 155, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 188, i32 5 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 486, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 487, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 510, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [18 x i8] c"htcpld_muxed_chip\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 100, i32 24 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 101, i32 18 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 76, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 82, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 341, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 347, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 362, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 369, i32 40 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 413, i32 31 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 424, i32 31 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 436, i32 8 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 438, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 443, i32 8 }
@___asan_gen_.233 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.237 = private constant [28 x i8] c"../drivers/mfd/htc-i2cpld.c\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 445, i32 3 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__initcall__kmod_htc_i2cpld__294_631_htcpld_core_init6, ptr @htcpld_core_probe._entry, ptr @htcpld_core_probe._entry.11, ptr @htcpld_core_probe._entry.14, ptr @htcpld_core_probe._entry.17, ptr @htcpld_core_probe._entry.7, ptr @htcpld_core_probe._entry_ptr, ptr @htcpld_core_probe._entry_ptr.13, ptr @htcpld_core_probe._entry_ptr.16, ptr @htcpld_core_probe._entry_ptr.20, ptr @htcpld_core_probe._entry_ptr.9, ptr @htcpld_handler._entry, ptr @htcpld_handler._entry_ptr, ptr @htcpld_register_chip_gpio._entry, ptr @htcpld_register_chip_gpio._entry.53, ptr @htcpld_register_chip_gpio._entry_ptr, ptr @htcpld_register_chip_gpio._entry_ptr.55, ptr @htcpld_register_chip_i2c._entry, ptr @htcpld_register_chip_i2c._entry.40, ptr @htcpld_register_chip_i2c._entry.43, ptr @htcpld_register_chip_i2c._entry_ptr, ptr @htcpld_register_chip_i2c._entry_ptr.42, ptr @htcpld_register_chip_i2c._entry_ptr.45, ptr @htcpld_setup_chips._entry, ptr @htcpld_setup_chips._entry_ptr, ptr @htcpld_chip_driver, ptr @htcpld_core_driver, ptr @.str, ptr @htcpld_chip_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @htcpld_setup_chips.__key, ptr @.str.28, ptr @htcpld_setup_chips.__key.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @htcpld_muxed_chip, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @htcpld_register_chip_gpio.lock_key, ptr @htcpld_register_chip_gpio.request_key, ptr @.str.49, ptr @.str.50, ptr @htcpld_register_chip_gpio.lock_key.51, ptr @htcpld_register_chip_gpio.request_key.52, ptr @.str.54], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htcpld_chip_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htcpld_core_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htcpld_chip_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htcpld_core_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htcpld_core_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htcpld_core_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htcpld_core_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htcpld_core_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htcpld_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htcpld_setup_chips.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htcpld_setup_chips.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htcpld_setup_chips._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htcpld_muxed_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htcpld_register_chip_i2c._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htcpld_register_chip_i2c._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htcpld_register_chip_i2c._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htcpld_register_chip_gpio.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htcpld_register_chip_gpio.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htcpld_register_chip_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htcpld_register_chip_gpio.lock_key.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htcpld_register_chip_gpio.request_key.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htcpld_register_chip_gpio._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @htcpld_core_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @htcpld_chip_driver) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @htcpld_core_driver, ptr noundef nonnull @htcpld_core_probe, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htcpld_core_probe(ptr noundef %pdev) #3 align 64 {
entry:
  %info.i.i = alloca %struct.i2c_board_info, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %tobool.not = icmp eq ptr %dev1, null
  br i1 %tobool.not, label %entry.cleanup61_crit_edge, label %if.end

entry.cleanup61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup61

if.end:                                           ; preds = %entry
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %dev1, ptr noundef nonnull @.str.2) #14
  br label %cleanup61

if.end4:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %dev1, i32 noundef 32, i32 noundef 3520) #11
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end4.cleanup61_crit_edge, label %if.end8

if.end4.cleanup61_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup61

if.end8:                                          ; preds = %if.end4
  %call9 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #11
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.if.end21_crit_edge, label %if.then11

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then11:                                        ; preds = %if.end8
  %2 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call9, align 4
  %chained_irq = getelementptr inbounds %struct.htcpld_data, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %chained_irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %chained_irq, align 4
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %call13 = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef null, ptr noundef nonnull @htcpld_handler, i32 noundef 8195, ptr noundef %6, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.else, label %do.end18

do.end18:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %dev1, ptr noundef nonnull @.str.8, i32 noundef %call13) #14
  br label %cleanup61

if.else:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = tail call i32 @device_init_wakeup(ptr noundef nonnull %dev1, i1 noundef zeroext false) #11
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.end8.if.end21_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %8 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data.i, align 8
  %num_chip.i = getelementptr inbounds %struct.htcpld_core_platform_data, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %num_chip.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_chip.i, align 4
  %nchips.i = getelementptr inbounds %struct.htcpld_data, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %nchips.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %nchips.i, align 4
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 820) #11
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !123

devm_kcalloc.exit.thread.i:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %chip149.i = getelementptr inbounds %struct.htcpld_data, ptr %call.i, i32 0, i32 6
  %15 = ptrtoint ptr %chip149.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %chip149.i, align 4
  br label %cleanup61

devm_kcalloc.exit.i:                              ; preds = %if.end21
  %16 = extractvalue { i32, i1 } %13, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %dev1, i32 noundef %16, i32 noundef 3520) #11
  %chip.i = getelementptr inbounds %struct.htcpld_data, ptr %call.i, i32 0, i32 6
  %17 = ptrtoint ptr %chip.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i.i, ptr %chip.i, align 4
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %devm_kcalloc.exit.i.cleanup61_crit_edge, label %for.cond.preheader.i

devm_kcalloc.exit.i.cleanup61_crit_edge:          ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup61

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit.i
  %18 = ptrtoint ptr %nchips.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nchips.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp158.not.i = icmp eq i32 %19, 0
  br i1 %cmp158.not.i, label %for.cond.preheader.i.if.end25_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end25_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %chip7.i = getelementptr inbounds %struct.htcpld_core_platform_data, ptr %9, i32 0, i32 3
  %chained_irq.i = getelementptr inbounds %struct.htcpld_data, ptr %call.i, i32 0, i32 3
  %addr17.i.i = getelementptr inbounds %struct.i2c_board_info, ptr %info.i.i, i32 0, i32 2
  %platform_data.i131.i = getelementptr inbounds %struct.i2c_board_info, ptr %info.i.i, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0159.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %chip7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip7.i, align 4
  %reset.i = getelementptr %struct.htcpld_chip_platform_data, ptr %21, i32 %i.0159.i, i32 1
  %22 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reset.i, align 4
  %conv.i = trunc i32 %23 to i8
  %24 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip.i, align 4
  %reset10.i = getelementptr %struct.htcpld_chip, ptr %25, i32 %i.0159.i, i32 1
  %26 = ptrtoint ptr %reset10.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i, ptr %reset10.i, align 4
  %27 = load ptr, ptr %chip7.i, align 4
  %reset13.i = getelementptr %struct.htcpld_chip_platform_data, ptr %27, i32 %i.0159.i, i32 1
  %28 = ptrtoint ptr %reset13.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reset13.i, align 4
  %conv14.i = trunc i32 %29 to i8
  %30 = load ptr, ptr %chip.i, align 4
  %cache_out.i = getelementptr %struct.htcpld_chip, ptr %30, i32 %i.0159.i, i32 5
  %31 = ptrtoint ptr %cache_out.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv14.i, ptr %cache_out.i, align 4
  %32 = load ptr, ptr %chip.i, align 4
  %cache_in.i = getelementptr %struct.htcpld_chip, ptr %32, i32 %i.0159.i, i32 7
  %33 = ptrtoint ptr %cache_in.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %cache_in.i, align 4
  %34 = load ptr, ptr %chip.i, align 4
  %dev21.i = getelementptr %struct.htcpld_chip, ptr %34, i32 %i.0159.i, i32 3
  %35 = ptrtoint ptr %dev21.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dev1, ptr %dev21.i, align 4
  %36 = load ptr, ptr %chip7.i, align 4
  %irq_base.i = getelementptr %struct.htcpld_chip_platform_data, ptr %36, i32 %i.0159.i, i32 5
  %37 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq_base.i, align 4
  %39 = load ptr, ptr %chip.i, align 4
  %irq_start.i = getelementptr %struct.htcpld_chip, ptr %39, i32 %i.0159.i, i32 10
  %40 = ptrtoint ptr %irq_start.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %38, ptr %irq_start.i, align 4
  %41 = load ptr, ptr %chip7.i, align 4
  %num_irqs.i = getelementptr %struct.htcpld_chip_platform_data, ptr %41, i32 %i.0159.i, i32 6
  %42 = ptrtoint ptr %num_irqs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_irqs.i, align 4
  %44 = load ptr, ptr %chip.i, align 4
  %nirqs.i = getelementptr %struct.htcpld_chip, ptr %44, i32 %i.0159.i, i32 11
  %45 = ptrtoint ptr %nirqs.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %43, ptr %nirqs.i, align 4
  %46 = load ptr, ptr %chip.i, align 4
  %set_val_work.i = getelementptr %struct.htcpld_chip, ptr %46, i32 %i.0159.i, i32 13
  call void @__init_work(ptr noundef %set_val_work.i, i32 noundef 0) #11
  %47 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chip.i, align 4
  %set_val_work34.i = getelementptr %struct.htcpld_chip, ptr %48, i32 %i.0159.i, i32 13
  %49 = ptrtoint ptr %set_val_work34.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -64, ptr %set_val_work34.i, align 4
  %50 = load ptr, ptr %chip.i, align 4
  %lockdep_map.i = getelementptr %struct.htcpld_chip, ptr %50, i32 %i.0159.i, i32 13, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @htcpld_setup_chips.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %51 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %chip.i, align 4
  %entry41.i = getelementptr %struct.htcpld_chip, ptr %52, i32 %i.0159.i, i32 13, i32 1
  %53 = ptrtoint ptr %entry41.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %entry41.i, ptr %entry41.i, align 4
  %prev.i.i = getelementptr %struct.htcpld_chip, ptr %52, i32 %i.0159.i, i32 13, i32 1, i32 1
  %54 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %entry41.i, ptr %prev.i.i, align 4
  %55 = load ptr, ptr %chip.i, align 4
  %func.i = getelementptr %struct.htcpld_chip, ptr %55, i32 %i.0159.i, i32 13, i32 2
  %56 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @htcpld_chip_set_ni, ptr %func.i, align 4
  %57 = load ptr, ptr %chip.i, align 4
  %arrayidx47.i = getelementptr %struct.htcpld_chip, ptr %57, i32 %i.0159.i
  call void @__raw_spin_lock_init(ptr noundef %arrayidx47.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @htcpld_setup_chips.__key.29, i16 noundef signext 3) #11
  %58 = ptrtoint ptr %chained_irq.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %chained_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool51.not.i = icmp eq i32 %59, 0
  br i1 %tobool51.not.i, label %for.body.i.if.end57.i_crit_edge, label %if.then52.i

for.body.i.if.end57.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57.i

if.then52.i:                                      ; preds = %for.body.i
  %60 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %driver_data.i.i, align 4
  %chip1.i.i = getelementptr inbounds %struct.htcpld_data, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %chip1.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %chip1.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.htcpld_chip, ptr %63, i32 %i.0159.i
  %irq_start.i.i = getelementptr %struct.htcpld_chip, ptr %63, i32 %i.0159.i, i32 10
  %64 = ptrtoint ptr %irq_start.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq_start.i.i, align 4
  %nirqs.i.i = getelementptr %struct.htcpld_chip, ptr %63, i32 %i.0159.i, i32 11
  %66 = ptrtoint ptr %nirqs.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nirqs.i.i, align 4
  %add.i.i = add i32 %67, %65
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %add.i.i)
  %cmp1.i.i = icmp ult i32 %65, %add.i.i
  br i1 %cmp1.i.i, label %if.then52.i.for.body.i.i_crit_edge, label %if.then52.i.if.end57.i_crit_edge

if.then52.i.if.end57.i_crit_edge:                 ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57.i

if.then52.i.for.body.i.i_crit_edge:               ; preds = %if.then52.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then52.i.for.body.i.i_crit_edge
  %irq.02.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %65, %if.then52.i.for.body.i.i_crit_edge ]
  call void @irq_set_chip_and_handler_name(i32 noundef %irq.02.i.i, ptr noundef nonnull @htcpld_muxed_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #11
  %call3.i.i = call i32 @irq_set_chip_data(i32 noundef %irq.02.i.i, ptr noundef %arrayidx.i.i) #11
  call void @irq_modify_status(i32 noundef %irq.02.i.i, i32 noundef 3072, i32 noundef 0) #11
  %inc.i.i = add i32 %irq.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %add.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.if.end57.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i.if.end57.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57.i

if.end57.i:                                       ; preds = %for.body.i.i.if.end57.i_crit_edge, %if.then52.i.if.end57.i_crit_edge, %for.body.i.if.end57.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info.i.i) #11
  %68 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %platform_data.i, align 8
  %70 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %driver_data.i.i, align 4
  %chip3.i.i = getelementptr inbounds %struct.htcpld_data, ptr %71, i32 0, i32 6
  %72 = ptrtoint ptr %chip3.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %chip3.i.i, align 4
  %arrayidx.i130.i = getelementptr %struct.htcpld_chip, ptr %73, i32 %i.0159.i
  %chip4.i.i = getelementptr inbounds %struct.htcpld_core_platform_data, ptr %69, i32 0, i32 3
  %74 = ptrtoint ptr %chip4.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %chip4.i.i, align 4
  %arrayidx5.i.i = getelementptr %struct.htcpld_chip_platform_data, ptr %75, i32 %i.0159.i
  %i2c_adapter_id.i.i = getelementptr inbounds %struct.htcpld_core_platform_data, ptr %69, i32 0, i32 2
  %76 = ptrtoint ptr %i2c_adapter_id.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %i2c_adapter_id.i.i, align 4
  %call6.i.i = call ptr @i2c_get_adapter(i32 noundef %77) #11
  %tobool.not.i.i = icmp eq ptr %call6.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx5.i.i, align 4
  %80 = ptrtoint ptr %i2c_adapter_id.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %i2c_adapter_id.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %dev1, ptr noundef nonnull @.str.38, i32 noundef %79, i32 noundef %81) #14
  br label %htcpld_register_chip_i2c.exit.thread.i

if.end.i.i:                                       ; preds = %if.end57.i
  %algo.i.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call6.i.i, i32 0, i32 2
  %82 = ptrtoint ptr %algo.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %algo.i.i.i.i, align 8
  %functionality.i.i.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %functionality.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %functionality.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %85(ptr noundef nonnull %call6.i.i) #11
  %86 = and i32 %call.i.i.i.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool9.not.i.i = icmp eq i32 %86, 0
  br i1 %tobool9.not.i.i, label %do.end13.i.i, label %if.end15.i.i

do.end13.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %87 = ptrtoint ptr %i2c_adapter_id.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %i2c_adapter_id.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %dev1, ptr noundef nonnull @.str.41, i32 noundef %88) #14
  call void @i2c_put_adapter(ptr noundef nonnull %call6.i.i) #11
  br label %htcpld_register_chip_i2c.exit.thread.i

if.end15.i.i:                                     ; preds = %if.end.i.i
  %89 = call ptr @memset(ptr %info.i.i, i32 0, i32 56)
  %90 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx5.i.i, align 4
  %conv.i.i = trunc i32 %91 to i16
  %92 = ptrtoint ptr %addr17.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv.i.i, ptr %addr17.i.i, align 2
  %call18.i.i = call i32 @strlcpy(ptr noundef nonnull %info.i.i, ptr noundef nonnull @.str, i32 noundef 20) #11
  %93 = ptrtoint ptr %platform_data.i131.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %arrayidx.i130.i, ptr %platform_data.i131.i, align 4
  %call19.i.i = call ptr @i2c_new_client_device(ptr noundef nonnull %call6.i.i, ptr noundef nonnull %info.i.i) #11
  %cmp.i.i.i = icmp ugt ptr %call19.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %htcpld_register_chip_i2c.exit.i, label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.end15.i.i
  %driver_data.i.i67.i.i = getelementptr inbounds %struct.i2c_client, ptr %call19.i.i, i32 0, i32 4, i32 8
  %94 = ptrtoint ptr %driver_data.i.i67.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %arrayidx.i130.i, ptr %driver_data.i.i67.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.i2c_client, ptr %call19.i.i, i32 0, i32 2
  %addr29.i.i = getelementptr inbounds %struct.i2c_client, ptr %call19.i.i, i32 0, i32 1
  %95 = ptrtoint ptr %addr29.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %addr29.i.i, align 2
  %conv30.i.i = zext i16 %96 to i32
  %call31.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i.i, i32 noundef 20, ptr noundef nonnull @.str.46, i32 noundef %conv30.i.i) #11
  %client32.i.i = getelementptr %struct.htcpld_chip, ptr %73, i32 %i.0159.i, i32 4
  %97 = ptrtoint ptr %client32.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call19.i.i, ptr %client32.i.i, align 4
  %98 = ptrtoint ptr %driver_data.i.i67.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %driver_data.i.i67.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %99, null
  br i1 %tobool.not.i.i.i, label %if.end27.i.i.htcpld_register_chip_i2c.exit.thread153.i_crit_edge, label %if.end.i.i132.i

if.end27.i.i.htcpld_register_chip_i2c.exit.thread153.i_crit_edge: ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %htcpld_register_chip_i2c.exit.thread153.i

if.end.i.i132.i:                                  ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %reset.i.i.i = getelementptr inbounds %struct.htcpld_chip, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %reset.i.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %reset.i.i.i, align 4
  %cache_out.i.i.i = getelementptr inbounds %struct.htcpld_chip, ptr %99, i32 0, i32 5
  %102 = ptrtoint ptr %cache_out.i.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %cache_out.i.i.i, align 4
  %call1.i.i.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %call19.i.i, i8 noundef zeroext %101) #11
  br label %htcpld_register_chip_i2c.exit.thread153.i

htcpld_register_chip_i2c.exit.thread153.i:        ; preds = %if.end.i.i132.i, %if.end27.i.i.htcpld_register_chip_i2c.exit.thread153.i_crit_edge
  %cache_out.i.i = getelementptr %struct.htcpld_chip, ptr %73, i32 %i.0159.i, i32 5
  %103 = ptrtoint ptr %cache_out.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %cache_out.i.i, align 4
  %call33.i.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %call19.i.i, i8 noundef zeroext %104) #11
  %conv34.i.i = trunc i32 %call33.i.i to i8
  %cache_in.i.i = getelementptr %struct.htcpld_chip, ptr %73, i32 %i.0159.i, i32 7
  %105 = ptrtoint ptr %cache_in.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv34.i.i, ptr %cache_in.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info.i.i) #11
  %106 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %platform_data.i, align 8
  %108 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %driver_data.i.i, align 4
  %chip3.i136.i = getelementptr inbounds %struct.htcpld_data, ptr %109, i32 0, i32 6
  %110 = ptrtoint ptr %chip3.i136.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %chip3.i136.i, align 4
  %arrayidx.i137.i = getelementptr %struct.htcpld_chip, ptr %111, i32 %i.0159.i
  %chip4.i138.i = getelementptr inbounds %struct.htcpld_core_platform_data, ptr %107, i32 0, i32 3
  %112 = ptrtoint ptr %chip4.i138.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %chip4.i138.i, align 4
  %arrayidx5.i139.i = getelementptr %struct.htcpld_chip_platform_data, ptr %113, i32 %i.0159.i
  %chip_out.i.i = getelementptr %struct.htcpld_chip, ptr %111, i32 %i.0159.i, i32 6
  %114 = ptrtoint ptr %chip_out.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @.str.47, ptr %chip_out.i.i, align 4
  %parent.i.i = getelementptr %struct.htcpld_chip, ptr %111, i32 %i.0159.i, i32 6, i32 2
  %115 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %dev1, ptr %parent.i.i, align 4
  %owner.i.i = getelementptr %struct.htcpld_chip, ptr %111, i32 %i.0159.i, i32 6, i32 4
  %116 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %owner.i.i, align 4
  %get.i.i = getelementptr %struct.htcpld_chip, ptr %111, i32 %i.0159.i, i32 6, i32 10
  %117 = ptrtoint ptr %get.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @htcpld_chip_get, ptr %get.i.i, align 4
  %set.i.i = getelementptr %struct.htcpld_chip, ptr %111, i32 %i.0159.i, i32 6, i32 12
  %118 = ptrtoint ptr %set.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @htcpld_chip_set, ptr %set.i.i, align 4
  %direction_input.i.i = getelementptr %struct.htcpld_chip, ptr %111, i32 %i.0159.i, i32 6, i32 8
  %119 = ptrtoint ptr %direction_input.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %direction_input.i.i, align 4
  %direction_output.i.i = getelementptr %struct.htcpld_chip, ptr %111, i32 %i.0159.i, i32 6, i32 9
  %120 = ptrtoint ptr %direction_output.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @htcpld_direction_output, ptr %direction_output.i.i, align 4
  %gpio_out_base.i.i = getelementptr %struct.htcpld_chip_platform_data, ptr %113, i32 %i.0159.i, i32 3
  %121 = ptrtoint ptr %gpio_out_base.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %gpio_out_base.i.i, align 4
  %base.i.i = getelementptr %struct.htcpld_chip, ptr %111, i32 %i.0159.i, i32 6, i32 19
  %123 = ptrtoint ptr %base.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %base.i.i, align 4
  %num_gpios.i.i = getelementptr %struct.htcpld_chip_platform_data, ptr %113, i32 %i.0159.i, i32 2
  %124 = ptrtoint ptr %num_gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %num_gpios.i.i, align 4
  %conv.i140.i = trunc i32 %125 to i16
  %ngpio.i.i = getelementptr %struct.htcpld_chip, ptr %111, i32 %i.0159.i, i32 6, i32 20
  %126 = ptrtoint ptr %ngpio.i.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv.i140.i, ptr %ngpio.i.i, align 4
  %chip_in.i.i = getelementptr %struct.htcpld_chip, ptr %111, i32 %i.0159.i, i32 8
  %127 = ptrtoint ptr %chip_in.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @.str.48, ptr %chip_in.i.i, align 4
  %parent7.i.i = getelementptr %struct.htcpld_chip, ptr %111, i32 %i.0159.i, i32 8, i32 2
  %128 = ptrtoint ptr %parent7.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %dev1, ptr %parent7.i.i, align 4
  %owner8.i.i = getelementptr %struct.htcpld_chip, ptr %111, i32 %i.0159.i, i32 8, i32 4
  %129 = ptrtoint ptr %owner8.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %owner8.i.i, align 4
  %get9.i.i = getelementptr %struct.htcpld_chip, ptr %111, i32 %i.0159.i, i32 8, i32 10
  %130 = ptrtoint ptr %get9.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @htcpld_chip_get, ptr %get9.i.i, align 4
  %set10.i.i = getelementptr %struct.htcpld_chip, ptr %111, i32 %i.0159.i, i32 8, i32 12
  %131 = ptrtoint ptr %set10.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %set10.i.i, align 4
  %direction_input11.i.i = getelementptr %struct.htcpld_chip, ptr %111, i32 %i.0159.i, i32 8, i32 8
  %132 = ptrtoint ptr %direction_input11.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @htcpld_direction_input, ptr %direction_input11.i.i, align 4
  %direction_output12.i.i = getelementptr %struct.htcpld_chip, ptr %111, i32 %i.0159.i, i32 8, i32 9
  %133 = ptrtoint ptr %direction_output12.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %direction_output12.i.i, align 4
  %to_irq.i.i = getelementptr %struct.htcpld_chip, ptr %111, i32 %i.0159.i, i32 8, i32 15
  %134 = ptrtoint ptr %to_irq.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @htcpld_chip_to_irq, ptr %to_irq.i.i, align 4
  %gpio_in_base.i.i = getelementptr %struct.htcpld_chip_platform_data, ptr %113, i32 %i.0159.i, i32 4
  %135 = ptrtoint ptr %gpio_in_base.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %gpio_in_base.i.i, align 4
  %base13.i.i = getelementptr %struct.htcpld_chip, ptr %111, i32 %i.0159.i, i32 8, i32 19
  %137 = ptrtoint ptr %base13.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %base13.i.i, align 4
  %138 = load i32, ptr %num_gpios.i.i, align 4
  %conv15.i.i = trunc i32 %138 to i16
  %ngpio16.i.i = getelementptr %struct.htcpld_chip, ptr %111, i32 %i.0159.i, i32 8, i32 20
  %139 = ptrtoint ptr %ngpio16.i.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %conv15.i.i, ptr %ngpio16.i.i, align 4
  %call18.i141.i = call i32 @gpiochip_add_data_with_key(ptr noundef %chip_out.i.i, ptr noundef %arrayidx.i137.i, ptr noundef nonnull @htcpld_register_chip_gpio.lock_key, ptr noundef nonnull @htcpld_register_chip_gpio.request_key) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i141.i)
  %tobool.not.i142.i = icmp eq i32 %call18.i141.i, 0
  br i1 %tobool.not.i142.i, label %if.end.i144.i, label %do.end.i143.i

htcpld_register_chip_i2c.exit.thread.i:           ; preds = %do.end13.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info.i.i) #11
  br label %cleanup.i

htcpld_register_chip_i2c.exit.i:                  ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %140 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx5.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %dev1, ptr noundef nonnull @.str.44, i32 noundef %141) #14
  call void @i2c_put_adapter(ptr noundef nonnull %call6.i.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info.i.i) #11
  br label %cleanup.i

do.end.i143.i:                                    ; preds = %htcpld_register_chip_i2c.exit.thread153.i
  call void @__sanitizer_cov_trace_pc() #13
  %142 = ptrtoint ptr %arrayidx5.i139.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx5.i139.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %dev1, ptr noundef nonnull @.str.49, i32 noundef %143, i32 noundef %call18.i141.i) #14
  br label %if.then64.i

if.end.i144.i:                                    ; preds = %htcpld_register_chip_i2c.exit.thread153.i
  %call21.i.i = call i32 @gpiochip_add_data_with_key(ptr noundef %chip_in.i.i, ptr noundef %arrayidx.i137.i, ptr noundef nonnull @htcpld_register_chip_gpio.lock_key.51, ptr noundef nonnull @htcpld_register_chip_gpio.request_key.52) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool22.not.i.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool22.not.i.i, label %do.end68.i, label %do.end26.i.i

do.end26.i.i:                                     ; preds = %if.end.i144.i
  call void @__sanitizer_cov_trace_pc() #13
  %144 = ptrtoint ptr %arrayidx5.i139.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx5.i139.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %dev1, ptr noundef nonnull @.str.54, i32 noundef %145, i32 noundef %call21.i.i) #14
  call void @gpiochip_remove(ptr noundef %chip_out.i.i) #11
  br label %if.then64.i

if.then64.i:                                      ; preds = %do.end26.i.i, %do.end.i143.i
  %146 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %driver_data.i.i, align 4
  %chip1.i147.i = getelementptr inbounds %struct.htcpld_data, ptr %147, i32 0, i32 6
  %148 = ptrtoint ptr %chip1.i147.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %chip1.i147.i, align 4
  %client.i.i = getelementptr %struct.htcpld_chip, ptr %149, i32 %i.0159.i, i32 4
  %150 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %client.i.i, align 4
  call void @i2c_unregister_device(ptr noundef %151) #11
  br label %cleanup.i

do.end68.i:                                       ; preds = %if.end.i144.i
  call void @__sanitizer_cov_trace_pc() #13
  %152 = ptrtoint ptr %chip7.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %chip7.i, align 4
  %arrayidx70.i = getelementptr %struct.htcpld_chip_platform_data, ptr %153, i32 %i.0159.i
  %154 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx70.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %dev1, ptr noundef nonnull @.str.31, i32 noundef %155) #14
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end68.i, %if.then64.i, %htcpld_register_chip_i2c.exit.i, %htcpld_register_chip_i2c.exit.thread.i
  %inc.i = add nuw i32 %i.0159.i, 1
  %156 = ptrtoint ptr %nchips.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %nchips.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %157
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.if.end25_crit_edge

cleanup.i.if.end25_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end25:                                         ; preds = %cleanup.i.if.end25_crit_edge, %for.cond.preheader.i.if.end25_crit_edge
  %158 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool26.not = icmp eq i32 %159, 0
  br i1 %tobool26.not, label %if.end25.if.end41_crit_edge, label %if.then27

if.end25.if.end41_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then27:                                        ; preds = %if.end25
  %call29 = call i32 @gpio_request(i32 noundef %159, ptr noundef nonnull @.str.10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.else36, label %do.end34

do.end34:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %dev1, ptr noundef nonnull @.str.12) #14
  %int_reset_gpio_hi35 = getelementptr inbounds %struct.htcpld_data, ptr %call.i, i32 0, i32 4
  %160 = ptrtoint ptr %int_reset_gpio_hi35 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %int_reset_gpio_hi35, align 4
  br label %if.end41

if.else36:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  %161 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %1, align 4
  %int_reset_gpio_hi38 = getelementptr inbounds %struct.htcpld_data, ptr %call.i, i32 0, i32 4
  %163 = ptrtoint ptr %int_reset_gpio_hi38 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %int_reset_gpio_hi38, align 4
  %call.i102 = call ptr @gpio_to_desc(i32 noundef %162) #11
  call void @gpiod_set_raw_value(ptr noundef %call.i102, i32 noundef 1) #11
  br label %if.end41

if.end41:                                         ; preds = %if.else36, %do.end34, %if.end25.if.end41_crit_edge
  %int_reset_gpio_lo = getelementptr inbounds %struct.htcpld_core_platform_data, ptr %1, i32 0, i32 1
  %164 = ptrtoint ptr %int_reset_gpio_lo to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %int_reset_gpio_lo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool42.not = icmp eq i32 %165, 0
  br i1 %tobool42.not, label %if.end41.do.end60_crit_edge, label %if.then43

if.end41.do.end60_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60

if.then43:                                        ; preds = %if.end41
  %call45 = call i32 @gpio_request(i32 noundef %165, ptr noundef nonnull @.str.10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.else52, label %do.end50

do.end50:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %dev1, ptr noundef nonnull @.str.15) #14
  %int_reset_gpio_lo51 = getelementptr inbounds %struct.htcpld_data, ptr %call.i, i32 0, i32 5
  %166 = ptrtoint ptr %int_reset_gpio_lo51 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %int_reset_gpio_lo51, align 4
  br label %do.end60

if.else52:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  %167 = ptrtoint ptr %int_reset_gpio_lo to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %int_reset_gpio_lo, align 4
  %int_reset_gpio_lo54 = getelementptr inbounds %struct.htcpld_data, ptr %call.i, i32 0, i32 5
  %169 = ptrtoint ptr %int_reset_gpio_lo54 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %int_reset_gpio_lo54, align 4
  %call.i103 = call ptr @gpio_to_desc(i32 noundef %168) #11
  call void @gpiod_set_raw_value(ptr noundef %call.i103, i32 noundef 0) #11
  br label %do.end60

do.end60:                                         ; preds = %if.else52, %do.end50, %if.end41.do.end60_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %dev1, ptr noundef nonnull @.str.18) #14
  br label %cleanup61

cleanup61:                                        ; preds = %do.end60, %devm_kcalloc.exit.i.cleanup61_crit_edge, %devm_kcalloc.exit.thread.i, %do.end18, %if.end4.cleanup61_crit_edge, %do.end, %entry.cleanup61_crit_edge
  %retval.1 = phi i32 [ 0, %do.end60 ], [ -6, %do.end ], [ -19, %entry.cleanup61_crit_edge ], [ -12, %if.end4.cleanup61_crit_edge ], [ %call13, %do.end18 ], [ -12, %devm_kcalloc.exit.i.cleanup61_crit_edge ], [ -12, %devm_kcalloc.exit.thread.i ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htcpld_handler(i32 noundef %irq, ptr noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %do.body, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %nchips = getelementptr inbounds %struct.htcpld_data, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %nchips to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nchips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp182.not = icmp eq i32 %1, 0
  br i1 %cmp182.not, label %for.cond.preheader.for.end114_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end114_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end114

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %chip6 = getelementptr inbounds %struct.htcpld_data, ptr %dev, i32 0, i32 6
  br label %for.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @htcpld_handler.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@htcpld_handler, %if.then4)) #11
          to label %cleanup123 [label %if.then4], !srcloc !124

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @htcpld_handler.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.23) #11
  br label %cleanup123

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0183 = phi i32 [ 0, %for.body.lr.ph ], [ %inc113, %cleanup.for.body_crit_edge ]
  %2 = ptrtoint ptr %chip6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip6, align 4
  %arrayidx = getelementptr %struct.htcpld_chip, ptr %3, i32 %i.0183
  %tobool7.not = icmp eq ptr %arrayidx, null
  br i1 %tobool7.not, label %do.body9, label %if.end25

do.body9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @htcpld_handler.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@htcpld_handler, %if.then21)) #11
          to label %cleanup [label %if.then21], !srcloc !124

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @htcpld_handler.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.24, i32 noundef %i.0183) #11
  br label %cleanup

if.end25:                                         ; preds = %for.body
  %nirqs = getelementptr %struct.htcpld_chip, ptr %3, i32 %i.0183, i32 11
  %4 = ptrtoint ptr %nirqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nirqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp26 = icmp eq i32 %5, 0
  br i1 %cmp26, label %if.end25.cleanup_crit_edge, label %if.end28

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end25
  %client29 = getelementptr %struct.htcpld_chip, ptr %3, i32 %i.0183, i32 4
  %6 = ptrtoint ptr %client29 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client29, align 4
  %tobool30.not = icmp eq ptr %7, null
  br i1 %tobool30.not, label %do.body32, label %if.end48

do.body32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @htcpld_handler.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@htcpld_handler, %if.then44)) #11
          to label %cleanup [label %if.then44], !srcloc !124

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @htcpld_handler.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.25, i32 noundef %i.0183) #11
  br label %cleanup

if.end48:                                         ; preds = %if.end28
  %cache_out = getelementptr %struct.htcpld_chip, ptr %3, i32 %i.0183, i32 5
  %8 = ptrtoint ptr %cache_out to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cache_out, align 4
  %call49 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef nonnull %7, i8 noundef zeroext %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %do.end54, label %if.end56

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  %dev55 = getelementptr %struct.htcpld_chip, ptr %3, i32 %i.0183, i32 3
  %10 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev55, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.26, i32 noundef %call49) #14
  br label %cleanup

if.end56:                                         ; preds = %if.end48
  %call62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %arrayidx) #11
  %cache_in = getelementptr %struct.htcpld_chip, ptr %3, i32 %i.0183, i32 7
  %12 = ptrtoint ptr %cache_in to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cache_in, align 4
  %conv67 = zext i8 %13 to i32
  %conv68 = trunc i32 %call49 to i8
  store i8 %conv68, ptr %cache_in, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %arrayidx, i32 noundef %call62) #11
  %14 = ptrtoint ptr %nirqs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nirqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp73180 = icmp sgt i32 %15, 0
  br i1 %cmp73180, label %for.body75.lr.ph, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body75.lr.ph:                                 ; preds = %if.end56
  %flow_type = getelementptr %struct.htcpld_chip, ptr %3, i32 %i.0183, i32 12
  %irq_start = getelementptr %struct.htcpld_chip, ptr %3, i32 %i.0183, i32 10
  br label %for.body75

for.body75:                                       ; preds = %if.end107.for.body75_crit_edge, %for.body75.lr.ph
  %irqpin.0181 = phi i32 [ 0, %for.body75.lr.ph ], [ %inc, %if.end107.for.body75_crit_edge ]
  %16 = ptrtoint ptr %flow_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flow_type, align 4
  %18 = ptrtoint ptr %irq_start to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq_start, align 4
  %add = add i32 %19, %irqpin.0181
  %20 = shl nuw i32 1, %irqpin.0181
  %21 = and i32 %20, %conv67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool78.not = icmp ne i32 %21, 0
  %22 = and i32 %20, %call49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool79.not = icmp eq i32 %22, 0
  %or.cond = select i1 %tobool78.not, i1 true, i1 %tobool79.not
  %and81 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  %or.cond162 = select i1 %or.cond, i1 true, i1 %tobool82.not
  br i1 %or.cond162, label %lor.lhs.false, label %for.body75.do.body90_crit_edge

for.body75.do.body90_crit_edge:                   ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body90

lor.lhs.false:                                    ; preds = %for.body75
  %or.cond164 = select i1 %tobool78.not, i1 %tobool79.not, i1 false
  %or.cond164.not = xor i1 %or.cond164, true
  %and87 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  %or.cond165 = select i1 %or.cond164.not, i1 true, i1 %tobool88.not
  br i1 %or.cond165, label %lor.lhs.false.if.end107_crit_edge, label %lor.lhs.false.do.body90_crit_edge

lor.lhs.false.do.body90_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body90

lor.lhs.false.if.end107_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107

do.body90:                                        ; preds = %lor.lhs.false.do.body90_crit_edge, %for.body75.do.body90_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @htcpld_handler.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@htcpld_handler, %if.then102)) #11
          to label %do.end105 [label %if.then102], !srcloc !124

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @htcpld_handler.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.27, i32 noundef %irqpin.0181) #11
  br label %do.end105

do.end105:                                        ; preds = %if.then102, %do.body90
  %call106 = tail call i32 @generic_handle_irq(i32 noundef %add) #11
  br label %if.end107

if.end107:                                        ; preds = %do.end105, %lor.lhs.false.if.end107_crit_edge
  %inc = add nuw nsw i32 %irqpin.0181, 1
  %23 = ptrtoint ptr %nirqs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nirqs, align 4
  %cmp73 = icmp slt i32 %inc, %24
  br i1 %cmp73, label %if.end107.for.body75_crit_edge, label %if.end107.cleanup_crit_edge

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end107.for.body75_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body75

cleanup:                                          ; preds = %if.end107.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %do.end54, %if.then44, %do.body32, %if.end25.cleanup_crit_edge, %if.then21, %do.body9
  %inc113 = add nuw i32 %i.0183, 1
  %25 = ptrtoint ptr %nchips to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nchips, align 4
  %cmp = icmp ult i32 %inc113, %26
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end114_crit_edge

cleanup.for.end114_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end114

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end114:                                       ; preds = %cleanup.for.end114_crit_edge, %for.cond.preheader.for.end114_crit_edge
  %int_reset_gpio_hi = getelementptr inbounds %struct.htcpld_data, ptr %dev, i32 0, i32 4
  %27 = ptrtoint ptr %int_reset_gpio_hi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %int_reset_gpio_hi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool115.not = icmp eq i32 %28, 0
  br i1 %tobool115.not, label %for.end114.if.end118_crit_edge, label %if.then116

for.end114.if.end118_crit_edge:                   ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end118

if.then116:                                       ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %28) #11
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 1) #11
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %for.end114.if.end118_crit_edge
  %int_reset_gpio_lo = getelementptr inbounds %struct.htcpld_data, ptr %dev, i32 0, i32 5
  %29 = ptrtoint ptr %int_reset_gpio_lo to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %int_reset_gpio_lo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool119.not = icmp eq i32 %30, 0
  br i1 %tobool119.not, label %if.end118.cleanup123_crit_edge, label %if.then120

if.end118.cleanup123_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup123

if.then120:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #13
  %call.i175 = tail call ptr @gpio_to_desc(i32 noundef %30) #11
  tail call void @gpiod_set_raw_value(ptr noundef %call.i175, i32 noundef 0) #11
  br label %cleanup123

cleanup123:                                       ; preds = %if.then120, %if.end118.cleanup123_crit_edge, %if.then4, %do.body
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @htcpld_chip_set_ni(ptr nocapture noundef readonly %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr i8, ptr %work, i32 -724
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  %cache_out = getelementptr i8, ptr %work, i32 -720
  %2 = ptrtoint ptr %cache_out to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cache_out, align 4
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @htcpld_mask(ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq_start = getelementptr inbounds %struct.htcpld_chip, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %irq_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_start, align 4
  %sub = sub i32 %3, %5
  %shl = shl nuw i32 1, %sub
  %irqs_enabled = getelementptr inbounds %struct.htcpld_chip, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %irqs_enabled to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %irqs_enabled, align 4
  %8 = trunc i32 %shl to i16
  %9 = xor i16 %8, -1
  %conv1 = and i16 %7, %9
  store i16 %conv1, ptr %irqs_enabled, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @htcpld_mask.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@htcpld_mask, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !124

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %12 = ptrtoint ptr %irqs_enabled to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %irqs_enabled, align 4
  %conv7 = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @htcpld_mask.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.35, i32 noundef %11, i32 noundef %conv7) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @htcpld_unmask(ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq_start = getelementptr inbounds %struct.htcpld_chip, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %irq_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_start, align 4
  %sub = sub i32 %3, %5
  %shl = shl nuw i32 1, %sub
  %irqs_enabled = getelementptr inbounds %struct.htcpld_chip, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %irqs_enabled to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %irqs_enabled, align 4
  %8 = trunc i32 %shl to i16
  %conv1 = or i16 %7, %8
  store i16 %conv1, ptr %irqs_enabled, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @htcpld_unmask.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@htcpld_unmask, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !124

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %11 = ptrtoint ptr %irqs_enabled to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %irqs_enabled, align 4
  %conv7 = zext i16 %12 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @htcpld_unmask.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.37, i32 noundef %10, i32 noundef %conv7) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @htcpld_set_type(ptr nocapture noundef readonly %data, i32 noundef %flags) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %flags)
  %0 = icmp ult i32 %flags, 4
  br i1 %0, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %1 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip_data.i, align 4
  %flow_type = getelementptr inbounds %struct.htcpld_chip, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %flow_type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %flags, ptr %flow_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_get_adapter(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htcpld_chip_get(ptr noundef %chip, i32 noundef %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #11
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %call1 = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(11) @.str.47, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cache_out = getelementptr inbounds %struct.htcpld_chip, ptr %call, i32 0, i32 5
  br label %if.end7

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(10) @.str.48, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %cache_in = getelementptr inbounds %struct.htcpld_chip, ptr %call, i32 0, i32 7
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then
  %cache.0.in = phi ptr [ %cache_in, %if.then5 ], [ %cache_out, %if.then ]
  %2 = ptrtoint ptr %cache.0.in to i32
  call void @__asan_load1_noabort(i32 %2)
  %cache.0 = load i8, ptr %cache.0.in, align 4
  %conv = zext i8 %cache.0 to i32
  %shr = lshr i32 %conv, %offset
  %and = and i32 %shr, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end7 ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @htcpld_chip_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #11
  %client1 = getelementptr inbounds %struct.htcpld_chip, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool7.not = icmp eq i32 %val, 0
  %shl11 = shl nuw i32 1, %offset
  %cache_out12 = getelementptr inbounds %struct.htcpld_chip, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %cache_out12 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cache_out12, align 4
  %4 = trunc i32 %shl11 to i8
  %5 = xor i8 %4, -1
  %conv14 = and i8 %3, %5
  %conv10 = or i8 %3, %4
  %conv14.sink = select i1 %tobool7.not, i8 %conv14, i8 %conv10
  store i8 %conv14.sink, ptr %cache_out12, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call4) #11
  %set_val_work = getelementptr inbounds %struct.htcpld_chip, ptr %call, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %set_val_work) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htcpld_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #11
  %client1.i = getelementptr inbounds %struct.htcpld_chip, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.htcpld_chip_set.exit_crit_edge, label %do.body2.i

entry.htcpld_chip_set.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %htcpld_chip_set.exit

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool7.not.i = icmp eq i32 %value, 0
  %shl11.i = shl nuw i32 1, %offset
  %cache_out12.i = getelementptr inbounds %struct.htcpld_chip, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %cache_out12.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cache_out12.i, align 4
  %4 = trunc i32 %shl11.i to i8
  %5 = xor i8 %4, -1
  %conv14.i = and i8 %3, %5
  %conv10.i = or i8 %3, %4
  %conv14.sink.i = select i1 %tobool7.not.i, i8 %conv14.i, i8 %conv10.i
  store i8 %conv14.sink.i, ptr %cache_out12.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call.i, i32 noundef %call4.i) #11
  %set_val_work.i = getelementptr inbounds %struct.htcpld_chip, ptr %call.i, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %set_val_work.i) #11
  br label %htcpld_chip_set.exit

htcpld_chip_set.exit:                             ; preds = %do.body2.i, %entry.htcpld_chip_set.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @htcpld_direction_input(ptr nocapture noundef readonly %chip, i32 noundef %offset) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %0 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %offset)
  %cmp = icmp ugt i32 %conv, %offset
  %cond = select i1 %cmp, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htcpld_chip_to_irq(ptr noundef %chip, i32 noundef %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #11
  %nirqs = getelementptr inbounds %struct.htcpld_chip, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %nirqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nirqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %offset)
  %cmp = icmp ugt i32 %1, %offset
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %irq_start = getelementptr inbounds %struct.htcpld_chip, ptr %call, i32 0, i32 10
  %2 = ptrtoint ptr %irq_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_start, align 4
  %add = add i32 %3, %offset
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !49, !50, !52, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !67, !68, !70, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !97, !99, !101, !102, !104, !105, !106, !107, !109, !110, !112, !113}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @__initcall__kmod_htc_i2cpld__294_631_htcpld_core_init6, !1, !"__initcall__kmod_htc_i2cpld__294_631_htcpld_core_init6", i1 false, i1 false}
!1 = !{!"../drivers/mfd/htc-i2cpld.c", i32 631, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mfd/htc-i2cpld.c", i32 607, i32 11}
!4 = !{ptr @htcpld_chip_driver, !5, !"htcpld_chip_driver", i1 false, i1 false}
!5 = !{!"../drivers/mfd/htc-i2cpld.c", i32 605, i32 26}
!6 = !{ptr @htcpld_chip_id, !7, !"htcpld_chip_id", i1 false, i1 false}
!7 = !{!"../drivers/mfd/htc-i2cpld.c", i32 600, i32 35}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mfd/htc-i2cpld.c", i32 615, i32 11}
!10 = !{ptr @htcpld_core_driver, !11, !"htcpld_core_driver", i1 false, i1 false}
!11 = !{!"../drivers/mfd/htc-i2cpld.c", i32 613, i32 31}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mfd/htc-i2cpld.c", i32 529, i32 3}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @htcpld_core_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @htcpld_core_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mfd/htc-i2cpld.c", i32 550, i32 4}
!22 = !{ptr @htcpld_core_probe._entry.7, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @htcpld_core_probe._entry_ptr.9, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mfd/htc-i2cpld.c", i32 566, i32 48}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mfd/htc-i2cpld.c", i32 572, i32 4}
!28 = !{ptr @htcpld_core_probe._entry.11, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @htcpld_core_probe._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mfd/htc-i2cpld.c", i32 587, i32 4}
!32 = !{ptr @htcpld_core_probe._entry.14, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @htcpld_core_probe._entry_ptr.16, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mfd/htc-i2cpld.c", i32 595, i32 2}
!36 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @htcpld_core_probe._entry.17, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @htcpld_core_probe._entry_ptr.20, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mfd/htc-i2cpld.c", i32 120, i32 3}
!41 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @htcpld_handler.__UNIQUE_ID_ddebug290, !40, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mfd/htc-i2cpld.c", i32 138, i32 4}
!46 = !{ptr @htcpld_handler.__UNIQUE_ID_ddebug291, !45, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mfd/htc-i2cpld.c", i32 147, i32 4}
!49 = !{ptr @htcpld_handler.__UNIQUE_ID_ddebug292, !48, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mfd/htc-i2cpld.c", i32 155, i32 4}
!52 = !{ptr @htcpld_handler._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @htcpld_handler._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mfd/htc-i2cpld.c", i32 188, i32 5}
!56 = !{ptr @htcpld_handler.__UNIQUE_ID_ddebug293, !55, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!57 = !{ptr @htcpld_setup_chips.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/mfd/htc-i2cpld.c", i32 486, i32 3}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @htcpld_setup_chips.__key.29, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/mfd/htc-i2cpld.c", i32 487, i32 3}
!62 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mfd/htc-i2cpld.c", i32 510, i32 3}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @htcpld_setup_chips._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @htcpld_setup_chips._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mfd/htc-i2cpld.c", i32 101, i32 18}
!70 = !{ptr @htcpld_muxed_chip, !71, !"htcpld_muxed_chip", i1 false, i1 false}
!71 = !{!"../drivers/mfd/htc-i2cpld.c", i32 100, i32 24}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mfd/htc-i2cpld.c", i32 76, i32 2}
!74 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @htcpld_mask.__UNIQUE_ID_ddebug288, !73, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mfd/htc-i2cpld.c", i32 82, i32 2}
!78 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @htcpld_unmask.__UNIQUE_ID_ddebug289, !77, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mfd/htc-i2cpld.c", i32 341, i32 3}
!82 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @htcpld_register_chip_i2c._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @htcpld_register_chip_i2c._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mfd/htc-i2cpld.c", i32 347, i32 3}
!87 = !{ptr @htcpld_register_chip_i2c._entry.40, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @htcpld_register_chip_i2c._entry_ptr.42, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mfd/htc-i2cpld.c", i32 362, i32 3}
!91 = !{ptr @htcpld_register_chip_i2c._entry.43, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @htcpld_register_chip_i2c._entry_ptr.45, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mfd/htc-i2cpld.c", i32 369, i32 40}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mfd/htc-i2cpld.c", i32 413, i32 31}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mfd/htc-i2cpld.c", i32 424, i32 31}
!99 = !{ptr @htcpld_register_chip_gpio.lock_key, !100, !"lock_key", i1 false, i1 false}
!100 = !{!"../drivers/mfd/htc-i2cpld.c", i32 436, i32 8}
!101 = !{ptr @htcpld_register_chip_gpio.request_key, !100, !"request_key", i1 false, i1 false}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mfd/htc-i2cpld.c", i32 438, i32 3}
!104 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @htcpld_register_chip_gpio._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @htcpld_register_chip_gpio._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @htcpld_register_chip_gpio.lock_key.51, !108, !"lock_key", i1 false, i1 false}
!108 = !{!"../drivers/mfd/htc-i2cpld.c", i32 443, i32 8}
!109 = !{ptr @htcpld_register_chip_gpio.request_key.52, !108, !"request_key", i1 false, i1 false}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mfd/htc-i2cpld.c", i32 445, i32 3}
!112 = !{ptr @htcpld_register_chip_gpio._entry.53, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @htcpld_register_chip_gpio._entry_ptr.55, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{!"branch_weights", i32 1, i32 2000}
!124 = !{i64 2148706226, i64 2148706231, i64 2148706244, i64 2148706288, i64 2148706322, i64 2148706343}
