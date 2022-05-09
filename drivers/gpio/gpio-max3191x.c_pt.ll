; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-max3191x.c_pt.bc'
source_filename = "../drivers/gpio/gpio-max3191x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.max3191x_chip = type { %struct.gpio_chip, %struct.mutex, i32, i32, ptr, ptr, ptr, ptr, %struct.spi_message, %struct.spi_transfer, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.71, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.71 = type { ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.gpio_descs = type { ptr, i32, [0 x ptr] }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }

@__initcall__kmod_gpio_max3191x__230_495_max3191x_driver_init6 = internal global ptr @max3191x_driver_init, section ".initcall6.init", align 4
@max3191x_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @max3191x_spi_id, ptr @max3191x_probe, ptr @max3191x_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max3191x_of_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_max3191x_driver_exit = internal global ptr @max3191x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author231 = internal constant [52 x i8] c"gpio_max3191x.author=Lukas Wunner <lukas@wunner.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [79 x i8] c"gpio_max3191x.description=GPIO driver for Maxim MAX3191x industrial serializer\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [46 x i8] c"gpio_max3191x.file=drivers/gpio/gpio-max3191x\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [29 x i8] c"gpio_max3191x.license=GPL v2\00", section ".modinfo", align 1
@max3191x_crc8 = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@max3191x_spi_id = internal constant { [7 x %struct.spi_device_id], [36 x i8] } { [7 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"max31910\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"max31911\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"max31912\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"max31913\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"max31953\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"max31963\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max3191x\00", [23 x i8] zeroinitializer }, align 32
@max3191x_of_id = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max31910\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max31911\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max31912\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max31913\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max31953\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max31963\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"#daisy-chained-devices\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"maxim,modesel\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"maxim,fault\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"maxim,db0\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"maxim,db1\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"maxim,modesel-8bit\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"maxim,ignore-undervoltage\00", [38 x i8] zeroinitializer }, align 32
@max3191x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 409, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ignoring maxim,db*-gpios: array len mismatch\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max3191x_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/gpio/gpio-max3191x.c\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max3191x_probe._entry_ptr = internal global ptr @max3191x_probe._entry, section ".printk_index", align 4
@max3191x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&max3191x->lock\00", [16 x i8] zeroinitializer }, align 32
@max3191x_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max3191x_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@devm_gpiod_get_array_optional_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.10, i32 344, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ignoring %s-gpios: found %d, expected %u or 1\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"devm_gpiod_get_array_optional_count\00", [60 x i8] zeroinitializer }, align 32
@devm_gpiod_get_array_optional_count._entry_ptr = internal global ptr @devm_gpiod_get_array_optional_count._entry, section ".printk_index", align 4
@devm_gpiod_get_array_optional_count._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.10, i32 352, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get %s-gpios: %ld\0A\00", [35 x i8] zeroinitializer }, align 32
@devm_gpiod_get_array_optional_count._entry_ptr.18 = internal global ptr @devm_gpiod_get_array_optional_count._entry.16, section ".printk_index", align 4
@max3191x_readout_locked._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.max3191x_readout_locked = private unnamed_addr constant [24 x i8] c"max3191x_readout_locked\00", align 1
@max3191x_readout_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @__func__.max3191x_readout_locked, ptr @.str.10, i32 132, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SPI receive error %d\0A\00", [42 x i8] zeroinitializer }, align 32
@max3191x_readout_locked._entry_ptr = internal global ptr @max3191x_readout_locked._entry, section ".printk_index", align 4
@max3191x_readout_locked._rs.21 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@max3191x_readout_locked._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @__func__.max3191x_readout_locked, ptr @.str.10, i32 145, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"chip %d: CRC error\0A\00", [44 x i8] zeroinitializer }, align 32
@max3191x_readout_locked._entry_ptr.24 = internal global ptr @max3191x_readout_locked._entry.22, section ".printk_index", align 4
@max3191x_readout_locked._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@max3191x_readout_locked._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @__func__.max3191x_readout_locked, ptr @.str.10, i32 151, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"chip %d: overtemperature\0A\00", [38 x i8] zeroinitializer }, align 32
@max3191x_readout_locked._entry_ptr.28 = internal global ptr @max3191x_readout_locked._entry.26, section ".printk_index", align 4
@max3191x_readout_locked._rs.29 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@max3191x_readout_locked._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @__func__.max3191x_readout_locked, ptr @.str.10, i32 158, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"chip %d: undervoltage\0A\00", [41 x i8] zeroinitializer }, align 32
@max3191x_readout_locked._entry_ptr.32 = internal global ptr @max3191x_readout_locked._entry.30, section ".printk_index", align 4
@max3191x_readout_locked._rs.33 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@max3191x_readout_locked._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @__func__.max3191x_readout_locked, ptr @.str.10, i32 164, ptr @.str.36, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"chip %d: voltage warn\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@max3191x_readout_locked._entry_ptr.37 = internal global ptr @max3191x_readout_locked._entry.34, section ".printk_index", align 4
@max3191x_readout_locked._rs.38 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@max3191x_readout_locked._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @__func__.max3191x_readout_locked, ptr @.str.10, i32 178, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GPIO read error %d\0A\00", [44 x i8] zeroinitializer }, align 32
@max3191x_readout_locked._entry_ptr.41 = internal global ptr @max3191x_readout_locked._entry.39, section ".printk_index", align 4
@max3191x_readout_locked._rs.42 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@max3191x_readout_locked._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @__func__.max3191x_readout_locked, ptr @.str.10, i32 184, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"chip %d: fault\0A\00", [16 x i8] zeroinitializer }, align 32
@max3191x_readout_locked._entry_ptr.45 = internal global ptr @max3191x_readout_locked._entry.43, section ".printk_index", align 4
@switch.table.max3191x_set_config = internal constant { [26 x i32], [56 x i8] } { [26 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"max3191x_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 486, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant [14 x i8] c"max3191x_crc8\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 94, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"max3191x_spi_id\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 475, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 488, i32 12 }
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"max3191x_of_id\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 463, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 371, i32 32 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 388, i32 6 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 390, i32 6 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 392, i32 6 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 394, i32 6 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 396, i32 50 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 405, i32 9 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 409, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 435, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 437, i32 8 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 343, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 351, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 132, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 144, i32 5 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 150, i32 5 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 157, i32 6 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 163, i32 6 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 177, i32 5 }
@___asan_gen_.187 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.194 = private constant [32 x i8] c"../drivers/gpio/gpio-max3191x.c\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 183, i32 5 }
@___asan_gen_.196 = private unnamed_addr constant [33 x i8] c"switch.table.max3191x_set_config\00", align 1
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_max3191x_driver_exit, ptr @__initcall__kmod_gpio_max3191x__230_495_max3191x_driver_init6, ptr @devm_gpiod_get_array_optional_count._entry, ptr @devm_gpiod_get_array_optional_count._entry.16, ptr @devm_gpiod_get_array_optional_count._entry_ptr, ptr @devm_gpiod_get_array_optional_count._entry_ptr.18, ptr @max3191x_driver_exit, ptr @max3191x_probe._entry, ptr @max3191x_probe._entry_ptr, ptr @max3191x_readout_locked._entry, ptr @max3191x_readout_locked._entry.22, ptr @max3191x_readout_locked._entry.26, ptr @max3191x_readout_locked._entry.30, ptr @max3191x_readout_locked._entry.34, ptr @max3191x_readout_locked._entry.39, ptr @max3191x_readout_locked._entry.43, ptr @max3191x_readout_locked._entry_ptr, ptr @max3191x_readout_locked._entry_ptr.24, ptr @max3191x_readout_locked._entry_ptr.28, ptr @max3191x_readout_locked._entry_ptr.32, ptr @max3191x_readout_locked._entry_ptr.37, ptr @max3191x_readout_locked._entry_ptr.41, ptr @max3191x_readout_locked._entry_ptr.45, ptr @max3191x_driver, ptr @max3191x_crc8, ptr @max3191x_spi_id, ptr @.str, ptr @max3191x_of_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @max3191x_probe.__key, ptr @.str.13, ptr @max3191x_probe.lock_key, ptr @max3191x_probe.request_key, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @max3191x_readout_locked._rs, ptr @.str.19, ptr @.str.20, ptr @max3191x_readout_locked._rs.21, ptr @.str.23, ptr @max3191x_readout_locked._rs.25, ptr @.str.27, ptr @max3191x_readout_locked._rs.29, ptr @.str.31, ptr @max3191x_readout_locked._rs.33, ptr @.str.35, ptr @.str.36, ptr @max3191x_readout_locked._rs.38, ptr @.str.40, ptr @max3191x_readout_locked._rs.42, ptr @.str.44, ptr @switch.table.max3191x_set_config], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3191x_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3191x_crc8 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3191x_spi_id to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3191x_of_id to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3191x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3191x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3191x_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3191x_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_gpiod_get_array_optional_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_gpiod_get_array_optional_count._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3191x_readout_locked._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3191x_readout_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3191x_readout_locked._rs.21 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3191x_readout_locked._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3191x_readout_locked._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3191x_readout_locked._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3191x_readout_locked._rs.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3191x_readout_locked._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3191x_readout_locked._rs.33 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3191x_readout_locked._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3191x_readout_locked._rs.38 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3191x_readout_locked._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3191x_readout_locked._rs.42 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max3191x_readout_locked._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max3191x_set_config to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max3191x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @max3191x_register_driver() #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max3191x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @max3191x_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max3191x_register_driver() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @crc8_populate_msb(ptr noundef nonnull @max3191x_crc8, i8 noundef zeroext -88) #7
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @max3191x_driver) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crc8_populate_msb(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3191x_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 640, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %nchips = getelementptr inbounds %struct.max3191x_chip, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %nchips to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %nchips, align 4
  %call.i187 = tail call i32 @device_property_read_u32_array(ptr noundef %spi, ptr noundef nonnull @.str.1, ptr noundef %nchips, i32 noundef 1) #7
  %2 = ptrtoint ptr %nchips to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nchips, align 4
  %sub = add i32 %3, 31
  %4 = lshr i32 %sub, 3
  %5 = and i32 %4, 536870908
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef %5, i32 noundef 3520) #7
  %crc_error = getelementptr inbounds %struct.max3191x_chip, ptr %call.i, i32 0, i32 10
  %6 = ptrtoint ptr %crc_error to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5.i.i, ptr %crc_error, align 4
  %call5.i.i188 = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef %5, i32 noundef 3520) #7
  %undervolt1 = getelementptr inbounds %struct.max3191x_chip, ptr %call.i, i32 0, i32 12
  %7 = ptrtoint ptr %undervolt1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5.i.i188, ptr %undervolt1, align 4
  %call5.i.i192 = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef %5, i32 noundef 3520) #7
  %undervolt2 = getelementptr inbounds %struct.max3191x_chip, ptr %call.i, i32 0, i32 13
  %8 = ptrtoint ptr %undervolt2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i192, ptr %undervolt2, align 4
  %call5.i.i196 = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef %5, i32 noundef 3520) #7
  %overtemp = getelementptr inbounds %struct.max3191x_chip, ptr %call.i, i32 0, i32 11
  %9 = ptrtoint ptr %overtemp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5.i.i196, ptr %overtemp, align 4
  %call5.i.i200 = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef %5, i32 noundef 3520) #7
  %fault = getelementptr inbounds %struct.max3191x_chip, ptr %call.i, i32 0, i32 14
  %10 = ptrtoint ptr %fault to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5.i.i200, ptr %fault, align 4
  %11 = ptrtoint ptr %nchips to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nchips, align 4
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 2) #7
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %if.end.devm_kcalloc.exit207_crit_edge, label %if.end.i.i205, !prof !104

if.end.devm_kcalloc.exit207_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_kcalloc.exit207

if.end.i.i205:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = extractvalue { i32, i1 } %13, 0
  %call5.i.i204 = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef %15, i32 noundef 3520) #7
  br label %devm_kcalloc.exit207

devm_kcalloc.exit207:                             ; preds = %if.end.i.i205, %if.end.devm_kcalloc.exit207_crit_edge
  %retval.0.i.i206 = phi ptr [ %call5.i.i204, %if.end.i.i205 ], [ null, %if.end.devm_kcalloc.exit207_crit_edge ]
  %rx_buf = getelementptr inbounds %struct.max3191x_chip, ptr %call.i, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %retval.0.i.i206, ptr %rx_buf, align 4
  %17 = ptrtoint ptr %crc_error to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %crc_error, align 4
  %tobool13.not = icmp eq ptr %18, null
  br i1 %tobool13.not, label %devm_kcalloc.exit207.cleanup_crit_edge, label %lor.lhs.false

devm_kcalloc.exit207.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit207
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %devm_kcalloc.exit207
  %19 = ptrtoint ptr %undervolt1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %undervolt1, align 4
  %tobool15.not = icmp eq ptr %20, null
  br i1 %tobool15.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false16

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %21 = ptrtoint ptr %overtemp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %overtemp, align 4
  %tobool18.not = icmp eq ptr %22, null
  br i1 %tobool18.not, label %lor.lhs.false16.cleanup_crit_edge, label %lor.lhs.false19

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %23 = ptrtoint ptr %undervolt2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %undervolt2, align 4
  %tobool21.not = icmp eq ptr %24, null
  br i1 %tobool21.not, label %lor.lhs.false19.cleanup_crit_edge, label %lor.lhs.false22

lor.lhs.false19.cleanup_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %25 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fault, align 4
  %tobool24.not = icmp eq ptr %26, null
  %tobool28.not = icmp eq ptr %retval.0.i.i206, null
  %or.cond = select i1 %tobool24.not, i1 true, i1 %tobool28.not
  br i1 %or.cond, label %lor.lhs.false22.cleanup_crit_edge, label %if.end30

lor.lhs.false22.cleanup_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30:                                         ; preds = %lor.lhs.false22
  %27 = ptrtoint ptr %nchips to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nchips, align 4
  %call.i208 = tail call i32 @gpiod_count(ptr noundef %spi, ptr noundef nonnull @.str.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call.i208)
  %cmp.i = icmp eq i32 %call.i208, -2
  br i1 %cmp.i, label %if.end30.devm_gpiod_get_array_optional_count.exit_crit_edge, label %if.end.i

if.end30.devm_gpiod_get_array_optional_count.exit_crit_edge: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_gpiod_get_array_optional_count.exit

if.end.i:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i208, i32 %28)
  %cmp1.not.i = icmp eq i32 %call.i208, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i208)
  %cmp2.not.i = icmp eq i32 %call.i208, 1
  %or.cond.i = or i1 %cmp1.not.i, %cmp2.not.i
  br i1 %or.cond.i, label %if.end4.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, i32 noundef %call.i208, i32 noundef %28) #11
  br label %devm_gpiod_get_array_optional_count.exit

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call ptr @devm_gpiod_get_array_optional(ptr noundef %spi, ptr noundef nonnull @.str.2, i32 noundef 0) #7
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end10.i, label %if.end4.i.devm_gpiod_get_array_optional_count.exit_crit_edge

if.end4.i.devm_gpiod_get_array_optional_count.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_gpiod_get_array_optional_count.exit

do.end10.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %call5.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.2, i32 noundef %29) #11
  br label %devm_gpiod_get_array_optional_count.exit

devm_gpiod_get_array_optional_count.exit:         ; preds = %do.end10.i, %if.end4.i.devm_gpiod_get_array_optional_count.exit_crit_edge, %do.end.i, %if.end30.devm_gpiod_get_array_optional_count.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ null, %do.end10.i ], [ null, %if.end30.devm_gpiod_get_array_optional_count.exit_crit_edge ], [ %call5.i, %if.end4.i.devm_gpiod_get_array_optional_count.exit_crit_edge ]
  %modesel_pins = getelementptr inbounds %struct.max3191x_chip, ptr %call.i, i32 0, i32 4
  %30 = ptrtoint ptr %modesel_pins to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %retval.0.i, ptr %modesel_pins, align 4
  %31 = ptrtoint ptr %nchips to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nchips, align 4
  %call.i209 = tail call i32 @gpiod_count(ptr noundef %spi, ptr noundef nonnull @.str.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call.i209)
  %cmp.i210 = icmp eq i32 %call.i209, -2
  br i1 %cmp.i210, label %devm_gpiod_get_array_optional_count.exit.devm_gpiod_get_array_optional_count.exit221_crit_edge, label %if.end.i214

devm_gpiod_get_array_optional_count.exit.devm_gpiod_get_array_optional_count.exit221_crit_edge: ; preds = %devm_gpiod_get_array_optional_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_gpiod_get_array_optional_count.exit221

if.end.i214:                                      ; preds = %devm_gpiod_get_array_optional_count.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i209, i32 %32)
  %cmp1.not.i211 = icmp eq i32 %call.i209, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i209)
  %cmp2.not.i212 = icmp eq i32 %call.i209, 1
  %or.cond.i213 = or i1 %cmp1.not.i211, %cmp2.not.i212
  br i1 %or.cond.i213, label %if.end4.i218, label %do.end.i215

do.end.i215:                                      ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.3, i32 noundef %call.i209, i32 noundef %32) #11
  br label %devm_gpiod_get_array_optional_count.exit221

if.end4.i218:                                     ; preds = %if.end.i214
  %call5.i216 = tail call ptr @devm_gpiod_get_array_optional(ptr noundef %spi, ptr noundef nonnull @.str.3, i32 noundef 1) #7
  %cmp.i.i217 = icmp ugt ptr %call5.i216, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i217, label %do.end10.i219, label %if.end4.i218.devm_gpiod_get_array_optional_count.exit221_crit_edge

if.end4.i218.devm_gpiod_get_array_optional_count.exit221_crit_edge: ; preds = %if.end4.i218
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_gpiod_get_array_optional_count.exit221

do.end10.i219:                                    ; preds = %if.end4.i218
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %call5.i216 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.3, i32 noundef %33) #11
  br label %devm_gpiod_get_array_optional_count.exit221

devm_gpiod_get_array_optional_count.exit221:      ; preds = %do.end10.i219, %if.end4.i218.devm_gpiod_get_array_optional_count.exit221_crit_edge, %do.end.i215, %devm_gpiod_get_array_optional_count.exit.devm_gpiod_get_array_optional_count.exit221_crit_edge
  %retval.0.i220 = phi ptr [ null, %do.end.i215 ], [ null, %do.end10.i219 ], [ null, %devm_gpiod_get_array_optional_count.exit.devm_gpiod_get_array_optional_count.exit221_crit_edge ], [ %call5.i216, %if.end4.i218.devm_gpiod_get_array_optional_count.exit221_crit_edge ]
  %fault_pins = getelementptr inbounds %struct.max3191x_chip, ptr %call.i, i32 0, i32 5
  %34 = ptrtoint ptr %fault_pins to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %retval.0.i220, ptr %fault_pins, align 4
  %35 = ptrtoint ptr %nchips to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nchips, align 4
  %call.i222 = tail call i32 @gpiod_count(ptr noundef %spi, ptr noundef nonnull @.str.4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call.i222)
  %cmp.i223 = icmp eq i32 %call.i222, -2
  br i1 %cmp.i223, label %devm_gpiod_get_array_optional_count.exit221.devm_gpiod_get_array_optional_count.exit234_crit_edge, label %if.end.i227

devm_gpiod_get_array_optional_count.exit221.devm_gpiod_get_array_optional_count.exit234_crit_edge: ; preds = %devm_gpiod_get_array_optional_count.exit221
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_gpiod_get_array_optional_count.exit234

if.end.i227:                                      ; preds = %devm_gpiod_get_array_optional_count.exit221
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i222, i32 %36)
  %cmp1.not.i224 = icmp eq i32 %call.i222, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i222)
  %cmp2.not.i225 = icmp eq i32 %call.i222, 1
  %or.cond.i226 = or i1 %cmp1.not.i224, %cmp2.not.i225
  br i1 %or.cond.i226, label %if.end4.i231, label %do.end.i228

do.end.i228:                                      ; preds = %if.end.i227
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.4, i32 noundef %call.i222, i32 noundef %36) #11
  br label %devm_gpiod_get_array_optional_count.exit234

if.end4.i231:                                     ; preds = %if.end.i227
  %call5.i229 = tail call ptr @devm_gpiod_get_array_optional(ptr noundef %spi, ptr noundef nonnull @.str.4, i32 noundef 3) #7
  %cmp.i.i230 = icmp ugt ptr %call5.i229, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i230, label %do.end10.i232, label %if.end4.i231.devm_gpiod_get_array_optional_count.exit234_crit_edge

if.end4.i231.devm_gpiod_get_array_optional_count.exit234_crit_edge: ; preds = %if.end4.i231
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_gpiod_get_array_optional_count.exit234

do.end10.i232:                                    ; preds = %if.end4.i231
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %call5.i229 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.4, i32 noundef %37) #11
  br label %devm_gpiod_get_array_optional_count.exit234

devm_gpiod_get_array_optional_count.exit234:      ; preds = %do.end10.i232, %if.end4.i231.devm_gpiod_get_array_optional_count.exit234_crit_edge, %do.end.i228, %devm_gpiod_get_array_optional_count.exit221.devm_gpiod_get_array_optional_count.exit234_crit_edge
  %retval.0.i233 = phi ptr [ null, %do.end.i228 ], [ null, %do.end10.i232 ], [ null, %devm_gpiod_get_array_optional_count.exit221.devm_gpiod_get_array_optional_count.exit234_crit_edge ], [ %call5.i229, %if.end4.i231.devm_gpiod_get_array_optional_count.exit234_crit_edge ]
  %db0_pins = getelementptr inbounds %struct.max3191x_chip, ptr %call.i, i32 0, i32 6
  %38 = ptrtoint ptr %db0_pins to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %retval.0.i233, ptr %db0_pins, align 4
  %39 = ptrtoint ptr %nchips to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nchips, align 4
  %call.i235 = tail call i32 @gpiod_count(ptr noundef %spi, ptr noundef nonnull @.str.5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call.i235)
  %cmp.i236 = icmp eq i32 %call.i235, -2
  br i1 %cmp.i236, label %devm_gpiod_get_array_optional_count.exit234.devm_gpiod_get_array_optional_count.exit247_crit_edge, label %if.end.i240

devm_gpiod_get_array_optional_count.exit234.devm_gpiod_get_array_optional_count.exit247_crit_edge: ; preds = %devm_gpiod_get_array_optional_count.exit234
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_gpiod_get_array_optional_count.exit247

if.end.i240:                                      ; preds = %devm_gpiod_get_array_optional_count.exit234
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i235, i32 %40)
  %cmp1.not.i237 = icmp eq i32 %call.i235, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i235)
  %cmp2.not.i238 = icmp eq i32 %call.i235, 1
  %or.cond.i239 = or i1 %cmp1.not.i237, %cmp2.not.i238
  br i1 %or.cond.i239, label %if.end4.i244, label %do.end.i241

do.end.i241:                                      ; preds = %if.end.i240
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef %call.i235, i32 noundef %40) #11
  br label %devm_gpiod_get_array_optional_count.exit247

if.end4.i244:                                     ; preds = %if.end.i240
  %call5.i242 = tail call ptr @devm_gpiod_get_array_optional(ptr noundef %spi, ptr noundef nonnull @.str.5, i32 noundef 3) #7
  %cmp.i.i243 = icmp ugt ptr %call5.i242, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i243, label %do.end10.i245, label %if.end4.i244.devm_gpiod_get_array_optional_count.exit247_crit_edge

if.end4.i244.devm_gpiod_get_array_optional_count.exit247_crit_edge: ; preds = %if.end4.i244
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_gpiod_get_array_optional_count.exit247

do.end10.i245:                                    ; preds = %if.end4.i244
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %call5.i242 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.5, i32 noundef %41) #11
  br label %devm_gpiod_get_array_optional_count.exit247

devm_gpiod_get_array_optional_count.exit247:      ; preds = %do.end10.i245, %if.end4.i244.devm_gpiod_get_array_optional_count.exit247_crit_edge, %do.end.i241, %devm_gpiod_get_array_optional_count.exit234.devm_gpiod_get_array_optional_count.exit247_crit_edge
  %retval.0.i246 = phi ptr [ null, %do.end.i241 ], [ null, %do.end10.i245 ], [ null, %devm_gpiod_get_array_optional_count.exit234.devm_gpiod_get_array_optional_count.exit247_crit_edge ], [ %call5.i242, %if.end4.i244.devm_gpiod_get_array_optional_count.exit247_crit_edge ]
  %db1_pins = getelementptr inbounds %struct.max3191x_chip, ptr %call.i, i32 0, i32 7
  %42 = ptrtoint ptr %db1_pins to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %retval.0.i246, ptr %db1_pins, align 4
  %call.i248 = tail call zeroext i1 @device_property_present(ptr noundef %spi, ptr noundef nonnull @.str.6) #7
  %cond = zext i1 %call.i248 to i32
  %mode = getelementptr inbounds %struct.max3191x_chip, ptr %call.i, i32 0, i32 3
  %43 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %cond, ptr %mode, align 4
  %44 = ptrtoint ptr %modesel_pins to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %modesel_pins, align 4
  %tobool41.not = icmp eq ptr %45, null
  br i1 %tobool41.not, label %devm_gpiod_get_array_optional_count.exit247.if.end47_crit_edge, label %if.then42

devm_gpiod_get_array_optional_count.exit247.if.end47_crit_edge: ; preds = %devm_gpiod_get_array_optional_count.exit247
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then42:                                        ; preds = %devm_gpiod_get_array_optional_count.exit247
  %ndescs = getelementptr inbounds %struct.gpio_descs, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %ndescs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ndescs, align 4
  %desc = getelementptr inbounds %struct.gpio_descs, ptr %45, i32 0, i32 2
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %45, align 4
  %call.i249 = tail call ptr @bitmap_alloc(i32 noundef %47, i32 noundef 3264) #7
  %tobool.not.i = icmp eq ptr %call.i249, null
  br i1 %tobool.not.i, label %if.then42.if.end47_crit_edge, label %if.end.i250

if.then42.if.end47_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.end.i250:                                      ; preds = %if.then42
  %sub.i12.i = add i32 %47, 31
  %50 = lshr i32 %sub.i12.i, 3
  %mul.i13.i = and i32 %50, 536870908
  br i1 %call.i248, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #9
  %51 = call ptr @memset(ptr %call.i249, i32 255, i32 %mul.i13.i)
  br label %if.end3.i

if.else.i:                                        ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #9
  %52 = call ptr @memset(ptr %call.i249, i32 0, i32 %mul.i13.i)
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.else.i, %if.then2.i
  %call4.i = tail call i32 @gpiod_set_array_value_cansleep(i32 noundef %47, ptr noundef %desc, ptr noundef %49, ptr noundef nonnull %call.i249) #7
  tail call void @bitmap_free(ptr noundef nonnull %call.i249) #7
  br label %if.end47

if.end47:                                         ; preds = %if.end3.i, %if.then42.if.end47_crit_edge, %devm_gpiod_get_array_optional_count.exit247.if.end47_crit_edge
  %call.i251 = tail call zeroext i1 @device_property_present(ptr noundef %spi, ptr noundef nonnull @.str.7) #7
  %ignore_uv = getelementptr inbounds %struct.max3191x_chip, ptr %call.i, i32 0, i32 15
  %frombool = zext i1 %call.i251 to i8
  %53 = ptrtoint ptr %ignore_uv to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %frombool, ptr %ignore_uv, align 4
  %54 = ptrtoint ptr %db0_pins to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %db0_pins, align 4
  %tobool50.not = icmp eq ptr %55, null
  br i1 %tobool50.not, label %if.end47.if.end63_crit_edge, label %land.lhs.true

if.end47.if.end63_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

land.lhs.true:                                    ; preds = %if.end47
  %56 = ptrtoint ptr %db1_pins to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %db1_pins, align 4
  %tobool52.not = icmp eq ptr %57, null
  br i1 %tobool52.not, label %land.lhs.true.if.end63_crit_edge, label %land.lhs.true53

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

land.lhs.true53:                                  ; preds = %land.lhs.true
  %ndescs55 = getelementptr inbounds %struct.gpio_descs, ptr %55, i32 0, i32 1
  %58 = ptrtoint ptr %ndescs55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ndescs55, align 4
  %ndescs57 = getelementptr inbounds %struct.gpio_descs, ptr %57, i32 0, i32 1
  %60 = ptrtoint ptr %ndescs57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ndescs57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp.not = icmp eq i32 %59, %61
  br i1 %cmp.not, label %land.lhs.true53.if.end63_crit_edge, label %do.end

land.lhs.true53.if.end63_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

do.end:                                           ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.8) #11
  %62 = ptrtoint ptr %db0_pins to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %db0_pins, align 4
  tail call void @devm_gpiod_put_array(ptr noundef %spi, ptr noundef %63) #7
  %64 = ptrtoint ptr %db1_pins to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %db1_pins, align 4
  tail call void @devm_gpiod_put_array(ptr noundef %spi, ptr noundef %65) #7
  %66 = ptrtoint ptr %db0_pins to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %db0_pins, align 4
  %67 = ptrtoint ptr %db1_pins to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %db1_pins, align 4
  br label %if.end63

if.end63:                                         ; preds = %do.end, %land.lhs.true53.if.end63_crit_edge, %land.lhs.true.if.end63_crit_edge, %if.end47.if.end63_crit_edge
  %68 = ptrtoint ptr %nchips to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nchips, align 4
  %70 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i252 = icmp eq i32 %71, 0
  %cond.i = select i1 %cmp.i252, i32 2, i32 1
  %mul = mul i32 %cond.i, %69
  %len = getelementptr inbounds %struct.max3191x_chip, ptr %call.i, i32 0, i32 9, i32 2
  %72 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %mul, ptr %len, align 4
  %mesg = getelementptr inbounds %struct.max3191x_chip, ptr %call.i, i32 0, i32 8
  %73 = getelementptr inbounds %struct.max3191x_chip, ptr %call.i, i32 0, i32 8, i32 1
  %74 = call ptr @memset(ptr %73, i32 0, i32 40)
  %75 = ptrtoint ptr %mesg to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %mesg, ptr %mesg, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.max3191x_chip, ptr %call.i, i32 0, i32 8, i32 0, i32 1
  %76 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %mesg, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.max3191x_chip, ptr %call.i, i32 0, i32 8, i32 10
  %77 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.max3191x_chip, ptr %call.i, i32 0, i32 8, i32 10, i32 1
  %78 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.max3191x_chip, ptr %call.i, i32 0, i32 9, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef %mesg, ptr noundef %mesg) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end63.spi_message_init_with_transfers.exit_crit_edge

if.end63.spi_message_init_with_transfers.exit_crit_edge: ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_init_with_transfers.exit

if.end.i.i.i.i:                                   ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %80 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %mesg, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.max3191x_chip, ptr %call.i, i32 0, i32 9, i32 18, i32 1
  %81 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %mesg, ptr %prev3.i.i.i.i, align 4
  %82 = ptrtoint ptr %mesg to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %transfer_list.i.i, ptr %mesg, align 4
  br label %spi_message_init_with_transfers.exit

spi_message_init_with_transfers.exit:             ; preds = %if.end.i.i.i.i, %if.end63.spi_message_init_with_transfers.exit_crit_edge
  %modalias = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 11
  %83 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %modalias, ptr %call.i, align 4
  %owner = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 4
  %84 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %owner, align 4
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %85 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %spi, ptr %parent, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %86 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %base, align 4
  %87 = ptrtoint ptr %nchips to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %nchips, align 4
  %.tr = trunc i32 %88 to i16
  %conv = shl i16 %.tr, 3
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %89 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv, ptr %ngpio, align 4
  %can_sleep = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 23
  %90 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %can_sleep, align 4
  %get_direction = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 7
  %91 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @max3191x_get_direction, ptr %get_direction, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 8
  %92 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @max3191x_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 9
  %93 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @max3191x_direction_output, ptr %direction_output, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %94 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @max3191x_set, ptr %set, align 4
  %set_multiple = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 13
  %95 = ptrtoint ptr %set_multiple to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @max3191x_set_multiple, ptr %set_multiple, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %96 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @max3191x_get, ptr %get, align 4
  %get_multiple = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 11
  %97 = ptrtoint ptr %get_multiple to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @max3191x_get_multiple, ptr %get_multiple, align 4
  %set_config = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 14
  %98 = ptrtoint ptr %set_config to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @max3191x_set_config, ptr %set_config, align 4
  %lock = getelementptr inbounds %struct.max3191x_chip, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @max3191x_probe.__key) #7
  %call88 = tail call i32 @gpiochip_add_data_with_key(ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @max3191x_probe.lock_key, ptr noundef nonnull @max3191x_probe.request_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %spi_message_init_with_transfers.exit.cleanup_crit_edge, label %if.then90

spi_message_init_with_transfers.exit.cleanup_crit_edge: ; preds = %spi_message_init_with_transfers.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then90:                                        ; preds = %spi_message_init_with_transfers.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_destroy(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then90, %spi_message_init_with_transfers.exit.cleanup_crit_edge, %lor.lhs.false22.cleanup_crit_edge, %lor.lhs.false19.cleanup_crit_edge, %lor.lhs.false16.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %devm_kcalloc.exit207.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call88, %if.then90 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %lor.lhs.false22.cleanup_crit_edge ], [ -12, %lor.lhs.false19.cleanup_crit_edge ], [ -12, %lor.lhs.false16.cleanup_crit_edge ], [ -12, %lor.lhs.false.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit207.cleanup_crit_edge ], [ 0, %spi_message_init_with_transfers.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3191x_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @gpiochip_remove(ptr noundef %1) #7
  %lock = getelementptr inbounds %struct.max3191x_chip, ptr %1, i32 0, i32 1
  tail call void @mutex_destroy(ptr noundef %lock) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_gpiod_put_array(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max3191x_get_direction(ptr nocapture noundef readnone %gpio, i32 noundef %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max3191x_direction_input(ptr nocapture noundef readnone %gpio, i32 noundef %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max3191x_direction_output(ptr nocapture noundef readnone %gpio, i32 noundef %offset, i32 noundef %value) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @max3191x_set(ptr nocapture noundef %gpio, i32 noundef %offset, i32 noundef %value) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @max3191x_set_multiple(ptr nocapture noundef %gpio, ptr nocapture noundef %mask, ptr nocapture noundef %bits) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3191x_get(ptr noundef %gpio, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gpio) #7
  %mode.i = getelementptr inbounds %struct.max3191x_chip, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  %cond.i = select i1 %cmp.i, i32 2, i32 1
  %lock = getelementptr inbounds %struct.max3191x_chip, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %call2 = tail call fastcc i32 @max3191x_readout_locked(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end:                                           ; preds = %entry
  %div15 = lshr i32 %offset, 3
  %ignore_uv.i = getelementptr inbounds %struct.max3191x_chip, ptr %call, i32 0, i32 15
  %2 = ptrtoint ptr %ignore_uv.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ignore_uv.i, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %fault.i = getelementptr inbounds %struct.max3191x_chip, ptr %call, i32 0, i32 14
  %4 = ptrtoint ptr %fault.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fault.i, align 4
  %div3.i.i = lshr i32 %offset, 8
  %arrayidx.i.i = getelementptr i32, ptr %5, i32 %div3.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %div15, 31
  %8 = shl nuw i32 1, %and.i.i
  %9 = and i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not.i = icmp eq i32 %9, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.out_unlock_crit_edge

land.lhs.true.i.out_unlock_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %10 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i17 = icmp eq i32 %11, 1
  br i1 %cmp.i17, label %if.end.i.if.end5_crit_edge, label %if.end3.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end3.i:                                        ; preds = %if.end.i
  %crc_error.i = getelementptr inbounds %struct.max3191x_chip, ptr %call, i32 0, i32 10
  %12 = ptrtoint ptr %crc_error.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crc_error.i, align 4
  %div3.i21.i = lshr i32 %offset, 8
  %arrayidx.i22.i = getelementptr i32, ptr %13, i32 %div3.i21.i
  %14 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i22.i, align 4
  %and.i23.i = and i32 %div15, 31
  %16 = shl nuw i32 1, %and.i23.i
  %17 = and i32 %15, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool5.not.i = icmp eq i32 %17, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.i, label %if.end3.i.out_unlock_crit_edge

if.end3.i.out_unlock_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

lor.lhs.false.i:                                  ; preds = %if.end3.i
  %overtemp.i = getelementptr inbounds %struct.max3191x_chip, ptr %call, i32 0, i32 11
  %18 = ptrtoint ptr %overtemp.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %overtemp.i, align 4
  %arrayidx.i27.i = getelementptr i32, ptr %19, i32 %div3.i21.i
  %20 = ptrtoint ptr %arrayidx.i27.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx.i27.i, align 4
  %22 = and i32 %21, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool7.not.i = icmp ne i32 %22, 0
  %tobool.not.not.i = xor i1 %tobool.not.i, true
  %brmerge.i = select i1 %tobool7.not.i, i1 true, i1 %tobool.not.not.i
  br i1 %brmerge.i, label %max3191x_chip_is_faulting.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %lor.lhs.false.i
  %undervolt1.i = getelementptr inbounds %struct.max3191x_chip, ptr %call, i32 0, i32 12
  %23 = ptrtoint ptr %undervolt1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %undervolt1.i, align 4
  %arrayidx.i32.i = getelementptr i32, ptr %24, i32 %div3.i21.i
  %25 = ptrtoint ptr %arrayidx.i32.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %arrayidx.i32.i, align 4
  %27 = and i32 %26, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool11.i.not = icmp eq i32 %27, 0
  br i1 %tobool11.i.not, label %land.rhs.i.if.end5_crit_edge, label %land.rhs.i.out_unlock_crit_edge

land.rhs.i.out_unlock_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

land.rhs.i.if.end5_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

max3191x_chip_is_faulting.exit:                   ; preds = %lor.lhs.false.i
  br i1 %tobool7.not.i, label %max3191x_chip_is_faulting.exit.out_unlock_crit_edge, label %max3191x_chip_is_faulting.exit.if.end5_crit_edge

max3191x_chip_is_faulting.exit.if.end5_crit_edge: ; preds = %max3191x_chip_is_faulting.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

max3191x_chip_is_faulting.exit.out_unlock_crit_edge: ; preds = %max3191x_chip_is_faulting.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end5:                                          ; preds = %max3191x_chip_is_faulting.exit.if.end5_crit_edge, %land.rhs.i.if.end5_crit_edge, %if.end.i.if.end5_crit_edge
  %rx_buf = getelementptr inbounds %struct.max3191x_chip, ptr %call, i32 0, i32 9, i32 1
  %28 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_buf, align 4
  %mul = mul nuw nsw i32 %cond.i, %div15
  %arrayidx = getelementptr i8, ptr %29, i32 %mul
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %31 to i32
  %rem = and i32 %offset, 7
  %shr = lshr i32 %conv, %rem
  %and = and i32 %shr, 1
  br label %out_unlock

out_unlock:                                       ; preds = %if.end5, %max3191x_chip_is_faulting.exit.out_unlock_crit_edge, %land.rhs.i.out_unlock_crit_edge, %if.end3.i.out_unlock_crit_edge, %land.lhs.true.i.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call2, %entry.out_unlock_crit_edge ], [ %and, %if.end5 ], [ -5, %max3191x_chip_is_faulting.exit.out_unlock_crit_edge ], [ -5, %land.rhs.i.out_unlock_crit_edge ], [ -5, %land.lhs.true.i.out_unlock_crit_edge ], [ -5, %if.end3.i.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3191x_get_multiple(ptr noundef %gpio, ptr noundef %mask, ptr nocapture noundef %bits) #2 align 64 {
entry:
  %gpio_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gpio) #7
  %mode.i = getelementptr inbounds %struct.max3191x_chip, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  %cond.i = select i1 %cmp.i, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_mask) #7
  %2 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %gpio_mask, align 4, !annotation !106
  %lock = getelementptr inbounds %struct.max3191x_chip, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %call2 = tail call fastcc i32 @max3191x_readout_locked(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end:                                           ; preds = %entry
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %gpio, i32 0, i32 20
  %3 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %4 to i32
  %sub.i = add nuw nsw i32 %conv, 31
  %5 = lshr i32 %sub.i, 3
  %mul.i = and i32 %5, 16380
  %6 = call ptr @memset(ptr %bits, i32 0, i32 %mul.i)
  %7 = load i16, ptr %ngpio, align 4
  %conv4 = zext i16 %7 to i32
  %call5 = call i32 @find_next_clump8(ptr noundef nonnull %gpio_mask, ptr noundef %mask, i32 noundef %conv4, i32 noundef 0) #7
  %fault.i = getelementptr inbounds %struct.max3191x_chip, ptr %call, i32 0, i32 14
  %crc_error.i = getelementptr inbounds %struct.max3191x_chip, ptr %call, i32 0, i32 10
  %undervolt1.i = getelementptr inbounds %struct.max3191x_chip, ptr %call, i32 0, i32 12
  %8 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ngpio, align 4
  %conv750 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %conv750)
  %cmp51 = icmp ult i32 %call5, %conv750
  br i1 %cmp51, label %for.body.lr.ph, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

for.body.lr.ph:                                   ; preds = %if.end
  %ignore_uv.i = getelementptr inbounds %struct.max3191x_chip, ptr %call, i32 0, i32 15
  %overtemp.i = getelementptr inbounds %struct.max3191x_chip, ptr %call, i32 0, i32 11
  %rx_buf = getelementptr inbounds %struct.max3191x_chip, ptr %call, i32 0, i32 9, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %bit.052 = phi i32 [ %call5, %for.body.lr.ph ], [ %call15, %for.inc.for.body_crit_edge ]
  %div40 = lshr i32 %bit.052, 3
  %10 = ptrtoint ptr %ignore_uv.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ignore_uv.i, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.if.end.i_crit_edge

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body
  %12 = ptrtoint ptr %fault.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fault.i, align 4
  %div3.i.i = lshr i32 %bit.052, 8
  %arrayidx.i.i = getelementptr i32, ptr %13, i32 %div3.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %div40, 31
  %16 = shl nuw i32 1, %and.i.i
  %17 = and i32 %15, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool1.not.i = icmp eq i32 %17, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.out_unlock_crit_edge

land.lhs.true.i.out_unlock_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.if.end.i_crit_edge
  %18 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i43 = icmp eq i32 %19, 1
  br i1 %cmp.i43, label %if.end.i.for.inc_crit_edge, label %if.end3.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end3.i:                                        ; preds = %if.end.i
  %20 = ptrtoint ptr %crc_error.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %crc_error.i, align 4
  %div3.i21.i = lshr i32 %bit.052, 8
  %arrayidx.i22.i = getelementptr i32, ptr %21, i32 %div3.i21.i
  %22 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i22.i, align 4
  %and.i23.i = and i32 %div40, 31
  %24 = shl nuw i32 1, %and.i23.i
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool5.not.i = icmp eq i32 %25, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.i, label %if.end3.i.out_unlock_crit_edge

if.end3.i.out_unlock_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

lor.lhs.false.i:                                  ; preds = %if.end3.i
  %26 = ptrtoint ptr %overtemp.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %overtemp.i, align 4
  %arrayidx.i27.i = getelementptr i32, ptr %27, i32 %div3.i21.i
  %28 = ptrtoint ptr %arrayidx.i27.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %arrayidx.i27.i, align 4
  %30 = and i32 %29, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool7.not.i = icmp ne i32 %30, 0
  %tobool.not.not.i = xor i1 %tobool.not.i, true
  %brmerge.i = select i1 %tobool7.not.i, i1 true, i1 %tobool.not.not.i
  br i1 %brmerge.i, label %max3191x_chip_is_faulting.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %lor.lhs.false.i
  %31 = ptrtoint ptr %undervolt1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %undervolt1.i, align 4
  %arrayidx.i32.i = getelementptr i32, ptr %32, i32 %div3.i21.i
  %33 = ptrtoint ptr %arrayidx.i32.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %arrayidx.i32.i, align 4
  %35 = and i32 %34, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool11.i.not = icmp eq i32 %35, 0
  br i1 %tobool11.i.not, label %land.rhs.i.for.inc_crit_edge, label %land.rhs.i.out_unlock_crit_edge

land.rhs.i.out_unlock_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

land.rhs.i.for.inc_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

max3191x_chip_is_faulting.exit:                   ; preds = %lor.lhs.false.i
  br i1 %tobool7.not.i, label %max3191x_chip_is_faulting.exit.out_unlock_crit_edge, label %max3191x_chip_is_faulting.exit.for.inc_crit_edge

max3191x_chip_is_faulting.exit.for.inc_crit_edge: ; preds = %max3191x_chip_is_faulting.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

max3191x_chip_is_faulting.exit.out_unlock_crit_edge: ; preds = %max3191x_chip_is_faulting.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

for.inc:                                          ; preds = %max3191x_chip_is_faulting.exit.for.inc_crit_edge, %land.rhs.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge
  %36 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rx_buf, align 4
  %mul = mul nuw nsw i32 %div40, %cond.i
  %arrayidx = getelementptr i8, ptr %37, i32 %mul
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx, align 1
  %conv12 = zext i8 %39 to i32
  %40 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %gpio_mask, align 4
  %and = and i32 %41, %conv12
  %div7.i = lshr i32 %bit.052, 5
  %rem.i = and i32 %bit.052, 31
  %shl.i = shl i32 255, %rem.i
  %neg.i = xor i32 %shl.i, -1
  %arrayidx.i = getelementptr i32, ptr %bits, i32 %div7.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %43, %neg.i
  %shl1.i = shl i32 %and, %rem.i
  %or.i = or i32 %and.i, %shl1.i
  store i32 %or.i, ptr %arrayidx.i, align 4
  %44 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %ngpio, align 4
  %conv14 = zext i16 %45 to i32
  %add = add i32 %bit.052, 8
  %call15 = call i32 @find_next_clump8(ptr noundef nonnull %gpio_mask, ptr noundef %mask, i32 noundef %conv14, i32 noundef %add) #7
  %46 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %ngpio, align 4
  %conv7 = zext i16 %47 to i32
  %cmp = icmp ult i32 %call15, %conv7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.out_unlock_crit_edge

for.inc.out_unlock_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

out_unlock:                                       ; preds = %for.inc.out_unlock_crit_edge, %max3191x_chip_is_faulting.exit.out_unlock_crit_edge, %land.rhs.i.out_unlock_crit_edge, %if.end3.i.out_unlock_crit_edge, %land.lhs.true.i.out_unlock_crit_edge, %if.end.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %ret.2 = phi i32 [ %call2, %entry.out_unlock_crit_edge ], [ 0, %if.end.out_unlock_crit_edge ], [ 0, %for.inc.out_unlock_crit_edge ], [ -5, %max3191x_chip_is_faulting.exit.out_unlock_crit_edge ], [ -5, %land.rhs.i.out_unlock_crit_edge ], [ -5, %land.lhs.true.i.out_unlock_crit_edge ], [ -5, %if.end3.i.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_mask) #7
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max3191x_set_config(ptr noundef %gpio, i32 noundef %offset, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gpio) #7
  %and.i = and i32 %config, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and.i)
  %cmp.not = icmp eq i32 %and.i, 11
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %db0_pins = getelementptr inbounds %struct.max3191x_chip, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %db0_pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %db0_pins, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %db1_pins = getelementptr inbounds %struct.max3191x_chip, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %db1_pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %db1_pins, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %shr.i = lshr i32 %config, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6656, i32 %config)
  %4 = icmp ult i32 %config, 6656
  br i1 %4, label %switch.lookup, label %sw.caserange9

sw.caserange:                                     ; preds = %sw.caserange9
  %5 = add nsw i32 %shr.i, -26
  call void @__sanitizer_cov_trace_const_cmp4(i32 725, i32 %5)
  %inbounds = icmp ult i32 %5, 725
  br i1 %inbounds, label %sw.caserange.sw.epilog_crit_edge, label %sw.caserange.cleanup_crit_edge

sw.caserange.cleanup_crit_edge:                   ; preds = %sw.caserange
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.caserange.sw.epilog_crit_edge:                 ; preds = %sw.caserange
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.caserange9:                                    ; preds = %if.end4
  %6 = add nsw i32 %shr.i, -751
  call void @__sanitizer_cov_trace_const_cmp4(i32 2250, i32 %6)
  %inbounds10 = icmp ult i32 %6, 2250
  br i1 %inbounds10, label %sw.caserange9.sw.epilog_crit_edge, label %sw.caserange

sw.caserange9.sw.epilog_crit_edge:                ; preds = %sw.caserange9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [26 x i32], ptr @switch.table.max3191x_set_config, i32 0, i32 %shr.i
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %sw.caserange9.sw.epilog_crit_edge, %sw.caserange.sw.epilog_crit_edge
  %db0_val.0 = phi i32 [ 1, %sw.caserange.sw.epilog_crit_edge ], [ 1, %sw.caserange9.sw.epilog_crit_edge ], [ 0, %switch.lookup ]
  %db1_val.0 = phi i32 [ 0, %sw.caserange.sw.epilog_crit_edge ], [ 1, %sw.caserange9.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %ndescs = getelementptr inbounds %struct.gpio_descs, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %ndescs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ndescs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp12 = icmp eq i32 %9, 1
  %div32 = lshr i32 %offset, 3
  %chipnum.0 = select i1 %cmp12, i32 0, i32 %div32
  %lock = getelementptr inbounds %struct.max3191x_chip, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %10 = ptrtoint ptr %db0_pins to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %db0_pins, align 4
  %arrayidx = getelementptr %struct.gpio_descs, ptr %11, i32 0, i32 2, i32 %chipnum.0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %13, i32 noundef %db0_val.0) #7
  %14 = ptrtoint ptr %db1_pins to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %db1_pins, align 4
  %arrayidx18 = getelementptr %struct.gpio_descs, ptr %15, i32 0, i32 2, i32 %chipnum.0
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx18, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %17, i32 noundef %db1_val.0) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.caserange.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -524, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.caserange.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_count(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_array_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_alloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_array_value_cansleep(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max3191x_readout_locked(ptr noundef %max3191x) unnamed_addr #2 align 64 {
entry:
  %in = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %max3191x, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %mesg = getelementptr inbounds %struct.max3191x_chip, ptr %max3191x, i32 0, i32 8
  %call1 = tail call i32 @spi_sync(ptr noundef %1, ptr noundef %mesg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.body

for.cond.preheader:                               ; preds = %entry
  %nchips = getelementptr inbounds %struct.max3191x_chip, ptr %max3191x, i32 0, i32 2
  %2 = ptrtoint ptr %nchips to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nchips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp258.not = icmp eq i32 %3, 0
  br i1 %cmp258.not, label %for.cond.preheader.cleanup138_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup138_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup138

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mode = getelementptr inbounds %struct.max3191x_chip, ptr %max3191x, i32 0, i32 3
  %rx_buf = getelementptr inbounds %struct.max3191x_chip, ptr %max3191x, i32 0, i32 9, i32 1
  %crc_error = getelementptr inbounds %struct.max3191x_chip, ptr %max3191x, i32 0, i32 10
  %overtemp = getelementptr inbounds %struct.max3191x_chip, ptr %max3191x, i32 0, i32 11
  %ignore_uv = getelementptr inbounds %struct.max3191x_chip, ptr %max3191x, i32 0, i32 15
  %undervolt1 = getelementptr inbounds %struct.max3191x_chip, ptr %max3191x, i32 0, i32 12
  %undervolt2 = getelementptr inbounds %struct.max3191x_chip, ptr %max3191x, i32 0, i32 13
  %fault_pins = getelementptr inbounds %struct.max3191x_chip, ptr %max3191x, i32 0, i32 5
  %fault = getelementptr inbounds %struct.max3191x_chip, ptr %max3191x, i32 0, i32 14
  br label %for.body

do.body:                                          ; preds = %entry
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @max3191x_readout_locked._rs, ptr noundef nonnull @__func__.max3191x_readout_locked) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body.cleanup138_crit_edge, label %do.end

do.body.cleanup138_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup138

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %call1) #11
  br label %cleanup138

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %uv1.0262 = phi i32 [ 0, %for.body.lr.ph ], [ %uv1.2, %for.inc.for.body_crit_edge ]
  %ot.0261 = phi i32 [ 0, %for.body.lr.ph ], [ %ot.1, %for.inc.for.body_crit_edge ]
  %i.0259 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9 = icmp eq i32 %5, 0
  br i1 %cmp9, label %if.then10, label %for.body.if.end90_crit_edge

for.body.if.end90_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then10:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %in) #7
  %6 = ptrtoint ptr %in to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %in, align 1, !annotation !106
  %7 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_buf, align 4
  %mul = shl i32 %i.0259, 1
  %arrayidx = getelementptr i8, ptr %8, i32 %mul
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  store i8 %10, ptr %in, align 1
  %add = or i32 %mul, 1
  %arrayidx14 = getelementptr i8, ptr %8, i32 %add
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx14, align 1
  %conv = zext i8 %12 to i32
  %and = and i32 %conv, 248
  %call15 = call zeroext i8 @crc8(ptr noundef nonnull @max3191x_crc8, ptr noundef nonnull %in, i32 noundef 1, i8 noundef zeroext 0) #7
  %conv16 = zext i8 %call15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv16)
  %cmp17.not = icmp eq i32 %and, %conv16
  %13 = ptrtoint ptr %crc_error to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %crc_error, align 4
  %rem.i.i = and i32 %i.0259, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %i.0259, 5
  %add.ptr.i.i = getelementptr i32, ptr %14, i32 %div2.i.i
  br i1 %cmp17.not, label %__assign_bit.exit, label %do.body22

__assign_bit.exit:                                ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i = xor i32 %shl.i.i, -1
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %16, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  br label %if.end32

do.body22:                                        ; preds = %if.then10
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %18, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %call23 = call i32 @___ratelimit(ptr noundef nonnull @max3191x_readout_locked._rs.21, ptr noundef nonnull @__func__.max3191x_readout_locked) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.body22.if.end32_crit_edge, label %do.end28

do.body22.if.end32_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.end28:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %i.0259) #11
  br label %if.end32

if.end32:                                         ; preds = %do.end28, %do.body22.if.end32_crit_edge, %__assign_bit.exit
  %19 = lshr i32 %conv, 1
  %and34 = and i32 %19, 1
  %20 = ptrtoint ptr %overtemp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %overtemp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %add.ptr.i.i205 = getelementptr i32, ptr %21, i32 %div2.i.i
  br i1 %tobool35.not, label %__assign_bit.exit212, label %do.body38

__assign_bit.exit212:                             ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i208 = xor i32 %shl.i.i, -1
  %22 = ptrtoint ptr %add.ptr.i.i205 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i205, align 4
  %and.i.i209 = and i32 %23, %neg.i.i208
  store i32 %and.i.i209, ptr %add.ptr.i.i205, align 4
  br label %if.end48

do.body38:                                        ; preds = %if.end32
  %24 = ptrtoint ptr %add.ptr.i.i205 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i205, align 4
  %or.i.i206 = or i32 %25, %shl.i.i
  store i32 %or.i.i206, ptr %add.ptr.i.i205, align 4
  %call39 = call i32 @___ratelimit(ptr noundef nonnull @max3191x_readout_locked._rs.25, ptr noundef nonnull @__func__.max3191x_readout_locked) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %do.body38.if.end48_crit_edge, label %do.end44

do.body38.if.end48_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

do.end44:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %i.0259) #11
  br label %if.end48

if.end48:                                         ; preds = %do.end44, %do.body38.if.end48_crit_edge, %__assign_bit.exit212
  %26 = ptrtoint ptr %ignore_uv to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ignore_uv, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool49.not = icmp eq i8 %27, 0
  br i1 %tobool49.not, label %if.then50, label %if.end48.if.end89_crit_edge

if.end48.if.end89_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then50:                                        ; preds = %if.end48
  %28 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool54.not = icmp eq i32 %28, 0
  %.lobit = lshr exact i32 %28, 2
  %29 = xor i32 %.lobit, 1
  %30 = ptrtoint ptr %undervolt1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %undervolt1, align 4
  %add.ptr.i.i216 = getelementptr i32, ptr %31, i32 %div2.i.i
  br i1 %tobool54.not, label %do.body58, label %if.end68.thread

do.body58:                                        ; preds = %if.then50
  %32 = ptrtoint ptr %add.ptr.i.i216 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i216, align 4
  %or.i.i217 = or i32 %33, %shl.i.i
  store i32 %or.i.i217, ptr %add.ptr.i.i216, align 4
  %call59 = call i32 @___ratelimit(ptr noundef nonnull @max3191x_readout_locked._rs.29, ptr noundef nonnull @__func__.max3191x_readout_locked) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %do.body58.if.end68_crit_edge, label %do.end64

do.body58.if.end68_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

do.end64:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %i.0259) #11
  br label %if.end68

if.end68:                                         ; preds = %do.end64, %do.body58.if.end68_crit_edge
  %and70 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  %34 = ptrtoint ptr %undervolt2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %undervolt2, align 4
  %add.ptr.i.i227 = getelementptr i32, ptr %35, i32 %div2.i.i
  br i1 %tobool71.not, label %if.end89.critedge, label %if.end68.__assign_bit.exit234.thread_crit_edge

if.end68.__assign_bit.exit234.thread_crit_edge:   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %__assign_bit.exit234.thread

if.end68.thread:                                  ; preds = %if.then50
  %neg.i.i219 = xor i32 %shl.i.i, -1
  %36 = ptrtoint ptr %add.ptr.i.i216 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i.i216, align 4
  %and.i.i220 = and i32 %37, %neg.i.i219
  store i32 %and.i.i220, ptr %add.ptr.i.i216, align 4
  %and70263 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70263)
  %tobool71.not264 = icmp eq i32 %and70263, 0
  %38 = ptrtoint ptr %undervolt2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %undervolt2, align 4
  %add.ptr.i.i227265 = getelementptr i32, ptr %39, i32 %div2.i.i
  br i1 %tobool71.not264, label %__assign_bit.exit234.thread268, label %if.end68.thread.__assign_bit.exit234.thread_crit_edge

if.end68.thread.__assign_bit.exit234.thread_crit_edge: ; preds = %if.end68.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %__assign_bit.exit234.thread

__assign_bit.exit234.thread268:                   ; preds = %if.end68.thread
  %40 = ptrtoint ptr %add.ptr.i.i227265 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i.i227265, align 4
  %or.i.i228270 = or i32 %41, %shl.i.i
  store i32 %or.i.i228270, ptr %add.ptr.i.i227265, align 4
  %call79 = call i32 @___ratelimit(ptr noundef nonnull @max3191x_readout_locked._rs.33, ptr noundef nonnull @__func__.max3191x_readout_locked) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %__assign_bit.exit234.thread268.if.end89_crit_edge, label %do.end84

__assign_bit.exit234.thread268.if.end89_crit_edge: ; preds = %__assign_bit.exit234.thread268
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

__assign_bit.exit234.thread:                      ; preds = %if.end68.thread.__assign_bit.exit234.thread_crit_edge, %if.end68.__assign_bit.exit234.thread_crit_edge
  %add.ptr.i.i227266 = phi ptr [ %add.ptr.i.i227265, %if.end68.thread.__assign_bit.exit234.thread_crit_edge ], [ %add.ptr.i.i227, %if.end68.__assign_bit.exit234.thread_crit_edge ]
  %neg.i.i230 = xor i32 %shl.i.i, -1
  %42 = ptrtoint ptr %add.ptr.i.i227266 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i.i227266, align 4
  %and.i.i231 = and i32 %43, %neg.i.i230
  store i32 %and.i.i231, ptr %add.ptr.i.i227266, align 4
  br label %if.end89

do.end84:                                         ; preds = %__assign_bit.exit234.thread268
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.35, i32 noundef %i.0259) #11
  br label %if.end89

if.end89.critedge:                                ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %add.ptr.i.i227 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i.i227, align 4
  %or.i.i228.c = or i32 %45, %shl.i.i
  store i32 %or.i.i228.c, ptr %add.ptr.i.i227, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.end89.critedge, %do.end84, %__assign_bit.exit234.thread, %__assign_bit.exit234.thread268.if.end89_crit_edge, %if.end48.if.end89_crit_edge
  %uv1.1 = phi i32 [ %uv1.0262, %if.end48.if.end89_crit_edge ], [ %29, %do.end84 ], [ %29, %__assign_bit.exit234.thread268.if.end89_crit_edge ], [ %29, %__assign_bit.exit234.thread ], [ %29, %if.end89.critedge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %in) #7
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %for.body.if.end90_crit_edge
  %ot.1 = phi i32 [ %and34, %if.end89 ], [ %ot.0261, %for.body.if.end90_crit_edge ]
  %uv1.2 = phi i32 [ %uv1.1, %if.end89 ], [ %uv1.0262, %for.body.if.end90_crit_edge ]
  %46 = ptrtoint ptr %fault_pins to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fault_pins, align 4
  %tobool91.not = icmp eq ptr %47, null
  br i1 %tobool91.not, label %if.end90.for.inc_crit_edge, label %land.lhs.true92

if.end90.for.inc_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true92:                                  ; preds = %if.end90
  %48 = ptrtoint ptr %ignore_uv to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ignore_uv, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool94.not = icmp eq i8 %49, 0
  br i1 %tobool94.not, label %if.then95, label %land.lhs.true92.for.inc_crit_edge

land.lhs.true92.for.inc_crit_edge:                ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then95:                                        ; preds = %land.lhs.true92
  %ndescs = getelementptr inbounds %struct.gpio_descs, ptr %47, i32 0, i32 1
  %50 = ptrtoint ptr %ndescs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ndescs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp97 = icmp eq i32 %51, 1
  %desc = getelementptr inbounds %struct.gpio_descs, ptr %47, i32 0, i32 2
  %arrayidx103 = getelementptr %struct.gpio_descs, ptr %47, i32 0, i32 2, i32 %i.0259
  %cond.in = select i1 %cmp97, ptr %desc, ptr %arrayidx103
  %52 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %52)
  %cond = load ptr, ptr %cond.in, align 4
  %call104 = call i32 @gpiod_get_value_cansleep(ptr noundef %cond) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %do.body108, label %if.end118

do.body108:                                       ; preds = %if.then95
  %call109 = call i32 @___ratelimit(ptr noundef nonnull @max3191x_readout_locked._rs.38, ptr noundef nonnull @__func__.max3191x_readout_locked) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %do.body108.cleanup138_crit_edge, label %do.end114

do.body108.cleanup138_crit_edge:                  ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup138

do.end114:                                        ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.40, i32 noundef %call104) #11
  br label %cleanup138

if.end118:                                        ; preds = %if.then95
  %53 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fault, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool119.not = icmp eq i32 %call104, 0
  %rem.i.i235 = and i32 %i.0259, 31
  %shl.i.i236 = shl nuw i32 1, %rem.i.i235
  %div2.i.i237 = lshr i32 %i.0259, 5
  %add.ptr.i.i238 = getelementptr i32, ptr %54, i32 %div2.i.i237
  br i1 %tobool119.not, label %__assign_bit.exit245.thread, label %__assign_bit.exit245

__assign_bit.exit245.thread:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i241 = xor i32 %shl.i.i236, -1
  %55 = ptrtoint ptr %add.ptr.i.i238 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i.i238, align 4
  %and.i.i242 = and i32 %56, %neg.i.i241
  store i32 %and.i.i242, ptr %add.ptr.i.i238, align 4
  br label %for.inc

__assign_bit.exit245:                             ; preds = %if.end118
  %57 = ptrtoint ptr %add.ptr.i.i238 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr.i.i238, align 4
  %or.i.i239 = or i32 %58, %shl.i.i236
  store i32 %or.i.i239, ptr %add.ptr.i.i238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %uv1.2)
  %tobool122.not = icmp eq i32 %uv1.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ot.1)
  %tobool124.not = icmp eq i32 %ot.1, 0
  %or.cond201 = select i1 %tobool122.not, i1 %tobool124.not, i1 false
  br i1 %or.cond201, label %do.body126, label %__assign_bit.exit245.for.inc_crit_edge

__assign_bit.exit245.for.inc_crit_edge:           ; preds = %__assign_bit.exit245
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body126:                                       ; preds = %__assign_bit.exit245
  %call127 = call i32 @___ratelimit(ptr noundef nonnull @max3191x_readout_locked._rs.42, ptr noundef nonnull @__func__.max3191x_readout_locked) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %do.body126.for.inc_crit_edge, label %do.end132

do.body126.for.inc_crit_edge:                     ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end132:                                        ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef %i.0259) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end132, %do.body126.for.inc_crit_edge, %__assign_bit.exit245.for.inc_crit_edge, %__assign_bit.exit245.thread, %land.lhs.true92.for.inc_crit_edge, %if.end90.for.inc_crit_edge
  %inc = add nuw i32 %i.0259, 1
  %59 = ptrtoint ptr %nchips to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nchips, align 4
  %cmp = icmp ult i32 %inc, %60
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup138_crit_edge

for.inc.cleanup138_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup138

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup138:                                       ; preds = %for.inc.cleanup138_crit_edge, %do.end114, %do.body108.cleanup138_crit_edge, %do.end, %do.body.cleanup138_crit_edge, %for.cond.preheader.cleanup138_crit_edge
  %retval.3 = phi i32 [ %call1, %do.end ], [ %call1, %do.body.cleanup138_crit_edge ], [ %call104, %do.end114 ], [ %call104, %do.body108.cleanup138_crit_edge ], [ 0, %for.cond.preheader.cleanup138_crit_edge ], [ 0, %for.inc.cleanup138_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @crc8(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_next_clump8(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !43, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__initcall__kmod_gpio_max3191x__230_495_max3191x_driver_init6, !1, !"__initcall__kmod_gpio_max3191x__230_495_max3191x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-max3191x.c", i32 495, i32 1}
!2 = !{ptr @__exitcall_max3191x_driver_exit, !1, !"__exitcall_max3191x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author231, !4, !"__UNIQUE_ID_author231", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-max3191x.c", i32 497, i32 1}
!5 = !{ptr @__UNIQUE_ID_description232, !6, !"__UNIQUE_ID_description232", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-max3191x.c", i32 498, i32 1}
!7 = !{ptr @__UNIQUE_ID_file233, !8, !"__UNIQUE_ID_file233", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-max3191x.c", i32 499, i32 1}
!9 = !{ptr @__UNIQUE_ID_license234, !8, !"__UNIQUE_ID_license234", i1 false, i1 false}
!10 = !{ptr @max3191x_crc8, !11, !"max3191x_crc8", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-max3191x.c", i32 94, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-max3191x.c", i32 488, i32 12}
!14 = !{ptr @max3191x_driver, !15, !"max3191x_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-max3191x.c", i32 486, i32 26}
!16 = !{ptr @max3191x_spi_id, !17, !"max3191x_spi_id", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-max3191x.c", i32 475, i32 35}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpio/gpio-max3191x.c", i32 371, i32 32}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpio/gpio-max3191x.c", i32 388, i32 6}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpio/gpio-max3191x.c", i32 390, i32 6}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpio/gpio-max3191x.c", i32 392, i32 6}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpio/gpio-max3191x.c", i32 394, i32 6}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-max3191x.c", i32 396, i32 50}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpio-max3191x.c", i32 405, i32 9}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpio/gpio-max3191x.c", i32 409, i32 3}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @max3191x_probe._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @max3191x_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @max3191x_probe.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/gpio/gpio-max3191x.c", i32 435, i32 2}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @max3191x_probe.lock_key, !44, !"lock_key", i1 false, i1 false}
!44 = !{!"../drivers/gpio/gpio-max3191x.c", i32 437, i32 8}
!45 = !{ptr @max3191x_probe.request_key, !44, !"request_key", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpio/gpio-max3191x.c", i32 343, i32 3}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @devm_gpiod_get_array_optional_count._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @devm_gpiod_get_array_optional_count._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpio/gpio-max3191x.c", i32 351, i32 3}
!53 = !{ptr @devm_gpiod_get_array_optional_count._entry.16, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @devm_gpiod_get_array_optional_count._entry_ptr.18, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpio/gpio-max3191x.c", i32 132, i32 3}
!57 = !{ptr @max3191x_readout_locked._rs, !56, !"_rs", i1 false, i1 false}
!58 = !{ptr @__func__.max3191x_readout_locked, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @max3191x_readout_locked._entry, !56, !"_entry", i1 false, i1 false}
!61 = !{ptr @max3191x_readout_locked._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @max3191x_readout_locked._rs.21, !63, !"_rs", i1 false, i1 false}
!63 = !{!"../drivers/gpio/gpio-max3191x.c", i32 144, i32 5}
!64 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @max3191x_readout_locked._entry.22, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @max3191x_readout_locked._entry_ptr.24, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @max3191x_readout_locked._rs.25, !68, !"_rs", i1 false, i1 false}
!68 = !{!"../drivers/gpio/gpio-max3191x.c", i32 150, i32 5}
!69 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @max3191x_readout_locked._entry.26, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @max3191x_readout_locked._entry_ptr.28, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @max3191x_readout_locked._rs.29, !73, !"_rs", i1 false, i1 false}
!73 = !{!"../drivers/gpio/gpio-max3191x.c", i32 157, i32 6}
!74 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @max3191x_readout_locked._entry.30, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @max3191x_readout_locked._entry_ptr.32, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @max3191x_readout_locked._rs.33, !78, !"_rs", i1 false, i1 false}
!78 = !{!"../drivers/gpio/gpio-max3191x.c", i32 163, i32 6}
!79 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @max3191x_readout_locked._entry.34, !78, !"_entry", i1 false, i1 false}
!82 = !{ptr @max3191x_readout_locked._entry_ptr.37, !78, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @max3191x_readout_locked._rs.38, !84, !"_rs", i1 false, i1 false}
!84 = !{!"../drivers/gpio/gpio-max3191x.c", i32 177, i32 5}
!85 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @max3191x_readout_locked._entry.39, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @max3191x_readout_locked._entry_ptr.41, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @max3191x_readout_locked._rs.42, !89, !"_rs", i1 false, i1 false}
!89 = !{!"../drivers/gpio/gpio-max3191x.c", i32 183, i32 5}
!90 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @max3191x_readout_locked._entry.43, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @max3191x_readout_locked._entry_ptr.45, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @max3191x_of_id, !94, !"max3191x_of_id", i1 false, i1 false}
!94 = !{!"../drivers/gpio/gpio-max3191x.c", i32 463, i32 34}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{!"branch_weights", i32 1, i32 2000}
!105 = !{i8 0, i8 2}
!106 = !{!"auto-init"}
