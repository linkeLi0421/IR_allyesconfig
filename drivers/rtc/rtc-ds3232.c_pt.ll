; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-ds3232.c_pt.bc'
source_filename = "../drivers/rtc/rtc-ds3232.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
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
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.ds3232 = type { ptr, ptr, i32, ptr, i8 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }

@__initcall__kmod_rtc_ds3232__290_753_ds323x_init6 = internal global ptr @ds323x_init, section ".initcall6.init", align 4
@__exitcall_ds323x_exit = internal global ptr @ds323x_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [74 x i8] c"rtc_ds3232.author=Srikanth Srinivasan <srikanth.srinivasan@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [57 x i8] c"rtc_ds3232.author=Dennis Aberilla <denzzzhome@yahoo.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [61 x i8] c"rtc_ds3232.description=Maxim/Dallas DS3232/DS3234 RTC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [39 x i8] c"rtc_ds3232.file=drivers/rtc/rtc-ds3232\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [23 x i8] c"rtc_ds3232.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias296 = internal constant [28 x i8] c"rtc_ds3232.alias=spi:ds3234\00", section ".modinfo", align 1
@ds323x_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013rtc_ds3232: Failed to register ds3232 driver: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ds323x_init\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-ds3232.c\00", [39 x i8] zeroinitializer }, align 32
@ds323x_init._entry_ptr = internal global ptr @ds323x_init._entry, section ".printk_index", align 4
@ds323x_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013rtc_ds3232: Failed to register ds3234 driver: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@ds323x_init._entry_ptr.5 = internal global ptr @ds323x_init._entry.3, section ".printk_index", align 4
@ds3232_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ds3232_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ds3232_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ds3232_pm_ops, ptr null, ptr null }, ptr @ds3232_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-ds3232\00", [21 x i8] zeroinitializer }, align 32
@ds3232_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,ds3232\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ds3232_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ds3232_suspend, ptr @ds3232_resume, ptr @ds3232_suspend, ptr @ds3232_resume, ptr @ds3232_suspend, ptr @ds3232_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ds3232_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ds3232\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ds3232_i2c_probe.config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@ds3232_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rtc_ds3232:579:(&config)->lock\00", [33 x i8] zeroinitializer }, align 32
@ds3232_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 582, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: regmap allocation failed: %ld\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ds3232_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ds3232_i2c_probe._entry_ptr = internal global ptr @ds3232_i2c_probe._entry, section ".printk_index", align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ds3232_sram\00", [20 x i8] zeroinitializer }, align 32
@ds3232_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @ds3232_read_time, ptr @ds3232_set_time, ptr @ds3232_read_alarm, ptr @ds3232_set_alarm, ptr null, ptr @ds3232_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ds3232_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 532, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ds3232_probe\00", [19 x i8] zeroinitializer }, align 32
@ds3232_probe._entry_ptr = internal global ptr @ds3232_probe._entry, section ".printk_index", align 4
@ds3232_check_rtc_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 74, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"oscillator discontinuity flagged, time unreliable\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ds3232_check_rtc_status\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ds3232_check_rtc_status._entry_ptr = internal global ptr @ds3232_check_rtc_status._entry, section ".printk_index", align 4
@ds3232_hwmon_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @ds3232_hwmon_hwmon_ops, ptr @ds3232_hwmon_info }, [24 x i8] zeroinitializer }, align 32
@ds3232_hwmon_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 391, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to register hwmon device %ld\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ds3232_hwmon_register\00", [42 x i8] zeroinitializer }, align 32
@ds3232_hwmon_register._entry_ptr = internal global ptr @ds3232_hwmon_register._entry, section ".printk_index", align 4
@ds3232_hwmon_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @ds3232_hwmon_is_visible, ptr @ds3232_hwmon_read, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@ds3232_hwmon_info = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @ds3232_hwmon_chip, ptr @ds3232_hwmon_temp, ptr null], [20 x i8] zeroinitializer }, align 32
@ds3232_hwmon_chip = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @ds3232_hwmon_chip_config }, [24 x i8] zeroinitializer }, align 32
@ds3232_hwmon_temp = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @ds3232_hwmon_temp_config }, [24 x i8] zeroinitializer }, align 32
@ds3232_hwmon_chip_config = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 16, i32 0], [24 x i8] zeroinitializer }, align 32
@ds3232_hwmon_temp_config = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 2, i32 0], [24 x i8] zeroinitializer }, align 32
@ds3232_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 422, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Read Control Register error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ds3232_irq\00", [21 x i8] zeroinitializer }, align 32
@ds3232_irq._entry_ptr = internal global ptr @ds3232_irq._entry, section ".printk_index", align 4
@ds3232_irq._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 431, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Write Control Register error %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ds3232_irq._entry_ptr.24 = internal global ptr @ds3232_irq._entry.22, section ".printk_index", align 4
@ds3232_irq._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 441, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Write Status Register error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ds3232_irq._entry_ptr.27 = internal global ptr @ds3232_irq._entry.25, section ".printk_index", align 4
@ds3232_suspend.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@ds3232_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 546, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot set wakeup source\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ds3232_suspend\00", [17 x i8] zeroinitializer }, align 32
@ds3232_suspend._entry_ptr = internal global ptr @ds3232_suspend._entry, section ".printk_index", align 4
@ds3234_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @ds3234_probe, ptr null, ptr null, %struct.device_driver { ptr @.str.30, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ds3234\00", [25 x i8] zeroinitializer }, align 32
@ds3234_probe.config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 128, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@ds3234_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rtc_ds3232:648:(&config)->lock\00", [33 x i8] zeroinitializer }, align 32
@ds3234_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.32, ptr @.str.2, i32 651, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ds3234_probe\00", [19 x i8] zeroinitializer }, align 32
@ds3234_probe._entry_ptr = internal global ptr @ds3234_probe._entry, section ".printk_index", align 4
@ds3234_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 695, ptr @.str.35, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Control Reg: 0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ds3234_probe._entry_ptr.36 = internal global ptr @ds3234_probe._entry.33, section ".printk_index", align 4
@ds3234_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.32, ptr @.str.2, i32 700, ptr @.str.35, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Ctrl/Stat Reg: 0x%02x\0A\00", [41 x i8] zeroinitializer }, align 32
@ds3234_probe._entry_ptr.39 = internal global ptr @ds3234_probe._entry.37, section ".printk_index", align 4
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 741, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 747, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [14 x i8] c"ds3232_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 601, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 603, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"ds3232_of_match\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 595, i32 50 }
@___asan_gen_.67 = private unnamed_addr constant [14 x i8] c"ds3232_pm_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 563, i32 32 }
@___asan_gen_.70 = private unnamed_addr constant [10 x i8] c"ds3232_id\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 589, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 573, i32 36 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 579, i32 11 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 581, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 487, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant [15 x i8] c"ds3232_rtc_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 455, i32 35 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 532, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 72, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [23 x i8] c"ds3232_hwmon_chip_info\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 373, i32 37 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 390, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [23 x i8] c"ds3232_hwmon_hwmon_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 368, i32 31 }
@___asan_gen_.139 = private unnamed_addr constant [18 x i8] c"ds3232_hwmon_info\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 362, i32 41 }
@___asan_gen_.142 = private unnamed_addr constant [18 x i8] c"ds3232_hwmon_chip\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 347, i32 40 }
@___asan_gen_.145 = private unnamed_addr constant [18 x i8] c"ds3232_hwmon_temp\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 357, i32 40 }
@___asan_gen_.148 = private unnamed_addr constant [25 x i8] c"ds3232_hwmon_chip_config\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 342, i32 12 }
@___asan_gen_.151 = private unnamed_addr constant [25 x i8] c"ds3232_hwmon_temp_config\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 352, i32 12 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 421, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 429, i32 5 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 439, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 546, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant [14 x i8] c"ds3234_driver\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 705, i32 26 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 707, i32 12 }
@___asan_gen_.190 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 640, i32 36 }
@___asan_gen_.193 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 648, i32 11 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 650, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 695, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.218 = private constant [28 x i8] c"../drivers/rtc/rtc-ds3232.c\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 700, i32 2 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_alias296, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_ds323x_exit, ptr @__initcall__kmod_rtc_ds3232__290_753_ds323x_init6, ptr @ds3232_check_rtc_status._entry, ptr @ds3232_check_rtc_status._entry_ptr, ptr @ds3232_hwmon_register._entry, ptr @ds3232_hwmon_register._entry_ptr, ptr @ds3232_i2c_probe._entry, ptr @ds3232_i2c_probe._entry_ptr, ptr @ds3232_irq._entry, ptr @ds3232_irq._entry.22, ptr @ds3232_irq._entry.25, ptr @ds3232_irq._entry_ptr, ptr @ds3232_irq._entry_ptr.24, ptr @ds3232_irq._entry_ptr.27, ptr @ds3232_probe._entry, ptr @ds3232_probe._entry_ptr, ptr @ds3232_suspend._entry, ptr @ds3232_suspend._entry_ptr, ptr @ds3234_probe._entry, ptr @ds3234_probe._entry.33, ptr @ds3234_probe._entry.37, ptr @ds3234_probe._entry_ptr, ptr @ds3234_probe._entry_ptr.36, ptr @ds3234_probe._entry_ptr.39, ptr @ds323x_exit, ptr @ds323x_init._entry, ptr @ds323x_init._entry.3, ptr @ds323x_init._entry_ptr, ptr @ds323x_init._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @ds3232_driver, ptr @.str.6, ptr @ds3232_of_match, ptr @ds3232_pm_ops, ptr @ds3232_id, ptr @ds3232_i2c_probe.config, ptr @ds3232_i2c_probe._key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @ds3232_rtc_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @ds3232_hwmon_chip_info, ptr @.str.18, ptr @.str.19, ptr @ds3232_hwmon_hwmon_ops, ptr @ds3232_hwmon_info, ptr @ds3232_hwmon_chip, ptr @ds3232_hwmon_temp, ptr @ds3232_hwmon_chip_config, ptr @ds3232_hwmon_temp_config, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @ds3234_driver, ptr @.str.30, ptr @ds3234_probe.config, ptr @ds3234_probe._key, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.38], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds323x_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds323x_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3232_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3232_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3232_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3232_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3232_i2c_probe.config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3232_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3232_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3232_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3232_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3232_check_rtc_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3232_hwmon_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3232_hwmon_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3232_hwmon_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3232_hwmon_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3232_hwmon_chip to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3232_hwmon_temp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3232_hwmon_chip_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3232_hwmon_temp_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3232_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3232_irq._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3232_irq._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3232_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3234_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3234_probe.config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3234_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3234_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3234_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3234_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ds323x_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ds3232_driver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i16 = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ds3234_driver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool3.not = icmp eq i32 %call.i16, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call.i16) #10
  tail call void @i2c_del_driver(ptr noundef nonnull @ds3232_driver) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i16, %do.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ds323x_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ds3234_driver, i32 0, i32 4)) #7
  tail call void @i2c_del_driver(ptr noundef nonnull @ds3232_driver) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3232_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @ds3232_i2c_probe.config, ptr noundef nonnull @ds3232_i2c_probe._key, ptr noundef nonnull @.str.7) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %0) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %1 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call5 = tail call fastcc i32 @ds3232_probe(ptr noundef %dev, ptr noundef %call, i32 noundef %2, ptr noundef %name)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %0, %do.end ], [ %call5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ds3232_probe(ptr noundef %dev, ptr noundef %regmap, i32 noundef %irq, ptr noundef %name) unnamed_addr #4 align 64 {
entry:
  %control.i = alloca i32, align 4
  %stat.i = alloca i32, align 4
  %nvmem_cfg = alloca %struct.nvmem_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %nvmem_cfg) #7
  %0 = getelementptr inbounds i8, ptr %nvmem_cfg, i32 40
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %2 = ptrtoint ptr %nvmem_cfg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %nvmem_cfg, align 4
  %name2 = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 1
  %3 = ptrtoint ptr %name2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.12, ptr %name2, align 4
  %id = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 2
  %type = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 9
  %4 = call ptr @memset(ptr %id, i32 0, i32 28)
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %type, align 4
  %read_only = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 10
  %6 = ptrtoint ptr %read_only to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %read_only, align 4
  %root_only = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 11
  %7 = ptrtoint ptr %root_only to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %root_only, align 1
  %ignore_wp = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 12
  %8 = ptrtoint ptr %ignore_wp to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %ignore_wp, align 2
  %of_node = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 13
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %of_node, align 4
  %no_of_node = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 14
  %10 = ptrtoint ptr %no_of_node to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %no_of_node, align 4
  %reg_read = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 15
  %11 = ptrtoint ptr %reg_read to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ds3232_nvmem_read, ptr %reg_read, align 4
  %reg_write = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 16
  %12 = ptrtoint ptr %reg_write to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ds3232_nvmem_write, ptr %reg_write, align 4
  %cell_post_process = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 17
  %13 = ptrtoint ptr %cell_post_process to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %cell_post_process, align 4
  %size = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 18
  %14 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 236, ptr %size, align 4
  %word_size = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 19
  %15 = ptrtoint ptr %word_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %word_size, align 4
  %stride = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 20
  %16 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %stride, align 4
  %priv = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 21
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %regmap, ptr %priv, align 4
  %compat = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 22
  %18 = ptrtoint ptr %compat to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %compat, align 4
  %base_dev = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 23
  %19 = ptrtoint ptr %base_dev to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %base_dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap3 = getelementptr inbounds %struct.ds3232, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %regmap3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %regmap, ptr %regmap3, align 4
  %irq4 = getelementptr inbounds %struct.ds3232, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %irq4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %irq, ptr %irq4, align 4
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %23 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %control.i) #7
  %24 = ptrtoint ptr %control.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %control.i, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat.i) #7
  %25 = ptrtoint ptr %stat.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %stat.i, align 4, !annotation !131
  %call1.i = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 15, ptr noundef nonnull %stat.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.ds3232_check_rtc_status.exit.thread_crit_edge

if.end.ds3232_check_rtc_status.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds3232_check_rtc_status.exit.thread

if.end.i:                                         ; preds = %if.end
  %26 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stat.i, align 4
  %and.i = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end4.i_crit_edge, label %do.end.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  br label %if.end4.i

if.end4.i:                                        ; preds = %do.end.i, %if.end.i.if.end4.i_crit_edge
  %28 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stat.i, align 4
  %and5.i = and i32 %29, -132
  store i32 %and5.i, ptr %stat.i, align 4
  %30 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap3, align 4
  %call7.i = call i32 @regmap_write(ptr noundef %31, i32 noundef 15, i32 noundef %and5.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end4.i.ds3232_check_rtc_status.exit.thread_crit_edge

if.end4.i.ds3232_check_rtc_status.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds3232_check_rtc_status.exit.thread

if.end10.i:                                       ; preds = %if.end4.i
  %32 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap3, align 4
  %call12.i = call i32 @regmap_read(ptr noundef %33, i32 noundef 14, ptr noundef nonnull %control.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %ds3232_check_rtc_status.exit, label %if.end10.i.ds3232_check_rtc_status.exit.thread_crit_edge

if.end10.i.ds3232_check_rtc_status.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds3232_check_rtc_status.exit.thread

ds3232_check_rtc_status.exit.thread:              ; preds = %if.end10.i.ds3232_check_rtc_status.exit.thread_crit_edge, %if.end4.i.ds3232_check_rtc_status.exit.thread_crit_edge, %if.end.ds3232_check_rtc_status.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call12.i, %if.end10.i.ds3232_check_rtc_status.exit.thread_crit_edge ], [ %call7.i, %if.end4.i.ds3232_check_rtc_status.exit.thread_crit_edge ], [ %call1.i, %if.end.ds3232_check_rtc_status.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control.i) #7
  br label %cleanup

ds3232_check_rtc_status.exit:                     ; preds = %if.end10.i
  %34 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %control.i, align 4
  %and16.i = and i32 %35, -8
  %or.i = or i32 %and16.i, 4
  store i32 %or.i, ptr %control.i, align 4
  %36 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap3, align 4
  %call18.i = call i32 @regmap_write(ptr noundef %37, i32 noundef 14, i32 noundef %or.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool7.not = icmp eq i32 %call18.i, 0
  br i1 %tobool7.not, label %if.end9, label %ds3232_check_rtc_status.exit.cleanup_crit_edge

ds3232_check_rtc_status.exit.cleanup_crit_edge:   ; preds = %ds3232_check_rtc_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %ds3232_check_rtc_status.exit
  %38 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp = icmp sgt i32 %39, 0
  br i1 %cmp, label %if.then11, label %if.end9.if.end13_crit_edge

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  %40 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i, align 4
  %call1.i68 = call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev, ptr noundef %name, ptr noundef %41, ptr noundef nonnull @ds3232_hwmon_chip_info, ptr noundef null) #7
  %cmp.i.i = icmp ugt ptr %call1.i68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i69, label %if.end13.ds3232_hwmon_register.exit_crit_edge

if.end13.ds3232_hwmon_register.exit_crit_edge:    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds3232_hwmon_register.exit

do.end.i69:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %call1.i68 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %42) #10
  br label %ds3232_hwmon_register.exit

ds3232_hwmon_register.exit:                       ; preds = %do.end.i69, %if.end13.ds3232_hwmon_register.exit_crit_edge
  %call14 = call ptr @devm_rtc_device_register(ptr noundef %dev, ptr noundef %name, ptr noundef nonnull @ds3232_rtc_ops, ptr noundef null) #7
  %rtc = getelementptr inbounds %struct.ds3232, ptr %call.i, i32 0, i32 3
  %43 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call14, ptr %rtc, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end20

if.then17:                                        ; preds = %ds3232_hwmon_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end20:                                         ; preds = %ds3232_hwmon_register.exit
  %call22 = call i32 @devm_rtc_nvmem_register(ptr noundef %call14, ptr noundef nonnull %nvmem_cfg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %45 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp27 = icmp sgt i32 %46, 0
  br i1 %cmp27, label %if.then28, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then28:                                        ; preds = %if.end25
  %call30 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %46, ptr noundef null, ptr noundef nonnull @ds3232_irq, i32 noundef 8320, ptr noundef %name, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then28.cleanup_crit_edge, label %if.then32

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then32:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  call void @device_set_wakeup_capable(ptr noundef %dev, i1 noundef zeroext false) #7
  %47 = ptrtoint ptr %irq4 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %irq4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.then28.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.then17, %ds3232_check_rtc_status.exit.cleanup_crit_edge, %ds3232_check_rtc_status.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %44, %if.then17 ], [ -12, %entry.cleanup_crit_edge ], [ %call18.i, %ds3232_check_rtc_status.exit.cleanup_crit_edge ], [ %call22, %if.end20.cleanup_crit_edge ], [ 0, %if.then28.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %if.end25.cleanup_crit_edge ], [ %retval.0.i.ph, %ds3232_check_rtc_status.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %nvmem_cfg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3232_nvmem_read(ptr noundef %priv, i32 noundef %offset, ptr noundef %val, i32 noundef %bytes) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %offset, 20
  %call = tail call i32 @regmap_bulk_read(ptr noundef %priv, i32 noundef %add, ptr noundef %val, i32 noundef %bytes) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3232_nvmem_write(ptr noundef %priv, i32 noundef %offset, ptr noundef %val, i32 noundef %bytes) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %offset, 20
  %call = tail call i32 @regmap_bulk_write(ptr noundef %priv, i32 noundef %add, ptr noundef %val, i32 noundef %bytes) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rtc_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3232_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #4 align 64 {
entry:
  %stat = alloca i32, align 4
  %control = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat) #7
  %2 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %stat, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %control) #7
  %3 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %control, align 4, !annotation !131
  %rtc = getelementptr inbounds %struct.ds3232, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtc, align 4
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %5, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #7
  %regmap = getelementptr inbounds %struct.ds3232, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %7, i32 noundef 15, ptr noundef nonnull %stat) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stat, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.unlock_crit_edge, label %if.then3

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then3:                                         ; preds = %if.end
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call5 = call i32 @regmap_read(ptr noundef %11, i32 noundef 14, ptr noundef nonnull %control) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.20, i32 noundef %call5) #10
  br label %unlock

if.else:                                          ; preds = %if.then3
  %14 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %control, align 4
  %and9 = and i32 %15, -2
  store i32 %and9, ptr %control, align 4
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call11 = call i32 @regmap_write(ptr noundef %17, i32 noundef 14, i32 noundef %and9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end18, label %do.end16

do.end16:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.23, i32 noundef %call11) #10
  br label %unlock

if.end18:                                         ; preds = %if.else
  %20 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stat, align 4
  %and19 = and i32 %21, -2
  store i32 %and19, ptr %stat, align 4
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call21 = call i32 @regmap_write(ptr noundef %23, i32 noundef 15, i32 noundef %and19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.26, i32 noundef %call21) #10
  br label %unlock

if.end28:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rtc, align 4
  call void @rtc_update_irq(ptr noundef %27, i32 noundef 1, i32 noundef 160) #7
  br label %unlock

unlock:                                           ; preds = %if.end28, %do.end26, %do.end16, %do.end, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  %28 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rtc, align 4
  %ops_lock33 = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %ops_lock33) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ds3232_hwmon_is_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cond = icmp eq i32 %attr, 1
  %0 = and i1 %cmp.not, %cond
  %retval.0 = select i1 %0, i16 292, i16 0
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3232_hwmon_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %temp) #4 align 64 {
entry:
  %temp_buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cond = icmp eq i32 %attr, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %temp_buf.i) #7
  %2 = ptrtoint ptr %temp_buf.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %temp_buf.i, align 1, !annotation !131
  %3 = getelementptr inbounds [2 x i8], ptr %temp_buf.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !131
  %regmap.i = getelementptr inbounds %struct.ds3232, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call1.i = call i32 @regmap_bulk_read(ptr noundef %6, i32 noundef 17, ptr noundef nonnull %temp_buf.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %sw.bb.ds3232_hwmon_read_temp.exit_crit_edge, label %if.end.i

sw.bb.ds3232_hwmon_read_temp.exit_crit_edge:      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds3232_hwmon_read_temp.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %temp_buf.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %temp_buf.i, align 1
  %conv.i = zext i8 %8 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %3, align 1
  %conv3.i = zext i8 %10 to i16
  %or.i = or i16 %shl.i, %conv3.i
  %11 = ashr i16 %or.i, 6
  %conv7.i = sext i16 %11 to i32
  %mul.i = mul nsw i32 %conv7.i, 250
  %12 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul.i, ptr %temp, align 4
  br label %ds3232_hwmon_read_temp.exit

ds3232_hwmon_read_temp.exit:                      ; preds = %if.end.i, %sw.bb.ds3232_hwmon_read_temp.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %call1.i, %sw.bb.ds3232_hwmon_read_temp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %temp_buf.i) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %ds3232_hwmon_read_temp.exit, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ %retval.0.i, %ds3232_hwmon_read_temp.exit ], [ -95, %entry.sw.epilog_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3232_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %time) #4 align 64 {
entry:
  %buf = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf) #7
  %regmap = getelementptr inbounds %struct.ds3232, ptr %1, i32 0, i32 1
  %2 = call ptr @memset(ptr %buf, i32 255, i32 7)
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_bulk_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %buf, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 6
  %6 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 4
  %8 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 3
  %9 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 2
  %10 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %9, align 1
  %conv5 = zext i8 %14 to i32
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %8, align 1
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %7, align 1
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %6, align 1
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %5, align 1
  %and = and i32 %conv5, 64
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %buf, align 1
  %call19 = call i32 @_bcd2bin(i8 noundef zeroext %24) #11
  %25 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call19, ptr %time, align 4
  %call28 = call i32 @_bcd2bin(i8 noundef zeroext %12) #11
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 1
  %26 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call28, ptr %tm_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %cond.false75, label %if.then32

if.then32:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and14 = and i32 %conv5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool33.not = icmp eq i32 %and14, 0
  %and51 = and i8 %14, 31
  %call63 = call i32 @_bcd2bin(i8 noundef zeroext %and51) #11
  %add50 = add i32 %call63, 12
  %spec.select189 = select i1 %tobool33.not, i32 %call63, i32 %add50
  br label %if.end81

cond.false75:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call77 = call i32 @_bcd2bin(i8 noundef zeroext %14) #11
  br label %if.end81

if.end81:                                         ; preds = %cond.false75, %if.then32
  %add50.sink = phi i32 [ %call77, %cond.false75 ], [ %spec.select189, %if.then32 ]
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 2
  %27 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add50.sink, ptr %tm_hour, align 4
  %call90 = call i32 @_bcd2bin(i8 noundef zeroext %16) #11
  %sub = add i32 %call90, -1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 6
  %28 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub, ptr %tm_wday, align 4
  %call101 = call i32 @_bcd2bin(i8 noundef zeroext %18) #11
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 3
  %29 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call101, ptr %tm_mday, align 4
  %and104 = and i8 %20, 127
  %call116 = call i32 @_bcd2bin(i8 noundef zeroext %and104) #11
  %sub119 = add i32 %call116, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 4
  %30 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub119, ptr %tm_mon, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %tobool120.not = icmp sgt i8 %20, -1
  %spec.select = select i1 %tobool120.not, i32 0, i32 100
  %call131 = call i32 @_bcd2bin(i8 noundef zeroext %22) #11
  %add134 = add i32 %call131, %spec.select
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 5
  %31 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add134, ptr %tm_year, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3232_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %time) #4 align 64 {
entry:
  %buf = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf) #7
  %2 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 5
  %7 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %time, align 4
  %call4 = tail call zeroext i8 @_bin2bcd(i32 noundef %8) #11
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call4, ptr %buf, align 1
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 1
  %10 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_min, align 4
  %call17 = tail call zeroext i8 @_bin2bcd(i32 noundef %11) #11
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call17, ptr %2, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 2
  %13 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_hour, align 4
  %call33 = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #11
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call33, ptr %3, align 1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 6
  %16 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_wday, align 4
  %add39 = add i32 %17, 1
  %call53 = tail call zeroext i8 @_bin2bcd(i32 noundef %add39) #11
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call53, ptr %4, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 3
  %19 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_mday, align 4
  %call69 = tail call zeroext i8 @_bin2bcd(i32 noundef %20) #11
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call69, ptr %5, align 1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 4
  %22 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_mon, align 4
  %add75 = add i32 %23, 1
  %call89 = tail call zeroext i8 @_bin2bcd(i32 noundef %add75) #11
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call89, ptr %6, align 1
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 5
  %25 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_year, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %26)
  %cmp = icmp sgt i32 %26, 99
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv98 = or i8 %call89, -128
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv98, ptr %6, align 1
  %sub = add nsw i32 %26, -100
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i32 [ %sub, %if.then ], [ %26, %entry.if.end_crit_edge ]
  %call130 = tail call zeroext i8 @_bin2bcd(i32 noundef %.sink) #11
  %28 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 6
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %call130, ptr %28, align 1
  %regmap = getelementptr inbounds %struct.ds3232, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call136 = call i32 @regmap_bulk_write(ptr noundef %31, i32 noundef 0, ptr noundef nonnull %buf, i32 noundef 7) #7
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf) #7
  ret i32 %call136
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3232_read_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %alarm) #4 align 64 {
entry:
  %control = alloca i32, align 4
  %stat = alloca i32, align 4
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %control) #7
  %2 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %control, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat) #7
  %3 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %stat, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #7
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %regmap = getelementptr inbounds %struct.ds3232, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %buf, align 4
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %9, i32 noundef 15, ptr noundef nonnull %stat) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %11, i32 noundef 14, ptr noundef nonnull %control) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end6:                                          ; preds = %if.end
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call8 = call i32 @regmap_bulk_read(ptr noundef %13, i32 noundef 7, ptr noundef nonnull %buf, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cond.end, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

cond.end:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buf, align 4
  %16 = and i8 %15, 127
  %call24 = call i32 @_bcd2bin(i8 noundef zeroext %16) #11
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  %17 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call24, ptr %time, align 4
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %4, align 1
  %20 = and i8 %19, 127
  %call45 = call i32 @_bcd2bin(i8 noundef zeroext %20) #11
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call45, ptr %tm_min, align 4
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %5, align 2
  %24 = and i8 %23, 127
  %call69 = call i32 @_bcd2bin(i8 noundef zeroext %24) #11
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call69, ptr %tm_hour, align 4
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %6, align 1
  %28 = and i8 %27, 127
  %call93 = call i32 @_bcd2bin(i8 noundef zeroext %28) #11
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 3
  %29 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call93, ptr %tm_mday, align 4
  %30 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %control, align 4
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = ptrtoint ptr %alarm to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %alarm, align 4
  %35 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %stat, align 4
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 1
  %39 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %pending, align 1
  br label %out

out:                                              ; preds = %cond.end, %if.end6.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.out_crit_edge ], [ %call3, %if.end.out_crit_edge ], [ %call8, %if.end6.out_crit_edge ], [ 0, %cond.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3232_set_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %alarm) #4 align 64 {
entry:
  %control = alloca i32, align 4
  %stat = alloca i32, align 4
  %buf = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %control) #7
  %2 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %control, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat) #7
  %3 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %stat, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #7
  %irq = getelementptr inbounds %struct.ds3232, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp slt i32 %5, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %cond.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.end:                                         ; preds = %entry
  %6 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %7 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %8 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  %9 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %time, align 4
  %call7 = tail call zeroext i8 @_bin2bcd(i32 noundef %10) #11
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call7, ptr %buf, align 1
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_min, align 4
  %call24 = tail call zeroext i8 @_bin2bcd(i32 noundef %13) #11
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call24, ptr %8, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm_hour, align 4
  %call44 = tail call zeroext i8 @_bin2bcd(i32 noundef %16) #11
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %call44, ptr %7, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_mday, align 4
  %call64 = tail call zeroext i8 @_bin2bcd(i32 noundef %19) #11
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %call64, ptr %6, align 1
  %regmap = getelementptr inbounds %struct.ds3232, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call70 = call i32 @regmap_read(ptr noundef %22, i32 noundef 14, ptr noundef nonnull %control) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool.not = icmp eq i32 %call70, 0
  br i1 %tobool.not, label %if.end72, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end72:                                         ; preds = %cond.end
  %23 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %control, align 4
  %and = and i32 %24, -4
  store i32 %and, ptr %control, align 4
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call74 = call i32 @regmap_write(ptr noundef %26, i32 noundef 14, i32 noundef %and) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end77:                                         ; preds = %if.end72
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call79 = call i32 @regmap_read(ptr noundef %28, i32 noundef 15, ptr noundef nonnull %stat) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end77.cleanup_crit_edge

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end82:                                         ; preds = %if.end77
  %29 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stat, align 4
  %and83 = and i32 %30, -4
  store i32 %and83, ptr %stat, align 4
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call85 = call i32 @regmap_write(ptr noundef %32, i32 noundef 15, i32 noundef %and83) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end88:                                         ; preds = %if.end82
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call90 = call i32 @regmap_bulk_write(ptr noundef %34, i32 noundef 7, ptr noundef nonnull %buf, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.end88.cleanup_crit_edge

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end93:                                         ; preds = %if.end88
  %35 = ptrtoint ptr %alarm to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %alarm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool94.not = icmp eq i8 %36, 0
  br i1 %tobool94.not, label %if.end93.cleanup_crit_edge, label %if.then95

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then95:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %control, align 4
  %or = or i32 %38, 1
  store i32 %or, ptr %control, align 4
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %call97 = call i32 @regmap_write(ptr noundef %40, i32 noundef 14, i32 noundef %or) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then95, %if.end93.cleanup_crit_edge, %if.end88.cleanup_crit_edge, %if.end82.cleanup_crit_edge, %if.end77.cleanup_crit_edge, %if.end72.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call70, %cond.end.cleanup_crit_edge ], [ %call74, %if.end72.cleanup_crit_edge ], [ %call79, %if.end77.cleanup_crit_edge ], [ %call85, %if.end82.cleanup_crit_edge ], [ %call90, %if.end88.cleanup_crit_edge ], [ %call97, %if.then95 ], [ 0, %if.end93.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3232_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #4 align 64 {
entry:
  %control.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.ds3232, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %control.i) #7
  %4 = ptrtoint ptr %control.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %control.i, align 4, !annotation !131
  %regmap.i = getelementptr inbounds %struct.ds3232, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 14, ptr noundef nonnull %control.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.ds3232_update_alarm.exit_crit_edge

if.end.ds3232_update_alarm.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds3232_update_alarm.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool2.not.i = icmp ne i32 %enabled, 0
  %7 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %control.i, align 4
  %and.i = and i32 %8, -2
  %masksel.i = zext i1 %tobool2.not.i to i32
  %storemerge.i = or i32 %and.i, %masksel.i
  store i32 %storemerge.i, ptr %control.i, align 4
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call6.i = call i32 @regmap_write(ptr noundef %10, i32 noundef 14, i32 noundef %storemerge.i) #7
  br label %ds3232_update_alarm.exit

ds3232_update_alarm.exit:                         ; preds = %if.end.i, %if.end.ds3232_update_alarm.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %if.end.i ], [ %call1.i, %if.end.ds3232_update_alarm.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control.i) #7
  br label %cleanup

cleanup:                                          ; preds = %ds3232_update_alarm.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ds3232_update_alarm.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3232_suspend(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end10_crit_edge, label %device_may_wakeup.exit

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end10_crit_edge, label %if.then

device_may_wakeup.exit.if.end10_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then:                                          ; preds = %device_may_wakeup.exit
  %irq = getelementptr inbounds %struct.ds3232, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then.if.end10_crit_edge, label %do.body

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.body:                                          ; preds = %if.then
  %.b13 = load i1, ptr @ds3232_suspend.__print_once, align 1
  br i1 %.b13, label %do.body.if.end10_crit_edge, label %if.then5

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ds3232_suspend.__print_once, align 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.28) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %do.body.if.end10_crit_edge, %if.then.if.end10_crit_edge, %device_may_wakeup.exit.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3232_resume(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %irq = getelementptr inbounds %struct.ds3232, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3234_probe(ptr noundef %spi) #4 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !131
  %call = tail call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull @ds3234_probe.config, ptr noundef nonnull @ds3234_probe._key, ptr noundef nonnull @.str.31) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.32, i32 noundef %1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %mode, align 8
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %3 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 8, ptr %bits_per_word, align 1
  %call5 = tail call i32 @spi_setup(ptr noundef %spi) #7
  %call6 = call i32 @regmap_read(ptr noundef %call, i32 noundef 0, ptr noundef nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @regmap_read(ptr noundef %call, i32 noundef 14, ptr noundef nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tmp, align 4
  %and = and i32 %5, 28
  %call13 = call i32 @regmap_write(ptr noundef %call, i32 noundef 14, i32 noundef %and) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = call i32 @regmap_read(ptr noundef %call, i32 noundef 15, ptr noundef nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %6 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tmp, align 4
  %and21 = and i32 %7, 136
  %call22 = call i32 @regmap_write(ptr noundef %call, i32 noundef 15, i32 noundef %and21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %call26 = call i32 @regmap_read(ptr noundef %call, i32 noundef 14, ptr noundef nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.end32, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end32:                                         ; preds = %if.end25
  %8 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tmp, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.34, i32 noundef %9) #10
  %call34 = call i32 @regmap_read(ptr noundef %call, i32 noundef 15, ptr noundef nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.end40, label %do.end32.cleanup_crit_edge

do.end32.cleanup_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end40:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tmp, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.38, i32 noundef %11) #10
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %call43 = call fastcc i32 @ds3232_probe(ptr noundef %spi, ptr noundef %call, i32 noundef %13, ptr noundef nonnull @.str.30)
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %do.end32.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %1, %do.end ], [ %call43, %do.end40 ], [ %call6, %if.end.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call22, %if.end20.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ], [ %call34, %do.end32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !29, !31, !33, !34, !36, !37, !38, !39, !40, !41, !43, !45, !46, !47, !48, !50, !51, !52, !53, !54, !56, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !92, !94, !95, !96, !97, !98, !100, !102, !104, !106, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @__initcall__kmod_rtc_ds3232__290_753_ds323x_init6, !1, !"__initcall__kmod_rtc_ds3232__290_753_ds323x_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-ds3232.c", i32 753, i32 1}
!2 = !{ptr @__exitcall_ds323x_exit, !3, !"__exitcall_ds323x_exit", i1 false, i1 false}
!3 = !{!"../drivers/rtc/rtc-ds3232.c", i32 760, i32 1}
!4 = !{ptr @__UNIQUE_ID_author291, !5, !"__UNIQUE_ID_author291", i1 false, i1 false}
!5 = !{!"../drivers/rtc/rtc-ds3232.c", i32 762, i32 1}
!6 = !{ptr @__UNIQUE_ID_author292, !7, !"__UNIQUE_ID_author292", i1 false, i1 false}
!7 = !{!"../drivers/rtc/rtc-ds3232.c", i32 763, i32 1}
!8 = !{ptr @__UNIQUE_ID_description293, !9, !"__UNIQUE_ID_description293", i1 false, i1 false}
!9 = !{!"../drivers/rtc/rtc-ds3232.c", i32 764, i32 1}
!10 = !{ptr @__UNIQUE_ID_file294, !11, !"__UNIQUE_ID_file294", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-ds3232.c", i32 765, i32 1}
!12 = !{ptr @__UNIQUE_ID_license295, !11, !"__UNIQUE_ID_license295", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_alias296, !14, !"__UNIQUE_ID_alias296", i1 false, i1 false}
!14 = !{!"../drivers/rtc/rtc-ds3232.c", i32 766, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/rtc/rtc-ds3232.c", i32 741, i32 3}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ds323x_init._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @ds323x_init._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/rtc/rtc-ds3232.c", i32 747, i32 3}
!23 = !{ptr @ds323x_init._entry.3, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @ds323x_init._entry_ptr.5, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/rtc/rtc-ds3232.c", i32 603, i32 11}
!27 = !{ptr @ds3232_driver, !28, !"ds3232_driver", i1 false, i1 false}
!28 = !{!"../drivers/rtc/rtc-ds3232.c", i32 601, i32 26}
!29 = !{ptr @ds3232_i2c_probe.config, !30, !"config", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-ds3232.c", i32 573, i32 36}
!31 = !{ptr @ds3232_i2c_probe._key, !32, !"_key", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-ds3232.c", i32 579, i32 11}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-ds3232.c", i32 581, i32 3}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ds3232_i2c_probe._entry, !35, !"_entry", i1 false, i1 false}
!40 = !{ptr @ds3232_i2c_probe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/rtc/rtc-ds3232.c", i32 487, i32 11}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-ds3232.c", i32 532, i32 4}
!45 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ds3232_probe._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @ds3232_probe._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/rtc/rtc-ds3232.c", i32 72, i32 3}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ds3232_check_rtc_status._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @ds3232_check_rtc_status._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/rtc/rtc-ds3232.c", i32 390, i32 3}
!56 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ds3232_hwmon_register._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @ds3232_hwmon_register._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @ds3232_hwmon_chip_info, !60, !"ds3232_hwmon_chip_info", i1 false, i1 false}
!60 = !{!"../drivers/rtc/rtc-ds3232.c", i32 373, i32 37}
!61 = !{ptr @ds3232_hwmon_hwmon_ops, !62, !"ds3232_hwmon_hwmon_ops", i1 false, i1 false}
!62 = !{!"../drivers/rtc/rtc-ds3232.c", i32 368, i32 31}
!63 = !{ptr @ds3232_hwmon_info, !64, !"ds3232_hwmon_info", i1 false, i1 false}
!64 = !{!"../drivers/rtc/rtc-ds3232.c", i32 362, i32 41}
!65 = !{ptr @ds3232_hwmon_chip, !66, !"ds3232_hwmon_chip", i1 false, i1 false}
!66 = !{!"../drivers/rtc/rtc-ds3232.c", i32 347, i32 40}
!67 = !{ptr @ds3232_hwmon_chip_config, !68, !"ds3232_hwmon_chip_config", i1 false, i1 false}
!68 = !{!"../drivers/rtc/rtc-ds3232.c", i32 342, i32 12}
!69 = !{ptr @ds3232_hwmon_temp, !70, !"ds3232_hwmon_temp", i1 false, i1 false}
!70 = !{!"../drivers/rtc/rtc-ds3232.c", i32 357, i32 40}
!71 = !{ptr @ds3232_hwmon_temp_config, !72, !"ds3232_hwmon_temp_config", i1 false, i1 false}
!72 = !{!"../drivers/rtc/rtc-ds3232.c", i32 352, i32 12}
!73 = !{ptr @ds3232_rtc_ops, !74, !"ds3232_rtc_ops", i1 false, i1 false}
!74 = !{!"../drivers/rtc/rtc-ds3232.c", i32 455, i32 35}
!75 = !{ptr @.str.20, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/rtc/rtc-ds3232.c", i32 421, i32 4}
!77 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @ds3232_irq._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @ds3232_irq._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.23, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/rtc/rtc-ds3232.c", i32 429, i32 5}
!82 = !{ptr @ds3232_irq._entry.22, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ds3232_irq._entry_ptr.24, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.26, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/rtc/rtc-ds3232.c", i32 439, i32 5}
!86 = !{ptr @ds3232_irq._entry.25, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @ds3232_irq._entry_ptr.27, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @ds3232_of_match, !89, !"ds3232_of_match", i1 false, i1 false}
!89 = !{!"../drivers/rtc/rtc-ds3232.c", i32 595, i32 50}
!90 = !{ptr @ds3232_pm_ops, !91, !"ds3232_pm_ops", i1 false, i1 false}
!91 = !{!"../drivers/rtc/rtc-ds3232.c", i32 563, i32 32}
!92 = distinct !{null, !93, !"__print_once", i1 false, i1 false}
!93 = !{!"../drivers/rtc/rtc-ds3232.c", i32 546, i32 4}
!94 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.29, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @ds3232_suspend._entry, !93, !"_entry", i1 false, i1 false}
!97 = !{ptr @ds3232_suspend._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @ds3232_id, !99, !"ds3232_id", i1 false, i1 false}
!99 = !{!"../drivers/rtc/rtc-ds3232.c", i32 589, i32 35}
!100 = !{ptr @.str.30, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/rtc/rtc-ds3232.c", i32 707, i32 12}
!102 = !{ptr @ds3234_driver, !103, !"ds3234_driver", i1 false, i1 false}
!103 = !{!"../drivers/rtc/rtc-ds3232.c", i32 705, i32 26}
!104 = !{ptr @ds3234_probe.config, !105, !"config", i1 false, i1 false}
!105 = !{!"../drivers/rtc/rtc-ds3232.c", i32 640, i32 36}
!106 = !{ptr @ds3234_probe._key, !107, !"_key", i1 false, i1 false}
!107 = !{!"../drivers/rtc/rtc-ds3232.c", i32 648, i32 11}
!108 = !{ptr @.str.31, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.32, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/rtc/rtc-ds3232.c", i32 650, i32 3}
!111 = !{ptr @ds3234_probe._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @ds3234_probe._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.34, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/rtc/rtc-ds3232.c", i32 695, i32 2}
!115 = !{ptr @.str.35, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @ds3234_probe._entry.33, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @ds3234_probe._entry_ptr.36, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.38, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/rtc/rtc-ds3232.c", i32 700, i32 2}
!120 = !{ptr @ds3234_probe._entry.37, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @ds3234_probe._entry_ptr.39, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{!"auto-init"}
