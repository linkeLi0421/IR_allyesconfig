; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-max8997.c_pt.bc'
source_filename = "../drivers/rtc/rtc-max8997.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.max8997_rtc_info = type { ptr, ptr, ptr, ptr, %struct.mutex, i32, i32 }
%struct.max8997_dev = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, ptr, %struct.mutex, [11 x i32], [11 x i32], [187 x i8], [12 x i8] }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__param_str_wtsr_en = internal constant [20 x i8] c"rtc_max8997.wtsr_en\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@wtsr_en = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_wtsr_en = internal constant %struct.kernel_param { ptr @__param_str_wtsr_en, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @wtsr_en } }, section "__param", align 4
@__UNIQUE_ID_wtsr_entype288 = internal constant [33 x i8] c"rtc_max8997.parmtype=wtsr_en:int\00", section ".modinfo", align 1
@__UNIQUE_ID_wtsr_en289 = internal constant [72 x i8] c"rtc_max8997.parm=wtsr_en:Watchdog Timeout & Software Reset (default=on)\00", section ".modinfo", align 1
@__param_str_smpl_en = internal constant [20 x i8] c"rtc_max8997.smpl_en\00", align 1
@smpl_en = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_smpl_en = internal constant %struct.kernel_param { ptr @__param_str_smpl_en, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @smpl_en } }, section "__param", align 4
@__UNIQUE_ID_smpl_entype290 = internal constant [33 x i8] c"rtc_max8997.parmtype=smpl_en:int\00", section ".modinfo", align 1
@__UNIQUE_ID_smpl_en291 = internal constant [66 x i8] c"rtc_max8997.parm=smpl_en:Sudden Momentary Power Loss (default=on)\00", section ".modinfo", align 1
@__initcall__kmod_rtc_max8997__292_529_max8997_rtc_driver_init6 = internal global ptr @max8997_rtc_driver_init, section ".initcall6.init", align 4
@max8997_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max8997_rtc_probe, ptr null, ptr @max8997_rtc_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rtc_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max8997_rtc_driver_exit = internal global ptr @max8997_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description293 = internal constant [49 x i8] c"rtc_max8997.description=Maxim MAX8997 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [43 x i8] c"rtc_max8997.author=<ms925.kim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [41 x i8] c"rtc_max8997.file=drivers/rtc/rtc-max8997\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [24 x i8] c"rtc_max8997.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max8997-rtc\00", [20 x i8] zeroinitializer }, align 32
@rtc_id = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max8997-rtc\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max8997_rtc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&info->lock\00", [20 x i8] zeroinitializer }, align 32
@max8997_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 469, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialize RTC reg:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max8997_rtc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/rtc/rtc-max8997.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max8997_rtc_probe._entry_ptr = internal global ptr @max8997_rtc_probe._entry, section ".printk_index", align 4
@max8997_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @max8997_rtc_read_time, ptr @max8997_rtc_set_time, ptr @max8997_rtc_read_alarm, ptr @max8997_rtc_set_alarm, ptr null, ptr @max8997_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@max8997_rtc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 483, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register RTC device: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@max8997_rtc_probe._entry_ptr.9 = internal global ptr @max8997_rtc_probe._entry.7, section ".printk_index", align 4
@max8997_rtc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 489, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to create mapping alarm IRQ\0A\00", [60 x i8] zeroinitializer }, align 32
@max8997_rtc_probe._entry_ptr.12 = internal global ptr @max8997_rtc_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-alarm0\00", [21 x i8] zeroinitializer }, align 32
@max8997_rtc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 500, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to request alarm IRQ: %d: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@max8997_rtc_probe._entry_ptr.16 = internal global ptr @max8997_rtc_probe._entry.14, section ".printk_index", align 4
@max8997_rtc_init_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 440, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: fail to write controlm reg(%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max8997_rtc_init_reg\00", [43 x i8] zeroinitializer }, align 32
@max8997_rtc_init_reg._entry_ptr = internal global ptr @max8997_rtc_init_reg._entry, section ".printk_index", align 4
@max8997_rtc_set_update_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 121, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: fail to write update reg(%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"max8997_rtc_set_update_reg\00", [37 x i8] zeroinitializer }, align 32
@max8997_rtc_set_update_reg._entry_ptr = internal global ptr @max8997_rtc_set_update_reg._entry, section ".printk_index", align 4
@max8997_rtc_enable_wtsr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 382, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: %s WTSR\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max8997_rtc_enable_wtsr\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max8997_rtc_enable_wtsr._entry_ptr = internal global ptr @max8997_rtc_enable_wtsr._entry, section ".printk_index", align 4
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@max8997_rtc_enable_wtsr._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.4, i32 387, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: fail to update WTSR reg(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@max8997_rtc_enable_wtsr._entry_ptr.28 = internal global ptr @max8997_rtc_enable_wtsr._entry.26, section ".printk_index", align 4
@max8997_rtc_enable_smpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 410, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: %s SMPL\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max8997_rtc_enable_smpl\00", [40 x i8] zeroinitializer }, align 32
@max8997_rtc_enable_smpl._entry_ptr = internal global ptr @max8997_rtc_enable_smpl._entry, section ".printk_index", align 4
@max8997_rtc_enable_smpl._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.4, i32 415, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: fail to update SMPL reg(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@max8997_rtc_enable_smpl._entry_ptr.33 = internal global ptr @max8997_rtc_enable_smpl._entry.31, section ".printk_index", align 4
@max8997_rtc_enable_smpl._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.4, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016rtc_max8997: WTSR_SMPL(0x%02x)\0A\00", [62 x i8] zeroinitializer }, align 32
@max8997_rtc_enable_smpl._entry_ptr.36 = internal global ptr @max8997_rtc_enable_smpl._entry.34, section ".printk_index", align 4
@max8997_rtc_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 144, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: fail to read time reg(%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max8997_rtc_read_time\00", [42 x i8] zeroinitializer }, align 32
@max8997_rtc_read_time._entry_ptr = internal global ptr @max8997_rtc_read_time._entry, section ".printk_index", align 4
@max8997_rtc_set_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 168, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: fail to write time reg(%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max8997_rtc_set_time\00", [43 x i8] zeroinitializer }, align 32
@max8997_rtc_set_time._entry_ptr = internal global ptr @max8997_rtc_set_time._entry, section ".printk_index", align 4
@max8997_rtc_tm_to_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014rtc_max8997: RTC cannot handle the year %d.  Assume it's 2000.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max8997_rtc_tm_to_data\00", [41 x i8] zeroinitializer }, align 32
@max8997_rtc_tm_to_data._entry_ptr = internal global ptr @max8997_rtc_tm_to_data._entry, section ".printk_index", align 4
@max8997_rtc_read_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 191, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:%d fail to read alarm reg(%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max8997_rtc_read_alarm\00", [41 x i8] zeroinitializer }, align 32
@max8997_rtc_read_alarm._entry_ptr = internal global ptr @max8997_rtc_read_alarm._entry, section ".printk_index", align 4
@max8997_rtc_read_alarm._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.4, i32 209, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%d fail to read status1 reg(%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@max8997_rtc_read_alarm._entry_ptr.47 = internal global ptr @max8997_rtc_read_alarm._entry.45, section ".printk_index", align 4
@max8997_rtc_set_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 304, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: %d-%02d-%02d %02d:%02d:%02d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max8997_rtc_set_alarm\00", [42 x i8] zeroinitializer }, align 32
@max8997_rtc_set_alarm._entry_ptr = internal global ptr @max8997_rtc_set_alarm._entry, section ".printk_index", align 4
@max8997_rtc_set_alarm._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.4, i32 316, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: fail to write alarm reg(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@max8997_rtc_set_alarm._entry_ptr.52 = internal global ptr @max8997_rtc_set_alarm._entry.50, section ".printk_index", align 4
@max8997_rtc_stop_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.4, i32 227, ptr @.str.55, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: should have mutex locked\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max8997_rtc_stop_alarm\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@max8997_rtc_stop_alarm._entry_ptr = internal global ptr @max8997_rtc_stop_alarm._entry, section ".printk_index", align 4
@max8997_rtc_stop_alarm._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.54, ptr @.str.4, i32 233, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: fail to read alarm reg(%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@max8997_rtc_stop_alarm._entry_ptr.58 = internal global ptr @max8997_rtc_stop_alarm._entry.56, section ".printk_index", align 4
@max8997_rtc_stop_alarm._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.54, ptr @.str.4, i32 244, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@max8997_rtc_stop_alarm._entry_ptr.60 = internal global ptr @max8997_rtc_stop_alarm._entry.59, section ".printk_index", align 4
@max8997_rtc_start_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.61, ptr @.str.4, i32 259, ptr @.str.55, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max8997_rtc_start_alarm\00", [40 x i8] zeroinitializer }, align 32
@max8997_rtc_start_alarm._entry_ptr = internal global ptr @max8997_rtc_start_alarm._entry, section ".printk_index", align 4
@max8997_rtc_start_alarm._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.61, ptr @.str.4, i32 265, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@max8997_rtc_start_alarm._entry_ptr.63 = internal global ptr @max8997_rtc_start_alarm._entry.62, section ".printk_index", align 4
@max8997_rtc_start_alarm._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.61, ptr @.str.4, i32 284, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@max8997_rtc_start_alarm._entry_ptr.65 = internal global ptr @max8997_rtc_start_alarm._entry.64, section ".printk_index", align 4
@max8997_rtc_alarm_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.4, i32 351, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s:irq(%d)\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max8997_rtc_alarm_irq\00", [42 x i8] zeroinitializer }, align 32
@max8997_rtc_alarm_irq._entry_ptr = internal global ptr @max8997_rtc_alarm_irq._entry, section ".printk_index", align 4
@___asan_gen_.68 = private unnamed_addr constant [8 x i8] c"wtsr_en\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 21, i32 12 }
@___asan_gen_.71 = private unnamed_addr constant [8 x i8] c"smpl_en\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 25, i32 12 }
@___asan_gen_.74 = private unnamed_addr constant [19 x i8] c"max8997_rtc_driver\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 520, i32 31 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 522, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"rtc_id\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 514, i32 40 }
@___asan_gen_.83 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 459, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 469, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [16 x i8] c"max8997_rtc_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 358, i32 35 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 483, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 489, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 497, i32 5 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 499, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 439, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 120, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 381, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 386, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 409, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 414, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 423, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 143, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 167, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 106, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 190, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 208, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 302, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 315, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 227, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 232, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 243, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 259, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 264, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 283, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.291 = private constant [29 x i8] c"../drivers/rtc/rtc-max8997.c\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 351, i32 2 }
@llvm.compiler.used = appending global [113 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__UNIQUE_ID_smpl_en291, ptr @__UNIQUE_ID_smpl_entype290, ptr @__UNIQUE_ID_wtsr_en289, ptr @__UNIQUE_ID_wtsr_entype288, ptr @__exitcall_max8997_rtc_driver_exit, ptr @__initcall__kmod_rtc_max8997__292_529_max8997_rtc_driver_init6, ptr @__param_smpl_en, ptr @__param_wtsr_en, ptr @max8997_rtc_alarm_irq._entry, ptr @max8997_rtc_alarm_irq._entry_ptr, ptr @max8997_rtc_driver_exit, ptr @max8997_rtc_enable_smpl._entry, ptr @max8997_rtc_enable_smpl._entry.31, ptr @max8997_rtc_enable_smpl._entry.34, ptr @max8997_rtc_enable_smpl._entry_ptr, ptr @max8997_rtc_enable_smpl._entry_ptr.33, ptr @max8997_rtc_enable_smpl._entry_ptr.36, ptr @max8997_rtc_enable_wtsr._entry, ptr @max8997_rtc_enable_wtsr._entry.26, ptr @max8997_rtc_enable_wtsr._entry_ptr, ptr @max8997_rtc_enable_wtsr._entry_ptr.28, ptr @max8997_rtc_init_reg._entry, ptr @max8997_rtc_init_reg._entry_ptr, ptr @max8997_rtc_probe._entry, ptr @max8997_rtc_probe._entry.10, ptr @max8997_rtc_probe._entry.14, ptr @max8997_rtc_probe._entry.7, ptr @max8997_rtc_probe._entry_ptr, ptr @max8997_rtc_probe._entry_ptr.12, ptr @max8997_rtc_probe._entry_ptr.16, ptr @max8997_rtc_probe._entry_ptr.9, ptr @max8997_rtc_read_alarm._entry, ptr @max8997_rtc_read_alarm._entry.45, ptr @max8997_rtc_read_alarm._entry_ptr, ptr @max8997_rtc_read_alarm._entry_ptr.47, ptr @max8997_rtc_read_time._entry, ptr @max8997_rtc_read_time._entry_ptr, ptr @max8997_rtc_set_alarm._entry, ptr @max8997_rtc_set_alarm._entry.50, ptr @max8997_rtc_set_alarm._entry_ptr, ptr @max8997_rtc_set_alarm._entry_ptr.52, ptr @max8997_rtc_set_time._entry, ptr @max8997_rtc_set_time._entry_ptr, ptr @max8997_rtc_set_update_reg._entry, ptr @max8997_rtc_set_update_reg._entry_ptr, ptr @max8997_rtc_start_alarm._entry, ptr @max8997_rtc_start_alarm._entry.62, ptr @max8997_rtc_start_alarm._entry.64, ptr @max8997_rtc_start_alarm._entry_ptr, ptr @max8997_rtc_start_alarm._entry_ptr.63, ptr @max8997_rtc_start_alarm._entry_ptr.65, ptr @max8997_rtc_stop_alarm._entry, ptr @max8997_rtc_stop_alarm._entry.56, ptr @max8997_rtc_stop_alarm._entry.59, ptr @max8997_rtc_stop_alarm._entry_ptr, ptr @max8997_rtc_stop_alarm._entry_ptr.58, ptr @max8997_rtc_stop_alarm._entry_ptr.60, ptr @max8997_rtc_tm_to_data._entry, ptr @max8997_rtc_tm_to_data._entry_ptr, ptr @wtsr_en, ptr @smpl_en, ptr @max8997_rtc_driver, ptr @.str, ptr @rtc_id, ptr @max8997_rtc_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @max8997_rtc_ops, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.61, ptr @.str.66, ptr @.str.67], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wtsr_en to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smpl_en to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_init_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_set_update_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_enable_wtsr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_enable_wtsr._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_enable_smpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_enable_smpl._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_enable_smpl._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_set_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_tm_to_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_read_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_read_alarm._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_set_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_set_alarm._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_stop_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_stop_alarm._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_stop_alarm._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_start_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_start_alarm._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_start_alarm._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_rtc_alarm_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max8997_rtc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max8997_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @max8997_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %data.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 116, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.max8997_rtc_info, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @max8997_rtc_probe.__key) #6
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %call.i, align 4
  %max89975 = getelementptr inbounds %struct.max8997_rtc_info, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %max89975 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %max89975, align 4
  %rtc = getelementptr inbounds %struct.max8997_dev, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtc, align 4
  %rtc6 = getelementptr inbounds %struct.max8997_rtc_info, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %rtc6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %rtc6, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #6
  %10 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %data.i, align 1
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %10, align 1
  %rtc_24hr_mode.i = getelementptr inbounds %struct.max8997_rtc_info, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %rtc_24hr_mode.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %rtc_24hr_mode.i, align 4
  %call.i85 = call i32 @max8997_bulk_write(ptr noundef %7, i8 noundef zeroext 2, i32 noundef 2, ptr noundef nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %cmp.i = icmp slt i32 %call.i85, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i85) #9
  br label %do.end11

if.end.i:                                         ; preds = %do.body
  %16 = ptrtoint ptr %rtc6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rtc6, align 4
  %call.i.i = call i32 @max8997_write_reg(ptr noundef %17, i8 noundef zeroext 4, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end13

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %call.i.i) #9
  br label %do.end11

do.end11:                                         ; preds = %do.end.i.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call.i.i, %do.end.i.i ], [ %call.i85, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end.i
  call void @msleep(i32 noundef 20) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #6
  call fastcc void @max8997_rtc_enable_wtsr(ptr noundef nonnull %call.i, i1 noundef zeroext true)
  call fastcc void @max8997_rtc_enable_smpl(ptr noundef nonnull %call.i, i1 noundef zeroext true)
  %call15 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  %call17 = call ptr @devm_rtc_device_register(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @max8997_rtc_ops, ptr noundef null) #6
  %rtc_dev = getelementptr inbounds %struct.max8997_rtc_info, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call17, ptr %rtc_dev, align 4
  %cmp.i86 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i86, label %if.then20, label %if.end27

if.then20:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %call17 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %21) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end13
  %irq_domain = getelementptr inbounds %struct.max8997_dev, ptr %3, i32 0, i32 11
  %22 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %irq_domain, align 4
  %call.i87 = call i32 @irq_create_mapping_affinity(ptr noundef %23, i32 noundef 21, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool29.not = icmp eq i32 %call.i87, 0
  br i1 %tobool29.not, label %do.end33, label %if.end35

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end35:                                         ; preds = %if.end27
  %virq36 = getelementptr inbounds %struct.max8997_rtc_info, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %virq36 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call.i87, ptr %virq36, align 4
  %call38 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call.i87, ptr noundef null, ptr noundef nonnull @max8997_rtc_alarm_irq, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.end43, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %virq36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %virq36, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %26, i32 noundef %call38) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %if.end35.cleanup_crit_edge, %do.end33, %if.then20, %do.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end11 ], [ %21, %if.then20 ], [ -12, %entry.cleanup_crit_edge ], [ %call38, %do.end43 ], [ %call38, %if.end35.cleanup_crit_edge ], [ -6, %do.end33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max8997_rtc_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @max8997_rtc_enable_wtsr(ptr noundef %1, i1 noundef zeroext false)
  tail call fastcc void @max8997_rtc_enable_smpl(ptr noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max8997_rtc_enable_wtsr(ptr nocapture noundef readonly %info, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @wtsr_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %.str.24..str.25 = select i1 %enable, ptr @.str.24, ptr @.str.25
  %. = select i1 %enable, i8 67, i8 0
  %1 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %.str.24..str.25) #9
  %rtc = getelementptr inbounds %struct.max8997_rtc_info, ptr %info, i32 0, i32 2
  %3 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rtc, align 4
  %call = tail call i32 @max8997_update_reg(ptr noundef %4, i8 noundef zeroext 6, i8 noundef zeroext %., i8 noundef zeroext 67) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.22, i32 noundef %call) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %7 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rtc, align 4
  %call.i = tail call i32 @max8997_write_reg(ptr noundef %8, i8 noundef zeroext 4, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %call.i) #9
  br label %cleanup

if.else.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 20) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %do.end.i, %do.end8, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max8997_rtc_enable_smpl(ptr nocapture noundef readonly %info, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %0 = load i32, ptr @smpl_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %.str.24..str.25 = select i1 %enable, ptr @.str.24, ptr @.str.25
  %. = select i1 %enable, i8 -128, i8 0
  %1 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef nonnull %.str.24..str.25) #9
  %rtc = getelementptr inbounds %struct.max8997_rtc_info, ptr %info, i32 0, i32 2
  %3 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rtc, align 4
  %call = tail call i32 @max8997_update_reg(ptr noundef %4, i8 noundef zeroext 6, i8 noundef zeroext %., i8 noundef zeroext -116) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef %call) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %7 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rtc, align 4
  %call.i = tail call i32 @max8997_write_reg(ptr noundef %8, i8 noundef zeroext 4, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %call.i) #9
  br label %max8997_rtc_set_update_reg.exit

if.else.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 20) #6
  br label %max8997_rtc_set_update_reg.exit

max8997_rtc_set_update_reg.exit:                  ; preds = %if.else.i, %do.end.i
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %val, align 1
  %12 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rtc, align 4
  %call13 = call i32 @max8997_read_reg(ptr noundef %13, i8 noundef zeroext 6, ptr noundef nonnull %val) #6
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %val, align 1
  %conv = zext i8 %15 to i32
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %max8997_rtc_set_update_reg.exit, %do.end8, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_rtc_alarm_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef %irq) #9
  %rtc_dev = getelementptr inbounds %struct.max8997_rtc_info, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtc_dev, align 4
  tail call void @rtc_update_irq(ptr noundef %3, i32 noundef 1, i32 noundef 160) #6
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_bulk_write(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_write_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_update_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_read_reg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_rtc_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %tm) #2 align 64 {
entry:
  %data = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %data) #6
  %2 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 3
  %3 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 4
  %4 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 5
  %5 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 6
  %lock = getelementptr inbounds %struct.max8997_rtc_info, ptr %1, i32 0, i32 4
  %6 = call ptr @memset(ptr %data, i32 255, i32 7)
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %rtc = getelementptr inbounds %struct.max8997_rtc_info, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rtc, align 4
  %call1 = call i32 @max8997_bulk_read(ptr noundef %8, i8 noundef zeroext 16, i32 noundef 7, ptr noundef nonnull %data) #6
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef %call1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 2
  %12 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 1
  %rtc_24hr_mode = getelementptr inbounds %struct.max8997_rtc_info, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %rtc_24hr_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rtc_24hr_mode, align 4
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %data, align 1
  %17 = and i8 %16, 127
  %and.i = zext i8 %17 to i32
  %18 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and.i, ptr %tm, align 4
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %12, align 1
  %21 = and i8 %20, 127
  %and3.i = zext i8 %21 to i32
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %22 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and3.i, ptr %tm_min.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %11, align 1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %25 = and i8 %24, 31
  %and6.i = zext i8 %25 to i32
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %26 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and6.i, ptr %tm_hour.i, align 4
  br label %max8997_rtc_data_to_tm.exit

if.else.i:                                        ; preds = %if.end
  %27 = and i8 %24, 15
  %and9.i = zext i8 %27 to i32
  %tm_hour10.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %28 = ptrtoint ptr %tm_hour10.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and9.i, ptr %tm_hour10.i, align 4
  %29 = and i8 %24, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool14.not.i = icmp eq i8 %29, 0
  br i1 %tobool14.not.i, label %if.else.i.max8997_rtc_data_to_tm.exit_crit_edge, label %if.then15.i

if.else.i.max8997_rtc_data_to_tm.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max8997_rtc_data_to_tm.exit

if.then15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add nuw nsw i32 %and9.i, 12
  %30 = ptrtoint ptr %tm_hour10.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add.i, ptr %tm_hour10.i, align 4
  br label %max8997_rtc_data_to_tm.exit

max8997_rtc_data_to_tm.exit:                      ; preds = %if.then15.i, %if.else.i.max8997_rtc_data_to_tm.exit_crit_edge, %if.then.i
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %2, align 1
  %33 = and i8 %32, 127
  %and20.i = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i = icmp eq i8 %33, 0
  %34 = call i32 @llvm.ctlz.i32(i32 %and20.i, i1 true) #6, !range !164
  %sub.i.op.i = xor i32 %34, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %tm_wday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %35 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub.i, ptr %tm_wday.i, align 4
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %5, align 1
  %38 = and i8 %37, 31
  %and23.i = zext i8 %38 to i32
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %39 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and23.i, ptr %tm_mday.i, align 4
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %3, align 1
  %42 = and i8 %41, 15
  %and26.i = zext i8 %42 to i32
  %sub27.i = add nsw i32 %and26.i, -1
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %43 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub27.i, ptr %tm_mon.i, align 4
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %4, align 1
  %46 = and i8 %45, 127
  %narrow.i = add nuw i8 %46, 100
  %add31.i = zext i8 %narrow.i to i32
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %47 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add31.i, ptr %tm_year.i, align 4
  %tm_yday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 7
  %48 = ptrtoint ptr %tm_yday.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %tm_yday.i, align 4
  %tm_isdst.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 8
  %49 = ptrtoint ptr %tm_isdst.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %tm_isdst.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %max8997_rtc_data_to_tm.exit, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %max8997_rtc_data_to_tm.exit ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_rtc_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
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
  %8 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm, align 4
  %conv.i = trunc i32 %9 to i8
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i, ptr %data, align 1
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %11 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_min.i, align 4
  %conv1.i = trunc i32 %12 to i8
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv1.i, ptr %2, align 1
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %14 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_hour.i, align 4
  %conv3.i = trunc i32 %15 to i8
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv3.i, ptr %3, align 1
  %tm_wday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %17 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_wday.i, align 4
  %shl.i = shl nuw i32 1, %18
  %conv5.i = trunc i32 %shl.i to i8
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv5.i, ptr %4, align 1
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %20 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_mday.i, align 4
  %conv7.i = trunc i32 %21 to i8
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv7.i, ptr %7, align 1
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %23 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tm_mon.i, align 4
  %25 = trunc i32 %24 to i8
  %conv9.i = add i8 %25, 1
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv9.i, ptr %5, align 1
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %27 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tm_year.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %28)
  %cmp.i = icmp sgt i32 %28, 100
  %29 = trunc i32 %28 to i8
  %phi.cast.i = add i8 %29, -100
  %cond.i = select i1 %cmp.i, i8 %phi.cast.i, i8 0
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %cond.i, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %28)
  %cmp16.i = icmp slt i32 %28, 100
  br i1 %cmp16.i, label %max8997_rtc_tm_to_data.exit.thread, label %if.end

max8997_rtc_tm_to_data.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add19.i = add nsw i32 %28, 1900
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %add19.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.max8997_rtc_info, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %rtc = getelementptr inbounds %struct.max8997_rtc_info, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rtc, align 4
  %call3 = call i32 @max8997_bulk_write(ptr noundef %32, i8 noundef zeroext 16, i32 noundef 7, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef %call3) #9
  br label %out

if.end7:                                          ; preds = %if.end
  %35 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rtc, align 4
  %call.i20 = call i32 @max8997_write_reg(ptr noundef %36, i8 noundef zeroext 4, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %cmp.i21 = icmp slt i32 %call.i20, 0
  br i1 %cmp.i21, label %do.end.i22, label %if.else.i

do.end.i22:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %call.i20) #9
  br label %out

if.else.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 20) #6
  br label %out

out:                                              ; preds = %if.else.i, %do.end.i22, %do.end
  %ret.0 = phi i32 [ %call3, %do.end ], [ %call.i20, %do.end.i22 ], [ %call.i20, %if.else.i ]
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %max8997_rtc_tm_to_data.exit.thread
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %max8997_rtc_tm_to_data.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %alrm) #2 align 64 {
entry:
  %data = alloca [7 x i8], align 1
  %val = alloca i8, align 1
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %val, align 1, !annotation !165
  %lock = getelementptr inbounds %struct.max8997_rtc_info, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %rtc = getelementptr inbounds %struct.max8997_rtc_info, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rtc, align 4
  %call1 = call i32 @max8997_bulk_read(ptr noundef %11, i8 noundef zeroext 23, i32 noundef 7, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 191, i32 noundef %call1) #9
  br label %out

if.end:                                           ; preds = %entry
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %rtc_24hr_mode = getelementptr inbounds %struct.max8997_rtc_info, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %rtc_24hr_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rtc_24hr_mode, align 4
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %data, align 1
  %18 = and i8 %17, 127
  %and.i = zext i8 %18 to i32
  %19 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and.i, ptr %time, align 4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %2, align 1
  %22 = and i8 %21, 127
  %and3.i = zext i8 %22 to i32
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and3.i, ptr %tm_min.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %3, align 1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %26 = and i8 %25, 31
  %and6.i = zext i8 %26 to i32
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and6.i, ptr %tm_hour.i, align 4
  br label %max8997_rtc_data_to_tm.exit

if.else.i:                                        ; preds = %if.end
  %28 = and i8 %25, 15
  %and9.i = zext i8 %28 to i32
  %tm_hour10.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %29 = ptrtoint ptr %tm_hour10.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and9.i, ptr %tm_hour10.i, align 4
  %30 = and i8 %25, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool14.not.i = icmp eq i8 %30, 0
  br i1 %tobool14.not.i, label %if.else.i.max8997_rtc_data_to_tm.exit_crit_edge, label %if.then15.i

if.else.i.max8997_rtc_data_to_tm.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max8997_rtc_data_to_tm.exit

if.then15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add nuw nsw i32 %and9.i, 12
  %31 = ptrtoint ptr %tm_hour10.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.i, ptr %tm_hour10.i, align 4
  br label %max8997_rtc_data_to_tm.exit

max8997_rtc_data_to_tm.exit:                      ; preds = %if.then15.i, %if.else.i.max8997_rtc_data_to_tm.exit_crit_edge, %if.then.i
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %4, align 1
  %34 = and i8 %33, 127
  %and20.i = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i = icmp eq i8 %34, 0
  %35 = call i32 @llvm.ctlz.i32(i32 %and20.i, i1 true) #6, !range !164
  %sub.i.op.i = xor i32 %35, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %tm_wday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 6
  %36 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub.i, ptr %tm_wday.i, align 4
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %7, align 1
  %39 = and i8 %38, 31
  %and23.i = zext i8 %39 to i32
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %40 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and23.i, ptr %tm_mday.i, align 4
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %5, align 1
  %43 = and i8 %42, 15
  %and26.i = zext i8 %43 to i32
  %sub27.i = add nsw i32 %and26.i, -1
  %tm_mon.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %44 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub27.i, ptr %tm_mon.i, align 4
  %45 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %6, align 1
  %47 = and i8 %46, 127
  %narrow.i = add nuw i8 %47, 100
  %add31.i = zext i8 %narrow.i to i32
  %tm_year.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %48 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add31.i, ptr %tm_year.i, align 4
  %tm_yday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 7
  %49 = ptrtoint ptr %tm_yday.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %tm_yday.i, align 4
  %tm_isdst.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 8
  %50 = ptrtoint ptr %tm_isdst.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %tm_isdst.i, align 4
  %51 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %alrm, align 4
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %53)
  %tobool.not = icmp sgt i8 %53, -1
  br i1 %tobool.not, label %for.cond, label %max8997_rtc_data_to_tm.exit.if.then5_crit_edge

max8997_rtc_data_to_tm.exit.if.then5_crit_edge:   ; preds = %max8997_rtc_data_to_tm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

for.cond:                                         ; preds = %max8997_rtc_data_to_tm.exit
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %55)
  %tobool.not.1 = icmp sgt i8 %55, -1
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.if.then5_crit_edge

for.cond.if.then5_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

for.cond.1:                                       ; preds = %for.cond
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %57)
  %tobool.not.2 = icmp sgt i8 %57, -1
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.if.then5_crit_edge

for.cond.1.if.then5_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

for.cond.2:                                       ; preds = %for.cond.1
  %58 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %59)
  %tobool.not.3 = icmp sgt i8 %59, -1
  br i1 %tobool.not.3, label %for.cond.3, label %for.cond.2.if.then5_crit_edge

for.cond.2.if.then5_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

for.cond.3:                                       ; preds = %for.cond.2
  %60 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %61)
  %tobool.not.4 = icmp sgt i8 %61, -1
  br i1 %tobool.not.4, label %for.cond.4, label %for.cond.3.if.then5_crit_edge

for.cond.3.if.then5_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

for.cond.4:                                       ; preds = %for.cond.3
  %62 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %63)
  %tobool.not.5 = icmp sgt i8 %63, -1
  br i1 %tobool.not.5, label %for.cond.5, label %for.cond.4.if.then5_crit_edge

for.cond.4.if.then5_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

for.cond.5:                                       ; preds = %for.cond.4
  %64 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %65)
  %tobool.not.6 = icmp sgt i8 %65, -1
  br i1 %tobool.not.6, label %for.cond.5.for.end_crit_edge, label %for.cond.5.if.then5_crit_edge

for.cond.5.if.then5_crit_edge:                    ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

for.cond.5.for.end_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then5:                                         ; preds = %for.cond.5.if.then5_crit_edge, %for.cond.4.if.then5_crit_edge, %for.cond.3.if.then5_crit_edge, %for.cond.2.if.then5_crit_edge, %for.cond.1.if.then5_crit_edge, %for.cond.if.then5_crit_edge, %max8997_rtc_data_to_tm.exit.if.then5_crit_edge
  %66 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %alrm, align 4
  br label %for.end

for.end:                                          ; preds = %if.then5, %for.cond.5.for.end_crit_edge
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 1
  %67 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %pending, align 1
  %max8997 = getelementptr inbounds %struct.max8997_rtc_info, ptr %1, i32 0, i32 1
  %68 = ptrtoint ptr %max8997 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %max8997, align 4
  %i2c = getelementptr inbounds %struct.max8997_dev, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i2c, align 4
  %call8 = call i32 @max8997_read_reg(ptr noundef %71, i8 noundef zeroext 13, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end14, label %if.end16

do.end14:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44, i32 noundef 209, i32 noundef %call8) #9
  br label %out

if.end16:                                         ; preds = %for.end
  %74 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %val, align 1
  %76 = and i8 %75, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool19.not = icmp eq i8 %76, 0
  br i1 %tobool19.not, label %if.end16.out_crit_edge, label %if.then20

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %pending, align 1
  br label %out

out:                                              ; preds = %if.then20, %if.end16.out_crit_edge, %do.end14, %do.end
  %ret.0 = phi i32 [ %call1, %do.end ], [ %call8, %do.end14 ], [ %call8, %if.then20 ], [ %call8, %if.end16.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %data) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %alrm) #2 align 64 {
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
  %8 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %time, align 4
  %conv.i = trunc i32 %9 to i8
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i, ptr %data, align 1
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_min.i, align 4
  %conv1.i = trunc i32 %12 to i8
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv1.i, ptr %2, align 1
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_hour.i, align 4
  %conv3.i = trunc i32 %15 to i8
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv3.i, ptr %3, align 1
  %tm_wday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 6
  %17 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_wday.i, align 4
  %shl.i = shl nuw i32 1, %18
  %conv5.i = trunc i32 %shl.i to i8
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv5.i, ptr %4, align 1
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_mday.i, align 4
  %conv7.i = trunc i32 %21 to i8
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv7.i, ptr %7, align 1
  %tm_mon.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tm_mon.i, align 4
  %25 = trunc i32 %24 to i8
  %conv9.i = add i8 %25, 1
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv9.i, ptr %5, align 1
  %tm_year.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %27 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tm_year.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %28)
  %cmp.i = icmp sgt i32 %28, 100
  %29 = trunc i32 %28 to i8
  %phi.cast.i = add i8 %29, -100
  %cond.i = select i1 %cmp.i, i8 %phi.cast.i, i8 0
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %cond.i, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %28)
  %cmp16.i = icmp slt i32 %28, 100
  br i1 %cmp16.i, label %max8997_rtc_tm_to_data.exit.thread, label %do.end

max8997_rtc_tm_to_data.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add19.i = add nsw i32 %28, 1900
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %add19.i) #9
  br label %cleanup

do.end:                                           ; preds = %entry
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %6, align 1
  %conv = zext i8 %34 to i32
  %add = add nuw nsw i32 %conv, 2000
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %5, align 1
  %conv4 = zext i8 %36 to i32
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %7, align 1
  %conv6 = zext i8 %38 to i32
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %3, align 1
  %conv8 = zext i8 %40 to i32
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %2, align 1
  %conv10 = zext i8 %42 to i32
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %data, align 1
  %conv12 = zext i8 %44 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, i32 noundef %add, i32 noundef %conv4, i32 noundef %conv6, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %conv12) #9
  %lock = getelementptr inbounds %struct.max8997_rtc_info, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %call13 = tail call fastcc i32 @max8997_rtc_stop_alarm(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end.out_crit_edge, label %if.end17

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end17:                                         ; preds = %do.end
  %rtc = getelementptr inbounds %struct.max8997_rtc_info, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rtc, align 4
  %call19 = call i32 @max8997_bulk_write(ptr noundef %46, i8 noundef zeroext 23, i32 noundef 7, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49, i32 noundef %call19) #9
  br label %out

if.end27:                                         ; preds = %if.end17
  %49 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rtc, align 4
  %call.i53 = call i32 @max8997_write_reg(ptr noundef %50, i8 noundef zeroext 4, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %cmp.i54 = icmp slt i32 %call.i53, 0
  br i1 %cmp.i54, label %max8997_rtc_set_update_reg.exit.thread, label %if.end32

max8997_rtc_set_update_reg.exit.thread:           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %call.i53) #9
  br label %out

if.end32:                                         ; preds = %if.end27
  call void @msleep(i32 noundef 20) #6
  %53 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not = icmp eq i8 %54, 0
  br i1 %tobool.not, label %if.end32.out_crit_edge, label %if.then33

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then33:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %call34 = call fastcc i32 @max8997_rtc_start_alarm(ptr noundef %1)
  br label %out

out:                                              ; preds = %if.then33, %if.end32.out_crit_edge, %max8997_rtc_set_update_reg.exit.thread, %do.end25, %do.end.out_crit_edge
  %ret.0 = phi i32 [ %call13, %do.end.out_crit_edge ], [ %call19, %do.end25 ], [ %call34, %if.then33 ], [ %call.i53, %if.end32.out_crit_edge ], [ %call.i53, %max8997_rtc_set_update_reg.exit.thread ]
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %max8997_rtc_tm_to_data.exit.thread
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %max8997_rtc_tm_to_data.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.max8997_rtc_info, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @max8997_rtc_start_alarm(ptr noundef %1)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call fastcc i32 @max8997_rtc_stop_alarm(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.else ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_bulk_read(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max8997_rtc_stop_alarm(ptr noundef %info) unnamed_addr #2 align 64 {
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
  %lock = getelementptr inbounds %struct.max8997_rtc_info, ptr %info, i32 0, i32 4
  %6 = call ptr @memset(ptr %data, i32 255, i32 7)
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #6
  br i1 %call, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %rtc = getelementptr inbounds %struct.max8997_rtc_info, ptr %info, i32 0, i32 2
  %9 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rtc, align 4
  %call1 = call i32 @max8997_bulk_read(ptr noundef %10, i8 noundef zeroext 23, i32 noundef 7, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end5, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data, align 1
  %13 = and i8 %12, 127
  store i8 %13, ptr %data, align 1
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %0, align 1
  %16 = and i8 %15, 127
  store i8 %16, ptr %0, align 1
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %1, align 1
  %19 = and i8 %18, 127
  store i8 %19, ptr %1, align 1
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %2, align 1
  %22 = and i8 %21, 127
  store i8 %22, ptr %2, align 1
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %3, align 1
  %25 = and i8 %24, 127
  store i8 %25, ptr %3, align 1
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %4, align 1
  %28 = and i8 %27, 127
  store i8 %28, ptr %4, align 1
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %5, align 1
  %31 = and i8 %30, 127
  store i8 %31, ptr %5, align 1
  %32 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rtc, align 4
  %call12 = call i32 @max8997_bulk_write(ptr noundef %33, i8 noundef zeroext 23, i32 noundef 7, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end18, label %if.end20

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.54, i32 noundef %call1) #9
  br label %out

do.end18:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.54, i32 noundef %call12) #9
  br label %out

if.end20:                                         ; preds = %for.body.preheader
  %38 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rtc, align 4
  %call.i = call i32 @max8997_write_reg(ptr noundef %39, i8 noundef zeroext 4, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %call.i) #9
  br label %out

if.else.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 20) #6
  br label %out

out:                                              ; preds = %if.else.i, %do.end.i, %do.end18, %do.end5
  %ret.0 = phi i32 [ %call1, %do.end5 ], [ %call12, %do.end18 ], [ %call.i, %do.end.i ], [ %call.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %data) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max8997_rtc_start_alarm(ptr noundef %info) unnamed_addr #2 align 64 {
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
  %lock = getelementptr inbounds %struct.max8997_rtc_info, ptr %info, i32 0, i32 4
  %6 = call ptr @memset(ptr %data, i32 255, i32 7)
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #6
  br i1 %call, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.61) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %rtc = getelementptr inbounds %struct.max8997_rtc_info, ptr %info, i32 0, i32 2
  %9 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rtc, align 4
  %call1 = call i32 @max8997_bulk_read(ptr noundef %10, i8 noundef zeroext 23, i32 noundef 7, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end5, label %if.end7

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.61, i32 noundef %call1) #9
  br label %out

if.end7:                                          ; preds = %if.end
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data, align 1
  %15 = or i8 %14, -128
  store i8 %15, ptr %data, align 1
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %0, align 1
  %18 = or i8 %17, -128
  store i8 %18, ptr %0, align 1
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %1, align 1
  %21 = or i8 %20, -128
  store i8 %21, ptr %1, align 1
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %2, align 1
  %24 = and i8 %23, 127
  store i8 %24, ptr %2, align 1
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %3, align 1
  %27 = and i8 %26, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  br i1 %tobool.not, label %if.end7.if.end28_crit_edge, label %if.then23

if.end7.if.end28_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then23:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %or26 = or i8 %26, -128
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %or26, ptr %3, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.end7.if.end28_crit_edge
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %4, align 1
  %31 = and i8 %30, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool32.not = icmp eq i8 %31, 0
  br i1 %tobool32.not, label %if.end28.if.end38_crit_edge, label %if.then33

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %or36 = or i8 %30, -128
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %or36, ptr %4, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end28.if.end38_crit_edge
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %5, align 1
  %35 = and i8 %34, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool42.not = icmp eq i8 %35, 0
  br i1 %tobool42.not, label %if.end38.if.end48_crit_edge, label %if.then43

if.end38.if.end48_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %or46 = or i8 %34, -128
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %or46, ptr %5, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %if.end38.if.end48_crit_edge
  %37 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rtc, align 4
  %call51 = call i32 @max8997_bulk_write(ptr noundef %38, i8 noundef zeroext 23, i32 noundef 7, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %do.end57, label %if.end59

do.end57:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.61, i32 noundef %call51) #9
  br label %out

if.end59:                                         ; preds = %if.end48
  %41 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rtc, align 4
  %call.i = call i32 @max8997_write_reg(ptr noundef %42, i8 noundef zeroext 4, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %call.i) #9
  br label %out

if.else.i:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 20) #6
  br label %out

out:                                              ; preds = %if.else.i, %do.end.i, %do.end57, %do.end5
  %ret.0 = phi i32 [ %call1, %do.end5 ], [ %call51, %do.end57 ], [ %call.i, %do.end.i ], [ %call.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %data) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !20, !21, !23, !24, !26, !28, !30, !32, !33, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !130, !131, !133, !134, !135, !137, !138, !140, !141, !142, !144, !145, !147, !148, !150, !151, !152, !153}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @__param_wtsr_en, !1, !"__param_wtsr_en", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-max8997.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_wtsr_entype288, !1, !"__UNIQUE_ID_wtsr_entype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_wtsr_en289, !4, !"__UNIQUE_ID_wtsr_en289", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-max8997.c", i32 23, i32 1}
!5 = !{ptr @__param_smpl_en, !6, !"__param_smpl_en", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-max8997.c", i32 26, i32 1}
!7 = !{ptr @__UNIQUE_ID_smpl_entype290, !6, !"__UNIQUE_ID_smpl_entype290", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_smpl_en291, !9, !"__UNIQUE_ID_smpl_en291", i1 false, i1 false}
!9 = !{!"../drivers/rtc/rtc-max8997.c", i32 27, i32 1}
!10 = !{ptr @__initcall__kmod_rtc_max8997__292_529_max8997_rtc_driver_init6, !11, !"__initcall__kmod_rtc_max8997__292_529_max8997_rtc_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-max8997.c", i32 529, i32 1}
!12 = !{ptr @__exitcall_max8997_rtc_driver_exit, !11, !"__exitcall_max8997_rtc_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_description293, !14, !"__UNIQUE_ID_description293", i1 false, i1 false}
!14 = !{!"../drivers/rtc/rtc-max8997.c", i32 531, i32 1}
!15 = !{ptr @__UNIQUE_ID_author294, !16, !"__UNIQUE_ID_author294", i1 false, i1 false}
!16 = !{!"../drivers/rtc/rtc-max8997.c", i32 532, i32 1}
!17 = !{ptr @__UNIQUE_ID_file295, !18, !"__UNIQUE_ID_file295", i1 false, i1 false}
!18 = !{!"../drivers/rtc/rtc-max8997.c", i32 533, i32 1}
!19 = !{ptr @__UNIQUE_ID_license296, !18, !"__UNIQUE_ID_license296", i1 false, i1 false}
!20 = !{ptr @__param_str_wtsr_en, !1, !"__param_str_wtsr_en", i1 false, i1 false}
!21 = !{ptr @wtsr_en, !22, !"wtsr_en", i1 false, i1 false}
!22 = !{!"../drivers/rtc/rtc-max8997.c", i32 21, i32 12}
!23 = !{ptr @__param_str_smpl_en, !6, !"__param_str_smpl_en", i1 false, i1 false}
!24 = !{ptr @smpl_en, !25, !"smpl_en", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-max8997.c", i32 25, i32 12}
!26 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-max8997.c", i32 522, i32 11}
!28 = !{ptr @max8997_rtc_driver, !29, !"max8997_rtc_driver", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-max8997.c", i32 520, i32 31}
!30 = !{ptr @max8997_rtc_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/rtc/rtc-max8997.c", i32 459, i32 2}
!32 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.2, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/rtc/rtc-max8997.c", i32 469, i32 3}
!35 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @max8997_rtc_probe._entry, !34, !"_entry", i1 false, i1 false}
!40 = !{ptr @max8997_rtc_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/rtc/rtc-max8997.c", i32 483, i32 3}
!43 = !{ptr @max8997_rtc_probe._entry.7, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @max8997_rtc_probe._entry_ptr.9, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/rtc/rtc-max8997.c", i32 489, i32 3}
!47 = !{ptr @max8997_rtc_probe._entry.10, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @max8997_rtc_probe._entry_ptr.12, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/rtc/rtc-max8997.c", i32 497, i32 5}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/rtc/rtc-max8997.c", i32 499, i32 3}
!53 = !{ptr @max8997_rtc_probe._entry.14, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @max8997_rtc_probe._entry_ptr.16, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-max8997.c", i32 439, i32 3}
!57 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @max8997_rtc_init_reg._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @max8997_rtc_init_reg._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/rtc/rtc-max8997.c", i32 120, i32 3}
!62 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @max8997_rtc_set_update_reg._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @max8997_rtc_set_update_reg._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/rtc/rtc-max8997.c", i32 381, i32 2}
!67 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @max8997_rtc_enable_wtsr._entry, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @max8997_rtc_enable_wtsr._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/rtc/rtc-max8997.c", i32 386, i32 3}
!75 = !{ptr @max8997_rtc_enable_wtsr._entry.26, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @max8997_rtc_enable_wtsr._entry_ptr.28, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/rtc/rtc-max8997.c", i32 409, i32 2}
!79 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @max8997_rtc_enable_smpl._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @max8997_rtc_enable_smpl._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/rtc/rtc-max8997.c", i32 414, i32 3}
!84 = !{ptr @max8997_rtc_enable_smpl._entry.31, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @max8997_rtc_enable_smpl._entry_ptr.33, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/rtc/rtc-max8997.c", i32 423, i32 2}
!88 = !{ptr @max8997_rtc_enable_smpl._entry.34, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @max8997_rtc_enable_smpl._entry_ptr.36, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @max8997_rtc_ops, !91, !"max8997_rtc_ops", i1 false, i1 false}
!91 = !{!"../drivers/rtc/rtc-max8997.c", i32 358, i32 35}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/rtc/rtc-max8997.c", i32 143, i32 3}
!94 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @max8997_rtc_read_time._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @max8997_rtc_read_time._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/rtc/rtc-max8997.c", i32 167, i32 3}
!99 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @max8997_rtc_set_time._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @max8997_rtc_set_time._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/rtc/rtc-max8997.c", i32 106, i32 3}
!104 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @max8997_rtc_tm_to_data._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @max8997_rtc_tm_to_data._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/rtc/rtc-max8997.c", i32 190, i32 3}
!109 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @max8997_rtc_read_alarm._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @max8997_rtc_read_alarm._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/rtc/rtc-max8997.c", i32 208, i32 3}
!114 = !{ptr @max8997_rtc_read_alarm._entry.45, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @max8997_rtc_read_alarm._entry_ptr.47, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/rtc/rtc-max8997.c", i32 302, i32 2}
!118 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @max8997_rtc_set_alarm._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @max8997_rtc_set_alarm._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/rtc/rtc-max8997.c", i32 315, i32 3}
!123 = !{ptr @max8997_rtc_set_alarm._entry.50, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @max8997_rtc_set_alarm._entry_ptr.52, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/rtc/rtc-max8997.c", i32 227, i32 3}
!127 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @max8997_rtc_stop_alarm._entry, !126, !"_entry", i1 false, i1 false}
!130 = !{ptr @max8997_rtc_stop_alarm._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/rtc/rtc-max8997.c", i32 232, i32 3}
!133 = !{ptr @max8997_rtc_stop_alarm._entry.56, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @max8997_rtc_stop_alarm._entry_ptr.58, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @max8997_rtc_stop_alarm._entry.59, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../drivers/rtc/rtc-max8997.c", i32 243, i32 3}
!137 = !{ptr @max8997_rtc_stop_alarm._entry_ptr.60, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/rtc/rtc-max8997.c", i32 259, i32 3}
!140 = !{ptr @max8997_rtc_start_alarm._entry, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @max8997_rtc_start_alarm._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @max8997_rtc_start_alarm._entry.62, !143, !"_entry", i1 false, i1 false}
!143 = !{!"../drivers/rtc/rtc-max8997.c", i32 264, i32 3}
!144 = !{ptr @max8997_rtc_start_alarm._entry_ptr.63, !143, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @max8997_rtc_start_alarm._entry.64, !146, !"_entry", i1 false, i1 false}
!146 = !{!"../drivers/rtc/rtc-max8997.c", i32 283, i32 3}
!147 = !{ptr @max8997_rtc_start_alarm._entry_ptr.65, !146, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.66, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/rtc/rtc-max8997.c", i32 351, i32 2}
!150 = !{ptr @.str.67, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @max8997_rtc_alarm_irq._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @max8997_rtc_alarm_irq._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @rtc_id, !154, !"rtc_id", i1 false, i1 false}
!154 = !{!"../drivers/rtc/rtc-max8997.c", i32 514, i32 40}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!164 = !{i32 0, i32 33}
!165 = !{!"auto-init"}
