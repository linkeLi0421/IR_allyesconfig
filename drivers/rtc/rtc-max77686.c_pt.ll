; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-max77686.c_pt.bc'
source_filename = "../drivers/rtc/rtc-max77686.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.max77686_rtc_driver_data = type { i32, i8, ptr, i8, i32, i8, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.max77686_rtc_info = type { ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_max77686__289_869_max77686_rtc_driver_init6 = internal global ptr @max77686_rtc_driver_init, section ".initcall6.init", align 4
@max77686_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max77686_rtc_probe, ptr @max77686_rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77686_rtc_pm_ops, ptr null, ptr null }, ptr @rtc_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max77686_rtc_driver_exit = internal global ptr @max77686_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [51 x i8] c"rtc_max77686.description=Maxim MAX77686 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [59 x i8] c"rtc_max77686.author=Chiwoong Byun <woong.byun@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [43 x i8] c"rtc_max77686.file=drivers/rtc/rtc-max77686\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [25 x i8] c"rtc_max77686.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max77686-rtc\00", [19 x i8] zeroinitializer }, align 32
@max77686_rtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @max77686_rtc_suspend, ptr @max77686_rtc_resume, ptr @max77686_rtc_suspend, ptr @max77686_rtc_resume, ptr @max77686_rtc_suspend, ptr @max77686_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rtc_id = internal constant { [4 x %struct.platform_device_id], [32 x i8] } { [4 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max77686-rtc\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @max77686_drv_data to i32) }, %struct.platform_device_id { [20 x i8] c"max77802-rtc\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @max77802_drv_data to i32) }, %struct.platform_device_id { [20 x i8] c"max77620-rtc\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @max77620_drv_data to i32) }, %struct.platform_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@max77686_rtc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&info->lock\00", [20 x i8] zeroinitializer }, align 32
@max77686_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 755, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialize RTC reg:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max77686_rtc_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/rtc/rtc-max77686.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max77686_rtc_probe._entry_ptr = internal global ptr @max77686_rtc_probe._entry, section ".printk_index", align 4
@max77686_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @max77686_rtc_read_time, ptr @max77686_rtc_set_time, ptr @max77686_rtc_read_alarm, ptr @max77686_rtc_set_alarm, ptr null, ptr @max77686_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@max77686_rtc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 766, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register RTC device: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@max77686_rtc_probe._entry_ptr.9 = internal global ptr @max77686_rtc_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-alarm1\00", [21 x i8] zeroinitializer }, align 32
@max77686_rtc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 783, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to request alarm IRQ: %d: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@max77686_rtc_probe._entry_ptr.13 = internal global ptr @max77686_rtc_probe._entry.11, section ".printk_index", align 4
@max77686_init_rtc_regmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 694, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get rtc regmap\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"max77686_init_rtc_regmap\00", [39 x i8] zeroinitializer }, align 32
@max77686_init_rtc_regmap._entry_ptr = internal global ptr @max77686_init_rtc_regmap._entry, section ".printk_index", align 4
@max77686_init_rtc_regmap._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.4, i32 706, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to allocate I2C device for RTC\0A\00", [57 x i8] zeroinitializer }, align 32
@max77686_init_rtc_regmap._entry_ptr.18 = internal global ptr @max77686_init_rtc_regmap._entry.16, section ".printk_index", align 4
@max77686_init_rtc_regmap._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"rtc_max77686:711:(info->drv_data->regmap_config)->lock\00", [41 x i8] zeroinitializer }, align 32
@max77686_init_rtc_regmap._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.15, ptr @.str.4, i32 714, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to allocate RTC regmap: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@max77686_init_rtc_regmap._entry_ptr.22 = internal global ptr @max77686_init_rtc_regmap._entry.20, section ".printk_index", align 4
@max77686_init_rtc_regmap._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.15, ptr @.str.4, i32 724, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to add RTC irq chip: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@max77686_init_rtc_regmap._entry_ptr.25 = internal global ptr @max77686_init_rtc_regmap._entry.23, section ".printk_index", align 4
@max77686_rtc_init_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 668, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Fail to write controlm reg(%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max77686_rtc_init_reg\00", [42 x i8] zeroinitializer }, align 32
@max77686_rtc_init_reg._entry_ptr = internal global ptr @max77686_rtc_init_reg._entry, section ".printk_index", align 4
@max77686_rtc_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 345, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Fail to write update reg(ret=%d, data=0x%x)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max77686_rtc_update\00", [44 x i8] zeroinitializer }, align 32
@max77686_rtc_update._entry_ptr = internal global ptr @max77686_rtc_update._entry, section ".printk_index", align 4
@max77686_rtc_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 370, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Fail to read time reg(%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max77686_rtc_read_time\00", [41 x i8] zeroinitializer }, align 32
@max77686_rtc_read_time._entry_ptr = internal global ptr @max77686_rtc_read_time._entry, section ".printk_index", align 4
@max77686_rtc_set_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 397, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Fail to write time reg(%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max77686_rtc_set_time\00", [42 x i8] zeroinitializer }, align 32
@max77686_rtc_set_time._entry_ptr = internal global ptr @max77686_rtc_set_time._entry, section ".printk_index", align 4
@max77686_rtc_tm_to_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 321, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RTC cannot handle the year %d.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max77686_rtc_tm_to_data\00", [40 x i8] zeroinitializer }, align 32
@max77686_rtc_tm_to_data._entry_ptr = internal global ptr @max77686_rtc_tm_to_data._entry, section ".printk_index", align 4
@max77686_rtc_read_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 425, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Fail to read alarm reg(%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max77686_rtc_read_alarm\00", [40 x i8] zeroinitializer }, align 32
@max77686_rtc_read_alarm._entry_ptr = internal global ptr @max77686_rtc_read_alarm._entry, section ".printk_index", align 4
@max77686_rtc_read_alarm._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.4, i32 437, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"alarm enable register not set(%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@max77686_rtc_read_alarm._entry_ptr.40 = internal global ptr @max77686_rtc_read_alarm._entry.38, section ".printk_index", align 4
@max77686_rtc_read_alarm._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.4, i32 444, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fail to read alarm enable(%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@max77686_rtc_read_alarm._entry_ptr.43 = internal global ptr @max77686_rtc_read_alarm._entry.41, section ".printk_index", align 4
@max77686_rtc_read_alarm._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.4, i32 468, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Fail to read alarm pending status reg(%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@max77686_rtc_read_alarm._entry_ptr.46 = internal global ptr @max77686_rtc_read_alarm._entry.44, section ".printk_index", align 4
@max77686_rtc_set_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 603, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Fail to write alarm reg(%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max77686_rtc_set_alarm\00", [41 x i8] zeroinitializer }, align 32
@max77686_rtc_set_alarm._entry_ptr = internal global ptr @max77686_rtc_set_alarm._entry, section ".printk_index", align 4
@max77686_rtc_stop_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 488, ptr @.str.51, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: should have mutex locked\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max77686_rtc_stop_alarm\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@max77686_rtc_stop_alarm._entry_ptr = internal global ptr @max77686_rtc_stop_alarm._entry, section ".printk_index", align 4
@max77686_rtc_stop_alarm._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.50, ptr @.str.4, i32 498, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@max77686_rtc_stop_alarm._entry_ptr.53 = internal global ptr @max77686_rtc_stop_alarm._entry.52, section ".printk_index", align 4
@max77686_rtc_stop_alarm._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.50, ptr @.str.4, i32 507, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@max77686_rtc_stop_alarm._entry_ptr.55 = internal global ptr @max77686_rtc_stop_alarm._entry.54, section ".printk_index", align 4
@max77686_rtc_stop_alarm._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.50, ptr @.str.4, i32 521, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@max77686_rtc_stop_alarm._entry_ptr.57 = internal global ptr @max77686_rtc_stop_alarm._entry.56, section ".printk_index", align 4
@max77686_rtc_start_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.58, ptr @.str.4, i32 538, ptr @.str.51, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"max77686_rtc_start_alarm\00", [39 x i8] zeroinitializer }, align 32
@max77686_rtc_start_alarm._entry_ptr = internal global ptr @max77686_rtc_start_alarm._entry, section ".printk_index", align 4
@max77686_rtc_start_alarm._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.58, ptr @.str.4, i32 551, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@max77686_rtc_start_alarm._entry_ptr.60 = internal global ptr @max77686_rtc_start_alarm._entry.59, section ".printk_index", align 4
@max77686_rtc_start_alarm._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.58, ptr @.str.4, i32 573, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@max77686_rtc_start_alarm._entry_ptr.62 = internal global ptr @max77686_rtc_start_alarm._entry.61, section ".printk_index", align 4
@max77686_rtc_alarm_irq.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.63, ptr @.str.64, ptr @.str.4, ptr @.str.65, i8 0, i8 -97, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtc_max77686\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max77686_rtc_alarm_irq\00", [41 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RTC alarm IRQ: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@max77686_drv_data = internal constant { %struct.max77686_rtc_driver_data, [60 x i8] } { %struct.max77686_rtc_driver_data { i32 16000, i8 127, ptr @max77686_map, i8 0, i32 6, i8 0, i32 7, ptr @max77686_rtc_irq_chip, ptr @max77686_rtc_regmap_config }, [60 x i8] zeroinitializer }, align 32
@max77802_drv_data = internal constant { %struct.max77686_rtc_driver_data, [60 x i8] } { %struct.max77686_rtc_driver_data { i32 200, i8 -1, ptr @max77802_map, i8 1, i32 -1, i8 0, i32 7, ptr @max77802_rtc_irq_chip, ptr null }, [60 x i8] zeroinitializer }, align 32
@max77620_drv_data = internal constant { %struct.max77686_rtc_driver_data, [60 x i8] } { %struct.max77686_rtc_driver_data { i32 16000, i8 127, ptr @max77686_map, i8 0, i32 104, i8 1, i32 -1, ptr @max77686_rtc_irq_chip, ptr @max77620_rtc_regmap_config }, [60 x i8] zeroinitializer }, align 32
@max77686_map = internal constant { [26 x i32], [56 x i8] } { [26 x i32] [i32 2, i32 3, i32 4, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 -559038737], [56 x i8] zeroinitializer }, align 32
@max77686_rtc_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@max77686_rtc_irqs = internal constant { [6 x %struct.regmap_irq], [40 x i8] } { [6 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@max77686_rtc_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str, i32 0, i32 0, ptr null, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 1, ptr @max77686_rtc_irqs, i32 6, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@max77802_map = internal constant { [26 x i32], [56 x i8] } { [26 x i32] [i32 194, i32 195, i32 196, i32 198, i32 199, i32 200, i32 201, i32 202, i32 203, i32 204, i32 205, i32 207, i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 215, i32 216, i32 217, i32 218, i32 219, i32 220, i32 221, i32 206], [56 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max77802-rtc\00", [19 x i8] zeroinitializer }, align 32
@max77802_rtc_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.67, i32 0, i32 0, ptr null, i32 0, i32 192, i32 193, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 1, ptr @max77686_rtc_irqs, i32 6, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@max77620_rtc_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@___asan_gen_.69 = private unnamed_addr constant [20 x i8] c"max77686_rtc_driver\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 859, i32 31 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 861, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant [20 x i8] c"max77686_rtc_pm_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 848, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"rtc_id\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 851, i32 40 }
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 742, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 755, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"max77686_rtc_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 645, i32 35 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 766, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 780, i32 8 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 782, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 694, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 706, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 710, i32 21 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 714, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 724, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 668, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 344, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 370, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 397, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 320, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 425, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 436, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 443, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 467, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 603, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 488, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 497, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 507, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 521, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 538, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 551, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 573, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 638, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant [18 x i8] c"max77686_drv_data\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 192, i32 46 }
@___asan_gen_.282 = private unnamed_addr constant [18 x i8] c"max77802_drv_data\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 260, i32 46 }
@___asan_gen_.285 = private unnamed_addr constant [18 x i8] c"max77620_drv_data\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 210, i32 46 }
@___asan_gen_.288 = private unnamed_addr constant [13 x i8] c"max77686_map\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 139, i32 27 }
@___asan_gen_.291 = private unnamed_addr constant [27 x i8] c"max77686_rtc_regmap_config\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 187, i32 35 }
@___asan_gen_.294 = private unnamed_addr constant [18 x i8] c"max77686_rtc_irqs\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 168, i32 32 }
@___asan_gen_.297 = private unnamed_addr constant [22 x i8] c"max77686_rtc_irq_chip\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 178, i32 37 }
@___asan_gen_.300 = private unnamed_addr constant [13 x i8] c"max77802_map\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 222, i32 27 }
@___asan_gen_.303 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 252, i32 11 }
@___asan_gen_.306 = private unnamed_addr constant [22 x i8] c"max77802_rtc_irq_chip\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 251, i32 37 }
@___asan_gen_.309 = private unnamed_addr constant [27 x i8] c"max77620_rtc_regmap_config\00", align 1
@___asan_gen_.310 = private constant [30 x i8] c"../drivers/rtc/rtc-max77686.c\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 204, i32 35 }
@llvm.compiler.used = appending global [112 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_max77686_rtc_driver_exit, ptr @__initcall__kmod_rtc_max77686__289_869_max77686_rtc_driver_init6, ptr @max77686_init_rtc_regmap._entry, ptr @max77686_init_rtc_regmap._entry.16, ptr @max77686_init_rtc_regmap._entry.20, ptr @max77686_init_rtc_regmap._entry.23, ptr @max77686_init_rtc_regmap._entry_ptr, ptr @max77686_init_rtc_regmap._entry_ptr.18, ptr @max77686_init_rtc_regmap._entry_ptr.22, ptr @max77686_init_rtc_regmap._entry_ptr.25, ptr @max77686_rtc_driver_exit, ptr @max77686_rtc_init_reg._entry, ptr @max77686_rtc_init_reg._entry_ptr, ptr @max77686_rtc_probe._entry, ptr @max77686_rtc_probe._entry.11, ptr @max77686_rtc_probe._entry.7, ptr @max77686_rtc_probe._entry_ptr, ptr @max77686_rtc_probe._entry_ptr.13, ptr @max77686_rtc_probe._entry_ptr.9, ptr @max77686_rtc_read_alarm._entry, ptr @max77686_rtc_read_alarm._entry.38, ptr @max77686_rtc_read_alarm._entry.41, ptr @max77686_rtc_read_alarm._entry.44, ptr @max77686_rtc_read_alarm._entry_ptr, ptr @max77686_rtc_read_alarm._entry_ptr.40, ptr @max77686_rtc_read_alarm._entry_ptr.43, ptr @max77686_rtc_read_alarm._entry_ptr.46, ptr @max77686_rtc_read_time._entry, ptr @max77686_rtc_read_time._entry_ptr, ptr @max77686_rtc_set_alarm._entry, ptr @max77686_rtc_set_alarm._entry_ptr, ptr @max77686_rtc_set_time._entry, ptr @max77686_rtc_set_time._entry_ptr, ptr @max77686_rtc_start_alarm._entry, ptr @max77686_rtc_start_alarm._entry.59, ptr @max77686_rtc_start_alarm._entry.61, ptr @max77686_rtc_start_alarm._entry_ptr, ptr @max77686_rtc_start_alarm._entry_ptr.60, ptr @max77686_rtc_start_alarm._entry_ptr.62, ptr @max77686_rtc_stop_alarm._entry, ptr @max77686_rtc_stop_alarm._entry.52, ptr @max77686_rtc_stop_alarm._entry.54, ptr @max77686_rtc_stop_alarm._entry.56, ptr @max77686_rtc_stop_alarm._entry_ptr, ptr @max77686_rtc_stop_alarm._entry_ptr.53, ptr @max77686_rtc_stop_alarm._entry_ptr.55, ptr @max77686_rtc_stop_alarm._entry_ptr.57, ptr @max77686_rtc_tm_to_data._entry, ptr @max77686_rtc_tm_to_data._entry_ptr, ptr @max77686_rtc_update._entry, ptr @max77686_rtc_update._entry_ptr, ptr @max77686_rtc_driver, ptr @.str, ptr @max77686_rtc_pm_ops, ptr @rtc_id, ptr @max77686_rtc_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @max77686_rtc_ops, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @max77686_init_rtc_regmap._key, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.58, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @max77686_drv_data, ptr @max77802_drv_data, ptr @max77620_drv_data, ptr @max77686_map, ptr @max77686_rtc_regmap_config, ptr @max77686_rtc_irqs, ptr @max77686_rtc_irq_chip, ptr @max77802_map, ptr @.str.67, ptr @max77802_rtc_irq_chip, ptr @max77620_rtc_regmap_config], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_rtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_rtc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_rtc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_rtc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_init_rtc_regmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_init_rtc_regmap._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_init_rtc_regmap._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_init_rtc_regmap._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_init_rtc_regmap._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_rtc_init_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_rtc_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_rtc_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_rtc_set_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_rtc_tm_to_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_rtc_read_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_rtc_read_alarm._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_rtc_read_alarm._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_rtc_read_alarm._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_rtc_set_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_rtc_stop_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_rtc_stop_alarm._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_rtc_stop_alarm._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_rtc_stop_alarm._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_rtc_start_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_rtc_start_alarm._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_rtc_start_alarm._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_drv_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77802_drv_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_drv_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_map to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_rtc_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_rtc_irqs to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77686_rtc_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77802_map to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77802_rtc_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77620_rtc_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max77686_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max77686_rtc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max77686_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @max77686_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77686_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %data.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_entry, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 132, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.max77686_rtc_info, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @max77686_rtc_probe.__key) #6
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  %5 = inttoptr i32 %4 to ptr
  %drv_data = getelementptr inbounds %struct.max77686_rtc_info, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %drv_data, align 4
  %parent1.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent1.i, align 8
  %rtc_irq_from_platform.i = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %5, i32 0, i32 5
  %9 = ptrtoint ptr %rtc_irq_from_platform.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rtc_irq_from_platform.i, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.body
  %call.i83 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %rtc_irq.i = getelementptr inbounds %struct.max77686_rtc_info, ptr %call.i, i32 0, i32 8
  %11 = ptrtoint ptr %rtc_irq.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i83, ptr %rtc_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %cmp.i = icmp slt i32 %call.i83, 0
  br i1 %cmp.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.if.end10.i_crit_edge

if.then.i.if.end10.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %irq.i = getelementptr i8, ptr %8, i32 932
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  %rtc_irq9.i = getelementptr inbounds %struct.max77686_rtc_info, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %rtc_irq9.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %rtc_irq9.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i, %if.then.i.if.end10.i_crit_edge
  %call11.i = tail call ptr @dev_get_regmap(ptr noundef %8, ptr noundef null) #6
  %regmap.i = getelementptr inbounds %struct.max77686_rtc_info, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call11.i, ptr %regmap.i, align 4
  %tobool13.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool13.not.i, label %do.end.i, label %if.end16.i

do.end.i:                                         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.14) #9
  br label %cleanup

if.end16.i:                                       ; preds = %if.end10.i
  %18 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drv_data, align 4
  %rtc_i2c_addr.i = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %rtc_i2c_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rtc_i2c_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp18.i = icmp eq i32 %21, -1
  br i1 %cmp18.i, label %if.then19.i, label %if.end21.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %rtc_regmap.i = getelementptr inbounds %struct.max77686_rtc_info, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %rtc_regmap.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call11.i, ptr %rtc_regmap.i, align 4
  br label %add_rtc_irq.i

if.end21.i:                                       ; preds = %if.end16.i
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %adapter.i = getelementptr i8, ptr %8, i32 -8
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 8
  %conv.i = trunc i32 %21 to i16
  %call25.i = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %24, ptr noundef %26, i16 noundef zeroext %conv.i) #6
  %rtc.i = getelementptr inbounds %struct.max77686_rtc_info, ptr %call.i, i32 0, i32 1
  %27 = ptrtoint ptr %rtc.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call25.i, ptr %rtc.i, align 4
  %cmp.i.i = icmp ugt ptr %call25.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end31.i, label %if.end35.i

do.end31.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.17) #9
  %30 = ptrtoint ptr %rtc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rtc.i, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %max77686_init_rtc_regmap.exit

if.end35.i:                                       ; preds = %if.end21.i
  %33 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %drv_data, align 4
  %regmap_config.i = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %regmap_config.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap_config.i, align 4
  %call39.i = tail call ptr @__devm_regmap_init_i2c(ptr noundef %call25.i, ptr noundef %36, ptr noundef nonnull @max77686_init_rtc_regmap._key, ptr noundef nonnull @.str.19) #6
  %rtc_regmap40.i = getelementptr inbounds %struct.max77686_rtc_info, ptr %call.i, i32 0, i32 5
  %37 = ptrtoint ptr %rtc_regmap40.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call39.i, ptr %rtc_regmap40.i, align 4
  %cmp.i101.i = icmp ugt ptr %call39.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i101.i, label %if.then43.i, label %if.end35.i.add_rtc_irq.i_crit_edge

if.end35.i.add_rtc_irq.i_crit_edge:               ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_rtc_irq.i

if.then43.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %call39.i to i32
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.21, i32 noundef %38) #9
  br label %max77686_init_rtc_regmap.exit

add_rtc_irq.i:                                    ; preds = %if.end35.i.add_rtc_irq.i_crit_edge, %if.then19.i
  %rtc_regmap51.i = getelementptr inbounds %struct.max77686_rtc_info, ptr %call.i, i32 0, i32 5
  %41 = ptrtoint ptr %rtc_regmap51.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rtc_regmap51.i, align 4
  %rtc_irq52.i = getelementptr inbounds %struct.max77686_rtc_info, ptr %call.i, i32 0, i32 8
  %43 = ptrtoint ptr %rtc_irq52.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rtc_irq52.i, align 4
  %45 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %drv_data, align 4
  %rtc_irq_chip.i = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %rtc_irq_chip.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rtc_irq_chip.i, align 4
  %rtc_irq_data.i = getelementptr inbounds %struct.max77686_rtc_info, ptr %call.i, i32 0, i32 7
  %call54.i = tail call i32 @regmap_add_irq_chip(ptr noundef %42, i32 noundef %44, i32 noundef 8320, i32 noundef 0, ptr noundef %48, ptr noundef %rtc_irq_data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %cmp55.i = icmp slt i32 %call54.i, 0
  br i1 %cmp55.i, label %do.end60.i, label %add_rtc_irq.i.if.end5_crit_edge

add_rtc_irq.i.if.end5_crit_edge:                  ; preds = %add_rtc_irq.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

do.end60.i:                                       ; preds = %add_rtc_irq.i
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.24, i32 noundef %call54.i) #9
  br label %cleanup

max77686_init_rtc_regmap.exit:                    ; preds = %if.then43.i, %do.end31.i
  %retval.1.i = phi i32 [ %32, %do.end31.i ], [ %38, %if.then43.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %cmp = icmp slt i32 %retval.1.i, 0
  br i1 %cmp, label %max77686_init_rtc_regmap.exit.cleanup_crit_edge, label %max77686_init_rtc_regmap.exit.if.end5_crit_edge

max77686_init_rtc_regmap.exit.if.end5_crit_edge:  ; preds = %max77686_init_rtc_regmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

max77686_init_rtc_regmap.exit.cleanup_crit_edge:  ; preds = %max77686_init_rtc_regmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %max77686_init_rtc_regmap.exit.if.end5_crit_edge, %add_rtc_irq.i.if.end5_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %51 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #6
  %52 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %53 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 3, ptr %data.i, align 1
  %54 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 2, ptr %52, align 1
  %rtc_24hr_mode.i = getelementptr inbounds %struct.max77686_rtc_info, ptr %call.i, i32 0, i32 10
  %55 = ptrtoint ptr %rtc_24hr_mode.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %rtc_24hr_mode.i, align 4
  %rtc_regmap.i84 = getelementptr inbounds %struct.max77686_rtc_info, ptr %call.i, i32 0, i32 5
  %56 = ptrtoint ptr %rtc_regmap.i84 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rtc_regmap.i84, align 4
  %58 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %drv_data, align 4
  %map.i = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %map.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %call.i86 = call i32 @regmap_bulk_write(ptr noundef %57, i32 noundef %63, ptr noundef nonnull %data.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %cmp.i87 = icmp slt i32 %call.i86, 0
  br i1 %cmp.i87, label %do.end.i88, label %if.end.i

do.end.i88:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.26, i32 noundef %call.i86) #9
  br label %do.end11

if.end.i:                                         ; preds = %if.end5
  %66 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %drv_data, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %70 = ptrtoint ptr %rtc_regmap.i84 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rtc_regmap.i84, align 4
  %map.i.i = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %67, i32 0, i32 2
  %72 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %map.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %73, i32 2
  %74 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i.i, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef %75, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.end13

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i, i32 noundef 1) #9
  br label %do.end11

do.end11:                                         ; preds = %do.end.i.i, %do.end.i88
  %retval.0.i.ph = phi i32 [ %call.i.i.i, %do.end.i.i ], [ %call.i86, %do.end.i88 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %retval.0.i.ph) #9
  br label %err_rtc

if.end13:                                         ; preds = %if.end.i
  %mul.i.i = shl i32 %69, 1
  call void @usleep_range_state(i32 noundef %69, i32 noundef %mul.i.i, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #6
  %call15 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  %call17 = call ptr @devm_rtc_device_register(ptr noundef %dev, ptr noundef %1, ptr noundef nonnull @max77686_rtc_ops, ptr noundef null) #6
  %rtc_dev = getelementptr inbounds %struct.max77686_rtc_info, ptr %call.i, i32 0, i32 2
  %78 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call17, ptr %rtc_dev, align 4
  %cmp.i89 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i89, label %if.then20, label %if.end30

if.then20:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %call17 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %79) #9
  br label %err_rtc

if.end30:                                         ; preds = %if.end13
  %rtc_irq_data = getelementptr inbounds %struct.max77686_rtc_info, ptr %call.i, i32 0, i32 7
  %80 = ptrtoint ptr %rtc_irq_data to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rtc_irq_data, align 4
  %call31 = call i32 @regmap_irq_get_virq(ptr noundef %81, i32 noundef 1) #6
  %virq = getelementptr inbounds %struct.max77686_rtc_info, ptr %call.i, i32 0, i32 9
  %82 = ptrtoint ptr %virq to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call31, ptr %virq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call31)
  %cmp33 = icmp slt i32 %call31, 1
  br i1 %cmp33, label %if.end30.err_rtc_crit_edge, label %if.end35

if.end30.err_rtc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_rtc

if.end35:                                         ; preds = %if.end30
  %call37 = call i32 @request_threaded_irq(i32 noundef %call31, ptr noundef null, ptr noundef nonnull @max77686_rtc_alarm_irq, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %do.end42, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %virq to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %virq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %84, i32 noundef %call37) #9
  br label %err_rtc

err_rtc:                                          ; preds = %do.end42, %if.end30.err_rtc_crit_edge, %if.then20, %do.end11
  %ret.0 = phi i32 [ %retval.0.i.ph, %do.end11 ], [ %79, %if.then20 ], [ %call37, %do.end42 ], [ -6, %if.end30.err_rtc_crit_edge ]
  %rtc_irq = getelementptr inbounds %struct.max77686_rtc_info, ptr %call.i, i32 0, i32 8
  %85 = ptrtoint ptr %rtc_irq to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rtc_irq, align 4
  %rtc_irq_data46 = getelementptr inbounds %struct.max77686_rtc_info, ptr %call.i, i32 0, i32 7
  %87 = ptrtoint ptr %rtc_irq_data46 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rtc_irq_data46, align 4
  call void @regmap_del_irq_chip(i32 noundef %86, ptr noundef %88) #6
  br label %cleanup

cleanup:                                          ; preds = %err_rtc, %if.end35.cleanup_crit_edge, %max77686_init_rtc_regmap.exit.cleanup_crit_edge, %do.end60.i, %do.end.i, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_rtc ], [ -12, %entry.cleanup_crit_edge ], [ %retval.1.i, %max77686_init_rtc_regmap.exit.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ], [ %call.i83, %if.then.i.cleanup_crit_edge ], [ -19, %do.end.i ], [ %call54.i, %do.end60.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77686_rtc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %virq = getelementptr inbounds %struct.max77686_rtc_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %virq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #6
  %rtc_irq = getelementptr inbounds %struct.max77686_rtc_info, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %rtc_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rtc_irq, align 4
  %rtc_irq_data = getelementptr inbounds %struct.max77686_rtc_info, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %rtc_irq_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtc_irq_data, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %5, ptr noundef %7) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77686_rtc_alarm_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max77686_rtc_alarm_irq.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max77686_rtc_alarm_irq, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !170

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max77686_rtc_alarm_irq.__UNIQUE_ID_ddebug288, ptr noundef %1, ptr noundef nonnull @.str.65, i32 noundef %irq) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rtc_dev = getelementptr inbounds %struct.max77686_rtc_info, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtc_dev, align 4
  tail call void @rtc_update_irq(ptr noundef %3, i32 noundef 1, i32 noundef 160) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_del_irq_chip(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_i2c_new_dummy_device(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_add_irq_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77686_rtc_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %tm) #2 align 64 {
entry:
  %data = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %data) #6
  %2 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 3
  %5 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 4
  %6 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 5
  %7 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 6
  %lock = getelementptr inbounds %struct.max77686_rtc_info, ptr %1, i32 0, i32 3
  %8 = call ptr @memset(ptr %data, i32 255, i32 7)
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %drv_data.i = getelementptr inbounds %struct.max77686_rtc_info, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drv_data.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %rtc_regmap.i = getelementptr inbounds %struct.max77686_rtc_info, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %rtc_regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rtc_regmap.i, align 4
  %map.i = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %10, i32 0, i32 2
  %15 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map.i, align 4
  %arrayidx.i = getelementptr i32, ptr %16, i32 2
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %18, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i, label %max77686_rtc_update.exit.thread, label %if.end

max77686_rtc_update.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.28, i32 noundef %call.i.i, i32 noundef 16) #9
  br label %out

if.end:                                           ; preds = %entry
  %mul.i = shl i32 %12, 1
  tail call void @usleep_range_state(i32 noundef %12, i32 noundef %mul.i, i32 noundef 2) #6
  %21 = ptrtoint ptr %rtc_regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rtc_regmap.i, align 4
  %23 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %drv_data.i, align 4
  %map = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %map, align 4
  %arrayidx = getelementptr i32, ptr %26, i32 4
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %call2 = call i32 @regmap_bulk_read(ptr noundef %22, i32 noundef %28, ptr noundef nonnull %data, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.30, i32 noundef %call2) #9
  br label %out

if.end6:                                          ; preds = %if.end
  %31 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %drv_data.i, align 4
  %mask1.i = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %mask1.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %mask1.i, align 4
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %data, align 1
  %and66.i = and i8 %36, %34
  %and.i = zext i8 %and66.i to i32
  %37 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and.i, ptr %tm, align 4
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %2, align 1
  %and667.i = and i8 %39, %34
  %and6.i = zext i8 %and667.i to i32
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %40 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and6.i, ptr %tm_min.i, align 4
  %rtc_24hr_mode.i = getelementptr inbounds %struct.max77686_rtc_info, ptr %1, i32 0, i32 10
  %41 = ptrtoint ptr %rtc_24hr_mode.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rtc_24hr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i = icmp eq i32 %42, 0
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %3, align 1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %45 = and i8 %44, 31
  %and9.i = zext i8 %45 to i32
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %46 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and9.i, ptr %tm_hour.i, align 4
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end6
  %47 = and i8 %44, 15
  %and12.i = zext i8 %47 to i32
  %tm_hour13.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %48 = ptrtoint ptr %tm_hour13.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and12.i, ptr %tm_hour13.i, align 4
  %49 = and i8 %44, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool17.not.i = icmp eq i8 %49, 0
  br i1 %tobool17.not.i, label %if.else.i.if.end20.i_crit_edge, label %if.then18.i

if.else.i.if.end20.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then18.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add nuw nsw i32 %and12.i, 12
  %50 = ptrtoint ptr %tm_hour13.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add.i, ptr %tm_hour13.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %if.else.i.if.end20.i_crit_edge, %if.then.i
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %4, align 1
  %and2468.i = and i8 %52, %34
  %53 = call i8 @llvm.cttz.i8(i8 %and2468.i, i1 true) #6, !range !171
  %54 = zext i8 %53 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and2468.i)
  %iszero.i = icmp eq i8 %and2468.i, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %54
  %tm_wday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %55 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %sub.i, ptr %tm_wday.i, align 4
  %56 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %7, align 1
  %58 = and i8 %57, 31
  %and27.i = zext i8 %58 to i32
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %59 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and27.i, ptr %tm_mday.i, align 4
  %60 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %5, align 1
  %62 = and i8 %61, 15
  %and30.i = zext i8 %62 to i32
  %sub31.i = add nsw i32 %and30.i, -1
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %63 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub31.i, ptr %tm_mon.i, align 4
  %64 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %6, align 1
  %and3569.i = and i8 %65, %34
  %and35.i = zext i8 %and3569.i to i32
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %66 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %and35.i, ptr %tm_year.i, align 4
  %tm_yday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 7
  %67 = ptrtoint ptr %tm_yday.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %tm_yday.i, align 4
  %tm_isdst.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 8
  %68 = ptrtoint ptr %tm_isdst.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %tm_isdst.i, align 4
  %69 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %drv_data.i, align 4
  %alarm_enable_reg.i = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %alarm_enable_reg.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %alarm_enable_reg.i, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool37.not.i = icmp eq i8 %72, 0
  br i1 %tobool37.not.i, label %if.then38.i, label %if.end20.i.out_crit_edge

if.end20.i.out_crit_edge:                         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then38.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  %add40.i = add nuw nsw i32 %and35.i, 100
  %73 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add40.i, ptr %tm_year.i, align 4
  br label %out

out:                                              ; preds = %if.then38.i, %if.end20.i.out_crit_edge, %do.end, %max77686_rtc_update.exit.thread
  %ret.0 = phi i32 [ %call2, %do.end ], [ %call.i.i, %max77686_rtc_update.exit.thread ], [ %call2, %if.end20.i.out_crit_edge ], [ %call2, %if.then38.i ]
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %data) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77686_rtc_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %data = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %data) #6
  %2 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 3
  %5 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 4
  %6 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 5
  %7 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 6
  %8 = getelementptr inbounds i8, ptr %data, i32 5
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1
  %10 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm, align 4
  %conv.i = trunc i32 %11 to i8
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %data, align 1
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %13 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_min.i, align 4
  %conv1.i = trunc i32 %14 to i8
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv1.i, ptr %2, align 1
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %16 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_hour.i, align 4
  %conv3.i = trunc i32 %17 to i8
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv3.i, ptr %3, align 1
  %tm_wday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %19 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_wday.i, align 4
  %shl.i = shl nuw i32 1, %20
  %conv5.i = trunc i32 %shl.i to i8
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv5.i, ptr %4, align 1
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %22 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_mday.i, align 4
  %conv7.i = trunc i32 %23 to i8
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv7.i, ptr %7, align 1
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %25 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_mon.i, align 4
  %27 = trunc i32 %26 to i8
  %conv9.i = add i8 %27, 1
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv9.i, ptr %5, align 1
  %drv_data.i = getelementptr inbounds %struct.max77686_rtc_info, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %drv_data.i, align 4
  %alarm_enable_reg.i = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %alarm_enable_reg.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %alarm_enable_reg.i, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i = icmp eq i8 %32, 0
  %tm_year13.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %33 = ptrtoint ptr %tm_year13.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tm_year13.i, align 4
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv11.i = trunc i32 %34 to i8
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv11.i, ptr %6, align 1
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %34)
  %cmp.i = icmp sgt i32 %34, 100
  %36 = trunc i32 %34 to i8
  %phi.cast.i = add i8 %36, -100
  %cond.i = select i1 %cmp.i, i8 %phi.cast.i, i8 0
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %cond.i, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %34)
  %cmp19.i = icmp slt i32 %34, 100
  br i1 %cmp19.i, label %max77686_rtc_tm_to_data.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

max77686_rtc_tm_to_data.exit:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %add23.i = add nsw i32 %34, 1900
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.34, i32 noundef %add23.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %if.then.i
  %lock = getelementptr inbounds %struct.max77686_rtc_info, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %rtc_regmap = getelementptr inbounds %struct.max77686_rtc_info, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %rtc_regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rtc_regmap, align 4
  %42 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %drv_data.i, align 4
  %map = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %map, align 4
  %arrayidx = getelementptr i32, ptr %45, i32 4
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx, align 4
  %call3 = call i32 @regmap_bulk_write(ptr noundef %41, i32 noundef %47, ptr noundef nonnull %data, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.32, i32 noundef %call3) #9
  br label %out

if.end7:                                          ; preds = %if.end
  %50 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %drv_data.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %54 = ptrtoint ptr %rtc_regmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rtc_regmap, align 4
  %map.i = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %51, i32 0, i32 2
  %56 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %map.i, align 4
  %arrayidx.i = getelementptr i32, ptr %57, i32 2
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef %59, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i, label %do.end.i23, label %if.else5.i

do.end.i23:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.28, i32 noundef %call.i.i, i32 noundef 1) #9
  br label %out

if.else5.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = shl i32 %53, 1
  call void @usleep_range_state(i32 noundef %53, i32 noundef %mul.i, i32 noundef 2) #6
  br label %out

out:                                              ; preds = %if.else5.i, %do.end.i23, %do.end
  %ret.0 = phi i32 [ %call3, %do.end ], [ %call.i.i, %do.end.i23 ], [ %call.i.i, %if.else5.i ]
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %max77686_rtc_tm_to_data.exit
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %max77686_rtc_tm_to_data.exit ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77686_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %alrm) #2 align 64 {
entry:
  %data = alloca [7 x i8], align 1
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %data) #6
  %2 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 3
  %5 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 4
  %6 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 5
  %7 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 6
  %8 = call ptr @memset(ptr %data, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val, align 4, !annotation !172
  %drv_data = getelementptr inbounds %struct.max77686_rtc_info, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drv_data, align 4
  %map1 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %map1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map1, align 4
  %lock = getelementptr inbounds %struct.max77686_rtc_info, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %14 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %drv_data, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %rtc_regmap.i = getelementptr inbounds %struct.max77686_rtc_info, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %rtc_regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rtc_regmap.i, align 4
  %map.i = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %15, i32 0, i32 2
  %20 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map.i, align 4
  %arrayidx.i = getelementptr i32, ptr %21, i32 2
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %23, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i, label %max77686_rtc_update.exit.thread, label %if.end

max77686_rtc_update.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.28, i32 noundef %call.i.i, i32 noundef 16) #9
  br label %out

if.end:                                           ; preds = %entry
  %mul.i = shl i32 %17, 1
  tail call void @usleep_range_state(i32 noundef %17, i32 noundef %mul.i, i32 noundef 2) #6
  %26 = ptrtoint ptr %rtc_regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rtc_regmap.i, align 4
  %arrayidx = getelementptr i32, ptr %13, i32 11
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %call3 = call i32 @regmap_bulk_read(ptr noundef %27, i32 noundef %29, ptr noundef nonnull %data, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.36, i32 noundef %call3) #9
  br label %out

if.end7:                                          ; preds = %if.end
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %32 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %drv_data, align 4
  %mask1.i = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %mask1.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %mask1.i, align 4
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %data, align 1
  %and66.i = and i8 %37, %35
  %and.i = zext i8 %and66.i to i32
  %38 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and.i, ptr %time, align 4
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %2, align 1
  %and667.i = and i8 %40, %35
  %and6.i = zext i8 %and667.i to i32
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and6.i, ptr %tm_min.i, align 4
  %rtc_24hr_mode.i = getelementptr inbounds %struct.max77686_rtc_info, ptr %1, i32 0, i32 10
  %42 = ptrtoint ptr %rtc_24hr_mode.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rtc_24hr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i = icmp eq i32 %43, 0
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %3, align 1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %46 = and i8 %45, 31
  %and9.i = zext i8 %46 to i32
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %47 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and9.i, ptr %tm_hour.i, align 4
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end7
  %48 = and i8 %45, 15
  %and12.i = zext i8 %48 to i32
  %tm_hour13.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %49 = ptrtoint ptr %tm_hour13.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and12.i, ptr %tm_hour13.i, align 4
  %50 = and i8 %45, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool17.not.i = icmp eq i8 %50, 0
  br i1 %tobool17.not.i, label %if.else.i.if.end20.i_crit_edge, label %if.then18.i

if.else.i.if.end20.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then18.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add nuw nsw i32 %and12.i, 12
  %51 = ptrtoint ptr %tm_hour13.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add.i, ptr %tm_hour13.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %if.else.i.if.end20.i_crit_edge, %if.then.i
  %52 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %4, align 1
  %and2468.i = and i8 %53, %35
  %54 = call i8 @llvm.cttz.i8(i8 %and2468.i, i1 true) #6, !range !171
  %55 = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and2468.i)
  %iszero.i = icmp eq i8 %and2468.i, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %55
  %tm_wday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 6
  %56 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub.i, ptr %tm_wday.i, align 4
  %57 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %7, align 1
  %59 = and i8 %58, 31
  %and27.i = zext i8 %59 to i32
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %60 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %and27.i, ptr %tm_mday.i, align 4
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %5, align 1
  %63 = and i8 %62, 15
  %and30.i = zext i8 %63 to i32
  %sub31.i = add nsw i32 %and30.i, -1
  %tm_mon.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %64 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %sub31.i, ptr %tm_mon.i, align 4
  %65 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %6, align 1
  %and3569.i = and i8 %66, %35
  %and35.i = zext i8 %and3569.i to i32
  %tm_year.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %67 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %and35.i, ptr %tm_year.i, align 4
  %tm_yday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 7
  %68 = ptrtoint ptr %tm_yday.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %tm_yday.i, align 4
  %tm_isdst.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 8
  %69 = ptrtoint ptr %tm_isdst.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %tm_isdst.i, align 4
  %70 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %drv_data, align 4
  %alarm_enable_reg.i = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %alarm_enable_reg.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %alarm_enable_reg.i, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool37.not.i = icmp eq i8 %73, 0
  br i1 %tobool37.not.i, label %if.then38.i, label %if.end20.i.max77686_rtc_data_to_tm.exit_crit_edge

if.end20.i.max77686_rtc_data_to_tm.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max77686_rtc_data_to_tm.exit

if.then38.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  %add40.i = add nuw nsw i32 %and35.i, 100
  %74 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add40.i, ptr %tm_year.i, align 4
  br label %max77686_rtc_data_to_tm.exit

max77686_rtc_data_to_tm.exit:                     ; preds = %if.then38.i, %if.end20.i.max77686_rtc_data_to_tm.exit_crit_edge
  %75 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %alrm, align 4
  %76 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %drv_data, align 4
  %alarm_enable_reg = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %alarm_enable_reg to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %alarm_enable_reg, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not = icmp eq i8 %79, 0
  br i1 %tobool.not, label %for.body.preheader, label %if.then10

for.body.preheader:                               ; preds = %max77686_rtc_data_to_tm.exit
  %80 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %81)
  %tobool35.not = icmp sgt i8 %81, -1
  br i1 %tobool35.not, label %for.cond, label %for.body.preheader.if.end39.sink.split_crit_edge

for.body.preheader.if.end39.sink.split_crit_edge: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.sink.split

if.then10:                                        ; preds = %max77686_rtc_data_to_tm.exit
  %arrayidx11 = getelementptr i32, ptr %13, i32 25
  %82 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %83)
  %cmp12 = icmp eq i32 %83, -559038737
  br i1 %cmp12, label %if.then13, label %if.end18

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.39, i32 noundef -22) #9
  br label %out

if.end18:                                         ; preds = %if.then10
  %86 = ptrtoint ptr %rtc_regmap.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rtc_regmap.i, align 4
  %call21 = call i32 @regmap_read(ptr noundef %87, i32 noundef %83, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.end26, label %if.end28

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.42, i32 noundef %call21) #9
  br label %out

if.end28:                                         ; preds = %if.end18
  %90 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool29.not = icmp eq i32 %91, 0
  br i1 %tobool29.not, label %if.end28.if.end39_crit_edge, label %if.end28.if.end39.sink.split_crit_edge

if.end28.if.end39.sink.split_crit_edge:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.sink.split

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

for.cond:                                         ; preds = %for.body.preheader
  %92 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %93)
  %tobool35.not.1 = icmp sgt i8 %93, -1
  br i1 %tobool35.not.1, label %for.cond.1, label %for.cond.if.end39.sink.split_crit_edge

for.cond.if.end39.sink.split_crit_edge:           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.sink.split

for.cond.1:                                       ; preds = %for.cond
  %94 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %95)
  %tobool35.not.2 = icmp sgt i8 %95, -1
  br i1 %tobool35.not.2, label %for.cond.2, label %for.cond.1.if.end39.sink.split_crit_edge

for.cond.1.if.end39.sink.split_crit_edge:         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.sink.split

for.cond.2:                                       ; preds = %for.cond.1
  %96 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %97)
  %tobool35.not.3 = icmp sgt i8 %97, -1
  br i1 %tobool35.not.3, label %for.cond.3, label %for.cond.2.if.end39.sink.split_crit_edge

for.cond.2.if.end39.sink.split_crit_edge:         ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.sink.split

for.cond.3:                                       ; preds = %for.cond.2
  %98 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %99)
  %tobool35.not.4 = icmp sgt i8 %99, -1
  br i1 %tobool35.not.4, label %for.cond.4, label %for.cond.3.if.end39.sink.split_crit_edge

for.cond.3.if.end39.sink.split_crit_edge:         ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.sink.split

for.cond.4:                                       ; preds = %for.cond.3
  %100 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %101)
  %tobool35.not.5 = icmp sgt i8 %101, -1
  br i1 %tobool35.not.5, label %for.cond.5, label %for.cond.4.if.end39.sink.split_crit_edge

for.cond.4.if.end39.sink.split_crit_edge:         ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.sink.split

for.cond.5:                                       ; preds = %for.cond.4
  %102 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %103)
  %tobool35.not.6 = icmp sgt i8 %103, -1
  br i1 %tobool35.not.6, label %for.cond.5.if.end39_crit_edge, label %for.cond.5.if.end39.sink.split_crit_edge

for.cond.5.if.end39.sink.split_crit_edge:         ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.sink.split

for.cond.5.if.end39_crit_edge:                    ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.end39.sink.split:                              ; preds = %for.cond.5.if.end39.sink.split_crit_edge, %for.cond.4.if.end39.sink.split_crit_edge, %for.cond.3.if.end39.sink.split_crit_edge, %for.cond.2.if.end39.sink.split_crit_edge, %for.cond.1.if.end39.sink.split_crit_edge, %for.cond.if.end39.sink.split_crit_edge, %if.end28.if.end39.sink.split_crit_edge, %for.body.preheader.if.end39.sink.split_crit_edge
  %ret.0.ph = phi i32 [ %call21, %if.end28.if.end39.sink.split_crit_edge ], [ %call3, %for.cond.5.if.end39.sink.split_crit_edge ], [ %call3, %for.cond.4.if.end39.sink.split_crit_edge ], [ %call3, %for.cond.3.if.end39.sink.split_crit_edge ], [ %call3, %for.cond.2.if.end39.sink.split_crit_edge ], [ %call3, %for.cond.1.if.end39.sink.split_crit_edge ], [ %call3, %for.cond.if.end39.sink.split_crit_edge ], [ %call3, %for.body.preheader.if.end39.sink.split_crit_edge ]
  %104 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %alrm, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end39.sink.split, %for.cond.5.if.end39_crit_edge, %if.end28.if.end39_crit_edge
  %ret.0 = phi i32 [ %call21, %if.end28.if.end39_crit_edge ], [ %call3, %for.cond.5.if.end39_crit_edge ], [ %ret.0.ph, %if.end39.sink.split ]
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 1
  %105 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %pending, align 1
  %106 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %drv_data, align 4
  %alarm_pending_status_reg = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %107, i32 0, i32 6
  %108 = ptrtoint ptr %alarm_pending_status_reg to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %alarm_pending_status_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %109)
  %cmp41 = icmp eq i32 %109, -1
  br i1 %cmp41, label %if.end39.out_crit_edge, label %if.end44

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end44:                                         ; preds = %if.end39
  %regmap = getelementptr inbounds %struct.max77686_rtc_info, ptr %1, i32 0, i32 4
  %110 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regmap, align 4
  %call47 = call i32 @regmap_read(ptr noundef %111, i32 noundef %109, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %do.end53, label %if.end55

do.end53:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.45, i32 noundef %call47) #9
  br label %out

if.end55:                                         ; preds = %if.end44
  %114 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %val, align 4
  %and56 = and i32 %115, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end55.out_crit_edge, label %if.then58

if.end55.out_crit_edge:                           ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %116 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %pending, align 1
  br label %out

out:                                              ; preds = %if.then58, %if.end55.out_crit_edge, %do.end53, %if.end39.out_crit_edge, %do.end26, %if.then13, %do.end, %max77686_rtc_update.exit.thread
  %ret.1 = phi i32 [ %call3, %do.end ], [ -22, %if.then13 ], [ %call21, %do.end26 ], [ %ret.0, %if.end39.out_crit_edge ], [ %call47, %do.end53 ], [ %call47, %if.then58 ], [ %call47, %if.end55.out_crit_edge ], [ %call.i.i, %max77686_rtc_update.exit.thread ]
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %data) #6
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77686_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %alrm) #2 align 64 {
entry:
  %data = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %data) #6
  %2 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 3
  %5 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 4
  %6 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 5
  %7 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 6
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %8 = getelementptr inbounds i8, ptr %data, i32 5
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1
  %10 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %time, align 4
  %conv.i = trunc i32 %11 to i8
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %data, align 1
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_min.i, align 4
  %conv1.i = trunc i32 %14 to i8
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv1.i, ptr %2, align 1
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_hour.i, align 4
  %conv3.i = trunc i32 %17 to i8
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv3.i, ptr %3, align 1
  %tm_wday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 6
  %19 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_wday.i, align 4
  %shl.i = shl nuw i32 1, %20
  %conv5.i = trunc i32 %shl.i to i8
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv5.i, ptr %4, align 1
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_mday.i, align 4
  %conv7.i = trunc i32 %23 to i8
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv7.i, ptr %7, align 1
  %tm_mon.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_mon.i, align 4
  %27 = trunc i32 %26 to i8
  %conv9.i = add i8 %27, 1
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv9.i, ptr %5, align 1
  %drv_data.i = getelementptr inbounds %struct.max77686_rtc_info, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %drv_data.i, align 4
  %alarm_enable_reg.i = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %alarm_enable_reg.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %alarm_enable_reg.i, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i = icmp eq i8 %32, 0
  %tm_year13.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %33 = ptrtoint ptr %tm_year13.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tm_year13.i, align 4
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv11.i = trunc i32 %34 to i8
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv11.i, ptr %6, align 1
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %34)
  %cmp.i = icmp sgt i32 %34, 100
  %36 = trunc i32 %34 to i8
  %phi.cast.i = add i8 %36, -100
  %cond.i = select i1 %cmp.i, i8 %phi.cast.i, i8 0
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %cond.i, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %34)
  %cmp19.i = icmp slt i32 %34, 100
  br i1 %cmp19.i, label %max77686_rtc_tm_to_data.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

max77686_rtc_tm_to_data.exit:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %add23.i = add nsw i32 %34, 1900
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.34, i32 noundef %add23.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %if.then.i
  %lock = getelementptr inbounds %struct.max77686_rtc_info, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %call2 = tail call fastcc i32 @max77686_rtc_stop_alarm(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end5:                                          ; preds = %if.end
  %rtc_regmap = getelementptr inbounds %struct.max77686_rtc_info, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %rtc_regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rtc_regmap, align 4
  %42 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %drv_data.i, align 4
  %map = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %map, align 4
  %arrayidx = getelementptr i32, ptr %45, i32 11
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx, align 4
  %call7 = call i32 @regmap_bulk_write(ptr noundef %41, i32 noundef %47, ptr noundef nonnull %data, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.47, i32 noundef %call7) #9
  br label %out

if.end11:                                         ; preds = %if.end5
  %50 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %drv_data.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %54 = ptrtoint ptr %rtc_regmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rtc_regmap, align 4
  %map.i = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %51, i32 0, i32 2
  %56 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %map.i, align 4
  %arrayidx.i = getelementptr i32, ptr %57, i32 2
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef %59, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i, label %max77686_rtc_update.exit.thread, label %if.end15

max77686_rtc_update.exit.thread:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.28, i32 noundef %call.i.i, i32 noundef 1) #9
  br label %out

if.end15:                                         ; preds = %if.end11
  %mul.i = shl i32 %53, 1
  call void @usleep_range_state(i32 noundef %53, i32 noundef %mul.i, i32 noundef 2) #6
  %62 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not = icmp eq i8 %63, 0
  br i1 %tobool.not, label %if.end15.out_crit_edge, label %if.then16

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then16:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = call fastcc i32 @max77686_rtc_start_alarm(ptr noundef %1)
  br label %out

out:                                              ; preds = %if.then16, %if.end15.out_crit_edge, %max77686_rtc_update.exit.thread, %do.end, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.out_crit_edge ], [ %call7, %do.end ], [ %call17, %if.then16 ], [ %call.i.i, %if.end15.out_crit_edge ], [ %call.i.i, %max77686_rtc_update.exit.thread ]
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %max77686_rtc_tm_to_data.exit
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %max77686_rtc_tm_to_data.exit ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77686_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.max77686_rtc_info, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @max77686_rtc_start_alarm(ptr noundef %1)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call fastcc i32 @max77686_rtc_stop_alarm(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.else ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max77686_rtc_stop_alarm(ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  %data = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %data) #6
  %0 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 3
  %3 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 4
  %4 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 5
  %5 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 6
  %drv_data = getelementptr inbounds %struct.max77686_rtc_info, ptr %info, i32 0, i32 6
  %6 = call ptr @memset(ptr %data, i32 255, i32 7)
  %7 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drv_data, align 4
  %map1 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %map1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map1, align 4
  %lock = getelementptr inbounds %struct.max77686_rtc_info, ptr %info, i32 0, i32 3
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #6
  br i1 %call, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drv_data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %rtc_regmap.i = getelementptr inbounds %struct.max77686_rtc_info, ptr %info, i32 0, i32 5
  %17 = ptrtoint ptr %rtc_regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rtc_regmap.i, align 4
  %map.i = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %14, i32 0, i32 2
  %19 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map.i, align 4
  %arrayidx.i = getelementptr i32, ptr %20, i32 2
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %22, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i, label %max77686_rtc_update.exit.thread, label %if.end4

max77686_rtc_update.exit.thread:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.28, i32 noundef %call.i.i, i32 noundef 16) #9
  br label %out

if.end4:                                          ; preds = %if.end
  %mul.i = shl i32 %16, 1
  tail call void @usleep_range_state(i32 noundef %16, i32 noundef %mul.i, i32 noundef 2) #6
  %25 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %drv_data, align 4
  %alarm_enable_reg = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %alarm_enable_reg to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %alarm_enable_reg, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  %arrayidx = getelementptr i32, ptr %10, i32 25
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %30)
  %cmp7 = icmp eq i32 %30, -559038737
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.39, i32 noundef -22) #9
  br label %out

if.end13:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %rtc_regmap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rtc_regmap.i, align 4
  %call15 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef %30, i32 noundef 0) #6
  br label %if.end34

if.else:                                          ; preds = %if.end4
  %35 = ptrtoint ptr %rtc_regmap.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rtc_regmap.i, align 4
  %arrayidx17 = getelementptr i32, ptr %10, i32 11
  %37 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx17, align 4
  %call18 = call i32 @regmap_bulk_read(ptr noundef %36, i32 noundef %38, ptr noundef nonnull %data, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %do.end23, label %for.body.preheader

for.body.preheader:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %data, align 1
  %41 = and i8 %40, 127
  store i8 %41, ptr %data, align 1
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %0, align 1
  %44 = and i8 %43, 127
  store i8 %44, ptr %0, align 1
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %1, align 1
  %47 = and i8 %46, 127
  store i8 %47, ptr %1, align 1
  %48 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %2, align 1
  %50 = and i8 %49, 127
  store i8 %50, ptr %2, align 1
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %3, align 1
  %53 = and i8 %52, 127
  store i8 %53, ptr %3, align 1
  %54 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %4, align 1
  %56 = and i8 %55, 127
  store i8 %56, ptr %4, align 1
  %57 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %5, align 1
  %59 = and i8 %58, 127
  store i8 %59, ptr %5, align 1
  %60 = ptrtoint ptr %rtc_regmap.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rtc_regmap.i, align 4
  %62 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx17, align 4
  %call33 = call i32 @regmap_bulk_write(ptr noundef %61, i32 noundef %63, ptr noundef nonnull %data, i32 noundef 7) #6
  br label %if.end34

do.end23:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.36, i32 noundef %call18) #9
  br label %out

if.end34:                                         ; preds = %for.body.preheader, %if.end13
  %ret.0 = phi i32 [ %call15, %if.end13 ], [ %call33, %for.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp35 = icmp slt i32 %ret.0, 0
  br i1 %cmp35, label %do.end40, label %if.end42

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.47, i32 noundef %ret.0) #9
  br label %out

if.end42:                                         ; preds = %if.end34
  %68 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %drv_data, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  %72 = ptrtoint ptr %rtc_regmap.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rtc_regmap.i, align 4
  %map.i70 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %69, i32 0, i32 2
  %74 = ptrtoint ptr %map.i70 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %map.i70, align 4
  %arrayidx.i71 = getelementptr i32, ptr %75, i32 2
  %76 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i71, align 4
  %call.i.i72 = call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef %77, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i72)
  %cmp3.i73 = icmp slt i32 %call.i.i72, 0
  br i1 %cmp3.i73, label %do.end.i74, label %if.else5.i76

do.end.i74:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.28, i32 noundef %call.i.i72, i32 noundef 1) #9
  br label %out

if.else5.i76:                                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i75 = shl i32 %71, 1
  call void @usleep_range_state(i32 noundef %71, i32 noundef %mul.i75, i32 noundef 2) #6
  br label %out

out:                                              ; preds = %if.else5.i76, %do.end.i74, %do.end40, %do.end23, %if.then8, %max77686_rtc_update.exit.thread
  %ret.1 = phi i32 [ -22, %if.then8 ], [ %ret.0, %do.end40 ], [ %call18, %do.end23 ], [ %call.i.i, %max77686_rtc_update.exit.thread ], [ %call.i.i72, %do.end.i74 ], [ %call.i.i72, %if.else5.i76 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %data) #6
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max77686_rtc_start_alarm(ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  %data = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %data) #6
  %0 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 3
  %3 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 4
  %4 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 5
  %5 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 6
  %drv_data = getelementptr inbounds %struct.max77686_rtc_info, ptr %info, i32 0, i32 6
  %6 = call ptr @memset(ptr %data, i32 255, i32 7)
  %7 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drv_data, align 4
  %map1 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %map1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map1, align 4
  %lock = getelementptr inbounds %struct.max77686_rtc_info, ptr %info, i32 0, i32 3
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #6
  br i1 %call, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.58) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drv_data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %rtc_regmap.i = getelementptr inbounds %struct.max77686_rtc_info, ptr %info, i32 0, i32 5
  %17 = ptrtoint ptr %rtc_regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rtc_regmap.i, align 4
  %map.i = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %14, i32 0, i32 2
  %19 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map.i, align 4
  %arrayidx.i = getelementptr i32, ptr %20, i32 2
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %22, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i, label %max77686_rtc_update.exit.thread, label %if.end4

max77686_rtc_update.exit.thread:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.28, i32 noundef %call.i.i, i32 noundef 16) #9
  br label %out

if.end4:                                          ; preds = %if.end
  %mul.i = shl i32 %16, 1
  tail call void @usleep_range_state(i32 noundef %16, i32 noundef %mul.i, i32 noundef 2) #6
  %25 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %drv_data, align 4
  %alarm_enable_reg = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %alarm_enable_reg to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %alarm_enable_reg, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  %29 = ptrtoint ptr %rtc_regmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rtc_regmap.i, align 4
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr i32, ptr %10, i32 25
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef %32, i32 noundef 119) #6
  br label %if.end68

if.else:                                          ; preds = %if.end4
  %arrayidx9 = getelementptr i32, ptr %10, i32 11
  %33 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx9, align 4
  %call10 = call i32 @regmap_bulk_read(ptr noundef %30, i32 noundef %34, ptr noundef nonnull %data, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end15, label %if.end17

do.end15:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.36, i32 noundef %call10) #9
  br label %out

if.end17:                                         ; preds = %if.else
  %37 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %drv_data, align 4
  %mask1.i = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %data, align 1
  %41 = or i8 %40, -128
  store i8 %41, ptr %data, align 1
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %0, align 1
  %44 = or i8 %43, -128
  store i8 %44, ptr %0, align 1
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %1, align 1
  %47 = or i8 %46, -128
  store i8 %47, ptr %1, align 1
  %48 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %2, align 1
  %50 = and i8 %49, 127
  store i8 %50, ptr %2, align 1
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %3, align 1
  %53 = and i8 %52, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool35.not = icmp eq i8 %53, 0
  br i1 %tobool35.not, label %if.end17.if.end41_crit_edge, label %if.then36

if.end17.if.end41_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then36:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %or39 = or i8 %52, -128
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %or39, ptr %3, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %if.end17.if.end41_crit_edge
  %55 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %4, align 1
  %57 = ptrtoint ptr %mask1.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %mask1.i, align 4
  %and4697 = and i8 %58, %56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and4697)
  %tobool47.not = icmp eq i8 %and4697, 0
  br i1 %tobool47.not, label %if.end41.if.end53_crit_edge, label %if.then48

if.end41.if.end53_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then48:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %59 = or i8 %56, -128
  %60 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %4, align 1
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %if.end41.if.end53_crit_edge
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %5, align 1
  %63 = and i8 %62, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool57.not = icmp eq i8 %63, 0
  br i1 %tobool57.not, label %if.end53.if.end63_crit_edge, label %if.then58

if.end53.if.end63_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %or61 = or i8 %62, -128
  %64 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %or61, ptr %5, align 1
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %if.end53.if.end63_crit_edge
  %65 = ptrtoint ptr %rtc_regmap.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rtc_regmap.i, align 4
  %67 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx9, align 4
  %call67 = call i32 @regmap_bulk_write(ptr noundef %66, i32 noundef %68, ptr noundef nonnull %data, i32 noundef 7) #6
  br label %if.end68

if.end68:                                         ; preds = %if.end63, %if.then6
  %ret.0 = phi i32 [ %call7, %if.then6 ], [ %call67, %if.end63 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp69 = icmp slt i32 %ret.0, 0
  br i1 %cmp69, label %do.end74, label %if.end76

do.end74:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.47, i32 noundef %ret.0) #9
  br label %out

if.end76:                                         ; preds = %if.end68
  %71 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %drv_data, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %75 = ptrtoint ptr %rtc_regmap.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rtc_regmap.i, align 4
  %map.i101 = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %72, i32 0, i32 2
  %77 = ptrtoint ptr %map.i101 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %map.i101, align 4
  %arrayidx.i102 = getelementptr i32, ptr %78, i32 2
  %79 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i102, align 4
  %call.i.i103 = call i32 @regmap_update_bits_base(ptr noundef %76, i32 noundef %80, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i103)
  %cmp3.i104 = icmp slt i32 %call.i.i103, 0
  br i1 %cmp3.i104, label %do.end.i105, label %if.else5.i107

do.end.i105:                                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.28, i32 noundef %call.i.i103, i32 noundef 1) #9
  br label %out

if.else5.i107:                                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i106 = shl i32 %74, 1
  call void @usleep_range_state(i32 noundef %74, i32 noundef %mul.i106, i32 noundef 2) #6
  br label %out

out:                                              ; preds = %if.else5.i107, %do.end.i105, %do.end74, %do.end15, %max77686_rtc_update.exit.thread
  %ret.1 = phi i32 [ %ret.0, %do.end74 ], [ %call10, %do.end15 ], [ %call.i.i, %max77686_rtc_update.exit.thread ], [ %call.i.i103, %do.end.i105 ], [ %call.i.i103, %if.else5.i107 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %data) #6
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77686_rtc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %virq = getelementptr inbounds %struct.max77686_rtc_info, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %virq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %virq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.then ], [ 0, %device_may_wakeup.exit.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %drv_data = getelementptr inbounds %struct.max77686_rtc_info, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drv_data, align 4
  %rtc_irq_from_platform = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %rtc_irq_from_platform to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rtc_irq_from_platform, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %rtc_irq = getelementptr inbounds %struct.max77686_rtc_info, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %rtc_irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rtc_irq, align 4
  tail call void @disable_irq(i32 noundef %12) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77686_rtc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drv_data = getelementptr inbounds %struct.max77686_rtc_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 4
  %rtc_irq_from_platform = getelementptr inbounds %struct.max77686_rtc_driver_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %rtc_irq_from_platform to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rtc_irq_from_platform, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rtc_irq = getelementptr inbounds %struct.max77686_rtc_info, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %rtc_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rtc_irq, align 4
  tail call void @enable_irq(i32 noundef %7) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %device_may_wakeup.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

device_may_wakeup.exit:                           ; preds = %if.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %9 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %10, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.cleanup_crit_edge, label %if.then2

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i, align 4
  %virq = getelementptr inbounds %struct.max77686_rtc_info, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %virq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %virq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %device_may_wakeup.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then2 ], [ 0, %device_may_wakeup.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !123, !125, !126, !128, !129, !131, !132, !133, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158}
!llvm.module.flags = !{!160, !161, !162, !163, !164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = !{ptr @__initcall__kmod_rtc_max77686__289_869_max77686_rtc_driver_init6, !1, !"__initcall__kmod_rtc_max77686__289_869_max77686_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-max77686.c", i32 869, i32 1}
!2 = !{ptr @__exitcall_max77686_rtc_driver_exit, !1, !"__exitcall_max77686_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description290, !4, !"__UNIQUE_ID_description290", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-max77686.c", i32 871, i32 1}
!5 = !{ptr @__UNIQUE_ID_author291, !6, !"__UNIQUE_ID_author291", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-max77686.c", i32 872, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-max77686.c", i32 873, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-max77686.c", i32 861, i32 11}
!12 = !{ptr @max77686_rtc_driver, !13, !"max77686_rtc_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-max77686.c", i32 859, i32 31}
!14 = !{ptr @max77686_rtc_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-max77686.c", i32 742, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/rtc/rtc-max77686.c", i32 755, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @max77686_rtc_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @max77686_rtc_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/rtc/rtc-max77686.c", i32 766, i32 3}
!27 = !{ptr @max77686_rtc_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @max77686_rtc_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-max77686.c", i32 780, i32 8}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-max77686.c", i32 782, i32 3}
!33 = !{ptr @max77686_rtc_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @max77686_rtc_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/rtc/rtc-max77686.c", i32 694, i32 3}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @max77686_init_rtc_regmap._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @max77686_init_rtc_regmap._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/rtc/rtc-max77686.c", i32 706, i32 3}
!42 = !{ptr @max77686_init_rtc_regmap._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @max77686_init_rtc_regmap._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @max77686_init_rtc_regmap._key, !45, !"_key", i1 false, i1 false}
!45 = !{!"../drivers/rtc/rtc-max77686.c", i32 710, i32 21}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/rtc/rtc-max77686.c", i32 714, i32 3}
!49 = !{ptr @max77686_init_rtc_regmap._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @max77686_init_rtc_regmap._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/rtc/rtc-max77686.c", i32 724, i32 3}
!53 = !{ptr @max77686_init_rtc_regmap._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @max77686_init_rtc_regmap._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-max77686.c", i32 668, i32 3}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @max77686_rtc_init_reg._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @max77686_rtc_init_reg._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/rtc/rtc-max77686.c", i32 344, i32 3}
!62 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @max77686_rtc_update._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @max77686_rtc_update._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @max77686_rtc_ops, !66, !"max77686_rtc_ops", i1 false, i1 false}
!66 = !{!"../drivers/rtc/rtc-max77686.c", i32 645, i32 35}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/rtc/rtc-max77686.c", i32 370, i32 3}
!69 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @max77686_rtc_read_time._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @max77686_rtc_read_time._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/rtc/rtc-max77686.c", i32 397, i32 3}
!74 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @max77686_rtc_set_time._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @max77686_rtc_set_time._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/rtc/rtc-max77686.c", i32 320, i32 3}
!79 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @max77686_rtc_tm_to_data._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @max77686_rtc_tm_to_data._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/rtc/rtc-max77686.c", i32 425, i32 3}
!84 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @max77686_rtc_read_alarm._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @max77686_rtc_read_alarm._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/rtc/rtc-max77686.c", i32 436, i32 4}
!89 = !{ptr @max77686_rtc_read_alarm._entry.38, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @max77686_rtc_read_alarm._entry_ptr.40, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/rtc/rtc-max77686.c", i32 443, i32 4}
!93 = !{ptr @max77686_rtc_read_alarm._entry.41, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @max77686_rtc_read_alarm._entry_ptr.43, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/rtc/rtc-max77686.c", i32 467, i32 3}
!97 = !{ptr @max77686_rtc_read_alarm._entry.44, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @max77686_rtc_read_alarm._entry_ptr.46, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/rtc/rtc-max77686.c", i32 603, i32 3}
!101 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @max77686_rtc_set_alarm._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @max77686_rtc_set_alarm._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/rtc/rtc-max77686.c", i32 488, i32 3}
!106 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @max77686_rtc_stop_alarm._entry, !105, !"_entry", i1 false, i1 false}
!109 = !{ptr @max77686_rtc_stop_alarm._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @max77686_rtc_stop_alarm._entry.52, !111, !"_entry", i1 false, i1 false}
!111 = !{!"../drivers/rtc/rtc-max77686.c", i32 497, i32 4}
!112 = !{ptr @max77686_rtc_stop_alarm._entry_ptr.53, !111, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @max77686_rtc_stop_alarm._entry.54, !114, !"_entry", i1 false, i1 false}
!114 = !{!"../drivers/rtc/rtc-max77686.c", i32 507, i32 4}
!115 = !{ptr @max77686_rtc_stop_alarm._entry_ptr.55, !114, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @max77686_rtc_stop_alarm._entry.56, !117, !"_entry", i1 false, i1 false}
!117 = !{!"../drivers/rtc/rtc-max77686.c", i32 521, i32 3}
!118 = !{ptr @max77686_rtc_stop_alarm._entry_ptr.57, !117, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/rtc/rtc-max77686.c", i32 538, i32 3}
!121 = !{ptr @max77686_rtc_start_alarm._entry, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @max77686_rtc_start_alarm._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @max77686_rtc_start_alarm._entry.59, !124, !"_entry", i1 false, i1 false}
!124 = !{!"../drivers/rtc/rtc-max77686.c", i32 551, i32 4}
!125 = !{ptr @max77686_rtc_start_alarm._entry_ptr.60, !124, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @max77686_rtc_start_alarm._entry.61, !127, !"_entry", i1 false, i1 false}
!127 = !{!"../drivers/rtc/rtc-max77686.c", i32 573, i32 3}
!128 = !{ptr @max77686_rtc_start_alarm._entry_ptr.62, !127, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/rtc/rtc-max77686.c", i32 638, i32 2}
!131 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @max77686_rtc_alarm_irq.__UNIQUE_ID_ddebug288, !130, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!134 = !{ptr @max77686_rtc_pm_ops, !135, !"max77686_rtc_pm_ops", i1 false, i1 false}
!135 = !{!"../drivers/rtc/rtc-max77686.c", i32 848, i32 8}
!136 = !{ptr @rtc_id, !137, !"rtc_id", i1 false, i1 false}
!137 = !{!"../drivers/rtc/rtc-max77686.c", i32 851, i32 40}
!138 = !{ptr @max77686_drv_data, !139, !"max77686_drv_data", i1 false, i1 false}
!139 = !{!"../drivers/rtc/rtc-max77686.c", i32 192, i32 46}
!140 = !{ptr @max77686_map, !141, !"max77686_map", i1 false, i1 false}
!141 = !{!"../drivers/rtc/rtc-max77686.c", i32 139, i32 27}
!142 = !{ptr @max77686_rtc_irq_chip, !143, !"max77686_rtc_irq_chip", i1 false, i1 false}
!143 = !{!"../drivers/rtc/rtc-max77686.c", i32 178, i32 37}
!144 = !{ptr @max77686_rtc_irqs, !145, !"max77686_rtc_irqs", i1 false, i1 false}
!145 = !{!"../drivers/rtc/rtc-max77686.c", i32 168, i32 32}
!146 = !{ptr @max77686_rtc_regmap_config, !147, !"max77686_rtc_regmap_config", i1 false, i1 false}
!147 = !{!"../drivers/rtc/rtc-max77686.c", i32 187, i32 35}
!148 = !{ptr @max77802_drv_data, !149, !"max77802_drv_data", i1 false, i1 false}
!149 = !{!"../drivers/rtc/rtc-max77686.c", i32 260, i32 46}
!150 = !{ptr @max77802_map, !151, !"max77802_map", i1 false, i1 false}
!151 = !{!"../drivers/rtc/rtc-max77686.c", i32 222, i32 27}
!152 = !{ptr @.str.67, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/rtc/rtc-max77686.c", i32 252, i32 11}
!154 = !{ptr @max77802_rtc_irq_chip, !155, !"max77802_rtc_irq_chip", i1 false, i1 false}
!155 = !{!"../drivers/rtc/rtc-max77686.c", i32 251, i32 37}
!156 = !{ptr @max77620_drv_data, !157, !"max77620_drv_data", i1 false, i1 false}
!157 = !{!"../drivers/rtc/rtc-max77686.c", i32 210, i32 46}
!158 = !{ptr @max77620_rtc_regmap_config, !159, !"max77620_rtc_regmap_config", i1 false, i1 false}
!159 = !{!"../drivers/rtc/rtc-max77686.c", i32 204, i32 35}
!160 = !{i32 1, !"wchar_size", i32 2}
!161 = !{i32 1, !"min_enum_size", i32 4}
!162 = !{i32 8, !"branch-target-enforcement", i32 0}
!163 = !{i32 8, !"sign-return-address", i32 0}
!164 = !{i32 8, !"sign-return-address-all", i32 0}
!165 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!166 = !{i32 7, !"uwtable", i32 1}
!167 = !{i32 7, !"frame-pointer", i32 2}
!168 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!169 = !{i8 0, i8 2}
!170 = !{i64 2149007603, i64 2149007608, i64 2149007621, i64 2149007665, i64 2149007699, i64 2149007720}
!171 = !{i8 0, i8 9}
!172 = !{!"auto-init"}
