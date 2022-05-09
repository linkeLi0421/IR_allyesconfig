; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-adnp.c_pt.bc'
source_filename = "../drivers/gpio/gpio-adnp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.adnp = type { ptr, %struct.gpio_chip, i32, %struct.mutex, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.86, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.86 = type { ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_gpio_adnp__288_541_adnp_i2c_driver_init6 = internal global ptr @adnp_i2c_driver_init, section ".initcall6.init", align 4
@adnp_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @adnp_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adnp_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adnp_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adnp_i2c_driver_exit = internal global ptr @adnp_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [57 x i8] c"gpio_adnp.description=Avionic Design N-bit GPIO expander\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [67 x i8] c"gpio_adnp.author=Thierry Reding <thierry.reding@avionic-design.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [38 x i8] c"gpio_adnp.file=drivers/gpio/gpio-adnp\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [22 x i8] c"gpio_adnp.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio-adnp\00", [22 x i8] zeroinitializer }, align 32
@adnp_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ad,gpio-adnp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@adnp_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"gpio-adnp\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nr-gpios\00", [23 x i8] zeroinitializer }, align 32
@adnp_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&adnp->i2c_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"interrupt-controller\00", [43 x i8] zeroinitializer }, align 32
@adnp_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adnp_irq_mask, ptr null, ptr @adnp_irq_unmask, ptr null, ptr null, ptr null, ptr @adnp_irq_set_type, ptr null, ptr @adnp_irq_bus_lock, ptr @adnp_irq_bus_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@adnp_gpio_setup.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@adnp_gpio_setup.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@adnp_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 43, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s failed: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"adnp_read\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/gpio/gpio-adnp.c\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adnp_read._entry_ptr = internal global ptr @adnp_read._entry, section ".printk_index", align 4
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"i2c_smbus_read_byte_data()\00", [37 x i8] zeroinitializer }, align 32
@adnp_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.10, ptr @.str.6, i32 58, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"adnp_write\00", [21 x i8] zeroinitializer }, align 32
@adnp_write._entry_ptr = internal global ptr @adnp_write._entry, section ".printk_index", align 4
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"i2c_smbus_write_byte_data()\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"input \00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"low \00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"output\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enabled \00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pending\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%2u: %s %s IRQ %s %s\0A\00", [42 x i8] zeroinitializer }, align 32
@adnp_irq_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&adnp->irq_lock\00", [16 x i8] zeroinitializer }, align 32
@adnp_irq_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.6, i32 433, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't request IRQ#%d: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adnp_irq_setup\00", [17 x i8] zeroinitializer }, align 32
@adnp_irq_setup._entry_ptr = internal global ptr @adnp_irq_setup._entry, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"adnp_i2c_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 533, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 535, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"adnp_of_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 527, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [12 x i8] c"adnp_i2c_id\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 521, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 496, i32 33 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 508, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 512, i32 30 }
@___asan_gen_.48 = private unnamed_addr constant [14 x i8] c"adnp_irq_chip\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 374, i32 24 }
@___asan_gen_.51 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 481, i32 8 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 42, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 57, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 213, i32 28 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 214, i32 24 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 215, i32 28 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 216, i32 26 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 219, i32 17 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 222, i32 13 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 225, i32 17 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 228, i32 15 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 230, i32 18 }
@___asan_gen_.114 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 389, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [28 x i8] c"../drivers/gpio/gpio-adnp.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 432, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_adnp_i2c_driver_exit, ptr @__initcall__kmod_gpio_adnp__288_541_adnp_i2c_driver_init6, ptr @adnp_i2c_driver_exit, ptr @adnp_irq_setup._entry, ptr @adnp_irq_setup._entry_ptr, ptr @adnp_read._entry, ptr @adnp_read._entry_ptr, ptr @adnp_write._entry, ptr @adnp_write._entry_ptr, ptr @adnp_i2c_driver, ptr @.str, ptr @adnp_of_match, ptr @adnp_i2c_id, ptr @.str.1, ptr @adnp_i2c_probe.__key, ptr @.str.2, ptr @.str.3, ptr @adnp_irq_chip, ptr @adnp_gpio_setup.lock_key, ptr @adnp_gpio_setup.request_key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @adnp_irq_setup.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adnp_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adnp_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adnp_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adnp_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adnp_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adnp_gpio_setup.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adnp_gpio_setup.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adnp_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adnp_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adnp_irq_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adnp_irq_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adnp_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adnp_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adnp_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @adnp_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adnp_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %num_gpios = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_gpios) #6
  %2 = ptrtoint ptr %num_gpios to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %num_gpios, align 4, !annotation !79
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %num_gpios, i32 noundef 1, i32 noundef 0) #6
  %3 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call1, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 564, i32 noundef 3520) #6
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %do.body

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end4
  %i2c_lock = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 3
  call void @__mutex_init(ptr noundef %i2c_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @adnp_i2c_probe.__key) #6
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %client, ptr %call.i, align 4
  %6 = ptrtoint ptr %num_gpios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_gpios, align 4
  %call.i33 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i33, null
  %gpio.i = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 0
  br i1 %cmp.i.i, label %do.body.get_count_order.exit.i_crit_edge, label %if.end.i.i

do.body.get_count_order.exit.i_crit_edge:         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_count_order.exit.i

if.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i.i = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i, 0
  %8 = call i32 @llvm.ctlz.i32(i32 %dec.i.i, i1 true) #6, !range !80
  %sub.i.i.op.i = sub nsw i32 29, %8
  %phi.bo.i = select i1 %tobool.not.i.i.i, i32 -3, i32 %sub.i.i.op.i
  br label %get_count_order.exit.i

get_count_order.exit.i:                           ; preds = %if.end.i.i, %do.body.get_count_order.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %phi.bo.i, %if.end.i.i ], [ -4, %do.body.get_count_order.exit.i_crit_edge ]
  %reg_shift.i = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %retval.0.i.i, ptr %reg_shift.i, align 4
  %direction_input.i = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 1, i32 8
  %10 = ptrtoint ptr %direction_input.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @adnp_gpio_direction_input, ptr %direction_input.i, align 4
  %direction_output.i = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 1, i32 9
  %11 = ptrtoint ptr %direction_output.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @adnp_gpio_direction_output, ptr %direction_output.i, align 4
  %get.i = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 1, i32 10
  %12 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @adnp_gpio_get, ptr %get.i, align 4
  %set.i = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 1, i32 12
  %13 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @adnp_gpio_set, ptr %set.i, align 4
  %can_sleep.i = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 1, i32 23
  %14 = ptrtoint ptr %can_sleep.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %can_sleep.i, align 4
  %dbg_show.i = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 1, i32 16
  %15 = ptrtoint ptr %dbg_show.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @adnp_gpio_dbg_show, ptr %dbg_show.i, align 4
  %base.i = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 1, i32 19
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %base.i, align 4
  %conv.i = trunc i32 %7 to i16
  %ngpio.i = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 1, i32 20
  %17 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %ngpio.i, align 4
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %name.i, ptr %gpio.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  %parent.i = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev.i, ptr %parent.i, align 4
  %owner.i = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %owner.i, align 4
  br i1 %tobool.i.not, label %get_count_order.exit.i.adnp_gpio_setup.exit_crit_edge, label %if.then.i

get_count_order.exit.i.adnp_gpio_setup.exit_crit_edge: ; preds = %get_count_order.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adnp_gpio_setup.exit

if.then.i:                                        ; preds = %get_count_order.exit.i
  %shl.i.i = shl nuw nsw i32 1, %retval.0.i.i
  %irq_lock.i.i = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 4
  call void @__mutex_init(ptr noundef %irq_lock.i.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @adnp_irq_setup.__key) #6
  %23 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shl.i.i, i32 6) #6
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %devm_kcalloc.exit.thread.i.i, label %devm_kcalloc.exit.i.i, !prof !81

devm_kcalloc.exit.thread.i.i:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq_enable99.i.i = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 5
  %25 = ptrtoint ptr %irq_enable99.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %irq_enable99.i.i, align 4
  br label %cleanup

devm_kcalloc.exit.i.i:                            ; preds = %if.then.i
  %26 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent.i, align 4
  %28 = extractvalue { i32, i1 } %23, 0
  %call5.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %27, i32 noundef %28, i32 noundef 3520) #6
  %irq_enable.i.i = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 5
  %29 = ptrtoint ptr %irq_enable.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call5.i.i.i.i, ptr %irq_enable.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool.not.i.i, label %devm_kcalloc.exit.i.i.cleanup_crit_edge, label %if.end.i43.i

devm_kcalloc.exit.i.i.cleanup_crit_edge:          ; preds = %devm_kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i43.i:                                     ; preds = %devm_kcalloc.exit.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call5.i.i.i.i, i32 %shl.i.i
  %irq_level.i.i = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 6
  %30 = ptrtoint ptr %irq_level.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i.i, ptr %irq_level.i.i, align 4
  %mul4.i.i = shl nuw nsw i32 %shl.i.i, 1
  %add.ptr5.i.i = getelementptr i8, ptr %call5.i.i.i.i, i32 %mul4.i.i
  %irq_rise.i.i = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 7
  %31 = ptrtoint ptr %irq_rise.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr5.i.i, ptr %irq_rise.i.i, align 4
  %mul7.i.i = shl nuw nsw i32 3, %retval.0.i.i
  %add.ptr8.i.i = getelementptr i8, ptr %call5.i.i.i.i, i32 %mul7.i.i
  %irq_fall.i.i = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 8
  %32 = ptrtoint ptr %irq_fall.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr8.i.i, ptr %irq_fall.i.i, align 4
  %mul10.i.i = shl nuw i32 %shl.i.i, 2
  %add.ptr11.i.i = getelementptr i8, ptr %call5.i.i.i.i, i32 %mul10.i.i
  %irq_high.i.i = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 9
  %33 = ptrtoint ptr %irq_high.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr11.i.i, ptr %irq_high.i.i, align 4
  %mul13.i.i = shl nuw i32 5, %retval.0.i.i
  %add.ptr14.i.i = getelementptr i8, ptr %call5.i.i.i.i, i32 %mul13.i.i
  %irq_low.i.i = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 10
  %34 = ptrtoint ptr %irq_low.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr14.i.i, ptr %irq_low.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end28.i.i.for.body.i.i_crit_edge, %if.end.i43.i
  %i.0106.i.i = phi i32 [ 0, %if.end.i43.i ], [ %inc.i.i, %if.end28.i.i.for.body.i.i_crit_edge ]
  %35 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_shift.i, align 4
  %shl16.i.i = shl nuw i32 1, %36
  %add.i.i = add i32 %shl16.i.i, %i.0106.i.i
  %37 = ptrtoint ptr %irq_level.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %irq_level.i.i, align 4
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %conv.i.i.i = trunc i32 %add.i.i to i8
  %call.i.i.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %40, i8 noundef zeroext %conv.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %adnp_read.exit.thread.i.i, label %if.end21.i.i

adnp_read.exit.thread.i.i:                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %parent.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, i32 noundef %call.i.i.i) #9
  br label %cleanup

if.end21.i.i:                                     ; preds = %for.body.i.i
  %arrayidx.i.i = getelementptr i8, ptr %38, i32 %i.0106.i.i
  %conv2.i.i.i = trunc i32 %call.i.i.i to i8
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv2.i.i.i, ptr %arrayidx.i.i, align 1
  %44 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %reg_shift.i, align 4
  %shl23.i.i = shl i32 2, %45
  %add24.i.i = add i32 %shl23.i.i, %i.0106.i.i
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  %conv.i90.i.i = trunc i32 %add24.i.i to i8
  %call.i91.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %47, i8 noundef zeroext %conv.i90.i.i, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91.i.i)
  %cmp.i92.i.i = icmp slt i32 %call.i91.i.i, 0
  br i1 %cmp.i92.i.i, label %adnp_write.exit.thread.i.i, label %if.end28.i.i

adnp_write.exit.thread.i.i:                       ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %parent.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11, i32 noundef %call.i91.i.i) #9
  br label %cleanup

if.end28.i.i:                                     ; preds = %if.end21.i.i
  %50 = ptrtoint ptr %irq_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %irq_enable.i.i, align 4
  %arrayidx30.i.i = getelementptr i8, ptr %51, i32 %i.0106.i.i
  %52 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %arrayidx30.i.i, align 1
  %inc.i.i = add nuw i32 %i.0106.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %shl.i.i
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %if.end28.i.i.for.body.i.i_crit_edge

if.end28.i.i.for.body.i.i_crit_edge:              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %if.end28.i.i
  %53 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %parent.i, align 4
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 4
  %irq.i.i = getelementptr inbounds %struct.i2c_client, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %irq.i.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 3
  %59 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i44.i = icmp eq ptr %60, null
  br i1 %tobool.not.i.i44.i, label %if.end.i96.i.i, label %for.end.i.i.dev_name.exit.i.i_crit_edge

for.end.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i.i

if.end.i96.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %54, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i96.i.i, %for.end.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i97.i.i = phi ptr [ %62, %if.end.i96.i.i ], [ %60, %for.end.i.i.dev_name.exit.i.i_crit_edge ]
  %call34.i.i = call i32 @devm_request_threaded_irq(ptr noundef %54, i32 noundef %58, ptr noundef null, ptr noundef nonnull @adnp_irq, i32 noundef 8193, ptr noundef %retval.0.i97.i.i, ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i)
  %cmp35.not.i.i = icmp eq i32 %call34.i.i, 0
  br i1 %cmp35.not.i.i, label %if.end.i, label %do.end39.i.i

do.end39.i.i:                                     ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %parent.i, align 4
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call.i, align 4
  %irq42.i.i = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 6
  %67 = ptrtoint ptr %irq42.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %irq42.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.22, i32 noundef %68, i32 noundef %call34.i.i) #9
  br label %cleanup

if.end.i:                                         ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq.i = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 1, i32 37
  %69 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @adnp_irq_chip, ptr %irq.i, align 4
  %parent_handler.i = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 1, i32 37, i32 13
  %70 = ptrtoint ptr %parent_handler.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %parent_handler.i, align 4
  %num_parents.i = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 1, i32 37, i32 15
  %71 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %num_parents.i, align 4
  %parents.i = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 1, i32 37, i32 16
  %72 = ptrtoint ptr %parents.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %parents.i, align 4
  %default_type.i = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 1, i32 37, i32 10
  %73 = ptrtoint ptr %default_type.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %default_type.i, align 4
  %handler.i = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 1, i32 37, i32 9
  %74 = ptrtoint ptr %handler.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @handle_simple_irq, ptr %handler.i, align 4
  %threaded.i = getelementptr inbounds %struct.adnp, ptr %call.i, i32 0, i32 1, i32 37, i32 18
  %75 = ptrtoint ptr %threaded.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %threaded.i, align 4
  br label %adnp_gpio_setup.exit

adnp_gpio_setup.exit:                             ; preds = %if.end.i, %get_count_order.exit.i.adnp_gpio_setup.exit_crit_edge
  %76 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call.i, align 4
  %dev8.i = getelementptr inbounds %struct.i2c_client, ptr %77, i32 0, i32 4
  %call9.i = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev8.i, ptr noundef %gpio.i, ptr noundef %call.i, ptr noundef nonnull @adnp_gpio_setup.lock_key, ptr noundef nonnull @adnp_gpio_setup.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool13.not = icmp eq i32 %call9.i, 0
  br i1 %tobool13.not, label %if.end15, label %adnp_gpio_setup.exit.cleanup_crit_edge

adnp_gpio_setup.exit.cleanup_crit_edge:           ; preds = %adnp_gpio_setup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %adnp_gpio_setup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %78 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %adnp_gpio_setup.exit.cleanup_crit_edge, %do.end39.i.i, %adnp_write.exit.thread.i.i, %adnp_read.exit.thread.i.i, %devm_kcalloc.exit.i.i.cleanup_crit_edge, %devm_kcalloc.exit.thread.i.i, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ %3, %entry.cleanup_crit_edge ], [ -517, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %call9.i, %adnp_gpio_setup.exit.cleanup_crit_edge ], [ %call34.i.i, %do.end39.i.i ], [ -12, %devm_kcalloc.exit.i.i.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread.i.i ], [ %call.i.i.i, %adnp_read.exit.thread.i.i ], [ %call.i91.i.i, %adnp_write.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_gpios) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adnp_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %reg_shift = getelementptr inbounds %struct.adnp, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_shift, align 4
  %shr = lshr i32 %offset, %1
  %i2c_lock = getelementptr inbounds %struct.adnp, ptr %call, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #6
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %conv.i = trunc i32 %shr to i8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %adnp_read.exit.thread, label %if.end

adnp_read.exit.thread:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent.i = getelementptr inbounds %struct.adnp, ptr %call, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, i32 noundef %call.i) #9
  br label %out

if.end:                                           ; preds = %entry
  %conv2.i = trunc i32 %call.i to i8
  %and = and i32 %offset, 7
  %shl3 = shl nuw nsw i32 1, %and
  %6 = trunc i32 %shl3 to i8
  %7 = xor i8 %6, -1
  %conv5 = and i8 %conv2.i, %7
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  %call.i44 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext %conv.i, i8 noundef zeroext %conv5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %cmp.i45 = icmp slt i32 %call.i44, 0
  br i1 %cmp.i45, label %adnp_write.exit.thread, label %if.end13

adnp_write.exit.thread:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %parent.i46 = getelementptr inbounds %struct.adnp, ptr %call, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %parent.i46 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i46, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11, i32 noundef %call.i44) #9
  br label %out

if.end13:                                         ; preds = %if.end
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  %call.i50 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %cmp.i51 = icmp slt i32 %call.i50, 0
  br i1 %cmp.i51, label %adnp_read.exit57.thread, label %if.end21

adnp_read.exit57.thread:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %parent.i52 = getelementptr inbounds %struct.adnp, ptr %call, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %parent.i52 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i52, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, i32 noundef %call.i50) #9
  br label %out

if.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %and24 = and i32 %shl3, %call.i50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool.not = icmp ne i32 %and24, 0
  %. = sext i1 %tobool.not to i32
  br label %out

out:                                              ; preds = %if.end21, %adnp_read.exit57.thread, %adnp_write.exit.thread, %adnp_read.exit.thread
  %err.0 = phi i32 [ %., %if.end21 ], [ %call.i, %adnp_read.exit.thread ], [ %call.i44, %adnp_write.exit.thread ], [ %call.i50, %adnp_read.exit57.thread ]
  tail call void @mutex_unlock(ptr noundef %i2c_lock) #6
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adnp_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %reg_shift = getelementptr inbounds %struct.adnp, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_shift, align 4
  %shr = lshr i32 %offset, %1
  %i2c_lock = getelementptr inbounds %struct.adnp, ptr %call, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #6
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %conv.i = trunc i32 %shr to i8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %adnp_read.exit.thread, label %if.end

adnp_read.exit.thread:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent.i = getelementptr inbounds %struct.adnp, ptr %call, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, i32 noundef %call.i) #9
  br label %out

if.end:                                           ; preds = %entry
  %and = and i32 %offset, 7
  %shl3 = shl nuw nsw i32 1, %and
  %conv468 = or i32 %call.i, %shl3
  %conv4 = trunc i32 %conv468 to i8
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %call.i45 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext %conv.i, i8 noundef zeroext %conv4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %cmp.i46 = icmp slt i32 %call.i45, 0
  br i1 %cmp.i46, label %adnp_write.exit.thread, label %if.end12

adnp_write.exit.thread:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %parent.i47 = getelementptr inbounds %struct.adnp, ptr %call, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %parent.i47 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i47, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11, i32 noundef %call.i45) #9
  br label %out

if.end12:                                         ; preds = %if.end
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %call.i51 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %cmp.i52 = icmp slt i32 %call.i51, 0
  br i1 %cmp.i52, label %adnp_read.exit58.thread, label %if.end20

adnp_read.exit58.thread:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %parent.i53 = getelementptr inbounds %struct.adnp, ptr %call, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %parent.i53 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i53, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, i32 noundef %call.i51) #9
  br label %out

if.end20:                                         ; preds = %if.end12
  %and23 = and i32 %shl3, %call.i51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool.not = icmp eq i32 %and23, 0
  br i1 %tobool.not, label %if.end20.out_crit_edge, label %if.end25

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @__adnp_gpio_set(ptr noundef %call, i32 noundef %offset, i32 noundef %value)
  br label %out

out:                                              ; preds = %if.end25, %if.end20.out_crit_edge, %adnp_read.exit58.thread, %adnp_write.exit.thread, %adnp_read.exit.thread
  %err.0 = phi i32 [ 0, %if.end25 ], [ -1, %if.end20.out_crit_edge ], [ %call.i, %adnp_read.exit.thread ], [ %call.i45, %adnp_write.exit.thread ], [ %call.i51, %adnp_read.exit58.thread ]
  tail call void @mutex_unlock(ptr noundef %i2c_lock) #6
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adnp_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %reg_shift = getelementptr inbounds %struct.adnp, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_shift, align 4
  %shr = lshr i32 %offset, %1
  %shl = shl nuw i32 1, %1
  %add = add i32 %shl, %shr
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %conv.i = trunc i32 %add to i8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %adnp_read.exit.thread, label %if.end

adnp_read.exit.thread:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent.i = getelementptr inbounds %struct.adnp, ptr %call, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %offset, 7
  %conv = and i32 %call.i, 255
  %6 = lshr i32 %conv, %and
  %7 = and i32 %6, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %adnp_read.exit.thread
  %retval.0 = phi i32 [ %7, %if.end ], [ %call.i, %adnp_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adnp_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %i2c_lock = getelementptr inbounds %struct.adnp, ptr %call, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #6
  tail call fastcc void @__adnp_gpio_set(ptr noundef %call, i32 noundef %offset, i32 noundef %value)
  tail call void @mutex_unlock(ptr noundef %i2c_lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adnp_gpio_dbg_show(ptr noundef %s, ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %reg_shift = getelementptr inbounds %struct.adnp, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_shift, align 4
  %i2c_lock = getelementptr inbounds %struct.adnp, ptr %call, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc57.for.body_crit_edge, %entry
  %i.0146 = phi i32 [ 0, %entry ], [ %inc58, %for.inc57.for.body_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #6
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %conv.i = trunc i32 %i.0146 to i8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %for.body.unlock_crit_edge, label %if.end

for.body.unlock_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_shift, align 4
  %shl6 = shl nuw i32 1, %5
  %add7 = add i32 %shl6, %i.0146
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %conv.i95 = trunc i32 %add7 to i8
  %call.i96 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext %conv.i95) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %cmp.i97 = icmp slt i32 %call.i96, 0
  br i1 %cmp.i97, label %if.end.unlock_crit_edge, label %if.end11

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end11:                                         ; preds = %if.end
  %8 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_shift, align 4
  %shl13 = shl i32 2, %9
  %add14 = add i32 %shl13, %i.0146
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %conv.i104 = trunc i32 %add14 to i8
  %call.i105 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext %conv.i104) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %cmp.i106 = icmp slt i32 %call.i105, 0
  br i1 %cmp.i106, label %if.end11.unlock_crit_edge, label %if.end18

if.end11.unlock_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end18:                                         ; preds = %if.end11
  %12 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_shift, align 4
  %shl20 = shl i32 3, %13
  %add21 = add i32 %shl20, %i.0146
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  %conv.i113 = trunc i32 %add21 to i8
  %call.i114 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %15, i8 noundef zeroext %conv.i113) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %cmp.i115 = icmp slt i32 %call.i114, 0
  br i1 %cmp.i115, label %if.end18.unlock_crit_edge, label %if.end25

if.end18.unlock_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end25:                                         ; preds = %if.end18
  tail call void @mutex_unlock(ptr noundef %i2c_lock) #6
  br label %for.body29

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %if.end25
  %j.0145 = phi i32 [ 0, %if.end25 ], [ %inc, %for.body29.for.body29_crit_edge ]
  %16 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg_shift, align 4
  %shl31 = shl i32 %i.0146, %17
  %add32 = add i32 %shl31, %j.0145
  %shl33 = shl nuw nsw i32 1, %j.0145
  %conv = and i32 %shl33, 255
  %and = and i32 %conv, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, ptr @.str.12, ptr @.str.16
  %and38 = and i32 %conv, %call.i96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %level.0 = select i1 %tobool39.not, ptr @.str.13, ptr @.str.17
  %and44 = and i32 %conv, %call.i105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %interrupt.0 = select i1 %tobool45.not, ptr @.str.14, ptr @.str.18
  %and50 = and i32 %conv, %call.i114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %pending.0 = select i1 %tobool51.not, ptr @.str.15, ptr @.str.19
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.20, i32 noundef %add32, ptr noundef nonnull %spec.select, ptr noundef nonnull %level.0, ptr noundef nonnull %interrupt.0, ptr noundef nonnull %pending.0) #6
  %inc = add nuw nsw i32 %j.0145, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc57, label %for.body29.for.body29_crit_edge

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body29

for.inc57:                                        ; preds = %for.body29
  %inc58 = add i32 %i.0146, 1
  %i.0.highbits = lshr i32 %inc58, %1
  %cmp = icmp eq i32 %i.0.highbits, 0
  br i1 %cmp, label %for.inc57.for.body_crit_edge, label %for.inc57.cleanup61_crit_edge

for.inc57.cleanup61_crit_edge:                    ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup61

for.inc57.for.body_crit_edge:                     ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

unlock:                                           ; preds = %if.end18.unlock_crit_edge, %if.end11.unlock_crit_edge, %if.end.unlock_crit_edge, %for.body.unlock_crit_edge
  %call.i.lcssa.sink = phi i32 [ %call.i, %for.body.unlock_crit_edge ], [ %call.i96, %if.end.unlock_crit_edge ], [ %call.i105, %if.end11.unlock_crit_edge ], [ %call.i114, %if.end18.unlock_crit_edge ]
  %parent.i = getelementptr inbounds %struct.adnp, ptr %call, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, i32 noundef %call.i.lcssa.sink) #9
  tail call void @mutex_unlock(ptr noundef %i2c_lock) #6
  br label %cleanup61

cleanup61:                                        ; preds = %unlock, %for.inc57.cleanup61_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__adnp_gpio_set(ptr nocapture noundef readonly %adnp, i32 noundef %offset, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_shift = getelementptr inbounds %struct.adnp, ptr %adnp, i32 0, i32 2
  %0 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_shift, align 4
  %shr = lshr i32 %offset, %1
  %and = and i32 %offset, 7
  %shl = shl nuw i32 1, %1
  %add = add i32 %shl, %shr
  %2 = ptrtoint ptr %adnp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adnp, align 4
  %conv.i = trunc i32 %add to i8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %adnp_read.exit.thread, label %if.end

adnp_read.exit.thread:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent.i = getelementptr inbounds %struct.adnp, ptr %adnp, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %shl3 = shl nuw nsw i32 1, %and
  %conv434 = or i32 %call.i, %shl3
  %conv4 = trunc i32 %conv434 to i8
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv2.i = trunc i32 %call.i to i8
  %shl5 = shl nuw nsw i32 1, %and
  %6 = trunc i32 %shl5 to i8
  %7 = xor i8 %6, -1
  %conv8 = and i8 %conv2.i, %7
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then2
  %storemerge = phi i8 [ %conv8, %if.else ], [ %conv4, %if.then2 ]
  %8 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_shift, align 4
  %shl11 = shl nuw i32 1, %9
  %add12 = add i32 %shl11, %shr
  %10 = ptrtoint ptr %adnp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adnp, align 4
  %conv.i24 = trunc i32 %add12 to i8
  %call.i25 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext %conv.i24, i8 noundef zeroext %storemerge) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %cmp.i26 = icmp slt i32 %call.i25, 0
  br i1 %cmp.i26, label %do.end.i28, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i28:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %parent.i27 = getelementptr inbounds %struct.adnp, ptr %adnp, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %parent.i27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11, i32 noundef %call.i25) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end.i28, %if.end9.cleanup_crit_edge, %adnp_read.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adnp_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  %pending = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_shift = getelementptr inbounds %struct.adnp, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_shift, align 4
  %i2c_lock = getelementptr inbounds %struct.adnp, ptr %data, i32 0, i32 3
  %irq_level = getelementptr inbounds %struct.adnp, ptr %data, i32 0, i32 6
  %irq_fall = getelementptr inbounds %struct.adnp, ptr %data, i32 0, i32 8
  %irq_rise = getelementptr inbounds %struct.adnp, ptr %data, i32 0, i32 7
  %irq_high = getelementptr inbounds %struct.adnp, ptr %data, i32 0, i32 9
  %irq_low = getelementptr inbounds %struct.adnp, ptr %data, i32 0, i32 10
  %domain = getelementptr inbounds %struct.adnp, ptr %data, i32 0, i32 1, i32 37, i32 1
  %parent.i120 = getelementptr inbounds %struct.adnp, ptr %data, i32 0, i32 1, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.0141 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %2 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_shift, align 4
  %shl2 = shl i32 %i.0141, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pending) #6
  %4 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pending, align 4, !annotation !79
  call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #6
  %5 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_shift, align 4
  %shl4 = shl nuw i32 1, %6
  %add = add i32 %shl4, %i.0141
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %conv.i = trunc i32 %add to i8
  %call.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %for.body.cleanup.sink.split_crit_edge, label %if.end

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %for.body
  %conv2.i = trunc i32 %call.i to i8
  %9 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_shift, align 4
  %shl8 = shl i32 3, %10
  %add9 = add i32 %shl8, %i.0141
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %conv.i108 = trunc i32 %add9 to i8
  %call.i109 = call i32 @i2c_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext %conv.i108) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %cmp.i110 = icmp slt i32 %call.i109, 0
  br i1 %cmp.i110, label %if.end.cleanup.sink.split_crit_edge, label %if.end14

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end14:                                         ; preds = %if.end
  %13 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg_shift, align 4
  %shl16 = shl i32 2, %14
  %add17 = add i32 %shl16, %i.0141
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %conv.i117 = trunc i32 %add17 to i8
  %call.i118 = call i32 @i2c_smbus_read_byte_data(ptr noundef %16, i8 noundef zeroext %conv.i117) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %cmp.i119 = icmp slt i32 %call.i118, 0
  br i1 %cmp.i119, label %if.end14.cleanup.sink.split_crit_edge, label %if.end22

if.end14.cleanup.sink.split_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end22:                                         ; preds = %if.end14
  call void @mutex_unlock(ptr noundef %i2c_lock) #6
  %conv = and i32 %call.i, 255
  %17 = ptrtoint ptr %irq_level to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %irq_level, align 4
  %arrayidx = getelementptr i8, ptr %18, i32 %i.0141
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %xor104 = xor i8 %20, %conv2.i
  %conv26 = zext i8 %xor104 to i32
  %21 = ptrtoint ptr %irq_fall to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq_fall, align 4
  %arrayidx27 = getelementptr i8, ptr %22, i32 %i.0141
  %23 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %24 to i32
  %neg = xor i32 %conv, -1
  %and = and i32 %conv28, %neg
  %25 = ptrtoint ptr %irq_rise to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %irq_rise, align 4
  %arrayidx30 = getelementptr i8, ptr %26, i32 %i.0141
  %27 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx30, align 1
  %and33105 = and i8 %28, %conv2.i
  %and33 = zext i8 %and33105 to i32
  %or = or i32 %and, %and33
  %and34 = and i32 %or, %conv26
  %29 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and34, ptr %pending, align 4
  %30 = ptrtoint ptr %irq_high to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %irq_high, align 4
  %arrayidx35 = getelementptr i8, ptr %31, i32 %i.0141
  %32 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx35, align 1
  %and38106 = and i8 %33, %conv2.i
  %and38 = zext i8 %and38106 to i32
  %34 = ptrtoint ptr %irq_low to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %irq_low, align 4
  %arrayidx39 = getelementptr i8, ptr %35, i32 %i.0141
  %36 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %37 to i32
  %and43 = and i32 %conv40, %neg
  %or44 = or i32 %and34, %and38
  %or45 = or i32 %or44, %and43
  %and48 = and i32 %call.i109, %call.i118
  %and49 = and i32 %and48, %or45
  store i32 %and49, ptr %pending, align 4
  %call50 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef 8, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call50)
  %cmp52139 = icmp ult i32 %call50, 8
  br i1 %cmp52139, label %if.end22.for.body54_crit_edge, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.for.body54_crit_edge:                    ; preds = %if.end22
  br label %for.body54

for.body54:                                       ; preds = %irq_find_mapping.exit.for.body54_crit_edge, %if.end22.for.body54_crit_edge
  %bit.0140 = phi i32 [ %call59, %irq_find_mapping.exit.for.body54_crit_edge ], [ %call50, %if.end22.for.body54_crit_edge ]
  %38 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %domain, align 4
  %add56 = add i32 %bit.0140, %shl2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %40 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %irq.i, align 4, !annotation !79
  %call.i126 = call ptr @__irq_resolve_mapping(ptr noundef %39, i32 noundef %add56, ptr noundef nonnull %irq.i) #6
  %tobool.not.i = icmp eq ptr %call.i126, null
  br i1 %tobool.not.i, label %for.body54.irq_find_mapping.exit_crit_edge, label %if.then.i

for.body54.irq_find_mapping.exit_crit_edge:       ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %for.body54.irq_find_mapping.exit_crit_edge
  %retval.0.i127 = phi i32 [ %42, %if.then.i ], [ 0, %for.body54.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  call void @handle_nested_irq(i32 noundef %retval.0.i127) #6
  %add58 = add nuw nsw i32 %bit.0140, 1
  %call59 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef 8, i32 noundef %add58) #6
  %cmp52 = icmp ult i32 %call59, 8
  br i1 %cmp52, label %irq_find_mapping.exit.for.body54_crit_edge, label %irq_find_mapping.exit.cleanup_crit_edge

irq_find_mapping.exit.cleanup_crit_edge:          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

irq_find_mapping.exit.for.body54_crit_edge:       ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body54

cleanup.sink.split:                               ; preds = %if.end14.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %for.body.cleanup.sink.split_crit_edge
  %call.i118.sink = phi i32 [ %call.i, %for.body.cleanup.sink.split_crit_edge ], [ %call.i109, %if.end.cleanup.sink.split_crit_edge ], [ %call.i118, %if.end14.cleanup.sink.split_crit_edge ]
  %43 = ptrtoint ptr %parent.i120 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %parent.i120, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, i32 noundef %call.i118.sink) #9
  call void @mutex_unlock(ptr noundef %i2c_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %irq_find_mapping.exit.cleanup_crit_edge, %if.end22.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pending) #6
  %inc = add i32 %i.0141, 1
  %i.0.highbits = lshr i32 %inc, %1
  %cmp = icmp eq i32 %i.0.highbits, 0
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %for.end68

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end68:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adnp_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
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
  %reg_shift = getelementptr inbounds %struct.adnp, ptr %call1, i32 0, i32 2
  %4 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_shift, align 4
  %shr = lshr i32 %3, %5
  %and = and i32 %3, 7
  %shl = shl nuw nsw i32 1, %and
  %irq_enable = getelementptr inbounds %struct.adnp, ptr %call1, i32 0, i32 5
  %6 = ptrtoint ptr %irq_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_enable, align 4
  %arrayidx = getelementptr i8, ptr %7, i32 %shr
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = trunc i32 %shl to i8
  %11 = xor i8 %10, -1
  %conv4 = and i8 %9, %11
  store i8 %conv4, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adnp_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
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
  %reg_shift = getelementptr inbounds %struct.adnp, ptr %call1, i32 0, i32 2
  %4 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_shift, align 4
  %shr = lshr i32 %3, %5
  %and = and i32 %3, 7
  %shl = shl nuw nsw i32 1, %and
  %irq_enable = getelementptr inbounds %struct.adnp, ptr %call1, i32 0, i32 5
  %6 = ptrtoint ptr %irq_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_enable, align 4
  %arrayidx = getelementptr i8, ptr %7, i32 %shr
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = trunc i32 %shl to i8
  %conv3 = or i8 %9, %10
  store i8 %conv3, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adnp_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
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
  %reg_shift = getelementptr inbounds %struct.adnp, ptr %call1, i32 0, i32 2
  %4 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_shift, align 4
  %shr = lshr i32 %3, %5
  %and = and i32 %3, 7
  %and3 = and i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  %shl5 = shl nuw nsw i32 1, %and
  %irq_rise6 = getelementptr inbounds %struct.adnp, ptr %call1, i32 0, i32 7
  %6 = ptrtoint ptr %irq_rise6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_rise6, align 4
  %arrayidx7 = getelementptr i8, ptr %7, i32 %shr
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7, align 1
  %10 = trunc i32 %shl5 to i8
  %11 = xor i8 %10, -1
  %conv10 = and i8 %9, %11
  %conv4 = or i8 %9, %10
  %conv10.sink = select i1 %tobool.not, i8 %conv10, i8 %conv4
  store i8 %conv10.sink, ptr %arrayidx7, align 1
  %and11 = and i32 %type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %shl20 = shl nuw nsw i32 1, %and
  %irq_fall22 = getelementptr inbounds %struct.adnp, ptr %call1, i32 0, i32 8
  %12 = ptrtoint ptr %irq_fall22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_fall22, align 4
  %arrayidx23 = getelementptr i8, ptr %13, i32 %shr
  %14 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx23, align 1
  %16 = trunc i32 %shl20 to i8
  %17 = xor i8 %16, -1
  %conv26 = and i8 %15, %17
  %conv18 = or i8 %15, %16
  %conv26.sink = select i1 %tobool12.not, i8 %conv26, i8 %conv18
  store i8 %conv26.sink, ptr %arrayidx23, align 1
  %and28 = and i32 %type, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %shl37 = shl nuw nsw i32 1, %and
  %irq_high39 = getelementptr inbounds %struct.adnp, ptr %call1, i32 0, i32 9
  %18 = ptrtoint ptr %irq_high39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irq_high39, align 4
  %arrayidx40 = getelementptr i8, ptr %19, i32 %shr
  %20 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx40, align 1
  %22 = trunc i32 %shl37 to i8
  %23 = xor i8 %22, -1
  %conv43 = and i8 %21, %23
  %conv35 = or i8 %21, %22
  %conv43.sink = select i1 %tobool29.not, i8 %conv43, i8 %conv35
  store i8 %conv43.sink, ptr %arrayidx40, align 1
  %and45 = and i32 %type, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %shl54 = shl nuw nsw i32 1, %and
  %irq_low56 = getelementptr inbounds %struct.adnp, ptr %call1, i32 0, i32 10
  %24 = ptrtoint ptr %irq_low56 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %irq_low56, align 4
  %arrayidx57 = getelementptr i8, ptr %25, i32 %shr
  %26 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx57, align 1
  %28 = trunc i32 %shl54 to i8
  %29 = xor i8 %28, -1
  %conv60 = and i8 %27, %29
  %conv52 = or i8 %27, %28
  %conv60.sink = select i1 %tobool46.not, i8 %conv60, i8 %conv52
  store i8 %conv60.sink, ptr %arrayidx57, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adnp_irq_bus_lock(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %irq_lock = getelementptr inbounds %struct.adnp, ptr %call1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %irq_lock, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adnp_irq_bus_unlock(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %reg_shift = getelementptr inbounds %struct.adnp, ptr %call1, i32 0, i32 2
  %2 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_shift, align 4
  %i2c_lock = getelementptr inbounds %struct.adnp, ptr %call1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #6
  %irq_enable = getelementptr inbounds %struct.adnp, ptr %call1, i32 0, i32 5
  %parent.i = getelementptr inbounds %struct.adnp, ptr %call1, i32 0, i32 1, i32 2
  br label %for.body

for.body:                                         ; preds = %adnp_write.exit.for.body_crit_edge, %entry
  %i.015 = phi i32 [ 0, %entry ], [ %inc, %adnp_write.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_shift, align 4
  %shl3 = shl i32 2, %5
  %add = add i32 %shl3, %i.015
  %6 = ptrtoint ptr %irq_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_enable, align 4
  %arrayidx = getelementptr i8, ptr %7, i32 %i.015
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call1, align 4
  %conv.i = trunc i32 %add to i8
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext %conv.i, i8 noundef zeroext %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %for.body.adnp_write.exit_crit_edge

for.body.adnp_write.exit_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %adnp_write.exit

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11, i32 noundef %call.i) #9
  br label %adnp_write.exit

adnp_write.exit:                                  ; preds = %do.end.i, %for.body.adnp_write.exit_crit_edge
  %inc = add i32 %i.015, 1
  %i.0.highbits = lshr i32 %inc, %3
  %cmp = icmp eq i32 %i.0.highbits, 0
  br i1 %cmp, label %adnp_write.exit.for.body_crit_edge, label %for.end

adnp_write.exit.for.body_crit_edge:               ; preds = %adnp_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %adnp_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %i2c_lock) #6
  %irq_lock = getelementptr inbounds %struct.adnp, ptr %call1, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %irq_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !24, !26, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !61, !62, !63, !64, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_gpio_adnp__288_541_adnp_i2c_driver_init6, !1, !"__initcall__kmod_gpio_adnp__288_541_adnp_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-adnp.c", i32 541, i32 1}
!2 = !{ptr @__exitcall_adnp_i2c_driver_exit, !1, !"__exitcall_adnp_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-adnp.c", i32 543, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-adnp.c", i32 544, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-adnp.c", i32 545, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-adnp.c", i32 535, i32 11}
!12 = !{ptr @adnp_i2c_driver, !13, !"adnp_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-adnp.c", i32 533, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-adnp.c", i32 496, i32 33}
!16 = !{ptr @adnp_i2c_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-adnp.c", i32 508, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpio/gpio-adnp.c", i32 512, i32 30}
!21 = !{ptr @adnp_gpio_setup.lock_key, !22, !"lock_key", i1 false, i1 false}
!22 = !{!"../drivers/gpio/gpio-adnp.c", i32 481, i32 8}
!23 = !{ptr @adnp_gpio_setup.request_key, !22, !"request_key", i1 false, i1 false}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpio/gpio-adnp.c", i32 42, i32 3}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @adnp_read._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @adnp_read._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpio/gpio-adnp.c", i32 57, i32 3}
!35 = !{ptr @adnp_write._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @adnp_write._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpio/gpio-adnp.c", i32 213, i32 28}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpio/gpio-adnp.c", i32 214, i32 24}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpio/gpio-adnp.c", i32 215, i32 28}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpio/gpio-adnp.c", i32 216, i32 26}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpio/gpio-adnp.c", i32 219, i32 17}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpio/gpio-adnp.c", i32 222, i32 13}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpio/gpio-adnp.c", i32 225, i32 17}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpio/gpio-adnp.c", i32 228, i32 15}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpio/gpio-adnp.c", i32 230, i32 18}
!56 = !{ptr @adnp_irq_setup.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/gpio/gpio-adnp.c", i32 389, i32 2}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpio/gpio-adnp.c", i32 432, i32 3}
!61 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @adnp_irq_setup._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @adnp_irq_setup._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @adnp_irq_chip, !65, !"adnp_irq_chip", i1 false, i1 false}
!65 = !{!"../drivers/gpio/gpio-adnp.c", i32 374, i32 24}
!66 = !{ptr @adnp_of_match, !67, !"adnp_of_match", i1 false, i1 false}
!67 = !{!"../drivers/gpio/gpio-adnp.c", i32 527, i32 34}
!68 = !{ptr @adnp_i2c_id, !69, !"adnp_i2c_id", i1 false, i1 false}
!69 = !{!"../drivers/gpio/gpio-adnp.c", i32 521, i32 35}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"auto-init"}
!80 = !{i32 0, i32 33}
!81 = !{!"branch_weights", i32 1, i32 2000}
