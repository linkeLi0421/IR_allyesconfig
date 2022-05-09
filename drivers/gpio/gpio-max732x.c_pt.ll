; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-max732x.c_pt.bc'
source_filename = "../drivers/gpio/gpio-max732x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.atomic_t = type { i32 }
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
%struct.max732x_chip = type { %struct.gpio_chip, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.mutex, [2 x i8], %struct.mutex, i8, i8, i8, i8, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.86, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.86 = type { ptr }
%struct.max732x_platform_data = type { i32, i32, ptr, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_gpio_max732x__292_754_max732x_init4 = internal global ptr @max732x_init, section ".initcall4.init", align 4
@max732x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max732x_probe, ptr @max732x_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max732x_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max732x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max732x_exit = internal global ptr @max732x_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [54 x i8] c"gpio_max732x.author=Eric Miao <eric.miao@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [58 x i8] c"gpio_max732x.description=GPIO expander driver for MAX732X\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [44 x i8] c"gpio_max732x.file=drivers/gpio/gpio-max732x\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [25 x i8] c"gpio_max732x.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max732x\00", [24 x i8] zeroinitializer }, align 32
@max732x_of_table = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max7319\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max7320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max7321\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max7322\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max7323\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max7324\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max7325\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max7326\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max7327\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@max732x_id = internal constant { [10 x %struct.i2c_device_id], [48 x i8] } { [10 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max7319\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"max7320\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"max7321\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"max7322\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"max7323\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"max7324\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"max7325\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"max7326\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"max7327\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max732x_probe.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -98, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpio_max732x\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max732x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/gpio/gpio-max732x.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@max732x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 656, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate I2C device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max732x_probe._entry_ptr = internal global ptr @max732x_probe._entry, section ".printk_index", align 4
@max732x_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 669, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@max732x_probe._entry_ptr.9 = internal global ptr @max732x_probe._entry.8, section ".printk_index", align 4
@max732x_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 677, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"invalid I2C address specified %02x\0A\00", [60 x i8] zeroinitializer }, align 32
@max732x_probe._entry_ptr.12 = internal global ptr @max732x_probe._entry.10, section ".printk_index", align 4
@max732x_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 683, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to allocate second group I2C device\0A\00", [52 x i8] zeroinitializer }, align 32
@max732x_probe._entry_ptr.15 = internal global ptr @max732x_probe._entry.13, section ".printk_index", align 4
@max732x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@max732x_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max732x_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max732x_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 710, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"setup failed, %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@max732x_probe._entry_ptr.20 = internal global ptr @max732x_probe._entry.17, section ".printk_index", align 4
@max732x_features = internal constant { [9 x i64], [56 x i8] } { [9 x i64] [i64 12884945578, i64 1431633920, i64 4295032831, i64 12884925093, i64 8589959157, i64 14316579498, i64 5726666751, i64 14316559013, i64 5726625781], [56 x i8] zeroinitializer }, align 32
@max732x_gpio_direction_input.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 64, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"max732x_gpio_direction_input\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s port %d is output only\0A\00", [37 x i8] zeroinitializer }, align 32
@max732x_gpio_direction_output.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 70, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"max732x_gpio_direction_output\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s port %d is input only\0A\00", [38 x i8] zeroinitializer }, align 32
@max732x_writeb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 166, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"failed writing\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max732x_writeb\00", [17 x i8] zeroinitializer }, align 32
@max732x_writeb._entry_ptr = internal global ptr @max732x_writeb._entry, section ".printk_index", align 4
@max732x_readb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 181, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"failed reading\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max732x_readb\00", [18 x i8] zeroinitializer }, align 32
@max732x_readb._entry_ptr = internal global ptr @max732x_readb._entry, section ".printk_index", align 4
@max732x_irq_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->irq_lock\00", [16 x i8] zeroinitializer }, align 32
@max732x_irq_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 519, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max732x_irq_setup\00", [46 x i8] zeroinitializer }, align 32
@max732x_irq_setup._entry_ptr = internal global ptr @max732x_irq_setup._entry, section ".printk_index", align 4
@max732x_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max732x_irq_mask, ptr null, ptr @max732x_irq_unmask, ptr null, ptr null, ptr null, ptr @max732x_irq_set_type, ptr @max732x_irq_set_wake, ptr @max732x_irq_bus_lock, ptr @max732x_irq_bus_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@max732x_readw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.32, ptr @.str.3, i32 311, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max732x_readw\00", [18 x i8] zeroinitializer }, align 32
@max732x_readw._entry_ptr = internal global ptr @max732x_readw._entry, section ".printk_index", align 4
@max732x_irq_set_type.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.3, ptr @.str.22, i8 0, i8 100, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max732x_irq_set_type\00", [43 x i8] zeroinitializer }, align 32
@max732x_irq_set_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.33, ptr @.str.3, i32 407, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"irq %d: unsupported type %d\0A\00", [35 x i8] zeroinitializer }, align 32
@max732x_irq_set_type._entry_ptr = internal global ptr @max732x_irq_set_type._entry, section ".printk_index", align 4
@max732x_writew._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.35, ptr @.str.3, i32 298, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max732x_writew\00", [17 x i8] zeroinitializer }, align 32
@max732x_writew._entry_ptr = internal global ptr @max732x_writew._entry, section ".printk_index", align 4
@max732x_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 729, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s failed, %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max732x_remove\00", [17 x i8] zeroinitializer }, align 32
@max732x_remove._entry_ptr = internal global ptr @max732x_remove._entry, section ".printk_index", align 4
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"teardown\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 80, i64 96]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.41 = private unnamed_addr constant [15 x i8] c"max732x_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 737, i32 26 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 739, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"max732x_of_table\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 118, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"max732x_id\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 103, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 633, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 655, i32 5 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 668, i32 5 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 676, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 682, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 687, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 702, i32 8 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 710, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"max732x_features\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 91, i32 17 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 258, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 280, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 166, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 181, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 511, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 518, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"max732x_irq_chip\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 432, i32 24 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 311, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 400, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 406, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 298, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.195 = private constant [31 x i8] c"../drivers/gpio/gpio-max732x.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 728, i32 4 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_max732x_exit, ptr @__initcall__kmod_gpio_max732x__292_754_max732x_init4, ptr @max732x_exit, ptr @max732x_irq_set_type._entry, ptr @max732x_irq_set_type._entry_ptr, ptr @max732x_irq_setup._entry, ptr @max732x_irq_setup._entry_ptr, ptr @max732x_probe._entry, ptr @max732x_probe._entry.10, ptr @max732x_probe._entry.13, ptr @max732x_probe._entry.17, ptr @max732x_probe._entry.8, ptr @max732x_probe._entry_ptr, ptr @max732x_probe._entry_ptr.12, ptr @max732x_probe._entry_ptr.15, ptr @max732x_probe._entry_ptr.20, ptr @max732x_probe._entry_ptr.9, ptr @max732x_readb._entry, ptr @max732x_readb._entry_ptr, ptr @max732x_readw._entry, ptr @max732x_readw._entry_ptr, ptr @max732x_remove._entry, ptr @max732x_remove._entry_ptr, ptr @max732x_writeb._entry, ptr @max732x_writeb._entry_ptr, ptr @max732x_writew._entry, ptr @max732x_writew._entry_ptr, ptr @max732x_driver, ptr @.str, ptr @max732x_of_table, ptr @max732x_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.11, ptr @.str.14, ptr @max732x_probe.__key, ptr @.str.16, ptr @max732x_probe.lock_key, ptr @max732x_probe.request_key, ptr @.str.18, ptr @.str.19, ptr @max732x_features, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @max732x_irq_setup.__key, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @max732x_irq_chip, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max732x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max732x_of_table to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max732x_id to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max732x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max732x_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max732x_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max732x_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max732x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max732x_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max732x_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max732x_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max732x_features to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max732x_writeb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max732x_readb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max732x_irq_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max732x_irq_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max732x_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max732x_readw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max732x_irq_set_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max732x_writew._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max732x_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max732x_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max732x_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max732x_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @max732x_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max732x_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.do.body_crit_edge, label %if.then

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %land.lhs.true
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.do.body_crit_edge, label %if.end.i

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %call.i.i, align 4
  br label %if.end15

do.body:                                          ; preds = %if.then.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max732x_probe.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max732x_probe, %cleanup)) #6
          to label %if.then12 [label %cleanup], !srcloc !113

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max732x_probe.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.end15:                                         ; preds = %if.end.i, %entry.if.end15_crit_edge
  %pdata.0 = phi ptr [ %1, %entry.if.end15_crit_edge ], [ %call.i.i, %if.end.i ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 572, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %client20 = getelementptr inbounds %struct.max732x_chip, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %client20 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %client, ptr %client20, align 4
  %6 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pdata.0, align 4
  %driver_data.i = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_data.i, align 4
  %arrayidx.i = getelementptr [9 x i64], ptr @max732x_features, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx.i, align 8
  %conv.i = trunc i64 %11 to i32
  %dir_output5.i = getelementptr inbounds %struct.max732x_chip, ptr %call.i, i32 0, i32 7
  %dir_input7.i = getelementptr inbounds %struct.max732x_chip, ptr %call.i, i32 0, i32 6
  %mask_group_a.i = getelementptr inbounds %struct.max732x_chip, ptr %call.i, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end19
  %port.058.i = phi i32 [ 0, %if.end19 ], [ %port.1.i, %cleanup.i.for.body.i_crit_edge ]
  %i.056.i = phi i32 [ 0, %if.end19 ], [ %inc12.i, %cleanup.i.for.body.i_crit_edge ]
  %id_data.055.i = phi i32 [ %conv.i, %if.end19 ], [ %shr.i, %cleanup.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %port.058.i
  %and.i = and i32 %id_data.055.i, 3
  %12 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %for.body.i.cleanup.i_crit_edge [
    i32 1, label %for.body.i.sw.epilog.i_crit_edge
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb4.i
  ]

for.body.i.sw.epilog.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

sw.bb2.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %dir_output5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dir_output5.i, align 4
  %or6.i = or i32 %14, %shl.i
  store i32 %or6.i, ptr %dir_output5.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb4.i, %sw.bb2.i, %for.body.i.sw.epilog.i_crit_edge
  %dir_input7.sink59.i = phi ptr [ %dir_input7.i, %sw.bb4.i ], [ %dir_input7.i, %sw.bb2.i ], [ %dir_output5.i, %for.body.i.sw.epilog.i_crit_edge ]
  %15 = ptrtoint ptr %dir_input7.sink59.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dir_input7.sink59.i, align 4
  %or8.i = or i32 %16, %shl.i
  store i32 %or8.i, ptr %dir_input7.sink59.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.056.i)
  %cmp9.i = icmp ult i32 %i.056.i, 8
  br i1 %cmp9.i, label %if.then.i, label %sw.epilog.i.if.end.i205_crit_edge

sw.epilog.i.if.end.i205_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i205

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %mask_group_a.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mask_group_a.i, align 4
  %or11.i = or i32 %18, %shl.i
  store i32 %or11.i, ptr %mask_group_a.i, align 4
  br label %if.end.i205

if.end.i205:                                      ; preds = %if.then.i, %sw.epilog.i.if.end.i205_crit_edge
  %inc.i = add i32 %port.058.i, 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i205, %for.body.i.cleanup.i_crit_edge
  %port.1.i = phi i32 [ %inc.i, %if.end.i205 ], [ %port.058.i, %for.body.i.cleanup.i_crit_edge ]
  %inc12.i = add nuw nsw i32 %i.056.i, 1
  %shr.i = lshr i32 %id_data.055.i, 2
  %exitcond.not.i = icmp eq i32 %inc12.i, 16
  br i1 %exitcond.not.i, label %for.end.i, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i
  %19 = ptrtoint ptr %dir_input7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dir_input7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i206 = icmp eq i32 %20, 0
  br i1 %tobool.not.i206, label %for.end.i.if.end15.i_crit_edge, label %if.then14.i

for.end.i.if.end15.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then14.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %direction_input.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 8
  %21 = ptrtoint ptr %direction_input.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @max732x_gpio_direction_input, ptr %direction_input.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %for.end.i.if.end15.i_crit_edge
  %22 = ptrtoint ptr %dir_output5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dir_output5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool17.not.i = icmp eq i32 %23, 0
  br i1 %tobool17.not.i, label %if.end15.i.max732x_setup_gpio.exit_crit_edge, label %if.then18.i

if.end15.i.max732x_setup_gpio.exit_crit_edge:     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max732x_setup_gpio.exit

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  %direction_output.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 9
  %24 = ptrtoint ptr %direction_output.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @max732x_gpio_direction_output, ptr %direction_output.i, align 4
  %set.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %25 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @max732x_gpio_set_value, ptr %set.i, align 4
  %set_multiple.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 13
  %26 = ptrtoint ptr %set_multiple.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @max732x_gpio_set_multiple, ptr %set_multiple.i, align 4
  br label %max732x_setup_gpio.exit

max732x_setup_gpio.exit:                          ; preds = %if.then18.i, %if.end15.i.max732x_setup_gpio.exit_crit_edge
  %get.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %27 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @max732x_gpio_get_value, ptr %get.i, align 4
  %can_sleep.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 23
  %28 = ptrtoint ptr %can_sleep.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %can_sleep.i, align 4
  %base.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %7, ptr %base.i, align 4
  %conv20.i = trunc i32 %port.1.i to i16
  %ngpio.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %30 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv20.i, ptr %ngpio.i, align 4
  %31 = ptrtoint ptr %client20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %client20, align 4
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %name.i, ptr %call.i, align 4
  %parent.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %owner.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 4
  %34 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %owner.i, align 4
  %35 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dev, ptr %parent.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %36 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %addr, align 2
  %conv = zext i16 %37 to i32
  %and = and i16 %37, 15
  %conv23 = or i16 %and, 96
  %conv28 = or i16 %and, 80
  %and31 = and i32 %conv, 112
  %38 = zext i32 %and31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %and31, label %do.end67 [
    i32 96, label %sw.bb
    i32 80, label %sw.bb46
  ]

sw.bb:                                            ; preds = %max732x_setup_gpio.exit
  %client_group_a = getelementptr inbounds %struct.max732x_chip, ptr %call.i, i32 0, i32 3
  %39 = ptrtoint ptr %client_group_a to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %client, ptr %client_group_a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %port.1.i)
  %cmp32 = icmp sgt i32 %port.1.i, 8
  br i1 %cmp32, label %if.then34, label %sw.bb.do.body82_crit_edge

sw.bb.do.body82_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body82

if.then34:                                        ; preds = %sw.bb
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %40 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adapter, align 8
  %call36 = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %dev, ptr noundef %41, i16 noundef zeroext %conv28) #6
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end41, label %if.end44

do.end41:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #9
  %42 = ptrtoint ptr %call36 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  %client_dummy = getelementptr inbounds %struct.max732x_chip, ptr %call.i, i32 0, i32 2
  %43 = ptrtoint ptr %client_dummy to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call36, ptr %client_dummy, align 4
  %client_group_b = getelementptr inbounds %struct.max732x_chip, ptr %call.i, i32 0, i32 4
  %44 = ptrtoint ptr %client_group_b to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call36, ptr %client_group_b, align 4
  br label %land.lhs.true73

sw.bb46:                                          ; preds = %max732x_setup_gpio.exit
  %client_group_b47 = getelementptr inbounds %struct.max732x_chip, ptr %call.i, i32 0, i32 4
  %45 = ptrtoint ptr %client_group_b47 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %client, ptr %client_group_b47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %port.1.i)
  %cmp48 = icmp sgt i32 %port.1.i, 8
  br i1 %cmp48, label %if.then50, label %sw.bb46.do.body82_crit_edge

sw.bb46.do.body82_crit_edge:                      ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body82

if.then50:                                        ; preds = %sw.bb46
  %adapter52 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %46 = ptrtoint ptr %adapter52 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adapter52, align 8
  %call53 = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %dev, ptr noundef %47, i16 noundef zeroext %conv23) #6
  %cmp.i207 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i207, label %do.end58, label %if.end61

do.end58:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #9
  %48 = ptrtoint ptr %call53 to i32
  br label %cleanup

if.end61:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  %client_dummy62 = getelementptr inbounds %struct.max732x_chip, ptr %call.i, i32 0, i32 2
  %49 = ptrtoint ptr %client_dummy62 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call53, ptr %client_dummy62, align 4
  %client_group_a63 = getelementptr inbounds %struct.max732x_chip, ptr %call.i, i32 0, i32 3
  %50 = ptrtoint ptr %client_group_a63 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call53, ptr %client_group_a63, align 4
  br label %land.lhs.true73

do.end67:                                         ; preds = %max732x_setup_gpio.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv) #9
  br label %cleanup

land.lhs.true73:                                  ; preds = %if.end61, %if.end44
  %client_dummy74 = getelementptr inbounds %struct.max732x_chip, ptr %call.i, i32 0, i32 2
  %51 = ptrtoint ptr %client_dummy74 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %client_dummy74, align 4
  %tobool75.not = icmp eq ptr %52, null
  br i1 %tobool75.not, label %do.end79, label %land.lhs.true73.do.body82_crit_edge

land.lhs.true73.do.body82_crit_edge:              ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body82

do.end79:                                         ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %cleanup

do.body82:                                        ; preds = %land.lhs.true73.do.body82_crit_edge, %sw.bb46.do.body82_crit_edge, %sw.bb.do.body82_crit_edge
  %cmp71244 = phi i1 [ true, %land.lhs.true73.do.body82_crit_edge ], [ false, %sw.bb46.do.body82_crit_edge ], [ false, %sw.bb.do.body82_crit_edge ]
  %lock = getelementptr inbounds %struct.max732x_chip, ptr %call.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @max732x_probe.__key) #6
  %53 = ptrtoint ptr %mask_group_a.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mask_group_a.i, align 4
  %and.i209 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i209)
  %tobool.not.i210 = icmp eq i32 %and.i209, 0
  %client_group_a.i = getelementptr inbounds %struct.max732x_chip, ptr %call.i, i32 0, i32 3
  %client_group_b.i = getelementptr inbounds %struct.max732x_chip, ptr %call.i, i32 0, i32 4
  %cond.in.i = select i1 %tobool.not.i210, ptr %client_group_b.i, ptr %client_group_a.i
  %55 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %call.i211 = tail call i32 @i2c_smbus_read_byte(ptr noundef %cond.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i211)
  %cmp.i212 = icmp slt i32 %call.i211, 0
  br i1 %cmp.i212, label %max732x_readb.exit, label %if.end89

max732x_readb.exit:                               ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i213 = getelementptr inbounds %struct.i2c_client, ptr %cond.i, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i213, ptr noundef nonnull @.str.27) #9
  br label %cleanup

if.end89:                                         ; preds = %do.body82
  %reg_out = getelementptr inbounds %struct.max732x_chip, ptr %call.i, i32 0, i32 9
  %conv.i214 = trunc i32 %call.i211 to i8
  %56 = ptrtoint ptr %reg_out to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv.i214, ptr %reg_out, align 1
  br i1 %cmp71244, label %if.then92, label %if.end89.if.end100_crit_edge

if.end89.if.end100_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

if.then92:                                        ; preds = %if.end89
  %57 = ptrtoint ptr %mask_group_a.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mask_group_a.i, align 4
  %and.i219 = and i32 %58, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i219)
  %tobool.not.i220 = icmp eq i32 %and.i219, 0
  %cond.in.i223 = select i1 %tobool.not.i220, ptr %client_group_b.i, ptr %client_group_a.i
  %59 = ptrtoint ptr %cond.in.i223 to i32
  call void @__asan_load4_noabort(i32 %59)
  %cond.i224 = load ptr, ptr %cond.in.i223, align 4
  %call.i225 = tail call i32 @i2c_smbus_read_byte(ptr noundef %cond.i224) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i225)
  %cmp.i226 = icmp slt i32 %call.i225, 0
  br i1 %cmp.i226, label %max732x_readb.exit233, label %max732x_readb.exit233.thread

max732x_readb.exit233.thread:                     ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx95 = getelementptr %struct.max732x_chip, ptr %call.i, i32 0, i32 9, i32 1
  %conv.i229 = trunc i32 %call.i225 to i8
  %60 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv.i229, ptr %arrayidx95, align 1
  br label %if.end100

max732x_readb.exit233:                            ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i227 = getelementptr inbounds %struct.i2c_client, ptr %cond.i224, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i227, ptr noundef nonnull @.str.27) #9
  br label %cleanup

if.end100:                                        ; preds = %max732x_readb.exit233.thread, %if.end89.if.end100_crit_edge
  %61 = ptrtoint ptr %client20 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %client20, align 4
  %dev.i234 = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 4
  %platform_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 4, i32 7
  %63 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %platform_data.i.i, align 8
  %65 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %driver_data.i, align 4
  %arrayidx.i236 = getelementptr [9 x i64], ptr @max732x_features, i32 0, i32 %66
  %67 = ptrtoint ptr %arrayidx.i236 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %arrayidx.i236, align 8
  %shr.i237 = lshr i64 %68, 32
  %tobool.not.i238 = icmp eq ptr %64, null
  br i1 %tobool.not.i238, label %lor.lhs.false.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end100
  %irq_base2.i = getelementptr inbounds %struct.max732x_platform_data, ptr %64, i32 0, i32 1
  %69 = ptrtoint ptr %irq_base2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %irq_base2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool3.not.i = icmp eq i32 %70, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.thread.i, label %land.lhs.true5.i

lor.lhs.false.i:                                  ; preds = %if.end100
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 6
  %71 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool4.not.i = icmp eq i32 %72, 0
  %73 = and i32 %66, 536870911
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp.not.i = icmp eq i32 %73, 1
  %or.cond.i = select i1 %tobool4.not.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.end104_crit_edge, label %lor.lhs.false.i.if.end.i239_crit_edge

lor.lhs.false.i.if.end.i239_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i239

lor.lhs.false.i.if.end104_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

lor.lhs.false.thread.i:                           ; preds = %land.lhs.true.i
  %irq54.i = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 6
  %74 = ptrtoint ptr %irq54.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %irq54.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool4.not55.i = icmp eq i32 %75, 0
  %76 = and i32 %66, 536870911
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp.not56.i = icmp eq i32 %76, 1
  %or.cond57.i = select i1 %tobool4.not55.i, i1 true, i1 %cmp.not56.i
  br i1 %or.cond57.i, label %lor.lhs.false.thread.i.if.end104_crit_edge, label %lor.lhs.false.thread.i.if.end.i239_crit_edge

lor.lhs.false.thread.i.if.end.i239_crit_edge:     ; preds = %lor.lhs.false.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i239

lor.lhs.false.thread.i.if.end104_crit_edge:       ; preds = %lor.lhs.false.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.old.i = and i32 %66, 536870911
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.old.i)
  %cmp.not.old.i = icmp eq i32 %.old.i, 1
  br i1 %cmp.not.old.i, label %land.lhs.true5.i.if.end104_crit_edge, label %land.lhs.true5.i.if.end.i239_crit_edge

land.lhs.true5.i.if.end.i239_crit_edge:           ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i239

land.lhs.true5.i.if.end104_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

if.end.i239:                                      ; preds = %land.lhs.true5.i.if.end.i239_crit_edge, %lor.lhs.false.thread.i.if.end.i239_crit_edge, %lor.lhs.false.i.if.end.i239_crit_edge
  %irq_base.0.i = phi i32 [ 0, %lor.lhs.false.i.if.end.i239_crit_edge ], [ %70, %land.lhs.true5.i.if.end.i239_crit_edge ], [ 0, %lor.lhs.false.thread.i.if.end.i239_crit_edge ]
  %conv10.i = trunc i64 %shr.i237 to i8
  %irq_features.i = getelementptr inbounds %struct.max732x_chip, ptr %call.i, i32 0, i32 15
  %77 = ptrtoint ptr %irq_features.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv10.i, ptr %irq_features.i, align 4
  %irq_lock.i = getelementptr inbounds %struct.max732x_chip, ptr %call.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %irq_lock.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @max732x_irq_setup.__key) #6
  %irq12.i = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 6
  %78 = ptrtoint ptr %irq12.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %irq12.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 4, i32 3
  %80 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %81, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i239.dev_name.exit.i_crit_edge

if.end.i239.dev_name.exit.i_crit_edge:            ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %dev.i234 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev.i234, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end.i239.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %83, %if.end.i.i ], [ %81, %if.end.i239.dev_name.exit.i_crit_edge ]
  %call15.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev.i234, i32 noundef %79, ptr noundef null, ptr noundef nonnull @max732x_irq_handler, i32 noundef 8322, ptr noundef %retval.0.i.i, ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end23.i, label %max732x_irq_setup.exit

if.end23.i:                                       ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq24.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37
  %84 = ptrtoint ptr %irq24.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @max732x_irq_chip, ptr %irq24.i, align 4
  %parent_handler.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 13
  %85 = ptrtoint ptr %parent_handler.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %parent_handler.i, align 4
  %num_parents.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 15
  %86 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %num_parents.i, align 4
  %parents.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 16
  %87 = ptrtoint ptr %parents.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %parents.i, align 4
  %default_type.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 10
  %88 = ptrtoint ptr %default_type.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %default_type.i, align 4
  %handler.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 9
  %89 = ptrtoint ptr %handler.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @handle_simple_irq, ptr %handler.i, align 4
  %threaded.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 18
  %90 = ptrtoint ptr %threaded.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %threaded.i, align 4
  %first.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 23
  %91 = ptrtoint ptr %first.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %irq_base.0.i, ptr %first.i, align 4
  br label %if.end104

max732x_irq_setup.exit:                           ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %irq12.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %irq12.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i234, ptr noundef nonnull @.str.30, i32 noundef %93) #9
  br label %cleanup

if.end104:                                        ; preds = %if.end23.i, %land.lhs.true5.i.if.end104_crit_edge, %lor.lhs.false.thread.i.if.end104_crit_edge, %lor.lhs.false.i.if.end104_crit_edge
  %call108 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @max732x_probe.lock_key, ptr noundef nonnull @max732x_probe.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end111, label %if.end104.cleanup_crit_edge

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end111:                                        ; preds = %if.end104
  %setup = getelementptr inbounds %struct.max732x_platform_data, ptr %pdata.0, i32 0, i32 3
  %94 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %setup, align 4
  %tobool112.not = icmp eq ptr %95, null
  br i1 %tobool112.not, label %if.end111.if.end127_crit_edge, label %if.then113

if.end111.if.end127_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

if.then113:                                       ; preds = %if.end111
  %96 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %base.i, align 4
  %98 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %ngpio.i, align 4
  %conv117 = zext i16 %99 to i32
  %context = getelementptr inbounds %struct.max732x_platform_data, ptr %pdata.0, i32 0, i32 2
  %100 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %context, align 4
  %call118 = tail call i32 %95(ptr noundef %client, i32 noundef %97, i32 noundef %conv117, ptr noundef %101) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119 = icmp slt i32 %call118, 0
  br i1 %cmp119, label %do.end124, label %if.then113.if.end127_crit_edge

if.then113.if.end127_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

do.end124:                                        ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call118) #9
  br label %if.end127

if.end127:                                        ; preds = %do.end124, %if.then113.if.end127_crit_edge, %if.end111.if.end127_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %102 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end127, %if.end104.cleanup_crit_edge, %max732x_irq_setup.exit, %max732x_readb.exit233, %max732x_readb.exit, %do.end79, %do.end67, %do.end58, %do.end41, %if.end15.cleanup_crit_edge, %if.then12, %do.body
  %retval.0 = phi i32 [ -22, %do.end67 ], [ %48, %do.end58 ], [ 0, %if.end127 ], [ -19, %do.end79 ], [ %42, %do.end41 ], [ -22, %if.then12 ], [ -12, %if.end15.cleanup_crit_edge ], [ %call.i211, %max732x_readb.exit ], [ %call.i225, %max732x_readb.exit233 ], [ %call15.i, %max732x_irq_setup.exit ], [ %call108, %if.end104.cleanup_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max732x_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  br i1 %tobool.not, label %entry.cleanup10_crit_edge, label %land.lhs.true

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup10

land.lhs.true:                                    ; preds = %entry
  %teardown = getelementptr inbounds %struct.max732x_platform_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %teardown to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %teardown, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup10_crit_edge, label %if.then

land.lhs.true.cleanup10_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup10

if.then:                                          ; preds = %land.lhs.true
  %base = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 20
  %8 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %9 to i32
  %context = getelementptr inbounds %struct.max732x_platform_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %context, align 4
  %call5 = tail call i32 %5(ptr noundef %client, i32 noundef %7, i32 noundef %conv, ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup10_crit_edge

if.then.cleanup10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup10

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.38, i32 noundef %call5) #9
  br label %cleanup10

cleanup10:                                        ; preds = %do.end, %if.then.cleanup10_crit_edge, %land.lhs.true.cleanup10_crit_edge, %entry.cleanup10_crit_edge
  %retval.1 = phi i32 [ %call5, %do.end ], [ 0, %land.lhs.true.cleanup10_crit_edge ], [ 0, %entry.cleanup10_crit_edge ], [ 0, %if.then.cleanup10_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_i2c_new_dummy_device(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max732x_gpio_direction_input(ptr noundef %gc, i32 noundef %off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %shl = shl nuw i32 1, %off
  %dir_input = getelementptr inbounds %struct.max732x_chip, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %dir_input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dir_input, align 4
  %and = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max732x_gpio_direction_input.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max732x_gpio_direction_input, %cleanup)) #6
          to label %if.then5 [label %cleanup], !srcloc !113

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %client = getelementptr inbounds %struct.max732x_chip, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max732x_gpio_direction_input.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef %name, i32 noundef %off) #6
  br label %cleanup

if.end7:                                          ; preds = %entry
  %dir_output = getelementptr inbounds %struct.max732x_chip, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %dir_output to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dir_output, align 4
  %and8 = and i32 %5, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.then10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = and i32 %off, -8
  %and1.i = and i32 %off, 7
  %shl.i = shl nuw nsw i32 1, %and1.i
  tail call fastcc void @max732x_gpio_set_mask(ptr noundef %gc, i32 noundef %and.i, i32 noundef %shl.i, i32 noundef %shl.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end7.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ -13, %if.then5 ], [ 0, %if.then10 ], [ 0, %if.end7.cleanup_crit_edge ], [ -13, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max732x_gpio_direction_output(ptr noundef %gc, i32 noundef %off, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %shl = shl nuw i32 1, %off
  %dir_output = getelementptr inbounds %struct.max732x_chip, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %dir_output to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dir_output, align 4
  %and = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max732x_gpio_direction_output.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max732x_gpio_direction_output, %cleanup)) #6
          to label %if.then5 [label %cleanup], !srcloc !113

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %client = getelementptr inbounds %struct.max732x_chip, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max732x_gpio_direction_output.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef %name, i32 noundef %off) #6
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = and i32 %off, -8
  %and1.i = and i32 %off, 7
  %shl.i = shl nuw nsw i32 1, %and1.i
  %shl4.i = shl i32 %val, %and1.i
  tail call fastcc void @max732x_gpio_set_mask(ptr noundef %gc, i32 noundef %and.i, i32 noundef %shl.i, i32 noundef %shl4.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %do.body
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -13, %if.then5 ], [ -13, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max732x_gpio_set_value(ptr noundef %gc, i32 noundef %off, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %off, -8
  %and1 = and i32 %off, 7
  %shl = shl nuw nsw i32 1, %and1
  %shl4 = shl i32 %val, %and1
  tail call fastcc void @max732x_gpio_set_mask(ptr noundef %gc, i32 noundef %and, i32 noundef %shl, i32 noundef %shl4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max732x_gpio_set_multiple(ptr noundef %gc, ptr nocapture noundef readonly %mask, ptr nocapture noundef readonly %bits) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  %and = and i32 %1, 255
  %shr = lshr i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits, align 4
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %lock.i = getelementptr inbounds %struct.max732x_chip, ptr %call.i, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %reg_out2.i = getelementptr inbounds %struct.max732x_chip, ptr %call.i, i32 0, i32 9
  %4 = ptrtoint ptr %reg_out2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %cond.in35.i = load i8, ptr %reg_out2.i, align 1
  %conv6.i = zext i8 %cond.in35.i to i32
  %neg.i = xor i32 %1, -1
  %and.i = and i32 %conv6.i, %neg.i
  %and7.i = and i32 %3, %1
  %or.i = or i32 %and.i, %and7.i
  %conv8.i = trunc i32 %or.i to i8
  %mask_group_a.i.i = getelementptr inbounds %struct.max732x_chip, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %mask_group_a.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask_group_a.i.i, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %client_group_a.i.i = getelementptr inbounds %struct.max732x_chip, ptr %call.i, i32 0, i32 3
  %client_group_b.i.i = getelementptr inbounds %struct.max732x_chip, ptr %call.i, i32 0, i32 4
  %cond.in.i.i = select i1 %tobool.not.i.i, ptr %client_group_b.i.i, ptr %client_group_a.i.i
  %7 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %cond.i.i = load ptr, ptr %cond.in.i.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %cond.i.i, i8 noundef zeroext %conv8.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %max732x_writeb.exit.thread.i, label %if.end.i

max732x_writeb.exit.thread.i:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %cond.i.i, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.25) #9
  br label %max732x_gpio_set_mask.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %reg_out2.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv8.i, ptr %reg_out2.i, align 4
  br label %max732x_gpio_set_mask.exit

max732x_gpio_set_mask.exit:                       ; preds = %if.end.i, %max732x_writeb.exit.thread.i
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %if.end

if.end:                                           ; preds = %max732x_gpio_set_mask.exit, %entry.if.end_crit_edge
  %9 = and i32 %1, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then6:                                         ; preds = %if.end
  %10 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bits, align 4
  %shr8 = lshr i32 %11, 8
  %call.i16 = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %lock.i17 = getelementptr inbounds %struct.max732x_chip, ptr %call.i16, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock.i17, i32 noundef 0) #6
  %arrayidx.i18 = getelementptr %struct.max732x_chip, ptr %call.i16, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_load1_noabort(i32 %12)
  %cond.in35.i20 = load i8, ptr %arrayidx.i18, align 1
  %conv6.i21 = zext i8 %cond.in35.i20 to i32
  %neg.i22 = xor i32 %shr, -1
  %and.i23 = and i32 %conv6.i21, %neg.i22
  %and7.i24 = and i32 %shr8, %shr
  %or.i25 = or i32 %and.i23, %and7.i24
  %conv8.i26 = trunc i32 %or.i25 to i8
  %mask_group_a.i.i27 = getelementptr inbounds %struct.max732x_chip, ptr %call.i16, i32 0, i32 5
  %13 = ptrtoint ptr %mask_group_a.i.i27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask_group_a.i.i27, align 4
  %and.i.i28 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i28)
  %tobool.not.i.i29 = icmp eq i32 %and.i.i28, 0
  %client_group_a.i.i30 = getelementptr inbounds %struct.max732x_chip, ptr %call.i16, i32 0, i32 3
  %client_group_b.i.i31 = getelementptr inbounds %struct.max732x_chip, ptr %call.i16, i32 0, i32 4
  %cond.in.i.i32 = select i1 %tobool.not.i.i29, ptr %client_group_b.i.i31, ptr %client_group_a.i.i30
  %15 = ptrtoint ptr %cond.in.i.i32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %cond.i.i33 = load ptr, ptr %cond.in.i.i32, align 4
  %call.i.i34 = tail call i32 @i2c_smbus_write_byte(ptr noundef %cond.i.i33, i8 noundef zeroext %conv8.i26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34)
  %cmp.i.i35 = icmp slt i32 %call.i.i34, 0
  br i1 %cmp.i.i35, label %max732x_writeb.exit.thread.i37, label %if.end.i38

max732x_writeb.exit.thread.i37:                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i36 = getelementptr inbounds %struct.i2c_client, ptr %cond.i.i33, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i36, ptr noundef nonnull @.str.25) #9
  br label %max732x_gpio_set_mask.exit39

if.end.i38:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv8.i26, ptr %arrayidx.i18, align 1
  br label %max732x_gpio_set_mask.exit39

max732x_gpio_set_mask.exit39:                     ; preds = %if.end.i38, %max732x_writeb.exit.thread.i37
  tail call void @mutex_unlock(ptr noundef %lock.i17) #6
  br label %if.end10

if.end10:                                         ; preds = %max732x_gpio_set_mask.exit39, %if.end.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max732x_gpio_get_value(ptr noundef %gc, i32 noundef %off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %shl.i = shl nuw i32 1, %off
  %mask_group_a.i = getelementptr inbounds %struct.max732x_chip, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %mask_group_a.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask_group_a.i, align 4
  %and.i = and i32 %1, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %client_group_a.i = getelementptr inbounds %struct.max732x_chip, ptr %call, i32 0, i32 3
  %client_group_b.i = getelementptr inbounds %struct.max732x_chip, ptr %call, i32 0, i32 4
  %cond.in.i = select i1 %tobool.not.i, ptr %client_group_b.i, ptr %client_group_a.i
  %2 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %cond.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %max732x_readb.exit.thread, label %if.end

max732x_readb.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %cond.i, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.27) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = and i32 %call.i, 255
  %and = and i32 %off, 7
  %3 = lshr i32 %conv, %and
  %4 = and i32 %3, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %max732x_readb.exit.thread
  %retval.0 = phi i32 [ %4, %if.end ], [ %call.i, %max732x_readb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max732x_gpio_set_mask(ptr noundef %gc, i32 noundef %off, i32 noundef %mask, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %lock = getelementptr inbounds %struct.max732x_chip, ptr %call, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %off)
  %cmp = icmp ugt i32 %off, 7
  %arrayidx = getelementptr %struct.max732x_chip, ptr %call, i32 0, i32 9, i32 1
  %reg_out2 = getelementptr inbounds %struct.max732x_chip, ptr %call, i32 0, i32 9
  %cond.in.in = select i1 %cmp, ptr %arrayidx, ptr %reg_out2
  %0 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load1_noabort(i32 %0)
  %cond.in35 = load i8, ptr %cond.in.in, align 1
  %conv6 = zext i8 %cond.in35 to i32
  %neg = xor i32 %mask, -1
  %and = and i32 %conv6, %neg
  %and7 = and i32 %val, %mask
  %or = or i32 %and, %and7
  %conv8 = trunc i32 %or to i8
  %shl.i = shl nuw i32 1, %off
  %mask_group_a.i = getelementptr inbounds %struct.max732x_chip, ptr %call, i32 0, i32 5
  %1 = ptrtoint ptr %mask_group_a.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mask_group_a.i, align 4
  %and.i = and i32 %2, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %client_group_a.i = getelementptr inbounds %struct.max732x_chip, ptr %call, i32 0, i32 3
  %client_group_b.i = getelementptr inbounds %struct.max732x_chip, ptr %call, i32 0, i32 4
  %cond.in.i = select i1 %tobool.not.i, ptr %client_group_b.i, ptr %client_group_a.i
  %3 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %cond.i, i8 noundef zeroext %conv8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %max732x_writeb.exit.thread, label %if.end

max732x_writeb.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %cond.i, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.25) #9
  br label %out

if.end:                                           ; preds = %entry
  br i1 %cmp, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv8, ptr %arrayidx, align 1
  br label %out

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %reg_out2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv8, ptr %reg_out2, align 4
  br label %out

out:                                              ; preds = %if.else, %if.then15, %max732x_writeb.exit.thread
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max732x_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %devid) #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  %status.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status.i) #6
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %status.i, align 2, !annotation !114
  %client_group_a.i.i = getelementptr inbounds %struct.max732x_chip, ptr %devid, i32 0, i32 3
  %1 = ptrtoint ptr %client_group_a.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client_group_a.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %2, ptr noundef nonnull %status.i, i32 noundef 2, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %max732x_readw.exit.i, label %if.end.i

max732x_readw.exit.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %client_group_a.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client_group_a.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.27) #9
  br label %max732x_irq_pending.exit.thread

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %status.i, align 2
  %7 = call i16 @llvm.bswap.i16(i16 %6) #6
  %8 = lshr i16 %7, 8
  %conv1.i = trunc i16 %8 to i8
  %irq_mask.i = getelementptr inbounds %struct.max732x_chip, ptr %devid, i32 0, i32 11
  %9 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %irq_mask.i, align 4
  %and.i = and i8 %10, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and.i)
  %tobool5.not.i = icmp eq i8 %and.i, 0
  br i1 %tobool5.not.i, label %if.end.i.max732x_irq_pending.exit.thread_crit_edge, label %max732x_irq_pending.exit

if.end.i.max732x_irq_pending.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max732x_irq_pending.exit.thread

max732x_irq_pending.exit.thread:                  ; preds = %if.end.i.max732x_irq_pending.exit.thread_crit_edge, %max732x_readw.exit.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i) #6
  br label %cleanup

max732x_irq_pending.exit:                         ; preds = %if.end.i
  %conv13.i = trunc i16 %7 to i8
  %and14.i = and i8 %10, %conv13.i
  %xor45.i = xor i8 %and.i, %and14.i
  %irq_trig_fall.i = getelementptr inbounds %struct.max732x_chip, ptr %devid, i32 0, i32 14
  %11 = ptrtoint ptr %irq_trig_fall.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %irq_trig_fall.i, align 1
  %and2146.i = and i8 %12, %xor45.i
  %irq_trig_raise.i = getelementptr inbounds %struct.max732x_chip, ptr %devid, i32 0, i32 13
  %13 = ptrtoint ptr %irq_trig_raise.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %irq_trig_raise.i, align 2
  %and2447.i = and i8 %14, %and14.i
  %or48.i = or i8 %and2447.i, %and2146.i
  %and2849.i = and i8 %or48.i, %and.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and2849.i)
  %tobool.not = icmp eq i8 %and2849.i, 0
  br i1 %tobool.not, label %max732x_irq_pending.exit.cleanup_crit_edge, label %do.body.preheader

max732x_irq_pending.exit.cleanup_crit_edge:       ; preds = %max732x_irq_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.preheader:                                ; preds = %max732x_irq_pending.exit
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %devid, i32 0, i32 37, i32 1
  br label %do.body

do.body:                                          ; preds = %irq_find_mapping.exit.do.body_crit_edge, %do.body.preheader
  %pending.0 = phi i8 [ %conv8, %irq_find_mapping.exit.do.body_crit_edge ], [ %and2849.i, %do.body.preheader ]
  %conv = zext i8 %pending.0 to i32
  %15 = call i32 @llvm.cttz.i32(i32 %conv, i1 false) #6, !range !115
  %16 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %18 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %irq.i, align 4, !annotation !114
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %17, i32 noundef %15, ptr noundef nonnull %irq.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body.irq_find_mapping.exit_crit_edge, label %if.then.i

do.body.irq_find_mapping.exit_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %do.body.irq_find_mapping.exit_crit_edge
  %retval.0.i17 = phi i32 [ %20, %if.then.i ], [ 0, %do.body.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  call void @handle_nested_irq(i32 noundef %retval.0.i17) #6
  %shl = shl nuw i32 1, %15
  %21 = trunc i32 %shl to i8
  %22 = xor i8 %21, -1
  %conv8 = and i8 %pending.0, %22
  %tobool9.not = icmp eq i8 %conv8, 0
  br i1 %tobool9.not, label %irq_find_mapping.exit.cleanup_crit_edge, label %irq_find_mapping.exit.do.body_crit_edge

irq_find_mapping.exit.do.body_crit_edge:          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

irq_find_mapping.exit.cleanup_crit_edge:          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %irq_find_mapping.exit.cleanup_crit_edge, %max732x_irq_pending.exit.cleanup_crit_edge, %max732x_irq_pending.exit.thread
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max732x_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
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
  %shl = shl nuw i32 1, %3
  %irq_mask_cur = getelementptr inbounds %struct.max732x_chip, ptr %call1, i32 0, i32 12
  %4 = ptrtoint ptr %irq_mask_cur to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %irq_mask_cur, align 1
  %6 = trunc i32 %shl to i8
  %7 = xor i8 %6, -1
  %conv2 = and i8 %5, %7
  store i8 %conv2, ptr %irq_mask_cur, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max732x_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
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
  %shl = shl nuw i32 1, %3
  %irq_mask_cur = getelementptr inbounds %struct.max732x_chip, ptr %call1, i32 0, i32 12
  %4 = ptrtoint ptr %irq_mask_cur to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %irq_mask_cur, align 1
  %6 = trunc i32 %shl to i8
  %conv2 = or i8 %5, %6
  store i8 %conv2, ptr %irq_mask_cur, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max732x_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
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
  %conv2 = and i32 %3, 65535
  %shl = shl nuw i32 1, %conv2
  %dir_input = getelementptr inbounds %struct.max732x_chip, ptr %call1, i32 0, i32 6
  %4 = ptrtoint ptr %dir_input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dir_input, align 4
  %conv4 = and i32 %5, 65535
  %and = and i32 %conv4, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end13

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max732x_irq_set_type.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max732x_irq_set_type, %cleanup)) #6
          to label %if.then10 [label %cleanup], !srcloc !113

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %client = getelementptr inbounds %struct.max732x_chip, ptr %call1, i32 0, i32 1
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max732x_irq_set_type.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef %name, i32 noundef %conv2) #6
  br label %cleanup

if.end13:                                         ; preds = %entry
  %and14 = and i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %client20 = getelementptr inbounds %struct.max732x_chip, ptr %call1, i32 0, i32 1
  %8 = ptrtoint ptr %client20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client20, align 4
  %dev21 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.34, i32 noundef %11, i32 noundef %type) #9
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %and23 = and i32 %type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %irq_trig_fall30 = getelementptr inbounds %struct.max732x_chip, ptr %call1, i32 0, i32 14
  %12 = ptrtoint ptr %irq_trig_fall30 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %irq_trig_fall30, align 1
  %14 = trunc i32 %shl to i8
  %15 = xor i8 %14, -1
  %conv33 = and i8 %13, %15
  %conv28 = or i8 %13, %14
  %conv33.sink = select i1 %tobool24.not, i8 %conv33, i8 %conv28
  store i8 %conv33.sink, ptr %irq_trig_fall30, align 1
  %and35 = and i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %irq_trig_raise45 = getelementptr inbounds %struct.max732x_chip, ptr %call1, i32 0, i32 13
  %16 = ptrtoint ptr %irq_trig_raise45 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %irq_trig_raise45, align 2
  %18 = trunc i32 %shl to i8
  br i1 %tobool36.not, label %if.else42, label %if.then37

if.then37:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %conv41 = or i8 %17, %18
  %19 = ptrtoint ptr %irq_trig_raise45 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv41, ptr %irq_trig_raise45, align 2
  br label %cleanup

if.else42:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %20 = xor i8 %18, -1
  %conv48 = and i8 %17, %20
  %21 = ptrtoint ptr %irq_trig_raise45 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv48, ptr %irq_trig_raise45, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.else42, %if.then37, %do.end19, %if.then10, %do.body
  %retval.0 = phi i32 [ -22, %do.end19 ], [ -13, %if.then10 ], [ 0, %if.else42 ], [ 0, %if.then37 ], [ -13, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max732x_irq_set_wake(ptr nocapture noundef readonly %data, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %client = getelementptr inbounds %struct.max732x_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call1 = tail call i32 @irq_set_irq_wake(i32 noundef %5, i32 noundef %on) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max732x_irq_bus_lock(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %irq_lock = getelementptr inbounds %struct.max732x_chip, ptr %call1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %irq_lock, i32 noundef 0) #6
  %irq_mask = getelementptr inbounds %struct.max732x_chip, ptr %call1, i32 0, i32 11
  %2 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %irq_mask, align 4
  %irq_mask_cur = getelementptr inbounds %struct.max732x_chip, ptr %call1, i32 0, i32 12
  %4 = ptrtoint ptr %irq_mask_cur to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %irq_mask_cur, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max732x_irq_bus_sync_unlock(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  %val.addr.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %irq_mask.i = getelementptr inbounds %struct.max732x_chip, ptr %call1, i32 0, i32 11
  %2 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %irq_mask.i, align 4
  %irq_mask_cur.i = getelementptr inbounds %struct.max732x_chip, ptr %call1, i32 0, i32 12
  %4 = ptrtoint ptr %irq_mask_cur.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %irq_mask_cur.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp.i = icmp eq i8 %3, %5
  br i1 %cmp.i, label %entry.max732x_irq_update_mask.exit_crit_edge, label %if.end.i

entry.max732x_irq_update_mask.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %max732x_irq_update_mask.exit

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %irq_mask.i, align 4
  %irq_features.i = getelementptr inbounds %struct.max732x_chip, ptr %call1, i32 0, i32 15
  %7 = ptrtoint ptr %irq_features.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %irq_features.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp6.i = icmp eq i8 %8, 1
  br i1 %cmp6.i, label %if.end.i.max732x_irq_update_mask.exit_crit_edge, label %if.end9.i

if.end.i.max732x_irq_update_mask.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max732x_irq_update_mask.exit

if.end9.i:                                        ; preds = %if.end.i
  %lock.i = getelementptr inbounds %struct.max732x_chip, ptr %call1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %9 = ptrtoint ptr %irq_features.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %irq_features.i, align 4
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %10, label %if.end9.i.sw.epilog.i_crit_edge [
    i8 2, label %sw.bb.i
    i8 3, label %sw.bb16.i
  ]

if.end9.i.sw.epilog.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end9.i
  %12 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %irq_mask.i, align 4
  %conv13.i = zext i8 %13 to i16
  %shl.i = shl nuw i16 %conv13.i, 8
  %reg_out.i = getelementptr inbounds %struct.max732x_chip, ptr %call1, i32 0, i32 9
  %14 = ptrtoint ptr %reg_out.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg_out.i, align 4
  %conv14.i = zext i8 %15 to i16
  %or.i = or i16 %shl.i, %conv14.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.addr.i.i) #6
  %16 = tail call i16 @llvm.bswap.i16(i16 %or.i) #6
  %17 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %val.addr.i.i, align 2
  %client_group_a.i.i = getelementptr inbounds %struct.max732x_chip, ptr %call1, i32 0, i32 3
  %18 = ptrtoint ptr %client_group_a.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client_group_a.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %19, ptr noundef nonnull %val.addr.i.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %sw.bb.i.max732x_writew.exit.i_crit_edge

sw.bb.i.max732x_writew.exit.i_crit_edge:          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max732x_writew.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %client_group_a.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client_group_a.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.25) #9
  br label %max732x_writew.exit.i

max732x_writew.exit.i:                            ; preds = %do.end.i.i, %sw.bb.i.max732x_writew.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.addr.i.i) #6
  br label %sw.epilog.i

sw.bb16.i:                                        ; preds = %if.end9.i
  %22 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %irq_mask.i, align 4
  %reg_out19.i = getelementptr inbounds %struct.max732x_chip, ptr %call1, i32 0, i32 9
  %24 = ptrtoint ptr %reg_out19.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %reg_out19.i, align 4
  %or2241.i = or i8 %25, %23
  %client_group_a.i42.i = getelementptr inbounds %struct.max732x_chip, ptr %call1, i32 0, i32 3
  %26 = ptrtoint ptr %client_group_a.i42.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %cond.i.i = load ptr, ptr %client_group_a.i42.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %cond.i.i, i8 noundef zeroext %or2241.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i43.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i43.i, label %do.end.i45.i, label %sw.bb16.i.sw.epilog.i_crit_edge

sw.bb16.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

do.end.i45.i:                                     ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i44.i = getelementptr inbounds %struct.i2c_client, ptr %cond.i.i, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i44.i, ptr noundef nonnull @.str.25) #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i45.i, %sw.bb16.i.sw.epilog.i_crit_edge, %max732x_writew.exit.i, %if.end9.i.sw.epilog.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %max732x_irq_update_mask.exit

max732x_irq_update_mask.exit:                     ; preds = %sw.epilog.i, %if.end.i.max732x_irq_update_mask.exit_crit_edge, %entry.max732x_irq_update_mask.exit_crit_edge
  %irq_trig_fall = getelementptr inbounds %struct.max732x_chip, ptr %call1, i32 0, i32 14
  %27 = ptrtoint ptr %irq_trig_fall to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %irq_trig_fall, align 1
  %irq_trig_raise = getelementptr inbounds %struct.max732x_chip, ptr %call1, i32 0, i32 13
  %29 = ptrtoint ptr %irq_trig_raise to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %irq_trig_raise, align 2
  %or19 = or i8 %30, %28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or19)
  %tobool.not22 = icmp eq i8 %or19, 0
  br i1 %tobool.not22, label %max732x_irq_update_mask.exit.while.end_crit_edge, label %while.body.preheader

max732x_irq_update_mask.exit.while.end_crit_edge: ; preds = %max732x_irq_update_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.preheader:                             ; preds = %max732x_irq_update_mask.exit
  %conv3 = zext i8 %or19 to i16
  br label %while.body

while.body:                                       ; preds = %max732x_gpio_direction_input.exit.while.body_crit_edge, %while.body.preheader
  %new_irqs.023 = phi i16 [ %conv11, %max732x_gpio_direction_input.exit.while.body_crit_edge ], [ %conv3, %while.body.preheader ]
  %31 = call i16 @llvm.cttz.i16(i16 %new_irqs.023, i1 true), !range !116
  %32 = zext i16 %31 to i32
  %call.i = call ptr @gpiochip_get_data(ptr noundef %call1) #6
  %shl.i20 = shl nuw nsw i32 1, %32
  %dir_input.i = getelementptr inbounds %struct.max732x_chip, ptr %call.i, i32 0, i32 6
  %33 = ptrtoint ptr %dir_input.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dir_input.i, align 4
  %and.i = and i32 %34, %shl.i20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i21 = icmp eq i32 %and.i, 0
  br i1 %cmp.i21, label %do.body.i, label %if.end7.i

do.body.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max732x_gpio_direction_input.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max732x_irq_bus_sync_unlock, %max732x_gpio_direction_input.exit)) #6
          to label %if.then5.i [label %max732x_gpio_direction_input.exit], !srcloc !113

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %client.i = getelementptr inbounds %struct.max732x_chip, ptr %call.i, i32 0, i32 1
  %35 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 2
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max732x_gpio_direction_input.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.22, ptr noundef %name.i, i32 noundef %32) #6
  br label %max732x_gpio_direction_input.exit

if.end7.i:                                        ; preds = %while.body
  %dir_output.i = getelementptr inbounds %struct.max732x_chip, ptr %call.i, i32 0, i32 7
  %37 = ptrtoint ptr %dir_output.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dir_output.i, align 4
  %and8.i = and i32 %38, %shl.i20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end7.i.max732x_gpio_direction_input.exit_crit_edge, label %if.then10.i

if.end7.i.max732x_gpio_direction_input.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max732x_gpio_direction_input.exit

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i = and i32 %32, 8
  %and1.i.i = and i32 %32, 7
  %shl.i.i = shl nuw nsw i32 1, %and1.i.i
  call fastcc void @max732x_gpio_set_mask(ptr noundef %call1, i32 noundef %and.i.i, i32 noundef %shl.i.i, i32 noundef %shl.i.i) #6
  br label %max732x_gpio_direction_input.exit

max732x_gpio_direction_input.exit:                ; preds = %if.then10.i, %if.end7.i.max732x_gpio_direction_input.exit_crit_edge, %if.then5.i, %do.body.i
  %39 = trunc i32 %shl.i20 to i16
  %40 = xor i16 %39, -1
  %conv11 = and i16 %new_irqs.023, %40
  %tobool.not = icmp eq i16 %conv11, 0
  br i1 %tobool.not, label %max732x_gpio_direction_input.exit.while.end_crit_edge, label %max732x_gpio_direction_input.exit.while.body_crit_edge

max732x_gpio_direction_input.exit.while.body_crit_edge: ; preds = %max732x_gpio_direction_input.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

max732x_gpio_direction_input.exit.while.end_crit_edge: ; preds = %max732x_gpio_direction_input.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %max732x_gpio_direction_input.exit.while.end_crit_edge, %max732x_irq_update_mask.exit.while.end_crit_edge
  %irq_lock = getelementptr inbounds %struct.max732x_chip, ptr %call1, i32 0, i32 10
  call void @mutex_unlock(ptr noundef %irq_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.cttz.i16(i16, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !26, !27, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !46, !47, !48, !49, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !100, !102}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @__initcall__kmod_gpio_max732x__292_754_max732x_init4, !1, !"__initcall__kmod_gpio_max732x__292_754_max732x_init4", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-max732x.c", i32 754, i32 1}
!2 = !{ptr @__exitcall_max732x_exit, !3, !"__exitcall_max732x_exit", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-max732x.c", i32 760, i32 1}
!4 = !{ptr @__UNIQUE_ID_author293, !5, !"__UNIQUE_ID_author293", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-max732x.c", i32 762, i32 1}
!6 = !{ptr @__UNIQUE_ID_description294, !7, !"__UNIQUE_ID_description294", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-max732x.c", i32 763, i32 1}
!8 = !{ptr @__UNIQUE_ID_file295, !9, !"__UNIQUE_ID_file295", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-max732x.c", i32 764, i32 1}
!10 = !{ptr @__UNIQUE_ID_license296, !9, !"__UNIQUE_ID_license296", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpio/gpio-max732x.c", i32 739, i32 12}
!13 = !{ptr @max732x_driver, !14, !"max732x_driver", i1 false, i1 false}
!14 = !{!"../drivers/gpio/gpio-max732x.c", i32 737, i32 26}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpio/gpio-max732x.c", i32 633, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @max732x_probe.__UNIQUE_ID_ddebug291, !16, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpio/gpio-max732x.c", i32 655, i32 5}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @max732x_probe._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @max732x_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @max732x_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!28 = !{!"../drivers/gpio/gpio-max732x.c", i32 668, i32 5}
!29 = !{ptr @max732x_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpio-max732x.c", i32 676, i32 3}
!32 = !{ptr @max732x_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @max732x_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpio/gpio-max732x.c", i32 682, i32 3}
!36 = !{ptr @max732x_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @max732x_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @max732x_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/gpio/gpio-max732x.c", i32 687, i32 2}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @max732x_probe.lock_key, !42, !"lock_key", i1 false, i1 false}
!42 = !{!"../drivers/gpio/gpio-max732x.c", i32 702, i32 8}
!43 = !{ptr @max732x_probe.request_key, !42, !"request_key", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpio/gpio-max732x.c", i32 710, i32 4}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @max732x_probe._entry.17, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @max732x_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @max732x_features, !50, !"max732x_features", i1 false, i1 false}
!50 = !{!"../drivers/gpio/gpio-max732x.c", i32 91, i32 17}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpio/gpio-max732x.c", i32 258, i32 3}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @max732x_gpio_direction_input.__UNIQUE_ID_ddebug288, !52, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpio/gpio-max732x.c", i32 280, i32 3}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @max732x_gpio_direction_output.__UNIQUE_ID_ddebug289, !56, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpio/gpio-max732x.c", i32 166, i32 3}
!61 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @max732x_writeb._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @max732x_writeb._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpio/gpio-max732x.c", i32 181, i32 3}
!66 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @max732x_readb._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @max732x_readb._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @max732x_irq_setup.__key, !70, !"__key", i1 false, i1 false}
!70 = !{!"../drivers/gpio/gpio-max732x.c", i32 511, i32 3}
!71 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpio/gpio-max732x.c", i32 518, i32 4}
!74 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @max732x_irq_setup._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @max732x_irq_setup._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpio/gpio-max732x.c", i32 311, i32 3}
!79 = !{ptr @max732x_readw._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @max732x_readw._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @max732x_irq_chip, !82, !"max732x_irq_chip", i1 false, i1 false}
!82 = !{!"../drivers/gpio/gpio-max732x.c", i32 432, i32 24}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpio/gpio-max732x.c", i32 400, i32 3}
!85 = !{ptr @max732x_irq_set_type.__UNIQUE_ID_ddebug290, !84, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpio/gpio-max732x.c", i32 406, i32 3}
!88 = !{ptr @max732x_irq_set_type._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @max732x_irq_set_type._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpio/gpio-max732x.c", i32 298, i32 3}
!92 = !{ptr @max732x_writew._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @max732x_writew._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpio/gpio-max732x.c", i32 728, i32 4}
!96 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @max732x_remove._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @max732x_remove._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @max732x_of_table, !101, !"max732x_of_table", i1 false, i1 false}
!101 = !{!"../drivers/gpio/gpio-max732x.c", i32 118, i32 34}
!102 = !{ptr @max732x_id, !103, !"max732x_id", i1 false, i1 false}
!103 = !{!"../drivers/gpio/gpio-max732x.c", i32 103, i32 35}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{i64 2148970098, i64 2148970103, i64 2148970116, i64 2148970160, i64 2148970194, i64 2148970215}
!114 = !{!"auto-init"}
!115 = !{i32 0, i32 33}
!116 = !{i16 0, i16 17}
