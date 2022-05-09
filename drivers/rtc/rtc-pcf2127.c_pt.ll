; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-pcf2127.c_pt.bc'
source_filename = "../drivers/rtc/rtc-pcf2127.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.spi_device_id = type { [32 x i8], i32 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.pcf2127 = type { ptr, %struct.watchdog_device, ptr, i64, i8, i8 }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }

@__initcall__kmod_rtc_pcf2127__296_1025_pcf2127_init6 = internal global ptr @pcf2127_init, section ".initcall6.init", align 4
@__exitcall_pcf2127_exit = internal global ptr @pcf2127_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [66 x i8] c"rtc_pcf2127.author=Renaud Cerrato <r.cerrato@til-technologies.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [50 x i8] c"rtc_pcf2127.description=NXP PCF2127/29 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [41 x i8] c"rtc_pcf2127.file=drivers/rtc/rtc-pcf2127\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [27 x i8] c"rtc_pcf2127.license=GPL v2\00", section ".modinfo", align 1
@pcf2127_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1013, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Failed to register pcf2127 i2c driver: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcf2127_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/rtc/rtc-pcf2127.c\00", [38 x i8] zeroinitializer }, align 32
@pcf2127_init._entry_ptr = internal global ptr @pcf2127_init._entry, section ".printk_index", align 4
@pcf2127_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Failed to register pcf2127 spi driver: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@pcf2127_init._entry_ptr.5 = internal global ptr @pcf2127_init._entry.3, section ".printk_index", align 4
@pcf2127_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @pcf2127_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pcf2127_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pcf2127_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtc-pcf2127-i2c\00", [16 x i8] zeroinitializer }, align 32
@pcf2127_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pcf2127\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pcf2129\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca2129\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@pcf2127_i2c_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"pcf2127\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"pcf2129\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"pca2129\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pcf2127_i2c_probe.config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 29, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@pcf2127_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pcf2127_i2c_regmap = internal constant { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr @pcf2127_i2c_write, ptr @pcf2127_i2c_gather_write, ptr null, ptr null, ptr null, ptr @pcf2127_i2c_read, ptr null, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rtc_pcf2127:889:(&config)->lock\00", [32 x i8] zeroinitializer }, align 32
@pcf2127_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 892, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: regmap allocation failed: %ld\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcf2127_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcf2127_i2c_probe._entry_ptr = internal global ptr @pcf2127_i2c_probe._entry, section ".printk_index", align 4
@pcf2127_probe.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 -96, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtc_pcf2127\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcf2127_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@pcf2127_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr @pcf2127_rtc_ioctl, ptr @pcf2127_rtc_read_time, ptr @pcf2127_rtc_set_time, ptr @pcf2127_rtc_read_alarm, ptr @pcf2127_rtc_set_alarm, ptr null, ptr @pcf2127_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@pcf2127_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 667, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to request alarm irq\0A\00", [35 x i8] zeroinitializer }, align 32
@pcf2127_probe._entry_ptr = internal global ptr @pcf2127_probe._entry, section ".printk_index", align 4
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@pcf2127_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 727, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: watchdog config (wd_ctl) failed\0A\00", [59 x i8] zeroinitializer }, align 32
@pcf2127_probe._entry_ptr.19 = internal global ptr @pcf2127_probe._entry.17, section ".printk_index", align 4
@pcf2127_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 745, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: interrupt config (ctrl3) failed\0A\00", [59 x i8] zeroinitializer }, align 32
@pcf2127_probe._entry_ptr.22 = internal global ptr @pcf2127_probe._entry.20, section ".printk_index", align 4
@pcf2127_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.13, ptr @.str.2, i32 759, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: tamper detection config (ts_ctrl) failed\0A\00", [50 x i8] zeroinitializer }, align 32
@pcf2127_probe._entry_ptr.25 = internal global ptr @pcf2127_probe._entry.23, section ".printk_index", align 4
@pcf2127_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.13, ptr @.str.2, i32 773, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: tamper detection config (ctrl2) failed\0A\00", [52 x i8] zeroinitializer }, align 32
@pcf2127_probe._entry_ptr.28 = internal global ptr @pcf2127_probe._entry.26, section ".printk_index", align 4
@pcf2127_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pcf2127_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pcf2127_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.13, ptr @.str.2, i32 780, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: tamper sysfs registering failed\0A\00", [59 x i8] zeroinitializer }, align 32
@pcf2127_probe._entry_ptr.31 = internal global ptr @pcf2127_probe._entry.29, section ".printk_index", align 4
@pcf2127_rtc_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 131, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: read error\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pcf2127_rtc_read_time\00", [42 x i8] zeroinitializer }, align 32
@pcf2127_rtc_read_time._entry_ptr = internal global ptr @pcf2127_rtc_read_time._entry, section ".printk_index", align 4
@pcf2127_rtc_read_time._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 137, ptr @.str.36, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"low voltage detected, check/replace RTC battery.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pcf2127_rtc_read_time._entry_ptr.37 = internal global ptr @pcf2127_rtc_read_time._entry.34, section ".printk_index", align 4
@pcf2127_rtc_read_time._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.33, ptr @.str.2, i32 146, ptr @.str.40, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"oscillator stop detected, date/time is not reliable\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pcf2127_rtc_read_time._entry_ptr.41 = internal global ptr @pcf2127_rtc_read_time._entry.38, section ".printk_index", align 4
@pcf2127_rtc_read_time.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.33, ptr @.str.2, ptr @.str.42, i8 0, i8 39, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"%s: raw data is cr3=%02x, sec=%02x, min=%02x, hr=%02x, mday=%02x, wday=%02x, mon=%02x, year=%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@pcf2127_rtc_read_time.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.33, ptr @.str.2, ptr @.str.43, i8 0, i8 42, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s: tm is secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@pcf2127_rtc_set_time.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 46, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pcf2127_rtc_set_time\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@pcf2127_rtc_set_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 205, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: err=%d\00", [21 x i8] zeroinitializer }, align 32
@pcf2127_rtc_set_time._entry_ptr = internal global ptr @pcf2127_rtc_set_time._entry, section ".printk_index", align 4
@pcf2127_wdt_active_ping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 299, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: watchdog restart failed, ret=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pcf2127_wdt_active_ping\00", [40 x i8] zeroinitializer }, align 32
@pcf2127_wdt_active_ping._entry_ptr = internal global ptr @pcf2127_wdt_active_ping._entry, section ".printk_index", align 4
@pcf2127_rtc_ts_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 461, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: read error ret=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pcf2127_rtc_ts_read\00", [44 x i8] zeroinitializer }, align 32
@pcf2127_rtc_ts_read._entry_ptr = internal global ptr @pcf2127_rtc_ts_read._entry, section ".printk_index", align 4
@pcf2127_rtc_ts_read.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 117, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"%s: raw data is cr1=%02x, cr2=%02x, cr3=%02x, ts_sc=%02x, ts_mn=%02x, ts_hr=%02x, ts_dm=%02x, ts_mo=%02x, ts_yr=%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@pcf2127_rtc_ts_read._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.50, ptr @.str.2, i32 485, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid timestamp. ret=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@pcf2127_rtc_ts_read._entry_ptr.54 = internal global ptr @pcf2127_rtc_ts_read._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reset-source\00", [19 x i8] zeroinitializer }, align 32
@pcf2127_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 32896, i32 0, [32 x i8] c"NXP PCF2127/PCF2129 Watchdog\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@pcf2127_watchdog_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @pcf2127_wdt_start, ptr @pcf2127_wdt_stop, ptr @pcf2127_wdt_ping, ptr null, ptr @pcf2127_wdt_set_timeout, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@pcf2127_wdt_set_timeout.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 0, i8 80, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pcf2127_wdt_set_timeout\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"new watchdog timeout: %is (old: %is)\0A\00", [58 x i8] zeroinitializer }, align 32
@pcf2127_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_timestamp0, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_timestamp0 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @timestamp0_show, ptr @timestamp0_store }, [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timestamp0\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@timestamp0_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 567, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: update ctrl1 ret=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"timestamp0_store\00", [47 x i8] zeroinitializer }, align 32
@timestamp0_store._entry_ptr = internal global ptr @timestamp0_store._entry, section ".printk_index", align 4
@timestamp0_store._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.2, i32 574, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: update ctrl2 ret=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@timestamp0_store._entry_ptr.64 = internal global ptr @timestamp0_store._entry.62, section ".printk_index", align 4
@pcf2127_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @pcf2127_spi_id, ptr @pcf2127_spi_probe, ptr null, ptr null, %struct.device_driver { ptr @.str.65, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pcf2127_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@pcf2127_spi_id = internal constant { [4 x %struct.spi_device_id], [48 x i8] } { [4 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"pcf2127\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"pcf2129\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"pca2129\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtc-pcf2127-spi\00", [16 x i8] zeroinitializer }, align 32
@pcf2127_spi_probe.config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 29, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 160, i32 32, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@pcf2127_spi_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rtc_pcf2127:955:(&config)->lock\00", [32 x i8] zeroinitializer }, align 32
@pcf2127_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.67, ptr @.str.2, i32 958, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcf2127_spi_probe\00", [46 x i8] zeroinitializer }, align 32
@pcf2127_spi_probe._entry_ptr = internal global ptr @pcf2127_spi_probe._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 28692, i64 2147774483]
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1013, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1019, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [19 x i8] c"pcf2127_i2c_driver\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 908, i32 26 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 910, i32 11 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"pcf2127_of_match\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 788, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant [15 x i8] c"pcf2127_i2c_id\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 900, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 879, i32 36 }
@___asan_gen_.104 = private unnamed_addr constant [19 x i8] c"pcf2127_i2c_regmap\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 867, i32 32 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 888, i32 11 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 891, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 640, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [16 x i8] c"pcf2127_rtc_ops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 543, i32 35 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 667, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 673, i32 54 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 727, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 744, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 758, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 772, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant [19 x i8] c"pcf2127_attr_group\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 629, i32 37 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 779, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 131, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 136, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 145, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 150, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 167, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 182, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 204, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 297, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 461, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 465, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 485, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 348, i32 38 }
@___asan_gen_.254 = private unnamed_addr constant [17 x i8] c"pcf2127_wdt_info\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 329, i32 35 }
@___asan_gen_.257 = private unnamed_addr constant [21 x i8] c"pcf2127_watchdog_ops\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 334, i32 34 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 321, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant [14 x i8] c"pcf2127_attrs\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 624, i32 26 }
@___asan_gen_.269 = private unnamed_addr constant [20 x i8] c"dev_attr_timestamp0\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 622, i32 8 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 619, i32 22 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 567, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 574, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant [19 x i8] c"pcf2127_spi_driver\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 975, i32 26 }
@___asan_gen_.296 = private unnamed_addr constant [15 x i8] c"pcf2127_spi_id\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 967, i32 35 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 977, i32 11 }
@___asan_gen_.302 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 946, i32 36 }
@___asan_gen_.305 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 955, i32 11 }
@___asan_gen_.311 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.314 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.315 = private constant [29 x i8] c"../drivers/rtc/rtc-pcf2127.c\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 957, i32 3 }
@llvm.compiler.used = appending global [109 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_pcf2127_exit, ptr @__initcall__kmod_rtc_pcf2127__296_1025_pcf2127_init6, ptr @pcf2127_exit, ptr @pcf2127_i2c_probe._entry, ptr @pcf2127_i2c_probe._entry_ptr, ptr @pcf2127_init._entry, ptr @pcf2127_init._entry.3, ptr @pcf2127_init._entry_ptr, ptr @pcf2127_init._entry_ptr.5, ptr @pcf2127_probe._entry, ptr @pcf2127_probe._entry.17, ptr @pcf2127_probe._entry.20, ptr @pcf2127_probe._entry.23, ptr @pcf2127_probe._entry.26, ptr @pcf2127_probe._entry.29, ptr @pcf2127_probe._entry_ptr, ptr @pcf2127_probe._entry_ptr.19, ptr @pcf2127_probe._entry_ptr.22, ptr @pcf2127_probe._entry_ptr.25, ptr @pcf2127_probe._entry_ptr.28, ptr @pcf2127_probe._entry_ptr.31, ptr @pcf2127_rtc_read_time._entry, ptr @pcf2127_rtc_read_time._entry.34, ptr @pcf2127_rtc_read_time._entry.38, ptr @pcf2127_rtc_read_time._entry_ptr, ptr @pcf2127_rtc_read_time._entry_ptr.37, ptr @pcf2127_rtc_read_time._entry_ptr.41, ptr @pcf2127_rtc_set_time._entry, ptr @pcf2127_rtc_set_time._entry_ptr, ptr @pcf2127_rtc_ts_read._entry, ptr @pcf2127_rtc_ts_read._entry.52, ptr @pcf2127_rtc_ts_read._entry_ptr, ptr @pcf2127_rtc_ts_read._entry_ptr.54, ptr @pcf2127_spi_probe._entry, ptr @pcf2127_spi_probe._entry_ptr, ptr @pcf2127_wdt_active_ping._entry, ptr @pcf2127_wdt_active_ping._entry_ptr, ptr @timestamp0_store._entry, ptr @timestamp0_store._entry.62, ptr @timestamp0_store._entry_ptr, ptr @timestamp0_store._entry_ptr.64, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @pcf2127_i2c_driver, ptr @.str.6, ptr @pcf2127_of_match, ptr @pcf2127_i2c_id, ptr @pcf2127_i2c_probe.config, ptr @pcf2127_i2c_probe._key, ptr @pcf2127_i2c_regmap, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @pcf2127_rtc_ops, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @pcf2127_attr_group, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @pcf2127_wdt_info, ptr @pcf2127_watchdog_ops, ptr @.str.56, ptr @.str.57, ptr @pcf2127_attrs, ptr @dev_attr_timestamp0, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @pcf2127_spi_driver, ptr @pcf2127_spi_id, ptr @.str.65, ptr @pcf2127_spi_probe.config, ptr @pcf2127_spi_probe._key, ptr @.str.66, ptr @.str.67], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_i2c_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_i2c_probe.config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_i2c_regmap to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_rtc_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_rtc_read_time._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_rtc_read_time._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_rtc_set_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_wdt_active_ping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_rtc_ts_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_rtc_ts_read._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_watchdog_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_timestamp0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timestamp0_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timestamp0_store._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_spi_id to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_spi_probe.config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_spi_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf2127_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf2127_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pcf2127_i2c_driver) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i16 = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @pcf2127_spi_driver) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool3.not = icmp eq i32 %call.i16, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call.i16) #12
  tail call void @i2c_del_driver(ptr noundef nonnull @pcf2127_i2c_driver) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i16, %do.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcf2127_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @pcf2127_spi_driver, i32 0, i32 4)) #9
  tail call void @i2c_del_driver(ptr noundef nonnull @pcf2127_i2c_driver) #9
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
define internal i32 @pcf2127_i2c_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #9
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call2 = tail call ptr @__devm_regmap_init(ptr noundef %dev, ptr noundef nonnull @pcf2127_i2c_regmap, ptr noundef %dev, ptr noundef nonnull @pcf2127_i2c_probe.config, ptr noundef nonnull @pcf2127_i2c_probe._key, ptr noundef nonnull @.str.7) #9
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %6) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %9 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10 = icmp ne i32 %10, 0
  %call11 = tail call fastcc i32 @pcf2127_probe(ptr noundef %dev, ptr noundef %call2, i32 noundef %8, i1 noundef zeroext %tobool10)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %do.end ], [ %call11, %if.end8 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcf2127_probe(ptr noundef %dev, ptr noundef %regmap, i32 noundef %alarm_irq, i1 noundef zeroext %is_pcf2127) unnamed_addr #4 align 64 {
entry:
  %wdd_timeout.i = alloca i32, align 4
  %val = alloca i32, align 4
  %nvmem_cfg = alloca %struct.nvmem_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !175
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcf2127_probe.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcf2127_probe, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcf2127_probe.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 136, i32 noundef 3520) #9
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %regmap9 = getelementptr inbounds %struct.pcf2127, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %regmap9 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %regmap, ptr %regmap9, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call10 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #9
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %call.i, align 8
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call10, i32 0, i32 3
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @pcf2127_rtc_ops, ptr %ops, align 8
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 8
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 946684800, ptr %range_min, align 8
  %9 = load ptr, ptr %call.i, align 8
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %9, i32 0, i32 23
  %10 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 4102444799, ptr %range_max, align 8
  %11 = load ptr, ptr %call.i, align 8
  %set_start_time = getelementptr inbounds %struct.rtc_device, ptr %11, i32 0, i32 26
  %12 = ptrtoint ptr %set_start_time to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %set_start_time, align 8
  %13 = load ptr, ptr %call.i, align 8
  %uie_unsupported = getelementptr inbounds %struct.rtc_device, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %uie_unsupported to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %uie_unsupported, align 8
  %15 = load ptr, ptr %call.i, align 8
  %features = getelementptr inbounds %struct.rtc_device, ptr %15, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %features) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alarm_irq)
  %cmp = icmp sgt i32 %alarm_irq, 0
  br i1 %cmp, label %if.then23, label %lor.lhs.false.critedge

if.then23:                                        ; preds = %if.end16
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then23.dev_name.exit_crit_edge

if.then23.dev_name.exit_crit_edge:                ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then23.dev_name.exit_crit_edge
  %retval.0.i1 = phi ptr [ %19, %if.end.i ], [ %17, %if.then23.dev_name.exit_crit_edge ]
  %call25 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %alarm_irq, ptr noundef null, ptr noundef nonnull @pcf2127_rtc_irq, i32 noundef 8200, ptr noundef %retval.0.i1, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end31, label %do.end30

do.end30:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #12
  br label %cleanup

if.end31:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %irq_enabled = getelementptr inbounds %struct.pcf2127, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %irq_enabled, align 1
  br label %if.then35

lor.lhs.false.critedge:                           ; preds = %if.end16
  %call.i2 = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.16) #9
  br i1 %call.i2, label %lor.lhs.false.critedge.if.then35_crit_edge, label %lor.lhs.false.critedge.if.end40_crit_edge

lor.lhs.false.critedge.if.end40_crit_edge:        ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

lor.lhs.false.critedge.if.then35_crit_edge:       ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35

if.then35:                                        ; preds = %lor.lhs.false.critedge.if.then35_crit_edge, %if.end31
  %call36 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #9
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 8
  %features38 = getelementptr inbounds %struct.rtc_device, ptr %22, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 0, ptr noundef %features38) #9
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %lor.lhs.false.critedge.if.end40_crit_edge
  br i1 %is_pcf2127, label %if.then42, label %if.end40.if.end47_crit_edge

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %nvmem_cfg) #9
  %23 = call ptr @memset(ptr %nvmem_cfg, i32 0, i32 88)
  %reg_read = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 15
  %24 = ptrtoint ptr %reg_read to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @pcf2127_nvmem_read, ptr %reg_read, align 4
  %reg_write = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 16
  %25 = ptrtoint ptr %reg_write to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @pcf2127_nvmem_write, ptr %reg_write, align 4
  %size = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 18
  %26 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 512, ptr %size, align 4
  %priv = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 21
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %priv, align 4
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 8
  %call46 = call i32 @devm_rtc_nvmem_register(ptr noundef %29, ptr noundef nonnull %nvmem_cfg) #9
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %nvmem_cfg) #9
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %if.end40.if.end47_crit_edge
  %30 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap9, align 8
  %call.i3 = call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 0, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %32 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap9, align 8
  %call51 = call i32 @regmap_read(ptr noundef %33, i32 noundef 15, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.end47.cleanup_crit_edge, label %if.end54

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end54:                                         ; preds = %if.end47
  %34 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val, align 4
  %and = and i32 %35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool55.not = icmp eq i32 %and, 0
  br i1 %tobool55.not, label %if.then56, label %if.end54.if.end62_crit_edge

if.end54.if.end62_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then56:                                        ; preds = %if.end54
  %36 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap9, align 8
  %call.i4 = call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 15, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %cmp59 = icmp slt i32 %call.i4, 0
  br i1 %cmp59, label %if.then56.cleanup_crit_edge, label %if.end61

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end61:                                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  call void @msleep(i32 noundef 100) #9
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end54.if.end62_crit_edge
  %38 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap9, align 8
  %or65 = select i1 %is_pcf2127, i32 194, i32 130
  %call.i5 = call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 16, i32 noundef 195, i32 noundef %or65, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool67.not = icmp eq i32 %call.i5, 0
  br i1 %tobool67.not, label %if.end72, label %do.end71

do.end71:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.13) #12
  br label %cleanup

if.end72:                                         ; preds = %if.end62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wdd_timeout.i) #9
  %40 = ptrtoint ptr %wdd_timeout.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %wdd_timeout.i, align 4, !annotation !175
  %call.i.i = call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.55) #9
  br i1 %call.i.i, label %if.end.i7, label %if.end72.pcf2127_watchdog_init.exit_crit_edge

if.end72.pcf2127_watchdog_init.exit_crit_edge:    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcf2127_watchdog_init.exit

if.end.i7:                                        ; preds = %if.end72
  %wdd.i = getelementptr inbounds %struct.pcf2127, ptr %call.i, i32 0, i32 1
  %parent.i = getelementptr inbounds %struct.pcf2127, ptr %call.i, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %dev, ptr %parent.i, align 4
  %info.i = getelementptr inbounds %struct.pcf2127, ptr %call.i, i32 0, i32 1, i32 3
  %42 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @pcf2127_wdt_info, ptr %info.i, align 4
  %ops.i = getelementptr inbounds %struct.pcf2127, ptr %call.i, i32 0, i32 1, i32 4
  %43 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @pcf2127_watchdog_ops, ptr %ops.i, align 4
  %min_timeout.i = getelementptr inbounds %struct.pcf2127, ptr %call.i, i32 0, i32 1, i32 9
  %44 = ptrtoint ptr %min_timeout.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %min_timeout.i, align 4
  %max_timeout.i = getelementptr inbounds %struct.pcf2127, ptr %call.i, i32 0, i32 1, i32 10
  %45 = ptrtoint ptr %max_timeout.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 255, ptr %max_timeout.i, align 4
  %timeout.i = getelementptr inbounds %struct.pcf2127, ptr %call.i, i32 0, i32 1, i32 7
  %46 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 60, ptr %timeout.i, align 4
  %min_hw_heartbeat_ms.i = getelementptr inbounds %struct.pcf2127, ptr %call.i, i32 0, i32 1, i32 11
  %47 = ptrtoint ptr %min_hw_heartbeat_ms.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 500, ptr %min_hw_heartbeat_ms.i, align 4
  %status.i = getelementptr inbounds %struct.pcf2127, ptr %call.i, i32 0, i32 1, i32 18
  %48 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %status.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pcf2127, ptr %call.i, i32 0, i32 1, i32 16
  %49 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %50 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap9, align 8
  %call9.i = call i32 @regmap_read(ptr noundef %51, i32 noundef 17, ptr noundef nonnull %wdd_timeout.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i6 = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i6, label %if.end11.i, label %if.end.i7.pcf2127_watchdog_init.exit_crit_edge

if.end.i7.pcf2127_watchdog_init.exit_crit_edge:   ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcf2127_watchdog_init.exit

if.end11.i:                                       ; preds = %if.end.i7
  %52 = ptrtoint ptr %wdd_timeout.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %wdd_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool12.not.i = icmp eq i32 %53, 0
  br i1 %tobool12.not.i, label %if.end11.i.if.end16.i_crit_edge, label %if.then13.i

if.end11.i.if.end16.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 3, ptr noundef %status.i) #9
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i, %if.end11.i.if.end16.i_crit_edge
  %call18.i = call i32 @devm_watchdog_register_device(ptr noundef %dev, ptr noundef %wdd.i) #9
  br label %pcf2127_watchdog_init.exit

pcf2127_watchdog_init.exit:                       ; preds = %if.end16.i, %if.end.i7.pcf2127_watchdog_init.exit_crit_edge, %if.end72.pcf2127_watchdog_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wdd_timeout.i) #9
  %54 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap9, align 8
  %call.i8 = call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 2, i32 noundef 19, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool76.not = icmp eq i32 %call.i8, 0
  br i1 %tobool76.not, label %if.end81, label %do.end80

do.end80:                                         ; preds = %pcf2127_watchdog_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.13) #12
  br label %cleanup

if.end81:                                         ; preds = %pcf2127_watchdog_init.exit
  %56 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap9, align 8
  %call.i9 = call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 18, i32 noundef 192, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %tobool84.not = icmp eq i32 %call.i9, 0
  br i1 %tobool84.not, label %if.end89, label %do.end88

do.end88:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.13) #12
  br label %cleanup

if.end89:                                         ; preds = %if.end81
  %58 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap9, align 8
  %call.i10 = call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 1, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %tobool92.not = icmp eq i32 %call.i10, 0
  br i1 %tobool92.not, label %if.end97, label %do.end96

do.end96:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.13) #12
  br label %cleanup

if.end97:                                         ; preds = %if.end89
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call.i, align 8
  %call99 = call i32 @rtc_add_group(ptr noundef %61, ptr noundef nonnull @pcf2127_attr_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end105, label %do.end104

do.end104:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.13) #12
  br label %cleanup

if.end105:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i, align 8
  %call107 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %63) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %do.end104, %do.end96, %do.end88, %do.end80, %do.end71, %if.then56.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %do.end30, %if.then13, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then13 ], [ %call25, %do.end30 ], [ %call.i5, %do.end71 ], [ %call.i8, %do.end80 ], [ %call.i9, %do.end88 ], [ %call.i10, %do.end96 ], [ %call99, %do.end104 ], [ %call107, %if.end105 ], [ -12, %do.end.cleanup_crit_edge ], [ %call51, %if.end47.cleanup_crit_edge ], [ %call.i4, %if.then56.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf2127_i2c_write(ptr noundef %context, ptr noundef %data, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %context, i32 -32
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef %data, i32 noundef %count, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %count)
  %cmp.not = icmp eq i32 %call.i, %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1 = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp1, i32 %call.i, i32 -5
  %retval.0 = select i1 %cmp.not, i32 0, i32 %spec.select
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf2127_i2c_gather_write(ptr noundef %context, ptr nocapture noundef readonly %reg, i32 noundef %reg_size, ptr nocapture noundef readonly %val, i32 noundef %val_size) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %context, i32 -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reg_size)
  %cmp.not = icmp eq i32 %reg_size, 1
  br i1 %cmp.not, label %if.end22, label %do.end, !prof !177

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 821, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end22:                                         ; preds = %entry
  %add = add i32 %val_size, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #13
  %tobool23.not = icmp eq ptr %call9.i, null
  br i1 %tobool23.not, label %if.end22.cleanup_crit_edge, label %if.end25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reg, align 1
  %2 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %call9.i, align 128
  %add.ptr26 = getelementptr i8, ptr %call9.i, i32 1
  %3 = call ptr @memcpy(ptr %add.ptr26, ptr %val, i32 %val_size)
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %call9.i, i32 noundef %add, i16 noundef zeroext 0) #9
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add)
  %cmp30.not = icmp eq i32 %call.i, %add
  br i1 %cmp30.not, label %if.end25.cleanup_crit_edge, label %if.then31

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp32 = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp32, i32 %call.i, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end25.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %spec.select, %if.then31 ], [ -12, %if.end22.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf2127_i2c_read(ptr noundef %context, ptr noundef %reg, i32 noundef %reg_size, ptr noundef %val, i32 noundef %val_size) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %context, i32 -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reg_size)
  %cmp.not = icmp eq i32 %reg_size, 1
  br i1 %cmp.not, label %if.end22, label %do.end, !prof !177

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 848, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end22:                                         ; preds = %entry
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef %reg, i32 noundef 1, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp23.not = icmp eq i32 %call.i, 1
  br i1 %cmp23.not, label %if.end26, label %if.then24

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp25 = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp25, i32 %call.i, i32 -5
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %call.i47 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef %val, i32 noundef %val_size, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i47, i32 %val_size)
  %cmp28.not = icmp eq i32 %call.i47, %val_size
  br i1 %cmp28.not, label %if.end26.cleanup_crit_edge, label %if.then29

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %cmp30 = icmp slt i32 %call.i47, 0
  %spec.select46 = select i1 %cmp30, i32 %call.i47, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end26.cleanup_crit_edge, %if.then24, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %spec.select, %if.then24 ], [ %spec.select46, %if.then29 ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf2127_rtc_irq(i32 noundef %irq, ptr noundef %dev) #4 align 64 {
entry:
  %ctrl1 = alloca i32, align 4
  %ctrl2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl1) #9
  %2 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ctrl1, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl2) #9
  %3 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %ctrl2, align 4, !annotation !175
  %regmap = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 8
  %call1 = call i32 @regmap_read(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %ctrl1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 8
  %call3 = call i32 @regmap_read(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %ctrl2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctrl1, align 4
  %and = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.end6.if.then17_crit_edge

if.end6.if.then17_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end6
  %10 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctrl2, align 4
  %and8 = and i32 %11, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false14

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctrl2, align 4
  %and15 = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %lor.lhs.false14.if.end18_crit_edge, label %lor.lhs.false14.if.then17_crit_edge

lor.lhs.false14.if.then17_crit_edge:              ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

lor.lhs.false14.if.end18_crit_edge:               ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %lor.lhs.false14.if.then17_crit_edge, %if.end6.if.then17_crit_edge
  %14 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i, align 4
  %ts_valid.i = getelementptr inbounds %struct.pcf2127, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %ts_valid.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ts_valid.i, align 8, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then17.if.end18_crit_edge

if.then17.if.end18_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.end.i:                                         ; preds = %if.then17
  %ts.i = getelementptr inbounds %struct.pcf2127, ptr %15, i32 0, i32 3
  %call1.i = call fastcc i32 @pcf2127_rtc_ts_read(ptr noundef %dev, ptr noundef %ts.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end18_crit_edge

if.end.i.if.end18_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %ts_valid.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %ts_valid.i, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then3.i, %if.end.i.if.end18_crit_edge, %if.then17.if.end18_crit_edge, %lor.lhs.false14.if.end18_crit_edge
  %19 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctrl1, align 4
  %and19 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end25_crit_edge, label %if.then21

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 8
  %and23 = and i32 %20, -17
  %call24 = call i32 @regmap_write(ptr noundef %22, i32 noundef 0, i32 noundef %and23) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end18.if.end25_crit_edge
  %23 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ctrl2, align 4
  %and26 = and i32 %24, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end32_crit_edge, label %if.then28

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 8
  %and30 = and i32 %24, -113
  %call31 = call i32 @regmap_write(ptr noundef %26, i32 noundef 1, i32 noundef %and30) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.end25.if.end32_crit_edge
  %27 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ctrl2, align 4
  %and33 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end36_crit_edge, label %if.then35

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  call void @rtc_update_irq(ptr noundef %30, i32 noundef 1, i32 noundef 160) #9
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end32.if.end36_crit_edge
  %status.i.i = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 1, i32 18
  %31 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %status.i.i, align 4
  %and1.i.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end36.cleanup_crit_edge, label %if.then.i

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end36
  %driver_data.i.i.i = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 1, i32 16
  %33 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.pcf2127, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i.i, align 8
  %timeout.i.i = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 1, i32 7
  %37 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %timeout.i.i, align 4
  %call1.i.i = call i32 @regmap_write(ptr noundef %36, i32 noundef 17, i32 noundef %38) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i48 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i48, label %if.then.i.cleanup_crit_edge, label %do.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parent.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %call1.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then.i.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 1, %if.end36.cleanup_crit_edge ], [ 1, %if.then.i.cleanup_crit_edge ], [ 1, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl1) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf2127_nvmem_read(ptr nocapture noundef readonly %priv, i32 noundef %offset, ptr noundef %val, i32 noundef %bytes) #4 align 64 {
entry:
  %offsetbuf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %offsetbuf) #9
  %0 = getelementptr inbounds [2 x i8], ptr %offsetbuf, i32 0, i32 1
  %shr = lshr i32 %offset, 8
  %conv = trunc i32 %shr to i8
  %1 = ptrtoint ptr %offsetbuf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %offsetbuf, align 1
  %conv1 = trunc i32 %offset to i8
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1, ptr %0, align 1
  %regmap = getelementptr inbounds %struct.pcf2127, ptr %priv, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 8
  %call = call i32 @regmap_bulk_write(ptr noundef %4, i32 noundef 26, ptr noundef nonnull %offsetbuf, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 8
  %call3 = call i32 @regmap_bulk_read(ptr noundef %6, i32 noundef 29, ptr noundef %val, i32 noundef %bytes) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %offsetbuf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf2127_nvmem_write(ptr nocapture noundef readonly %priv, i32 noundef %offset, ptr noundef %val, i32 noundef %bytes) #4 align 64 {
entry:
  %offsetbuf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %offsetbuf) #9
  %0 = getelementptr inbounds [2 x i8], ptr %offsetbuf, i32 0, i32 1
  %shr = lshr i32 %offset, 8
  %conv = trunc i32 %shr to i8
  %1 = ptrtoint ptr %offsetbuf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %offsetbuf, align 1
  %conv1 = trunc i32 %offset to i8
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1, ptr %0, align 1
  %regmap = getelementptr inbounds %struct.pcf2127, ptr %priv, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 8
  %call = call i32 @regmap_bulk_write(ptr noundef %4, i32 noundef 26, ptr noundef nonnull %offsetbuf, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 8
  %call3 = call i32 @regmap_bulk_write(ptr noundef %6, i32 noundef 28, ptr noundef %val, i32 noundef %bytes) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %offsetbuf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rtc_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_add_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf2127_rtc_ioctl(ptr nocapture noundef readonly %dev, i32 noundef %cmd, i32 noundef %arg) #4 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !175
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 -2147192813, label %sw.bb
    i32 28692, label %sw.bb12
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %regmap = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 8
  %call1 = call i32 @regmap_read(ptr noundef %5, i32 noundef 2, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %and = lshr i32 %7, 1
  %8 = and i32 %and, 2
  %and5 = shl i32 %7, 1
  %9 = and i32 %and5, 16
  %10 = or i32 %9, %8
  %11 = inttoptr i32 %arg to ptr
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 231) #9
  %12 = call i32 @llvm.read_register.i32(metadata !165) #9
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !179
  %and.i = and i32 %14, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  %15 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %11, i32 %10, i32 -1226833921) #9, !srcloc !182
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #9, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap13 = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %regmap13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap13, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 2, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb12, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.bb12 ], [ %15, %if.end ], [ %call1, %sw.bb.cleanup_crit_edge ], [ -515, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf2127_rtc_read_time(ptr noundef %dev, ptr nocapture noundef %tm) #4 align 64 {
entry:
  %buf = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf) #9
  %2 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 2
  %3 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 3
  %4 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 4
  %5 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 5
  %6 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 6
  %7 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 7
  %8 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 8
  %9 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 9
  %regmap = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 2
  %10 = call ptr @memset(ptr %buf, i32 255, i32 10)
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 8
  %call1 = call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef 2, ptr noundef %2, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %2, align 1
  %15 = and i8 %14, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool2.not = icmp eq i8 %15, 0
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %do.end6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.35) #12
  br label %if.end7

if.end7:                                          ; preds = %do.end6, %if.end.if.end7_crit_edge
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %tobool11.not = icmp sgt i8 %17, -1
  br i1 %tobool11.not, label %do.body17, label %do.end15

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.39) #12
  br label %cleanup

do.body17:                                        ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcf2127_rtc_read_time.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcf2127_rtc_read_time, %cond.end)) #9
          to label %if.then23 [label %cond.end], !srcloc !176

if.then23:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %2, align 1
  %conv25 = zext i8 %19 to i32
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %3, align 1
  %conv27 = zext i8 %21 to i32
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %4, align 1
  %conv29 = zext i8 %23 to i32
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %5, align 1
  %conv31 = zext i8 %25 to i32
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %6, align 1
  %conv33 = zext i8 %27 to i32
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %7, align 1
  %conv35 = zext i8 %29 to i32
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %8, align 1
  %conv37 = zext i8 %31 to i32
  %32 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %9, align 1
  %conv39 = zext i8 %33 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcf2127_rtc_read_time.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.33, i32 noundef %conv25, i32 noundef %conv27, i32 noundef %conv29, i32 noundef %conv31, i32 noundef %conv33, i32 noundef %conv35, i32 noundef %conv37, i32 noundef %conv39) #9
  br label %cond.end

cond.end:                                         ; preds = %if.then23, %do.body17
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %3, align 1
  %36 = and i8 %35, 127
  %call58 = call i32 @_bcd2bin(i8 noundef zeroext %36) #14
  %37 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call58, ptr %tm, align 4
  %38 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %4, align 1
  %40 = and i8 %39, 127
  %call79 = call i32 @_bcd2bin(i8 noundef zeroext %40) #14
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %41 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call79, ptr %tm_min, align 4
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %5, align 1
  %44 = and i8 %43, 63
  %call102 = call i32 @_bcd2bin(i8 noundef zeroext %44) #14
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %45 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call102, ptr %tm_hour, align 4
  %46 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %6, align 1
  %48 = and i8 %47, 63
  %call125 = call i32 @_bcd2bin(i8 noundef zeroext %48) #14
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %49 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call125, ptr %tm_mday, align 4
  %50 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %7, align 1
  %52 = and i8 %51, 7
  %and130 = zext i8 %52 to i32
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %53 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and130, ptr %tm_wday, align 4
  %54 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %8, align 1
  %56 = and i8 %55, 31
  %call151 = call i32 @_bcd2bin(i8 noundef zeroext %56) #14
  %sub = add i32 %call151, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %57 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub, ptr %tm_mon, align 4
  %58 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %9, align 1
  %call166 = call i32 @_bcd2bin(i8 noundef zeroext %59) #14
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %add170 = add i32 %call166, 100
  %60 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add170, ptr %tm_year, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcf2127_rtc_read_time.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcf2127_rtc_read_time, %cleanup)) #9
          to label %if.then185 [label %cleanup], !srcloc !176

if.then185:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tm, align 4
  %63 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tm_min, align 4
  %65 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tm_hour, align 4
  %67 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tm_mday, align 4
  %69 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tm_mon, align 4
  %71 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tm_year, align 4
  %73 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tm_wday, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcf2127_rtc_read_time.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.33, i32 noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef %68, i32 noundef %70, i32 noundef %72, i32 noundef %74) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then185, %cond.end, %do.end15, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ -22, %do.end15 ], [ 0, %if.then185 ], [ 0, %cond.end ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf2127_rtc_set_time(ptr noundef %dev, ptr nocapture noundef readonly %tm) #4 align 64 {
entry:
  %buf = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf) #9
  %2 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcf2127_rtc_set_time.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcf2127_rtc_set_time, %cond.end)) #9
          to label %if.then [label %cond.end], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm, align 4
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %10 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_min, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %12 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_hour, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %14 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_mday, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %16 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_mon, align 4
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %18 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_year, align 4
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %20 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_wday, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcf2127_rtc_set_time.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.44, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #9
  br label %cond.end

cond.end:                                         ; preds = %if.then, %entry
  %22 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm, align 4
  %call9 = tail call zeroext i8 @_bin2bcd(i32 noundef %23) #14
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call9, ptr %buf, align 1
  %tm_min12 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %25 = ptrtoint ptr %tm_min12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_min12, align 4
  %call23 = tail call zeroext i8 @_bin2bcd(i32 noundef %26) #14
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %call23, ptr %2, align 1
  %tm_hour30 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %28 = ptrtoint ptr %tm_hour30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_hour30, align 4
  %call41 = tail call zeroext i8 @_bin2bcd(i32 noundef %29) #14
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call41, ptr %3, align 1
  %tm_mday48 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %31 = ptrtoint ptr %tm_mday48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tm_mday48, align 4
  %call59 = tail call zeroext i8 @_bin2bcd(i32 noundef %32) #14
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %call59, ptr %4, align 1
  %tm_wday66 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %34 = ptrtoint ptr %tm_wday66 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tm_wday66, align 4
  %36 = trunc i32 %35 to i8
  %conv67 = and i8 %36, 7
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv67, ptr %5, align 1
  %tm_mon70 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %38 = ptrtoint ptr %tm_mon70 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tm_mon70, align 4
  %add71 = add i32 %39, 1
  %call85 = tail call zeroext i8 @_bin2bcd(i32 noundef %add71) #14
  %40 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %call85, ptr %6, align 1
  %tm_year92 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %41 = ptrtoint ptr %tm_year92 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tm_year92, align 4
  %sub = add i32 %42, -100
  %call106 = tail call zeroext i8 @_bin2bcd(i32 noundef %sub) #14
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %call106, ptr %7, align 1
  %regmap = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 8
  %call113 = call i32 @regmap_bulk_write(ptr noundef %45, i32 noundef 3, ptr noundef nonnull %buf, i32 noundef 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %cond.end.cleanup_crit_edge, label %do.end118

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end118:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44, i32 noundef %call113) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end118, %cond.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf) #9
  ret i32 %call113
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf2127_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %alrm) #4 align 64 {
entry:
  %buf = alloca [5 x i32], align 4
  %ctrl2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #9
  %2 = getelementptr inbounds [5 x i32], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [5 x i32], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [5 x i32], ptr %buf, i32 0, i32 3
  %5 = call ptr @memset(ptr %buf, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl2) #9
  %6 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %ctrl2, align 4, !annotation !175
  %regmap = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 8
  %call1 = call i32 @regmap_read(ptr noundef %8, i32 noundef 1, ptr noundef nonnull %ctrl2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %status.i.i = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 1, i32 18
  %9 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %status.i.i, align 4
  %and1.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.if.end5_crit_edge, label %if.then.i

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then.i:                                        ; preds = %if.end
  %driver_data.i.i.i = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 1, i32 16
  %11 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.pcf2127, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i.i, align 8
  %timeout.i.i = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 1, i32 7
  %15 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %timeout.i.i, align 4
  %call1.i.i = call i32 @regmap_write(ptr noundef %14, i32 noundef 17, i32 noundef %16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end5_crit_edge, label %pcf2127_wdt_active_ping.exit

if.then.i.if.end5_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

pcf2127_wdt_active_ping.exit:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %call1.i.i) #12
  br label %cleanup

if.end5:                                          ; preds = %if.then.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 8
  %call7 = call i32 @regmap_bulk_read(ptr noundef %20, i32 noundef 10, ptr noundef nonnull %buf, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ctrl2, align 4
  %23 = trunc i32 %22 to i8
  %conv = and i8 %23, 2
  %24 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv, ptr %alrm, align 4
  %conv12 = and i8 %23, 16
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 1
  %25 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv12, ptr %pending, align 1
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf, align 4
  %28 = trunc i32 %27 to i8
  %conv14 = and i8 %28, 127
  %call23 = call i32 @_bcd2bin(i8 noundef zeroext %conv14) #14
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %29 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call23, ptr %time, align 4
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %2, align 4
  %32 = trunc i32 %31 to i8
  %conv26 = and i8 %32, 127
  %call40 = call i32 @_bcd2bin(i8 noundef zeroext %conv26) #14
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call40, ptr %tm_min, align 4
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %3, align 4
  %36 = trunc i32 %35 to i8
  %conv46 = and i8 %36, 63
  %call60 = call i32 @_bcd2bin(i8 noundef zeroext %conv46) #14
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %37 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call60, ptr %tm_hour, align 4
  %38 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %4, align 4
  %40 = trunc i32 %39 to i8
  %conv66 = and i8 %40, 63
  %call80 = call i32 @_bcd2bin(i8 noundef zeroext %conv66) #14
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %41 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call80, ptr %tm_mday, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end5.cleanup_crit_edge, %pcf2127_wdt_active_ping.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ %call1, %entry.cleanup_crit_edge ], [ %call1.i.i, %pcf2127_wdt_active_ping.exit ], [ %call7, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl2) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf2127_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %alrm) #4 align 64 {
entry:
  %buf = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #9
  %2 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 4
  %regmap = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 1, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %status.i.i = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 1, i32 18
  %8 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %status.i.i, align 4
  %and1.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.cond.end_crit_edge, label %if.then.i

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.then.i:                                        ; preds = %if.end
  %driver_data.i.i.i = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 1, i32 16
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.pcf2127, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i.i, align 8
  %timeout.i.i = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 1, i32 7
  %14 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %timeout.i.i, align 4
  %call1.i.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 17, i32 noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i.cond.end_crit_edge, label %pcf2127_wdt_active_ping.exit

if.then.i.cond.end_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

pcf2127_wdt_active_ping.exit:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %call1.i.i) #12
  br label %cleanup

cond.end:                                         ; preds = %if.then.i.cond.end_crit_edge, %if.end.cond.end_crit_edge
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %18 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %time, align 4
  %call12 = tail call zeroext i8 @_bin2bcd(i32 noundef %19) #14
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %call12, ptr %buf, align 1
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tm_min, align 4
  %call29 = tail call zeroext i8 @_bin2bcd(i32 noundef %22) #14
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %call29, ptr %2, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tm_hour, align 4
  %call49 = tail call zeroext i8 @_bin2bcd(i32 noundef %25) #14
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %call49, ptr %3, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %27 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tm_mday, align 4
  %call69 = tail call zeroext i8 @_bin2bcd(i32 noundef %28) #14
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %call69, ptr %4, align 1
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -128, ptr %5, align 1
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 8
  %call77 = call i32 @regmap_bulk_write(ptr noundef %32, i32 noundef 10, ptr noundef nonnull %buf, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end80:                                         ; preds = %cond.end
  %33 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %alrm, align 4
  %35 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver_data.i, align 4
  %regmap.i = getelementptr inbounds %struct.pcf2127, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i109 = icmp eq i8 %34, 0
  %cond.i = select i1 %tobool.not.i109, i32 0, i32 2
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 1, i32 noundef 2, i32 noundef %cond.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %if.end80.cleanup_crit_edge

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end80
  %status.i.i.i = getelementptr inbounds %struct.pcf2127, ptr %36, i32 0, i32 1, i32 18
  %39 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %status.i.i.i, align 4
  %and1.i.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.cleanup_crit_edge, label %if.then.i.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i
  %driver_data.i.i.i.i = getelementptr inbounds %struct.pcf2127, ptr %36, i32 0, i32 1, i32 16
  %41 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %regmap.i.i.i = getelementptr inbounds %struct.pcf2127, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i.i.i, align 8
  %timeout.i.i.i = getelementptr inbounds %struct.pcf2127, ptr %36, i32 0, i32 1, i32 7
  %45 = ptrtoint ptr %timeout.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %timeout.i.i.i, align 4
  %call1.i.i.i = call i32 @regmap_write(ptr noundef %44, i32 noundef 17, i32 noundef %46) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.cleanup_crit_edge, label %do.end.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i.i = getelementptr inbounds %struct.pcf2127, ptr %36, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %parent.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %call1.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end.i.i, %if.then.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %pcf2127_wdt_active_ping.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call1.i.i, %pcf2127_wdt_active_ping.exit ], [ %call77, %cond.end.cleanup_crit_edge ], [ %call.i.i, %if.end80.cleanup_crit_edge ], [ %call1.i.i.i, %do.end.i.i ], [ 0, %if.then.i.i.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf2127_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enable) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool.not, i32 0, i32 2
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 1, i32 noundef 2, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %status.i.i = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 1, i32 18
  %4 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %status.i.i, align 4
  %and1.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %driver_data.i.i.i = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 1, i32 16
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.pcf2127, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i.i, align 8
  %timeout.i.i = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 1, i32 7
  %10 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timeout.i.i, align 4
  %call1.i.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 17, i32 noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i.cleanup_crit_edge, label %do.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %call1.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call1.i.i, %do.end.i ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcf2127_wdt_active_ping(ptr noundef %wdd) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then:                                          ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.pcf2127, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 8
  %timeout.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %6 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %timeout.i, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 17, i32 noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.then.if.end3_crit_edge, label %do.end

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %call1.i) #12
  br label %if.end3

if.end3:                                          ; preds = %do.end, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %ret.0 = phi i32 [ %call1.i, %do.end ], [ 0, %if.then.if.end3_crit_edge ], [ 0, %entry.if.end3_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf2127_wdt_ping(ptr nocapture noundef readonly %wdd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 8
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeout, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 17, i32 noundef %5) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcf2127_rtc_ts_read(ptr noundef %dev, ptr nocapture noundef writeonly %ts) unnamed_addr #4 align 64 {
entry:
  %tm = alloca %struct.rtc_time, align 4
  %data = alloca [25 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm) #9
  %2 = getelementptr inbounds i8, ptr %tm, i32 24
  %3 = call ptr @memset(ptr %2, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %data) #9
  %4 = getelementptr inbounds [25 x i8], ptr %data, i32 0, i32 1
  %5 = getelementptr inbounds [25 x i8], ptr %data, i32 0, i32 2
  %6 = getelementptr inbounds [25 x i8], ptr %data, i32 0, i32 19
  %7 = getelementptr inbounds [25 x i8], ptr %data, i32 0, i32 20
  %8 = getelementptr inbounds [25 x i8], ptr %data, i32 0, i32 21
  %9 = getelementptr inbounds [25 x i8], ptr %data, i32 0, i32 22
  %10 = getelementptr inbounds [25 x i8], ptr %data, i32 0, i32 23
  %11 = getelementptr inbounds [25 x i8], ptr %data, i32 0, i32 24
  %regmap = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 2
  %12 = call ptr @memset(ptr %data, i32 255, i32 25)
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 8
  %call1 = call i32 @regmap_bulk_read(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %data, i32 noundef 25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body2, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef %call1) #12
  br label %cleanup

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcf2127_rtc_ts_read.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcf2127_rtc_ts_read, %cond.end)) #9
          to label %if.then8 [label %cond.end], !srcloc !176

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %data, align 1
  %conv = zext i8 %16 to i32
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %4, align 1
  %conv10 = zext i8 %18 to i32
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %5, align 1
  %conv12 = zext i8 %20 to i32
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %6, align 1
  %conv14 = zext i8 %22 to i32
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %7, align 1
  %conv16 = zext i8 %24 to i32
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %8, align 1
  %conv18 = zext i8 %26 to i32
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %9, align 1
  %conv20 = zext i8 %28 to i32
  %29 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %10, align 1
  %conv22 = zext i8 %30 to i32
  %31 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %11, align 1
  %conv24 = zext i8 %32 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcf2127_rtc_ts_read.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i32 noundef %conv, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %conv14, i32 noundef %conv16, i32 noundef %conv18, i32 noundef %conv20, i32 noundef %conv22, i32 noundef %conv24) #9
  br label %cond.end

cond.end:                                         ; preds = %if.then8, %do.body2
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %6, align 1
  %35 = and i8 %34, 127
  %call42 = call i32 @_bcd2bin(i8 noundef zeroext %35) #14
  %36 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call42, ptr %tm, align 4
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %7, align 1
  %39 = and i8 %38, 127
  %call63 = call i32 @_bcd2bin(i8 noundef zeroext %39) #14
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %40 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call63, ptr %tm_min, align 4
  %41 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %8, align 1
  %43 = and i8 %42, 63
  %call86 = call i32 @_bcd2bin(i8 noundef zeroext %43) #14
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %44 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call86, ptr %tm_hour, align 4
  %45 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %9, align 1
  %47 = and i8 %46, 63
  %call109 = call i32 @_bcd2bin(i8 noundef zeroext %47) #14
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %48 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call109, ptr %tm_mday, align 4
  %49 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %10, align 1
  %51 = and i8 %50, 31
  %call132 = call i32 @_bcd2bin(i8 noundef zeroext %51) #14
  %sub = add i32 %call132, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %52 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub, ptr %tm_mon, align 4
  %53 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %11, align 1
  %call147 = call i32 @_bcd2bin(i8 noundef zeroext %54) #14
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %call147)
  %cmp = icmp slt i32 %call147, 70
  %add154 = add i32 %call147, 100
  %spec.select = select i1 %cmp, i32 %add154, i32 %call147
  %55 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %spec.select, ptr %tm_year, align 4
  %call156 = call i32 @rtc_valid_tm(ptr noundef nonnull %tm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.end162, label %do.end161

do.end161:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %call156) #12
  br label %cleanup

if.end162:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call163 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %tm) #9
  %56 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %call163, ptr %ts, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end162, %do.end161, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call156, %do.end161 ], [ 0, %if.end162 ]
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %data) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_valid_tm(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf2127_wdt_start(ptr nocapture noundef readonly %wdd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 8
  %timeout.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %4 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeout.i, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 17, i32 noundef %5) #9
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf2127_wdt_stop(ptr nocapture noundef readonly %wdd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.pcf2127, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 8
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 17, i32 noundef 0) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf2127_wdt_set_timeout(ptr noundef %wdd, i32 noundef %new_timeout) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcf2127_wdt_set_timeout.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcf2127_wdt_set_timeout, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcf2127_wdt_set_timeout.__UNIQUE_ID_ddebug293, ptr noundef %1, ptr noundef nonnull @.str.57, i32 noundef %new_timeout, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %timeout4 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %4 = ptrtoint ptr %timeout4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %new_timeout, ptr %timeout4, align 4
  %status.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  %5 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %status.i.i, align 4
  %and1.i.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %do.end.pcf2127_wdt_active_ping.exit_crit_edge, label %if.then.i

do.end.pcf2127_wdt_active_ping.exit_crit_edge:    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcf2127_wdt_active_ping.exit

if.then.i:                                        ; preds = %do.end
  %driver_data.i.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %7 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.pcf2127, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i.i, align 8
  %call1.i.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 17, i32 noundef %new_timeout) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i.pcf2127_wdt_active_ping.exit_crit_edge, label %do.end.i

if.then.i.pcf2127_wdt_active_ping.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcf2127_wdt_active_ping.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 1
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %call1.i.i) #12
  br label %pcf2127_wdt_active_ping.exit

pcf2127_wdt_active_ping.exit:                     ; preds = %do.end.i, %if.then.i.pcf2127_wdt_active_ping.exit_crit_edge, %do.end.pcf2127_wdt_active_ping.exit_crit_edge
  %ret.0.i = phi i32 [ %call1.i.i, %do.end.i ], [ 0, %if.then.i.pcf2127_wdt_active_ping.exit_crit_edge ], [ 0, %do.end.pcf2127_wdt_active_ping.exit_crit_edge ]
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timestamp0_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  %ctrl1 = alloca i32, align 4
  %ctrl2 = alloca i32, align 4
  %ts = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl1) #9
  %4 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ctrl1, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl2) #9
  %5 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %ctrl2, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ts) #9
  %6 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %ts, align 8, !annotation !175
  %irq_enabled = getelementptr inbounds %struct.pcf2127, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %irq_enabled, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %ts_valid = getelementptr inbounds %struct.pcf2127, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %ts_valid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ts_valid, align 8, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool1.not = icmp eq i8 %10, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %ts3 = getelementptr inbounds %struct.pcf2127, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %ts3 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ts3, align 8
  %13 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %ts, align 8
  br label %if.end27

if.else:                                          ; preds = %entry
  %regmap = getelementptr inbounds %struct.pcf2127, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 8
  %call4 = call i32 @regmap_read(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %ctrl1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.else
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 8
  %call9 = call i32 @regmap_read(ptr noundef %17, i32 noundef 1, ptr noundef nonnull %ctrl2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %18 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctrl1, align 4
  %and = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %land.lhs.true, label %if.end12.if.end17_crit_edge

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end12
  %20 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ctrl2, align 4
  %and14 = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.end12.if.end17_crit_edge
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent, align 8
  %call19 = call fastcc i32 @pcf2127_rtc_ts_read(ptr noundef %23, ptr noundef nonnull %ts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %wdd = getelementptr inbounds %struct.pcf2127, ptr %3, i32 0, i32 1
  %call23 = call fastcc i32 @pcf2127_wdt_active_ping(ptr noundef %wdd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.if.end27_crit_edge, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end27:                                         ; preds = %if.end22.if.end27_crit_edge, %if.end
  %24 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %ts, align 8
  %call28 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.59, i64 noundef %25)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end22.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.end27 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ts) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl1) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timestamp0_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %irq_enabled = getelementptr inbounds %struct.pcf2127, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %irq_enabled, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ts_valid = getelementptr inbounds %struct.pcf2127, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %ts_valid to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %ts_valid, align 8
  br label %cleanup

if.else:                                          ; preds = %entry
  %regmap = getelementptr inbounds %struct.pcf2127, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 0, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef %call.i) #12
  br label %cleanup

if.end:                                           ; preds = %if.else
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 8
  %call.i31 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 1, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool6.not = icmp eq i32 %call.i31, 0
  br i1 %tobool6.not, label %if.end11, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.61, i32 noundef %call.i31) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %status.i.i = getelementptr inbounds %struct.pcf2127, ptr %3, i32 0, i32 1, i32 18
  %11 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %status.i.i, align 4
  %and1.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end11.cleanup_crit_edge, label %if.then.i

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end11
  %driver_data.i.i.i = getelementptr inbounds %struct.pcf2127, ptr %3, i32 0, i32 1, i32 16
  %13 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.pcf2127, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i.i, align 8
  %timeout.i.i = getelementptr inbounds %struct.pcf2127, ptr %3, i32 0, i32 1, i32 7
  %17 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %timeout.i.i, align 4
  %call1.i.i = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 17, i32 noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i.cleanup_crit_edge, label %pcf2127_wdt_active_ping.exit

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

pcf2127_wdt_active_ping.exit:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i = getelementptr inbounds %struct.pcf2127, ptr %3, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %call1.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %pcf2127_wdt_active_ping.exit, %if.then.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end10, %do.end, %if.then
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i31, %do.end10 ], [ %call1.i.i, %pcf2127_wdt_active_ping.exit ], [ %count, %if.then ], [ %count, %if.then.i.cleanup_crit_edge ], [ %count, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf2127_spi_probe(ptr noundef %spi) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull @pcf2127_spi_probe.config, ptr noundef nonnull @pcf2127_spi_probe._key, ptr noundef nonnull @.str.66) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.67, i32 noundef %0) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %1 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq, align 4
  %call5 = tail call ptr @spi_get_device_id(ptr noundef %spi) #9
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call5, i32 0, i32 1
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool = icmp ne i32 %4, 0
  %call6 = tail call fastcc i32 @pcf2127_probe(ptr noundef %spi, ptr noundef %call, i32 noundef %2, i1 noundef zeroext %tobool)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %0, %do.end ], [ %call6, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !25, !27, !29, !30, !32, !33, !34, !35, !36, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !116, !117, !118, !120, !122, !124, !126, !127, !128, !130, !132, !134, !135, !137, !139, !140, !141, !142, !144, !145, !146, !148, !150, !152, !154, !156, !158, !160, !161, !163, !164}
!llvm.named.register.sp = !{!165}
!llvm.module.flags = !{!166, !167, !168, !169, !170, !171, !172, !173}
!llvm.ident = !{!174}

!0 = !{ptr @__initcall__kmod_rtc_pcf2127__296_1025_pcf2127_init6, !1, !"__initcall__kmod_rtc_pcf2127__296_1025_pcf2127_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 1025, i32 1}
!2 = !{ptr @__exitcall_pcf2127_exit, !3, !"__exitcall_pcf2127_exit", i1 false, i1 false}
!3 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 1032, i32 1}
!4 = !{ptr @__UNIQUE_ID_author297, !5, !"__UNIQUE_ID_author297", i1 false, i1 false}
!5 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 1034, i32 1}
!6 = !{ptr @__UNIQUE_ID_description298, !7, !"__UNIQUE_ID_description298", i1 false, i1 false}
!7 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 1035, i32 1}
!8 = !{ptr @__UNIQUE_ID_file299, !9, !"__UNIQUE_ID_file299", i1 false, i1 false}
!9 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 1036, i32 1}
!10 = !{ptr @__UNIQUE_ID_license300, !9, !"__UNIQUE_ID_license300", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 1013, i32 3}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @pcf2127_init._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @pcf2127_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 1019, i32 3}
!19 = !{ptr @pcf2127_init._entry.3, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @pcf2127_init._entry_ptr.5, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 910, i32 11}
!23 = !{ptr @pcf2127_i2c_driver, !24, !"pcf2127_i2c_driver", i1 false, i1 false}
!24 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 908, i32 26}
!25 = !{ptr @pcf2127_i2c_probe.config, !26, !"config", i1 false, i1 false}
!26 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 879, i32 36}
!27 = !{ptr @pcf2127_i2c_probe._key, !28, !"_key", i1 false, i1 false}
!28 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 888, i32 11}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 891, i32 3}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @pcf2127_i2c_probe._entry, !31, !"_entry", i1 false, i1 false}
!36 = !{ptr @pcf2127_i2c_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @pcf2127_i2c_regmap, !38, !"pcf2127_i2c_regmap", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 867, i32 32}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 640, i32 2}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @pcf2127_probe.__UNIQUE_ID_ddebug295, !40, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 667, i32 4}
!46 = !{ptr @pcf2127_probe._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @pcf2127_probe._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 673, i32 54}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 727, i32 3}
!52 = !{ptr @pcf2127_probe._entry.17, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @pcf2127_probe._entry_ptr.19, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 744, i32 3}
!56 = !{ptr @pcf2127_probe._entry.20, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @pcf2127_probe._entry_ptr.22, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 758, i32 3}
!60 = !{ptr @pcf2127_probe._entry.23, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @pcf2127_probe._entry_ptr.25, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 772, i32 3}
!64 = !{ptr @pcf2127_probe._entry.26, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @pcf2127_probe._entry_ptr.28, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 779, i32 3}
!68 = !{ptr @pcf2127_probe._entry.29, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @pcf2127_probe._entry_ptr.31, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @pcf2127_rtc_ops, !71, !"pcf2127_rtc_ops", i1 false, i1 false}
!71 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 543, i32 35}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 131, i32 3}
!74 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @pcf2127_rtc_read_time._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @pcf2127_rtc_read_time._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 136, i32 3}
!79 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @pcf2127_rtc_read_time._entry.34, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @pcf2127_rtc_read_time._entry_ptr.37, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 145, i32 3}
!84 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @pcf2127_rtc_read_time._entry.38, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @pcf2127_rtc_read_time._entry_ptr.41, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 150, i32 2}
!89 = !{ptr @pcf2127_rtc_read_time.__UNIQUE_ID_ddebug290, !88, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 167, i32 2}
!92 = !{ptr @pcf2127_rtc_read_time.__UNIQUE_ID_ddebug291, !91, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 182, i32 2}
!95 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @pcf2127_rtc_set_time.__UNIQUE_ID_ddebug292, !94, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 204, i32 3}
!99 = !{ptr @pcf2127_rtc_set_time._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @pcf2127_rtc_set_time._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 297, i32 4}
!103 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @pcf2127_wdt_active_ping._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @pcf2127_wdt_active_ping._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 461, i32 3}
!108 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @pcf2127_rtc_ts_read._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @pcf2127_rtc_ts_read._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 465, i32 2}
!113 = !{ptr @pcf2127_rtc_ts_read.__UNIQUE_ID_ddebug294, !112, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 485, i32 3}
!116 = !{ptr @pcf2127_rtc_ts_read._entry.52, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @pcf2127_rtc_ts_read._entry_ptr.54, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 348, i32 38}
!120 = !{ptr @pcf2127_wdt_info, !121, !"pcf2127_wdt_info", i1 false, i1 false}
!121 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 329, i32 35}
!122 = !{ptr @pcf2127_watchdog_ops, !123, !"pcf2127_watchdog_ops", i1 false, i1 false}
!123 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 334, i32 34}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 321, i32 2}
!126 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @pcf2127_wdt_set_timeout.__UNIQUE_ID_ddebug293, !125, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!128 = !{ptr @pcf2127_attr_group, !129, !"pcf2127_attr_group", i1 false, i1 false}
!129 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 629, i32 37}
!130 = !{ptr @pcf2127_attrs, !131, !"pcf2127_attrs", i1 false, i1 false}
!131 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 624, i32 26}
!132 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 622, i32 8}
!134 = !{ptr @dev_attr_timestamp0, !133, !"dev_attr_timestamp0", i1 false, i1 false}
!135 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 619, i32 22}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 567, i32 4}
!139 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @timestamp0_store._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @timestamp0_store._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 574, i32 4}
!144 = !{ptr @timestamp0_store._entry.62, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @timestamp0_store._entry_ptr.64, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @pcf2127_of_match, !147, !"pcf2127_of_match", i1 false, i1 false}
!147 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 788, i32 34}
!148 = !{ptr @pcf2127_i2c_id, !149, !"pcf2127_i2c_id", i1 false, i1 false}
!149 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 900, i32 35}
!150 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 977, i32 11}
!152 = !{ptr @pcf2127_spi_driver, !153, !"pcf2127_spi_driver", i1 false, i1 false}
!153 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 975, i32 26}
!154 = !{ptr @pcf2127_spi_id, !155, !"pcf2127_spi_id", i1 false, i1 false}
!155 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 967, i32 35}
!156 = !{ptr @pcf2127_spi_probe.config, !157, !"config", i1 false, i1 false}
!157 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 946, i32 36}
!158 = !{ptr @pcf2127_spi_probe._key, !159, !"_key", i1 false, i1 false}
!159 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 955, i32 11}
!160 = !{ptr @.str.66, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.67, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/rtc/rtc-pcf2127.c", i32 957, i32 3}
!163 = !{ptr @pcf2127_spi_probe._entry, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @pcf2127_spi_probe._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{!"sp"}
!166 = !{i32 1, !"wchar_size", i32 2}
!167 = !{i32 1, !"min_enum_size", i32 4}
!168 = !{i32 8, !"branch-target-enforcement", i32 0}
!169 = !{i32 8, !"sign-return-address", i32 0}
!170 = !{i32 8, !"sign-return-address-all", i32 0}
!171 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!172 = !{i32 7, !"uwtable", i32 1}
!173 = !{i32 7, !"frame-pointer", i32 2}
!174 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!175 = !{!"auto-init"}
!176 = !{i64 2149011663, i64 2149011668, i64 2149011681, i64 2149011725, i64 2149011759, i64 2149011780}
!177 = !{!"branch_weights", i32 2000, i32 1}
!178 = !{i8 0, i8 2}
!179 = !{i64 6364785}
!180 = !{i64 6364982}
!181 = !{i64 2153850215}
!182 = !{i64 2155830940, i64 2155831220, i64 2155831554, i64 2155831888}
