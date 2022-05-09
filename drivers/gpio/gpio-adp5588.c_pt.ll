; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-adp5588.c_pt.bc'
source_filename = "../drivers/gpio/gpio-adp5588.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.adp5588_gpio_platform_data = type { i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.adp5588_gpio = type { ptr, %struct.gpio_chip, %struct.mutex, %struct.mutex, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8] }
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
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_gpio_adp5588__288_467_adp5588_gpio_driver_init6 = internal global ptr @adp5588_gpio_driver_init, section ".initcall6.init", align 4
@adp5588_gpio_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @adp5588_gpio_remove, ptr @adp5588_gpio_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adp5588_gpio_of_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adp5588_gpio_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adp5588_gpio_driver_exit = internal global ptr @adp5588_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [69 x i8] c"gpio_adp5588.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [45 x i8] c"gpio_adp5588.description=GPIO ADP5588 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [44 x i8] c"gpio_adp5588.file=drivers/gpio/gpio-adp5588\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [25 x i8] c"gpio_adp5588.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adp5588-gpio\00", [19 x i8] zeroinitializer }, align 32
@adp5588_gpio_of_id = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adp5588-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@adp5588_gpio_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adp5588-gpio\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@adp5588_gpio_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 432, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"teardown failed %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adp5588_gpio_remove\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/gpio/gpio-adp5588.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adp5588_gpio_remove._entry_ptr = internal global ptr @adp5588_gpio_remove._entry, section ".printk_index", align 4
@adp5588_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 347, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SMBUS Byte Data not Supported\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adp5588_gpio_probe\00", [45 x i8] zeroinitializer }, align 32
@adp5588_gpio_probe._entry_ptr = internal global ptr @adp5588_gpio_probe._entry, section ".printk_index", align 4
@adp5588_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@adp5588_gpio_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.3, i32 397, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GPIO int not supported\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@adp5588_gpio_probe._entry_ptr.12 = internal global ptr @adp5588_gpio_probe._entry.9, section ".printk_index", align 4
@adp5588_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@adp5588_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@adp5588_gpio_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.3, i32 412, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"setup failed, %d\0A\00", [46 x i8] zeroinitializer }, align 32
@adp5588_gpio_probe._entry_ptr.15 = internal global ptr @adp5588_gpio_probe._entry.13, section ".printk_index", align 4
@adp5588_gpio_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 50, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Read Error\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adp5588_gpio_read\00", [46 x i8] zeroinitializer }, align 32
@adp5588_gpio_read._entry_ptr = internal global ptr @adp5588_gpio_read._entry, section ".printk_index", align 4
@adp5588_gpio_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 60, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Write Error\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adp5588_gpio_write\00", [45 x i8] zeroinitializer }, align 32
@adp5588_gpio_write._entry_ptr = internal global ptr @adp5588_gpio_write._entry, section ".printk_index", align 4
@adp5588_irq_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->irq_lock\00", [17 x i8] zeroinitializer }, align 32
@adp5588_irq_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 305, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adp5588_irq_setup\00", [46 x i8] zeroinitializer }, align 32
@adp5588_irq_setup._entry_ptr = internal global ptr @adp5588_irq_setup._entry, section ".printk_index", align 4
@adp5588_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.23, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adp5588_irq_mask, ptr null, ptr @adp5588_irq_unmask, ptr null, ptr null, ptr null, ptr @adp5588_irq_set_type, ptr null, ptr @adp5588_irq_bus_lock, ptr @adp5588_irq_bus_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adp5588\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"adp5588_gpio_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 457, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 459, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"adp5588_gpio_of_id\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 450, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"adp5588_gpio_id\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 443, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 432, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 347, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 376, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 397, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 405, i32 8 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 412, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 50, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 60, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 297, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 304, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"adp5588_irq_chip\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 231, i32 24 }
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [31 x i8] c"../drivers/gpio/gpio-adp5588.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 232, i32 12 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_adp5588_gpio_driver_exit, ptr @__initcall__kmod_gpio_adp5588__288_467_adp5588_gpio_driver_init6, ptr @adp5588_gpio_driver_exit, ptr @adp5588_gpio_probe._entry, ptr @adp5588_gpio_probe._entry.13, ptr @adp5588_gpio_probe._entry.9, ptr @adp5588_gpio_probe._entry_ptr, ptr @adp5588_gpio_probe._entry_ptr.12, ptr @adp5588_gpio_probe._entry_ptr.15, ptr @adp5588_gpio_read._entry, ptr @adp5588_gpio_read._entry_ptr, ptr @adp5588_gpio_remove._entry, ptr @adp5588_gpio_remove._entry_ptr, ptr @adp5588_gpio_write._entry, ptr @adp5588_gpio_write._entry_ptr, ptr @adp5588_irq_setup._entry, ptr @adp5588_irq_setup._entry_ptr, ptr @adp5588_gpio_driver, ptr @.str, ptr @adp5588_gpio_of_id, ptr @adp5588_gpio_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @adp5588_gpio_probe.__key, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @adp5588_gpio_probe.lock_key, ptr @adp5588_gpio_probe.request_key, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @adp5588_irq_setup.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @adp5588_irq_chip, ptr @.str.23], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_gpio_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_gpio_of_id to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_gpio_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_gpio_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_gpio_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_gpio_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_gpio_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_gpio_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_irq_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_irq_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5588_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5588_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adp5588_gpio_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adp5588_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @adp5588_gpio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5588_gpio_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %land.lhs.true

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %teardown = getelementptr inbounds %struct.adp5588_gpio_platform_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %teardown to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %teardown, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end10_crit_edge, label %if.then

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then:                                          ; preds = %land.lhs.true
  %base = getelementptr inbounds %struct.adp5588_gpio, ptr %3, i32 0, i32 1, i32 19
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 4
  %ngpio = getelementptr inbounds %struct.adp5588_gpio, ptr %3, i32 0, i32 1, i32 20
  %8 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %9 to i32
  %context = getelementptr inbounds %struct.adp5588_gpio_platform_data, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %context, align 4
  %call6 = tail call i32 %5(ptr noundef %client, i32 noundef %7, i32 noundef %conv, ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call6) #8
  br label %cleanup

if.end10:                                         ; preds = %if.then.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %entry.if.end10_crit_edge
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.not = icmp eq i32 %15, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.then13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call ptr @free_irq(i32 noundef %15, ptr noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end10.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call6, %do.end ], [ 0, %if.then13 ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5588_gpio_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3) #5
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 560, i32 noundef 3520) #5
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %call.i, align 4
  %gpio_chip = getelementptr inbounds %struct.adp5588_gpio, ptr %call.i, i32 0, i32 1
  %direction_input = getelementptr inbounds %struct.adp5588_gpio, ptr %call.i, i32 0, i32 1, i32 8
  %9 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @adp5588_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.adp5588_gpio, ptr %call.i, i32 0, i32 1, i32 9
  %10 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @adp5588_gpio_direction_output, ptr %direction_output, align 4
  %get = getelementptr inbounds %struct.adp5588_gpio, ptr %call.i, i32 0, i32 1, i32 10
  %11 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @adp5588_gpio_get_value, ptr %get, align 4
  %set = getelementptr inbounds %struct.adp5588_gpio, ptr %call.i, i32 0, i32 1, i32 12
  %12 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @adp5588_gpio_set_value, ptr %set, align 4
  %can_sleep = getelementptr inbounds %struct.adp5588_gpio, ptr %call.i, i32 0, i32 1, i32 23
  %13 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %can_sleep, align 4
  %base = getelementptr inbounds %struct.adp5588_gpio, ptr %call.i, i32 0, i32 1, i32 19
  %14 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %base, align 4
  %parent = getelementptr inbounds %struct.adp5588_gpio, ptr %call.i, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %parent, align 4
  %tobool11.not = icmp eq ptr %1, null
  br i1 %tobool11.not, label %if.end8.if.end16_crit_edge, label %if.then12

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %18 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %base, align 4
  %names = getelementptr inbounds %struct.adp5588_gpio_platform_data, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %names to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %names, align 4
  %names14 = getelementptr inbounds %struct.adp5588_gpio, ptr %call.i, i32 0, i32 1, i32 22
  %21 = ptrtoint ptr %names14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %names14, align 4
  %pullup_dis_mask15 = getelementptr inbounds %struct.adp5588_gpio_platform_data, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %pullup_dis_mask15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pullup_dis_mask15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end8.if.end16_crit_edge
  %pullup_dis_mask.0 = phi i32 [ %23, %if.then12 ], [ 0, %if.end8.if.end16_crit_edge ]
  %ngpio = getelementptr inbounds %struct.adp5588_gpio, ptr %call.i, i32 0, i32 1, i32 20
  %24 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 18, ptr %ngpio, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %25 = ptrtoint ptr %gpio_chip to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %name, ptr %gpio_chip, align 4
  %owner = getelementptr inbounds %struct.adp5588_gpio, ptr %call.i, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %owner, align 4
  %lock = getelementptr inbounds %struct.adp5588_gpio, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @adp5588_gpio_probe.__key) #5
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %call.i161 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %28, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %cmp.i162 = icmp slt i32 %call.i161, 0
  br i1 %cmp.i162, label %adp5588_gpio_read.exit.thread, label %if.end23

adp5588_gpio_read.exit.thread:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.16) #8
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %and = and i32 %call.i161, 12
  br label %for.body

for.cond:                                         ; preds = %adp5588_gpio_write.exit186
  %inc = add nuw nsw i32 %i.0188, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end23
  %i.0188 = phi i32 [ 0, %if.end23 ], [ %inc, %for.cond.for.body_crit_edge ]
  %29 = trunc i32 %i.0188 to i8
  %conv = add i8 %29, 23
  %call.i163 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %cmp.i164 = icmp slt i32 %call.i163, 0
  br i1 %cmp.i164, label %do.end.i166, label %for.body.adp5588_gpio_read.exit167_crit_edge

for.body.adp5588_gpio_read.exit167_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %adp5588_gpio_read.exit167

do.end.i166:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #8
  br label %adp5588_gpio_read.exit167

adp5588_gpio_read.exit167:                        ; preds = %do.end.i166, %for.body.adp5588_gpio_read.exit167_crit_edge
  %conv26 = trunc i32 %call.i163 to i8
  %arrayidx = getelementptr %struct.adp5588_gpio, ptr %call.i, i32 0, i32 4, i32 %i.0188
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv26, ptr %arrayidx, align 1
  %conv28 = add i8 %29, 35
  %call.i168 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %conv28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %cmp.i169 = icmp slt i32 %call.i168, 0
  br i1 %cmp.i169, label %do.end.i171, label %adp5588_gpio_read.exit167.adp5588_gpio_read.exit172_crit_edge

adp5588_gpio_read.exit167.adp5588_gpio_read.exit172_crit_edge: ; preds = %adp5588_gpio_read.exit167
  call void @__sanitizer_cov_trace_pc() #7
  br label %adp5588_gpio_read.exit172

do.end.i171:                                      ; preds = %adp5588_gpio_read.exit167
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #8
  br label %adp5588_gpio_read.exit172

adp5588_gpio_read.exit172:                        ; preds = %do.end.i171, %adp5588_gpio_read.exit167.adp5588_gpio_read.exit172_crit_edge
  %conv30 = trunc i32 %call.i168 to i8
  %arrayidx31 = getelementptr %struct.adp5588_gpio, ptr %call.i, i32 0, i32 5, i32 %i.0188
  %31 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv30, ptr %arrayidx31, align 1
  %conv33 = add i8 %29, 29
  %call.i173 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %conv33, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i173)
  %cmp.i174 = icmp slt i32 %call.i173, 0
  br i1 %cmp.i174, label %do.end.i176, label %adp5588_gpio_read.exit172.adp5588_gpio_write.exit_crit_edge

adp5588_gpio_read.exit172.adp5588_gpio_write.exit_crit_edge: ; preds = %adp5588_gpio_read.exit172
  call void @__sanitizer_cov_trace_pc() #7
  br label %adp5588_gpio_write.exit

do.end.i176:                                      ; preds = %adp5588_gpio_read.exit172
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  br label %adp5588_gpio_write.exit

adp5588_gpio_write.exit:                          ; preds = %do.end.i176, %adp5588_gpio_read.exit172.adp5588_gpio_write.exit_crit_edge
  %conv36 = add i8 %29, 44
  %mul = shl i32 %i.0188, 3
  %shr = lshr i32 %pullup_dis_mask.0, %mul
  %conv38 = trunc i32 %shr to i8
  %call.i177 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %conv36, i8 noundef zeroext %conv38) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %cmp.i178 = icmp slt i32 %call.i177, 0
  br i1 %cmp.i178, label %do.end.i180, label %adp5588_gpio_write.exit.adp5588_gpio_write.exit181_crit_edge

adp5588_gpio_write.exit.adp5588_gpio_write.exit181_crit_edge: ; preds = %adp5588_gpio_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %adp5588_gpio_write.exit181

do.end.i180:                                      ; preds = %adp5588_gpio_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  br label %adp5588_gpio_write.exit181

adp5588_gpio_write.exit181:                       ; preds = %do.end.i180, %adp5588_gpio_write.exit.adp5588_gpio_write.exit181_crit_edge
  %or40 = or i32 %call.i177, %call.i173
  %conv42 = add i8 %29, 26
  %call.i182 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %conv42, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %cmp.i183 = icmp slt i32 %call.i182, 0
  br i1 %cmp.i183, label %do.end.i185, label %adp5588_gpio_write.exit181.adp5588_gpio_write.exit186_crit_edge

adp5588_gpio_write.exit181.adp5588_gpio_write.exit186_crit_edge: ; preds = %adp5588_gpio_write.exit181
  call void @__sanitizer_cov_trace_pc() #7
  br label %adp5588_gpio_write.exit186

do.end.i185:                                      ; preds = %adp5588_gpio_write.exit181
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  br label %adp5588_gpio_write.exit186

adp5588_gpio_write.exit186:                       ; preds = %do.end.i185, %adp5588_gpio_write.exit181.adp5588_gpio_write.exit186_crit_edge
  %or44 = or i32 %or40, %call.i182
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or44)
  %tobool45.not = icmp eq i32 %or44, 0
  br i1 %tobool45.not, label %for.cond, label %adp5588_gpio_write.exit186.cleanup_crit_edge

adp5588_gpio_write.exit186.cleanup_crit_edge:     ; preds = %adp5588_gpio_write.exit186
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool48.not = icmp eq i32 %33, 0
  br i1 %tobool48.not, label %for.end.if.end62_crit_edge, label %if.then49

for.end.if.end62_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.then49:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp50 = icmp eq i32 %and, 0
  br i1 %cmp50, label %do.end55, label %if.else

do.end55:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  br label %if.end62

if.else:                                          ; preds = %if.then49
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %dev2.i = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  %platform_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4, i32 7
  %36 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %platform_data.i.i, align 8
  %call.i.i187 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 1, i8 noundef zeroext -128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i187)
  %cmp.i.i = icmp slt i32 %call.i.i187, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.else.adp5588_gpio_write.exit.i_crit_edge

if.else.adp5588_gpio_write.exit.i_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %adp5588_gpio_write.exit.i

do.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.18) #8
  br label %adp5588_gpio_write.exit.i

adp5588_gpio_write.exit.i:                        ; preds = %do.end.i.i, %if.else.adp5588_gpio_write.exit.i_crit_edge
  %call.i39.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 2, i8 noundef zeroext -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39.i)
  %cmp.i40.i = icmp slt i32 %call.i39.i, 0
  br i1 %cmp.i40.i, label %do.end.i42.i, label %adp5588_gpio_write.exit.i.adp5588_gpio_write.exit43.i_crit_edge

adp5588_gpio_write.exit.i.adp5588_gpio_write.exit43.i_crit_edge: ; preds = %adp5588_gpio_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %adp5588_gpio_write.exit43.i

do.end.i42.i:                                     ; preds = %adp5588_gpio_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.18) #8
  br label %adp5588_gpio_write.exit43.i

adp5588_gpio_write.exit43.i:                      ; preds = %do.end.i42.i, %adp5588_gpio_write.exit.i.adp5588_gpio_write.exit43.i_crit_edge
  %irq_lock.i = getelementptr inbounds %struct.adp5588_gpio, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %irq_lock.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @adp5588_irq_setup.__key) #5
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 6
  %38 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4, i32 3
  %40 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %adp5588_gpio_write.exit43.i.dev_name.exit.i_crit_edge

adp5588_gpio_write.exit43.i.dev_name.exit.i_crit_edge: ; preds = %adp5588_gpio_write.exit43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %adp5588_gpio_write.exit43.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev2.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %adp5588_gpio_write.exit43.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %43, %if.end.i.i ], [ %41, %adp5588_gpio_write.exit43.i.dev_name.exit.i_crit_edge ]
  %call8.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev2.i, i32 noundef %39, ptr noundef null, ptr noundef nonnull @adp5588_irq_handler, i32 noundef 8322, ptr noundef %retval.0.i.i, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %adp5588_irq_setup.exit

if.end.i:                                         ; preds = %dev_name.exit.i
  %irq14.i = getelementptr inbounds %struct.adp5588_gpio, ptr %call.i, i32 0, i32 1, i32 37
  %44 = ptrtoint ptr %irq14.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @adp5588_irq_chip, ptr %irq14.i, align 4
  %parent_handler.i = getelementptr inbounds %struct.adp5588_gpio, ptr %call.i, i32 0, i32 1, i32 37, i32 13
  %45 = ptrtoint ptr %parent_handler.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %parent_handler.i, align 4
  %num_parents.i = getelementptr inbounds %struct.adp5588_gpio, ptr %call.i, i32 0, i32 1, i32 37, i32 15
  %46 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %num_parents.i, align 4
  %parents.i = getelementptr inbounds %struct.adp5588_gpio, ptr %call.i, i32 0, i32 1, i32 37, i32 16
  %47 = ptrtoint ptr %parents.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %parents.i, align 4
  %tobool15.not.i = icmp eq ptr %37, null
  br i1 %tobool15.not.i, label %if.end.i.adp5588_irq_setup.exit.thread_crit_edge, label %cond.true.i

if.end.i.adp5588_irq_setup.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %adp5588_irq_setup.exit.thread

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %irq_base.i = getelementptr inbounds %struct.adp5588_gpio_platform_data, ptr %37, i32 0, i32 2
  %48 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq_base.i, align 4
  br label %adp5588_irq_setup.exit.thread

adp5588_irq_setup.exit.thread:                    ; preds = %cond.true.i, %if.end.i.adp5588_irq_setup.exit.thread_crit_edge
  %cond.i = phi i32 [ %49, %cond.true.i ], [ 0, %if.end.i.adp5588_irq_setup.exit.thread_crit_edge ]
  %first.i = getelementptr inbounds %struct.adp5588_gpio, ptr %call.i, i32 0, i32 1, i32 37, i32 23
  %50 = ptrtoint ptr %first.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %cond.i, ptr %first.i, align 4
  %default_type.i = getelementptr inbounds %struct.adp5588_gpio, ptr %call.i, i32 0, i32 1, i32 37, i32 10
  %51 = ptrtoint ptr %default_type.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %default_type.i, align 4
  %handler.i = getelementptr inbounds %struct.adp5588_gpio, ptr %call.i, i32 0, i32 1, i32 37, i32 9
  %52 = ptrtoint ptr %handler.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @handle_simple_irq, ptr %handler.i, align 4
  %init_hw.i = getelementptr inbounds %struct.adp5588_gpio, ptr %call.i, i32 0, i32 1, i32 37, i32 20
  %53 = ptrtoint ptr %init_hw.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @adp5588_irq_init_hw, ptr %init_hw.i, align 4
  %threaded.i = getelementptr inbounds %struct.adp5588_gpio, ptr %call.i, i32 0, i32 1, i32 37, i32 18
  %54 = ptrtoint ptr %threaded.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %threaded.i, align 4
  br label %if.end62

adp5588_irq_setup.exit:                           ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.21, i32 noundef %56) #8
  br label %cleanup

if.end62:                                         ; preds = %adp5588_irq_setup.exit.thread, %do.end55, %for.end.if.end62_crit_edge
  %call65 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef %gpio_chip, ptr noundef nonnull %call.i, ptr noundef nonnull @adp5588_gpio_probe.lock_key, ptr noundef nonnull @adp5588_gpio_probe.request_key) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end68:                                         ; preds = %if.end62
  br i1 %tobool11.not, label %if.end68.if.end85_crit_edge, label %land.lhs.true

if.end68.if.end85_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

land.lhs.true:                                    ; preds = %if.end68
  %setup = getelementptr inbounds %struct.adp5588_gpio_platform_data, ptr %1, i32 0, i32 4
  %57 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %setup, align 4
  %tobool70.not = icmp eq ptr %58, null
  br i1 %tobool70.not, label %land.lhs.true.if.end85_crit_edge, label %if.then71

land.lhs.true.if.end85_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

if.then71:                                        ; preds = %land.lhs.true
  %59 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %base, align 4
  %61 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %ngpio, align 4
  %conv75 = zext i16 %62 to i32
  %context = getelementptr inbounds %struct.adp5588_gpio_platform_data, ptr %1, i32 0, i32 6
  %63 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %context, align 4
  %call76 = tail call i32 %58(ptr noundef %client, i32 noundef %60, i32 noundef %conv75, ptr noundef %64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %do.end82, label %if.then71.if.end85_crit_edge

if.then71.if.end85_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

do.end82:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call76) #8
  br label %if.end85

if.end85:                                         ; preds = %do.end82, %if.then71.if.end85_crit_edge, %land.lhs.true.if.end85_crit_edge, %if.end68.if.end85_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %65 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.end62.cleanup_crit_edge, %adp5588_irq_setup.exit, %adp5588_gpio_write.exit186.cleanup_crit_edge, %adp5588_gpio_read.exit.thread, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end85 ], [ -5, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call8.i, %adp5588_irq_setup.exit ], [ %call65, %if.end62.cleanup_crit_edge ], [ %call.i161, %adp5588_gpio_read.exit.thread ], [ %or44, %adp5588_gpio_write.exit186.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5588_gpio_direction_input(ptr noundef %chip, i32 noundef %off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %shr = lshr i32 %off, 3
  %lock = getelementptr inbounds %struct.adp5588_gpio, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %and = and i32 %off, 7
  %shl = shl nuw nsw i32 1, %and
  %arrayidx = getelementptr %struct.adp5588_gpio, ptr %call, i32 0, i32 5, i32 %shr
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = trunc i32 %shl to i8
  %3 = xor i8 %2, -1
  %conv2 = and i8 %1, %3
  store i8 %conv2, ptr %arrayidx, align 1
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %6 = trunc i32 %shr to i8
  %conv3 = add i8 %6, 35
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv3, i8 noundef zeroext %conv2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.adp5588_gpio_write.exit_crit_edge

entry.adp5588_gpio_write.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %adp5588_gpio_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.18) #8
  br label %adp5588_gpio_write.exit

adp5588_gpio_write.exit:                          ; preds = %do.end.i, %entry.adp5588_gpio_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5588_gpio_direction_output(ptr noundef %chip, i32 noundef %off, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %shr = lshr i32 %off, 3
  %and = and i32 %off, 7
  %shl = shl nuw nsw i32 1, %and
  %lock = getelementptr inbounds %struct.adp5588_gpio, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %arrayidx = getelementptr %struct.adp5588_gpio, ptr %call, i32 0, i32 5, i32 %shr
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = trunc i32 %shl to i8
  %conv1 = or i8 %1, %2
  store i8 %conv1, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %arrayidx7 = getelementptr %struct.adp5588_gpio, ptr %call, i32 0, i32 4, i32 %shr
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx7, align 1
  %5 = xor i8 %2, -1
  %conv10 = and i8 %4, %5
  %conv5 = or i8 %4, %2
  %conv10.sink = select i1 %tobool.not, i8 %conv10, i8 %conv5
  store i8 %conv10.sink, ptr %arrayidx7, align 1
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %8 = trunc i32 %shr to i8
  %conv11 = add i8 %8, 23
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext %conv11, i8 noundef zeroext %conv10.sink) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.adp5588_gpio_write.exit_crit_edge

entry.adp5588_gpio_write.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %adp5588_gpio_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.18) #8
  br label %adp5588_gpio_write.exit

adp5588_gpio_write.exit:                          ; preds = %do.end.i, %entry.adp5588_gpio_write.exit_crit_edge
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  %conv17 = add i8 %8, 35
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %call.i41 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext %conv17, i8 noundef zeroext %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %cmp.i42 = icmp slt i32 %call.i41, 0
  br i1 %cmp.i42, label %do.end.i44, label %adp5588_gpio_write.exit.adp5588_gpio_write.exit45_crit_edge

adp5588_gpio_write.exit.adp5588_gpio_write.exit45_crit_edge: ; preds = %adp5588_gpio_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %adp5588_gpio_write.exit45

do.end.i44:                                       ; preds = %adp5588_gpio_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i43 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i43, ptr noundef nonnull @.str.18) #8
  br label %adp5588_gpio_write.exit45

adp5588_gpio_write.exit45:                        ; preds = %do.end.i44, %adp5588_gpio_write.exit.adp5588_gpio_write.exit45_crit_edge
  %or21 = or i32 %call.i41, %call.i
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %or21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5588_gpio_get_value(ptr noundef %chip, i32 noundef %off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %shr = lshr i32 %off, 3
  %and = and i32 %off, 7
  %shl = shl nuw nsw i32 1, %and
  %lock = getelementptr inbounds %struct.adp5588_gpio, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %arrayidx = getelementptr %struct.adp5588_gpio, ptr %call, i32 0, i32 5, i32 %shr
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %and1 = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx2 = getelementptr %struct.adp5588_gpio, ptr %call, i32 0, i32 4, i32 %shr
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %6 = trunc i32 %shr to i8
  %conv4 = add i8 %6, 20
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext %conv4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.16) #8
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.else.if.end_crit_edge, %if.then
  %val.0 = phi i32 [ %conv3, %if.then ], [ %call.i, %if.else.if.end_crit_edge ], [ %call.i, %do.end.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  %7 = lshr i32 %val.0, %and
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adp5588_gpio_set_value(ptr noundef %chip, i32 noundef %off, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %shr = lshr i32 %off, 3
  %and = and i32 %off, 7
  %shl = shl nuw nsw i32 1, %and
  %lock = getelementptr inbounds %struct.adp5588_gpio, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %arrayidx3 = getelementptr %struct.adp5588_gpio, ptr %call, i32 0, i32 4, i32 %shr
  %0 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx3, align 1
  %2 = trunc i32 %shl to i8
  %3 = xor i8 %2, -1
  %conv6 = and i8 %1, %3
  %conv1 = or i8 %1, %2
  %conv6.sink = select i1 %tobool.not, i8 %conv6, i8 %conv1
  store i8 %conv6.sink, ptr %arrayidx3, align 1
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %6 = trunc i32 %shr to i8
  %conv7 = add i8 %6, 23
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv7, i8 noundef zeroext %conv6.sink) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.adp5588_gpio_write.exit_crit_edge

entry.adp5588_gpio_write.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %adp5588_gpio_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.18) #8
  br label %adp5588_gpio_write.exit

adp5588_gpio_write.exit:                          ; preds = %do.end.i, %entry.adp5588_gpio_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5588_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %devid) #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devid, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.adp5588_gpio_read.exit_crit_edge

entry.adp5588_gpio_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %adp5588_gpio_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.16) #8
  br label %adp5588_gpio_read.exit

adp5588_gpio_read.exit:                           ; preds = %do.end.i, %entry.adp5588_gpio_read.exit_crit_edge
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %adp5588_gpio_read.exit.if.end25_crit_edge, label %if.then

adp5588_gpio_read.exit.if.end25_crit_edge:        ; preds = %adp5588_gpio_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then:                                          ; preds = %adp5588_gpio_read.exit
  %2 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devid, align 4
  %call.i45 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %cmp.i46 = icmp slt i32 %call.i45, 0
  br i1 %cmp.i46, label %adp5588_gpio_read.exit49.thread, label %adp5588_gpio_read.exit49

adp5588_gpio_read.exit49.thread:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i47 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i47, ptr noundef nonnull @.str.16) #8
  br label %if.end25

adp5588_gpio_read.exit49:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %cmp.not = icmp eq i32 %call.i45, 0
  br i1 %cmp.not, label %adp5588_gpio_read.exit49.if.end25_crit_edge, label %for.cond.preheader

adp5588_gpio_read.exit49.if.end25_crit_edge:      ; preds = %adp5588_gpio_read.exit49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.cond.preheader:                               ; preds = %adp5588_gpio_read.exit49
  %and4 = and i32 %call.i45, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp561.not = icmp eq i32 %and4, 0
  br i1 %cmp561.not, label %for.cond.preheader.if.end25_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end25_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %domain = getelementptr inbounds %struct.adp5588_gpio, ptr %devid, i32 0, i32 1, i32 37, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devid, align 4
  %6 = trunc i32 %i.062 to i8
  %conv = add i8 %6, 4
  %call.i50 = call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %cmp.i51 = icmp slt i32 %call.i50, 0
  br i1 %cmp.i51, label %do.end.i53, label %for.body.adp5588_gpio_read.exit54_crit_edge

for.body.adp5588_gpio_read.exit54_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %adp5588_gpio_read.exit54

do.end.i53:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i52 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i52, ptr noundef nonnull @.str.16) #8
  br label %adp5588_gpio_read.exit54

adp5588_gpio_read.exit54:                         ; preds = %do.end.i53, %for.body.adp5588_gpio_read.exit54_crit_edge
  %and8 = and i32 %call.i50, 127
  %sub = add nsw i32 %and8, -97
  %and9 = and i32 %call.i50, 128
  %shr = ashr i32 %sub, 3
  %and10 = and i32 %sub, 7
  %shl = shl nuw nsw i32 1, %and10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool11.not = icmp eq i32 %and9, 0
  br i1 %tobool11.not, label %land.lhs.true16.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %adp5588_gpio_read.exit54
  %arrayidx = getelementptr %struct.adp5588_gpio, ptr %devid, i32 0, i32 7, i32 %shr
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv12 = zext i8 %8 to i32
  %and13 = and i32 %shl, %conv12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.then21_crit_edge

land.lhs.true.if.then21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true16.critedge:                         ; preds = %adp5588_gpio_read.exit54
  %arrayidx17 = getelementptr %struct.adp5588_gpio, ptr %devid, i32 0, i32 6, i32 %shr
  %9 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %10 to i32
  %and19 = and i32 %shl, %conv18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %land.lhs.true16.critedge.if.end_crit_edge, label %land.lhs.true16.critedge.if.then21_crit_edge

land.lhs.true16.critedge.if.then21_crit_edge:     ; preds = %land.lhs.true16.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21

land.lhs.true16.critedge.if.end_crit_edge:        ; preds = %land.lhs.true16.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then21:                                        ; preds = %land.lhs.true16.critedge.if.then21_crit_edge, %land.lhs.true.if.then21_crit_edge
  %11 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #5
  %13 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %irq.i, align 4, !annotation !77
  %call.i55 = call ptr @__irq_resolve_mapping(ptr noundef %12, i32 noundef %sub, ptr noundef nonnull %irq.i) #5
  %tobool.not.i = icmp eq ptr %call.i55, null
  br i1 %tobool.not.i, label %if.then21.irq_find_mapping.exit_crit_edge, label %if.then.i

if.then21.irq_find_mapping.exit_crit_edge:        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %if.then21.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %15, %if.then.i ], [ 0, %if.then21.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #5
  call void @handle_nested_irq(i32 noundef %retval.0.i) #5
  br label %if.end

if.end:                                           ; preds = %irq_find_mapping.exit, %land.lhs.true16.critedge.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, %and4
  br i1 %exitcond.not, label %if.end.if.end25_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.end25:                                         ; preds = %if.end.if.end25_crit_edge, %for.cond.preheader.if.end25_crit_edge, %adp5588_gpio_read.exit49.if.end25_crit_edge, %adp5588_gpio_read.exit49.thread, %adp5588_gpio_read.exit.if.end25_crit_edge
  %16 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %devid, align 4
  %conv27 = trunc i32 %call.i to i8
  %call.i56 = call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 2, i8 noundef zeroext %conv27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %cmp.i57 = icmp slt i32 %call.i56, 0
  br i1 %cmp.i57, label %do.end.i59, label %if.end25.adp5588_gpio_write.exit_crit_edge

if.end25.adp5588_gpio_write.exit_crit_edge:       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %adp5588_gpio_write.exit

do.end.i59:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i58 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i58, ptr noundef nonnull @.str.18) #8
  br label %adp5588_gpio_write.exit

adp5588_gpio_write.exit:                          ; preds = %do.end.i59, %if.end25.adp5588_gpio_write.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5588_irq_init_hw(ptr noundef %gc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext -111) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.adp5588_gpio_write.exit_crit_edge

entry.adp5588_gpio_write.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %adp5588_gpio_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.18) #8
  br label %adp5588_gpio_write.exit

adp5588_gpio_write.exit:                          ; preds = %do.end.i, %entry.adp5588_gpio_write.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adp5588_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %and = and i32 %3, 7
  %shl = shl nuw nsw i32 1, %and
  %shr = lshr i32 %3, 3
  %arrayidx = getelementptr %struct.adp5588_gpio, ptr %call1, i32 0, i32 9, i32 %shr
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = trunc i32 %shl to i8
  %7 = xor i8 %6, -1
  %conv4 = and i8 %5, %7
  store i8 %conv4, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adp5588_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %and = and i32 %3, 7
  %shl = shl nuw nsw i32 1, %and
  %shr = lshr i32 %3, 3
  %arrayidx = getelementptr %struct.adp5588_gpio, ptr %call1, i32 0, i32 9, i32 %shr
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = trunc i32 %shl to i8
  %conv3 = or i8 %5, %6
  store i8 %conv3, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5588_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %conv2 = lshr i32 %3, 3
  %4 = and i32 %conv2, 8191
  %and = and i32 %3, 7
  %shl = shl nuw nsw i32 1, %and
  %arrayidx = getelementptr %struct.adp5588_gpio, ptr %call1, i32 0, i32 6, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = trunc i32 %shl to i8
  %8 = xor i8 %7, -1
  %conv6 = and i8 %6, %8
  store i8 %conv6, ptr %arrayidx, align 1
  %arrayidx8 = getelementptr %struct.adp5588_gpio, ptr %call1, i32 0, i32 7, i32 %4
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx8, align 1
  %conv11 = and i8 %10, %8
  %11 = and i32 %type, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  %conv18 = select i1 %12, i8 0, i8 %7
  %storemerge = or i8 %conv11, %conv18
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %storemerge, ptr %arrayidx8, align 1
  %14 = and i32 %type, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %entry.if.end30_crit_edge, label %if.then24

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then24:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv29 = or i8 %6, %7
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv29, ptr %arrayidx, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %entry.if.end30_crit_edge
  %arrayidx31 = getelementptr %struct.adp5588_gpio, ptr %call1, i32 0, i32 10, i32 %4
  %17 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx31, align 1
  %conv34 = or i8 %18, %7
  store i8 %conv34, ptr %arrayidx31, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adp5588_irq_bus_lock(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %irq_lock = getelementptr inbounds %struct.adp5588_gpio, ptr %call1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %irq_lock, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adp5588_irq_bus_sync_unlock(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %lock = getelementptr inbounds %struct.adp5588_gpio, ptr %call1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.064 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.adp5588_gpio, ptr %call1, i32 0, i32 10, i32 %i.064
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %for.body
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %neg = xor i8 %5, -1
  %arrayidx4 = getelementptr %struct.adp5588_gpio, ptr %call1, i32 0, i32 5, i32 %i.064
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4, align 1
  %and = and i8 %7, %neg
  store i8 %and, ptr %arrayidx4, align 1
  store i8 0, ptr %arrayidx, align 1
  %8 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call1, align 4
  %10 = trunc i32 %i.064 to i8
  %conv9 = add i8 %10, 35
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext %conv9, i8 noundef zeroext %and) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.adp5588_gpio_write.exit_crit_edge

if.then.adp5588_gpio_write.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %adp5588_gpio_write.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.18) #8
  br label %adp5588_gpio_write.exit

adp5588_gpio_write.exit:                          ; preds = %do.end.i, %if.then.adp5588_gpio_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %if.end

if.end:                                           ; preds = %adp5588_gpio_write.exit, %for.body.if.end_crit_edge
  %arrayidx14 = getelementptr %struct.adp5588_gpio, ptr %call1, i32 0, i32 8, i32 %i.064
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx14, align 1
  %arrayidx16 = getelementptr %struct.adp5588_gpio, ptr %call1, i32 0, i32 9, i32 %i.064
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx16, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %tobool18.not = icmp eq i8 %12, %14
  br i1 %tobool18.not, label %if.end.for.inc_crit_edge, label %if.then19

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then19:                                        ; preds = %if.end
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx14, align 1
  %16 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call1, align 4
  %18 = trunc i32 %i.064 to i8
  %conv26 = add i8 %18, 32
  %call.i59 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext %conv26, i8 noundef zeroext %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %cmp.i60 = icmp slt i32 %call.i59, 0
  br i1 %cmp.i60, label %do.end.i62, label %if.then19.for.inc_crit_edge

if.then19.for.inc_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end.i62:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i61 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i61, ptr noundef nonnull @.str.18) #8
  br label %for.inc

for.inc:                                          ; preds = %do.end.i62, %if.then19.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %irq_lock = getelementptr inbounds %struct.adp5588_gpio, ptr %call1, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %irq_lock) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !32, !33, !34, !35, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !57, !58, !59, !60, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_gpio_adp5588__288_467_adp5588_gpio_driver_init6, !1, !"__initcall__kmod_gpio_adp5588__288_467_adp5588_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-adp5588.c", i32 467, i32 1}
!2 = !{ptr @__exitcall_adp5588_gpio_driver_exit, !1, !"__exitcall_adp5588_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-adp5588.c", i32 469, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-adp5588.c", i32 470, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-adp5588.c", i32 471, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-adp5588.c", i32 459, i32 11}
!12 = !{ptr @adp5588_gpio_driver, !13, !"adp5588_gpio_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-adp5588.c", i32 457, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-adp5588.c", i32 432, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @adp5588_gpio_remove._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @adp5588_gpio_remove._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpio/gpio-adp5588.c", i32 347, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @adp5588_gpio_probe._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @adp5588_gpio_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @adp5588_gpio_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/gpio/gpio-adp5588.c", i32 376, i32 2}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpio-adp5588.c", i32 397, i32 4}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @adp5588_gpio_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @adp5588_gpio_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @adp5588_gpio_probe.lock_key, !36, !"lock_key", i1 false, i1 false}
!36 = !{!"../drivers/gpio/gpio-adp5588.c", i32 405, i32 8}
!37 = !{ptr @adp5588_gpio_probe.request_key, !36, !"request_key", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpio/gpio-adp5588.c", i32 412, i32 4}
!40 = !{ptr @adp5588_gpio_probe._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @adp5588_gpio_probe._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpio/gpio-adp5588.c", i32 50, i32 3}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @adp5588_gpio_read._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @adp5588_gpio_read._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpio/gpio-adp5588.c", i32 60, i32 3}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @adp5588_gpio_write._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @adp5588_gpio_write._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @adp5588_irq_setup.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/gpio/gpio-adp5588.c", i32 297, i32 2}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpio/gpio-adp5588.c", i32 304, i32 3}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @adp5588_irq_setup._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @adp5588_irq_setup._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpio/gpio-adp5588.c", i32 232, i32 12}
!62 = !{ptr @adp5588_irq_chip, !63, !"adp5588_irq_chip", i1 false, i1 false}
!63 = !{!"../drivers/gpio/gpio-adp5588.c", i32 231, i32 24}
!64 = !{ptr @adp5588_gpio_of_id, !65, !"adp5588_gpio_of_id", i1 false, i1 false}
!65 = !{!"../drivers/gpio/gpio-adp5588.c", i32 450, i32 34}
!66 = !{ptr @adp5588_gpio_id, !67, !"adp5588_gpio_id", i1 false, i1 false}
!67 = !{!"../drivers/gpio/gpio-adp5588.c", i32 443, i32 35}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"auto-init"}
