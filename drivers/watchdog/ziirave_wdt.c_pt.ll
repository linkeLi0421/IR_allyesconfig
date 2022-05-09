; ModuleID = '/llk/IR_all_yes/drivers/watchdog/ziirave_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/ziirave_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.ziirave_wdt_data = type { %struct.mutex, %struct.watchdog_device, %struct.ziirave_wdt_rev, %struct.ziirave_wdt_rev, i32 }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ziirave_wdt_rev = type { i8, i8 }
%struct.firmware = type { i32, ptr, ptr }
%struct.ihex_binrec = type <{ i32, i16, [0 x i8] }>

@__param_str_wdt_timeout = internal constant [24 x i8] c"ziirave_wdt.wdt_timeout\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@wdt_timeout = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_wdt_timeout = internal constant %struct.kernel_param { ptr @__param_str_wdt_timeout, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @wdt_timeout } }, section "__param", align 4
@__UNIQUE_ID_wdt_timeouttype288 = internal constant [37 x i8] c"ziirave_wdt.parmtype=wdt_timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_wdt_timeout289 = internal constant [57 x i8] c"ziirave_wdt.parm=wdt_timeout:Watchdog timeout in seconds\00", section ".modinfo", align 1
@__param_str_reset_duration = internal constant [27 x i8] c"ziirave_wdt.reset_duration\00", align 1
@reset_duration = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_reset_duration = internal constant %struct.kernel_param { ptr @__param_str_reset_duration, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @reset_duration } }, section "__param", align 4
@__UNIQUE_ID_reset_durationtype290 = internal constant [40 x i8] c"ziirave_wdt.parmtype=reset_duration:int\00", section ".modinfo", align 1
@__UNIQUE_ID_reset_duration291 = internal constant [78 x i8] c"ziirave_wdt.parm=reset_duration:Watchdog reset pulse duration in milliseconds\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [21 x i8] c"ziirave_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype292 = internal constant [35 x i8] c"ziirave_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout293 = internal constant [77 x i8] c"ziirave_wdt.parm=nowayout:Watchdog cannot be stopped once started default=1)\00", section ".modinfo", align 1
@__initcall__kmod_ziirave_wdt__294_742_ziirave_wdt_driver_init6 = internal global ptr @ziirave_wdt_driver_init, section ".initcall6.init", align 4
@ziirave_wdt_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ziirave_wdt_probe, ptr @ziirave_wdt_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @zrv_wdt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ziirave_wdt_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ziirave_wdt_driver_exit = internal global ptr @ziirave_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [62 x i8] c"ziirave_wdt.author=Martyn Welch <martyn.welch@collabora.co.uk\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [79 x i8] c"ziirave_wdt.description=Zodiac Aerospace RAVE Switch Watchdog Processor Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [46 x i8] c"ziirave_wdt.file=drivers/watchdog/ziirave_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [24 x i8] c"ziirave_wdt.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ziirave_wdt\00", [20 x i8] zeroinitializer }, align 32
@zrv_wdt_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"zii,rave-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ziirave_wdt_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rave-wdt\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ziirave_wdt_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&w_priv->sysfs_mutex\00", [43 x i8] zeroinitializer }, align 32
@ziirave_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"RAVE Switch Watchdog\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@ziirave_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @ziirave_wdt_start, ptr @ziirave_wdt_stop, ptr @ziirave_wdt_ping, ptr null, ptr @ziirave_wdt_set_timeout, ptr null, ptr @ziirave_wdt_get_timeleft, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ziirave_wdt_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ziirave_wdt_group, ptr null], [24 x i8] zeroinitializer }, align 32
@ziirave_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 632, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to read timeout\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ziirave_wdt_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/watchdog/ziirave_wdt.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ziirave_wdt_probe._entry_ptr = internal global ptr @ziirave_wdt_probe._entry, section ".printk_index", align 4
@ziirave_wdt_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 645, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to set timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@ziirave_wdt_probe._entry_ptr.9 = internal global ptr @ziirave_wdt_probe._entry.7, section ".printk_index", align 4
@ziirave_wdt_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 649, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Timeout set to %ds\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ziirave_wdt_probe._entry_ptr.13 = internal global ptr @ziirave_wdt_probe._entry.10, section ".printk_index", align 4
@ziirave_wdt_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 658, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to read state\0A\00", [42 x i8] zeroinitializer }, align 32
@ziirave_wdt_probe._entry_ptr.16 = internal global ptr @ziirave_wdt_probe._entry.14, section ".printk_index", align 4
@ziirave_wdt_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 667, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to init duration\0A\00", [39 x i8] zeroinitializer }, align 32
@ziirave_wdt_probe._entry_ptr.19 = internal global ptr @ziirave_wdt_probe._entry.17, section ".printk_index", align 4
@ziirave_wdt_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 674, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to read firmware version\0A\00", [63 x i8] zeroinitializer }, align 32
@ziirave_wdt_probe._entry_ptr.22 = internal global ptr @ziirave_wdt_probe._entry.20, section ".printk_index", align 4
@ziirave_wdt_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 680, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Firmware version: 02.%02u.%02u\0A\00", [32 x i8] zeroinitializer }, align 32
@ziirave_wdt_probe._entry_ptr.25 = internal global ptr @ziirave_wdt_probe._entry.23, section ".printk_index", align 4
@ziirave_wdt_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 685, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read bootloader version\0A\00", [61 x i8] zeroinitializer }, align 32
@ziirave_wdt_probe._entry_ptr.28 = internal global ptr @ziirave_wdt_probe._entry.26, section ".printk_index", align 4
@ziirave_wdt_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 691, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Bootloader version: 01.%02u.%02u\0A\00", [62 x i8] zeroinitializer }, align 32
@ziirave_wdt_probe._entry_ptr.31 = internal global ptr @ziirave_wdt_probe._entry.29, section ".printk_index", align 4
@ziirave_wdt_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.3, ptr @.str.4, i32 696, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to read reset reason\0A\00", [35 x i8] zeroinitializer }, align 32
@ziirave_wdt_probe._entry_ptr.34 = internal global ptr @ziirave_wdt_probe._entry.32, section ".printk_index", align 4
@ziirave_reasons = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.107, ptr @.str.108, ptr null, ptr null, ptr @.str.109, ptr null, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113], [56 x i8] zeroinitializer }, align 32
@ziirave_wdt_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.3, ptr @.str.4, i32 702, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid reset reason\0A\00", [42 x i8] zeroinitializer }, align 32
@ziirave_wdt_probe._entry_ptr.37 = internal global ptr @ziirave_wdt_probe._entry.35, section ".printk_index", align 4
@ziirave_wdt_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ziirave_wdt_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ziirave_wdt_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_firmware_version, ptr @dev_attr_bootloader_version, ptr @dev_attr_reset_reason, ptr @dev_attr_update_firmware, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_firmware_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ziirave_wdt_sysfs_show_firm, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bootloader_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ziirave_wdt_sysfs_show_boot, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_reset_reason = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ziirave_wdt_sysfs_show_reason, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_update_firmware = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ziirave_wdt_sysfs_store_firm }, [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"firmware_version\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"02.%02u.%02u\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bootloader_version\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"01.%02u.%02u\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reset_reason\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"update_firmware\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ziirave_wdt.fw\00", [17 x i8] zeroinitializer }, align 32
@ziirave_wdt_sysfs_store_firm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 514, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to request ihex firmware\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ziirave_wdt_sysfs_store_firm\00", [35 x i8] zeroinitializer }, align 32
@ziirave_wdt_sysfs_store_firm._entry_ptr = internal global ptr @ziirave_wdt_sysfs_store_firm._entry, section ".printk_index", align 4
@ziirave_wdt_sysfs_store_firm._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.4, i32 524, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"The firmware update failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ziirave_wdt_sysfs_store_firm._entry_ptr.50 = internal global ptr @ziirave_wdt_sysfs_store_firm._entry.48, section ".printk_index", align 4
@ziirave_wdt_sysfs_store_firm._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.4, i32 533, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to read firmware version: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ziirave_wdt_sysfs_store_firm._entry_ptr.53 = internal global ptr @ziirave_wdt_sysfs_store_firm._entry.51, section ".printk_index", align 4
@ziirave_wdt_sysfs_store_firm._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.47, ptr @.str.4, i32 539, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Firmware updated to version 02.%02u.%02u\0A\00", [54 x i8] zeroinitializer }, align 32
@ziirave_wdt_sysfs_store_firm._entry_ptr.56 = internal global ptr @ziirave_wdt_sysfs_store_firm._entry.54, section ".printk_index", align 4
@ziirave_wdt_sysfs_store_firm._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.47, ptr @.str.4, i32 544, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set timeout: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ziirave_wdt_sysfs_store_firm._entry_ptr.59 = internal global ptr @ziirave_wdt_sysfs_store_firm._entry.57, section ".printk_index", align 4
@request_ihex_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.62, i32 77, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Firmware \22%s\22 not valid IHEX records\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"request_ihex_firmware\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/ihex.h\00", [43 x i8] zeroinitializer }, align 32
@request_ihex_firmware._entry_ptr = internal global ptr @request_ihex_firmware._entry, section ".printk_index", align 4
@ziirave_firm_upload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.4, i32 348, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to jump to bootloader\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ziirave_firm_upload\00", [44 x i8] zeroinitializer }, align 32
@ziirave_firm_upload._entry_ptr = internal global ptr @ziirave_firm_upload._entry, section ".printk_index", align 4
@ziirave_firm_upload._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.4, i32 356, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to start download\0A\00", [38 x i8] zeroinitializer }, align 32
@ziirave_firm_upload._entry_ptr.67 = internal global ptr @ziirave_firm_upload._entry.65, section ".printk_index", align 4
@ziirave_firm_upload._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.64, ptr @.str.4, i32 362, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No ACK for start download\0A\00", [37 x i8] zeroinitializer }, align 32
@ziirave_firm_upload._entry_ptr.70 = internal global ptr @ziirave_firm_upload._entry.68, section ".printk_index", align 4
@ziirave_firm_upload._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.64, ptr @.str.4, i32 381, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to send EMPTY packet: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ziirave_firm_upload._entry_ptr.73 = internal global ptr @ziirave_firm_upload._entry.71, section ".printk_index", align 4
@ziirave_firm_upload._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.64, ptr @.str.4, i32 392, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to verify firmware: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ziirave_firm_upload._entry_ptr.76 = internal global ptr @ziirave_firm_upload._entry.74, section ".printk_index", align 4
@ziirave_firm_upload._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.64, ptr @.str.4, i32 400, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to end firmware download: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ziirave_firm_upload._entry_ptr.79 = internal global ptr @ziirave_firm_upload._entry.77, section ".printk_index", align 4
@ziirave_firm_upload._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.64, ptr @.str.4, i32 410, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to reset the watchdog: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ziirave_firm_upload._entry_ptr.82 = internal global ptr @ziirave_firm_upload._entry.80, section ".printk_index", align 4
@ziirave_firm_read_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.4, i32 176, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read status byte\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ziirave_firm_read_ack\00", [42 x i8] zeroinitializer }, align 32
@ziirave_firm_read_ack._entry_ptr = internal global ptr @ziirave_firm_read_ack._entry, section ".printk_index", align 4
@__ziirave_firm_write_pkt._entry = internal constant %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.4, i32 225, ptr @.str.5, ptr @.str.6 }, align 1
@.str.85 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Firmware packet too long (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__ziirave_firm_write_pkt\00", [39 x i8] zeroinitializer }, align 32
@__ziirave_firm_write_pkt._entry_ptr = internal global ptr @__ziirave_firm_write_pkt._entry, section ".printk_index", align 4
@__ziirave_firm_write_pkt._entry.87 = internal constant %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.4, i32 256, ptr @.str.5, ptr @.str.6 }, align 1
@.str.88 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to send DOWNLOAD_PACKET: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@__ziirave_firm_write_pkt._entry_ptr.89 = internal global ptr @__ziirave_firm_write_pkt._entry.87, section ".printk_index", align 4
@__ziirave_firm_write_pkt._entry.90 = internal constant %struct.pi_entry { ptr @.str.91, ptr @.str.86, ptr @.str.4, i32 264, ptr @.str.5, ptr @.str.6 }, align 1
@.str.91 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Failed to write firmware packet at address 0x%04x: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@__ziirave_firm_write_pkt._entry_ptr.92 = internal global ptr @__ziirave_firm_write_pkt._entry.90, section ".printk_index", align 4
@ziirave_firm_verify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.4, i32 312, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to send SET_READ_ADDR command: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ziirave_firm_verify\00", [44 x i8] zeroinitializer }, align 32
@ziirave_firm_verify._entry_ptr = internal global ptr @ziirave_firm_verify._entry, section ".printk_index", align 4
@ziirave_firm_verify._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.4, i32 321, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to READ DATA: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@ziirave_firm_verify._entry_ptr.97 = internal global ptr @ziirave_firm_verify._entry.95, section ".printk_index", align 4
@ziirave_firm_verify._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.94, ptr @.str.4, i32 329, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Firmware mismatch at address 0x%04x\0A\00", [59 x i8] zeroinitializer }, align 32
@ziirave_firm_verify._entry_ptr.100 = internal global ptr @ziirave_firm_verify._entry.98, section ".printk_index", align 4
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reset-duration-ms\00", [46 x i8] zeroinitializer }, align 32
@ziirave_wdt_init_duration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.4, i32 581, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"No reset pulse duration specified, using default\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ziirave_wdt_init_duration\00", [38 x i8] zeroinitializer }, align 32
@ziirave_wdt_init_duration._entry_ptr = internal global ptr @ziirave_wdt_init_duration._entry, section ".printk_index", align 4
@ziirave_wdt_init_duration._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.4, i32 590, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Setting reset duration to %dms\00", [33 x i8] zeroinitializer }, align 32
@ziirave_wdt_init_duration._entry_ptr.106 = internal global ptr @ziirave_wdt_init_duration._entry.104, section ".printk_index", align 4
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"power cycle\00", [20 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hw watchdog\00", [20 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"host request\00", [19 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"illegal configuration\00", [42 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"illegal instruction\00", [44 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"illegal trap\00", [19 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.114 = private unnamed_addr constant [12 x i8] c"wdt_timeout\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 85, i32 12 }
@___asan_gen_.117 = private unnamed_addr constant [15 x i8] c"reset_duration\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 89, i32 12 }
@___asan_gen_.120 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 94, i32 13 }
@___asan_gen_.123 = private unnamed_addr constant [19 x i8] c"ziirave_wdt_driver\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 732, i32 26 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 734, i32 11 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"zrv_wdt_of_match\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 726, i32 34 }
@___asan_gen_.132 = private unnamed_addr constant [15 x i8] c"ziirave_wdt_id\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 720, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 613, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"ziirave_wdt_info\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 419, i32 35 }
@___asan_gen_.144 = private unnamed_addr constant [16 x i8] c"ziirave_wdt_ops\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 424, i32 34 }
@___asan_gen_.147 = private unnamed_addr constant [19 x i8] c"ziirave_wdt_groups\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 632, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 645, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 649, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 658, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 667, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 674, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 678, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 685, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 689, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 696, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [16 x i8] c"ziirave_reasons\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 37, i32 14 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 702, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant [18 x i8] c"ziirave_wdt_group\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 565, i32 1 }
@___asan_gen_.237 = private unnamed_addr constant [18 x i8] c"ziirave_wdt_attrs\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 558, i32 26 }
@___asan_gen_.240 = private unnamed_addr constant [26 x i8] c"dev_attr_firmware_version\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [28 x i8] c"dev_attr_bootloader_version\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [22 x i8] c"dev_attr_reset_reason\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [25 x i8] c"dev_attr_update_firmware\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 454, i32 8 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 445, i32 24 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 478, i32 8 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 469, i32 24 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 500, i32 8 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 493, i32 24 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 555, i32 8 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 512, i32 35 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 514, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 524, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 532, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 537, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 544, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant [24 x i8] c"../include/linux/ihex.h\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 76, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 348, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 356, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 362, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 381, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 391, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 399, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 409, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 176, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 224, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 255, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 262, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 310, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 320, i32 5 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 328, i32 4 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 577, i32 10 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 580, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 589, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 37, i32 35 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 37, i32 50 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 38, i32 7 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 38, i32 29 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 39, i32 7 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 39, i32 30 }
@___asan_gen_.444 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.445 = private constant [34 x i8] c"../drivers/watchdog/ziirave_wdt.c\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 40, i32 7 }
@llvm.compiler.used = appending global [163 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__UNIQUE_ID_nowayout293, ptr @__UNIQUE_ID_nowayouttype292, ptr @__UNIQUE_ID_reset_duration291, ptr @__UNIQUE_ID_reset_durationtype290, ptr @__UNIQUE_ID_wdt_timeout289, ptr @__UNIQUE_ID_wdt_timeouttype288, ptr @__exitcall_ziirave_wdt_driver_exit, ptr @__initcall__kmod_ziirave_wdt__294_742_ziirave_wdt_driver_init6, ptr @__param_nowayout, ptr @__param_reset_duration, ptr @__param_wdt_timeout, ptr @__ziirave_firm_write_pkt._entry, ptr @__ziirave_firm_write_pkt._entry.87, ptr @__ziirave_firm_write_pkt._entry.90, ptr @__ziirave_firm_write_pkt._entry_ptr, ptr @__ziirave_firm_write_pkt._entry_ptr.89, ptr @__ziirave_firm_write_pkt._entry_ptr.92, ptr @request_ihex_firmware._entry, ptr @request_ihex_firmware._entry_ptr, ptr @ziirave_firm_read_ack._entry, ptr @ziirave_firm_read_ack._entry_ptr, ptr @ziirave_firm_upload._entry, ptr @ziirave_firm_upload._entry.65, ptr @ziirave_firm_upload._entry.68, ptr @ziirave_firm_upload._entry.71, ptr @ziirave_firm_upload._entry.74, ptr @ziirave_firm_upload._entry.77, ptr @ziirave_firm_upload._entry.80, ptr @ziirave_firm_upload._entry_ptr, ptr @ziirave_firm_upload._entry_ptr.67, ptr @ziirave_firm_upload._entry_ptr.70, ptr @ziirave_firm_upload._entry_ptr.73, ptr @ziirave_firm_upload._entry_ptr.76, ptr @ziirave_firm_upload._entry_ptr.79, ptr @ziirave_firm_upload._entry_ptr.82, ptr @ziirave_firm_verify._entry, ptr @ziirave_firm_verify._entry.95, ptr @ziirave_firm_verify._entry.98, ptr @ziirave_firm_verify._entry_ptr, ptr @ziirave_firm_verify._entry_ptr.100, ptr @ziirave_firm_verify._entry_ptr.97, ptr @ziirave_wdt_driver_exit, ptr @ziirave_wdt_init_duration._entry, ptr @ziirave_wdt_init_duration._entry.104, ptr @ziirave_wdt_init_duration._entry_ptr, ptr @ziirave_wdt_init_duration._entry_ptr.106, ptr @ziirave_wdt_probe._entry, ptr @ziirave_wdt_probe._entry.10, ptr @ziirave_wdt_probe._entry.14, ptr @ziirave_wdt_probe._entry.17, ptr @ziirave_wdt_probe._entry.20, ptr @ziirave_wdt_probe._entry.23, ptr @ziirave_wdt_probe._entry.26, ptr @ziirave_wdt_probe._entry.29, ptr @ziirave_wdt_probe._entry.32, ptr @ziirave_wdt_probe._entry.35, ptr @ziirave_wdt_probe._entry.7, ptr @ziirave_wdt_probe._entry_ptr, ptr @ziirave_wdt_probe._entry_ptr.13, ptr @ziirave_wdt_probe._entry_ptr.16, ptr @ziirave_wdt_probe._entry_ptr.19, ptr @ziirave_wdt_probe._entry_ptr.22, ptr @ziirave_wdt_probe._entry_ptr.25, ptr @ziirave_wdt_probe._entry_ptr.28, ptr @ziirave_wdt_probe._entry_ptr.31, ptr @ziirave_wdt_probe._entry_ptr.34, ptr @ziirave_wdt_probe._entry_ptr.37, ptr @ziirave_wdt_probe._entry_ptr.9, ptr @ziirave_wdt_sysfs_store_firm._entry, ptr @ziirave_wdt_sysfs_store_firm._entry.48, ptr @ziirave_wdt_sysfs_store_firm._entry.51, ptr @ziirave_wdt_sysfs_store_firm._entry.54, ptr @ziirave_wdt_sysfs_store_firm._entry.57, ptr @ziirave_wdt_sysfs_store_firm._entry_ptr, ptr @ziirave_wdt_sysfs_store_firm._entry_ptr.50, ptr @ziirave_wdt_sysfs_store_firm._entry_ptr.53, ptr @ziirave_wdt_sysfs_store_firm._entry_ptr.56, ptr @ziirave_wdt_sysfs_store_firm._entry_ptr.59, ptr @wdt_timeout, ptr @reset_duration, ptr @nowayout, ptr @ziirave_wdt_driver, ptr @.str, ptr @zrv_wdt_of_match, ptr @ziirave_wdt_id, ptr @ziirave_wdt_probe.__key, ptr @.str.1, ptr @ziirave_wdt_info, ptr @ziirave_wdt_ops, ptr @ziirave_wdt_groups, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @ziirave_reasons, ptr @.str.36, ptr @ziirave_wdt_group, ptr @ziirave_wdt_attrs, ptr @dev_attr_firmware_version, ptr @dev_attr_bootloader_version, ptr @dev_attr_reset_reason, ptr @dev_attr_update_firmware, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113], section "llvm.metadata"
@0 = internal global [111 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_duration to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_wdt_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zrv_wdt_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_wdt_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_wdt_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_wdt_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_wdt_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_wdt_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_wdt_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_wdt_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_wdt_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_wdt_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_wdt_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_wdt_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_wdt_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_reasons to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_wdt_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_wdt_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_wdt_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_firmware_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bootloader_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_reset_reason to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_update_firmware to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_wdt_sysfs_store_firm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_wdt_sysfs_store_firm._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_wdt_sysfs_store_firm._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_wdt_sysfs_store_firm._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_wdt_sysfs_store_firm._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_ihex_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_firm_upload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_firm_upload._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_firm_upload._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_firm_upload._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_firm_upload._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_firm_upload._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_firm_upload._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_firm_read_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_firm_verify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_firm_verify._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_firm_verify._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_wdt_init_duration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ziirave_wdt_init_duration._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ziirave_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ziirave_wdt_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ziirave_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @ziirave_wdt_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ziirave_wdt_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #7
  %and.i = and i32 %call.i.i, 35520512
  call void @__sanitizer_cov_trace_const_cmp4(i32 35520512, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 35520512
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 208, i32 noundef 3520) #7
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @ziirave_wdt_probe.__key) #7
  %wdd = getelementptr inbounds %struct.ziirave_wdt_data, ptr %call.i, i32 0, i32 1
  %info = getelementptr inbounds %struct.ziirave_wdt_data, ptr %call.i, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ziirave_wdt_info, ptr %info, align 4
  %ops = getelementptr inbounds %struct.ziirave_wdt_data, ptr %call.i, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ziirave_wdt_ops, ptr %ops, align 4
  %min_timeout = getelementptr inbounds %struct.ziirave_wdt_data, ptr %call.i, i32 0, i32 1, i32 9
  %8 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %min_timeout, align 4
  %max_timeout = getelementptr inbounds %struct.ziirave_wdt_data, ptr %call.i, i32 0, i32 1, i32 10
  %9 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 255, ptr %max_timeout, align 4
  %parent = getelementptr inbounds %struct.ziirave_wdt_data, ptr %call.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %parent, align 4
  %groups = getelementptr inbounds %struct.ziirave_wdt_data, ptr %call.i, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ziirave_wdt_groups, ptr %groups, align 4
  %12 = load i32, ptr @wdt_timeout, align 4
  %call13 = tail call i32 @watchdog_init_timeout(ptr noundef %wdd, i32 noundef %12, ptr noundef %dev) #7
  %timeout = getelementptr inbounds %struct.ziirave_wdt_data, ptr %call.i, i32 0, i32 1, i32 7
  %13 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then15, label %do.body.if.end30_crit_edge

do.body.if.end30_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then15:                                        ; preds = %do.body
  %call16 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.end21, label %if.end23

do.end21:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end23:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %15 = add nsw i32 %call16, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -253, i32 %15)
  %16 = icmp ult i32 %15, -253
  %val.0 = select i1 %16, i32 30, i32 %call16
  %17 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %val.0, ptr %timeout, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end23, %do.body.if.end30_crit_edge
  %18 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %timeout, align 4
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 -32
  %conv.i195 = trunc i32 %19 to i8
  %call.i196 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr.i, i8 noundef zeroext 7, i8 noundef zeroext %conv.i195) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i196)
  %tobool.not.i = icmp eq i32 %call.i196, 0
  br i1 %tobool.not.i, label %do.end44, label %do.end39

do.end39:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  br label %cleanup

do.end44:                                         ; preds = %if.end30
  %22 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %timeout, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %19) #10
  %23 = load i8, ptr @nowayout, align 1, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool49.not = icmp eq i8 %23, 0
  br i1 %tobool49.not, label %do.end44.watchdog_set_nowayout.exit_crit_edge, label %if.then.i197

do.end44.watchdog_set_nowayout.exit_crit_edge:    ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %watchdog_set_nowayout.exit

if.then.i197:                                     ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #9
  %status.i = getelementptr inbounds %struct.ziirave_wdt_data, ptr %call.i, i32 0, i32 1, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #7
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i197, %do.end44.watchdog_set_nowayout.exit_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call50 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %do.end55, label %if.end57

do.end55:                                         ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end57:                                         ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp58 = icmp eq i32 %call50, 0
  br i1 %cmp58, label %if.then59, label %if.end57.if.end62_crit_edge

if.end57.if.end62_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 -32
  %call.i.i198 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr.i.i, i8 noundef zeroext 6, i8 noundef zeroext 1) #7
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.end57.if.end62_crit_edge
  %call63 = tail call fastcc i32 @ziirave_wdt_init_duration(ptr noundef %client)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end70, label %do.end68

do.end68:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end70:                                         ; preds = %if.end62
  %firmware_rev = getelementptr inbounds %struct.ziirave_wdt_data, ptr %call.i, i32 0, i32 3
  %call71 = tail call fastcc i32 @ziirave_wdt_revision(ptr noundef %client, ptr noundef %firmware_rev, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %do.end81, label %do.end76

do.end76:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #10
  br label %cleanup

do.end81:                                         ; preds = %if.end70
  %27 = ptrtoint ptr %firmware_rev to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %firmware_rev, align 2
  %conv = zext i8 %28 to i32
  %minor = getelementptr inbounds %struct.ziirave_wdt_data, ptr %call.i, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %minor, align 1
  %conv85 = zext i8 %30 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %conv, i32 noundef %conv85) #10
  %bootloader_rev = getelementptr inbounds %struct.ziirave_wdt_data, ptr %call.i, i32 0, i32 2
  %call86 = tail call fastcc i32 @ziirave_wdt_revision(ptr noundef %client, ptr noundef %bootloader_rev, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %do.end96, label %do.end91

do.end91:                                         ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #10
  br label %cleanup

do.end96:                                         ; preds = %do.end81
  %31 = ptrtoint ptr %bootloader_rev to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bootloader_rev, align 4
  %conv100 = zext i8 %32 to i32
  %minor102 = getelementptr inbounds %struct.ziirave_wdt_data, ptr %call.i, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %minor102 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %minor102, align 1
  %conv103 = zext i8 %34 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %conv100, i32 noundef %conv103) #10
  %call104 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 5) #7
  %reset_reason = getelementptr inbounds %struct.ziirave_wdt_data, ptr %call.i, i32 0, i32 4
  %35 = ptrtoint ptr %reset_reason to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call104, ptr %reset_reason, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp106 = icmp slt i32 %call104, 0
  br i1 %cmp106, label %do.end111, label %if.end114

do.end111:                                        ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #10
  %36 = ptrtoint ptr %reset_reason to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %reset_reason, align 4
  br label %cleanup

if.end114:                                        ; preds = %do.end96
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call104)
  %cmp116 = icmp ugt i32 %call104, 9
  br i1 %cmp116, label %if.end114.do.end124_crit_edge, label %lor.lhs.false118

if.end114.do.end124_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end124

lor.lhs.false118:                                 ; preds = %if.end114
  %38 = lshr i32 44, %call104
  %39 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool120.not.not = icmp eq i32 %39, 0
  br i1 %tobool120.not.not, label %if.end126, label %lor.lhs.false118.do.end124_crit_edge

lor.lhs.false118.do.end124_crit_edge:             ; preds = %lor.lhs.false118
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end124

do.end124:                                        ; preds = %lor.lhs.false118.do.end124_crit_edge, %if.end114.do.end124_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #10
  br label %cleanup

if.end126:                                        ; preds = %lor.lhs.false118
  call void @__sanitizer_cov_trace_pc() #9
  %call128 = tail call i32 @watchdog_register_device(ptr noundef %wdd) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end126, %do.end124, %do.end111, %do.end91, %do.end76, %do.end68, %do.end55, %do.end39, %do.end21, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %do.end21 ], [ %call.i196, %do.end39 ], [ %call50, %do.end55 ], [ %call63, %do.end68 ], [ %call71, %do.end76 ], [ %call86, %do.end91 ], [ %37, %do.end111 ], [ -19, %do.end124 ], [ %call128, %if.end126 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ziirave_wdt_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %wdd = getelementptr inbounds %struct.ziirave_wdt_data, ptr %1, i32 0, i32 1
  tail call void @watchdog_unregister_device(ptr noundef %wdd) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ziirave_wdt_set_timeout(ptr nocapture noundef %wdd, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %conv = trunc i32 %timeout to i8
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 7, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %timeout1 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %2 = ptrtoint ptr %timeout1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %timeout, ptr %timeout1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ziirave_wdt_stop(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -32
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr.i, i8 noundef zeroext 6, i8 noundef zeroext 1) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ziirave_wdt_init_duration(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @reset_duration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.then.do.end_crit_edge, label %if.else

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.else:                                          ; preds = %if.then
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.101, ptr noundef nonnull @reset_duration, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %phi.cmp = icmp sgt i32 %call.i.i, -1
  br i1 %phi.cmp, label %if.else.if.end9_crit_edge, label %if.else.do.end_crit_edge

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.end:                                           ; preds = %if.else.do.end_crit_edge, %if.then.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.102) #10
  br label %cleanup

if.end9:                                          ; preds = %if.else.if.end9_crit_edge, %entry.if.end9_crit_edge
  %3 = load i32, ptr @reset_duration, align 4
  %4 = add i32 %3, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %4)
  %5 = icmp ult i32 %4, -255
  br i1 %5, label %if.end9.cleanup_crit_edge, label %do.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %dev16 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev16, ptr noundef nonnull @.str.105, i32 noundef %3) #10
  %6 = load i32, ptr @reset_duration, align 4
  %conv = trunc i32 %6 to i8
  %call17 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 10, i8 noundef zeroext %conv) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.end9.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call17, %do.end15 ], [ 0, %do.end ], [ -22, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ziirave_wdt_revision(ptr noundef %client, ptr nocapture noundef writeonly %rev, i8 noundef zeroext %command) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %command) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %call to i8
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %rev, align 1
  %add = add i8 %command, 1
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %add) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv8 = trunc i32 %call3 to i8
  %minor = getelementptr inbounds %struct.ziirave_wdt_rev, ptr %rev, i32 0, i32 1
  %1 = ptrtoint ptr %minor to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv8, ptr %minor, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ziirave_wdt_start(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -32
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr.i, i8 noundef zeroext 6, i8 noundef zeroext 2) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ziirave_wdt_ping(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 9, i8 noundef zeroext 0) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ziirave_wdt_get_timeleft(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 8) #7
  %2 = tail call i32 @llvm.smax.i32(i32 %call, i32 0)
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ziirave_wdt_sysfs_show_firm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %3, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %firmware_rev = getelementptr inbounds %struct.ziirave_wdt_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %firmware_rev to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %firmware_rev, align 2
  %conv = zext i8 %5 to i32
  %minor = getelementptr inbounds %struct.ziirave_wdt_data, ptr %3, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %minor, align 1
  %conv3 = zext i8 %7 to i32
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.39, i32 noundef %conv, i32 noundef %conv3) #7
  tail call void @mutex_unlock(ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ziirave_wdt_sysfs_show_boot(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %3, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bootloader_rev = getelementptr inbounds %struct.ziirave_wdt_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bootloader_rev to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bootloader_rev, align 4
  %conv = zext i8 %5 to i32
  %minor = getelementptr inbounds %struct.ziirave_wdt_data, ptr %3, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %minor, align 1
  %conv3 = zext i8 %7 to i32
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %conv, i32 noundef %conv3) #7
  tail call void @mutex_unlock(ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ziirave_wdt_sysfs_show_reason(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %3, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %reset_reason = getelementptr inbounds %struct.ziirave_wdt_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %reset_reason to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reset_reason, align 4
  %arrayidx = getelementptr [10 x ptr], ptr @ziirave_reasons, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.43, ptr noundef %7) #7
  tail call void @mutex_unlock(ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ziirave_wdt_sysfs_store_firm(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  %address.i.i.i = alloca [2 x i8], align 2
  %data.i.i69 = alloca [16 x i8], align 1
  %lfw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lfw.i) #7
  %4 = ptrtoint ptr %lfw.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %lfw.i, align 4, !annotation !247
  %call.i = call i32 @request_firmware(ptr noundef nonnull %lfw.i, ptr noundef nonnull @.str.45, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %lfw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lfw.i, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 4
  %sub.i.i = add i32 %10, -6
  %arrayidx.i.i = getelementptr i8, ptr %8, i32 %sub.i.i
  %cmp.not10.i.i = icmp ugt ptr %8, %arrayidx.i.i
  br i1 %cmp.not10.i.i, label %if.end.i.do.end.i_crit_edge, label %for.body.preheader.i.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.body.preheader.i.i:                           ; preds = %if.end.i
  %len.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %arrayidx.i.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %rec.011.i.i = phi ptr [ %add.ptr.i.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %8, %for.body.preheader.i.i ]
  %cmp2.i.i = icmp eq ptr %rec.011.i.i, %arrayidx.i.i
  br i1 %cmp2.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %11 = ptrtoint ptr %len.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %len.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i.i = icmp eq i16 %12, 0
  br i1 %tobool.not.i.i, label %if.end, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %len.i.i.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.011.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %len.i.i.i.i, align 1
  %add.i.i.i.i = add i16 %14, 6
  %conv.i.i.i = zext i16 %add.i.i.i.i to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 3
  %and.i.i.i = and i32 %add.i.i.i, 131068
  %add.ptr.i.i.i = getelementptr i8, ptr %rec.011.i.i, i32 %and.i.i.i
  %cmp.not.i.i = icmp ugt ptr %add.ptr.i.i.i, %arrayidx.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.do.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.45) #10
  %15 = ptrtoint ptr %lfw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lfw.i, align 4
  call void @release_firmware(ptr noundef %16) #7
  br label %do.end

do.end:                                           ; preds = %do.end.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %entry.do.end_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.46) #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i) #7
  %call3 = call i32 @mutex_lock_interruptible_nested(ptr noundef %3, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.release_firmware_crit_edge

if.end.release_firmware_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_firmware

if.end6:                                          ; preds = %if.end
  %wdd = getelementptr inbounds %struct.ziirave_wdt_data, ptr %3, i32 0, i32 1
  %parent.i = getelementptr inbounds %struct.ziirave_wdt_data, ptr %3, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 -32
  %call.i70 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr.i, i8 noundef zeroext 12, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool.not.i71 = icmp eq i32 %call.i70, 0
  br i1 %tobool.not.i71, label %if.end.i73, label %do.end.i72

do.end.i72:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.63) #10
  br label %do.end12

if.end.i73:                                       ; preds = %if.end6
  call void @msleep(i32 noundef 500) #7
  %call1.i = call i32 @i2c_smbus_write_byte(ptr noundef %add.ptr.i, i8 noundef zeroext 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end8.i, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.66) #10
  br label %do.end12

if.end8.i:                                        ; preds = %if.end.i73
  %19 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 -32
  %call.i.i = call i32 @i2c_smbus_read_byte(ptr noundef %add.ptr.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.83) #10
  br label %do.end14.i

if.end.i.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp1.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp1.i.i, label %if.end16.i, label %if.end.i.i.do.end14.i_crit_edge

if.end.i.i.do.end14.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14.i

do.end14.i:                                       ; preds = %if.end.i.i.do.end14.i_crit_edge, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ -5, %if.end.i.i.do.end14.i_crit_edge ], [ %call.i.i, %do.end.i.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.69) #10
  br label %do.end12

if.end16.i:                                       ; preds = %if.end.i.i
  call void @msleep(i32 noundef 500) #7
  %21 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i, align 4
  %tobool17.not131.i = icmp eq ptr %22, null
  br i1 %tobool17.not131.i, label %if.end16.i.for.end.i_crit_edge, label %if.end16.i.for.body.i_crit_edge

if.end16.i.for.body.i_crit_edge:                  ; preds = %if.end16.i
  br label %for.body.i

if.end16.i.for.end.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end16.i.for.body.i_crit_edge
  %rec.0132.i = phi ptr [ %add.ptr.i.i.i79, %for.inc.i.for.body.i_crit_edge ], [ %22, %if.end16.i.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %rec.0132.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %rec.0132.i, align 1
  %data18.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.0132.i, i32 0, i32 2
  %len.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.0132.i, i32 0, i32 1
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %len.i, align 1
  %conv.i = trunc i16 %26 to i8
  %27 = trunc i32 %24 to i8
  %28 = and i8 %27, 127
  %conv.i.i = sub nuw i8 -128, %28
  %conv4.i.i = zext i8 %conv.i.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i.i, i8 %conv.i)
  %cmp.i96.i = icmp ult i8 %conv.i.i, %conv.i
  br i1 %cmp.i96.i, label %if.then.i.i, label %for.body.i.ziirave_firm_write_pkt.exit.i_crit_edge

for.body.i.ziirave_firm_write_pkt.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ziirave_firm_write_pkt.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  %call.i97.i = call fastcc i32 @__ziirave_firm_write_pkt(ptr noundef %wdd, i32 noundef %24, ptr noundef %data18.i, i8 noundef zeroext %conv.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97.i)
  %tobool.not.i.i74 = icmp eq i32 %call.i97.i, 0
  br i1 %tobool.not.i.i74, label %if.end.i99.i, label %if.then.i.i.do.end12_crit_edge

if.then.i.i.do.end12_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

if.end.i99.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add8.i.i = add i32 %24, %conv4.i.i
  %add.ptr.i98.i = getelementptr i8, ptr %data18.i, i32 %conv4.i.i
  %sub12.i.i = sub i8 %conv.i, %conv.i.i
  br label %ziirave_firm_write_pkt.exit.i

ziirave_firm_write_pkt.exit.i:                    ; preds = %if.end.i99.i, %for.body.i.ziirave_firm_write_pkt.exit.i_crit_edge
  %addr.addr.0.i.i = phi i32 [ %add8.i.i, %if.end.i99.i ], [ %24, %for.body.i.ziirave_firm_write_pkt.exit.i_crit_edge ]
  %data.addr.0.i.i = phi ptr [ %add.ptr.i98.i, %if.end.i99.i ], [ %data18.i, %for.body.i.ziirave_firm_write_pkt.exit.i_crit_edge ]
  %len.addr.0.i.i = phi i8 [ %sub12.i.i, %if.end.i99.i ], [ %conv.i, %for.body.i.ziirave_firm_write_pkt.exit.i_crit_edge ]
  %call15.i.i = call fastcc i32 @__ziirave_firm_write_pkt(ptr noundef %wdd, i32 noundef %addr.addr.0.i.i, ptr noundef %data.addr.0.i.i, i8 noundef zeroext %len.addr.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool20.not.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool20.not.i, label %for.inc.i, label %ziirave_firm_write_pkt.exit.i.do.end12_crit_edge

ziirave_firm_write_pkt.exit.i.do.end12_crit_edge: ; preds = %ziirave_firm_write_pkt.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

for.inc.i:                                        ; preds = %ziirave_firm_write_pkt.exit.i
  %29 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %len.i, align 1
  %add.i.i.i.i75 = add i16 %30, 6
  %conv.i.i.i76 = zext i16 %add.i.i.i.i75 to i32
  %add.i.i.i77 = add nuw nsw i32 %conv.i.i.i76, 3
  %and.i.i.i78 = and i32 %add.i.i.i77, 131068
  %add.ptr.i.i.i79 = getelementptr i8, ptr %rec.0132.i, i32 %and.i.i.i78
  %len.i.i80 = getelementptr inbounds %struct.ihex_binrec, ptr %add.ptr.i.i.i79, i32 0, i32 1
  %31 = ptrtoint ptr %len.i.i80 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %len.i.i80, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool.not.i101.i = icmp eq i16 %32, 0
  %tobool17.not145.i = icmp eq ptr %add.ptr.i.i.i79, null
  %tobool17.not.i = select i1 %tobool.not.i101.i, i1 true, i1 %tobool17.not145.i
  br i1 %tobool17.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end16.i.for.end.i_crit_edge
  %call15.i105.i = call fastcc i32 @__ziirave_firm_write_pkt(ptr noundef %wdd, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i105.i)
  %tobool25.not.i = icmp eq i32 %call15.i105.i, 0
  br i1 %tobool25.not.i, label %if.end31.i, label %do.end29.i

do.end29.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.72, i32 noundef %call15.i105.i) #10
  br label %do.end12

if.end31.i:                                       ; preds = %for.end.i
  call void @msleep(i32 noundef 20) #7
  %33 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parent.i, align 4
  %add.ptr.i109.i = getelementptr i8, ptr %34, i32 -32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data.i.i69) #7
  %35 = call ptr @memset(ptr %data.i.i69, i32 255, i32 16)
  %36 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i.i, align 4
  %tobool.not69.i.i = icmp eq ptr %37, null
  br i1 %tobool.not69.i.i, label %if.end31.i.if.end39.i_crit_edge, label %if.end31.i.for.body.i.i81_crit_edge

if.end31.i.for.body.i.i81_crit_edge:              ; preds = %if.end31.i
  br label %for.body.i.i81

if.end31.i.if.end39.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

for.body.i.i81:                                   ; preds = %for.inc33.i.i.for.body.i.i81_crit_edge, %if.end31.i.for.body.i.i81_crit_edge
  %rec.070.i.i = phi ptr [ %add.ptr.i.i.i.i, %for.inc33.i.i.for.body.i.i81_crit_edge ], [ %37, %if.end31.i.for.body.i.i81_crit_edge ]
  %len2.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.070.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %len2.i.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %len2.i.i, align 1
  %40 = ptrtoint ptr %rec.070.i.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %rec.070.i.i, align 1
  %42 = add i32 %41, -22399
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11135, i32 %42)
  %43 = icmp ult i32 %42, -11135
  br i1 %43, label %for.body.i.i81.for.inc33.i.i_crit_edge, label %if.end.i111.i

for.body.i.i81.for.inc33.i.i_crit_edge:           ; preds = %for.body.i.i81
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc33.i.i

if.end.i111.i:                                    ; preds = %for.body.i.i81
  %44 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %parent.i, align 4
  %add.ptr.i.i110.i = getelementptr i8, ptr %45, i32 -32
  %46 = trunc i32 %41 to i16
  %47 = lshr i16 %46, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %address.i.i.i) #7
  %48 = call i16 @llvm.bswap.i16(i16 %47) #7
  %49 = ptrtoint ptr %address.i.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %address.i.i.i, align 2
  %call.i.i.i = call i32 @i2c_smbus_write_block_data(ptr noundef %add.ptr.i.i110.i, i8 noundef zeroext 18, i8 noundef zeroext 2, ptr noundef nonnull %address.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %address.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool5.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool5.not.i.i, label %for.cond8.preheader.i.i, label %do.end.i113.i

for.cond8.preheader.i.i:                          ; preds = %if.end.i111.i
  %conv.i112.i = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp67.not.i.i = icmp eq i16 %39, 0
  br i1 %cmp67.not.i.i, label %for.cond8.preheader.i.i.for.end.i.i_crit_edge, label %for.cond8.preheader.i.i.for.body10.i.i_crit_edge

for.cond8.preheader.i.i.for.body10.i.i_crit_edge: ; preds = %for.cond8.preheader.i.i
  br label %for.body10.i.i

for.cond8.preheader.i.i.for.end.i.i_crit_edge:    ; preds = %for.cond8.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

do.end.i113.i:                                    ; preds = %if.end.i111.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.93, i32 noundef %call.i.i.i) #10
  br label %do.end37.i

for.body10.i.i:                                   ; preds = %if.end19.i.i.for.body10.i.i_crit_edge, %for.cond8.preheader.i.i.for.body10.i.i_crit_edge
  %i.068.i.i = phi i32 [ %inc.i.i, %if.end19.i.i.for.body10.i.i_crit_edge ], [ 0, %for.cond8.preheader.i.i.for.body10.i.i_crit_edge ]
  %call11.i.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr.i109.i, i8 noundef zeroext 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %cmp12.i.i = icmp slt i32 %call11.i.i, 0
  br i1 %cmp12.i.i, label %do.end17.i.i, label %if.end19.i.i

do.end17.i.i:                                     ; preds = %for.body10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.96, i32 noundef %call11.i.i) #10
  br label %do.end37.i

if.end19.i.i:                                     ; preds = %for.body10.i.i
  %conv20.i.i = trunc i32 %call11.i.i to i8
  %arrayidx.i.i82 = getelementptr [16 x i8], ptr %data.i.i69, i32 0, i32 %i.068.i.i
  %50 = ptrtoint ptr %arrayidx.i.i82 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv20.i.i, ptr %arrayidx.i.i82, align 1
  %inc.i.i = add nuw nsw i32 %i.068.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i112.i
  br i1 %exitcond.not.i.i, label %if.end19.i.i.for.end.i.i_crit_edge, label %if.end19.i.i.for.body10.i.i_crit_edge

if.end19.i.i.for.body10.i.i_crit_edge:            ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10.i.i

if.end19.i.i.for.end.i.i_crit_edge:               ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end19.i.i.for.end.i.i_crit_edge, %for.cond8.preheader.i.i.for.end.i.i_crit_edge
  %data21.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.070.i.i, i32 0, i32 2
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %data.i.i69, ptr %data21.i.i, i32 %conv.i112.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool25.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool25.not.i.i, label %for.end.i.i.for.inc33.i.i_crit_edge, label %do.end29.i.i

for.end.i.i.for.inc33.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc33.i.i

do.end29.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.99, i32 noundef %41) #10
  br label %do.end37.i

for.inc33.i.i:                                    ; preds = %for.end.i.i.for.inc33.i.i_crit_edge, %for.body.i.i81.for.inc33.i.i_crit_edge
  %51 = ptrtoint ptr %len2.i.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %len2.i.i, align 1
  %add.i.i.i.i.i = add i16 %52, 6
  %conv.i.i.i.i = zext i16 %add.i.i.i.i.i to i32
  %add.i.i.i114.i = add nuw nsw i32 %conv.i.i.i.i, 3
  %and.i.i.i.i = and i32 %add.i.i.i114.i, 131068
  %add.ptr.i.i.i.i = getelementptr i8, ptr %rec.070.i.i, i32 %and.i.i.i.i
  %len.i.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %len.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool.not.i.i.i = icmp eq i16 %54, 0
  %tobool.not83.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  %tobool.not.i115.i = select i1 %tobool.not.i.i.i, i1 true, i1 %tobool.not83.i.i
  br i1 %tobool.not.i115.i, label %for.inc33.i.i.if.end39.i_crit_edge, label %for.inc33.i.i.for.body.i.i81_crit_edge

for.inc33.i.i.for.body.i.i81_crit_edge:           ; preds = %for.inc33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i81

for.inc33.i.i.if.end39.i_crit_edge:               ; preds = %for.inc33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

do.end37.i:                                       ; preds = %do.end29.i.i, %do.end17.i.i, %do.end.i113.i
  %retval.2.i.ph.i = phi i32 [ %call.i.i.i, %do.end.i113.i ], [ %call11.i.i, %do.end17.i.i ], [ -22, %do.end29.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data.i.i69) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.75, i32 noundef %retval.2.i.ph.i) #10
  br label %do.end12

if.end39.i:                                       ; preds = %for.inc33.i.i.if.end39.i_crit_edge, %if.end31.i.if.end39.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data.i.i69) #7
  %call40.i = call i32 @i2c_smbus_write_byte(ptr noundef %add.ptr.i, i8 noundef zeroext 17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end47.i, label %do.end45.i

do.end45.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.78, i32 noundef %call40.i) #10
  br label %do.end12

if.end47.i:                                       ; preds = %if.end39.i
  %call48.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr.i, i8 noundef zeroext 11, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end14, label %do.end53.i

do.end53.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.81, i32 noundef %call48.i) #10
  br label %do.end12

do.end12:                                         ; preds = %do.end53.i, %do.end45.i, %do.end37.i, %do.end29.i, %ziirave_firm_write_pkt.exit.i.do.end12_crit_edge, %if.then.i.i.do.end12_crit_edge, %do.end14.i, %do.end6.i, %do.end.i72
  %retval.0.i83.ph = phi i32 [ %call48.i, %do.end53.i ], [ %call40.i, %do.end45.i ], [ %retval.2.i.ph.i, %do.end37.i ], [ %call15.i105.i, %do.end29.i ], [ %retval.0.i.ph.i, %do.end14.i ], [ %call1.i, %do.end6.i ], [ %call.i70, %do.end.i72 ], [ %call.i97.i, %if.then.i.i.do.end12_crit_edge ], [ %call15.i.i, %ziirave_firm_write_pkt.exit.i.do.end12_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.49, i32 noundef %retval.0.i83.ph) #10
  br label %unlock_mutex

if.end14:                                         ; preds = %if.end47.i
  call void @msleep(i32 noundef 500) #7
  %firmware_rev = getelementptr inbounds %struct.ziirave_wdt_data, ptr %3, i32 0, i32 3
  %call.i84 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %cmp.i = icmp slt i32 %call.i84, 0
  br i1 %cmp.i, label %if.end14.do.end20_crit_edge, label %if.end.i86

if.end14.do.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

if.end.i86:                                       ; preds = %if.end14
  %conv.i85 = trunc i32 %call.i84 to i8
  %55 = ptrtoint ptr %firmware_rev to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv.i85, ptr %firmware_rev, align 1
  %call3.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i86.do.end20_crit_edge, label %do.end25

if.end.i86.do.end20_crit_edge:                    ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

do.end20:                                         ; preds = %if.end.i86.do.end20_crit_edge, %if.end14.do.end20_crit_edge
  %retval.0.i87.ph = phi i32 [ %call3.i, %if.end.i86.do.end20_crit_edge ], [ %call.i84, %if.end14.do.end20_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.52, i32 noundef %retval.0.i87.ph) #10
  br label %unlock_mutex

do.end25:                                         ; preds = %if.end.i86
  %conv8.i = trunc i32 %call3.i to i8
  %minor.i = getelementptr inbounds %struct.ziirave_wdt_data, ptr %3, i32 0, i32 3, i32 1
  %56 = ptrtoint ptr %minor.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv8.i, ptr %minor.i, align 1
  %57 = ptrtoint ptr %firmware_rev to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %firmware_rev, align 2
  %conv = zext i8 %58 to i32
  %conv29 = and i32 %call3.i, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.55, i32 noundef %conv, i32 noundef %conv29) #10
  %timeout = getelementptr inbounds %struct.ziirave_wdt_data, ptr %3, i32 0, i32 1, i32 7
  %59 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %timeout, align 4
  %61 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %parent.i, align 4
  %add.ptr.i89 = getelementptr i8, ptr %62, i32 -32
  %conv.i90 = trunc i32 %60 to i8
  %call.i91 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr.i89, i8 noundef zeroext 7, i8 noundef zeroext %conv.i90) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool.not.i92 = icmp eq i32 %call.i91, 0
  br i1 %tobool.not.i92, label %ziirave_wdt_set_timeout.exit.thread, label %do.end37

ziirave_wdt_set_timeout.exit.thread:              ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %60, ptr %timeout, align 4
  br label %unlock_mutex

do.end37:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.58, i32 noundef %call.i91) #10
  br label %unlock_mutex

unlock_mutex:                                     ; preds = %do.end37, %ziirave_wdt_set_timeout.exit.thread, %do.end20, %do.end12
  %err.0 = phi i32 [ %retval.0.i83.ph, %do.end12 ], [ %retval.0.i87.ph, %do.end20 ], [ %call.i91, %do.end37 ], [ 0, %ziirave_wdt_set_timeout.exit.thread ]
  call void @mutex_unlock(ptr noundef %3) #7
  br label %release_firmware

release_firmware:                                 ; preds = %unlock_mutex, %if.end.release_firmware_crit_edge
  %err.1 = phi i32 [ %call3, %if.end.release_firmware_crit_edge ], [ %err.0, %unlock_mutex ]
  call void @release_firmware(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool41.not = icmp eq i32 %err.1, 0
  %count.err.1 = select i1 %tobool41.not, i32 %count, i32 %err.1
  br label %cleanup

cleanup:                                          ; preds = %release_firmware, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %count.err.1, %release_firmware ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ziirave_firm_write_pkt(ptr nocapture noundef readonly %wdd, i32 noundef %addr, ptr nocapture noundef readonly %data, i8 noundef zeroext %len) unnamed_addr #2 align 64 {
entry:
  %packet = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %addr to i16
  %1 = lshr i16 %0, 1
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -32
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %packet) #7
  %4 = getelementptr inbounds [20 x i8], ptr %packet, i32 0, i32 1
  %5 = getelementptr inbounds [20 x i8], ptr %packet, i32 0, i32 3
  %6 = getelementptr inbounds [20 x i8], ptr %packet, i32 0, i32 19
  %conv3 = zext i8 %len to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %len)
  %cmp = icmp ugt i8 %len, 16
  %7 = getelementptr inbounds i8, ptr %packet, i32 3
  %8 = call ptr @memset(ptr %7, i32 255, i32 17)
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.85, i32 noundef %conv3) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %len)
  %tobool.not = icmp ne i8 %len, 0
  %9 = add i32 %addr, -22399
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11135, i32 %9)
  %10 = icmp ult i32 %9, -11135
  %or.cond = and i1 %10, %tobool.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %11 = ptrtoint ptr %packet to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %len, ptr %packet, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %1) #7
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %4, align 1
  %14 = call ptr @memcpy(ptr %5, ptr %data, i32 %conv3)
  %add.ptr17 = getelementptr i8, ptr %5, i32 %conv3
  %sub = sub nsw i32 16, %conv3
  %15 = call ptr @memset(ptr %add.ptr17, i32 0, i32 %sub)
  %add = add nuw nsw i8 %len, 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end9
  %conv1979 = phi i32 [ 0, %if.end9 ], [ %conv19, %for.body.for.body_crit_edge ]
  %checksum.078 = phi i8 [ 0, %if.end9 ], [ %add26, %for.body.for.body_crit_edge ]
  %i.077 = phi i8 [ 0, %if.end9 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx23 = getelementptr [20 x i8], ptr %packet, i32 0, i32 %conv1979
  %16 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx23, align 1
  %add26 = add i8 %17, %checksum.078
  %inc = add nuw i8 %i.077, 1
  %conv19 = zext i8 %inc to i32
  %cmp21 = icmp ugt i8 %add, %inc
  br i1 %cmp21, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %add26, ptr %6, align 1
  %call30 = call i32 @i2c_smbus_write_block_data(ptr noundef %add.ptr, i8 noundef zeroext 14, i8 noundef zeroext 20, ptr noundef nonnull %packet) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end37, label %do.end35

do.end35:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.88, i32 noundef %call30) #10
  br label %cleanup

if.end37:                                         ; preds = %for.end
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 -32
  %call.i = call i32 @i2c_smbus_read_byte(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.83) #10
  br label %do.end43

if.end.i:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, 1
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.do.end43_crit_edge

if.end.i.do.end43_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end43:                                         ; preds = %if.end.i.do.end43_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ -5, %if.end.i.do.end43_crit_edge ], [ %call.i, %do.end.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.91, i32 noundef %addr, i32 noundef %retval.0.i.ph) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %if.end.i.cleanup_crit_edge, %do.end35, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -90, %do.end ], [ %call30, %do.end35 ], [ %retval.0.i.ph, %do.end43 ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %packet) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !25, !27, !29, !30, !31, !32, !34, !36, !38, !40, !41, !43, !44, !45, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !94, !96, !97, !99, !101, !102, !104, !106, !107, !109, !111, !112, !114, !116, !117, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !210, !211, !212, !213, !215, !216, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235}
!llvm.module.flags = !{!237, !238, !239, !240, !241, !242, !243, !244}
!llvm.ident = !{!245}

!0 = !{ptr @__param_wdt_timeout, !1, !"__param_wdt_timeout", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 86, i32 1}
!2 = !{ptr @__UNIQUE_ID_wdt_timeouttype288, !1, !"__UNIQUE_ID_wdt_timeouttype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_wdt_timeout289, !4, !"__UNIQUE_ID_wdt_timeout289", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 87, i32 1}
!5 = !{ptr @__param_reset_duration, !6, !"__param_reset_duration", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 90, i32 1}
!7 = !{ptr @__UNIQUE_ID_reset_durationtype290, !6, !"__UNIQUE_ID_reset_durationtype290", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_reset_duration291, !9, !"__UNIQUE_ID_reset_duration291", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 91, i32 1}
!10 = !{ptr @__param_nowayout, !11, !"__param_nowayout", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 95, i32 1}
!12 = !{ptr @__UNIQUE_ID_nowayouttype292, !11, !"__UNIQUE_ID_nowayouttype292", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_nowayout293, !14, !"__UNIQUE_ID_nowayout293", i1 false, i1 false}
!14 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 96, i32 1}
!15 = !{ptr @__initcall__kmod_ziirave_wdt__294_742_ziirave_wdt_driver_init6, !16, !"__initcall__kmod_ziirave_wdt__294_742_ziirave_wdt_driver_init6", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 742, i32 1}
!17 = !{ptr @__exitcall_ziirave_wdt_driver_exit, !16, !"__exitcall_ziirave_wdt_driver_exit", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_author295, !19, !"__UNIQUE_ID_author295", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 744, i32 1}
!20 = !{ptr @__UNIQUE_ID_description296, !21, !"__UNIQUE_ID_description296", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 745, i32 1}
!22 = !{ptr @__UNIQUE_ID_file297, !23, !"__UNIQUE_ID_file297", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 746, i32 1}
!24 = !{ptr @__UNIQUE_ID_license298, !23, !"__UNIQUE_ID_license298", i1 false, i1 false}
!25 = !{ptr @wdt_timeout, !26, !"wdt_timeout", i1 false, i1 false}
!26 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 85, i32 12}
!27 = !{ptr @reset_duration, !28, !"reset_duration", i1 false, i1 false}
!28 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 89, i32 12}
!29 = !{ptr @__param_str_wdt_timeout, !1, !"__param_str_wdt_timeout", i1 false, i1 false}
!30 = !{ptr @__param_str_reset_duration, !6, !"__param_str_reset_duration", i1 false, i1 false}
!31 = !{ptr @__param_str_nowayout, !11, !"__param_str_nowayout", i1 false, i1 false}
!32 = !{ptr @nowayout, !33, !"nowayout", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 94, i32 13}
!34 = !{ptr @.str, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 734, i32 11}
!36 = !{ptr @ziirave_wdt_driver, !37, !"ziirave_wdt_driver", i1 false, i1 false}
!37 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 732, i32 26}
!38 = !{ptr @ziirave_wdt_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 613, i32 2}
!40 = !{ptr @.str.1, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.2, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 632, i32 4}
!43 = !{ptr @.str.3, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.4, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.5, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.6, !42, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ziirave_wdt_probe._entry, !42, !"_entry", i1 false, i1 false}
!48 = !{ptr @ziirave_wdt_probe._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.8, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 645, i32 3}
!51 = !{ptr @ziirave_wdt_probe._entry.7, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @ziirave_wdt_probe._entry_ptr.9, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.11, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 649, i32 2}
!55 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ziirave_wdt_probe._entry.10, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @ziirave_wdt_probe._entry_ptr.13, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 658, i32 3}
!60 = !{ptr @ziirave_wdt_probe._entry.14, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ziirave_wdt_probe._entry_ptr.16, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 667, i32 3}
!64 = !{ptr @ziirave_wdt_probe._entry.17, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ziirave_wdt_probe._entry_ptr.19, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 674, i32 3}
!68 = !{ptr @ziirave_wdt_probe._entry.20, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @ziirave_wdt_probe._entry_ptr.22, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 678, i32 2}
!72 = !{ptr @ziirave_wdt_probe._entry.23, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ziirave_wdt_probe._entry_ptr.25, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 685, i32 3}
!76 = !{ptr @ziirave_wdt_probe._entry.26, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ziirave_wdt_probe._entry_ptr.28, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 689, i32 2}
!80 = !{ptr @ziirave_wdt_probe._entry.29, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @ziirave_wdt_probe._entry_ptr.31, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 696, i32 3}
!84 = !{ptr @ziirave_wdt_probe._entry.32, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @ziirave_wdt_probe._entry_ptr.34, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 702, i32 3}
!88 = !{ptr @ziirave_wdt_probe._entry.35, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @ziirave_wdt_probe._entry_ptr.37, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @ziirave_wdt_info, !91, !"ziirave_wdt_info", i1 false, i1 false}
!91 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 419, i32 35}
!92 = !{ptr @ziirave_wdt_ops, !93, !"ziirave_wdt_ops", i1 false, i1 false}
!93 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 424, i32 34}
!94 = !{ptr @ziirave_wdt_groups, !95, !"ziirave_wdt_groups", i1 false, i1 false}
!95 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 565, i32 1}
!96 = !{ptr @ziirave_wdt_group, !95, !"ziirave_wdt_group", i1 false, i1 false}
!97 = !{ptr @ziirave_wdt_attrs, !98, !"ziirave_wdt_attrs", i1 false, i1 false}
!98 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 558, i32 26}
!99 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 454, i32 8}
!101 = !{ptr @dev_attr_firmware_version, !100, !"dev_attr_firmware_version", i1 false, i1 false}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 445, i32 24}
!104 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 478, i32 8}
!106 = !{ptr @dev_attr_bootloader_version, !105, !"dev_attr_bootloader_version", i1 false, i1 false}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 469, i32 24}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 500, i32 8}
!111 = !{ptr @dev_attr_reset_reason, !110, !"dev_attr_reset_reason", i1 false, i1 false}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 493, i32 24}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 555, i32 8}
!116 = !{ptr @dev_attr_update_firmware, !115, !"dev_attr_update_firmware", i1 false, i1 false}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 512, i32 35}
!119 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 514, i32 3}
!121 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @ziirave_wdt_sysfs_store_firm._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @ziirave_wdt_sysfs_store_firm._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 524, i32 3}
!126 = !{ptr @ziirave_wdt_sysfs_store_firm._entry.48, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @ziirave_wdt_sysfs_store_firm._entry_ptr.50, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 532, i32 3}
!130 = !{ptr @ziirave_wdt_sysfs_store_firm._entry.51, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @ziirave_wdt_sysfs_store_firm._entry_ptr.53, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 537, i32 2}
!134 = !{ptr @ziirave_wdt_sysfs_store_firm._entry.54, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @ziirave_wdt_sysfs_store_firm._entry_ptr.56, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 544, i32 3}
!138 = !{ptr @ziirave_wdt_sysfs_store_firm._entry.57, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @ziirave_wdt_sysfs_store_firm._entry_ptr.59, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../include/linux/ihex.h", i32 76, i32 3}
!142 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @request_ihex_firmware._entry, !141, !"_entry", i1 false, i1 false}
!145 = !{ptr @request_ihex_firmware._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 348, i32 3}
!148 = !{ptr @.str.64, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @ziirave_firm_upload._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @ziirave_firm_upload._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.66, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 356, i32 3}
!153 = !{ptr @ziirave_firm_upload._entry.65, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @ziirave_firm_upload._entry_ptr.67, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 362, i32 3}
!157 = !{ptr @ziirave_firm_upload._entry.68, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @ziirave_firm_upload._entry_ptr.70, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 381, i32 3}
!161 = !{ptr @ziirave_firm_upload._entry.71, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @ziirave_firm_upload._entry_ptr.73, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 391, i32 3}
!165 = !{ptr @ziirave_firm_upload._entry.74, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @ziirave_firm_upload._entry_ptr.76, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.78, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 399, i32 3}
!169 = !{ptr @ziirave_firm_upload._entry.77, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @ziirave_firm_upload._entry_ptr.79, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.81, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 409, i32 3}
!173 = !{ptr @ziirave_firm_upload._entry.80, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @ziirave_firm_upload._entry_ptr.82, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.83, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 176, i32 3}
!177 = !{ptr @.str.84, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @ziirave_firm_read_ack._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @ziirave_firm_read_ack._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.85, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 224, i32 3}
!182 = !{ptr @.str.86, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @__ziirave_firm_write_pkt._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @__ziirave_firm_write_pkt._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.88, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 255, i32 3}
!187 = !{ptr @__ziirave_firm_write_pkt._entry.87, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @__ziirave_firm_write_pkt._entry_ptr.89, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.91, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 262, i32 3}
!191 = !{ptr @__ziirave_firm_write_pkt._entry.90, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @__ziirave_firm_write_pkt._entry_ptr.92, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.93, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 310, i32 4}
!195 = !{ptr @.str.94, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @ziirave_firm_verify._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @ziirave_firm_verify._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.96, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 320, i32 5}
!200 = !{ptr @ziirave_firm_verify._entry.95, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @ziirave_firm_verify._entry_ptr.97, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.99, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 328, i32 4}
!204 = !{ptr @ziirave_firm_verify._entry.98, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @ziirave_firm_verify._entry_ptr.100, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.101, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 577, i32 10}
!208 = !{ptr @.str.102, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 580, i32 4}
!210 = !{ptr @.str.103, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @ziirave_wdt_init_duration._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @ziirave_wdt_init_duration._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.105, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 589, i32 2}
!215 = !{ptr @ziirave_wdt_init_duration._entry.104, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @ziirave_wdt_init_duration._entry_ptr.106, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.107, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 37, i32 35}
!219 = !{ptr @.str.108, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 37, i32 50}
!221 = !{ptr @.str.109, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 38, i32 7}
!223 = !{ptr @.str.110, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 38, i32 29}
!225 = !{ptr @.str.111, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 39, i32 7}
!227 = !{ptr @.str.112, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 39, i32 30}
!229 = !{ptr @.str.113, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 40, i32 7}
!231 = !{ptr @ziirave_reasons, !232, !"ziirave_reasons", i1 false, i1 false}
!232 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 37, i32 14}
!233 = !{ptr @zrv_wdt_of_match, !234, !"zrv_wdt_of_match", i1 false, i1 false}
!234 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 726, i32 34}
!235 = !{ptr @ziirave_wdt_id, !236, !"ziirave_wdt_id", i1 false, i1 false}
!236 = !{!"../drivers/watchdog/ziirave_wdt.c", i32 720, i32 35}
!237 = !{i32 1, !"wchar_size", i32 2}
!238 = !{i32 1, !"min_enum_size", i32 4}
!239 = !{i32 8, !"branch-target-enforcement", i32 0}
!240 = !{i32 8, !"sign-return-address", i32 0}
!241 = !{i32 8, !"sign-return-address-all", i32 0}
!242 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!243 = !{i32 7, !"uwtable", i32 1}
!244 = !{i32 7, !"frame-pointer", i32 2}
!245 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!246 = !{i8 0, i8 2}
!247 = !{!"auto-init"}
