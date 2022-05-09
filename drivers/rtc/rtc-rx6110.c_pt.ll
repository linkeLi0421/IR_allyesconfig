; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-rx6110.c_pt.bc'
source_filename = "../drivers/rtc/rtc-rx6110.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.list_head = type { ptr, ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.rx6110_data = type { ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_rtc_rx6110__293_505_rx6110_module_init6 = internal global ptr @rx6110_module_init, section ".initcall6.init", align 4
@__exitcall_rx6110_module_exit = internal global ptr @rx6110_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [56 x i8] c"rtc_rx6110.author=Val Krutov <val.krutov@erd.epson.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [45 x i8] c"rtc_rx6110.description=RX-6110 SA RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [39 x i8] c"rtc_rx6110.file=drivers/rtc/rtc-rx6110\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [23 x i8] c"rtc_rx6110.license=GPL\00", section ".modinfo", align 1
@rx6110_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @rx6110_spi_id, ptr @rx6110_spi_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rx6110_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@rx6110_spi_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"rx6110\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rx6110\00", [25 x i8] zeroinitializer }, align 32
@rx6110_spi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"epson,rx6110\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rx6110_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 354, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"SPI settings: bits_per_word: %d, max_speed_hz: %d, mode: %xh\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx6110_spi_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-rx6110.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rx6110_spi_probe._entry_ptr = internal global ptr @rx6110_spi_probe._entry, section ".printk_index", align 4
@rx6110_spi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 355, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"driving device in an unsupported mode\00", [58 x i8] zeroinitializer }, align 32
@rx6110_spi_probe._entry_ptr.8 = internal global ptr @rx6110_spi_probe._entry.6, section ".printk_index", align 4
@rx6110_spi_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@regmap_spi_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 50, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 128, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rtc_rx6110:362:(&regmap_spi_config)->lock\00", [54 x i8] zeroinitializer }, align 32
@rx6110_spi_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 364, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"regmap init failed for rtc rx6110\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rx6110_spi_probe._entry_ptr.13 = internal global ptr @rx6110_spi_probe._entry.10, section ".printk_index", align 4
@rx6110_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @rx6110_get_time, ptr @rx6110_set_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rx6110_get_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 228, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Voltage low, data is invalid.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx6110_get_time\00", [16 x i8] zeroinitializer }, align 32
@rx6110_get_time._entry_ptr = internal global ptr @rx6110_get_time._entry, section ".printk_index", align 4
@rx6110_get_time.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.15, ptr @.str.3, ptr @.str.17, i8 0, i8 60, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc_rx6110\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: date %ptRr\0A\00", [16 x i8] zeroinitializer }, align 32
@rx6110_data_to_rtc_tm.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.18, ptr @.str.3, ptr @.str.17, i8 0, i8 37, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx6110_data_to_rtc_tm\00", [42 x i8] zeroinitializer }, align 32
@rx6110_rtc_tm_to_data.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.19, ptr @.str.3, ptr @.str.17, i8 0, i8 28, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx6110_rtc_tm_to_data\00", [42 x i8] zeroinitializer }, align 32
@rx6110_default_regs = internal constant { [7 x %struct.reg_sequence], [44 x i8] } { [7 x %struct.reg_sequence] [%struct.reg_sequence { i32 23, i32 184, i32 0 }, %struct.reg_sequence { i32 48, i32 0, i32 0 }, %struct.reg_sequence { i32 49, i32 16, i32 0 }, %struct.reg_sequence { i32 50, i32 0, i32 0 }, %struct.reg_sequence { i32 24, i32 0, i32 0 }, %struct.reg_sequence { i32 25, i32 0, i32 0 }, %struct.reg_sequence { i32 26, i32 0, i32 0 }], [44 x i8] zeroinitializer }, align 32
@rx6110_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 285, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Voltage low, data loss detected.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rx6110_init\00", [20 x i8] zeroinitializer }, align 32
@rx6110_init._entry_ptr = internal global ptr @rx6110_init._entry, section ".printk_index", align 4
@rx6110_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"An alarm may have been missed.\0A\00", [32 x i8] zeroinitializer }, align 32
@rx6110_init._entry_ptr.24 = internal global ptr @rx6110_init._entry.22, section ".printk_index", align 4
@rx6110_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.3, i32 293, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Periodic timer was detected\0A\00", [35 x i8] zeroinitializer }, align 32
@rx6110_init._entry_ptr.27 = internal global ptr @rx6110_init._entry.25, section ".printk_index", align 4
@rx6110_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.3, i32 297, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Update timer was detected\0A\00", [37 x i8] zeroinitializer }, align 32
@rx6110_init._entry_ptr.30 = internal global ptr @rx6110_init._entry.28, section ".printk_index", align 4
@rx6110_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rx6110_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr @rx6110_i2c_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rx6110_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@rx6110_i2c_acpi_match = internal constant { [2 x %struct.acpi_device_id], [48 x i8] } { [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"SECC6110\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rx6110_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rx6110\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rx6110_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 431, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"doesn't support required functionality\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx6110_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@rx6110_i2c_probe._entry_ptr = internal global ptr @rx6110_i2c_probe._entry, section ".printk_index", align 4
@rx6110_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@regmap_i2c_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 50, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 128, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rtc_rx6110:439:(&regmap_i2c_config)->lock\00", [54 x i8] zeroinitializer }, align 32
@rx6110_i2c_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.32, ptr @.str.3, i32 441, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rx6110_i2c_probe._entry_ptr.35 = internal global ptr @rx6110_i2c_probe._entry.34, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"rx6110_spi_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 385, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"rx6110_spi_id\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 373, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 387, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [20 x i8] c"rx6110_spi_of_match\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 379, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 353, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 355, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [18 x i8] c"regmap_spi_config\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 335, i32 29 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 362, i32 19 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 364, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [15 x i8] c"rx6110_rtc_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 309, i32 35 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 228, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 242, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 150, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 112, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [20 x i8] c"rx6110_default_regs\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 247, i32 34 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 285, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 289, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 293, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 297, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [18 x i8] c"rx6110_i2c_driver\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 462, i32 26 }
@___asan_gen_.147 = private unnamed_addr constant [22 x i8] c"rx6110_i2c_acpi_match\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 450, i32 36 }
@___asan_gen_.150 = private unnamed_addr constant [14 x i8] c"rx6110_i2c_id\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 456, i32 35 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 430, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [18 x i8] c"regmap_i2c_config\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 415, i32 29 }
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 439, i32 19 }
@___asan_gen_.171 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.172 = private constant [28 x i8] c"../drivers/rtc/rtc-rx6110.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 441, i32 3 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_rx6110_module_exit, ptr @__initcall__kmod_rtc_rx6110__293_505_rx6110_module_init6, ptr @rx6110_get_time._entry, ptr @rx6110_get_time._entry_ptr, ptr @rx6110_i2c_probe._entry, ptr @rx6110_i2c_probe._entry.34, ptr @rx6110_i2c_probe._entry_ptr, ptr @rx6110_i2c_probe._entry_ptr.35, ptr @rx6110_init._entry, ptr @rx6110_init._entry.22, ptr @rx6110_init._entry.25, ptr @rx6110_init._entry.28, ptr @rx6110_init._entry_ptr, ptr @rx6110_init._entry_ptr.24, ptr @rx6110_init._entry_ptr.27, ptr @rx6110_init._entry_ptr.30, ptr @rx6110_module_exit, ptr @rx6110_spi_probe._entry, ptr @rx6110_spi_probe._entry.10, ptr @rx6110_spi_probe._entry.6, ptr @rx6110_spi_probe._entry_ptr, ptr @rx6110_spi_probe._entry_ptr.13, ptr @rx6110_spi_probe._entry_ptr.8, ptr @rx6110_spi_driver, ptr @rx6110_spi_id, ptr @.str, ptr @rx6110_spi_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @rx6110_spi_probe._key, ptr @regmap_spi_config, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @rx6110_rtc_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @rx6110_default_regs, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @rx6110_i2c_driver, ptr @rx6110_i2c_acpi_match, ptr @rx6110_i2c_id, ptr @.str.31, ptr @.str.32, ptr @rx6110_i2c_probe._key, ptr @regmap_i2c_config, ptr @.str.33], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx6110_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx6110_spi_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx6110_spi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx6110_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx6110_spi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx6110_spi_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_spi_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx6110_spi_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx6110_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx6110_get_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx6110_default_regs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx6110_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx6110_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx6110_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx6110_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx6110_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx6110_i2c_acpi_match to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx6110_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx6110_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx6110_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_i2c_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx6110_i2c_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rx6110_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @rx6110_spi_driver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i8 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rx6110_i2c_driver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool2.not = icmp eq i32 %call.i8, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @rx6110_spi_driver, i32 0, i32 4)) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i8, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rx6110_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @rx6110_spi_driver, i32 0, i32 4)) #7
  tail call void @i2c_del_driver(ptr noundef nonnull @rx6110_i2c_driver) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx6110_spi_probe(ptr noundef %spi) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %0 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bits_per_word, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.do.end_crit_edge [
    i8 0, label %entry.lor.lhs.false_crit_edge
    i8 8, label %entry.lor.lhs.false_crit_edge52
  ]

entry.lor.lhs.false_crit_edge52:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge52
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %3 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %4)
  %cmp4 = icmp ugt i32 %4, 2000000
  br i1 %cmp4, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false6

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %6)
  %cmp7.not = icmp eq i32 %6, 7
  br i1 %cmp7.not, label %lor.lhs.false6.if.end_crit_edge, label %lor.lhs.false6.do.end_crit_edge

lor.lhs.false6.do.end_crit_edge:                  ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false6.if.end_crit_edge:                  ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %lor.lhs.false6.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %conv10 = zext i8 %1 to i32
  %max_speed_hz11 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %7 = ptrtoint ptr %max_speed_hz11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_speed_hz11, align 8
  %mode12 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %9 = ptrtoint ptr %mode12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode12, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.1, i32 noundef %conv10, i32 noundef %8, i32 noundef %10) #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.7) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.lhs.false6.if.end_crit_edge
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 8, i32 noundef 3520) #7
  %tobool18.not = icmp eq ptr %call.i, null
  br i1 %tobool18.not, label %if.end.cleanup_crit_edge, label %if.end20

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %call21 = tail call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull @regmap_spi_config, ptr noundef nonnull @rx6110_spi_probe._key, ptr noundef nonnull @.str.9) #7
  %regmap = getelementptr inbounds %struct.rx6110_data, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call21, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end27, label %if.end31

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.11) #10
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call33 = tail call fastcc i32 @rx6110_probe(ptr noundef nonnull %call.i, ptr noundef %spi)
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end27, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %do.end27 ], [ %call33, %if.end31 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rx6110_probe(ptr nocapture noundef %rx6110, ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  %flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_rtc_device_register(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @rx6110_rtc_ops, ptr noundef null) #7
  %0 = ptrtoint ptr %rx6110 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %rx6110, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #7
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags.i, align 4, !annotation !105
  %regmap.i = getelementptr inbounds %struct.rx6110_data, ptr %rx6110, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 29, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.rx6110_init.exit.thread_crit_edge

if.end.rx6110_init.exit.thread_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rx6110_init.exit.thread

if.end.i:                                         ; preds = %if.end
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call3.i = tail call i32 @regmap_register_patch(ptr noundef %6, ptr noundef nonnull @rx6110_default_regs, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.rx6110_init.exit.thread_crit_edge

if.end.i.rx6110_init.exit.thread_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rx6110_init.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call8.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 30, ptr noundef nonnull %flags.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end6.i.rx6110_init.exit.thread_crit_edge

if.end6.i.rx6110_init.exit.thread_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rx6110_init.exit.thread

if.end11.i:                                       ; preds = %if.end6.i
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i, label %if.end11.i.if.end14.i_crit_edge, label %do.end.i

if.end11.i.if.end14.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

do.end.i:                                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %call, ptr noundef nonnull @.str.20) #10
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.end.i, %if.end11.i.if.end14.i_crit_edge
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and15.i = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.if.end22.i_crit_edge, label %do.end20.i

if.end14.i.if.end22.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

do.end20.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %call, ptr noundef nonnull @.str.23) #10
  br label %if.end22.i

if.end22.i:                                       ; preds = %do.end20.i, %if.end14.i.if.end22.i_crit_edge
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %and23.i = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.end22.i.if.end30.i_crit_edge, label %do.end28.i

if.end22.i.if.end30.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

do.end28.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %call, ptr noundef nonnull @.str.26) #10
  br label %if.end30.i

if.end30.i:                                       ; preds = %do.end28.i, %if.end22.i.if.end30.i_crit_edge
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 4
  %and31.i = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.end30.i.rx6110_init.exit_crit_edge, label %do.end36.i

if.end30.i.rx6110_init.exit_crit_edge:            ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rx6110_init.exit

do.end36.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %call, ptr noundef nonnull @.str.29) #10
  br label %rx6110_init.exit

rx6110_init.exit.thread:                          ; preds = %if.end6.i.rx6110_init.exit.thread_crit_edge, %if.end.i.rx6110_init.exit.thread_crit_edge, %if.end.rx6110_init.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call8.i, %if.end6.i.rx6110_init.exit.thread_crit_edge ], [ %call3.i, %if.end.i.rx6110_init.exit.thread_crit_edge ], [ %call.i.i, %if.end.rx6110_init.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #7
  br label %cleanup

rx6110_init.exit:                                 ; preds = %do.end36.i, %if.end30.i.rx6110_init.exit_crit_edge
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 4
  %call.i56.i = call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 30, i32 noundef 56, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.i)
  %tobool.not = icmp eq i32 %call.i56.i, 0
  br i1 %tobool.not, label %if.end7, label %rx6110_init.exit.cleanup_crit_edge

rx6110_init.exit.cleanup_crit_edge:               ; preds = %rx6110_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %rx6110_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %rx6110 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx6110, align 4
  %max_user_freq = getelementptr inbounds %struct.rtc_device, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %max_user_freq to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %max_user_freq, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %rx6110_init.exit.cleanup_crit_edge, %rx6110_init.exit.thread, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ 0, %if.end7 ], [ %call.i56.i, %rx6110_init.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %rx6110_init.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx6110_get_time(ptr noundef %dev, ptr noundef %tm) #3 align 64 {
entry:
  %data = alloca [7 x i8], align 1
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %data) #7
  %2 = call ptr @memset(ptr %data, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %flags, align 4, !annotation !105
  %regmap = getelementptr inbounds %struct.rx6110_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %5, i32 noundef 30, ptr noundef nonnull %flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.14) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call6 = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef 16, ptr noundef nonnull %data, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call11 = call fastcc i32 @rx6110_data_to_rtc_tm(ptr noundef nonnull %data, ptr noundef %tm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.body15, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx6110_get_time.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rx6110_get_time, %cleanup)) #7
          to label %if.then21 [label %cleanup], !srcloc !106

if.then21:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rx6110_get_time.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, ptr noundef %tm) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %do.body15, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %call6, %if.end4.cleanup_crit_edge ], [ %call11, %if.end9.cleanup_crit_edge ], [ 0, %if.then21 ], [ 0, %do.body15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx6110_set_time(ptr nocapture noundef readonly %dev, ptr noundef %tm) #3 align 64 {
entry:
  %data = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %data) #7
  %2 = call ptr @memset(ptr %data, i32 255, i32 7)
  %call1 = call fastcc i32 @rx6110_rtc_tm_to_data(ptr noundef %tm, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.rx6110_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 31, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call7 = call i32 @regmap_bulk_write(ptr noundef %6, i32 noundef 16, ptr noundef nonnull %data, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i31 = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 30, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool13.not = icmp eq i32 %call.i31, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i32 = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 31, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end10.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i32, %if.end15 ], [ %call1, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call7, %if.end4.cleanup_crit_edge ], [ %call.i31, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rx6110_data_to_rtc_tm(ptr nocapture noundef readonly %data, ptr noundef %tm) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %2 = and i8 %1, 127
  %call = tail call i32 @_bcd2bin(i8 noundef zeroext %2) #11
  %3 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %tm, align 4
  %arrayidx13 = getelementptr i8, ptr %data, i32 1
  %4 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx13, align 1
  %6 = and i8 %5, 127
  %call33 = tail call i32 @_bcd2bin(i8 noundef zeroext %6) #11
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %7 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call33, ptr %tm_min, align 4
  %arrayidx36 = getelementptr i8, ptr %data, i32 2
  %8 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx36, align 1
  %10 = and i8 %9, 63
  %call56 = tail call i32 @_bcd2bin(i8 noundef zeroext %10) #11
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %11 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call56, ptr %tm_hour, align 4
  %arrayidx59 = getelementptr i8, ptr %data, i32 3
  %12 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx59, align 1
  %14 = and i8 %13, 127
  %15 = tail call i8 @llvm.cttz.i8(i8 %14, i1 true), !range !107
  %narrow = add nuw nsw i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %iszero = icmp eq i8 %14, 0
  %narrow168 = select i1 %iszero, i8 0, i8 %narrow
  %ffs = zext i8 %narrow168 to i32
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %16 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %ffs, ptr %tm_wday, align 4
  %arrayidx62 = getelementptr i8, ptr %data, i32 4
  %17 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx62, align 1
  %19 = and i8 %18, 63
  %call82 = tail call i32 @_bcd2bin(i8 noundef zeroext %19) #11
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %20 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call82, ptr %tm_mday, align 4
  %arrayidx85 = getelementptr i8, ptr %data, i32 5
  %21 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx85, align 1
  %23 = and i8 %22, 31
  %call105 = tail call i32 @_bcd2bin(i8 noundef zeroext %23) #11
  %sub = add i32 %call105, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %24 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub, ptr %tm_mon, align 4
  %arrayidx108 = getelementptr i8, ptr %data, i32 6
  %25 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx108, align 1
  %call120 = tail call i32 @_bcd2bin(i8 noundef zeroext %26) #11
  %add123 = add i32 %call120, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %27 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add123, ptr %tm_year, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx6110_data_to_rtc_tm.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rx6110_data_to_rtc_tm, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !106

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rx6110_data_to_rtc_tm.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %tm) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %28 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_year, align 4
  %30 = add i32 %29, -200
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100, i32 %30)
  %31 = icmp ult i32 %30, -100
  %retval.0 = select i1 %31, i32 -22, i32 0
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rx6110_rtc_tm_to_data(ptr noundef %tm, ptr nocapture noundef writeonly %data) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx6110_rtc_tm_to_data.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rx6110_rtc_tm_to_data, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !106

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rx6110_rtc_tm_to_data.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.19, ptr noundef %tm) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %0 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tm_year, align 4
  %2 = add i32 %1, -200
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100, i32 %2)
  %3 = icmp ult i32 %2, -100
  br i1 %3, label %do.end.return_crit_edge, label %cond.end

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

cond.end:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm, align 4
  %call11 = tail call zeroext i8 @_bin2bcd(i32 noundef %5) #11
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call11, ptr %data, align 1
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %7 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tm_min, align 4
  %call24 = tail call zeroext i8 @_bin2bcd(i32 noundef %8) #11
  %arrayidx29 = getelementptr i8, ptr %data, i32 1
  %9 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call24, ptr %arrayidx29, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %10 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_hour, align 4
  %call40 = tail call zeroext i8 @_bin2bcd(i32 noundef %11) #11
  %arrayidx45 = getelementptr i8, ptr %data, i32 2
  %12 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call40, ptr %arrayidx45, align 1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %13 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_wday, align 4
  %call56 = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #11
  %conv57 = zext i8 %call56 to i32
  %shl60 = shl nuw i32 1, %conv57
  %conv61 = trunc i32 %shl60 to i8
  %arrayidx62 = getelementptr i8, ptr %data, i32 3
  %15 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv61, ptr %arrayidx62, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %16 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_mday, align 4
  %call73 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #11
  %arrayidx78 = getelementptr i8, ptr %data, i32 4
  %18 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call73, ptr %arrayidx78, align 1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %19 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_mon, align 4
  %add79 = add i32 %20, 1
  %call93 = tail call zeroext i8 @_bin2bcd(i32 noundef %add79) #11
  %arrayidx98 = getelementptr i8, ptr %data, i32 5
  %21 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call93, ptr %arrayidx98, align 1
  %22 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_year, align 4
  %rem100 = srem i32 %23, 100
  %call114 = tail call zeroext i8 @_bin2bcd(i32 noundef %rem100) #11
  %arrayidx119 = getelementptr i8, ptr %data, i32 6
  %24 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call114, ptr %arrayidx119, align 1
  br label %return

return:                                           ; preds = %cond.end, %do.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end ], [ -22, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx6110_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #7
  %and.i = and i32 %call.i.i, 202899456
  call void @__sanitizer_cov_trace_const_cmp4(i32 202899456, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 202899456
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 8, i32 noundef 3520) #7
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @regmap_i2c_config, ptr noundef nonnull @rx6110_i2c_probe._key, ptr noundef nonnull @.str.33) #7
  %regmap = getelementptr inbounds %struct.rx6110_data, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7, ptr %regmap, align 4
  %cmp.i32 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i32, label %do.end13, label %if.end17

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.11) #10
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call19 = tail call fastcc i32 @rx6110_probe(ptr noundef nonnull %call.i, ptr noundef %dev2)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end13, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %9, %do.end13 ], [ %call19, %if.end17 ], [ -5, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !34, !35, !36, !37, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !77, !79, !81, !82, !83, !84, !86, !87, !89, !90, !92, !94}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @__initcall__kmod_rtc_rx6110__293_505_rx6110_module_init6, !1, !"__initcall__kmod_rtc_rx6110__293_505_rx6110_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-rx6110.c", i32 505, i32 1}
!2 = !{ptr @__exitcall_rx6110_module_exit, !3, !"__exitcall_rx6110_module_exit", i1 false, i1 false}
!3 = !{!"../drivers/rtc/rtc-rx6110.c", i32 512, i32 1}
!4 = !{ptr @__UNIQUE_ID_author294, !5, !"__UNIQUE_ID_author294", i1 false, i1 false}
!5 = !{!"../drivers/rtc/rtc-rx6110.c", i32 514, i32 1}
!6 = !{ptr @__UNIQUE_ID_description295, !7, !"__UNIQUE_ID_description295", i1 false, i1 false}
!7 = !{!"../drivers/rtc/rtc-rx6110.c", i32 515, i32 1}
!8 = !{ptr @__UNIQUE_ID_file296, !9, !"__UNIQUE_ID_file296", i1 false, i1 false}
!9 = !{!"../drivers/rtc/rtc-rx6110.c", i32 516, i32 1}
!10 = !{ptr @__UNIQUE_ID_license297, !9, !"__UNIQUE_ID_license297", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/rtc/rtc-rx6110.c", i32 387, i32 11}
!13 = !{ptr @rx6110_spi_driver, !14, !"rx6110_spi_driver", i1 false, i1 false}
!14 = !{!"../drivers/rtc/rtc-rx6110.c", i32 385, i32 26}
!15 = !{ptr @rx6110_spi_id, !16, !"rx6110_spi_id", i1 false, i1 false}
!16 = !{!"../drivers/rtc/rtc-rx6110.c", i32 373, i32 35}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/rtc/rtc-rx6110.c", i32 353, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rx6110_spi_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @rx6110_spi_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/rtc/rtc-rx6110.c", i32 355, i32 3}
!27 = !{ptr @rx6110_spi_probe._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @rx6110_spi_probe._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @rx6110_spi_probe._key, !30, !"_key", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-rx6110.c", i32 362, i32 19}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-rx6110.c", i32 364, i32 3}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @rx6110_spi_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @rx6110_spi_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @regmap_spi_config, !38, !"regmap_spi_config", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-rx6110.c", i32 335, i32 29}
!39 = !{ptr @rx6110_rtc_ops, !40, !"rx6110_rtc_ops", i1 false, i1 false}
!40 = !{!"../drivers/rtc/rtc-rx6110.c", i32 309, i32 35}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/rtc/rtc-rx6110.c", i32 228, i32 3}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @rx6110_get_time._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @rx6110_get_time._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/rtc/rtc-rx6110.c", i32 242, i32 2}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rx6110_get_time.__UNIQUE_ID_ddebug292, !47, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/rtc/rtc-rx6110.c", i32 150, i32 2}
!52 = !{ptr @rx6110_data_to_rtc_tm.__UNIQUE_ID_ddebug291, !51, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-rx6110.c", i32 112, i32 2}
!55 = !{ptr @rx6110_rtc_tm_to_data.__UNIQUE_ID_ddebug290, !54, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/rtc/rtc-rx6110.c", i32 285, i32 3}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @rx6110_init._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @rx6110_init._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/rtc/rtc-rx6110.c", i32 289, i32 3}
!63 = !{ptr @rx6110_init._entry.22, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @rx6110_init._entry_ptr.24, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/rtc/rtc-rx6110.c", i32 293, i32 3}
!67 = !{ptr @rx6110_init._entry.25, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @rx6110_init._entry_ptr.27, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/rtc/rtc-rx6110.c", i32 297, i32 3}
!71 = !{ptr @rx6110_init._entry.28, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @rx6110_init._entry_ptr.30, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @rx6110_default_regs, !74, !"rx6110_default_regs", i1 false, i1 false}
!74 = !{!"../drivers/rtc/rtc-rx6110.c", i32 247, i32 34}
!75 = !{ptr @rx6110_spi_of_match, !76, !"rx6110_spi_of_match", i1 false, i1 false}
!76 = !{!"../drivers/rtc/rtc-rx6110.c", i32 379, i32 34}
!77 = !{ptr @rx6110_i2c_driver, !78, !"rx6110_i2c_driver", i1 false, i1 false}
!78 = !{!"../drivers/rtc/rtc-rx6110.c", i32 462, i32 26}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/rtc/rtc-rx6110.c", i32 430, i32 3}
!81 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @rx6110_i2c_probe._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @rx6110_i2c_probe._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @rx6110_i2c_probe._key, !85, !"_key", i1 false, i1 false}
!85 = !{!"../drivers/rtc/rtc-rx6110.c", i32 439, i32 19}
!86 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @rx6110_i2c_probe._entry.34, !88, !"_entry", i1 false, i1 false}
!88 = !{!"../drivers/rtc/rtc-rx6110.c", i32 441, i32 3}
!89 = !{ptr @rx6110_i2c_probe._entry_ptr.35, !88, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @regmap_i2c_config, !91, !"regmap_i2c_config", i1 false, i1 false}
!91 = !{!"../drivers/rtc/rtc-rx6110.c", i32 415, i32 29}
!92 = !{ptr @rx6110_i2c_acpi_match, !93, !"rx6110_i2c_acpi_match", i1 false, i1 false}
!93 = !{!"../drivers/rtc/rtc-rx6110.c", i32 450, i32 36}
!94 = !{ptr @rx6110_i2c_id, !95, !"rx6110_i2c_id", i1 false, i1 false}
!95 = !{!"../drivers/rtc/rtc-rx6110.c", i32 456, i32 35}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{!"auto-init"}
!106 = !{i64 2148702703, i64 2148702708, i64 2148702721, i64 2148702765, i64 2148702799, i64 2148702820}
!107 = !{i8 0, i8 9}
