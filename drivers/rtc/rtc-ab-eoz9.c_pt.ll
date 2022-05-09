; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-ab-eoz9.c_pt.bc'
source_filename = "../drivers/rtc/rtc-ab-eoz9.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.abeoz9_rtc_data = type { ptr, ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_ab_eoz9__343_587_abeoz9_driver_init6 = internal global ptr @abeoz9_driver_init, section ".initcall6.init", align 4
@abeoz9_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @abeoz9_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @abeoz9_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @abeoz9_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_abeoz9_driver_exit = internal global ptr @abeoz9_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author344 = internal constant [62 x i8] c"rtc_ab_eoz9.author=Artem Panfilov <panfilov.artyom@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description345 = internal constant [67 x i8] c"rtc_ab_eoz9.description=Abracon AB-RTCMC-32.768kHz-EOZ9 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file346 = internal constant [41 x i8] c"rtc_ab_eoz9.file=drivers/rtc/rtc-ab-eoz9\00", section ".modinfo", align 1
@__UNIQUE_ID_license347 = internal constant [24 x i8] c"rtc_ab_eoz9.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtc-ab-eoz9\00", [20 x i8] zeroinitializer }, align 32
@abeoz9_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"abracon,abeoz9\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@abeoz9_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"abeoz9\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@abeoz9_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@abeoz9_rtc_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 63, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"rtc_ab_eoz9:511:(&abeoz9_rtc_regmap_config)->lock\00", [46 x i8] zeroinitializer }, align 32
@abeoz9_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 514, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"regmap allocation failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"abeoz9_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/rtc/rtc-ab-eoz9.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@abeoz9_probe._entry_ptr = internal global ptr @abeoz9_probe._entry, section ".printk_index", align 4
@rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @abeoz9_rtc_get_time, ptr @abeoz9_rtc_set_time, ptr @abeoz9_rtc_read_alarm, ptr @abeoz9_rtc_set_alarm, ptr null, ptr @abeoz9_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@abeoz9_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 545, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to request alarm irq\0A\00", [35 x i8] zeroinitializer }, align 32
@abeoz9_probe._entry_ptr.9 = internal global ptr @abeoz9_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@abeoz9_rtc_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 334, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to set CTRL_1 register (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"abeoz9_rtc_setup\00", [47 x i8] zeroinitializer }, align 32
@abeoz9_rtc_setup._entry_ptr = internal global ptr @abeoz9_rtc_setup._entry, section ".printk_index", align 4
@abeoz9_rtc_setup._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.4, i32 342, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"unable to set control CTRL_INT register (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@abeoz9_rtc_setup._entry_ptr.15 = internal global ptr @abeoz9_rtc_setup._entry.13, section ".printk_index", align 4
@abeoz9_rtc_setup._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.4, i32 350, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"unable to set control CTRL_INT_FLAG register (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@abeoz9_rtc_setup._entry_ptr.18 = internal global ptr @abeoz9_rtc_setup._entry.16, section ".printk_index", align 4
@abeoz9_rtc_setup._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.4, i32 363, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to set EEPROM register (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@abeoz9_rtc_setup._entry_ptr.21 = internal global ptr @abeoz9_rtc_setup._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"trickle-resistor-ohms\00", [42 x i8] zeroinitializer }, align 32
@abeoz9_rtc_get_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 157, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"reading RTC time failed (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"abeoz9_rtc_get_time\00", [44 x i8] zeroinitializer }, align 32
@abeoz9_rtc_get_time._entry_ptr = internal global ptr @abeoz9_rtc_get_time._entry, section ".printk_index", align 4
@abeoz9_check_validity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 110, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unable to get CTRL_STATUS register (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"abeoz9_check_validity\00", [42 x i8] zeroinitializer }, align 32
@abeoz9_check_validity._entry_ptr = internal global ptr @abeoz9_check_validity._entry, section ".printk_index", align 4
@abeoz9_check_validity._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.4, i32 115, ptr @.str.29, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"power-on reset detected, date is invalid\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@abeoz9_check_validity._entry_ptr.30 = internal global ptr @abeoz9_check_validity._entry.27, section ".printk_index", align 4
@abeoz9_check_validity._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.26, ptr @.str.4, i32 121, ptr @.str.29, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"voltage drops below VLOW1 threshold, date is invalid\0A\00", [42 x i8] zeroinitializer }, align 32
@abeoz9_check_validity._entry_ptr.33 = internal global ptr @abeoz9_check_validity._entry.31, section ".printk_index", align 4
@abeoz9_check_validity._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.26, ptr @.str.4, i32 127, ptr @.str.29, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"voltage drops below VLOW2 threshold, date is invalid\0A\00", [42 x i8] zeroinitializer }, align 32
@abeoz9_check_validity._entry_ptr.36 = internal global ptr @abeoz9_check_validity._entry.34, section ".printk_index", align 4
@abeoz9_rtc_set_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 201, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"set RTC time failed (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"abeoz9_rtc_set_time\00", [44 x i8] zeroinitializer }, align 32
@abeoz9_rtc_set_time._entry_ptr = internal global ptr @abeoz9_rtc_set_time._entry, section ".printk_index", align 4
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"abeoz9\00", [25 x i8] zeroinitializer }, align 32
@abeoz9_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @abeoz9_hwmon_ops, ptr @abeoz9_info }, [24 x i8] zeroinitializer }, align 32
@abeoz9_hwmon_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 485, ptr @.str.29, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to register hwmon device %ld\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"abeoz9_hwmon_register\00", [42 x i8] zeroinitializer }, align 32
@abeoz9_hwmon_register._entry_ptr = internal global ptr @abeoz9_hwmon_register._entry, section ".printk_index", align 4
@abeoz9_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @abeoz9_is_visible, ptr @abeoz9z3_temp_read, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@abeoz9_info = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @abeoz9_chip, ptr @abeoz9_temp, ptr null], [20 x i8] zeroinitializer }, align 32
@abeoz9z3_temp_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 402, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"thermometer might be disabled due to low voltage\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"abeoz9z3_temp_read\00", [45 x i8] zeroinitializer }, align 32
@abeoz9z3_temp_read._entry_ptr = internal global ptr @abeoz9z3_temp_read._entry, section ".printk_index", align 4
@abeoz9_chip = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @abeoz9_chip_config }, [24 x i8] zeroinitializer }, align 32
@abeoz9_temp = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @abeoz9_temp_config }, [24 x i8] zeroinitializer }, align 32
@abeoz9_chip_config = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 16, i32 0], [24 x i8] zeroinitializer }, align 32
@abeoz9_temp_config = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 162, i32 0], [24 x i8] zeroinitializer }, align 32
@switch.table.abeoz9_is_visible = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 292, i16 0, i16 0, i16 0, i16 292, i16 0, i16 292], [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1000, i64 5000, i64 20000, i64 80000]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 5, i64 7]
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"abeoz9_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 578, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 580, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"abeoz9_dt_match\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 566, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant [10 x i8] c"abeoz9_id\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 573, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [25 x i8] c"abeoz9_rtc_regmap_config\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 378, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 511, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 514, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [8 x i8] c"rtc_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 370, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 545, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 552, i32 56 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 334, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 340, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 348, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 363, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 304, i32 33 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 157, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 109, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 115, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 120, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 126, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 201, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 479, i32 12 }
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"abeoz9_chip_info\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 469, i32 37 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 484, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"abeoz9_hwmon_ops\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 464, i32 31 }
@___asan_gen_.192 = private unnamed_addr constant [12 x i8] c"abeoz9_info\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 458, i32 41 }
@___asan_gen_.195 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 401, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant [12 x i8] c"abeoz9_chip\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 443, i32 40 }
@___asan_gen_.207 = private unnamed_addr constant [12 x i8] c"abeoz9_temp\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 453, i32 40 }
@___asan_gen_.210 = private unnamed_addr constant [19 x i8] c"abeoz9_chip_config\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 438, i32 18 }
@___asan_gen_.213 = private unnamed_addr constant [19 x i8] c"abeoz9_temp_config\00", align 1
@___asan_gen_.214 = private constant [29 x i8] c"../drivers/rtc/rtc-ab-eoz9.c\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 448, i32 18 }
@___asan_gen_.216 = private unnamed_addr constant [31 x i8] c"switch.table.abeoz9_is_visible\00", align 1
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_author344, ptr @__UNIQUE_ID_description345, ptr @__UNIQUE_ID_file346, ptr @__UNIQUE_ID_license347, ptr @__exitcall_abeoz9_driver_exit, ptr @__initcall__kmod_rtc_ab_eoz9__343_587_abeoz9_driver_init6, ptr @abeoz9_check_validity._entry, ptr @abeoz9_check_validity._entry.27, ptr @abeoz9_check_validity._entry.31, ptr @abeoz9_check_validity._entry.34, ptr @abeoz9_check_validity._entry_ptr, ptr @abeoz9_check_validity._entry_ptr.30, ptr @abeoz9_check_validity._entry_ptr.33, ptr @abeoz9_check_validity._entry_ptr.36, ptr @abeoz9_driver_exit, ptr @abeoz9_hwmon_register._entry, ptr @abeoz9_hwmon_register._entry_ptr, ptr @abeoz9_probe._entry, ptr @abeoz9_probe._entry.7, ptr @abeoz9_probe._entry_ptr, ptr @abeoz9_probe._entry_ptr.9, ptr @abeoz9_rtc_get_time._entry, ptr @abeoz9_rtc_get_time._entry_ptr, ptr @abeoz9_rtc_set_time._entry, ptr @abeoz9_rtc_set_time._entry_ptr, ptr @abeoz9_rtc_setup._entry, ptr @abeoz9_rtc_setup._entry.13, ptr @abeoz9_rtc_setup._entry.16, ptr @abeoz9_rtc_setup._entry.19, ptr @abeoz9_rtc_setup._entry_ptr, ptr @abeoz9_rtc_setup._entry_ptr.15, ptr @abeoz9_rtc_setup._entry_ptr.18, ptr @abeoz9_rtc_setup._entry_ptr.21, ptr @abeoz9z3_temp_read._entry, ptr @abeoz9z3_temp_read._entry_ptr, ptr @abeoz9_driver, ptr @.str, ptr @abeoz9_dt_match, ptr @abeoz9_id, ptr @abeoz9_probe._key, ptr @abeoz9_rtc_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @rtc_ops, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @abeoz9_chip_info, ptr @.str.40, ptr @.str.41, ptr @abeoz9_hwmon_ops, ptr @abeoz9_info, ptr @.str.42, ptr @.str.43, ptr @abeoz9_chip, ptr @abeoz9_temp, ptr @abeoz9_chip_config, ptr @abeoz9_temp_config, ptr @switch.table.abeoz9_is_visible], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abeoz9_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abeoz9_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abeoz9_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abeoz9_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abeoz9_rtc_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abeoz9_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abeoz9_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abeoz9_rtc_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abeoz9_rtc_setup._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abeoz9_rtc_setup._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abeoz9_rtc_setup._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abeoz9_rtc_get_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abeoz9_check_validity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abeoz9_check_validity._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abeoz9_check_validity._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abeoz9_check_validity._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abeoz9_rtc_set_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abeoz9_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abeoz9_hwmon_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abeoz9_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abeoz9_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abeoz9z3_temp_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abeoz9_chip to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abeoz9_temp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abeoz9_chip_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abeoz9_temp_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.abeoz9_is_visible to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @abeoz9_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @abeoz9_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @abeoz9_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @abeoz9_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abeoz9_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %ohms.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #7
  %and.i = and i32 %call.i.i, 202899457
  call void @__sanitizer_cov_trace_const_cmp4(i32 202899457, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 202899457
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @abeoz9_rtc_regmap_config, ptr noundef nonnull @abeoz9_probe._key, ptr noundef nonnull @.str.1) #7
  %cmp.i98 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i98, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %6) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #7
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %regmap11 = getelementptr inbounds %struct.abeoz9_rtc_data, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %regmap11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %regmap11, align 4
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call.i.i99 = tail call i32 @regmap_update_bits_base(ptr noundef %call2, i32 noundef 0, i32 noundef 255, i32 noundef 25, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i99)
  %cmp.i100 = icmp slt i32 %call.i.i99, 0
  br i1 %cmp.i100, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %call.i.i99) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end10
  %call3.i = tail call i32 @regmap_write(ptr noundef %call2, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end8.i, label %if.end9.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %call3.i) #10
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  %call10.i = tail call i32 @regmap_write(ptr noundef %call2, i32 noundef 2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %do.end15.i, label %if.end16.i

do.end15.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %call10.i) #10
  br label %cleanup

if.end16.i:                                       ; preds = %if.end9.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ohms.i.i) #7
  %11 = ptrtoint ptr %ohms.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ohms.i.i, align 4
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.22, ptr noundef nonnull %ohms.i.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.i.abeoz9_trickle_parse_dt.exit.i_crit_edge

if.end16.i.abeoz9_trickle_parse_dt.exit.i_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %abeoz9_trickle_parse_dt.exit.i

if.end.i.i:                                       ; preds = %if.end16.i
  %12 = ptrtoint ptr %ohms.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ohms.i.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %sw.default.i.i [
    i32 1000, label %if.end.i.i.abeoz9_trickle_parse_dt.exit.i_crit_edge
    i32 5000, label %sw.bb1.i.i
    i32 20000, label %sw.bb2.i.i
    i32 80000, label %sw.bb3.i.i
  ]

if.end.i.i.abeoz9_trickle_parse_dt.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %abeoz9_trickle_parse_dt.exit.i

sw.bb1.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %abeoz9_trickle_parse_dt.exit.i

sw.bb2.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %abeoz9_trickle_parse_dt.exit.i

sw.bb3.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %abeoz9_trickle_parse_dt.exit.i

sw.default.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %abeoz9_trickle_parse_dt.exit.i

abeoz9_trickle_parse_dt.exit.i:                   ; preds = %sw.default.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.end.i.i.abeoz9_trickle_parse_dt.exit.i_crit_edge, %if.end16.i.abeoz9_trickle_parse_dt.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 2, %sw.default.i.i ], [ 130, %sw.bb3.i.i ], [ 66, %sw.bb2.i.i ], [ 34, %sw.bb1.i.i ], [ 2, %if.end16.i.abeoz9_trickle_parse_dt.exit.i_crit_edge ], [ 18, %if.end.i.i.abeoz9_trickle_parse_dt.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ohms.i.i) #7
  %call.i48.i = call i32 @regmap_update_bits_base(ptr noundef %call2, i32 noundef 48, i32 noundef 511, i32 noundef %retval.0.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.i)
  %cmp19.i = icmp slt i32 %call.i48.i, 0
  br i1 %cmp19.i, label %do.end23.i, label %abeoz9_rtc_setup.exit

do.end23.i:                                       ; preds = %abeoz9_trickle_parse_dt.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %call.i48.i) #10
  br label %cleanup

abeoz9_rtc_setup.exit:                            ; preds = %abeoz9_trickle_parse_dt.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.i)
  %tobool14.not = icmp eq i32 %call.i48.i, 0
  br i1 %tobool14.not, label %if.end16, label %abeoz9_rtc_setup.exit.cleanup_crit_edge

abeoz9_rtc_setup.exit.cleanup_crit_edge:          ; preds = %abeoz9_rtc_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %abeoz9_rtc_setup.exit
  %call17 = call ptr @devm_rtc_allocate_device(ptr noundef %dev1) #7
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call17, ptr %call.i, align 4
  %cmp.i.i.not = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  %16 = ptrtoint ptr %call17 to i32
  br i1 %cmp.i.i.not, label %if.end16.cleanup_crit_edge, label %if.end22

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call17, i32 0, i32 3
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @rtc_ops, ptr %ops, align 8
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %19, i32 0, i32 22
  %20 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 946684800, ptr %range_min, align 8
  %21 = load ptr, ptr %call.i, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %21, i32 0, i32 23
  %22 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 4102444799, ptr %range_max, align 8
  %23 = load ptr, ptr %call.i, align 4
  %features = getelementptr inbounds %struct.rtc_device, ptr %23, i32 0, i32 21
  call void @_clear_bit(i32 noundef 0, ptr noundef %features) #7
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp = icmp sgt i32 %25, 0
  br i1 %cmp, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end22
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %26 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end.i101, label %if.then27.dev_name.exit_crit_edge

if.then27.dev_name.exit_crit_edge:                ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i101:                                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i101, %if.then27.dev_name.exit_crit_edge
  %retval.0.i102 = phi ptr [ %29, %if.end.i101 ], [ %27, %if.then27.dev_name.exit_crit_edge ]
  %call30 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %25, ptr noundef null, ptr noundef nonnull @abeoz9_rtc_irq, i32 noundef 8200, ptr noundef %retval.0.i102, ptr noundef %dev1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %dev_name.exit.if.end40_crit_edge, label %do.end35

dev_name.exit.if.end40_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

do.end35:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  %features38 = getelementptr inbounds %struct.rtc_device, ptr %31, i32 0, i32 21
  call void @_clear_bit(i32 noundef 4, ptr noundef %features38) #7
  br label %if.end40

if.end40:                                         ; preds = %if.else, %dev_name.exit.if.end40_crit_edge
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp42 = icmp sgt i32 %33, 0
  br i1 %cmp42, label %if.end40.if.then44_crit_edge, label %lor.lhs.false

if.end40.if.then44_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44

lor.lhs.false:                                    ; preds = %if.end40
  %call.i103 = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.10) #7
  br i1 %call.i103, label %lor.lhs.false.if.then44_crit_edge, label %lor.lhs.false.if.end49_crit_edge

lor.lhs.false.if.end49_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

lor.lhs.false.if.then44_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44

if.then44:                                        ; preds = %lor.lhs.false.if.then44_crit_edge, %if.end40.if.then44_crit_edge
  %call45 = call i32 @device_init_wakeup(ptr noundef %dev1, i1 noundef zeroext true) #7
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %features47 = getelementptr inbounds %struct.rtc_device, ptr %35, i32 0, i32 21
  call void @_set_bit(i32 noundef 0, ptr noundef %features47) #7
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %lor.lhs.false.if.end49_crit_edge
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  %call51 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end54:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @abeoz9_hwmon_register(ptr noundef %dev1, ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end49.cleanup_crit_edge, %do.end35, %if.end16.cleanup_crit_edge, %abeoz9_rtc_setup.exit.cleanup_crit_edge, %do.end23.i, %do.end15.i, %do.end8.i, %do.end.i, %if.end6.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then4 ], [ %call30, %do.end35 ], [ 0, %if.end54 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ %call.i48.i, %abeoz9_rtc_setup.exit.cleanup_crit_edge ], [ %16, %if.end16.cleanup_crit_edge ], [ %call51, %if.end49.cleanup_crit_edge ], [ %call.i48.i, %do.end23.i ], [ %call10.i, %do.end15.i ], [ %call3.i, %do.end8.i ], [ %call.i.i99, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abeoz9_rtc_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !121
  %regmap = getelementptr inbounds %struct.abeoz9_rtc_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 2, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.end13, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end13:                                         ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %do.end13.cleanup_crit_edge, label %if.end16

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 2, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  call void @rtc_update_irq(ptr noundef %10, i32 noundef 1, i32 noundef 160) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end16 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @abeoz9_hwmon_register(ptr noundef %dev, ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef %data, ptr noundef nonnull @abeoz9_chip_info, ptr noundef null) #7
  %hwmon_dev = getelementptr inbounds %struct.abeoz9_rtc_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %hwmon_dev, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %1) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abeoz9_rtc_get_time(ptr noundef %dev, ptr nocapture noundef writeonly %tm) #2 align 64 {
entry:
  %regs = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %regs) #7
  %2 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 3
  %5 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 4
  %6 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 5
  %7 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 6
  %8 = call ptr @memset(ptr %regs, i32 255, i32 7)
  %call1 = tail call fastcc i32 @abeoz9_check_validity(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.abeoz9_rtc_data, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_bulk_read(ptr noundef %10, i32 noundef 8, ptr noundef nonnull %regs, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cond.end, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call2) #10
  br label %cleanup

cond.end:                                         ; preds = %if.end
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %regs, align 1
  %13 = and i8 %12, 127
  %call18 = call i32 @_bcd2bin(i8 noundef zeroext %13) #11
  %14 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call18, ptr %tm, align 4
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %2, align 1
  %17 = and i8 %16, 127
  %call39 = call i32 @_bcd2bin(i8 noundef zeroext %17) #11
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %18 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call39, ptr %tm_min, align 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %3, align 1
  %21 = and i8 %20, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool45.not = icmp eq i8 %21, 0
  br i1 %tobool45.not, label %cond.end91, label %cond.false62

cond.false62:                                     ; preds = %cond.end
  %and49 = and i8 %20, 31
  %call67 = call i32 @_bcd2bin(i8 noundef zeroext %and49) #11
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %22 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call67, ptr %tm_hour, align 4
  %23 = and i8 %20, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool73.not = icmp eq i8 %23, 0
  br i1 %tobool73.not, label %cond.false62.cond.end108_crit_edge, label %if.then74

cond.false62.cond.end108_crit_edge:               ; preds = %cond.false62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end108

if.then74:                                        ; preds = %cond.false62
  call void @__sanitizer_cov_trace_pc() #9
  %add76 = add i32 %call67, 12
  %24 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add76, ptr %tm_hour, align 4
  br label %cond.end108

cond.end91:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %call90 = call i32 @_bcd2bin(i8 noundef zeroext %20) #11
  %tm_hour93 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %25 = ptrtoint ptr %tm_hour93 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call90, ptr %tm_hour93, align 4
  br label %cond.end108

cond.end108:                                      ; preds = %cond.end91, %if.then74, %cond.false62.cond.end108_crit_edge
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %4, align 1
  %call107 = call i32 @_bcd2bin(i8 noundef zeroext %27) #11
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %28 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call107, ptr %tm_mday, align 4
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %5, align 1
  %call122 = call i32 @_bcd2bin(i8 noundef zeroext %30) #11
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %31 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call122, ptr %tm_wday, align 4
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %6, align 1
  %call137 = call i32 @_bcd2bin(i8 noundef zeroext %33) #11
  %sub = add i32 %call137, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %34 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub, ptr %tm_mon, align 4
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %7, align 1
  %call152 = call i32 @_bcd2bin(i8 noundef zeroext %36) #11
  %add155 = add i32 %call152, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %37 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add155, ptr %tm_year, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end108, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %cond.end108 ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %regs) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abeoz9_rtc_set_time(ptr noundef %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %regs = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap1 = getelementptr inbounds %struct.abeoz9_rtc_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %regs) #7
  %4 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 1
  %5 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 2
  %6 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 3
  %7 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 4
  %8 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 5
  %9 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 6
  %10 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm, align 4
  %call5 = tail call zeroext i8 @_bin2bcd(i32 noundef %11) #11
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call5, ptr %regs, align 1
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %13 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_min, align 4
  %call18 = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #11
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call18, ptr %4, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %16 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_hour, align 4
  %call34 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #11
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call34, ptr %5, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %19 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_mday, align 4
  %call50 = tail call zeroext i8 @_bin2bcd(i32 noundef %20) #11
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call50, ptr %6, align 1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %22 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_wday, align 4
  %call66 = tail call zeroext i8 @_bin2bcd(i32 noundef %23) #11
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call66, ptr %7, align 1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %25 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_mon, align 4
  %add72 = add i32 %26, 1
  %call86 = tail call zeroext i8 @_bin2bcd(i32 noundef %add72) #11
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %call86, ptr %8, align 1
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %28 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_year, align 4
  %sub = add i32 %29, -100
  %call105 = tail call zeroext i8 @_bin2bcd(i32 noundef %sub) #11
  %30 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call105, ptr %9, align 1
  %31 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap1, align 4
  %call112 = call i32 @regmap_bulk_write(ptr noundef %32, i32 noundef 8, ptr noundef nonnull %regs, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool.not = icmp eq i32 %call112, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %call112) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 3, i32 noundef 44, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call112, %do.end ], [ %call.i.i, %if.end ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %regs) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abeoz9_rtc_read_alarm(ptr noundef %dev, ptr nocapture noundef writeonly %alarm) #2 align 64 {
entry:
  %regs = alloca [7 x i8], align 1
  %val = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap1 = getelementptr inbounds %struct.abeoz9_rtc_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %regs) #7
  %4 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 1
  %5 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 2
  %6 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 3
  %7 = call ptr @memset(ptr %regs, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #7
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %val, align 1, !annotation !121
  %9 = getelementptr inbounds [2 x i8], ptr %val, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %9, align 1, !annotation !121
  %call2 = tail call fastcc i32 @abeoz9_check_validity(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @regmap_bulk_read(ptr noundef %3, i32 noundef 1, ptr noundef nonnull %val, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val, align 1
  %13 = and i8 %12, 1
  %14 = ptrtoint ptr %alarm to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %alarm, align 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %9, align 1
  %17 = and i8 %16, 1
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 1
  %18 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %pending, align 1
  %call13 = call i32 @regmap_bulk_read(ptr noundef %3, i32 noundef 16, ptr noundef nonnull %regs, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.end28, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end28:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %regs, align 1
  %21 = and i8 %20, 127
  %call33 = call i32 @_bcd2bin(i8 noundef zeroext %21) #11
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  %22 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call33, ptr %time, align 4
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %4, align 1
  %25 = and i8 %24, 127
  %call55 = call i32 @_bcd2bin(i8 noundef zeroext %25) #11
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call55, ptr %tm_min, align 4
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %5, align 1
  %29 = and i8 %28, 31
  %call78 = call i32 @_bcd2bin(i8 noundef zeroext %29) #11
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 2
  %30 = and i8 %28, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool100.not = icmp eq i8 %30, 0
  %add = add i32 %call78, 12
  %spec.select = select i1 %tobool100.not, i32 %call78, i32 %add
  %31 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %spec.select, ptr %tm_hour, align 4
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %6, align 1
  %34 = and i8 %33, 63
  %call126 = call i32 @_bcd2bin(i8 noundef zeroext %34) #11
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 3
  %35 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call126, ptr %tm_mday, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end28 ], [ %call2, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call13, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %regs) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abeoz9_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %alarm) #2 align 64 {
entry:
  %regs = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %regs) #7
  %2 = getelementptr inbounds i8, ptr %regs, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 3)
  %regmap = getelementptr inbounds %struct.abeoz9_rtc_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 2, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %do.body5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body5:                                         ; preds = %entry
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  %6 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %time, align 4
  %call61 = tail call zeroext i8 @_bin2bcd(i32 noundef %7) #11
  %conv67 = or i8 %call61, -128
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv67, ptr %regs, align 1
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tm_min, align 4
  %call142 = tail call zeroext i8 @_bin2bcd(i32 noundef %10) #11
  %conv149 = or i8 %call142, -128
  %arrayidx150 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv149, ptr %arrayidx150, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_hour, align 4
  %call225 = tail call zeroext i8 @_bin2bcd(i32 noundef %13) #11
  %14 = and i8 %call225, 31
  %conv232 = or i8 %14, -128
  %arrayidx233 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv232, ptr %arrayidx233, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_mday, align 4
  %call308 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #11
  %18 = and i8 %call308, 63
  %conv315 = or i8 %18, -128
  %arrayidx316 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx316 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv315, ptr %arrayidx316, align 1
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call318 = call i32 @regmap_bulk_write(ptr noundef %21, i32 noundef 16, ptr noundef nonnull %regs, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call318)
  %tobool319.not = icmp eq i32 %call318, 0
  br i1 %tobool319.not, label %abeoz9_rtc_alarm_irq_enable.exit, label %do.body5.cleanup_crit_edge

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

abeoz9_rtc_alarm_irq_enable.exit:                 ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %alarm to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %alarm, align 4
  %24 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i, align 4
  %regmap.i = getelementptr inbounds %struct.abeoz9_rtc_data, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 4
  %28 = and i8 %23, 1
  %and13.i = zext i8 %28 to i32
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 1, i32 noundef 1, i32 noundef %and13.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %abeoz9_rtc_alarm_irq_enable.exit, %do.body5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %abeoz9_rtc_alarm_irq_enable.exit ], [ %call.i, %entry.cleanup_crit_edge ], [ %call318, %do.body5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %regs) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abeoz9_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.abeoz9_rtc_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %and13 = and i32 %enable, 1
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 1, i32 noundef 1, i32 noundef %and13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @abeoz9_check_validity(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap1 = getelementptr inbounds %struct.abeoz9_rtc_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !121
  %call2 = call i32 @regmap_read(ptr noundef %3, i32 noundef 3, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call2) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.28) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %and8 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end14, label %do.end13

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.32) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %and15 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %do.end20

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.35) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %if.end14.cleanup_crit_edge, %do.end13, %do.end6, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ -22, %do.end6 ], [ -22, %do.end13 ], [ -22, %do.end20 ], [ 0, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @abeoz9_is_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %attr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 7
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [7 x i16], ptr @switch.table.abeoz9_is_visible, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %1)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i16 [ %switch.load, %switch.lookup ], [ 0, %entry.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abeoz9z3_temp_read(ptr noundef %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap1 = getelementptr inbounds %struct.abeoz9_rtc_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !121
  %call2 = call i32 @regmap_read(ptr noundef %3, i32 noundef 3, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = and i32 %6, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %attr, label %if.end6.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 7, label %sw.bb11
    i32 5, label %sw.bb12
  ]

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end6
  %call7 = call i32 @regmap_read(ptr noundef %3, i32 noundef 32, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %sw.bb.cleanup_crit_edge, label %if.end10

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %12 = mul i32 %11, 1000
  %mul = add i32 %12, -60000
  %13 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %temp, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 120000, ptr %temp, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -60000, ptr %temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb12, %sw.bb11, %if.end10, %sw.bb.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb12 ], [ 0, %sw.bb11 ], [ 0, %if.end10 ], [ %call2, %entry.cleanup_crit_edge ], [ %call7, %sw.bb.cleanup_crit_edge ], [ -95, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !86, !87, !88, !89, !91, !93, !95, !96, !97, !98, !100, !102, !104, !106, !108, !110}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__initcall__kmod_rtc_ab_eoz9__343_587_abeoz9_driver_init6, !1, !"__initcall__kmod_rtc_ab_eoz9__343_587_abeoz9_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 587, i32 1}
!2 = !{ptr @__exitcall_abeoz9_driver_exit, !1, !"__exitcall_abeoz9_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author344, !4, !"__UNIQUE_ID_author344", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 589, i32 1}
!5 = !{ptr @__UNIQUE_ID_description345, !6, !"__UNIQUE_ID_description345", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 590, i32 1}
!7 = !{ptr @__UNIQUE_ID_file346, !8, !"__UNIQUE_ID_file346", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 591, i32 1}
!9 = !{ptr @__UNIQUE_ID_license347, !8, !"__UNIQUE_ID_license347", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 580, i32 11}
!12 = !{ptr @abeoz9_driver, !13, !"abeoz9_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 578, i32 26}
!14 = !{ptr @abeoz9_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 511, i32 11}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 514, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @abeoz9_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @abeoz9_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 545, i32 4}
!27 = !{ptr @abeoz9_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @abeoz9_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 552, i32 56}
!31 = !{ptr @abeoz9_rtc_regmap_config, !32, !"abeoz9_rtc_regmap_config", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 378, i32 35}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 334, i32 3}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @abeoz9_rtc_setup._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @abeoz9_rtc_setup._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 340, i32 3}
!40 = !{ptr @abeoz9_rtc_setup._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @abeoz9_rtc_setup._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 348, i32 3}
!44 = !{ptr @abeoz9_rtc_setup._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @abeoz9_rtc_setup._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 363, i32 3}
!48 = !{ptr @abeoz9_rtc_setup._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @abeoz9_rtc_setup._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 304, i32 33}
!52 = !{ptr @rtc_ops, !53, !"rtc_ops", i1 false, i1 false}
!53 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 370, i32 35}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 157, i32 3}
!56 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @abeoz9_rtc_get_time._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @abeoz9_rtc_get_time._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 109, i32 3}
!61 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @abeoz9_check_validity._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @abeoz9_check_validity._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 115, i32 3}
!66 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @abeoz9_check_validity._entry.27, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @abeoz9_check_validity._entry_ptr.30, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 120, i32 3}
!71 = !{ptr @abeoz9_check_validity._entry.31, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @abeoz9_check_validity._entry_ptr.33, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 126, i32 3}
!75 = !{ptr @abeoz9_check_validity._entry.34, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @abeoz9_check_validity._entry_ptr.36, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 201, i32 3}
!79 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @abeoz9_rtc_set_time._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @abeoz9_rtc_set_time._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 479, i32 12}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 484, i32 3}
!86 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @abeoz9_hwmon_register._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @abeoz9_hwmon_register._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @abeoz9_chip_info, !90, !"abeoz9_chip_info", i1 false, i1 false}
!90 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 469, i32 37}
!91 = !{ptr @abeoz9_hwmon_ops, !92, !"abeoz9_hwmon_ops", i1 false, i1 false}
!92 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 464, i32 31}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 401, i32 3}
!95 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @abeoz9z3_temp_read._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @abeoz9z3_temp_read._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @abeoz9_info, !99, !"abeoz9_info", i1 false, i1 false}
!99 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 458, i32 41}
!100 = !{ptr @abeoz9_chip, !101, !"abeoz9_chip", i1 false, i1 false}
!101 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 443, i32 40}
!102 = !{ptr @abeoz9_chip_config, !103, !"abeoz9_chip_config", i1 false, i1 false}
!103 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 438, i32 18}
!104 = !{ptr @abeoz9_temp, !105, !"abeoz9_temp", i1 false, i1 false}
!105 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 453, i32 40}
!106 = !{ptr @abeoz9_temp_config, !107, !"abeoz9_temp_config", i1 false, i1 false}
!107 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 448, i32 18}
!108 = !{ptr @abeoz9_dt_match, !109, !"abeoz9_dt_match", i1 false, i1 false}
!109 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 566, i32 34}
!110 = !{ptr @abeoz9_id, !111, !"abeoz9_id", i1 false, i1 false}
!111 = !{!"../drivers/rtc/rtc-ab-eoz9.c", i32 573, i32 35}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{!"auto-init"}
