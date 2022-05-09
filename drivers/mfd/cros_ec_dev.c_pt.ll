; ModuleID = '/llk/IR_all_yes/drivers/mfd/cros_ec_dev.c_pt.bc'
source_filename = "../drivers/mfd/cros_ec_dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.cros_feature_to_name = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
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
%struct.cros_ec_dev = type { %struct.device, ptr, ptr, ptr, i8, i16, %struct.ec_response_get_features }
%struct.ec_response_get_features = type { [2 x i32] }
%struct.cros_ec_platform = type { ptr, i16 }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }

@cros_ec_dev_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ec_device_probe, ptr @ec_device_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @cros_ec_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@cros_class = internal global { %struct.class, [36 x i8] } { %struct.class { ptr @.str.54, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_cros_ec_dev__183_326_cros_ec_dev_init6 = internal global ptr @cros_ec_dev_init, section ".initcall6.init", align 4
@__exitcall_cros_ec_dev_exit = internal global ptr @cros_ec_dev_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [59 x i8] c"cros_ec_dev.author=Bill Richardson <wfrichar@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [81 x i8] c"cros_ec_dev.description=Userspace interface to the Chrome OS Embedded Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_version186 = internal constant [24 x i8] c"cros_ec_dev.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cros_ec_dev\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file187 = internal constant [41 x i8] c"cros_ec_dev.file=drivers/mfd/cros_ec_dev\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [24 x i8] c"cros_ec_dev.license=GPL\00", section ".modinfo", align 1
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cros-ec-dev\00", [20 x i8] zeroinitializer }, align 32
@cros_ec_id = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"cros-ec-dev\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cros_mcu_devices = internal constant { [4 x %struct.cros_feature_to_name], [48 x i8] } { [4 x %struct.cros_feature_to_name] [%struct.cros_feature_to_name { i32 28, ptr @.str.34, ptr @.str.35 }, %struct.cros_feature_to_name { i32 40, ptr @.str.36, ptr @.str.37 }, %struct.cros_feature_to_name { i32 39, ptr @.str.38, ptr @.str.39 }, %struct.cros_feature_to_name { i32 29, ptr @.str.40, ptr @.str.41 }], [48 x i8] zeroinitializer }, align 32
@ec_device_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 160, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CrOS %s MCU detected\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ec_device_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mfd/cros_ec_dev.c\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ec_device_probe._entry_ptr = internal global ptr @ec_device_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@ec_device_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 179, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dev_set_name failed => %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ec_device_probe._entry_ptr.13 = internal global ptr @ec_device_probe._entry.10, section ".printk_index", align 4
@cros_ec_sensorhub_cells = internal constant { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.42, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@ec_device_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 194, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to add %s subdevice: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ec_device_probe._entry_ptr.16 = internal global ptr @ec_device_probe._entry.14, section ".printk_index", align 4
@ec_device_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 210, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@ec_device_probe._entry_ptr.18 = internal global ptr @ec_device_probe._entry.17, section ".printk_index", align 4
@cros_ec_lightbar_cells = internal constant { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.47, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@ec_device_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.6, i32 225, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to add lightbar: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ec_device_probe._entry_ptr.23 = internal global ptr @ec_device_probe._entry.20, section ".printk_index", align 4
@cros_usbpd_notify_cells = internal constant { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.48, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@ec_device_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.5, ptr @.str.6, i32 241, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to add PD notify devices: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ec_device_probe._entry_ptr.26 = internal global ptr @ec_device_probe._entry.24, section ".printk_index", align 4
@cros_ec_platform_cells = internal constant { [4 x %struct.mfd_cell], [64 x i8] } { [4 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.49, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.50, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.51, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.52, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [64 x i8] zeroinitializer }, align 32
@ec_device_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.5, ptr @.str.6, i32 254, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to add cros-ec platform devices: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ec_device_probe._entry_ptr.29 = internal global ptr @ec_device_probe._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"google,has-vbc-nvram\00", [43 x i8] zeroinitializer }, align 32
@cros_ec_vbc_cells = internal constant { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.53, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@ec_device_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.5, ptr @.str.6, i32 263, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to add VBC devices: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ec_device_probe._entry_ptr.33 = internal global ptr @ec_device_probe._entry.31, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cros_fp\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Fingerprint\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cros_ish\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Integrated Sensor Hub\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cros_scp\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"System Control Processor\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cros_tp\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Touchpad\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cros-ec-sensorhub\00", [46 x i8] zeroinitializer }, align 32
@cros_ec_cec_cells = internal constant { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.43, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@cros_ec_rtc_cells = internal constant { [1 x %struct.mfd_cell], [40 x i8] } { [1 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.44, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@cros_usbpd_charger_cells = internal constant { [2 x %struct.mfd_cell], [48 x i8] } { [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.45, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.46, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cros-ec-cec\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cros-ec-rtc\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cros-usbpd-charger\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cros-usbpd-logger\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cros-ec-lightbar\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cros-usbpd-notify\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cros-ec-chardev\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cros-ec-debugfs\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cros-ec-sysfs\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cros-ec-pchg\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cros-ec-vbc\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"chromeos\00", [23 x i8] zeroinitializer }, align 32
@cros_ec_dev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@cros_ec_dev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.6, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013cros_ec: failed to register device class\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cros_ec_dev_init\00", [47 x i8] zeroinitializer }, align 32
@cros_ec_dev_init._entry_ptr = internal global ptr @cros_ec_dev_init._entry, section ".printk_index", align 4
@cros_ec_dev_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.6, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014cros_ec: can't register driver: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@cros_ec_dev_init._entry_ptr.59 = internal global ptr @cros_ec_dev_init._entry.57, section ".printk_index", align 4
@___asan_gen_.60 = private unnamed_addr constant [19 x i8] c"cros_ec_dev_driver\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 288, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant [11 x i8] c"cros_class\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 22, i32 21 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 331, i32 1 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 290, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant [11 x i8] c"cros_ec_id\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 282, i32 40 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"cros_mcu_devices\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 51, i32 42 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 159, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 177, i32 40 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 179, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [24 x i8] c"cros_ec_sensorhub_cells\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 82, i32 30 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 193, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 207, i32 5 }
@___asan_gen_.126 = private unnamed_addr constant [23 x i8] c"cros_ec_lightbar_cells\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 120, i32 30 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 224, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant [24 x i8] c"cros_usbpd_notify_cells\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 91, i32 30 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 239, i32 5 }
@___asan_gen_.147 = private unnamed_addr constant [23 x i8] c"cros_ec_platform_cells\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 113, i32 30 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 252, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 258, i32 34 }
@___asan_gen_.159 = private unnamed_addr constant [18 x i8] c"cros_ec_vbc_cells\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 124, i32 30 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 262, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 54, i32 11 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 55, i32 11 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 59, i32 11 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 60, i32 11 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 64, i32 11 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 65, i32 11 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 69, i32 11 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 70, i32 11 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 83, i32 12 }
@___asan_gen_.195 = private unnamed_addr constant [18 x i8] c"cros_ec_cec_cells\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 74, i32 30 }
@___asan_gen_.198 = private unnamed_addr constant [18 x i8] c"cros_ec_rtc_cells\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 78, i32 30 }
@___asan_gen_.201 = private unnamed_addr constant [25 x i8] c"cros_usbpd_charger_cells\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 86, i32 30 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 75, i32 12 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 79, i32 12 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 87, i32 12 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 88, i32 12 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 121, i32 12 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 92, i32 12 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 114, i32 12 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 115, i32 12 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 116, i32 12 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 117, i32 12 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 125, i32 12 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 24, i32 20 }
@___asan_gen_.240 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 301, i32 9 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 303, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.256 = private constant [29 x i8] c"../drivers/mfd/cros_ec_dev.c\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 310, i32 3 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__UNIQUE_ID_version186, ptr @__exitcall_cros_ec_dev_exit, ptr @__initcall__kmod_cros_ec_dev__183_326_cros_ec_dev_init6, ptr @__modver_attr, ptr @cros_ec_dev_exit, ptr @cros_ec_dev_init._entry, ptr @cros_ec_dev_init._entry.57, ptr @cros_ec_dev_init._entry_ptr, ptr @cros_ec_dev_init._entry_ptr.59, ptr @ec_device_probe._entry, ptr @ec_device_probe._entry.10, ptr @ec_device_probe._entry.14, ptr @ec_device_probe._entry.17, ptr @ec_device_probe._entry.20, ptr @ec_device_probe._entry.24, ptr @ec_device_probe._entry.27, ptr @ec_device_probe._entry.31, ptr @ec_device_probe._entry_ptr, ptr @ec_device_probe._entry_ptr.13, ptr @ec_device_probe._entry_ptr.16, ptr @ec_device_probe._entry_ptr.18, ptr @ec_device_probe._entry_ptr.23, ptr @ec_device_probe._entry_ptr.26, ptr @ec_device_probe._entry_ptr.29, ptr @ec_device_probe._entry_ptr.33, ptr @cros_ec_dev_driver, ptr @cros_class, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @cros_ec_id, ptr @cros_mcu_devices, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @cros_ec_sensorhub_cells, ptr @.str.15, ptr @cros_ec_lightbar_cells, ptr @.str.21, ptr @.str.22, ptr @cros_usbpd_notify_cells, ptr @.str.25, ptr @cros_ec_platform_cells, ptr @.str.28, ptr @.str.30, ptr @cros_ec_vbc_cells, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @cros_ec_cec_cells, ptr @cros_ec_rtc_cells, ptr @cros_usbpd_charger_cells, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @cros_ec_dev_init.__key, ptr @.str.55, ptr @.str.56, ptr @.str.58], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_dev_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_mcu_devices to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_device_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_device_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_sensorhub_cells to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_device_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_device_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_lightbar_cells to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_device_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_notify_cells to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_device_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_platform_cells to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_device_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_vbc_cells to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_device_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_cec_cells to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_rtc_cells to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_charger_cells to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_dev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_dev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_dev_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_dev_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_ec_dev_driver) #5
  tail call void @class_unregister(ptr noundef nonnull @cros_class) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_dev_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__class_register(ptr noundef nonnull @cros_class, ptr noundef nonnull @cros_ec_dev_init.__key) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_ec_dev_driver, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %call3) #8
  tail call void @class_unregister(ptr noundef nonnull @cros_class) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call3, %do.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ec_device_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 952) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %driver_data.i198 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i198 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i198, align 4
  %ec_dev = getelementptr inbounds %struct.cros_ec_dev, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %ec_dev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %ec_dev, align 8
  %dev5 = getelementptr inbounds %struct.cros_ec_dev, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev2, ptr %dev5, align 4
  %cmd_offset = getelementptr inbounds %struct.cros_ec_platform, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %cmd_offset to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cmd_offset, align 4
  %cmd_offset6 = getelementptr inbounds %struct.cros_ec_dev, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %cmd_offset6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %cmd_offset6, align 2
  %features = getelementptr inbounds %struct.cros_ec_dev, ptr %call7.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %features, align 8
  %arrayidx9 = getelementptr %struct.cros_ec_dev, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %arrayidx9, align 4
  tail call void @device_initialize(ptr noundef nonnull %call7.i.i) #5
  %call11 = tail call zeroext i1 @cros_ec_check_features(ptr noundef nonnull %call7.i.i, i32 noundef 28) #5
  br i1 %call11, label %if.end.do.end_crit_edge, label %for.inc

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %for.inc.2.do.end_crit_edge, %for.inc.1.do.end_crit_edge, %for.inc.do.end_crit_edge, %if.end.do.end_crit_edge
  %i.0206.lcssa = phi i32 [ 0, %if.end.do.end_crit_edge ], [ 1, %for.inc.do.end_crit_edge ], [ 2, %for.inc.1.do.end_crit_edge ], [ 3, %for.inc.2.do.end_crit_edge ]
  %desc = getelementptr [4 x %struct.cros_feature_to_name], ptr @cros_mcu_devices, i32 0, i32 %i.0206.lcssa, i32 2
  %15 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.4, ptr noundef %16) #8
  %name = getelementptr [4 x %struct.cros_feature_to_name], ptr @cros_mcu_devices, i32 0, i32 %i.0206.lcssa, i32 1
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %1, align 4
  br label %for.end

for.inc:                                          ; preds = %if.end
  %call11.1 = tail call zeroext i1 @cros_ec_check_features(ptr noundef nonnull %call7.i.i, i32 noundef 40) #5
  br i1 %call11.1, label %for.inc.do.end_crit_edge, label %for.inc.1

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.inc.1:                                        ; preds = %for.inc
  %call11.2 = tail call zeroext i1 @cros_ec_check_features(ptr noundef nonnull %call7.i.i, i32 noundef 39) #5
  br i1 %call11.2, label %for.inc.1.do.end_crit_edge, label %for.inc.2

for.inc.1.do.end_crit_edge:                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.inc.2:                                        ; preds = %for.inc.1
  %call11.3 = tail call zeroext i1 @cros_ec_check_features(ptr noundef nonnull %call7.i.i, i32 noundef 29) #5
  br i1 %call11.3, label %for.inc.2.do.end_crit_edge, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.2.do.end_crit_edge:                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.end:                                          ; preds = %for.inc.2.for.end_crit_edge, %do.end
  %class = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 33
  %20 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @cros_class, ptr %class, align 4
  %parent18 = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %parent18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev2, ptr %parent18, align 8
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 35
  %22 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @cros_ec_class_release, ptr %release, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call22 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.9, ptr noundef %24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end28, label %do.end27

do.end27:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.11, i32 noundef %call22) #8
  br label %failed

if.end28:                                         ; preds = %for.end
  %call30 = tail call i32 @device_add(ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end28.failed_crit_edge

if.end28.failed_crit_edge:                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %failed

if.end33:                                         ; preds = %if.end28
  %call34 = tail call i32 @cros_ec_get_sensor_count(ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp sgt i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end33.if.end46_crit_edge

if.end33.if.end46_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then36:                                        ; preds = %if.end33
  %25 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev5, align 4
  %call.i = tail call i32 @mfd_add_devices(ptr noundef %26, i32 noundef -2, ptr noundef nonnull @cros_ec_sensorhub_cells, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool39.not = icmp eq i32 %call.i, 0
  br i1 %tobool39.not, label %if.then36.if.end46_crit_edge, label %do.end43

if.then36.if.end46_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

do.end43:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.42, i32 noundef %call.i) #8
  br label %if.end46

if.end46:                                         ; preds = %do.end43, %if.then36.if.end46_crit_edge, %if.end33.if.end46_crit_edge
  %call52 = tail call zeroext i1 @cros_ec_check_features(ptr noundef nonnull %call7.i.i, i32 noundef 35) #5
  br i1 %call52, label %if.then53, label %if.end46.for.inc69_crit_edge

if.end46.for.inc69_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc69

if.then53:                                        ; preds = %if.end46
  %29 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev5, align 4
  %call.i199 = tail call i32 @mfd_add_devices(ptr noundef %30, i32 noundef -2, ptr noundef nonnull @cros_ec_cec_cells, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %tobool58.not = icmp eq i32 %call.i199, 0
  br i1 %tobool58.not, label %if.then53.for.inc69_crit_edge, label %do.end62

if.then53.for.inc69_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc69

do.end62:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.43, i32 noundef %call.i199) #8
  br label %for.inc69

for.inc69:                                        ; preds = %do.end62, %if.then53.for.inc69_crit_edge, %if.end46.for.inc69_crit_edge
  %call52.1 = tail call zeroext i1 @cros_ec_check_features(ptr noundef nonnull %call7.i.i, i32 noundef 27) #5
  br i1 %call52.1, label %if.then53.1, label %for.inc69.for.inc69.1_crit_edge

for.inc69.for.inc69.1_crit_edge:                  ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc69.1

if.then53.1:                                      ; preds = %for.inc69
  %33 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev5, align 4
  %call.i199.1 = tail call i32 @mfd_add_devices(ptr noundef %34, i32 noundef -2, ptr noundef nonnull @cros_ec_rtc_cells, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199.1)
  %tobool58.not.1 = icmp eq i32 %call.i199.1, 0
  br i1 %tobool58.not.1, label %if.then53.1.for.inc69.1_crit_edge, label %do.end62.1

if.then53.1.for.inc69.1_crit_edge:                ; preds = %if.then53.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc69.1

do.end62.1:                                       ; preds = %if.then53.1
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.44, i32 noundef %call.i199.1) #8
  br label %for.inc69.1

for.inc69.1:                                      ; preds = %do.end62.1, %if.then53.1.for.inc69.1_crit_edge, %for.inc69.for.inc69.1_crit_edge
  %call52.2 = tail call zeroext i1 @cros_ec_check_features(ptr noundef nonnull %call7.i.i, i32 noundef 22) #5
  br i1 %call52.2, label %if.then53.2, label %for.inc69.1.for.inc69.2_crit_edge

for.inc69.1.for.inc69.2_crit_edge:                ; preds = %for.inc69.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc69.2

if.then53.2:                                      ; preds = %for.inc69.1
  %37 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev5, align 4
  %call.i199.2 = tail call i32 @mfd_add_devices(ptr noundef %38, i32 noundef -2, ptr noundef nonnull @cros_usbpd_charger_cells, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199.2)
  %tobool58.not.2 = icmp eq i32 %call.i199.2, 0
  br i1 %tobool58.not.2, label %if.then53.2.for.inc69.2_crit_edge, label %do.end62.2

if.then53.2.for.inc69.2_crit_edge:                ; preds = %if.then53.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc69.2

do.end62.2:                                       ; preds = %if.then53.2
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.45, i32 noundef %call.i199.2) #8
  br label %for.inc69.2

for.inc69.2:                                      ; preds = %do.end62.2, %if.then53.2.for.inc69.2_crit_edge, %for.inc69.1.for.inc69.2_crit_edge
  %call72 = tail call zeroext i1 @cros_ec_check_features(ptr noundef nonnull %call7.i.i, i32 noundef 4) #5
  br i1 %call72, label %if.then74, label %for.inc69.2.if.end84_crit_edge

for.inc69.2.if.end84_crit_edge:                   ; preds = %for.inc69.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

if.then74:                                        ; preds = %for.inc69.2
  %41 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev5, align 4
  %call.i200 = tail call i32 @mfd_add_devices(ptr noundef %42, i32 noundef -2, ptr noundef nonnull @cros_ec_lightbar_cells, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i200)
  %tobool77.not = icmp eq i32 %call.i200, 0
  br i1 %tobool77.not, label %if.then74.if.end84_crit_edge, label %do.end81

if.then74.if.end84_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

do.end81:                                         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.21, i32 noundef %call.i200) #8
  br label %if.end84

if.end84:                                         ; preds = %do.end81, %if.then74.if.end84_crit_edge, %for.inc69.2.if.end84_crit_edge
  %45 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ec_dev, align 8
  %dev86 = getelementptr inbounds %struct.cros_ec_device, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev86, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 27
  %49 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %of_node, align 8
  %tobool87.not = icmp eq ptr %50, null
  br i1 %tobool87.not, label %if.end84.if.end101_crit_edge, label %if.then88

if.end84.if.end101_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

if.then88:                                        ; preds = %if.end84
  %call89 = tail call zeroext i1 @cros_ec_check_features(ptr noundef nonnull %call7.i.i, i32 noundef 22) #5
  br i1 %call89, label %if.then90, label %if.then88.if.end101_crit_edge

if.then88.if.end101_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

if.then90:                                        ; preds = %if.then88
  %51 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev5, align 4
  %call.i201 = tail call i32 @mfd_add_devices(ptr noundef %52, i32 noundef -2, ptr noundef nonnull @cros_usbpd_notify_cells, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201)
  %tobool93.not = icmp eq i32 %call.i201, 0
  br i1 %tobool93.not, label %if.then90.if.end101_crit_edge, label %do.end97

if.then90.if.end101_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

do.end97:                                         ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.25, i32 noundef %call.i201) #8
  br label %if.end101

if.end101:                                        ; preds = %do.end97, %if.then90.if.end101_crit_edge, %if.then88.if.end101_crit_edge, %if.end84.if.end101_crit_edge
  %55 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev5, align 4
  %call.i202 = tail call i32 @mfd_add_devices(ptr noundef %56, i32 noundef -2, ptr noundef nonnull @cros_ec_platform_cells, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i202)
  %tobool104.not = icmp eq i32 %call.i202, 0
  br i1 %tobool104.not, label %if.end101.if.end110_crit_edge, label %do.end108

if.end101.if.end110_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

do.end108:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.28, i32 noundef %call.i202) #8
  br label %if.end110

if.end110:                                        ; preds = %do.end108, %if.end101.if.end110_crit_edge
  %59 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ec_dev, align 8
  %dev112 = getelementptr inbounds %struct.cros_ec_device, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %dev112 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev112, align 4
  %of_node113 = getelementptr inbounds %struct.device, ptr %62, i32 0, i32 27
  %63 = ptrtoint ptr %of_node113 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %of_node113, align 8
  %call.i203 = tail call ptr @of_find_property(ptr noundef %64, ptr noundef nonnull @.str.30, ptr noundef null) #5
  %tobool.i.not = icmp eq ptr %call.i203, null
  br i1 %tobool.i.not, label %if.end110.cleanup_crit_edge, label %if.then115

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then115:                                       ; preds = %if.end110
  %65 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev5, align 4
  %call.i204 = tail call i32 @mfd_add_devices(ptr noundef %66, i32 noundef -2, ptr noundef nonnull @cros_ec_vbc_cells, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204)
  %tobool118.not = icmp eq i32 %call.i204, 0
  br i1 %tobool118.not, label %if.then115.cleanup_crit_edge, label %do.end122

if.then115.cleanup_crit_edge:                     ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end122:                                        ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %68, ptr noundef nonnull @.str.32, i32 noundef %call.i204) #8
  br label %cleanup

failed:                                           ; preds = %if.end28.failed_crit_edge, %do.end27
  %retval1.0 = phi i32 [ %call22, %do.end27 ], [ %call30, %if.end28.failed_crit_edge ]
  tail call void @put_device(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %failed, %do.end122, %if.then115.cleanup_crit_edge, %if.end110.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %failed ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then115.cleanup_crit_edge ], [ 0, %do.end122 ], [ 0, %if.end110.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ec_device_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev1 = getelementptr inbounds %struct.cros_ec_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  tail call void @mfd_remove_devices(ptr noundef %3) #5
  tail call void @device_unregister(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cros_ec_check_features(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_class_release(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_get_sensor_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !135, !136, !137, !139, !140}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146, !147, !148}
!llvm.ident = !{!149}

!0 = !{ptr @__initcall__kmod_cros_ec_dev__183_326_cros_ec_dev_init6, !1, !"__initcall__kmod_cros_ec_dev__183_326_cros_ec_dev_init6", i1 false, i1 false}
!1 = !{!"../drivers/mfd/cros_ec_dev.c", i32 326, i32 1}
!2 = !{ptr @__exitcall_cros_ec_dev_exit, !3, !"__exitcall_cros_ec_dev_exit", i1 false, i1 false}
!3 = !{!"../drivers/mfd/cros_ec_dev.c", i32 327, i32 1}
!4 = !{ptr @__UNIQUE_ID_author184, !5, !"__UNIQUE_ID_author184", i1 false, i1 false}
!5 = !{!"../drivers/mfd/cros_ec_dev.c", i32 329, i32 1}
!6 = !{ptr @__UNIQUE_ID_description185, !7, !"__UNIQUE_ID_description185", i1 false, i1 false}
!7 = !{!"../drivers/mfd/cros_ec_dev.c", i32 330, i32 1}
!8 = !{ptr @__UNIQUE_ID_version186, !9, !"__UNIQUE_ID_version186", i1 false, i1 false}
!9 = !{!"../drivers/mfd/cros_ec_dev.c", i32 331, i32 1}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__modver_attr, !9, !"__modver_attr", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_file187, !15, !"__UNIQUE_ID_file187", i1 false, i1 false}
!15 = !{!"../drivers/mfd/cros_ec_dev.c", i32 332, i32 1}
!16 = !{ptr @__UNIQUE_ID_license188, !15, !"__UNIQUE_ID_license188", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mfd/cros_ec_dev.c", i32 290, i32 11}
!19 = !{ptr @cros_ec_dev_driver, !20, !"cros_ec_dev_driver", i1 false, i1 false}
!20 = !{!"../drivers/mfd/cros_ec_dev.c", i32 288, i32 31}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mfd/cros_ec_dev.c", i32 159, i32 4}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ec_device_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @ec_device_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mfd/cros_ec_dev.c", i32 177, i32 40}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mfd/cros_ec_dev.c", i32 179, i32 3}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ec_device_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @ec_device_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mfd/cros_ec_dev.c", i32 193, i32 4}
!38 = !{ptr @ec_device_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ec_device_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @ec_device_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../drivers/mfd/cros_ec_dev.c", i32 207, i32 5}
!42 = !{ptr @ec_device_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mfd/cros_ec_dev.c", i32 219, i32 34}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mfd/cros_ec_dev.c", i32 224, i32 4}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ec_device_probe._entry.20, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @ec_device_probe._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mfd/cros_ec_dev.c", i32 239, i32 5}
!52 = !{ptr @ec_device_probe._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ec_device_probe._entry_ptr.26, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mfd/cros_ec_dev.c", i32 252, i32 3}
!56 = !{ptr @ec_device_probe._entry.27, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @ec_device_probe._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mfd/cros_ec_dev.c", i32 258, i32 34}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mfd/cros_ec_dev.c", i32 262, i32 4}
!62 = !{ptr @ec_device_probe._entry.31, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ec_device_probe._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mfd/cros_ec_dev.c", i32 54, i32 11}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mfd/cros_ec_dev.c", i32 55, i32 11}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mfd/cros_ec_dev.c", i32 59, i32 11}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mfd/cros_ec_dev.c", i32 60, i32 11}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mfd/cros_ec_dev.c", i32 64, i32 11}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mfd/cros_ec_dev.c", i32 65, i32 11}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mfd/cros_ec_dev.c", i32 69, i32 11}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mfd/cros_ec_dev.c", i32 70, i32 11}
!80 = !{ptr @cros_mcu_devices, !81, !"cros_mcu_devices", i1 false, i1 false}
!81 = !{!"../drivers/mfd/cros_ec_dev.c", i32 51, i32 42}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mfd/cros_ec_dev.c", i32 83, i32 12}
!84 = !{ptr @cros_ec_sensorhub_cells, !85, !"cros_ec_sensorhub_cells", i1 false, i1 false}
!85 = !{!"../drivers/mfd/cros_ec_dev.c", i32 82, i32 30}
!86 = distinct !{null, !87, !"cros_subdevices", i1 false, i1 false}
!87 = !{!"../drivers/mfd/cros_ec_dev.c", i32 95, i32 43}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mfd/cros_ec_dev.c", i32 75, i32 12}
!90 = !{ptr @cros_ec_cec_cells, !91, !"cros_ec_cec_cells", i1 false, i1 false}
!91 = !{!"../drivers/mfd/cros_ec_dev.c", i32 74, i32 30}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mfd/cros_ec_dev.c", i32 79, i32 12}
!94 = !{ptr @cros_ec_rtc_cells, !95, !"cros_ec_rtc_cells", i1 false, i1 false}
!95 = !{!"../drivers/mfd/cros_ec_dev.c", i32 78, i32 30}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mfd/cros_ec_dev.c", i32 87, i32 12}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mfd/cros_ec_dev.c", i32 88, i32 12}
!100 = !{ptr @cros_usbpd_charger_cells, !101, !"cros_usbpd_charger_cells", i1 false, i1 false}
!101 = !{!"../drivers/mfd/cros_ec_dev.c", i32 86, i32 30}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mfd/cros_ec_dev.c", i32 121, i32 12}
!104 = !{ptr @cros_ec_lightbar_cells, !105, !"cros_ec_lightbar_cells", i1 false, i1 false}
!105 = !{!"../drivers/mfd/cros_ec_dev.c", i32 120, i32 30}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/mfd/cros_ec_dev.c", i32 92, i32 12}
!108 = !{ptr @cros_usbpd_notify_cells, !109, !"cros_usbpd_notify_cells", i1 false, i1 false}
!109 = !{!"../drivers/mfd/cros_ec_dev.c", i32 91, i32 30}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mfd/cros_ec_dev.c", i32 114, i32 12}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/mfd/cros_ec_dev.c", i32 115, i32 12}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mfd/cros_ec_dev.c", i32 116, i32 12}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mfd/cros_ec_dev.c", i32 117, i32 12}
!118 = !{ptr @cros_ec_platform_cells, !119, !"cros_ec_platform_cells", i1 false, i1 false}
!119 = !{!"../drivers/mfd/cros_ec_dev.c", i32 113, i32 30}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/mfd/cros_ec_dev.c", i32 125, i32 12}
!122 = !{ptr @cros_ec_vbc_cells, !123, !"cros_ec_vbc_cells", i1 false, i1 false}
!123 = !{!"../drivers/mfd/cros_ec_dev.c", i32 124, i32 30}
!124 = !{ptr @cros_ec_id, !125, !"cros_ec_id", i1 false, i1 false}
!125 = !{!"../drivers/mfd/cros_ec_dev.c", i32 282, i32 40}
!126 = !{ptr @.str.54, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mfd/cros_ec_dev.c", i32 24, i32 20}
!128 = !{ptr @cros_class, !129, !"cros_class", i1 false, i1 false}
!129 = !{!"../drivers/mfd/cros_ec_dev.c", i32 22, i32 21}
!130 = !{ptr @cros_ec_dev_init.__key, !131, !"__key", i1 false, i1 false}
!131 = !{!"../drivers/mfd/cros_ec_dev.c", i32 301, i32 9}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mfd/cros_ec_dev.c", i32 303, i32 3}
!134 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @cros_ec_dev_init._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @cros_ec_dev_init._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.58, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/mfd/cros_ec_dev.c", i32 310, i32 3}
!139 = !{ptr @cros_ec_dev_init._entry.57, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @cros_ec_dev_init._entry_ptr.59, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{i32 1, !"wchar_size", i32 2}
!142 = !{i32 1, !"min_enum_size", i32 4}
!143 = !{i32 8, !"branch-target-enforcement", i32 0}
!144 = !{i32 8, !"sign-return-address", i32 0}
!145 = !{i32 8, !"sign-return-address-all", i32 0}
!146 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!147 = !{i32 7, !"uwtable", i32 1}
!148 = !{i32 7, !"frame-pointer", i32 2}
!149 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
