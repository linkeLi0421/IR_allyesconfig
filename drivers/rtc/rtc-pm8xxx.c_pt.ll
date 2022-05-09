; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-pm8xxx.c_pt.bc'
source_filename = "../drivers/rtc/rtc-pm8xxx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pm8xxx_rtc_regs = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.pm8xxx_rtc = type { ptr, ptr, i8, i32, ptr, ptr, %struct.spinlock }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_pm8xxx__231_568_pm8xxx_rtc_driver_init6 = internal global ptr @pm8xxx_rtc_driver_init, section ".initcall6.init", align 4
@pm8xxx_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pm8xxx_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pm8xxx_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm8xxx_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pm8xxx_rtc_driver_exit = internal global ptr @pm8xxx_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias232 = internal constant [37 x i8] c"rtc_pm8xxx.alias=platform:rtc-pm8xxx\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [43 x i8] c"rtc_pm8xxx.description=PMIC8xxx RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [39 x i8] c"rtc_pm8xxx.file=drivers/rtc/rtc-pm8xxx\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [26 x i8] c"rtc_pm8xxx.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [58 x i8] c"rtc_pm8xxx.author=Anirudh Ghayal <aghayal@codeaurora.org>\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-pm8xxx\00", [21 x i8] zeroinitializer }, align 32
@pm8xxx_id_table = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8921-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8921_regs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8018-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8921_regs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8058-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8058_regs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8941-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8941_regs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmk8350-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pmk8350_regs }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@pm8xxx_rtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm8xxx_rtc_suspend, ptr @pm8xxx_rtc_resume, ptr @pm8xxx_rtc_suspend, ptr @pm8xxx_rtc_resume, ptr @pm8xxx_rtc_suspend, ptr @pm8xxx_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pm8xxx_rtc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&rtc_dd->ctrl_reg_lock\00", [41 x i8] zeroinitializer }, align 32
@pm8xxx_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 490, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Parent regmap unavailable.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pm8xxx_rtc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-pm8xxx.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pm8xxx_rtc_probe._entry_ptr = internal global ptr @pm8xxx_rtc_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"allow-set-time\00", [17 x i8] zeroinitializer }, align 32
@pm8xxx_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @pm8xxx_rtc_read_time, ptr @pm8xxx_rtc_set_time, ptr @pm8xxx_rtc_read_alarm, ptr @pm8xxx_rtc_set_alarm, ptr null, ptr @pm8xxx_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pm8xxx_rtc_alarm\00", [47 x i8] zeroinitializer }, align 32
@pm8xxx_rtc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 526, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Request IRQ failed (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@pm8xxx_rtc_probe._entry_ptr.11 = internal global ptr @pm8xxx_rtc_probe._entry.9, section ".printk_index", align 4
@pm8xxx_rtc_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 186, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RTC read data register failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pm8xxx_rtc_read_time\00", [43 x i8] zeroinitializer }, align 32
@pm8xxx_rtc_read_time._entry_ptr = internal global ptr @pm8xxx_rtc_read_time._entry, section ".printk_index", align 4
@pm8xxx_rtc_read_time._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 196, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@pm8xxx_rtc_read_time._entry_ptr.15 = internal global ptr @pm8xxx_rtc_read_time._entry.14, section ".printk_index", align 4
@pm8xxx_rtc_read_time._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 204, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@pm8xxx_rtc_read_time._entry_ptr.17 = internal global ptr @pm8xxx_rtc_read_time._entry.16, section ".printk_index", align 4
@pm8xxx_rtc_read_time.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.13, ptr @.str.4, ptr @.str.19, i8 0, i8 53, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc_pm8xxx\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"secs = %lu, h:m:s == %ptRt, y-m-d = %ptRdr\0A\00", [52 x i8] zeroinitializer }, align 32
@pm8xxx_rtc_set_time.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 0, i8 22, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pm8xxx_rtc_set_time\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Seconds value to be written to RTC = %lu\0A\00", [54 x i8] zeroinitializer }, align 32
@pm8xxx_rtc_set_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 108, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Write to RTC Alarm control register failed\0A\00", [52 x i8] zeroinitializer }, align 32
@pm8xxx_rtc_set_time._entry_ptr = internal global ptr @pm8xxx_rtc_set_time._entry, section ".printk_index", align 4
@pm8xxx_rtc_set_time._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.4, i32 123, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Write to RTC control register failed\0A\00", [58 x i8] zeroinitializer }, align 32
@pm8xxx_rtc_set_time._entry_ptr.25 = internal global ptr @pm8xxx_rtc_set_time._entry.23, section ".printk_index", align 4
@pm8xxx_rtc_set_time._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.20, ptr @.str.4, i32 131, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Write to RTC write data register failed\0A\00", [55 x i8] zeroinitializer }, align 32
@pm8xxx_rtc_set_time._entry_ptr.28 = internal global ptr @pm8xxx_rtc_set_time._entry.26, section ".printk_index", align 4
@pm8xxx_rtc_set_time._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.20, ptr @.str.4, i32 139, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@pm8xxx_rtc_set_time._entry_ptr.30 = internal global ptr @pm8xxx_rtc_set_time._entry.29, section ".printk_index", align 4
@pm8xxx_rtc_set_time._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.20, ptr @.str.4, i32 146, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@pm8xxx_rtc_set_time._entry_ptr.32 = internal global ptr @pm8xxx_rtc_set_time._entry.31, section ".printk_index", align 4
@pm8xxx_rtc_set_time._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.4, i32 155, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@pm8xxx_rtc_set_time._entry_ptr.34 = internal global ptr @pm8xxx_rtc_set_time._entry.33, section ".printk_index", align 4
@pm8xxx_rtc_set_time._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 164, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@pm8xxx_rtc_set_time._entry_ptr.36 = internal global ptr @pm8xxx_rtc_set_time._entry.35, section ".printk_index", align 4
@pm8xxx_rtc_read_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 278, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"RTC alarm time read failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pm8xxx_rtc_read_alarm\00", [42 x i8] zeroinitializer }, align 32
@pm8xxx_rtc_read_alarm._entry_ptr = internal global ptr @pm8xxx_rtc_read_alarm._entry, section ".printk_index", align 4
@pm8xxx_rtc_read_alarm._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.4, i32 289, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Read from RTC alarm control register failed\0A\00", [51 x i8] zeroinitializer }, align 32
@pm8xxx_rtc_read_alarm._entry_ptr.41 = internal global ptr @pm8xxx_rtc_read_alarm._entry.39, section ".printk_index", align 4
@pm8xxx_rtc_read_alarm.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.38, ptr @.str.4, ptr @.str.42, i8 0, i8 73, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Alarm set for - h:m:s=%ptRt, y-m-d=%ptRdr\0A\00", [53 x i8] zeroinitializer }, align 32
@pm8xxx_rtc_set_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 240, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Write to RTC ALARM register failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pm8xxx_rtc_set_alarm\00", [43 x i8] zeroinitializer }, align 32
@pm8xxx_rtc_set_alarm._entry_ptr = internal global ptr @pm8xxx_rtc_set_alarm._entry, section ".printk_index", align 4
@pm8xxx_rtc_set_alarm._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.4, i32 255, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Write to RTC alarm control register failed\0A\00", [52 x i8] zeroinitializer }, align 32
@pm8xxx_rtc_set_alarm._entry_ptr.47 = internal global ptr @pm8xxx_rtc_set_alarm._entry.45, section ".printk_index", align 4
@pm8xxx_rtc_set_alarm.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.44, ptr @.str.4, ptr @.str.48, i8 0, i8 65, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Alarm Set for h:m:s=%ptRt, y-m-d=%ptRdr\0A\00", [55 x i8] zeroinitializer }, align 32
@pm8xxx_rtc_alarm_irq_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.49, ptr @.str.4, i32 322, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pm8xxx_rtc_alarm_irq_enable\00", [36 x i8] zeroinitializer }, align 32
@pm8xxx_rtc_alarm_irq_enable._entry_ptr = internal global ptr @pm8xxx_rtc_alarm_irq_enable._entry, section ".printk_index", align 4
@pm8xxx_rtc_alarm_irq_enable._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.4, i32 331, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Clear RTC ALARM register failed\0A\00", [63 x i8] zeroinitializer }, align 32
@pm8xxx_rtc_alarm_irq_enable._entry_ptr.52 = internal global ptr @pm8xxx_rtc_alarm_irq_enable._entry.50, section ".printk_index", align 4
@pm8xxx_alarm_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.4, i32 373, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Write to alarm control register failed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pm8xxx_alarm_trigger\00", [43 x i8] zeroinitializer }, align 32
@pm8xxx_alarm_trigger._entry_ptr = internal global ptr @pm8xxx_alarm_trigger._entry, section ".printk_index", align 4
@pm8xxx_alarm_trigger._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.4, i32 383, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"RTC Alarm control2 register read failed\0A\00", [55 x i8] zeroinitializer }, align 32
@pm8xxx_alarm_trigger._entry_ptr.57 = internal global ptr @pm8xxx_alarm_trigger._entry.55, section ".printk_index", align 4
@pm8xxx_alarm_trigger._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.4, i32 391, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Write to RTC Alarm control2 register failed\0A\00", [51 x i8] zeroinitializer }, align 32
@pm8xxx_alarm_trigger._entry_ptr.60 = internal global ptr @pm8xxx_alarm_trigger._entry.58, section ".printk_index", align 4
@pm8921_regs = internal constant { %struct.pm8xxx_rtc_regs, [36 x i8] } { %struct.pm8xxx_rtc_regs { i32 285, i32 287, i32 291, i32 285, i32 286, i32 295, i32 2 }, [36 x i8] zeroinitializer }, align 32
@pm8058_regs = internal constant { %struct.pm8xxx_rtc_regs, [36 x i8] } { %struct.pm8xxx_rtc_regs { i32 488, i32 490, i32 494, i32 488, i32 489, i32 498, i32 2 }, [36 x i8] zeroinitializer }, align 32
@pm8941_regs = internal constant { %struct.pm8xxx_rtc_regs, [36 x i8] } { %struct.pm8xxx_rtc_regs { i32 24646, i32 24640, i32 24648, i32 24902, i32 24904, i32 24896, i32 128 }, [36 x i8] zeroinitializer }, align 32
@pmk8350_regs = internal constant { %struct.pm8xxx_rtc_regs, [36 x i8] } { %struct.pm8xxx_rtc_regs { i32 24902, i32 24896, i32 24904, i32 25158, i32 25160, i32 25152, i32 128 }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"pm8xxx_rtc_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 559, i32 31 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 562, i32 12 }
@___asan_gen_.67 = private unnamed_addr constant [16 x i8] c"pm8xxx_id_table\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 461, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"pm8xxx_rtc_pm_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 555, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 486, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 490, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 499, i32 13 }
@___asan_gen_.100 = private unnamed_addr constant [15 x i8] c"pm8xxx_rtc_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 341, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 524, i32 8 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 526, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 186, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 196, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 204, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 214, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 90, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 108, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 123, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 131, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 139, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 146, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 155, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 164, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 278, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 289, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 294, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 240, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 255, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 259, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 322, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 331, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 372, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 382, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 390, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant [12 x i8] c"pm8921_regs\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 418, i32 37 }
@___asan_gen_.241 = private unnamed_addr constant [12 x i8] c"pm8058_regs\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 428, i32 37 }
@___asan_gen_.244 = private unnamed_addr constant [12 x i8] c"pm8941_regs\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 438, i32 37 }
@___asan_gen_.247 = private unnamed_addr constant [13 x i8] c"pmk8350_regs\00", align 1
@___asan_gen_.248 = private constant [28 x i8] c"../drivers/rtc/rtc-pm8xxx.c\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 448, i32 37 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_pm8xxx_rtc_driver_exit, ptr @__initcall__kmod_rtc_pm8xxx__231_568_pm8xxx_rtc_driver_init6, ptr @pm8xxx_alarm_trigger._entry, ptr @pm8xxx_alarm_trigger._entry.55, ptr @pm8xxx_alarm_trigger._entry.58, ptr @pm8xxx_alarm_trigger._entry_ptr, ptr @pm8xxx_alarm_trigger._entry_ptr.57, ptr @pm8xxx_alarm_trigger._entry_ptr.60, ptr @pm8xxx_rtc_alarm_irq_enable._entry, ptr @pm8xxx_rtc_alarm_irq_enable._entry.50, ptr @pm8xxx_rtc_alarm_irq_enable._entry_ptr, ptr @pm8xxx_rtc_alarm_irq_enable._entry_ptr.52, ptr @pm8xxx_rtc_driver_exit, ptr @pm8xxx_rtc_probe._entry, ptr @pm8xxx_rtc_probe._entry.9, ptr @pm8xxx_rtc_probe._entry_ptr, ptr @pm8xxx_rtc_probe._entry_ptr.11, ptr @pm8xxx_rtc_read_alarm._entry, ptr @pm8xxx_rtc_read_alarm._entry.39, ptr @pm8xxx_rtc_read_alarm._entry_ptr, ptr @pm8xxx_rtc_read_alarm._entry_ptr.41, ptr @pm8xxx_rtc_read_time._entry, ptr @pm8xxx_rtc_read_time._entry.14, ptr @pm8xxx_rtc_read_time._entry.16, ptr @pm8xxx_rtc_read_time._entry_ptr, ptr @pm8xxx_rtc_read_time._entry_ptr.15, ptr @pm8xxx_rtc_read_time._entry_ptr.17, ptr @pm8xxx_rtc_set_alarm._entry, ptr @pm8xxx_rtc_set_alarm._entry.45, ptr @pm8xxx_rtc_set_alarm._entry_ptr, ptr @pm8xxx_rtc_set_alarm._entry_ptr.47, ptr @pm8xxx_rtc_set_time._entry, ptr @pm8xxx_rtc_set_time._entry.23, ptr @pm8xxx_rtc_set_time._entry.26, ptr @pm8xxx_rtc_set_time._entry.29, ptr @pm8xxx_rtc_set_time._entry.31, ptr @pm8xxx_rtc_set_time._entry.33, ptr @pm8xxx_rtc_set_time._entry.35, ptr @pm8xxx_rtc_set_time._entry_ptr, ptr @pm8xxx_rtc_set_time._entry_ptr.25, ptr @pm8xxx_rtc_set_time._entry_ptr.28, ptr @pm8xxx_rtc_set_time._entry_ptr.30, ptr @pm8xxx_rtc_set_time._entry_ptr.32, ptr @pm8xxx_rtc_set_time._entry_ptr.34, ptr @pm8xxx_rtc_set_time._entry_ptr.36, ptr @pm8xxx_rtc_driver, ptr @.str, ptr @pm8xxx_id_table, ptr @pm8xxx_rtc_pm_ops, ptr @pm8xxx_rtc_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @pm8xxx_rtc_ops, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @pm8921_regs, ptr @pm8058_regs, ptr @pm8941_regs, ptr @pmk8350_regs], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_id_table to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_rtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_rtc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_rtc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_rtc_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_rtc_read_time._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_rtc_read_time._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_rtc_set_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_rtc_set_time._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_rtc_set_time._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_rtc_set_time._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_rtc_set_time._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_rtc_set_time._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_rtc_set_time._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_rtc_read_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_rtc_read_alarm._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_rtc_set_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_rtc_set_alarm._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_rtc_alarm_irq_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_rtc_alarm_irq_enable._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_alarm_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_alarm_trigger._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_alarm_trigger._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8921_regs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8058_regs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8941_regs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmk8350_regs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pm8xxx_rtc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pm8xxx_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @pm8xxx_rtc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %ctrl_reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @pm8xxx_id_table, ptr noundef %1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 68, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  %ctrl_reg_lock = getelementptr inbounds %struct.pm8xxx_rtc, ptr %call.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %ctrl_reg_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @pm8xxx_rtc_probe.__key, i16 noundef signext 3) #5
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call7 = tail call ptr @dev_get_regmap(ptr noundef %3, ptr noundef null) #5
  %regmap = getelementptr inbounds %struct.pm8xxx_rtc, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7, ptr %regmap, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %do.end13, label %if.end15

do.end13:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end15:                                         ; preds = %do.body
  %call16 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %rtc_alarm_irq = getelementptr inbounds %struct.pm8xxx_rtc, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %rtc_alarm_irq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call16, ptr %rtc_alarm_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp18 = icmp slt i32 %call16, 0
  br i1 %cmp18, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call.i89 = tail call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.7, ptr noundef null) #5
  %tobool.i = icmp ne ptr %call.i89, null
  %allow_set_time = getelementptr inbounds %struct.pm8xxx_rtc, ptr %call.i, i32 0, i32 2
  %frombool = zext i1 %tobool.i to i8
  %8 = ptrtoint ptr %allow_set_time to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %allow_set_time, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %regs = getelementptr inbounds %struct.pm8xxx_rtc, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %regs, align 4
  %rtc_dev = getelementptr inbounds %struct.pm8xxx_rtc, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %rtc_dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl_reg.i) #5
  %13 = ptrtoint ptr %ctrl_reg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %ctrl_reg.i, align 4, !annotation !146
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %10, align 4
  %call.i90 = call i32 @regmap_read(ptr noundef %15, i32 noundef %17, ptr noundef nonnull %ctrl_reg.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool.not.i = icmp eq i32 %call.i90, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.pm8xxx_rtc_enable.exit.thread_crit_edge

if.end20.pm8xxx_rtc_enable.exit.thread_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm8xxx_rtc_enable.exit.thread

if.end.i:                                         ; preds = %if.end20
  %18 = ptrtoint ptr %ctrl_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctrl_reg.i, align 4
  %and.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end28_crit_edge

if.end.i.if.end28_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then3.i:                                       ; preds = %if.end.i
  %or.i = or i32 %19, 128
  %20 = ptrtoint ptr %ctrl_reg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i, ptr %ctrl_reg.i, align 4
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %10, align 4
  %call6.i = call i32 @regmap_write(ptr noundef %22, i32 noundef %24, i32 noundef %or.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then3.i.if.end28_crit_edge, label %if.then3.i.pm8xxx_rtc_enable.exit.thread_crit_edge

if.then3.i.pm8xxx_rtc_enable.exit.thread_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm8xxx_rtc_enable.exit.thread

if.then3.i.if.end28_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

pm8xxx_rtc_enable.exit.thread:                    ; preds = %if.then3.i.pm8xxx_rtc_enable.exit.thread_crit_edge, %if.end20.pm8xxx_rtc_enable.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call6.i, %if.then3.i.pm8xxx_rtc_enable.exit.thread_crit_edge ], [ %call.i90, %if.end20.pm8xxx_rtc_enable.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl_reg.i) #5
  br label %cleanup

if.end28:                                         ; preds = %if.then3.i.if.end28_crit_edge, %if.end.i.if.end28_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl_reg.i) #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call30 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #5
  %call32 = call ptr @devm_rtc_allocate_device(ptr noundef %dev) #5
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call32, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %call32 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end28
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call32, i32 0, i32 3
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @pm8xxx_rtc_ops, ptr %ops, align 8
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %30, i32 0, i32 23
  %31 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 4294967295, ptr %range_max, align 8
  %32 = ptrtoint ptr %rtc_alarm_irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rtc_alarm_irq, align 4
  %call43 = call i32 @devm_request_any_context_irq(ptr noundef %dev, i32 noundef %33, ptr noundef nonnull @pm8xxx_alarm_trigger, i32 noundef 1, ptr noundef nonnull @.str.8, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %do.end48, label %if.end50

do.end48:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call43) #8
  br label %cleanup

if.end50:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %call52 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %35) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.end48, %if.then35, %pm8xxx_rtc_enable.exit.thread, %if.end15.cleanup_crit_edge, %do.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %27, %if.then35 ], [ %call43, %do.end48 ], [ %call52, %if.end50 ], [ -6, %do.end13 ], [ -6, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -6, %if.end15.cleanup_crit_edge ], [ %retval.0.i.ph, %pm8xxx_rtc_enable.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_any_context_irq(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_alarm_trigger(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %ctrl_reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.pm8xxx_rtc, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl_reg) #5
  %2 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ctrl_reg, align 4, !annotation !146
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_id, align 4
  tail call void @rtc_update_irq(ptr noundef %4, i32 noundef 1, i32 noundef 160) #5
  %ctrl_reg_lock = getelementptr inbounds %struct.pm8xxx_rtc, ptr %dev_id, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %ctrl_reg_lock) #5
  %regmap = getelementptr inbounds %struct.pm8xxx_rtc, ptr %dev_id, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %alarm_ctrl = getelementptr inbounds %struct.pm8xxx_rtc_regs, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %alarm_ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %alarm_ctrl, align 4
  %call = call i32 @regmap_read(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %ctrl_reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @_raw_spin_unlock(ptr noundef %ctrl_reg_lock) #5
  br label %rtc_alarm_handled

if.end:                                           ; preds = %entry
  %alarm_en = getelementptr inbounds %struct.pm8xxx_rtc_regs, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %alarm_en to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %alarm_en, align 4
  %neg = xor i32 %10, -1
  %11 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ctrl_reg, align 4
  %and = and i32 %12, %neg
  store i32 %and, ptr %ctrl_reg, align 4
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %15 = ptrtoint ptr %alarm_ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %alarm_ctrl, align 4
  %call5 = call i32 @regmap_write(ptr noundef %14, i32 noundef %16, i32 noundef %and) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  call void @_raw_spin_unlock(ptr noundef %ctrl_reg_lock) #5
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %rtc_dev = getelementptr inbounds %struct.pm8xxx_rtc, ptr %dev_id, i32 0, i32 5
  %17 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rtc_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.53) #8
  br label %rtc_alarm_handled

if.end9:                                          ; preds = %if.end
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %alarm_ctrl2 = getelementptr inbounds %struct.pm8xxx_rtc_regs, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %alarm_ctrl2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %alarm_ctrl2, align 4
  %call12 = call i32 @regmap_read(ptr noundef %20, i32 noundef %22, ptr noundef nonnull %ctrl_reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %rtc_dev18 = getelementptr inbounds %struct.pm8xxx_rtc, ptr %dev_id, i32 0, i32 5
  %23 = ptrtoint ptr %rtc_dev18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rtc_dev18, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.56) #8
  br label %rtc_alarm_handled

if.end19:                                         ; preds = %if.end9
  %25 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ctrl_reg, align 4
  %or = or i32 %26, 1
  store i32 %or, ptr %ctrl_reg, align 4
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %29 = ptrtoint ptr %alarm_ctrl2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %alarm_ctrl2, align 4
  %call22 = call i32 @regmap_write(ptr noundef %28, i32 noundef %30, i32 noundef %or) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end19.rtc_alarm_handled_crit_edge, label %do.end27

if.end19.rtc_alarm_handled_crit_edge:             ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtc_alarm_handled

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %rtc_dev28 = getelementptr inbounds %struct.pm8xxx_rtc, ptr %dev_id, i32 0, i32 5
  %31 = ptrtoint ptr %rtc_dev28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rtc_dev28, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.59) #8
  br label %rtc_alarm_handled

rtc_alarm_handled:                                ; preds = %do.end27, %if.end19.rtc_alarm_handled_crit_edge, %do.end17, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl_reg) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_rtc_read_time(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  %value = alloca [4 x i8], align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #5
  %0 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 3
  %3 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %value, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #5
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg, align 4, !annotation !146
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  %regs1 = getelementptr inbounds %struct.pm8xxx_rtc, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs1, align 4
  %regmap = getelementptr inbounds %struct.pm8xxx_rtc, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %read = getelementptr inbounds %struct.pm8xxx_rtc_regs, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %read, align 4
  %call2 = call i32 @regmap_bulk_read(ptr noundef %10, i32 noundef %12, ptr noundef nonnull %value, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %15 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %read, align 4
  %call5 = call i32 @regmap_read(ptr noundef %14, i32 noundef %16, ptr noundef nonnull %reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end9, label %if.end10

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg, align 4
  %19 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %value, align 4
  %conv = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv)
  %cmp11 = icmp ult i32 %18, %conv
  br i1 %cmp11, label %if.then15, label %if.end10.if.end26_crit_edge, !prof !147

if.end10.if.end26_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then15:                                        ; preds = %if.end10
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %23 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %read, align 4
  %call19 = call i32 @regmap_bulk_read(ptr noundef %22, i32 noundef %24, ptr noundef nonnull %value, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then15.if.end26_crit_edge, label %do.end24

if.then15.if.end26_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

do.end24:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end26:                                         ; preds = %if.then15.if.end26_crit_edge, %if.end10.if.end26_crit_edge
  %25 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %value, align 4
  %conv28 = zext i8 %26 to i32
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %0, align 1
  %conv30 = zext i8 %28 to i32
  %shl = shl nuw nsw i32 %conv30, 8
  %or = or i32 %shl, %conv28
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %1, align 2
  %conv32 = zext i8 %30 to i32
  %shl33 = shl nuw nsw i32 %conv32, 16
  %or34 = or i32 %or, %shl33
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %2, align 1
  %conv36 = zext i8 %32 to i32
  %shl37 = shl nuw i32 %conv36, 24
  %or38 = or i32 %or34, %shl37
  %conv39 = zext i32 %or38 to i64
  call void @rtc_time64_to_tm(i64 noundef %conv39, ptr noundef %tm) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm8xxx_rtc_read_time.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm8xxx_rtc_read_time, %cleanup)) #5
          to label %if.then51 [label %cleanup], !srcloc !148

if.then51:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm8xxx_rtc_read_time.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %or38, ptr noundef %tm, ptr noundef %tm) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %if.end26, %do.end24, %do.end9, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call5, %do.end9 ], [ %call19, %do.end24 ], [ 0, %if.then51 ], [ 0, %if.end26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_rtc_set_time(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  %value = alloca [4 x i8], align 1
  %ctrl_reg = alloca i32, align 4
  %rtc_ctrl_reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #5
  %0 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl_reg) #5
  %3 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %ctrl_reg, align 4, !annotation !146
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rtc_ctrl_reg) #5
  %4 = ptrtoint ptr %rtc_ctrl_reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rtc_ctrl_reg, align 4, !annotation !146
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  %regs1 = getelementptr inbounds %struct.pm8xxx_rtc, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs1, align 4
  %allow_set_time = getelementptr inbounds %struct.pm8xxx_rtc, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %allow_set_time to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %allow_set_time, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @rtc_tm_to_time64(ptr noundef %tm) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm8xxx_rtc_set_time.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm8xxx_rtc_set_time, %do.end)) #5
          to label %if.then8 [label %do.end], !srcloc !148

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv = trunc i64 %call2 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm8xxx_rtc_set_time.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %conv) #5
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.end
  %conv11 = trunc i64 %call2 to i8
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv11, ptr %value, align 1
  %shr175 = lshr i64 %call2, 8
  %conv11.1 = trunc i64 %shr175 to i8
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv11.1, ptr %0, align 1
  %shr.1176 = lshr i64 %call2, 16
  %conv11.2 = trunc i64 %shr.1176 to i8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv11.2, ptr %1, align 1
  %shr.2174 = lshr i64 %call2, 24
  %conv11.3 = trunc i64 %shr.2174 to i8
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv11.3, ptr %2, align 1
  %ctrl_reg_lock = getelementptr inbounds %struct.pm8xxx_rtc, ptr %6, i32 0, i32 6
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl_reg_lock) #5
  %regmap = getelementptr inbounds %struct.pm8xxx_rtc, ptr %6, i32 0, i32 1
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %alarm_ctrl = getelementptr inbounds %struct.pm8xxx_rtc_regs, ptr %8, i32 0, i32 3
  %17 = ptrtoint ptr %alarm_ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %alarm_ctrl, align 4
  %call23 = call i32 @regmap_read(ptr noundef %16, i32 noundef %18, ptr noundef nonnull %ctrl_reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %do.end.rtc_rw_fail_crit_edge

do.end.rtc_rw_fail_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtc_rw_fail

if.end26:                                         ; preds = %do.end
  %19 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctrl_reg, align 4
  %alarm_en = getelementptr inbounds %struct.pm8xxx_rtc_regs, ptr %8, i32 0, i32 6
  %21 = ptrtoint ptr %alarm_en to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %alarm_en, align 4
  %and27 = and i32 %22, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end41_crit_edge, label %if.then29

if.end26.if.end41_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then29:                                        ; preds = %if.end26
  %neg = xor i32 %22, -1
  %and31 = and i32 %20, %neg
  %23 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and31, ptr %ctrl_reg, align 4
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %26 = ptrtoint ptr %alarm_ctrl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %alarm_ctrl, align 4
  %call34 = call i32 @regmap_write(ptr noundef %25, i32 noundef %27, i32 noundef %and31) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then29.if.end41_crit_edge, label %if.then29.rtc_rw_fail.sink.split_crit_edge

if.then29.rtc_rw_fail.sink.split_crit_edge:       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtc_rw_fail.sink.split

if.then29.if.end41_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.end41:                                         ; preds = %if.then29.if.end41_crit_edge, %if.end26.if.end41_crit_edge
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %8, align 4
  %call43 = call i32 @regmap_read(ptr noundef %29, i32 noundef %31, ptr noundef nonnull %rtc_ctrl_reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end41.rtc_rw_fail_crit_edge

if.end41.rtc_rw_fail_crit_edge:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtc_rw_fail

if.end46:                                         ; preds = %if.end41
  %32 = ptrtoint ptr %rtc_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rtc_ctrl_reg, align 4
  %and47 = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end60_crit_edge, label %if.then49

if.end46.if.end60_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then49:                                        ; preds = %if.end46
  %and50 = and i32 %33, -129
  %34 = ptrtoint ptr %rtc_ctrl_reg to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and50, ptr %rtc_ctrl_reg, align 4
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %37 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %8, align 4
  %call53 = call i32 @regmap_write(ptr noundef %36, i32 noundef %38, i32 noundef %and50) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then49.if.end60_crit_edge, label %if.then49.rtc_rw_fail.sink.split_crit_edge

if.then49.rtc_rw_fail.sink.split_crit_edge:       ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtc_rw_fail.sink.split

if.then49.if.end60_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.end60:                                         ; preds = %if.then49.if.end60_crit_edge, %if.end46.if.end60_crit_edge
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %write = getelementptr inbounds %struct.pm8xxx_rtc_regs, ptr %8, i32 0, i32 1
  %41 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %write, align 4
  %call62 = call i32 @regmap_write(ptr noundef %40, i32 noundef %42, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end68, label %if.end60.rtc_rw_fail.sink.split_crit_edge

if.end60.rtc_rw_fail.sink.split_crit_edge:        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtc_rw_fail.sink.split

if.end68:                                         ; preds = %if.end60
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %45 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %write, align 4
  %add = add i32 %46, 1
  %call72 = call i32 @regmap_bulk_write(ptr noundef %44, i32 noundef %add, ptr noundef %0, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end78, label %if.end68.rtc_rw_fail.sink.split_crit_edge

if.end68.rtc_rw_fail.sink.split_crit_edge:        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtc_rw_fail.sink.split

if.end78:                                         ; preds = %if.end68
  %47 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap, align 4
  %49 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %write, align 4
  %51 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %value, align 1
  %conv82 = zext i8 %52 to i32
  %call83 = call i32 @regmap_write(ptr noundef %48, i32 noundef %50, i32 noundef %conv82) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end89, label %if.end78.rtc_rw_fail.sink.split_crit_edge

if.end78.rtc_rw_fail.sink.split_crit_edge:        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtc_rw_fail.sink.split

if.end89:                                         ; preds = %if.end78
  br i1 %tobool48.not, label %if.end89.if.end101_crit_edge, label %if.then91

if.end89.if.end101_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

if.then91:                                        ; preds = %if.end89
  %53 = ptrtoint ptr %rtc_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rtc_ctrl_reg, align 4
  %or = or i32 %54, 128
  store i32 %or, ptr %rtc_ctrl_reg, align 4
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 4
  %57 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %8, align 4
  %call94 = call i32 @regmap_write(ptr noundef %56, i32 noundef %58, i32 noundef %or) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.then91.if.end101_crit_edge, label %if.then91.rtc_rw_fail.sink.split_crit_edge

if.then91.rtc_rw_fail.sink.split_crit_edge:       ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtc_rw_fail.sink.split

if.then91.if.end101_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

if.end101:                                        ; preds = %if.then91.if.end101_crit_edge, %if.end89.if.end101_crit_edge
  br i1 %tobool28.not, label %if.end101.rtc_rw_fail_crit_edge, label %if.then103

if.end101.rtc_rw_fail_crit_edge:                  ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtc_rw_fail

if.then103:                                       ; preds = %if.end101
  %59 = ptrtoint ptr %alarm_en to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %alarm_en, align 4
  %61 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ctrl_reg, align 4
  %or105 = or i32 %62, %60
  store i32 %or105, ptr %ctrl_reg, align 4
  %63 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap, align 4
  %65 = ptrtoint ptr %alarm_ctrl to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %alarm_ctrl, align 4
  %call108 = call i32 @regmap_write(ptr noundef %64, i32 noundef %66, i32 noundef %or105) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.then103.rtc_rw_fail_crit_edge, label %if.then103.rtc_rw_fail.sink.split_crit_edge

if.then103.rtc_rw_fail.sink.split_crit_edge:      ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtc_rw_fail.sink.split

if.then103.rtc_rw_fail_crit_edge:                 ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtc_rw_fail

rtc_rw_fail.sink.split:                           ; preds = %if.then103.rtc_rw_fail.sink.split_crit_edge, %if.then91.rtc_rw_fail.sink.split_crit_edge, %if.end78.rtc_rw_fail.sink.split_crit_edge, %if.end68.rtc_rw_fail.sink.split_crit_edge, %if.end60.rtc_rw_fail.sink.split_crit_edge, %if.then49.rtc_rw_fail.sink.split_crit_edge, %if.then29.rtc_rw_fail.sink.split_crit_edge
  %.str.22.sink = phi ptr [ @.str.22, %if.then29.rtc_rw_fail.sink.split_crit_edge ], [ @.str.24, %if.then49.rtc_rw_fail.sink.split_crit_edge ], [ @.str.27, %if.end60.rtc_rw_fail.sink.split_crit_edge ], [ @.str.27, %if.end68.rtc_rw_fail.sink.split_crit_edge ], [ @.str.27, %if.end78.rtc_rw_fail.sink.split_crit_edge ], [ @.str.24, %if.then91.rtc_rw_fail.sink.split_crit_edge ], [ @.str.22, %if.then103.rtc_rw_fail.sink.split_crit_edge ]
  %rc.1.ph = phi i32 [ %call34, %if.then29.rtc_rw_fail.sink.split_crit_edge ], [ %call53, %if.then49.rtc_rw_fail.sink.split_crit_edge ], [ %call62, %if.end60.rtc_rw_fail.sink.split_crit_edge ], [ %call72, %if.end68.rtc_rw_fail.sink.split_crit_edge ], [ %call83, %if.end78.rtc_rw_fail.sink.split_crit_edge ], [ %call94, %if.then91.rtc_rw_fail.sink.split_crit_edge ], [ %call108, %if.then103.rtc_rw_fail.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.22.sink) #8
  br label %rtc_rw_fail

rtc_rw_fail:                                      ; preds = %rtc_rw_fail.sink.split, %if.then103.rtc_rw_fail_crit_edge, %if.end101.rtc_rw_fail_crit_edge, %if.end41.rtc_rw_fail_crit_edge, %do.end.rtc_rw_fail_crit_edge
  %rc.1 = phi i32 [ %call23, %do.end.rtc_rw_fail_crit_edge ], [ %call43, %if.end41.rtc_rw_fail_crit_edge ], [ 0, %if.then103.rtc_rw_fail_crit_edge ], [ 0, %if.end101.rtc_rw_fail_crit_edge ], [ %rc.1.ph, %rtc_rw_fail.sink.split ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl_reg_lock, i32 noundef %call18) #5
  br label %cleanup

cleanup:                                          ; preds = %rtc_rw_fail, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %rtc_rw_fail ], [ -13, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rtc_ctrl_reg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl_reg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_rtc_read_alarm(ptr noundef %dev, ptr noundef %alarm) #2 align 64 {
entry:
  %ctrl_reg = alloca i32, align 4
  %value = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl_reg) #5
  %0 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ctrl_reg, align 4, !annotation !146
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #5
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %value, align 4
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %regs1 = getelementptr inbounds %struct.pm8xxx_rtc, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1, align 4
  %regmap = getelementptr inbounds %struct.pm8xxx_rtc, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %alarm_rw = getelementptr inbounds %struct.pm8xxx_rtc_regs, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %alarm_rw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %alarm_rw, align 4
  %call2 = call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef %9, ptr noundef nonnull %value, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 3
  %11 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 2
  %12 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 1
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %value, align 4
  %conv = zext i8 %14 to i32
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %12, align 1
  %conv4 = zext i8 %16 to i32
  %shl = shl nuw nsw i32 %conv4, 8
  %or = or i32 %shl, %conv
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %11, align 2
  %conv6 = zext i8 %18 to i32
  %shl7 = shl nuw nsw i32 %conv6, 16
  %or8 = or i32 %or, %shl7
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %10, align 1
  %conv10 = zext i8 %20 to i32
  %shl11 = shl nuw i32 %conv10, 24
  %or12 = or i32 %or8, %shl11
  %conv13 = zext i32 %or12 to i64
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  call void @rtc_time64_to_tm(i64 noundef %conv13, ptr noundef %time) #5
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %alarm_ctrl = getelementptr inbounds %struct.pm8xxx_rtc_regs, ptr %5, i32 0, i32 3
  %23 = ptrtoint ptr %alarm_ctrl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %alarm_ctrl, align 4
  %call15 = call i32 @regmap_read(ptr noundef %22, i32 noundef %24, ptr noundef nonnull %ctrl_reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end21, label %do.end20

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ctrl_reg, align 4
  %27 = trunc i32 %26 to i8
  %28 = lshr i8 %27, 7
  %29 = ptrtoint ptr %alarm to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %alarm, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm8xxx_rtc_read_alarm.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm8xxx_rtc_read_alarm, %cleanup)) #5
          to label %if.then35 [label %cleanup], !srcloc !148

if.then35:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm8xxx_rtc_read_alarm.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef %time, ptr noundef %time) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end21, %do.end20, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call15, %do.end20 ], [ 0, %if.then35 ], [ 0, %if.end21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl_reg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_rtc_set_alarm(ptr noundef %dev, ptr noundef %alarm) #2 align 64 {
entry:
  %value = alloca [4 x i8], align 1
  %ctrl_reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #5
  %0 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %value, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl_reg) #5
  %3 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %ctrl_reg, align 4, !annotation !146
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %regs1 = getelementptr inbounds %struct.pm8xxx_rtc, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  %call2 = tail call i64 @rtc_tm_to_time64(ptr noundef %time) #5
  %conv4 = trunc i64 %call2 to i8
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv4, ptr %value, align 1
  %shr74 = lshr i64 %call2, 8
  %conv4.1 = trunc i64 %shr74 to i8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4.1, ptr %0, align 1
  %shr.175 = lshr i64 %call2, 16
  %conv4.2 = trunc i64 %shr.175 to i8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv4.2, ptr %1, align 1
  %shr.273 = lshr i64 %call2, 24
  %conv4.3 = trunc i64 %shr.273 to i8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv4.3, ptr %2, align 1
  %ctrl_reg_lock = getelementptr inbounds %struct.pm8xxx_rtc, ptr %5, i32 0, i32 6
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl_reg_lock) #5
  %regmap = getelementptr inbounds %struct.pm8xxx_rtc, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %alarm_rw = getelementptr inbounds %struct.pm8xxx_rtc_regs, ptr %7, i32 0, i32 5
  %14 = ptrtoint ptr %alarm_rw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %alarm_rw, align 4
  %call12 = call i32 @regmap_bulk_write(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %value, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end, label %do.end15

do.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #8
  br label %rtc_rw_fail

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %alarm_ctrl = getelementptr inbounds %struct.pm8xxx_rtc_regs, ptr %7, i32 0, i32 3
  %18 = ptrtoint ptr %alarm_ctrl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %alarm_ctrl, align 4
  %call17 = call i32 @regmap_read(ptr noundef %17, i32 noundef %19, ptr noundef nonnull %ctrl_reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end.rtc_rw_fail_crit_edge

if.end.rtc_rw_fail_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtc_rw_fail

if.end20:                                         ; preds = %if.end
  %20 = ptrtoint ptr %alarm to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %alarm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool21.not = icmp eq i8 %21, 0
  %alarm_en23 = getelementptr inbounds %struct.pm8xxx_rtc_regs, ptr %7, i32 0, i32 6
  %22 = ptrtoint ptr %alarm_en23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %alarm_en23, align 4
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ctrl_reg, align 4
  %or = or i32 %25, %23
  br label %if.end25

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %neg = xor i32 %23, -1
  %26 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ctrl_reg, align 4
  %and24 = and i32 %27, %neg
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then22
  %storemerge = phi i32 [ %and24, %if.else ], [ %or, %if.then22 ]
  %28 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %storemerge, ptr %ctrl_reg, align 4
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %31 = ptrtoint ptr %alarm_ctrl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %alarm_ctrl, align 4
  %call28 = call i32 @regmap_write(ptr noundef %30, i32 noundef %32, i32 noundef %storemerge) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %do.body35, label %do.end33

do.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46) #8
  br label %rtc_rw_fail

do.body35:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm8xxx_rtc_set_alarm.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm8xxx_rtc_set_alarm, %rtc_rw_fail)) #5
          to label %if.then42 [label %rtc_rw_fail], !srcloc !148

if.then42:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm8xxx_rtc_set_alarm.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.48, ptr noundef %time, ptr noundef %time) #5
  br label %rtc_rw_fail

rtc_rw_fail:                                      ; preds = %if.then42, %do.body35, %do.end33, %if.end.rtc_rw_fail_crit_edge, %do.end15
  %rc.0 = phi i32 [ %call12, %do.end15 ], [ %call17, %if.end.rtc_rw_fail_crit_edge ], [ %call28, %do.end33 ], [ 0, %if.then42 ], [ 0, %do.body35 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl_reg_lock, i32 noundef %call9) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl_reg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #5
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_rtc_alarm_irq_enable(ptr noundef %dev, i32 noundef %enable) #2 align 64 {
entry:
  %ctrl_reg = alloca i32, align 4
  %value = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regs1 = getelementptr inbounds %struct.pm8xxx_rtc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl_reg) #5
  %4 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ctrl_reg, align 4, !annotation !146
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #5
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %value, align 4
  %ctrl_reg_lock = getelementptr inbounds %struct.pm8xxx_rtc, ptr %1, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl_reg_lock) #5
  %regmap = getelementptr inbounds %struct.pm8xxx_rtc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %alarm_ctrl = getelementptr inbounds %struct.pm8xxx_rtc_regs, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %alarm_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %alarm_ctrl, align 4
  %call7 = call i32 @regmap_read(ptr noundef %7, i32 noundef %9, ptr noundef nonnull %ctrl_reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %entry.rtc_rw_fail_crit_edge

entry.rtc_rw_fail_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtc_rw_fail

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool8.not = icmp eq i32 %enable, 0
  %alarm_en10 = getelementptr inbounds %struct.pm8xxx_rtc_regs, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %alarm_en10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %alarm_en10, align 4
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctrl_reg, align 4
  %or = or i32 %13, %11
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %neg = xor i32 %11, -1
  %14 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctrl_reg, align 4
  %and = and i32 %15, %neg
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then9
  %storemerge = phi i32 [ %and, %if.else ], [ %or, %if.then9 ]
  %16 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge, ptr %ctrl_reg, align 4
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %19 = ptrtoint ptr %alarm_ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %alarm_ctrl, align 4
  %call14 = call i32 @regmap_write(ptr noundef %18, i32 noundef %20, i32 noundef %storemerge) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end20, label %if.end11.rtc_rw_fail.sink.split_crit_edge

if.end11.rtc_rw_fail.sink.split_crit_edge:        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtc_rw_fail.sink.split

if.end20:                                         ; preds = %if.end11
  br i1 %tobool8.not, label %if.then22, label %if.end20.rtc_rw_fail_crit_edge

if.end20.rtc_rw_fail_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtc_rw_fail

if.then22:                                        ; preds = %if.end20
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %alarm_rw = getelementptr inbounds %struct.pm8xxx_rtc_regs, ptr %3, i32 0, i32 5
  %23 = ptrtoint ptr %alarm_rw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %alarm_rw, align 4
  %call24 = call i32 @regmap_bulk_write(ptr noundef %22, i32 noundef %24, ptr noundef nonnull %value, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then22.rtc_rw_fail_crit_edge, label %if.then22.rtc_rw_fail.sink.split_crit_edge

if.then22.rtc_rw_fail.sink.split_crit_edge:       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtc_rw_fail.sink.split

if.then22.rtc_rw_fail_crit_edge:                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtc_rw_fail

rtc_rw_fail.sink.split:                           ; preds = %if.then22.rtc_rw_fail.sink.split_crit_edge, %if.end11.rtc_rw_fail.sink.split_crit_edge
  %.str.51.sink = phi ptr [ @.str.24, %if.end11.rtc_rw_fail.sink.split_crit_edge ], [ @.str.51, %if.then22.rtc_rw_fail.sink.split_crit_edge ]
  %rc.0.ph = phi i32 [ %call14, %if.end11.rtc_rw_fail.sink.split_crit_edge ], [ %call24, %if.then22.rtc_rw_fail.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.51.sink) #8
  br label %rtc_rw_fail

rtc_rw_fail:                                      ; preds = %rtc_rw_fail.sink.split, %if.then22.rtc_rw_fail_crit_edge, %if.end20.rtc_rw_fail_crit_edge, %entry.rtc_rw_fail_crit_edge
  %rc.0 = phi i32 [ %call7, %entry.rtc_rw_fail_crit_edge ], [ 0, %if.end20.rtc_rw_fail_crit_edge ], [ 0, %if.then22.rtc_rw_fail_crit_edge ], [ %rc.0.ph, %rtc_rw_fail.sink.split ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl_reg_lock, i32 noundef %call4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl_reg) #5
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_rtc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %rtc_alarm_irq = getelementptr inbounds %struct.pm8xxx_rtc, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %rtc_alarm_irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rtc_alarm_irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_rtc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %rtc_alarm_irq = getelementptr inbounds %struct.pm8xxx_rtc, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %rtc_alarm_irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rtc_alarm_irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !129, !131, !133, !135}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @__initcall__kmod_rtc_pm8xxx__231_568_pm8xxx_rtc_driver_init6, !1, !"__initcall__kmod_rtc_pm8xxx__231_568_pm8xxx_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 568, i32 1}
!2 = !{ptr @__exitcall_pm8xxx_rtc_driver_exit, !1, !"__exitcall_pm8xxx_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias232, !4, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 570, i32 1}
!5 = !{ptr @__UNIQUE_ID_description233, !6, !"__UNIQUE_ID_description233", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 571, i32 1}
!7 = !{ptr @__UNIQUE_ID_file234, !8, !"__UNIQUE_ID_file234", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 572, i32 1}
!9 = !{ptr @__UNIQUE_ID_license235, !8, !"__UNIQUE_ID_license235", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_author236, !11, !"__UNIQUE_ID_author236", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 573, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 562, i32 12}
!14 = !{ptr @pm8xxx_rtc_driver, !15, !"pm8xxx_rtc_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 559, i32 31}
!16 = !{ptr @pm8xxx_rtc_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 486, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 490, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @pm8xxx_rtc_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @pm8xxx_rtc_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 499, i32 13}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 524, i32 8}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 526, i32 3}
!33 = !{ptr @pm8xxx_rtc_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @pm8xxx_rtc_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @pm8xxx_rtc_ops, !36, !"pm8xxx_rtc_ops", i1 false, i1 false}
!36 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 341, i32 35}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 186, i32 3}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @pm8xxx_rtc_read_time._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @pm8xxx_rtc_read_time._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @pm8xxx_rtc_read_time._entry.14, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 196, i32 3}
!44 = !{ptr @pm8xxx_rtc_read_time._entry_ptr.15, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @pm8xxx_rtc_read_time._entry.16, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 204, i32 4}
!47 = !{ptr @pm8xxx_rtc_read_time._entry_ptr.17, !46, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 214, i32 2}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @pm8xxx_rtc_read_time.__UNIQUE_ID_ddebug228, !49, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 90, i32 2}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @pm8xxx_rtc_set_time.__UNIQUE_ID_ddebug227, !53, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 108, i32 4}
!58 = !{ptr @pm8xxx_rtc_set_time._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @pm8xxx_rtc_set_time._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 123, i32 4}
!62 = !{ptr @pm8xxx_rtc_set_time._entry.23, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @pm8xxx_rtc_set_time._entry_ptr.25, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 131, i32 3}
!66 = !{ptr @pm8xxx_rtc_set_time._entry.26, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @pm8xxx_rtc_set_time._entry_ptr.28, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @pm8xxx_rtc_set_time._entry.29, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 139, i32 3}
!70 = !{ptr @pm8xxx_rtc_set_time._entry_ptr.30, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @pm8xxx_rtc_set_time._entry.31, !72, !"_entry", i1 false, i1 false}
!72 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 146, i32 3}
!73 = !{ptr @pm8xxx_rtc_set_time._entry_ptr.32, !72, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @pm8xxx_rtc_set_time._entry.33, !75, !"_entry", i1 false, i1 false}
!75 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 155, i32 4}
!76 = !{ptr @pm8xxx_rtc_set_time._entry_ptr.34, !75, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @pm8xxx_rtc_set_time._entry.35, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 164, i32 4}
!79 = !{ptr @pm8xxx_rtc_set_time._entry_ptr.36, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 278, i32 3}
!82 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @pm8xxx_rtc_read_alarm._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @pm8xxx_rtc_read_alarm._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 289, i32 3}
!87 = !{ptr @pm8xxx_rtc_read_alarm._entry.39, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @pm8xxx_rtc_read_alarm._entry_ptr.41, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 294, i32 2}
!91 = !{ptr @pm8xxx_rtc_read_alarm.__UNIQUE_ID_ddebug230, !90, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 240, i32 3}
!94 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @pm8xxx_rtc_set_alarm._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @pm8xxx_rtc_set_alarm._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 255, i32 3}
!99 = !{ptr @pm8xxx_rtc_set_alarm._entry.45, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @pm8xxx_rtc_set_alarm._entry_ptr.47, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 259, i32 2}
!103 = !{ptr @pm8xxx_rtc_set_alarm.__UNIQUE_ID_ddebug229, !102, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 322, i32 3}
!106 = !{ptr @pm8xxx_rtc_alarm_irq_enable._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @pm8xxx_rtc_alarm_irq_enable._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 331, i32 4}
!110 = !{ptr @pm8xxx_rtc_alarm_irq_enable._entry.50, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @pm8xxx_rtc_alarm_irq_enable._entry_ptr.52, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 372, i32 3}
!114 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @pm8xxx_alarm_trigger._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @pm8xxx_alarm_trigger._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 382, i32 3}
!119 = !{ptr @pm8xxx_alarm_trigger._entry.55, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @pm8xxx_alarm_trigger._entry_ptr.57, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 390, i32 3}
!123 = !{ptr @pm8xxx_alarm_trigger._entry.58, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @pm8xxx_alarm_trigger._entry_ptr.60, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @pm8xxx_id_table, !126, !"pm8xxx_id_table", i1 false, i1 false}
!126 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 461, i32 34}
!127 = !{ptr @pm8921_regs, !128, !"pm8921_regs", i1 false, i1 false}
!128 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 418, i32 37}
!129 = !{ptr @pm8058_regs, !130, !"pm8058_regs", i1 false, i1 false}
!130 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 428, i32 37}
!131 = !{ptr @pm8941_regs, !132, !"pm8941_regs", i1 false, i1 false}
!132 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 438, i32 37}
!133 = !{ptr @pmk8350_regs, !134, !"pmk8350_regs", i1 false, i1 false}
!134 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 448, i32 37}
!135 = !{ptr @pm8xxx_rtc_pm_ops, !136, !"pm8xxx_rtc_pm_ops", i1 false, i1 false}
!136 = !{!"../drivers/rtc/rtc-pm8xxx.c", i32 555, i32 8}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{!"auto-init"}
!147 = !{!"branch_weights", i32 1, i32 2000}
!148 = !{i64 2148870516, i64 2148870521, i64 2148870534, i64 2148870578, i64 2148870612, i64 2148870633}
!149 = !{i8 0, i8 2}
