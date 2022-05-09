; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-s5m.c_pt.bc'
source_filename = "../drivers/rtc/rtc-s5m.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.s5m_rtc_reg_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.s5m_rtc_info = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr }
%struct.sec_pmic_dev = type { ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_s5m__294_858_s5m_rtc_driver_init6 = internal global ptr @s5m_rtc_driver_init, section ".initcall6.init", align 4
@s5m_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @s5m_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5m_rtc_pm_ops, ptr null, ptr null }, ptr @s5m_rtc_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_s5m_rtc_driver_exit = internal global ptr @s5m_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [50 x i8] c"rtc_s5m.author=Sangbeom Kim <sbkim73@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [51 x i8] c"rtc_s5m.description=Samsung S5M/S2MPS14 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [33 x i8] c"rtc_s5m.file=drivers/rtc/rtc-s5m\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [20 x i8] c"rtc_s5m.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s5m-rtc\00", [24 x i8] zeroinitializer }, align 32
@s5m_rtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @s5m_rtc_suspend, ptr @s5m_rtc_resume, ptr @s5m_rtc_suspend, ptr @s5m_rtc_resume, ptr @s5m_rtc_suspend, ptr @s5m_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@s5m_rtc_id = internal constant { [5 x %struct.platform_device_id], [40 x i8] } { [5 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"s5m-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id { [20 x i8] c"s2mps13-rtc\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.platform_device_id { [20 x i8] c"s2mps14-rtc\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.platform_device_id { [20 x i8] c"s2mps15-rtc\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.platform_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@s2mps14_rtc_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 26, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@s2mps15_rtc_regs = internal constant { %struct.s5m_rtc_reg_config, [56 x i8] } { %struct.s5m_rtc_reg_config { i32 7, i32 4, i32 0, i32 11, i32 18, i32 2, i32 16, i32 1, i32 2, i32 16 }, [56 x i8] zeroinitializer }, align 32
@s2mps14_rtc_regs = internal constant { %struct.s5m_rtc_reg_config, [56 x i8] } { %struct.s5m_rtc_reg_config { i32 7, i32 4, i32 0, i32 11, i32 18, i32 2, i32 16, i32 1, i32 16, i32 17 }, [56 x i8] zeroinitializer }, align 32
@s2mps13_rtc_regs = internal constant { %struct.s5m_rtc_reg_config, [56 x i8] } { %struct.s5m_rtc_reg_config { i32 7, i32 4, i32 0, i32 11, i32 18, i32 2, i32 16, i32 1, i32 16, i32 18 }, [56 x i8] zeroinitializer }, align 32
@s5m_rtc_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 29, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@s5m_rtc_regs = internal constant { %struct.s5m_rtc_reg_config, [56 x i8] } { %struct.s5m_rtc_reg_config { i32 8, i32 0, i32 25, i32 8, i32 16, i32 28, i32 1, i32 0, i32 9, i32 1 }, [56 x i8] zeroinitializer }, align 32
@s5m_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 745, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Device type %lu is not supported by RTC driver\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s5m_rtc_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/rtc/rtc-s5m.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s5m_rtc_probe._entry_ptr = internal global ptr @s5m_rtc_probe._entry, section ".printk_index", align 4
@s5m_rtc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 752, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to allocate I2C for RTC\0A\00", [32 x i8] zeroinitializer }, align 32
@s5m_rtc_probe._entry_ptr.8 = internal global ptr @s5m_rtc_probe._entry.6, section ".printk_index", align 4
@s5m_rtc_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rtc_s5m:756:(regmap_cfg)->lock\00", [33 x i8] zeroinitializer }, align 32
@s5m_rtc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 760, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to allocate RTC register map: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@s5m_rtc_probe._entry_ptr.12 = internal global ptr @s5m_rtc_probe._entry.10, section ".printk_index", align 4
@s5m_rtc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 772, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get virtual IRQ %d\0A\00", [34 x i8] zeroinitializer }, align 32
@s5m_rtc_probe._entry_ptr.15 = internal global ptr @s5m_rtc_probe._entry.13, section ".printk_index", align 4
@s5m_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @s5m_rtc_read_time, ptr @s5m_rtc_set_time, ptr @s5m_rtc_read_alarm, ptr @s5m_rtc_set_alarm, ptr null, ptr @s5m_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-alarm0\00", [21 x i8] zeroinitializer }, align 32
@s5m_rtc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 805, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to request alarm IRQ: %d: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@s5m_rtc_probe._entry_ptr.19 = internal global ptr @s5m_rtc_probe._entry.17, section ".printk_index", align 4
@s5m8767_rtc_init_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 665, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: fail to change UDR time: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s5m8767_rtc_init_reg\00", [43 x i8] zeroinitializer }, align 32
@s5m8767_rtc_init_reg._entry_ptr = internal global ptr @s5m8767_rtc_init_reg._entry, section ".printk_index", align 4
@s5m8767_rtc_init_reg._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 698, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: fail to write controlm reg(%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@s5m8767_rtc_init_reg._entry_ptr.24 = internal global ptr @s5m8767_rtc_init_reg._entry.22, section ".printk_index", align 4
@s5m8767_rtc_set_alarm_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 296, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: fail to read update reg(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s5m8767_rtc_set_alarm_reg\00", [38 x i8] zeroinitializer }, align 32
@s5m8767_rtc_set_alarm_reg._entry_ptr = internal global ptr @s5m8767_rtc_set_alarm_reg._entry, section ".printk_index", align 4
@s5m8767_rtc_set_alarm_reg._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 318, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: fail to write update reg(%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@s5m8767_rtc_set_alarm_reg._entry_ptr.29 = internal global ptr @s5m8767_rtc_set_alarm_reg._entry.27, section ".printk_index", align 4
@s5m8767_wait_for_udr_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 226, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"waiting for UDR update, reached max number of retries\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"s5m8767_wait_for_udr_update\00", [36 x i8] zeroinitializer }, align 32
@s5m8767_wait_for_udr_update._entry_ptr = internal global ptr @s5m8767_wait_for_udr_update._entry, section ".printk_index", align 4
@s5m_rtc_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 378, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to prepare registers for time reading: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s5m_rtc_read_time\00", [46 x i8] zeroinitializer }, align 32
@s5m_rtc_read_time._entry_ptr = internal global ptr @s5m_rtc_read_time._entry, section ".printk_index", align 4
@s5m_rtc_read_time.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.33, ptr @.str.3, ptr @.str.35, i8 0, i8 100, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rtc_s5m\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: %ptR(%d)\0A\00", [18 x i8] zeroinitializer }, align 32
@s5m_rtc_set_time.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.36, ptr @.str.3, ptr @.str.35, i8 0, i8 107, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5m_rtc_set_time\00", [47 x i8] zeroinitializer }, align 32
@s5m8767_rtc_set_time_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 271, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to read update reg(%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s5m8767_rtc_set_time_reg\00", [39 x i8] zeroinitializer }, align 32
@s5m8767_rtc_set_time_reg._entry_ptr = internal global ptr @s5m8767_rtc_set_time_reg._entry, section ".printk_index", align 4
@s5m8767_rtc_set_time_reg._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 279, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to write update reg(%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@s5m8767_rtc_set_time_reg._entry_ptr.41 = internal global ptr @s5m8767_rtc_set_time_reg._entry.39, section ".printk_index", align 4
@s5m_rtc_read_alarm.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.42, ptr @.str.3, ptr @.str.35, i8 0, i8 120, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s5m_rtc_read_alarm\00", [45 x i8] zeroinitializer }, align 32
@s5m_rtc_set_alarm.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.43, ptr @.str.3, ptr @.str.35, i8 0, i8 -106, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s5m_rtc_set_alarm\00", [46 x i8] zeroinitializer }, align 32
@s5m_rtc_stop_alarm.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.44, ptr @.str.3, ptr @.str.35, i8 0, i8 125, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s5m_rtc_stop_alarm\00", [45 x i8] zeroinitializer }, align 32
@s5m_rtc_start_alarm.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.45, ptr @.str.3, ptr @.str.35, i8 0, i8 -121, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s5m_rtc_start_alarm\00", [44 x i8] zeroinitializer }, align 32
@switch.table.s5m_rtc_probe = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @s5m_rtc_regs, ptr @s5m_rtc_regs, ptr @s2mps15_rtc_regs, ptr @s2mps15_rtc_regs, ptr @s2mps13_rtc_regs, ptr @s2mps14_rtc_regs, ptr @s2mps15_rtc_regs], [36 x i8] zeroinitializer }, align 32
@switch.table.s5m_rtc_probe.46 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @s5m_rtc_regmap_config, ptr @s5m_rtc_regmap_config, ptr @s2mps14_rtc_regmap_config, ptr @s2mps14_rtc_regmap_config, ptr @s2mps14_rtc_regmap_config, ptr @s2mps14_rtc_regmap_config, ptr @s2mps14_rtc_regmap_config], [36 x i8] zeroinitializer }, align 32
@switch.table.s5m_rtc_probe.47 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 9, i32 12, i32 10, i32 10, i32 10, i32 10, i32 10], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.48 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.49 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.50 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.51 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.52 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.53 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.54 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.55 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 5, i64 6, i64 7]
@___asan_gen_.56 = private unnamed_addr constant [15 x i8] c"s5m_rtc_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 849, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 851, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"s5m_rtc_pm_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 838, i32 8 }
@___asan_gen_.65 = private unnamed_addr constant [11 x i8] c"s5m_rtc_id\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 840, i32 40 }
@___asan_gen_.68 = private unnamed_addr constant [26 x i8] c"s2mps14_rtc_regmap_config\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 166, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"s2mps15_rtc_regs\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 134, i32 40 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"s2mps14_rtc_regs\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 117, i32 40 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"s2mps13_rtc_regs\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 103, i32 40 }
@___asan_gen_.80 = private unnamed_addr constant [22 x i8] c"s5m_rtc_regmap_config\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 159, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant [13 x i8] c"s5m_rtc_regs\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 89, i32 40 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 743, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 752, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 756, i32 17 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 759, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 771, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant [12 x i8] c"s5m_rtc_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 644, i32 35 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 801, i32 29 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 804, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 664, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 697, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 295, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 317, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 226, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 376, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 403, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 431, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 271, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 279, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 483, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 603, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 500, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.222 = private constant [25 x i8] c"../drivers/rtc/rtc-s5m.c\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 543, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [27 x i8] c"switch.table.s5m_rtc_probe\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [30 x i8] c"switch.table.s5m_rtc_probe.46\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [30 x i8] c"switch.table.s5m_rtc_probe.47\00", align 1
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_s5m_rtc_driver_exit, ptr @__initcall__kmod_rtc_s5m__294_858_s5m_rtc_driver_init6, ptr @s5m8767_rtc_init_reg._entry, ptr @s5m8767_rtc_init_reg._entry.22, ptr @s5m8767_rtc_init_reg._entry_ptr, ptr @s5m8767_rtc_init_reg._entry_ptr.24, ptr @s5m8767_rtc_set_alarm_reg._entry, ptr @s5m8767_rtc_set_alarm_reg._entry.27, ptr @s5m8767_rtc_set_alarm_reg._entry_ptr, ptr @s5m8767_rtc_set_alarm_reg._entry_ptr.29, ptr @s5m8767_rtc_set_time_reg._entry, ptr @s5m8767_rtc_set_time_reg._entry.39, ptr @s5m8767_rtc_set_time_reg._entry_ptr, ptr @s5m8767_rtc_set_time_reg._entry_ptr.41, ptr @s5m8767_wait_for_udr_update._entry, ptr @s5m8767_wait_for_udr_update._entry_ptr, ptr @s5m_rtc_driver_exit, ptr @s5m_rtc_probe._entry, ptr @s5m_rtc_probe._entry.10, ptr @s5m_rtc_probe._entry.13, ptr @s5m_rtc_probe._entry.17, ptr @s5m_rtc_probe._entry.6, ptr @s5m_rtc_probe._entry_ptr, ptr @s5m_rtc_probe._entry_ptr.12, ptr @s5m_rtc_probe._entry_ptr.15, ptr @s5m_rtc_probe._entry_ptr.19, ptr @s5m_rtc_probe._entry_ptr.8, ptr @s5m_rtc_read_time._entry, ptr @s5m_rtc_read_time._entry_ptr, ptr @s5m_rtc_driver, ptr @.str, ptr @s5m_rtc_pm_ops, ptr @s5m_rtc_id, ptr @s2mps14_rtc_regmap_config, ptr @s2mps15_rtc_regs, ptr @s2mps14_rtc_regs, ptr @s2mps13_rtc_regs, ptr @s5m_rtc_regmap_config, ptr @s5m_rtc_regs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @s5m_rtc_probe._key, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @s5m_rtc_ops, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @switch.table.s5m_rtc_probe, ptr @switch.table.s5m_rtc_probe.46, ptr @switch.table.s5m_rtc_probe.47], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m_rtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m_rtc_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps14_rtc_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps15_rtc_regs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps14_rtc_regs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps13_rtc_regs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m_rtc_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m_rtc_regs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m_rtc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m_rtc_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m_rtc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m_rtc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m_rtc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_rtc_init_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_rtc_init_reg._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_rtc_set_alarm_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_rtc_set_alarm_reg._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_wait_for_udr_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m_rtc_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_rtc_set_time_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_rtc_set_time_reg._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s5m_rtc_probe to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s5m_rtc_probe.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s5m_rtc_probe.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s5m_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @s5m_rtc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s5m_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @s5m_rtc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5m_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %data.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %4 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data, align 4
  %switch.tableidx = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 7
  br i1 %8, label %switch.hole_check, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %7) #11
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 115, %switch.maskindex
  %9 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %switch.lobit.not = icmp eq i8 %9, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.s5m_rtc_probe, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep172 = getelementptr inbounds [7 x ptr], ptr @switch.table.s5m_rtc_probe.46, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep172 to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load173 = load ptr, ptr %switch.gep172, align 4
  %switch.gep174 = getelementptr inbounds [7 x i32], ptr @switch.table.s5m_rtc_probe.47, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep174 to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load175 = load i32, ptr %switch.gep174, align 4
  %regs10 = getelementptr inbounds %struct.s5m_rtc_info, ptr %call.i, i32 0, i32 8
  %13 = ptrtoint ptr %regs10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %switch.load, ptr %regs10, align 4
  %i2c = getelementptr inbounds %struct.sec_pmic_dev, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter, align 8
  %call15 = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %dev, ptr noundef %17, i16 noundef zeroext 6) #8
  %i2c16 = getelementptr inbounds %struct.s5m_rtc_info, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %i2c16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call15, ptr %i2c16, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end22, label %if.end26

do.end22:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  %19 = ptrtoint ptr %i2c16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c16, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %cleanup

if.end26:                                         ; preds = %switch.lookup
  %call28 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %call15, ptr noundef nonnull %switch.load173, ptr noundef nonnull @s5m_rtc_probe._key, ptr noundef nonnull @.str.9) #8
  %regmap = getelementptr inbounds %struct.s5m_rtc_info, ptr %call.i, i32 0, i32 3
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call28, ptr %regmap, align 4
  %cmp.i164 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i164, label %if.then31, label %if.end38

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %call28 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %23) #11
  br label %cleanup

if.end38:                                         ; preds = %if.end26
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev, ptr %call.i, align 4
  %s5m87xx41 = getelementptr inbounds %struct.s5m_rtc_info, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %s5m87xx41 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %3, ptr %s5m87xx41, align 4
  %26 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %id_entry, align 4
  %driver_data43 = getelementptr inbounds %struct.platform_device_id, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %driver_data43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %driver_data43, align 4
  %device_type = getelementptr inbounds %struct.s5m_rtc_info, ptr %call.i, i32 0, i32 6
  %30 = ptrtoint ptr %device_type to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %device_type, align 4
  %irq_data = getelementptr inbounds %struct.sec_pmic_dev, ptr %3, i32 0, i32 6
  %31 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %irq_data, align 4
  %tobool44.not = icmp eq ptr %32, null
  br i1 %tobool44.not, label %if.end38.if.end55_crit_edge, label %if.then45

if.end38.if.end55_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then45:                                        ; preds = %if.end38
  %call47 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %32, i32 noundef %switch.load175) #8
  %irq = getelementptr inbounds %struct.s5m_rtc_info, ptr %call.i, i32 0, i32 5
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call47, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call47)
  %cmp = icmp slt i32 %call47, 1
  br i1 %cmp, label %do.end52, label %if.end55thread-pre-split

do.end52:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %switch.load175) #11
  br label %cleanup

if.end55thread-pre-split:                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr = load i32, ptr %device_type, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.end55thread-pre-split, %if.end38.if.end55_crit_edge
  %35 = phi i32 [ %.pr, %if.end55thread-pre-split ], [ %29, %if.end38.if.end55_crit_edge ]
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %37 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %37, align 1, !annotation !126
  %39 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i32 %35, label %if.end55.s5m8767_rtc_init_reg.exit.thread_crit_edge [
    i32 1, label %if.end55.sw.bb.i_crit_edge
    i32 2, label %if.end55.sw.bb.i_crit_edge176
    i32 7, label %if.end55.sw.bb4.i_crit_edge
    i32 6, label %if.end55.sw.bb4.i_crit_edge177
    i32 5, label %if.end55.sw.bb4.i_crit_edge178
  ]

if.end55.sw.bb4.i_crit_edge178:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4.i

if.end55.sw.bb4.i_crit_edge177:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4.i

if.end55.sw.bb4.i_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4.i

if.end55.sw.bb.i_crit_edge176:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end55.sw.bb.i_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end55.s5m8767_rtc_init_reg.exit.thread_crit_edge: ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5m8767_rtc_init_reg.exit.thread

sw.bb.i:                                          ; preds = %if.end55.sw.bb.i_crit_edge, %if.end55.sw.bb.i_crit_edge176
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 28, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i165 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i165, label %do.end.i, label %sw.bb.i.if.end.i_crit_edge

sw.bb.i.if.end.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %call.i.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %sw.bb.i.if.end.i_crit_edge
  %44 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 3, ptr %data.i, align 1
  %45 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 2, ptr %37, align 1
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 4
  %call3.i = call i32 @regmap_raw_write(ptr noundef %47, i32 noundef 24, ptr noundef nonnull %data.i, i32 noundef 2) #8
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end55.sw.bb4.i_crit_edge, %if.end55.sw.bb4.i_crit_edge177, %if.end55.sw.bb4.i_crit_edge178
  %48 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 2, ptr %data.i, align 1
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %regs.i = getelementptr inbounds %struct.s5m_rtc_info, ptr %call.i, i32 0, i32 8
  %51 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i, align 4
  %ctrl.i = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ctrl.i, align 4
  %call8.i = tail call i32 @regmap_write(ptr noundef %50, i32 noundef %54, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %sw.epilog.thread.i, label %if.end12.i

sw.epilog.thread.i:                               ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #10
  %rtc_24hr_mode38.i = getelementptr inbounds %struct.s5m_rtc_info, ptr %call.i, i32 0, i32 7
  %55 = ptrtoint ptr %rtc_24hr_mode38.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %rtc_24hr_mode38.i, align 4
  br label %do.end19.i

if.end12.i:                                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i = tail call fastcc i32 @s5m8767_rtc_set_alarm_reg(ptr noundef nonnull %call.i) #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end12.i, %if.end.i
  %ret.0.i = phi i32 [ %call13.i, %if.end12.i ], [ %call3.i, %if.end.i ]
  %rtc_24hr_mode.i = getelementptr inbounds %struct.s5m_rtc_info, ptr %call.i, i32 0, i32 7
  %56 = ptrtoint ptr %rtc_24hr_mode.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %rtc_24hr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp14.i = icmp slt i32 %ret.0.i, 0
  br i1 %cmp14.i, label %sw.epilog.i.do.end19.i_crit_edge, label %s5m8767_rtc_init_reg.exit

sw.epilog.i.do.end19.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19.i

do.end19.i:                                       ; preds = %sw.epilog.i.do.end19.i_crit_edge, %sw.epilog.thread.i
  %ret.040.i = phi i32 [ %call8.i, %sw.epilog.thread.i ], [ %ret.0.i, %sw.epilog.i.do.end19.i_crit_edge ]
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef %ret.040.i) #11
  br label %s5m8767_rtc_init_reg.exit.thread

s5m8767_rtc_init_reg.exit.thread:                 ; preds = %do.end19.i, %if.end55.s5m8767_rtc_init_reg.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end55.s5m8767_rtc_init_reg.exit.thread_crit_edge ], [ %ret.040.i, %do.end19.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  br label %cleanup

s5m8767_rtc_init_reg.exit:                        ; preds = %sw.epilog.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool57.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool57.not, label %if.end59, label %s5m8767_rtc_init_reg.exit.cleanup_crit_edge

s5m8767_rtc_init_reg.exit.cleanup_crit_edge:      ; preds = %s5m8767_rtc_init_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end59:                                         ; preds = %s5m8767_rtc_init_reg.exit
  %call61 = call ptr @devm_rtc_allocate_device(ptr noundef %dev) #8
  %rtc_dev = getelementptr inbounds %struct.s5m_rtc_info, ptr %call.i, i32 0, i32 4
  %59 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call61, ptr %rtc_dev, align 4
  %cmp.i166 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166, label %if.then64, label %if.end67

if.then64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %call61 to i32
  br label %cleanup

if.end67:                                         ; preds = %if.end59
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call61, i32 0, i32 3
  %61 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @s5m_rtc_ops, ptr %ops, align 8
  %62 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %device_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp70 = icmp eq i32 %63, 1
  %64 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rtc_dev, align 4
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %65, i32 0, i32 22
  %. = select i1 %cmp70, i64 -62167219200, i64 946684800
  %.171 = select i1 %cmp70, i64 253402300799, i64 4102444799
  %66 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %., ptr %range_min, align 8
  %67 = load ptr, ptr %rtc_dev, align 4
  %range_max77 = getelementptr inbounds %struct.rtc_device, ptr %67, i32 0, i32 23
  %68 = ptrtoint ptr %range_max77 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %.171, ptr %range_max77, align 8
  %irq79 = getelementptr inbounds %struct.s5m_rtc_info, ptr %call.i, i32 0, i32 5
  %69 = ptrtoint ptr %irq79 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %irq79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool80.not = icmp eq i32 %70, 0
  br i1 %tobool80.not, label %if.then81, label %if.else83

if.then81:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rtc_dev, align 4
  %features = getelementptr inbounds %struct.rtc_device, ptr %72, i32 0, i32 21
  call void @_clear_bit(i32 noundef 0, ptr noundef %features) #8
  br label %if.end97

if.else83:                                        ; preds = %if.end67
  %call86 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %70, ptr noundef null, ptr noundef nonnull @s5m_rtc_alarm_irq, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %do.end91, label %if.end94

do.end91:                                         ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %irq79 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %irq79, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %74, i32 noundef %call86) #11
  br label %cleanup

if.end94:                                         ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #10
  %call96 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #8
  br label %if.end97

if.end97:                                         ; preds = %if.end94, %if.then81
  %75 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rtc_dev, align 4
  %call99 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %76) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %do.end91, %if.then64, %s5m8767_rtc_init_reg.exit.cleanup_crit_edge, %s5m8767_rtc_init_reg.exit.thread, %do.end52, %if.then31, %do.end22, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %21, %do.end22 ], [ %23, %if.then31 ], [ -22, %do.end52 ], [ %60, %if.then64 ], [ %call86, %do.end91 ], [ %call99, %if.end97 ], [ -12, %entry.cleanup_crit_edge ], [ %ret.0.i, %s5m8767_rtc_init_reg.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %s5m8767_rtc_init_reg.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_i2c_new_dummy_device(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5m_rtc_alarm_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rtc_dev = getelementptr inbounds %struct.s5m_rtc_info, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtc_dev, align 4
  tail call void @rtc_update_irq(ptr noundef %1, i32 noundef 1, i32 noundef 160) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5m8767_rtc_set_alarm_reg(ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !126
  %regmap = getelementptr inbounds %struct.s5m_rtc_info, ptr %info, i32 0, i32 3
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %regs = getelementptr inbounds %struct.s5m_rtc_info, ptr %info, i32 0, i32 8
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %udr_update = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %udr_update to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %udr_update, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %6, ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %write_alarm_udr_mask = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %write_alarm_udr_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %write_alarm_udr_mask, align 4
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data, align 4
  %or = or i32 %14, %12
  store i32 %or, ptr %data, align 4
  %device_type = getelementptr inbounds %struct.s5m_rtc_info, ptr %info, i32 0, i32 6
  %15 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %device_type, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %16, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 2, label %if.end.sw.bb_crit_edge41
    i32 7, label %if.end.sw.epilog_crit_edge
    i32 6, label %if.end.sw.epilog_crit_edge42
    i32 5, label %if.end.sw.epilog_crit_edge43
  ]

if.end.sw.epilog_crit_edge43:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.sw.epilog_crit_edge42:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.sw.bb_crit_edge41:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge41
  %and = and i32 %or, -9
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %data, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge42, %if.end.sw.epilog_crit_edge43
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %udr_update5 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %10, i32 0, i32 5
  %21 = ptrtoint ptr %udr_update5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %udr_update5, align 4
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data, align 4
  %call6 = call i32 @regmap_write(ptr noundef %20, i32 noundef %22, i32 noundef %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end11, label %if.end13

do.end11:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, i32 noundef %call6) #11
  br label %cleanup

if.end13:                                         ; preds = %sw.epilog
  %call14 = call fastcc i32 @s5m8767_wait_for_udr_update(ptr noundef %info)
  %27 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %device_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %28)
  %cmp16 = icmp eq i32 %28, 5
  br i1 %cmp16, label %if.then17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %udr_update20 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %udr_update20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %udr_update20, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef %34, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end13.cleanup_crit_edge, %do.end11, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call6, %do.end11 ], [ -22, %if.end.cleanup_crit_edge ], [ %call14, %if.then17 ], [ %call14, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5m8767_wait_for_udr_update(ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !126
  %regmap = getelementptr inbounds %struct.s5m_rtc_info, ptr %info, i32 0, i32 3
  %regs = getelementptr inbounds %struct.s5m_rtc_info, ptr %info, i32 0, i32 8
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %udr_update = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %udr_update to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %udr_update, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %6, ptr noundef nonnull %data) #8
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data, align 4
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %autoclear_udr_mask = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %autoclear_udr_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %autoclear_udr_mask, align 4
  %and = and i32 %12, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  %or.cond = select i1 %tobool2.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %do.body.1, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body.1:                                        ; preds = %entry
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %udr_update.1 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %udr_update.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %udr_update.1, align 4
  %call.1 = call i32 @regmap_read(ptr noundef %14, i32 noundef %18, ptr noundef nonnull %data) #8
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data, align 4
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %autoclear_udr_mask.1 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %autoclear_udr_mask.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %autoclear_udr_mask.1, align 4
  %and.1 = and i32 %24, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool2.not.1 = icmp ne i32 %and.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool3.not.1 = icmp eq i32 %call.1, 0
  %or.cond.1 = select i1 %tobool2.not.1, i1 %tobool3.not.1, i1 false
  br i1 %or.cond.1, label %do.body.2, label %do.body.1.if.end_crit_edge

do.body.1.if.end_crit_edge:                       ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body.2:                                        ; preds = %do.body.1
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %udr_update.2 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %udr_update.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %udr_update.2, align 4
  %call.2 = call i32 @regmap_read(ptr noundef %26, i32 noundef %30, ptr noundef nonnull %data) #8
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data, align 4
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %autoclear_udr_mask.2 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %autoclear_udr_mask.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %autoclear_udr_mask.2, align 4
  %and.2 = and i32 %36, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool2.not.2 = icmp ne i32 %and.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool3.not.2 = icmp eq i32 %call.2, 0
  %or.cond.2 = select i1 %tobool2.not.2, i1 %tobool3.not.2, i1 false
  br i1 %or.cond.2, label %do.body.3, label %do.body.2.if.end_crit_edge

do.body.2.if.end_crit_edge:                       ; preds = %do.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body.3:                                        ; preds = %do.body.2
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 4
  %udr_update.3 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %udr_update.3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %udr_update.3, align 4
  %call.3 = call i32 @regmap_read(ptr noundef %38, i32 noundef %42, ptr noundef nonnull %data) #8
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data, align 4
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  %autoclear_udr_mask.3 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %autoclear_udr_mask.3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %autoclear_udr_mask.3, align 4
  %and.3 = and i32 %48, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool2.not.3 = icmp ne i32 %and.3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool3.not.3 = icmp eq i32 %call.3, 0
  %or.cond.3 = select i1 %tobool2.not.3, i1 %tobool3.not.3, i1 false
  br i1 %or.cond.3, label %do.end7.critedge, label %do.body.3.if.end_crit_edge

do.body.3.if.end_crit_edge:                       ; preds = %do.body.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end7.critedge:                                 ; preds = %do.body.3
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %51 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs, align 4
  %udr_update.4 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %udr_update.4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %udr_update.4, align 4
  %call.4 = call i32 @regmap_read(ptr noundef %50, i32 noundef %54, ptr noundef nonnull %data) #8
  %55 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.30) #11
  br label %if.end

if.end:                                           ; preds = %do.end7.critedge, %do.body.3.if.end_crit_edge, %do.body.2.if.end_crit_edge, %do.body.1.if.end_crit_edge, %entry.if.end_crit_edge
  %call17 = phi i32 [ %call.4, %do.end7.critedge ], [ %call, %entry.if.end_crit_edge ], [ %call.1, %do.body.1.if.end_crit_edge ], [ %call.2, %do.body.2.if.end_crit_edge ], [ %call.3, %do.body.3.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #8
  ret i32 %call17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5m_rtc_read_time(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  %data = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #8
  %2 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 5
  %7 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 6
  %regs = getelementptr inbounds %struct.s5m_rtc_info, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %data, align 8
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %read_time_udr_mask = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %read_time_udr_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %read_time_udr_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then:                                          ; preds = %entry
  %regmap = getelementptr inbounds %struct.s5m_rtc_info, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %udr_update = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %10, i32 0, i32 5
  %15 = ptrtoint ptr %udr_update to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %udr_update, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %16, i32 noundef %12, i32 noundef %12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.then.if.end9_crit_edge, label %do.end

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %call.i) #11
  br label %cleanup

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %regmap10 = getelementptr inbounds %struct.s5m_rtc_info, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap10, align 4
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %time = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %time, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %20, align 4
  %call13 = call i32 @regmap_bulk_read(ptr noundef %18, i32 noundef %22, ptr noundef nonnull %data, i32 noundef %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %device_type = getelementptr inbounds %struct.s5m_rtc_info, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %device_type, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %26, label %if.end15.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %if.end15.sw.bb17_crit_edge
    i32 7, label %if.end15.sw.bb17_crit_edge50
    i32 6, label %if.end15.sw.bb17_crit_edge51
    i32 5, label %if.end15.sw.bb17_crit_edge52
  ]

if.end15.sw.bb17_crit_edge52:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17

if.end15.sw.bb17_crit_edge51:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17

if.end15.sw.bb17_crit_edge50:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17

if.end15.sw.bb17_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @s5m8763_data_to_tm(ptr noundef nonnull %data, ptr noundef %tm)
  br label %do.body19

sw.bb17:                                          ; preds = %if.end15.sw.bb17_crit_edge, %if.end15.sw.bb17_crit_edge50, %if.end15.sw.bb17_crit_edge51, %if.end15.sw.bb17_crit_edge52
  %rtc_24hr_mode = getelementptr inbounds %struct.s5m_rtc_info, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %rtc_24hr_mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rtc_24hr_mode, align 4
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %data, align 8
  %32 = and i8 %31, 127
  %and.i = zext i8 %32 to i32
  %33 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and.i, ptr %tm, align 4
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %2, align 1
  %36 = and i8 %35, 127
  %and3.i = zext i8 %36 to i32
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %37 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and3.i, ptr %tm_min.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %3, align 2
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  %40 = and i8 %39, 31
  %and6.i = zext i8 %40 to i32
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %41 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and6.i, ptr %tm_hour.i, align 4
  br label %s5m8767_data_to_tm.exit

if.else.i:                                        ; preds = %sw.bb17
  %42 = and i8 %39, 15
  %and9.i = zext i8 %42 to i32
  %tm_hour10.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %43 = ptrtoint ptr %tm_hour10.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and9.i, ptr %tm_hour10.i, align 4
  %44 = and i8 %39, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool14.not.i = icmp eq i8 %44, 0
  br i1 %tobool14.not.i, label %if.else.i.s5m8767_data_to_tm.exit_crit_edge, label %if.then15.i

if.else.i.s5m8767_data_to_tm.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5m8767_data_to_tm.exit

if.then15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add nuw nsw i32 %and9.i, 12
  %45 = ptrtoint ptr %tm_hour10.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add.i, ptr %tm_hour10.i, align 4
  br label %s5m8767_data_to_tm.exit

s5m8767_data_to_tm.exit:                          ; preds = %if.then15.i, %if.else.i.s5m8767_data_to_tm.exit_crit_edge, %if.then.i
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %4, align 1
  %48 = and i8 %47, 127
  %49 = call i8 @llvm.cttz.i8(i8 %48, i1 true) #8, !range !127
  %narrow49.i = add nuw nsw i8 %49, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %iszero.i = icmp eq i8 %48, 0
  %narrow50.i = select i1 %iszero.i, i8 0, i8 %narrow49.i
  %ffs.i = zext i8 %narrow50.i to i32
  %tm_wday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %50 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %ffs.i, ptr %tm_wday.i, align 4
  %51 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %5, align 4
  %53 = and i8 %52, 31
  %and23.i = zext i8 %53 to i32
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %54 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and23.i, ptr %tm_mday.i, align 4
  %55 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %6, align 1
  %57 = and i8 %56, 15
  %and26.i = zext i8 %57 to i32
  %sub.i = add nsw i32 %and26.i, -1
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %58 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub.i, ptr %tm_mon.i, align 4
  %59 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %7, align 2
  %61 = and i8 %60, 127
  %narrow.i = add nuw i8 %61, 100
  %add30.i = zext i8 %narrow.i to i32
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %62 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add30.i, ptr %tm_year.i, align 4
  %tm_yday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 7
  %63 = ptrtoint ptr %tm_yday.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %tm_yday.i, align 4
  %tm_isdst.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 8
  %64 = ptrtoint ptr %tm_isdst.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %tm_isdst.i, align 4
  br label %do.body19

do.body19:                                        ; preds = %s5m8767_data_to_tm.exit, %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5m_rtc_read_time.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s5m_rtc_read_time, %cleanup)) #8
          to label %if.then25 [label %cleanup], !srcloc !128

if.then25:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %65 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tm_wday, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s5m_rtc_read_time.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33, ptr noundef %tm, i32 noundef %66) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %do.body19, %if.end15.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call13, %if.end9.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ 0, %if.then25 ], [ 0, %do.body19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5m_rtc_set_time(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  %data.i = alloca i32, align 4
  %data = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #8
  %2 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 5
  %7 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 6
  %device_type = getelementptr inbounds %struct.s5m_rtc_info, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %data, align 8
  %9 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %device_type, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %10, label %entry.cleanup_crit_edge [
    i32 1, label %cond.end.i
    i32 2, label %entry.sw.bb1_crit_edge
    i32 7, label %entry.sw.bb1_crit_edge43
    i32 6, label %entry.sw.bb1_crit_edge44
    i32 5, label %entry.sw.bb1_crit_edge45
  ]

entry.sw.bb1_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.end.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 7
  %13 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm, align 4
  %call.i = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #12
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call.i, ptr %data, align 8
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %16 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_min.i, align 4
  %call16.i = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #12
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call16.i, ptr %2, align 1
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %19 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_hour.i, align 4
  %call32.i = tail call zeroext i8 @_bin2bcd(i32 noundef %20) #12
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call32.i, ptr %3, align 2
  %tm_wday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %22 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_wday.i, align 4
  %conv38.i = trunc i32 %23 to i8
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv38.i, ptr %4, align 1
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %25 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_mday.i, align 4
  %call50.i = tail call zeroext i8 @_bin2bcd(i32 noundef %26) #12
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %call50.i, ptr %5, align 4
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %28 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_mon.i, align 4
  %call66.i = tail call zeroext i8 @_bin2bcd(i32 noundef %29) #12
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call66.i, ptr %6, align 1
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %31 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tm_year.i, align 4
  %rem72.i = srem i32 %32, 100
  %call86.i = tail call zeroext i8 @_bin2bcd(i32 noundef %rem72.i) #12
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %call86.i, ptr %7, align 2
  %add93.i = add i32 %32, 1900
  %div94.i = sdiv i32 %add93.i, 100
  %call111.i = tail call zeroext i8 @_bin2bcd(i32 noundef %div94.i) #12
  %34 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %call111.i, ptr %12, align 1
  br label %do.body

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge43, %entry.sw.bb1_crit_edge44, %entry.sw.bb1_crit_edge45
  %35 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tm, align 4
  %conv.i31 = trunc i32 %36 to i8
  %37 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv.i31, ptr %data, align 8
  %tm_min.i32 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %38 = ptrtoint ptr %tm_min.i32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tm_min.i32, align 4
  %conv1.i = trunc i32 %39 to i8
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv1.i, ptr %2, align 1
  %tm_hour.i33 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %41 = ptrtoint ptr %tm_hour.i33 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tm_hour.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %42)
  %cmp.i = icmp sgt i32 %42, 11
  %43 = trunc i32 %42 to i8
  %conv8.i = and i8 %43, -65
  %masksel.i = select i1 %cmp.i, i8 64, i8 0
  %conv8.sink.i = or i8 %conv8.i, %masksel.i
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv8.sink.i, ptr %3, align 2
  %tm_wday.i34 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %45 = ptrtoint ptr %tm_wday.i34 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tm_wday.i34, align 4
  %shl.i35 = shl nuw i32 1, %46
  %conv10.i = trunc i32 %shl.i35 to i8
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv10.i, ptr %4, align 1
  %tm_mday.i36 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %48 = ptrtoint ptr %tm_mday.i36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tm_mday.i36, align 4
  %conv12.i = trunc i32 %49 to i8
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv12.i, ptr %5, align 4
  %tm_mon.i37 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %51 = ptrtoint ptr %tm_mon.i37 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tm_mon.i37, align 4
  %53 = trunc i32 %52 to i8
  %conv14.i = add i8 %53, 1
  %54 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv14.i, ptr %6, align 1
  %tm_year.i38 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %55 = ptrtoint ptr %tm_year.i38 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tm_year.i38, align 4
  %57 = trunc i32 %56 to i8
  %conv16.i = add i8 %57, -100
  %58 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv16.i, ptr %7, align 2
  br label %do.body

do.body:                                          ; preds = %sw.bb1, %cond.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5m_rtc_set_time.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s5m_rtc_set_time, %do.end)) #8
          to label %if.then8 [label %do.end], !srcloc !128

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %59 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tm_wday, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s5m_rtc_set_time.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef %tm, i32 noundef %60) #8
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %regmap = getelementptr inbounds %struct.s5m_rtc_info, ptr %1, i32 0, i32 3
  %61 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap, align 4
  %regs = getelementptr inbounds %struct.s5m_rtc_info, ptr %1, i32 0, i32 8
  %63 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs, align 4
  %time = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %time, align 4
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %64, align 4
  %call12 = call i32 @regmap_raw_write(ptr noundef %62, i32 noundef %66, ptr noundef nonnull %data, i32 noundef %68) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end.cleanup_crit_edge, label %if.end15

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #8
  %69 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %data.i, align 4, !annotation !126
  %70 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap, align 4
  %72 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs, align 4
  %udr_update.i = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %udr_update.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %udr_update.i, align 4
  %call.i39 = call i32 @regmap_read(ptr noundef %71, i32 noundef %75, ptr noundef nonnull %data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %cmp.i40 = icmp slt i32 %call.i39, 0
  br i1 %cmp.i40, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.37, i32 noundef %call.i39) #11
  br label %s5m8767_rtc_set_time_reg.exit

if.end.i:                                         ; preds = %if.end15
  %78 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs, align 4
  %write_time_udr_mask.i = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %79, i32 0, i32 8
  %80 = ptrtoint ptr %write_time_udr_mask.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %write_time_udr_mask.i, align 4
  %82 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %data.i, align 4
  %or.i = or i32 %83, %81
  store i32 %or.i, ptr %data.i, align 4
  %84 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap, align 4
  %udr_update4.i = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %79, i32 0, i32 5
  %86 = ptrtoint ptr %udr_update4.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %udr_update4.i, align 4
  %call5.i = call i32 @regmap_write(ptr noundef %85, i32 noundef %87, i32 noundef %or.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %do.end10.i, label %if.end12.i

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.40, i32 noundef %call5.i) #11
  br label %s5m8767_rtc_set_time_reg.exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i = call fastcc i32 @s5m8767_wait_for_udr_update(ptr noundef %1) #8
  br label %s5m8767_rtc_set_time_reg.exit

s5m8767_rtc_set_time_reg.exit:                    ; preds = %if.end12.i, %do.end10.i, %do.end.i
  %retval.0.i41 = phi i32 [ %call.i39, %do.end.i ], [ %call5.i, %do.end10.i ], [ %call13.i, %if.end12.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #8
  br label %cleanup

cleanup:                                          ; preds = %s5m8767_rtc_set_time_reg.exit, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i41, %s5m8767_rtc_set_time_reg.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call12, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5m_rtc_read_alarm(ptr noundef %dev, ptr noundef %alrm) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %data = alloca [8 x i8], align 8
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #8
  %2 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 5
  %7 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 6
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val, align 4, !annotation !126
  %regmap = getelementptr inbounds %struct.s5m_rtc_info, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %regs = getelementptr inbounds %struct.s5m_rtc_info, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %alarm0 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %alarm0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %alarm0, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %13, align 4
  %call2 = call i32 @regmap_bulk_read(ptr noundef %11, i32 noundef %15, ptr noundef nonnull %data, i32 noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %device_type = getelementptr inbounds %struct.s5m_rtc_info, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %device_type, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %19, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %if.end.sw.bb10_crit_edge
    i32 7, label %if.end.sw.bb10_crit_edge68
    i32 6, label %if.end.sw.bb10_crit_edge69
    i32 5, label %if.end.sw.bb10_crit_edge70
  ]

if.end.sw.bb10_crit_edge70:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

if.end.sw.bb10_crit_edge69:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

if.end.sw.bb10_crit_edge68:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

if.end.sw.bb10_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  call fastcc void @s5m8763_data_to_tm(ptr noundef nonnull %data, ptr noundef %time)
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call5 = call i32 @regmap_read(ptr noundef %22, i32 noundef 24, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %sw.bb.cleanup_crit_edge, label %if.end8

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool = icmp ne i32 %24, 0
  %conv = zext i1 %tobool to i8
  br label %do.body.sink.split

sw.bb10:                                          ; preds = %if.end.sw.bb10_crit_edge, %if.end.sw.bb10_crit_edge68, %if.end.sw.bb10_crit_edge69, %if.end.sw.bb10_crit_edge70
  %time12 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %rtc_24hr_mode = getelementptr inbounds %struct.s5m_rtc_info, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %rtc_24hr_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rtc_24hr_mode, align 4
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %data, align 8
  %29 = and i8 %28, 127
  %and.i = zext i8 %29 to i32
  %30 = ptrtoint ptr %time12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and.i, ptr %time12, align 4
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %2, align 1
  %33 = and i8 %32, 127
  %and3.i = zext i8 %33 to i32
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and3.i, ptr %tm_min.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %3, align 2
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  %37 = and i8 %36, 31
  %and6.i = zext i8 %37 to i32
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and6.i, ptr %tm_hour.i, align 4
  br label %s5m8767_data_to_tm.exit

if.else.i:                                        ; preds = %sw.bb10
  %39 = and i8 %36, 15
  %and9.i = zext i8 %39 to i32
  %tm_hour10.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %40 = ptrtoint ptr %tm_hour10.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and9.i, ptr %tm_hour10.i, align 4
  %41 = and i8 %36, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool14.not.i = icmp eq i8 %41, 0
  br i1 %tobool14.not.i, label %if.else.i.s5m8767_data_to_tm.exit_crit_edge, label %if.then15.i

if.else.i.s5m8767_data_to_tm.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5m8767_data_to_tm.exit

if.then15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add nuw nsw i32 %and9.i, 12
  %42 = ptrtoint ptr %tm_hour10.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add.i, ptr %tm_hour10.i, align 4
  br label %s5m8767_data_to_tm.exit

s5m8767_data_to_tm.exit:                          ; preds = %if.then15.i, %if.else.i.s5m8767_data_to_tm.exit_crit_edge, %if.then.i
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %4, align 1
  %45 = and i8 %44, 127
  %46 = call i8 @llvm.cttz.i8(i8 %45, i1 true) #8, !range !127
  %narrow49.i = add nuw nsw i8 %46, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %iszero.i = icmp eq i8 %45, 0
  %narrow50.i = select i1 %iszero.i, i8 0, i8 %narrow49.i
  %ffs.i = zext i8 %narrow50.i to i32
  %tm_wday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 6
  %47 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %ffs.i, ptr %tm_wday.i, align 4
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %5, align 4
  %50 = and i8 %49, 31
  %and23.i = zext i8 %50 to i32
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %51 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and23.i, ptr %tm_mday.i, align 4
  %52 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %6, align 1
  %54 = and i8 %53, 15
  %and26.i = zext i8 %54 to i32
  %sub.i = add nsw i32 %and26.i, -1
  %tm_mon.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %55 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %sub.i, ptr %tm_mon.i, align 4
  %56 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %7, align 2
  %58 = and i8 %57, 127
  %narrow.i = add nuw i8 %58, 100
  %add30.i = zext i8 %narrow.i to i32
  %tm_year.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %59 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add30.i, ptr %tm_year.i, align 4
  %tm_yday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 7
  %60 = ptrtoint ptr %tm_yday.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %tm_yday.i, align 4
  %tm_isdst.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 8
  %61 = ptrtoint ptr %tm_isdst.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %tm_isdst.i, align 4
  %62 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %alrm, align 4
  %63 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp1666.not = icmp eq i32 %66, 0
  br i1 %cmp1666.not, label %s5m8767_data_to_tm.exit.do.body_crit_edge, label %s5m8767_data_to_tm.exit.for.body_crit_edge

s5m8767_data_to_tm.exit.for.body_crit_edge:       ; preds = %s5m8767_data_to_tm.exit
  br label %for.body

s5m8767_data_to_tm.exit.do.body_crit_edge:        ; preds = %s5m8767_data_to_tm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, %66
  br i1 %exitcond.not, label %for.cond.do.body_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.do.body_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %s5m8767_data_to_tm.exit.for.body_crit_edge
  %i.067 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %s5m8767_data_to_tm.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x i8], ptr %data, i32 0, i32 %i.067
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %68)
  %tobool19.not = icmp sgt i8 %68, -1
  br i1 %tobool19.not, label %for.cond, label %for.body.do.body.sink.split_crit_edge

for.body.do.body.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.sink.split

do.body.sink.split:                               ; preds = %for.body.do.body.sink.split_crit_edge, %if.end8
  %conv.sink = phi i8 [ %conv, %if.end8 ], [ 1, %for.body.do.body.sink.split_crit_edge ]
  %69 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv.sink, ptr %alrm, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %for.cond.do.body_crit_edge, %s5m8767_data_to_tm.exit.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5m_rtc_read_alarm.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s5m_rtc_read_alarm, %do.end)) #8
          to label %if.then32 [label %do.end], !srcloc !128

if.then32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %time33 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 6
  %70 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tm_wday, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s5m_rtc_read_alarm.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.42, ptr noundef %time33, i32 noundef %71) #8
  br label %do.end

do.end:                                           ; preds = %if.then32, %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %72 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %val.i, align 4, !annotation !126
  %73 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %device_type, align 4
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %74, label %do.end.s5m_check_peding_alarm_interrupt.exit_crit_edge [
    i32 2, label %do.end.sw.bb.i_crit_edge
    i32 1, label %do.end.sw.bb.i_crit_edge71
    i32 7, label %do.end.sw.bb1.i_crit_edge
    i32 6, label %do.end.sw.bb1.i_crit_edge72
    i32 5, label %do.end.sw.bb1.i_crit_edge73
  ]

do.end.sw.bb1.i_crit_edge73:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

do.end.sw.bb1.i_crit_edge72:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

do.end.sw.bb1.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

do.end.sw.bb.i_crit_edge71:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

do.end.sw.bb.i_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

do.end.s5m_check_peding_alarm_interrupt.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5m_check_peding_alarm_interrupt.exit

sw.bb.i:                                          ; preds = %do.end.sw.bb.i_crit_edge, %do.end.sw.bb.i_crit_edge71
  %76 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_read(ptr noundef %77, i32 noundef 26, ptr noundef nonnull %val.i) #8
  %78 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val.i, align 4
  %and.i61 = and i32 %79, 2
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %do.end.sw.bb1.i_crit_edge, %do.end.sw.bb1.i_crit_edge72, %do.end.sw.bb1.i_crit_edge73
  %s5m87xx.i = getelementptr inbounds %struct.s5m_rtc_info, ptr %1, i32 0, i32 2
  %80 = ptrtoint ptr %s5m87xx.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %s5m87xx.i, align 4
  %regmap_pmic.i = getelementptr inbounds %struct.sec_pmic_dev, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %regmap_pmic.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap_pmic.i, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %83, i32 noundef 8, ptr noundef nonnull %val.i) #8
  %84 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %val.i, align 4
  %and3.i62 = and i32 %85, 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %sw.bb.i
  %storemerge.i = phi i32 [ %and3.i62, %sw.bb1.i ], [ %and.i61, %sw.bb.i ]
  %ret.0.i = phi i32 [ %call2.i, %sw.bb1.i ], [ %call.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp.i = icmp slt i32 %ret.0.i, 0
  br i1 %cmp.i, label %sw.epilog.i.s5m_check_peding_alarm_interrupt.exit_crit_edge, label %if.end.i

sw.epilog.i.s5m_check_peding_alarm_interrupt.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5m_check_peding_alarm_interrupt.exit

if.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge.i)
  %tobool.not.i63 = icmp ne i32 %storemerge.i, 0
  %pending5.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 1
  %..i = zext i1 %tobool.not.i63 to i8
  %86 = ptrtoint ptr %pending5.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %..i, ptr %pending5.i, align 1
  br label %s5m_check_peding_alarm_interrupt.exit

s5m_check_peding_alarm_interrupt.exit:            ; preds = %if.end.i, %sw.epilog.i.s5m_check_peding_alarm_interrupt.exit_crit_edge, %do.end.s5m_check_peding_alarm_interrupt.exit_crit_edge
  %retval.0.i64 = phi i32 [ -22, %do.end.s5m_check_peding_alarm_interrupt.exit_crit_edge ], [ %ret.0.i, %sw.epilog.i.s5m_check_peding_alarm_interrupt.exit_crit_edge ], [ 0, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %cleanup

cleanup:                                          ; preds = %s5m_check_peding_alarm_interrupt.exit, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i64, %s5m_check_peding_alarm_interrupt.exit ], [ %call2, %entry.cleanup_crit_edge ], [ %call5, %sw.bb.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5m_rtc_set_alarm(ptr noundef %dev, ptr noundef %alrm) #2 align 64 {
entry:
  %data = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #8
  %2 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 5
  %7 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 6
  %device_type = getelementptr inbounds %struct.s5m_rtc_info, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %data, align 8
  %9 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %device_type, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %10, label %entry.cleanup_crit_edge [
    i32 1, label %cond.end.i
    i32 2, label %entry.sw.bb1_crit_edge
    i32 7, label %entry.sw.bb1_crit_edge56
    i32 6, label %entry.sw.bb1_crit_edge57
    i32 5, label %entry.sw.bb1_crit_edge58
  ]

entry.sw.bb1_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.end.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 7
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %13 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %time, align 4
  %call.i = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #12
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call.i, ptr %data, align 8
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_min.i, align 4
  %call16.i = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #12
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call16.i, ptr %2, align 1
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_hour.i, align 4
  %call32.i = tail call zeroext i8 @_bin2bcd(i32 noundef %20) #12
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call32.i, ptr %3, align 2
  %tm_wday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 6
  %22 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_wday.i, align 4
  %conv38.i = trunc i32 %23 to i8
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv38.i, ptr %4, align 1
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_mday.i, align 4
  %call50.i = tail call zeroext i8 @_bin2bcd(i32 noundef %26) #12
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %call50.i, ptr %5, align 4
  %tm_mon.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %28 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_mon.i, align 4
  %call66.i = tail call zeroext i8 @_bin2bcd(i32 noundef %29) #12
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call66.i, ptr %6, align 1
  %tm_year.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %31 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tm_year.i, align 4
  %rem72.i = srem i32 %32, 100
  %call86.i = tail call zeroext i8 @_bin2bcd(i32 noundef %rem72.i) #12
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %call86.i, ptr %7, align 2
  %add93.i = add i32 %32, 1900
  %div94.i = sdiv i32 %add93.i, 100
  %call111.i = tail call zeroext i8 @_bin2bcd(i32 noundef %div94.i) #12
  %34 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %call111.i, ptr %12, align 1
  br label %do.body

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge56, %entry.sw.bb1_crit_edge57, %entry.sw.bb1_crit_edge58
  %time2 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %35 = ptrtoint ptr %time2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %time2, align 4
  %conv.i47 = trunc i32 %36 to i8
  %37 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv.i47, ptr %data, align 8
  %tm_min.i48 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %tm_min.i48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tm_min.i48, align 4
  %conv1.i = trunc i32 %39 to i8
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv1.i, ptr %2, align 1
  %tm_hour.i49 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %41 = ptrtoint ptr %tm_hour.i49 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tm_hour.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %42)
  %cmp.i = icmp sgt i32 %42, 11
  %43 = trunc i32 %42 to i8
  %conv8.i = and i8 %43, -65
  %masksel.i = select i1 %cmp.i, i8 64, i8 0
  %conv8.sink.i = or i8 %conv8.i, %masksel.i
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv8.sink.i, ptr %3, align 2
  %tm_wday.i50 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 6
  %45 = ptrtoint ptr %tm_wday.i50 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tm_wday.i50, align 4
  %shl.i51 = shl nuw i32 1, %46
  %conv10.i = trunc i32 %shl.i51 to i8
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv10.i, ptr %4, align 1
  %tm_mday.i52 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %48 = ptrtoint ptr %tm_mday.i52 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tm_mday.i52, align 4
  %conv12.i = trunc i32 %49 to i8
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv12.i, ptr %5, align 4
  %tm_mon.i53 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %51 = ptrtoint ptr %tm_mon.i53 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tm_mon.i53, align 4
  %53 = trunc i32 %52 to i8
  %conv14.i = add i8 %53, 1
  %54 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv14.i, ptr %6, align 1
  %tm_year.i54 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %55 = ptrtoint ptr %tm_year.i54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tm_year.i54, align 4
  %57 = trunc i32 %56 to i8
  %conv16.i = add i8 %57, -100
  %58 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv16.i, ptr %7, align 2
  br label %do.body

do.body:                                          ; preds = %sw.bb1, %cond.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5m_rtc_set_alarm.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s5m_rtc_set_alarm, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !128

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %time9 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 6
  %59 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tm_wday, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s5m_rtc_set_alarm.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.43, ptr noundef %time9, i32 noundef %60) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %call11 = tail call fastcc i32 @s5m_rtc_stop_alarm(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end13

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %regmap = getelementptr inbounds %struct.s5m_rtc_info, ptr %1, i32 0, i32 3
  %61 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap, align 4
  %regs = getelementptr inbounds %struct.s5m_rtc_info, ptr %1, i32 0, i32 8
  %63 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs, align 4
  %alarm0 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %alarm0 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %alarm0, align 4
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %64, align 4
  %call16 = call i32 @regmap_raw_write(ptr noundef %62, i32 noundef %66, ptr noundef nonnull %data, i32 noundef %68) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end13.cleanup_crit_edge, label %if.end19

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %call20 = call fastcc i32 @s5m8767_rtc_set_alarm_reg(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %69 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool24.not = icmp eq i8 %70, 0
  br i1 %tobool24.not, label %if.end23.cleanup_crit_edge, label %if.then25

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = call fastcc i32 @s5m_rtc_start_alarm(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call11, %do.end.cleanup_crit_edge ], [ %call16, %if.end13.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ %call26, %if.then25 ], [ %call20, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5m_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call fastcc i32 @s5m_rtc_start_alarm(ptr noundef %1)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call fastcc i32 @s5m_rtc_stop_alarm(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @s5m8763_data_to_tm(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %tm) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %call = tail call i32 @_bcd2bin(i8 noundef zeroext %1) #12
  %2 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %tm, align 4
  %arrayidx5 = getelementptr i8, ptr %data, i32 1
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx5, align 1
  %call17 = tail call i32 @_bcd2bin(i8 noundef zeroext %4) #12
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %5 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call17, ptr %tm_min, align 4
  %arrayidx20 = getelementptr i8, ptr %data, i32 2
  %6 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %tobool.not = icmp sgt i8 %7, -1
  br i1 %tobool.not, label %cond.end74, label %cond.false38

cond.false38:                                     ; preds = %entry
  %and25 = and i8 %7, 31
  %call43 = tail call i32 @_bcd2bin(i8 noundef zeroext %and25) #12
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %8 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call43, ptr %tm_hour, align 4
  %9 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx20, align 1
  %11 = and i8 %10, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool49.not = icmp eq i8 %11, 0
  br i1 %tobool49.not, label %cond.false38.if.end77_crit_edge, label %if.then50

cond.false38.if.end77_crit_edge:                  ; preds = %cond.false38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then50:                                        ; preds = %cond.false38
  call void @__sanitizer_cov_trace_pc() #10
  %add52 = add i32 %call43, 12
  %12 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add52, ptr %tm_hour, align 4
  br label %if.end77

cond.end74:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and55 = and i8 %7, 63
  %call73 = tail call i32 @_bcd2bin(i8 noundef zeroext %and55) #12
  %tm_hour76 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %13 = ptrtoint ptr %tm_hour76 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call73, ptr %tm_hour76, align 4
  br label %if.end77

if.end77:                                         ; preds = %cond.end74, %if.then50, %cond.false38.if.end77_crit_edge
  %arrayidx78 = getelementptr i8, ptr %data, i32 3
  %14 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx78, align 1
  %16 = and i8 %15, 7
  %and80 = zext i8 %16 to i32
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %17 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and80, ptr %tm_wday, align 4
  %arrayidx81 = getelementptr i8, ptr %data, i32 4
  %18 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx81, align 1
  %call93 = tail call i32 @_bcd2bin(i8 noundef zeroext %19) #12
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %20 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call93, ptr %tm_mday, align 4
  %arrayidx96 = getelementptr i8, ptr %data, i32 5
  %21 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx96, align 1
  %call108 = tail call i32 @_bcd2bin(i8 noundef zeroext %22) #12
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %23 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call108, ptr %tm_mon, align 4
  %arrayidx111 = getelementptr i8, ptr %data, i32 6
  %24 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx111, align 1
  %arrayidx126 = getelementptr i8, ptr %data, i32 7
  %26 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx126, align 1
  %call138 = tail call i32 @_bcd2bin(i8 noundef zeroext %27) #12
  %call123 = tail call i32 @_bcd2bin(i8 noundef zeroext %25) #12
  %mul141 = mul i32 %call138, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %add142 = add i32 %call123, -1900
  %sub = add i32 %add142, %mul141
  %28 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub, ptr %tm_year, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5m_rtc_stop_alarm(ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  %data = alloca [8 x i8], align 8
  %tm = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #8
  %0 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 3
  %1 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 4
  %2 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 5
  %3 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 6
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm) #8
  %5 = getelementptr inbounds i8, ptr %tm, i32 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !126
  %regmap = getelementptr inbounds %struct.s5m_rtc_info, ptr %info, i32 0, i32 3
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %regs = getelementptr inbounds %struct.s5m_rtc_info, ptr %info, i32 0, i32 8
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %alarm0 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %alarm0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %alarm0, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 4
  %call = call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef %12, ptr noundef nonnull %data, i32 noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 2
  %16 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 1
  %rtc_24hr_mode = getelementptr inbounds %struct.s5m_rtc_info, ptr %info, i32 0, i32 7
  %17 = ptrtoint ptr %rtc_24hr_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rtc_24hr_mode, align 4
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data, align 8
  %21 = and i8 %20, 127
  %and.i = zext i8 %21 to i32
  %22 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and.i, ptr %tm, align 4
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %16, align 1
  %25 = and i8 %24, 127
  %and3.i = zext i8 %25 to i32
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %26 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and3.i, ptr %tm_min.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  %27 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %15, align 2
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %29 = and i8 %28, 31
  %and6.i = zext i8 %29 to i32
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %30 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and6.i, ptr %tm_hour.i, align 4
  br label %s5m8767_data_to_tm.exit

if.else.i:                                        ; preds = %if.end
  %31 = and i8 %28, 15
  %and9.i = zext i8 %31 to i32
  %tm_hour10.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %32 = ptrtoint ptr %tm_hour10.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and9.i, ptr %tm_hour10.i, align 4
  %33 = and i8 %28, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool14.not.i = icmp eq i8 %33, 0
  br i1 %tobool14.not.i, label %if.else.i.s5m8767_data_to_tm.exit_crit_edge, label %if.then15.i

if.else.i.s5m8767_data_to_tm.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5m8767_data_to_tm.exit

if.then15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add nuw nsw i32 %and9.i, 12
  %34 = ptrtoint ptr %tm_hour10.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add.i, ptr %tm_hour10.i, align 4
  br label %s5m8767_data_to_tm.exit

s5m8767_data_to_tm.exit:                          ; preds = %if.then15.i, %if.else.i.s5m8767_data_to_tm.exit_crit_edge, %if.then.i
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %0, align 1
  %37 = and i8 %36, 127
  %38 = call i8 @llvm.cttz.i8(i8 %37, i1 true) #8, !range !127
  %narrow49.i = add nuw nsw i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %iszero.i = icmp eq i8 %37, 0
  %narrow50.i = select i1 %iszero.i, i8 0, i8 %narrow49.i
  %ffs.i = zext i8 %narrow50.i to i32
  %tm_wday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %39 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %ffs.i, ptr %tm_wday.i, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %1, align 4
  %42 = and i8 %41, 31
  %and23.i = zext i8 %42 to i32
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %43 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and23.i, ptr %tm_mday.i, align 4
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %2, align 1
  %46 = and i8 %45, 15
  %and26.i = zext i8 %46 to i32
  %sub.i = add nsw i32 %and26.i, -1
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %47 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub.i, ptr %tm_mon.i, align 4
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %3, align 2
  %50 = and i8 %49, 127
  %narrow.i = add nuw i8 %50, 100
  %add30.i = zext i8 %narrow.i to i32
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %51 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add30.i, ptr %tm_year.i, align 4
  %tm_yday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 7
  %52 = ptrtoint ptr %tm_yday.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %tm_yday.i, align 4
  %tm_isdst.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 8
  %53 = ptrtoint ptr %tm_isdst.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %tm_isdst.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5m_rtc_stop_alarm.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s5m_rtc_stop_alarm, %do.end)) #8
          to label %if.then7 [label %do.end], !srcloc !128

if.then7:                                         ; preds = %s5m8767_data_to_tm.exit
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %info, align 4
  %56 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tm_wday.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s5m_rtc_stop_alarm.__UNIQUE_ID_ddebug291, ptr noundef %55, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.44, ptr noundef nonnull %tm, i32 noundef %57) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %s5m8767_data_to_tm.exit
  %device_type = getelementptr inbounds %struct.s5m_rtc_info, ptr %info, i32 0, i32 6
  %58 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %device_type, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %59, label %do.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %do.end.sw.bb11_crit_edge
    i32 7, label %do.end.sw.bb11_crit_edge58
    i32 6, label %do.end.sw.bb11_crit_edge59
    i32 5, label %do.end.sw.bb11_crit_edge60
  ]

do.end.sw.bb11_crit_edge60:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

do.end.sw.bb11_crit_edge59:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

do.end.sw.bb11_crit_edge58:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

do.end.sw.bb11_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap, align 4
  %call10 = call i32 @regmap_write(ptr noundef %62, i32 noundef 24, i32 noundef 0) #8
  br label %cleanup

sw.bb11:                                          ; preds = %do.end.sw.bb11_crit_edge, %do.end.sw.bb11_crit_edge58, %do.end.sw.bb11_crit_edge59, %do.end.sw.bb11_crit_edge60
  %63 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp1450.not = icmp eq i32 %66, 0
  br i1 %cmp1450.not, label %sw.bb11.for.end_crit_edge, label %sw.bb11.for.body_crit_edge

sw.bb11.for.body_crit_edge:                       ; preds = %sw.bb11
  br label %for.body

sw.bb11.for.end_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.bb11.for.body_crit_edge
  %i.051 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %sw.bb11.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x i8], ptr %data, i32 0, i32 %i.051
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx, align 1
  %69 = and i8 %68, 127
  store i8 %69, ptr %arrayidx, align 1
  %inc = add nuw i32 %i.051, 1
  %70 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %64, align 4
  %cmp14 = icmp ult i32 %inc, %71
  br i1 %cmp14, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %sw.bb11.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %sw.bb11.for.end_crit_edge ], [ %71, %for.body.for.end_crit_edge ]
  %72 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap, align 4
  %alarm018 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %64, i32 0, i32 3
  %74 = ptrtoint ptr %alarm018 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %alarm018, align 4
  %call22 = call i32 @regmap_raw_write(ptr noundef %73, i32 noundef %75, ptr noundef nonnull %data, i32 noundef %.lcssa) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %for.end.cleanup_crit_edge, label %if.end26

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = call fastcc i32 @s5m8767_rtc_set_alarm_reg(ptr noundef %info)
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %for.end.cleanup_crit_edge, %sw.bb, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call22, %for.end.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ %call27, %if.end26 ], [ %call10, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5m_rtc_start_alarm(ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  %data = alloca [8 x i8], align 8
  %tm = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #8
  %0 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 6
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm) #8
  %7 = getelementptr inbounds i8, ptr %tm, i32 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !126
  %regmap = getelementptr inbounds %struct.s5m_rtc_info, ptr %info, i32 0, i32 3
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %regs = getelementptr inbounds %struct.s5m_rtc_info, ptr %info, i32 0, i32 8
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %alarm0 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %alarm0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %alarm0, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  %call = call i32 @regmap_bulk_read(ptr noundef %10, i32 noundef %14, ptr noundef nonnull %data, i32 noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %rtc_24hr_mode = getelementptr inbounds %struct.s5m_rtc_info, ptr %info, i32 0, i32 7
  %17 = ptrtoint ptr %rtc_24hr_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rtc_24hr_mode, align 4
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data, align 8
  %21 = and i8 %20, 127
  %and.i = zext i8 %21 to i32
  %22 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and.i, ptr %tm, align 4
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %0, align 1
  %25 = and i8 %24, 127
  %and3.i = zext i8 %25 to i32
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %26 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and3.i, ptr %tm_min.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %1, align 2
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %29 = and i8 %28, 31
  %and6.i = zext i8 %29 to i32
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %30 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and6.i, ptr %tm_hour.i, align 4
  br label %s5m8767_data_to_tm.exit

if.else.i:                                        ; preds = %if.end
  %31 = and i8 %28, 15
  %and9.i = zext i8 %31 to i32
  %tm_hour10.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %32 = ptrtoint ptr %tm_hour10.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and9.i, ptr %tm_hour10.i, align 4
  %33 = and i8 %28, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool14.not.i = icmp eq i8 %33, 0
  br i1 %tobool14.not.i, label %if.else.i.s5m8767_data_to_tm.exit_crit_edge, label %if.then15.i

if.else.i.s5m8767_data_to_tm.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %s5m8767_data_to_tm.exit

if.then15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add nuw nsw i32 %and9.i, 12
  %34 = ptrtoint ptr %tm_hour10.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add.i, ptr %tm_hour10.i, align 4
  br label %s5m8767_data_to_tm.exit

s5m8767_data_to_tm.exit:                          ; preds = %if.then15.i, %if.else.i.s5m8767_data_to_tm.exit_crit_edge, %if.then.i
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %2, align 1
  %37 = and i8 %36, 127
  %38 = call i8 @llvm.cttz.i8(i8 %37, i1 true) #8, !range !127
  %narrow49.i = add nuw nsw i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %iszero.i = icmp eq i8 %37, 0
  %narrow50.i = select i1 %iszero.i, i8 0, i8 %narrow49.i
  %ffs.i = zext i8 %narrow50.i to i32
  %tm_wday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %39 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %ffs.i, ptr %tm_wday.i, align 4
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %3, align 4
  %42 = and i8 %41, 31
  %and23.i = zext i8 %42 to i32
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %43 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and23.i, ptr %tm_mday.i, align 4
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %4, align 1
  %46 = and i8 %45, 15
  %and26.i = zext i8 %46 to i32
  %sub.i = add nsw i32 %and26.i, -1
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %47 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub.i, ptr %tm_mon.i, align 4
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %5, align 2
  %50 = and i8 %49, 127
  %narrow.i = add nuw i8 %50, 100
  %add30.i = zext i8 %narrow.i to i32
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %51 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add30.i, ptr %tm_year.i, align 4
  %tm_yday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 7
  %52 = ptrtoint ptr %tm_yday.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %tm_yday.i, align 4
  %tm_isdst.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 8
  %53 = ptrtoint ptr %tm_isdst.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %tm_isdst.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5m_rtc_start_alarm.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s5m_rtc_start_alarm, %do.end)) #8
          to label %if.then7 [label %do.end], !srcloc !128

if.then7:                                         ; preds = %s5m8767_data_to_tm.exit
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %info, align 4
  %56 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tm_wday.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s5m_rtc_start_alarm.__UNIQUE_ID_ddebug292, ptr noundef %55, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.45, ptr noundef nonnull %tm, i32 noundef %57) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %s5m8767_data_to_tm.exit
  %device_type = getelementptr inbounds %struct.s5m_rtc_info, ptr %info, i32 0, i32 6
  %58 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %device_type, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %59, label %do.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %do.end.sw.bb11_crit_edge
    i32 7, label %do.end.sw.bb11_crit_edge85
    i32 6, label %do.end.sw.bb11_crit_edge86
    i32 5, label %do.end.sw.bb11_crit_edge87
  ]

do.end.sw.bb11_crit_edge87:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

do.end.sw.bb11_crit_edge86:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

do.end.sw.bb11_crit_edge85:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

do.end.sw.bb11_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap, align 4
  %call10 = call i32 @regmap_write(ptr noundef %62, i32 noundef 24, i32 noundef 119) #8
  br label %cleanup

sw.bb11:                                          ; preds = %do.end.sw.bb11_crit_edge, %do.end.sw.bb11_crit_edge85, %do.end.sw.bb11_crit_edge86, %do.end.sw.bb11_crit_edge87
  %63 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %data, align 8
  %65 = or i8 %64, -128
  store i8 %65, ptr %data, align 8
  %66 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %0, align 1
  %68 = or i8 %67, -128
  store i8 %68, ptr %0, align 1
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %1, align 2
  %71 = or i8 %70, -128
  store i8 %71, ptr %1, align 2
  %72 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %2, align 1
  %74 = and i8 %73, 127
  store i8 %74, ptr %2, align 1
  %75 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %3, align 4
  %77 = and i8 %76, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool28.not = icmp eq i8 %77, 0
  br i1 %tobool28.not, label %sw.bb11.if.end34_crit_edge, label %if.then29

sw.bb11.if.end34_crit_edge:                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then29:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %or32 = or i8 %76, -128
  %78 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %or32, ptr %3, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %sw.bb11.if.end34_crit_edge
  %79 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %4, align 1
  %81 = and i8 %80, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool38.not = icmp eq i8 %81, 0
  br i1 %tobool38.not, label %if.end34.if.end44_crit_edge, label %if.then39

if.end34.if.end44_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %or42 = or i8 %80, -128
  %82 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %or42, ptr %4, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %if.end34.if.end44_crit_edge
  %83 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %5, align 2
  %85 = and i8 %84, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool48.not = icmp eq i8 %85, 0
  br i1 %tobool48.not, label %if.end44.if.end54_crit_edge, label %if.then49

if.end44.if.end54_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %or52 = or i8 %84, -128
  %86 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %or52, ptr %5, align 2
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %if.end44.if.end54_crit_edge
  %87 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap, align 4
  %89 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs, align 4
  %alarm057 = getelementptr inbounds %struct.s5m_rtc_reg_config, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %alarm057 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %alarm057, align 4
  %93 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %90, align 4
  %call61 = call i32 @regmap_raw_write(ptr noundef %88, i32 noundef %92, ptr noundef nonnull %data, i32 noundef %94) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.end54.cleanup_crit_edge, label %if.end65

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end65:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %call66 = call fastcc i32 @s5m8767_rtc_set_alarm_reg(ptr noundef %info)
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.end54.cleanup_crit_edge, %sw.bb, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call61, %if.end54.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ %call66, %if.end65 ], [ %call10, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5m_rtc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.s5m_rtc_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true.if.end_crit_edge, label %device_may_wakeup.exit

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

device_may_wakeup.exit:                           ; preds = %land.lhs.true
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.then ], [ 0, %device_may_wakeup.exit.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ], [ 0, %land.lhs.true.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5m_rtc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.s5m_rtc_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true.if.end_crit_edge, label %device_may_wakeup.exit

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

device_may_wakeup.exit:                           ; preds = %land.lhs.true
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.then ], [ 0, %device_may_wakeup.exit.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ], [ 0, %land.lhs.true.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @__initcall__kmod_rtc_s5m__294_858_s5m_rtc_driver_init6, !1, !"__initcall__kmod_rtc_s5m__294_858_s5m_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-s5m.c", i32 858, i32 1}
!2 = !{ptr @__exitcall_s5m_rtc_driver_exit, !1, !"__exitcall_s5m_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-s5m.c", i32 861, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-s5m.c", i32 862, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-s5m.c", i32 863, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-s5m.c", i32 851, i32 11}
!12 = !{ptr @s5m_rtc_driver, !13, !"s5m_rtc_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-s5m.c", i32 849, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-s5m.c", i32 743, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @s5m_rtc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @s5m_rtc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/rtc/rtc-s5m.c", i32 752, i32 3}
!24 = !{ptr @s5m_rtc_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @s5m_rtc_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @s5m_rtc_probe._key, !27, !"_key", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-s5m.c", i32 756, i32 17}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-s5m.c", i32 759, i32 3}
!31 = !{ptr @s5m_rtc_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @s5m_rtc_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/rtc/rtc-s5m.c", i32 771, i32 4}
!35 = !{ptr @s5m_rtc_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @s5m_rtc_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-s5m.c", i32 801, i32 29}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/rtc/rtc-s5m.c", i32 804, i32 4}
!41 = !{ptr @s5m_rtc_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @s5m_rtc_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @s2mps14_rtc_regmap_config, !44, !"s2mps14_rtc_regmap_config", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-s5m.c", i32 166, i32 35}
!45 = !{ptr @s2mps15_rtc_regs, !46, !"s2mps15_rtc_regs", i1 false, i1 false}
!46 = !{!"../drivers/rtc/rtc-s5m.c", i32 134, i32 40}
!47 = !{ptr @s2mps14_rtc_regs, !48, !"s2mps14_rtc_regs", i1 false, i1 false}
!48 = !{!"../drivers/rtc/rtc-s5m.c", i32 117, i32 40}
!49 = !{ptr @s2mps13_rtc_regs, !50, !"s2mps13_rtc_regs", i1 false, i1 false}
!50 = !{!"../drivers/rtc/rtc-s5m.c", i32 103, i32 40}
!51 = !{ptr @s5m_rtc_regmap_config, !52, !"s5m_rtc_regmap_config", i1 false, i1 false}
!52 = !{!"../drivers/rtc/rtc-s5m.c", i32 159, i32 35}
!53 = !{ptr @s5m_rtc_regs, !54, !"s5m_rtc_regs", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-s5m.c", i32 89, i32 40}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-s5m.c", i32 664, i32 4}
!57 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @s5m8767_rtc_init_reg._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @s5m8767_rtc_init_reg._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/rtc/rtc-s5m.c", i32 697, i32 3}
!62 = !{ptr @s5m8767_rtc_init_reg._entry.22, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @s5m8767_rtc_init_reg._entry_ptr.24, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/rtc/rtc-s5m.c", i32 295, i32 3}
!66 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @s5m8767_rtc_set_alarm_reg._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @s5m8767_rtc_set_alarm_reg._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/rtc/rtc-s5m.c", i32 317, i32 3}
!71 = !{ptr @s5m8767_rtc_set_alarm_reg._entry.27, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @s5m8767_rtc_set_alarm_reg._entry_ptr.29, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/rtc/rtc-s5m.c", i32 226, i32 3}
!75 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @s5m8767_wait_for_udr_update._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @s5m8767_wait_for_udr_update._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @s5m_rtc_ops, !79, !"s5m_rtc_ops", i1 false, i1 false}
!79 = !{!"../drivers/rtc/rtc-s5m.c", i32 644, i32 35}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/rtc/rtc-s5m.c", i32 376, i32 4}
!82 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @s5m_rtc_read_time._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @s5m_rtc_read_time._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/rtc/rtc-s5m.c", i32 403, i32 2}
!87 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @s5m_rtc_read_time.__UNIQUE_ID_ddebug288, !86, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/rtc/rtc-s5m.c", i32 431, i32 2}
!91 = !{ptr @s5m_rtc_set_time.__UNIQUE_ID_ddebug289, !90, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/rtc/rtc-s5m.c", i32 271, i32 3}
!94 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @s5m8767_rtc_set_time_reg._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @s5m8767_rtc_set_time_reg._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/rtc/rtc-s5m.c", i32 279, i32 3}
!99 = !{ptr @s5m8767_rtc_set_time_reg._entry.39, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @s5m8767_rtc_set_time_reg._entry_ptr.41, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/rtc/rtc-s5m.c", i32 483, i32 2}
!103 = !{ptr @s5m_rtc_read_alarm.__UNIQUE_ID_ddebug290, !102, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/rtc/rtc-s5m.c", i32 603, i32 2}
!106 = !{ptr @s5m_rtc_set_alarm.__UNIQUE_ID_ddebug293, !105, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/rtc/rtc-s5m.c", i32 500, i32 2}
!109 = !{ptr @s5m_rtc_stop_alarm.__UNIQUE_ID_ddebug291, !108, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/rtc/rtc-s5m.c", i32 543, i32 2}
!112 = !{ptr @s5m_rtc_start_alarm.__UNIQUE_ID_ddebug292, !111, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!113 = !{ptr @s5m_rtc_pm_ops, !114, !"s5m_rtc_pm_ops", i1 false, i1 false}
!114 = !{!"../drivers/rtc/rtc-s5m.c", i32 838, i32 8}
!115 = !{ptr @s5m_rtc_id, !116, !"s5m_rtc_id", i1 false, i1 false}
!116 = !{!"../drivers/rtc/rtc-s5m.c", i32 840, i32 40}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!126 = !{!"auto-init"}
!127 = !{i8 0, i8 9}
!128 = !{i64 2148972256, i64 2148972261, i64 2148972274, i64 2148972318, i64 2148972352, i64 2148972373}
