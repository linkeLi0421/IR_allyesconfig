; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-roccat-pyra.c_pt.bc'
source_filename = "../drivers/hid/hid-roccat-pyra.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.roccat_common2_control = type { i8, i8, i8 }
%struct.pyra_settings = type { i8, i8, i8 }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.pyra_device = type { i32, i32, i32, i32, %struct.mutex, [5 x %struct.pyra_profile_settings] }
%struct.pyra_profile_settings = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16 }>
%struct.pyra_roccat_report = type { i8, i8, i8 }
%struct.pyra_mouse_event_button = type { i8, i8, i8, i8, i8 }
%struct.pyra_info = type { i8, i8, i8, i8, i8, i8 }

@pyra_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str, ptr @pyra_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @pyra_probe, ptr @pyra_remove, ptr null, ptr @pyra_raw_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@pyra_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_hid_roccat_pyra__232_605_pyra_init6 = internal global ptr @pyra_init, section ".initcall6.init", align 4
@__exitcall_pyra_exit = internal global ptr @pyra_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author233 = internal constant [37 x i8] c"hid_roccat_pyra.author=Stefan Achatz\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [51 x i8] c"hid_roccat_pyra.description=USB Roccat Pyra driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [49 x i8] c"hid_roccat_pyra.file=drivers/hid/hid-roccat-pyra\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [31 x i8] c"hid_roccat_pyra.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pyra\00", [27 x i8] zeroinitializer }, align 32
@pyra_devices = internal constant { [3 x %struct.hid_device_id], [48 x i8] } { [3 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 7805, i32 11300, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7805, i32 11510, i32 0 }, %struct.hid_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pyra_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 457, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pyra_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/hid/hid-roccat-pyra.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pyra_probe._entry_ptr = internal global ptr @pyra_probe._entry, section ".printk_index", align 4
@pyra_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 463, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@pyra_probe._entry_ptr.8 = internal global ptr @pyra_probe._entry.6, section ".printk_index", align 4
@pyra_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 469, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"couldn't install mouse\0A\00", [40 x i8] zeroinitializer }, align 32
@pyra_probe._entry_ptr.11 = internal global ptr @pyra_probe._entry.9, section ".printk_index", align 4
@usb_hid_driver = external dso_local global %struct.hid_ll_driver, align 4
@pyra_init_specials._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 405, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"can't alloc device descriptor\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pyra_init_specials\00", [45 x i8] zeroinitializer }, align 32
@pyra_init_specials._entry_ptr = internal global ptr @pyra_init_specials._entry, section ".printk_index", align 4
@pyra_init_specials._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.3, i32 412, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"couldn't init struct pyra_device\0A\00", [62 x i8] zeroinitializer }, align 32
@pyra_init_specials._entry_ptr.16 = internal global ptr @pyra_init_specials._entry.14, section ".printk_index", align 4
@pyra_init_specials._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.3, i32 419, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"couldn't init char dev\0A\00", [40 x i8] zeroinitializer }, align 32
@pyra_init_specials._entry_ptr.19 = internal global ptr @pyra_init_specials._entry.17, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pyra_init_pyra_device_struct.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&pyra->pyra_lock\00", [47 x i8] zeroinitializer }, align 32
@pyra_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pyra_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @pyra_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hid_roccat_pyra\00", [16 x i8] zeroinitializer }, align 32
@pyra_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pyra_attrs, ptr @pyra_bin_attributes }, [44 x i8] zeroinitializer }, align 32
@pyra_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_actual_cpi, ptr @dev_attr_actual_profile, ptr @dev_attr_firmware_version, ptr @dev_attr_startup_profile, ptr null], [44 x i8] zeroinitializer }, align 32
@pyra_bin_attributes = internal global { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @bin_attr_control, ptr @bin_attr_info, ptr @bin_attr_profile_settings, ptr @bin_attr_profile_buttons, ptr @bin_attr_settings, ptr @bin_attr_profile1_settings, ptr @bin_attr_profile2_settings, ptr @bin_attr_profile3_settings, ptr @bin_attr_profile4_settings, ptr @bin_attr_profile5_settings, ptr @bin_attr_profile1_buttons, ptr @bin_attr_profile2_buttons, ptr @bin_attr_profile3_buttons, ptr @bin_attr_profile4_buttons, ptr @bin_attr_profile5_buttons, ptr null], [32 x i8] zeroinitializer }, align 32
@dev_attr_actual_cpi = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pyra_sysfs_show_actual_cpi, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_actual_profile = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pyra_sysfs_show_actual_profile, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_firmware_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pyra_sysfs_show_firmware_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_startup_profile = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pyra_sysfs_show_actual_profile, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"actual_cpi\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"actual_profile\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"firmware_version\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"startup_profile\00", [16 x i8] zeroinitializer }, align 32
@bin_attr_control = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.27, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 3, ptr null, ptr null, ptr null, ptr @pyra_sysfs_write_control, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_info = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.28, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 6, ptr null, ptr null, ptr @pyra_sysfs_read_info, ptr @pyra_sysfs_write_info, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile_settings = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.29, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 13, ptr null, ptr null, ptr @pyra_sysfs_read_profile_settings, ptr @pyra_sysfs_write_profile_settings, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile_buttons = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.30, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 19, ptr null, ptr null, ptr @pyra_sysfs_read_profile_buttons, ptr @pyra_sysfs_write_profile_buttons, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_settings = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 3, ptr null, ptr null, ptr @pyra_sysfs_read_settings, ptr @pyra_sysfs_write_settings, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile1_settings = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.32, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 13, ptr @profile_numbers, ptr null, ptr @pyra_sysfs_read_profilex_settings, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile2_settings = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.33, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 13, ptr getelementptr (i8, ptr @profile_numbers, i64 4), ptr null, ptr @pyra_sysfs_read_profilex_settings, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile3_settings = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.34, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 13, ptr getelementptr (i8, ptr @profile_numbers, i64 8), ptr null, ptr @pyra_sysfs_read_profilex_settings, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile4_settings = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.35, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 13, ptr getelementptr (i8, ptr @profile_numbers, i64 12), ptr null, ptr @pyra_sysfs_read_profilex_settings, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile5_settings = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.36, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 13, ptr getelementptr (i8, ptr @profile_numbers, i64 16), ptr null, ptr @pyra_sysfs_read_profilex_settings, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile1_buttons = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.37, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 19, ptr @profile_numbers, ptr null, ptr @pyra_sysfs_read_profilex_buttons, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile2_buttons = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.38, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 19, ptr getelementptr (i8, ptr @profile_numbers, i64 4), ptr null, ptr @pyra_sysfs_read_profilex_buttons, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile3_buttons = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.39, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 19, ptr getelementptr (i8, ptr @profile_numbers, i64 8), ptr null, ptr @pyra_sysfs_read_profilex_buttons, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile4_buttons = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.40, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 19, ptr getelementptr (i8, ptr @profile_numbers, i64 12), ptr null, ptr @pyra_sysfs_read_profilex_buttons, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile5_buttons = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.41, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 19, ptr getelementptr (i8, ptr @profile_numbers, i64 16), ptr null, ptr @pyra_sysfs_read_profilex_buttons, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"info\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"profile_settings\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"profile_buttons\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"settings\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"profile1_settings\00", [46 x i8] zeroinitializer }, align 32
@profile_numbers = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4], [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"profile2_settings\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"profile3_settings\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"profile4_settings\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"profile5_settings\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"profile1_buttons\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"profile2_buttons\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"profile3_buttons\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"profile4_buttons\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"profile5_buttons\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 176]
@__sancov_gen_cov_switch_values.42 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 8]
@___asan_gen_.43 = private unnamed_addr constant [12 x i8] c"pyra_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 575, i32 26 }
@___asan_gen_.46 = private unnamed_addr constant [11 x i8] c"pyra_class\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 30, i32 22 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 576, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [13 x i8] c"pyra_devices\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 565, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 457, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 463, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 469, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 405, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 412, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 419, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 375, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 588, i32 15 }
@___asan_gen_.115 = private unnamed_addr constant [12 x i8] c"pyra_groups\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 364, i32 38 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 593, i32 11 }
@___asan_gen_.121 = private unnamed_addr constant [11 x i8] c"pyra_group\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 359, i32 37 }
@___asan_gen_.124 = private unnamed_addr constant [11 x i8] c"pyra_attrs\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 332, i32 26 }
@___asan_gen_.127 = private unnamed_addr constant [20 x i8] c"pyra_bin_attributes\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 340, i32 30 }
@___asan_gen_.130 = private unnamed_addr constant [20 x i8] c"dev_attr_actual_cpi\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [24 x i8] c"dev_attr_actual_profile\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [26 x i8] c"dev_attr_firmware_version\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [25 x i8] c"dev_attr_startup_profile\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 291, i32 8 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 289, i32 34 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 308, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 329, i32 8 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 309, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"bin_attr_control\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [14 x i8] c"bin_attr_info\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [26 x i8] c"bin_attr_profile_settings\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [25 x i8] c"bin_attr_profile_buttons\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [18 x i8] c"bin_attr_settings\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 279, i32 29 }
@___asan_gen_.172 = private unnamed_addr constant [27 x i8] c"bin_attr_profile1_settings\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [27 x i8] c"bin_attr_profile2_settings\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [27 x i8] c"bin_attr_profile3_settings\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [27 x i8] c"bin_attr_profile4_settings\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [27 x i8] c"bin_attr_profile5_settings\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [26 x i8] c"bin_attr_profile1_buttons\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [26 x i8] c"bin_attr_profile2_buttons\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [26 x i8] c"bin_attr_profile3_buttons\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [26 x i8] c"bin_attr_profile4_buttons\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [26 x i8] c"bin_attr_profile5_buttons\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 180, i32 1 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 181, i32 1 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 182, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 183, i32 1 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 280, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant [16 x i8] c"profile_numbers\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 27, i32 13 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 234, i32 1 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 235, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 236, i32 1 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 237, i32 1 }
@___asan_gen_.247 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.248 = private constant [33 x i8] c"../drivers/hid/hid-roccat-pyra.c\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 238, i32 1 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_pyra_exit, ptr @__initcall__kmod_hid_roccat_pyra__232_605_pyra_init6, ptr @pyra_exit, ptr @pyra_init_specials._entry, ptr @pyra_init_specials._entry.14, ptr @pyra_init_specials._entry.17, ptr @pyra_init_specials._entry_ptr, ptr @pyra_init_specials._entry_ptr.16, ptr @pyra_init_specials._entry_ptr.19, ptr @pyra_probe._entry, ptr @pyra_probe._entry.6, ptr @pyra_probe._entry.9, ptr @pyra_probe._entry_ptr, ptr @pyra_probe._entry_ptr.11, ptr @pyra_probe._entry_ptr.8, ptr @pyra_driver, ptr @pyra_class, ptr @.str, ptr @pyra_devices, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @pyra_init_pyra_device_struct.__key, ptr @.str.20, ptr @pyra_init.__key, ptr @pyra_groups, ptr @.str.21, ptr @pyra_group, ptr @pyra_attrs, ptr @pyra_bin_attributes, ptr @dev_attr_actual_cpi, ptr @dev_attr_actual_profile, ptr @dev_attr_firmware_version, ptr @dev_attr_startup_profile, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @bin_attr_control, ptr @bin_attr_info, ptr @bin_attr_profile_settings, ptr @bin_attr_profile_buttons, ptr @bin_attr_settings, ptr @bin_attr_profile1_settings, ptr @bin_attr_profile2_settings, ptr @bin_attr_profile3_settings, ptr @bin_attr_profile4_settings, ptr @bin_attr_profile5_settings, ptr @bin_attr_profile1_buttons, ptr @bin_attr_profile2_buttons, ptr @bin_attr_profile3_buttons, ptr @bin_attr_profile4_buttons, ptr @bin_attr_profile5_buttons, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @profile_numbers, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pyra_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pyra_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pyra_devices to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pyra_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pyra_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pyra_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pyra_init_specials._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pyra_init_specials._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pyra_init_specials._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pyra_init_pyra_device_struct.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pyra_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pyra_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pyra_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pyra_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pyra_bin_attributes to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_actual_cpi to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_actual_profile to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_firmware_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_startup_profile to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_control to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_info to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile_settings to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile_buttons to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_settings to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile1_settings to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile2_settings to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile3_settings to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile4_settings to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile5_settings to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile1_buttons to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile2_buttons to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile3_buttons to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile4_buttons to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile5_buttons to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @profile_numbers to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pyra_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hid_unregister_driver(ptr noundef nonnull @pyra_driver) #9
  %0 = load ptr, ptr @pyra_class, align 4
  tail call void @class_destroy(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pyra_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @pyra_init.__key) #9
  store ptr %call, ptr @pyra_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_groups = getelementptr inbounds %struct.class, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %dev_groups to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @pyra_groups, ptr %dev_groups, align 4
  %call4 = tail call i32 @__hid_register_driver(ptr noundef nonnull @pyra_driver, ptr noundef null, ptr noundef nonnull @.str.21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = load ptr, ptr @pyra_class, align 4
  tail call void @class_destroy(ptr noundef %2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call4, %if.then5 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pyra_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %control.i.i.i.i = alloca %struct.roccat_common2_control, align 1
  %settings.i.i = alloca %struct.pyra_settings, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ll_driver.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 20
  %0 = ptrtoint ptr %ll_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ll_driver.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, @usb_hid_driver
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 45) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  br i1 %tobool6.not, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %parent.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %parent.i.i = getelementptr i8, ptr %3, i32 136
  %4 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -128
  %cur_altsetting.i = getelementptr i8, ptr %3, i32 -28
  %6 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_altsetting.i, align 4
  %bInterfaceProtocol.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %bInterfaceProtocol.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bInterfaceProtocol.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp.i = icmp eq i8 %9, 2
  br i1 %cmp.i, label %if.then.i, label %if.else23.i

if.then.i:                                        ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 176) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.12) #12
  br label %do.end18

if.end.i:                                         ; preds = %if.then.i
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %11 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i.i, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %settings.i.i) #9
  %12 = ptrtoint ptr %settings.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %settings.i.i, align 1, !annotation !129
  %13 = getelementptr inbounds %struct.pyra_settings, ptr %settings.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %13, align 1, !annotation !129
  %15 = getelementptr inbounds %struct.pyra_settings, ptr %settings.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %15, align 1, !annotation !129
  %pyra_lock.i.i = getelementptr inbounds %struct.pyra_device, ptr %call7.i.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %pyra_lock.i.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @pyra_init_pyra_device_struct.__key) #9
  %call.i.i.i = call i32 @roccat_common2_receive(ptr noundef %add.ptr.i.i, i32 noundef 5, ptr noundef nonnull %settings.i.i, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond.preheader.i.i, label %if.end.i.do.end11.i_crit_edge

if.end.i.do.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i

for.cond.preheader.i.i:                           ; preds = %if.end.i
  %17 = getelementptr inbounds %struct.roccat_common2_control, ptr %control.i.i.i.i, i32 0, i32 2
  %18 = getelementptr inbounds %struct.roccat_common2_control, ptr %control.i.i.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %control.i.i.i.i) #9
  %19 = ptrtoint ptr %control.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 4, ptr %control.i.i.i.i, align 1
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %18, align 1
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 16, ptr %17, align 1
  %call.i.i.i.i = call i32 @roccat_common2_send(ptr noundef %add.ptr.i.i, i32 noundef 4, ptr noundef nonnull %control.i.i.i.i, i32 noundef 3) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %control.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %pyra_get_profile_settings.exit.i.i, label %for.cond.preheader.i.i.do.end11.i_crit_edge

for.cond.preheader.i.i.do.end11.i_crit_edge:      ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i

for.cond.i.i:                                     ; preds = %pyra_get_profile_settings.exit.i.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %control.i.i.i.i) #9
  %22 = ptrtoint ptr %control.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 4, ptr %control.i.i.i.i, align 1
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %18, align 1
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 16, ptr %17, align 1
  %call.i.i.1.i.i = call i32 @roccat_common2_send(ptr noundef %add.ptr.i.i, i32 noundef 4, ptr noundef nonnull %control.i.i.i.i, i32 noundef 3) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %control.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1.i.i)
  %tobool.not.i.1.i.i = icmp eq i32 %call.i.i.1.i.i, 0
  br i1 %tobool.not.i.1.i.i, label %pyra_get_profile_settings.exit.1.i.i, label %for.cond.i.i.do.end11.i_crit_edge

for.cond.i.i.do.end11.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i

pyra_get_profile_settings.exit.1.i.i:             ; preds = %for.cond.i.i
  %arrayidx.1.i.i = getelementptr %struct.pyra_device, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %call2.i.1.i.i = call i32 @roccat_common2_receive(ptr noundef %add.ptr.i.i, i32 noundef 6, ptr noundef %arrayidx.1.i.i, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.1.i.i)
  %tobool3.not.1.i.i = icmp eq i32 %call2.i.1.i.i, 0
  br i1 %tobool3.not.1.i.i, label %for.cond.1.i.i, label %pyra_get_profile_settings.exit.1.i.i.do.end11.i_crit_edge

pyra_get_profile_settings.exit.1.i.i.do.end11.i_crit_edge: ; preds = %pyra_get_profile_settings.exit.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i

for.cond.1.i.i:                                   ; preds = %pyra_get_profile_settings.exit.1.i.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %control.i.i.i.i) #9
  %25 = ptrtoint ptr %control.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 4, ptr %control.i.i.i.i, align 1
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %18, align 1
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 16, ptr %17, align 1
  %call.i.i.2.i.i = call i32 @roccat_common2_send(ptr noundef %add.ptr.i.i, i32 noundef 4, ptr noundef nonnull %control.i.i.i.i, i32 noundef 3) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %control.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2.i.i)
  %tobool.not.i.2.i.i = icmp eq i32 %call.i.i.2.i.i, 0
  br i1 %tobool.not.i.2.i.i, label %pyra_get_profile_settings.exit.2.i.i, label %for.cond.1.i.i.do.end11.i_crit_edge

for.cond.1.i.i.do.end11.i_crit_edge:              ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i

pyra_get_profile_settings.exit.2.i.i:             ; preds = %for.cond.1.i.i
  %arrayidx.2.i.i = getelementptr %struct.pyra_device, ptr %call7.i.i.i, i32 0, i32 5, i32 2
  %call2.i.2.i.i = call i32 @roccat_common2_receive(ptr noundef %add.ptr.i.i, i32 noundef 6, ptr noundef %arrayidx.2.i.i, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.2.i.i)
  %tobool3.not.2.i.i = icmp eq i32 %call2.i.2.i.i, 0
  br i1 %tobool3.not.2.i.i, label %for.cond.2.i.i, label %pyra_get_profile_settings.exit.2.i.i.do.end11.i_crit_edge

pyra_get_profile_settings.exit.2.i.i.do.end11.i_crit_edge: ; preds = %pyra_get_profile_settings.exit.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i

for.cond.2.i.i:                                   ; preds = %pyra_get_profile_settings.exit.2.i.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %control.i.i.i.i) #9
  %28 = ptrtoint ptr %control.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 4, ptr %control.i.i.i.i, align 1
  %29 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 3, ptr %18, align 1
  %30 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 16, ptr %17, align 1
  %call.i.i.3.i.i = call i32 @roccat_common2_send(ptr noundef %add.ptr.i.i, i32 noundef 4, ptr noundef nonnull %control.i.i.i.i, i32 noundef 3) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %control.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.3.i.i)
  %tobool.not.i.3.i.i = icmp eq i32 %call.i.i.3.i.i, 0
  br i1 %tobool.not.i.3.i.i, label %pyra_get_profile_settings.exit.3.i.i, label %for.cond.2.i.i.do.end11.i_crit_edge

for.cond.2.i.i.do.end11.i_crit_edge:              ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i

pyra_get_profile_settings.exit.3.i.i:             ; preds = %for.cond.2.i.i
  %arrayidx.3.i.i = getelementptr %struct.pyra_device, ptr %call7.i.i.i, i32 0, i32 5, i32 3
  %call2.i.3.i.i = call i32 @roccat_common2_receive(ptr noundef %add.ptr.i.i, i32 noundef 6, ptr noundef %arrayidx.3.i.i, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.3.i.i)
  %tobool3.not.3.i.i = icmp eq i32 %call2.i.3.i.i, 0
  br i1 %tobool3.not.3.i.i, label %for.cond.3.i.i, label %pyra_get_profile_settings.exit.3.i.i.do.end11.i_crit_edge

pyra_get_profile_settings.exit.3.i.i.do.end11.i_crit_edge: ; preds = %pyra_get_profile_settings.exit.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i

for.cond.3.i.i:                                   ; preds = %pyra_get_profile_settings.exit.3.i.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %control.i.i.i.i) #9
  %31 = ptrtoint ptr %control.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 4, ptr %control.i.i.i.i, align 1
  %32 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 4, ptr %18, align 1
  %33 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 16, ptr %17, align 1
  %call.i.i.4.i.i = call i32 @roccat_common2_send(ptr noundef %add.ptr.i.i, i32 noundef 4, ptr noundef nonnull %control.i.i.i.i, i32 noundef 3) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %control.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.4.i.i)
  %tobool.not.i.4.i.i = icmp eq i32 %call.i.i.4.i.i, 0
  br i1 %tobool.not.i.4.i.i, label %pyra_get_profile_settings.exit.4.i.i, label %for.cond.3.i.i.do.end11.i_crit_edge

for.cond.3.i.i.do.end11.i_crit_edge:              ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i

pyra_get_profile_settings.exit.4.i.i:             ; preds = %for.cond.3.i.i
  %arrayidx.4.i.i = getelementptr %struct.pyra_device, ptr %call7.i.i.i, i32 0, i32 5, i32 4
  %call2.i.4.i.i = call i32 @roccat_common2_receive(ptr noundef %add.ptr.i.i, i32 noundef 6, ptr noundef %arrayidx.4.i.i, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.4.i.i)
  %tobool3.not.4.i.i = icmp eq i32 %call2.i.4.i.i, 0
  br i1 %tobool3.not.4.i.i, label %for.cond.4.i.i, label %pyra_get_profile_settings.exit.4.i.i.do.end11.i_crit_edge

pyra_get_profile_settings.exit.4.i.i.do.end11.i_crit_edge: ; preds = %pyra_get_profile_settings.exit.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i

for.cond.4.i.i:                                   ; preds = %pyra_get_profile_settings.exit.4.i.i
  %34 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %35)
  %cmp.i.i.i = icmp ugt i8 %35, 4
  br i1 %cmp.i.i.i, label %for.cond.4.i.i.if.end13.i_crit_edge, label %if.end.i17.i.i

for.cond.4.i.i.if.end13.i_crit_edge:              ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

pyra_get_profile_settings.exit.i.i:               ; preds = %for.cond.preheader.i.i
  %arrayidx.i.i = getelementptr %struct.pyra_device, ptr %call7.i.i.i, i32 0, i32 5, i32 0
  %call2.i.i.i = call i32 @roccat_common2_receive(ptr noundef %add.ptr.i.i, i32 noundef 6, ptr noundef %arrayidx.i.i, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i, label %for.cond.i.i, label %pyra_get_profile_settings.exit.i.i.do.end11.i_crit_edge

pyra_get_profile_settings.exit.i.i.do.end11.i_crit_edge: ; preds = %pyra_get_profile_settings.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i

if.end.i17.i.i:                                   ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = zext i8 %35 to i32
  %36 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv.i.i, ptr %call7.i.i.i, align 8
  %y_cpi.i.i.i = getelementptr %struct.pyra_device, ptr %call7.i.i.i, i32 0, i32 5, i32 %conv.i.i, i32 7
  %37 = ptrtoint ptr %y_cpi.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %y_cpi.i.i.i, align 1
  %conv.i.i.i = zext i8 %38 to i32
  %actual_cpi.i.i.i = getelementptr inbounds %struct.pyra_device, ptr %call7.i.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %actual_cpi.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv.i.i.i, ptr %actual_cpi.i.i.i, align 4
  br label %if.end13.i

do.end11.i:                                       ; preds = %pyra_get_profile_settings.exit.i.i.do.end11.i_crit_edge, %pyra_get_profile_settings.exit.4.i.i.do.end11.i_crit_edge, %for.cond.3.i.i.do.end11.i_crit_edge, %pyra_get_profile_settings.exit.3.i.i.do.end11.i_crit_edge, %for.cond.2.i.i.do.end11.i_crit_edge, %pyra_get_profile_settings.exit.2.i.i.do.end11.i_crit_edge, %for.cond.1.i.i.do.end11.i_crit_edge, %pyra_get_profile_settings.exit.1.i.i.do.end11.i_crit_edge, %for.cond.i.i.do.end11.i_crit_edge, %for.cond.preheader.i.i.do.end11.i_crit_edge, %if.end.i.do.end11.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call2.i.4.i.i, %pyra_get_profile_settings.exit.4.i.i.do.end11.i_crit_edge ], [ %call.i.i.4.i.i, %for.cond.3.i.i.do.end11.i_crit_edge ], [ %call2.i.3.i.i, %pyra_get_profile_settings.exit.3.i.i.do.end11.i_crit_edge ], [ %call.i.i.3.i.i, %for.cond.2.i.i.do.end11.i_crit_edge ], [ %call2.i.2.i.i, %pyra_get_profile_settings.exit.2.i.i.do.end11.i_crit_edge ], [ %call.i.i.2.i.i, %for.cond.1.i.i.do.end11.i_crit_edge ], [ %call2.i.1.i.i, %pyra_get_profile_settings.exit.1.i.i.do.end11.i_crit_edge ], [ %call.i.i.1.i.i, %for.cond.i.i.do.end11.i_crit_edge ], [ %call.i.i.i.i, %for.cond.preheader.i.i.do.end11.i_crit_edge ], [ %call2.i.i.i, %pyra_get_profile_settings.exit.i.i.do.end11.i_crit_edge ], [ %call.i.i.i, %if.end.i.do.end11.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %settings.i.i) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %do.end18

if.end13.i:                                       ; preds = %if.end.i17.i.i, %for.cond.4.i.i.if.end13.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %settings.i.i) #9
  %40 = load ptr, ptr @pyra_class, align 4
  %call14.i = call i32 @roccat_connect(ptr noundef %40, ptr noundef %hdev, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %do.end20.i, label %if.else.i

do.end20.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.18) #12
  br label %cleanup

if.else.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %chrdev_minor.i = getelementptr inbounds %struct.pyra_device, ptr %call7.i.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %chrdev_minor.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call14.i, ptr %chrdev_minor.i, align 4
  %roccat_claimed.i = getelementptr inbounds %struct.pyra_device, ptr %call7.i.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %roccat_claimed.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %roccat_claimed.i, align 8
  br label %cleanup

if.else23.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i43.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %43 = ptrtoint ptr %driver_data.i.i43.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %driver_data.i.i43.i, align 4
  br label %cleanup

do.end18:                                         ; preds = %do.end11.i, %do.end.i
  %retval.0.i = phi i32 [ %retval.0.i.ph.i, %do.end11.i ], [ -12, %do.end.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.10) #12
  call void @hid_hw_stop(ptr noundef %hdev) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.else23.i, %if.else.i, %do.end20.i, %do.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %do.end ], [ %call5, %do.end10 ], [ %retval.0.i, %do.end18 ], [ 0, %do.end20.i ], [ 0, %if.else.i ], [ 0, %if.else23.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pyra_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %cur_altsetting.i = getelementptr i8, ptr %1, i32 -28
  %2 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting.i, align 4
  %bInterfaceProtocol.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %bInterfaceProtocol.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceProtocol.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.i = icmp eq i8 %5, 2
  br i1 %cmp.i, label %if.then.i, label %entry.pyra_remove_specials.exit_crit_edge

entry.pyra_remove_specials.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pyra_remove_specials.exit

if.then.i:                                        ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %roccat_claimed.i = getelementptr inbounds %struct.pyra_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %roccat_claimed.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %roccat_claimed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %chrdev_minor.i = getelementptr inbounds %struct.pyra_device, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %chrdev_minor.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chrdev_minor.i, align 4
  tail call void @roccat_disconnect(i32 noundef %11) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %12 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void @kfree(ptr noundef %13) #9
  br label %pyra_remove_specials.exit

pyra_remove_specials.exit:                        ; preds = %if.end.i, %entry.pyra_remove_specials.exit_crit_edge
  tail call void @hid_hw_stop(ptr noundef %hdev) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pyra_raw_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readnone %report, ptr nocapture noundef readonly %data, i32 noundef %size) #2 align 64 {
entry:
  %roccat_report.i = alloca %struct.pyra_roccat_report, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %cur_altsetting = getelementptr i8, ptr %1, i32 -28
  %4 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceProtocol = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %bInterfaceProtocol to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bInterfaceProtocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.not = icmp ne i8 %7, 2
  %cmp2 = icmp eq ptr %3, null
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %entry
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cond.i = icmp eq i8 %9, 3
  br i1 %cond.i, label %sw.bb.i, label %if.end5.pyra_keep_values_up_to_date.exit_crit_edge

if.end5.pyra_keep_values_up_to_date.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %pyra_keep_values_up_to_date.exit

sw.bb.i:                                          ; preds = %if.end5
  %type.i = getelementptr inbounds %struct.pyra_mouse_event_button, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type.i, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %sw.bb.i.pyra_keep_values_up_to_date.exit_crit_edge [
    i8 48, label %sw.bb2.i
    i8 -80, label %sw.bb4.i
  ]

sw.bb.i.pyra_keep_values_up_to_date.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pyra_keep_values_up_to_date.exit

sw.bb2.i:                                         ; preds = %sw.bb.i
  %data1.i = getelementptr inbounds %struct.pyra_mouse_event_button, ptr %data, i32 0, i32 3
  %13 = ptrtoint ptr %data1.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data1.i, align 1
  %conv3.i = zext i8 %14 to i32
  %sub.i = add nsw i32 %conv3.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp.i.i = icmp ugt i32 %sub.i, 4
  br i1 %cmp.i.i, label %sw.bb2.i.pyra_keep_values_up_to_date.exit_crit_edge, label %if.end.i.i

sw.bb2.i.pyra_keep_values_up_to_date.exit_crit_edge: ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pyra_keep_values_up_to_date.exit

if.end.i.i:                                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub.i, ptr %3, align 4
  %y_cpi.i.i = getelementptr %struct.pyra_device, ptr %3, i32 0, i32 5, i32 %sub.i, i32 7
  br label %sw.epilog7.sink.split.i

sw.bb4.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %data15.i = getelementptr inbounds %struct.pyra_mouse_event_button, ptr %data, i32 0, i32 3
  br label %sw.epilog7.sink.split.i

sw.epilog7.sink.split.i:                          ; preds = %sw.bb4.i, %if.end.i.i
  %y_cpi.i.sink.i = phi ptr [ %y_cpi.i.i, %if.end.i.i ], [ %data15.i, %sw.bb4.i ]
  %16 = ptrtoint ptr %y_cpi.i.sink.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %y_cpi.i.sink.i, align 1
  %conv.i.i = zext i8 %17 to i32
  %actual_cpi.i.i = getelementptr inbounds %struct.pyra_device, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %actual_cpi.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv.i.i, ptr %actual_cpi.i.i, align 4
  br label %pyra_keep_values_up_to_date.exit

pyra_keep_values_up_to_date.exit:                 ; preds = %sw.epilog7.sink.split.i, %sw.bb2.i.pyra_keep_values_up_to_date.exit_crit_edge, %sw.bb.i.pyra_keep_values_up_to_date.exit_crit_edge, %if.end5.pyra_keep_values_up_to_date.exit_crit_edge
  %roccat_claimed = getelementptr inbounds %struct.pyra_device, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %roccat_claimed to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %roccat_claimed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %pyra_keep_values_up_to_date.exit.cleanup_crit_edge, label %if.then6

pyra_keep_values_up_to_date.exit.cleanup_crit_edge: ; preds = %pyra_keep_values_up_to_date.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %pyra_keep_values_up_to_date.exit
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %roccat_report.i) #9
  %21 = getelementptr inbounds %struct.pyra_roccat_report, ptr %roccat_report.i, i32 0, i32 1
  %22 = getelementptr inbounds %struct.pyra_roccat_report, ptr %roccat_report.i, i32 0, i32 2
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %cmp.not.i = icmp eq i8 %24, 3
  br i1 %cmp.not.i, label %if.end.i, label %if.then6.pyra_report_to_chrdev.exit_crit_edge

if.then6.pyra_report_to_chrdev.exit_crit_edge:    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %pyra_report_to_chrdev.exit

if.end.i:                                         ; preds = %if.then6
  %type.i14 = getelementptr inbounds %struct.pyra_mouse_event_button, ptr %data, i32 0, i32 2
  %25 = ptrtoint ptr %type.i14 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %type.i14, align 1
  %conv2.i = zext i8 %26 to i32
  %27 = add nsw i32 %conv2.i, -48
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 28) #9
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %28, label %if.end.i.pyra_report_to_chrdev.exit_crit_edge [
    i32 0, label %if.end.i.sw.bb.i16_crit_edge
    i32 8, label %if.end.i.sw.bb.i16_crit_edge17
    i32 1, label %if.end.i.sw.bb5.i_crit_edge
    i32 2, label %if.end.i.sw.bb5.i_crit_edge18
    i32 3, label %if.end.i.sw.bb5.i_crit_edge19
  ]

if.end.i.sw.bb5.i_crit_edge19:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge18:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5.i

if.end.i.sw.bb.i16_crit_edge17:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i16

if.end.i.sw.bb.i16_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i16

if.end.i.pyra_report_to_chrdev.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pyra_report_to_chrdev.exit

sw.bb.i16:                                        ; preds = %if.end.i.sw.bb.i16_crit_edge, %if.end.i.sw.bb.i16_crit_edge17
  %30 = ptrtoint ptr %roccat_report.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %26, ptr %roccat_report.i, align 1
  %data1.i15 = getelementptr inbounds %struct.pyra_mouse_event_button, ptr %data, i32 0, i32 3
  %31 = ptrtoint ptr %data1.i15 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %data1.i15, align 1
  %33 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %21, align 1
  %34 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %22, align 1
  br label %cleanup.sink.split.i

sw.bb5.i:                                         ; preds = %if.end.i.sw.bb5.i_crit_edge, %if.end.i.sw.bb5.i_crit_edge18, %if.end.i.sw.bb5.i_crit_edge19
  %data2.i = getelementptr inbounds %struct.pyra_mouse_event_button, ptr %data, i32 0, i32 4
  %35 = ptrtoint ptr %data2.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %data2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp7.i = icmp eq i8 %36, 0
  br i1 %cmp7.i, label %if.then9.i, label %sw.bb5.i.pyra_report_to_chrdev.exit_crit_edge

sw.bb5.i.pyra_report_to_chrdev.exit_crit_edge:    ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pyra_report_to_chrdev.exit

if.then9.i:                                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %roccat_report.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %26, ptr %roccat_report.i, align 1
  %data112.i = getelementptr inbounds %struct.pyra_mouse_event_button, ptr %data, i32 0, i32 3
  %38 = ptrtoint ptr %data112.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %data112.i, align 1
  %40 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %22, align 1
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %3, align 4
  %43 = trunc i32 %42 to i8
  %conv14.i = add i8 %43, 1
  %44 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv14.i, ptr %21, align 1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then9.i, %sw.bb.i16
  %chrdev_minor.i = getelementptr inbounds %struct.pyra_device, ptr %3, i32 0, i32 3
  %45 = ptrtoint ptr %chrdev_minor.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %chrdev_minor.i, align 4
  %call.i = call i32 @roccat_report_event(i32 noundef %46, ptr noundef nonnull %roccat_report.i) #9
  br label %pyra_report_to_chrdev.exit

pyra_report_to_chrdev.exit:                       ; preds = %cleanup.sink.split.i, %sw.bb5.i.pyra_report_to_chrdev.exit_crit_edge, %if.end.i.pyra_report_to_chrdev.exit_crit_edge, %if.then6.pyra_report_to_chrdev.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %roccat_report.i) #9
  br label %cleanup

cleanup:                                          ; preds = %pyra_report_to_chrdev.exit, %pyra_keep_values_up_to_date.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @roccat_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @roccat_common2_receive(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @roccat_common2_send(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @roccat_disconnect(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @roccat_report_event(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pyra_sysfs_show_actual_cpi(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %parent1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %5, i32 0, i32 18, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %actual_cpi = getelementptr inbounds %struct.pyra_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %actual_cpi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_cpi, align 4
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.23, i32 noundef %9)
  ret i32 %call3
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pyra_sysfs_show_actual_profile(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %settings = alloca %struct.pyra_settings, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %parent1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %5, i32 0, i32 18, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %settings) #9
  %8 = ptrtoint ptr %settings to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %settings, align 1, !annotation !129
  %9 = getelementptr inbounds %struct.pyra_settings, ptr %settings, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %9, align 1, !annotation !129
  %11 = getelementptr inbounds %struct.pyra_settings, ptr %settings, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %11, align 1, !annotation !129
  %pyra_lock = getelementptr inbounds %struct.pyra_device, ptr %7, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %pyra_lock, i32 noundef 0) #9
  %call4 = call i32 @roccat_common2_receive(ptr noundef %add.ptr.i, i32 noundef 5, ptr noundef nonnull %settings, i32 noundef 3) #9
  call void @mutex_unlock(ptr noundef %pyra_lock) #9
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %11, align 1
  %conv = zext i8 %14 to i32
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.23, i32 noundef %conv)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %settings) #9
  ret i32 %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pyra_sysfs_show_firmware_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %info = alloca %struct.pyra_info, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %info) #9
  %0 = getelementptr inbounds %struct.pyra_info, ptr %info, i32 0, i32 2
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %1 = call ptr @memset(ptr %info, i32 255, i32 6)
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %parent1 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent1, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %7, i32 0, i32 18, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %parent.i = getelementptr i8, ptr %5, i32 136
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 -128
  %pyra_lock = getelementptr inbounds %struct.pyra_device, ptr %9, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %pyra_lock, i32 noundef 0) #9
  %call4 = call i32 @roccat_common2_receive(ptr noundef %add.ptr.i, i32 noundef 9, ptr noundef nonnull %info, i32 noundef 6) #9
  call void @mutex_unlock(ptr noundef %pyra_lock) #9
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %0, align 1
  %conv = zext i8 %13 to i32
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.23, i32 noundef %conv)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %info) #9
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pyra_sysfs_write_control(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not.i = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp6.not.i = icmp eq i32 %count, 3
  %or.cond.i = and i1 %cmp.not.i, %cmp6.not.i
  br i1 %or.cond.i, label %if.end.i, label %entry.pyra_sysfs_write.exit_crit_edge

entry.pyra_sysfs_write.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pyra_sysfs_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %parent1.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1.i, align 8
  %parent.i.i = getelementptr i8, ptr %3, i32 136
  %4 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -128
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %7, i32 0, i32 18, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %pyra_lock.i = getelementptr inbounds %struct.pyra_device, ptr %9, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %pyra_lock.i, i32 noundef 0) #9
  %call7.i = tail call i32 @roccat_common2_send_with_status(ptr noundef %add.ptr.i.i, i32 noundef 4, ptr noundef %buf, i32 noundef 3) #9
  tail call void @mutex_unlock(ptr noundef %pyra_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  %real_size.call7.i = select i1 %tobool.not.i, i32 3, i32 %call7.i
  br label %pyra_sysfs_write.exit

pyra_sysfs_write.exit:                            ; preds = %if.end.i, %entry.pyra_sysfs_write.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.pyra_sysfs_write.exit_crit_edge ], [ %real_size.call7.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @roccat_common2_send_with_status(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pyra_sysfs_read_info(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %parent1.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %5, i32 0, i32 18, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %parent.i.i = getelementptr i8, ptr %3, i32 136
  %8 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 -128
  call void @__sanitizer_cov_trace_const_cmp8(i64 6, i64 %off)
  %cmp.not.i = icmp slt i64 %off, 6
  br i1 %cmp.not.i, label %if.end.i, label %entry.pyra_sysfs_read.exit_crit_edge

entry.pyra_sysfs_read.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pyra_sysfs_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp7.not.i = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %count)
  %cmp9.not.i = icmp eq i32 %count, 6
  %or.cond.i = and i1 %cmp7.not.i, %cmp9.not.i
  br i1 %or.cond.i, label %if.end12.i, label %if.end.i.pyra_sysfs_read.exit_crit_edge

if.end.i.pyra_sysfs_read.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pyra_sysfs_read.exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %pyra_lock.i = getelementptr inbounds %struct.pyra_device, ptr %7, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %pyra_lock.i, i32 noundef 0) #9
  %call13.i = tail call i32 @roccat_common2_receive(ptr noundef %add.ptr.i.i, i32 noundef 9, ptr noundef %buf, i32 noundef 6) #9
  tail call void @mutex_unlock(ptr noundef %pyra_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i = icmp eq i32 %call13.i, 0
  %real_size.call13.i = select i1 %tobool.not.i, i32 6, i32 %call13.i
  br label %pyra_sysfs_read.exit

pyra_sysfs_read.exit:                             ; preds = %if.end12.i, %if.end.i.pyra_sysfs_read.exit_crit_edge, %entry.pyra_sysfs_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.pyra_sysfs_read.exit_crit_edge ], [ -22, %if.end.i.pyra_sysfs_read.exit_crit_edge ], [ %real_size.call13.i, %if.end12.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pyra_sysfs_write_info(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not.i = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %count)
  %cmp6.not.i = icmp eq i32 %count, 6
  %or.cond.i = and i1 %cmp.not.i, %cmp6.not.i
  br i1 %or.cond.i, label %if.end.i, label %entry.pyra_sysfs_write.exit_crit_edge

entry.pyra_sysfs_write.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pyra_sysfs_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %parent1.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1.i, align 8
  %parent.i.i = getelementptr i8, ptr %3, i32 136
  %4 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -128
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %7, i32 0, i32 18, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %pyra_lock.i = getelementptr inbounds %struct.pyra_device, ptr %9, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %pyra_lock.i, i32 noundef 0) #9
  %call7.i = tail call i32 @roccat_common2_send_with_status(ptr noundef %add.ptr.i.i, i32 noundef 9, ptr noundef %buf, i32 noundef 6) #9
  tail call void @mutex_unlock(ptr noundef %pyra_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  %real_size.call7.i = select i1 %tobool.not.i, i32 6, i32 %call7.i
  br label %pyra_sysfs_write.exit

pyra_sysfs_write.exit:                            ; preds = %if.end.i, %entry.pyra_sysfs_write.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.pyra_sysfs_write.exit_crit_edge ], [ %real_size.call7.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pyra_sysfs_read_profile_settings(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %parent1.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %5, i32 0, i32 18, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %parent.i.i = getelementptr i8, ptr %3, i32 136
  %8 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 -128
  call void @__sanitizer_cov_trace_const_cmp8(i64 13, i64 %off)
  %cmp.not.i = icmp slt i64 %off, 13
  br i1 %cmp.not.i, label %if.end.i, label %entry.pyra_sysfs_read.exit_crit_edge

entry.pyra_sysfs_read.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pyra_sysfs_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp7.not.i = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %count)
  %cmp9.not.i = icmp eq i32 %count, 13
  %or.cond.i = and i1 %cmp7.not.i, %cmp9.not.i
  br i1 %or.cond.i, label %if.end12.i, label %if.end.i.pyra_sysfs_read.exit_crit_edge

if.end.i.pyra_sysfs_read.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pyra_sysfs_read.exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %pyra_lock.i = getelementptr inbounds %struct.pyra_device, ptr %7, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %pyra_lock.i, i32 noundef 0) #9
  %call13.i = tail call i32 @roccat_common2_receive(ptr noundef %add.ptr.i.i, i32 noundef 6, ptr noundef %buf, i32 noundef 13) #9
  tail call void @mutex_unlock(ptr noundef %pyra_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i = icmp eq i32 %call13.i, 0
  %real_size.call13.i = select i1 %tobool.not.i, i32 13, i32 %call13.i
  br label %pyra_sysfs_read.exit

pyra_sysfs_read.exit:                             ; preds = %if.end12.i, %if.end.i.pyra_sysfs_read.exit_crit_edge, %entry.pyra_sysfs_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.pyra_sysfs_read.exit_crit_edge ], [ -22, %if.end.i.pyra_sysfs_read.exit_crit_edge ], [ %real_size.call13.i, %if.end12.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pyra_sysfs_write_profile_settings(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not.i = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %count)
  %cmp6.not.i = icmp eq i32 %count, 13
  %or.cond.i = and i1 %cmp.not.i, %cmp6.not.i
  br i1 %or.cond.i, label %if.end.i, label %entry.pyra_sysfs_write.exit_crit_edge

entry.pyra_sysfs_write.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pyra_sysfs_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %parent1.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1.i, align 8
  %parent.i.i = getelementptr i8, ptr %3, i32 136
  %4 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -128
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %7, i32 0, i32 18, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %pyra_lock.i = getelementptr inbounds %struct.pyra_device, ptr %9, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %pyra_lock.i, i32 noundef 0) #9
  %call7.i = tail call i32 @roccat_common2_send_with_status(ptr noundef %add.ptr.i.i, i32 noundef 6, ptr noundef %buf, i32 noundef 13) #9
  tail call void @mutex_unlock(ptr noundef %pyra_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  %real_size.call7.i = select i1 %tobool.not.i, i32 13, i32 %call7.i
  br label %pyra_sysfs_write.exit

pyra_sysfs_write.exit:                            ; preds = %if.end.i, %entry.pyra_sysfs_write.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.pyra_sysfs_write.exit_crit_edge ], [ %real_size.call7.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pyra_sysfs_read_profile_buttons(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %parent1.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %5, i32 0, i32 18, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %parent.i.i = getelementptr i8, ptr %3, i32 136
  %8 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 -128
  call void @__sanitizer_cov_trace_const_cmp8(i64 19, i64 %off)
  %cmp.not.i = icmp slt i64 %off, 19
  br i1 %cmp.not.i, label %if.end.i, label %entry.pyra_sysfs_read.exit_crit_edge

entry.pyra_sysfs_read.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pyra_sysfs_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp7.not.i = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %count)
  %cmp9.not.i = icmp eq i32 %count, 19
  %or.cond.i = and i1 %cmp7.not.i, %cmp9.not.i
  br i1 %or.cond.i, label %if.end12.i, label %if.end.i.pyra_sysfs_read.exit_crit_edge

if.end.i.pyra_sysfs_read.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pyra_sysfs_read.exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %pyra_lock.i = getelementptr inbounds %struct.pyra_device, ptr %7, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %pyra_lock.i, i32 noundef 0) #9
  %call13.i = tail call i32 @roccat_common2_receive(ptr noundef %add.ptr.i.i, i32 noundef 7, ptr noundef %buf, i32 noundef 19) #9
  tail call void @mutex_unlock(ptr noundef %pyra_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i = icmp eq i32 %call13.i, 0
  %real_size.call13.i = select i1 %tobool.not.i, i32 19, i32 %call13.i
  br label %pyra_sysfs_read.exit

pyra_sysfs_read.exit:                             ; preds = %if.end12.i, %if.end.i.pyra_sysfs_read.exit_crit_edge, %entry.pyra_sysfs_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.pyra_sysfs_read.exit_crit_edge ], [ -22, %if.end.i.pyra_sysfs_read.exit_crit_edge ], [ %real_size.call13.i, %if.end12.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pyra_sysfs_write_profile_buttons(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not.i = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %count)
  %cmp6.not.i = icmp eq i32 %count, 19
  %or.cond.i = and i1 %cmp.not.i, %cmp6.not.i
  br i1 %or.cond.i, label %if.end.i, label %entry.pyra_sysfs_write.exit_crit_edge

entry.pyra_sysfs_write.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pyra_sysfs_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %parent1.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1.i, align 8
  %parent.i.i = getelementptr i8, ptr %3, i32 136
  %4 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -128
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %7, i32 0, i32 18, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %pyra_lock.i = getelementptr inbounds %struct.pyra_device, ptr %9, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %pyra_lock.i, i32 noundef 0) #9
  %call7.i = tail call i32 @roccat_common2_send_with_status(ptr noundef %add.ptr.i.i, i32 noundef 7, ptr noundef %buf, i32 noundef 19) #9
  tail call void @mutex_unlock(ptr noundef %pyra_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  %real_size.call7.i = select i1 %tobool.not.i, i32 19, i32 %call7.i
  br label %pyra_sysfs_write.exit

pyra_sysfs_write.exit:                            ; preds = %if.end.i, %entry.pyra_sysfs_write.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.pyra_sysfs_write.exit_crit_edge ], [ %real_size.call7.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pyra_sysfs_read_settings(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %parent1.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %5, i32 0, i32 18, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %parent.i.i = getelementptr i8, ptr %3, i32 136
  %8 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 -128
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %off)
  %cmp.not.i = icmp slt i64 %off, 3
  br i1 %cmp.not.i, label %if.end.i, label %entry.pyra_sysfs_read.exit_crit_edge

entry.pyra_sysfs_read.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pyra_sysfs_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp7.not.i = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp9.not.i = icmp eq i32 %count, 3
  %or.cond.i = and i1 %cmp7.not.i, %cmp9.not.i
  br i1 %or.cond.i, label %if.end12.i, label %if.end.i.pyra_sysfs_read.exit_crit_edge

if.end.i.pyra_sysfs_read.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pyra_sysfs_read.exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %pyra_lock.i = getelementptr inbounds %struct.pyra_device, ptr %7, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %pyra_lock.i, i32 noundef 0) #9
  %call13.i = tail call i32 @roccat_common2_receive(ptr noundef %add.ptr.i.i, i32 noundef 5, ptr noundef %buf, i32 noundef 3) #9
  tail call void @mutex_unlock(ptr noundef %pyra_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i = icmp eq i32 %call13.i, 0
  %real_size.call13.i = select i1 %tobool.not.i, i32 3, i32 %call13.i
  br label %pyra_sysfs_read.exit

pyra_sysfs_read.exit:                             ; preds = %if.end12.i, %if.end.i.pyra_sysfs_read.exit_crit_edge, %entry.pyra_sysfs_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.pyra_sysfs_read.exit_crit_edge ], [ -22, %if.end.i.pyra_sysfs_read.exit_crit_edge ], [ %real_size.call13.i, %if.end12.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pyra_sysfs_write_settings(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %roccat_report = alloca %struct.pyra_roccat_report, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %parent1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %5, i32 0, i32 18, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %parent.i = getelementptr i8, ptr %3, i32 136
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 -128
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %roccat_report) #9
  %10 = getelementptr inbounds %struct.pyra_roccat_report, ptr %roccat_report, i32 0, i32 1
  %11 = getelementptr inbounds %struct.pyra_roccat_report, ptr %roccat_report, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp6.not = icmp eq i32 %count, 3
  %or.cond = and i1 %cmp.not, %cmp6.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %startup_profile = getelementptr inbounds %struct.pyra_settings, ptr %buf, i32 0, i32 2
  %12 = ptrtoint ptr %startup_profile to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %startup_profile, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %cmp7 = icmp ugt i8 %13, 4
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %pyra_lock = getelementptr inbounds %struct.pyra_device, ptr %7, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %pyra_lock, i32 noundef 0) #9
  %call.i = tail call i32 @roccat_common2_send_with_status(ptr noundef %add.ptr.i, i32 noundef 5, ptr noundef %buf, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %pyra_lock) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %14 = ptrtoint ptr %startup_profile to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %startup_profile, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %15)
  %cmp.i = icmp ugt i8 %15, 4
  br i1 %cmp.i, label %if.end14.profile_activated.exit_crit_edge, label %if.end.i

if.end14.profile_activated.exit_crit_edge:        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %profile_activated.exit

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %conv16 = zext i8 %15 to i32
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv16, ptr %7, align 4
  %y_cpi.i = getelementptr %struct.pyra_device, ptr %7, i32 0, i32 5, i32 %conv16, i32 7
  %17 = ptrtoint ptr %y_cpi.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %y_cpi.i, align 1
  %conv.i = zext i8 %18 to i32
  %actual_cpi.i = getelementptr inbounds %struct.pyra_device, ptr %7, i32 0, i32 1
  %19 = ptrtoint ptr %actual_cpi.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv.i, ptr %actual_cpi.i, align 4
  br label %profile_activated.exit

profile_activated.exit:                           ; preds = %if.end.i, %if.end14.profile_activated.exit_crit_edge
  %20 = ptrtoint ptr %roccat_report to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 48, ptr %roccat_report, align 1
  %21 = ptrtoint ptr %startup_profile to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %startup_profile, align 1
  %add = add i8 %22, 1
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %add, ptr %10, align 1
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %11, align 1
  %chrdev_minor = getelementptr inbounds %struct.pyra_device, ptr %7, i32 0, i32 3
  %25 = ptrtoint ptr %chrdev_minor to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chrdev_minor, align 4
  %call20 = call i32 @roccat_report_event(i32 noundef %26, ptr noundef nonnull %roccat_report) #9
  call void @mutex_unlock(ptr noundef %pyra_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %profile_activated.exit, %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then12 ], [ 3, %profile_activated.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %roccat_report) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pyra_sysfs_read_profilex_settings(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %control.i = alloca %struct.roccat_common2_control, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %parent1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 8
  %parent.i = getelementptr i8, ptr %3, i32 136
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %private = getelementptr inbounds %struct.bin_attribute, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %control.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %10 = icmp ugt i32 %9, 4
  br i1 %10, label %pyra_send_control.exit.thread, label %pyra_send_control.exit

pyra_send_control.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %control.i) #9
  br label %cleanup

pyra_send_control.exit:                           ; preds = %entry
  %11 = getelementptr inbounds %struct.roccat_common2_control, ptr %control.i, i32 0, i32 2
  %12 = getelementptr inbounds %struct.roccat_common2_control, ptr %control.i, i32 0, i32 1
  %add.ptr.i = getelementptr i8, ptr %5, i32 -128
  %13 = ptrtoint ptr %control.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 4, ptr %control.i, align 1
  %conv.i = trunc i32 %9 to i8
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %12, align 1
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 16, ptr %11, align 1
  %call.i = call i32 @roccat_common2_send(ptr noundef %add.ptr.i, i32 noundef 4, ptr noundef nonnull %control.i, i32 noundef 3) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %control.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %pyra_send_control.exit.cleanup_crit_edge

pyra_send_control.exit.cleanup_crit_edge:         ; preds = %pyra_send_control.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %pyra_send_control.exit
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent, align 8
  %parent1.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent1.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 18, i32 8
  %22 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i.i, align 4
  %parent.i.i = getelementptr i8, ptr %19, i32 136
  %24 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 -128
  call void @__sanitizer_cov_trace_const_cmp8(i64 13, i64 %off)
  %cmp.not.i = icmp slt i64 %off, 13
  br i1 %cmp.not.i, label %if.end.i11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i11:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp7.not.i = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %count)
  %cmp9.not.i = icmp eq i32 %count, 13
  %or.cond.i = and i1 %cmp7.not.i, %cmp9.not.i
  br i1 %or.cond.i, label %if.end12.i, label %if.end.i11.cleanup_crit_edge

if.end.i11.cleanup_crit_edge:                     ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.i:                                       ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #11
  %pyra_lock.i = getelementptr inbounds %struct.pyra_device, ptr %23, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %pyra_lock.i, i32 noundef 0) #9
  %call13.i = call i32 @roccat_common2_receive(ptr noundef %add.ptr.i.i, i32 noundef 6, ptr noundef %buf, i32 noundef 13) #9
  call void @mutex_unlock(ptr noundef %pyra_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i = icmp eq i32 %call13.i, 0
  %real_size.call13.i = select i1 %tobool.not.i, i32 13, i32 %call13.i
  br label %cleanup

cleanup:                                          ; preds = %if.end12.i, %if.end.i11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %pyra_send_control.exit.cleanup_crit_edge, %pyra_send_control.exit.thread
  %retval.0 = phi i32 [ %call.i, %pyra_send_control.exit.cleanup_crit_edge ], [ -22, %pyra_send_control.exit.thread ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end.i11.cleanup_crit_edge ], [ %real_size.call13.i, %if.end12.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pyra_sysfs_read_profilex_buttons(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %control.i = alloca %struct.roccat_common2_control, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %parent1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 8
  %parent.i = getelementptr i8, ptr %3, i32 136
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %private = getelementptr inbounds %struct.bin_attribute, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %control.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %10 = icmp ugt i32 %9, 4
  br i1 %10, label %pyra_send_control.exit.thread, label %pyra_send_control.exit

pyra_send_control.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %control.i) #9
  br label %cleanup

pyra_send_control.exit:                           ; preds = %entry
  %11 = getelementptr inbounds %struct.roccat_common2_control, ptr %control.i, i32 0, i32 2
  %12 = getelementptr inbounds %struct.roccat_common2_control, ptr %control.i, i32 0, i32 1
  %add.ptr.i = getelementptr i8, ptr %5, i32 -128
  %13 = ptrtoint ptr %control.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 4, ptr %control.i, align 1
  %conv.i = trunc i32 %9 to i8
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %12, align 1
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 32, ptr %11, align 1
  %call.i = call i32 @roccat_common2_send(ptr noundef %add.ptr.i, i32 noundef 4, ptr noundef nonnull %control.i, i32 noundef 3) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %control.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %pyra_send_control.exit.cleanup_crit_edge

pyra_send_control.exit.cleanup_crit_edge:         ; preds = %pyra_send_control.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %pyra_send_control.exit
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent, align 8
  %parent1.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent1.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 18, i32 8
  %22 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i.i, align 4
  %parent.i.i = getelementptr i8, ptr %19, i32 136
  %24 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 -128
  call void @__sanitizer_cov_trace_const_cmp8(i64 19, i64 %off)
  %cmp.not.i = icmp slt i64 %off, 19
  br i1 %cmp.not.i, label %if.end.i11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i11:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp7.not.i = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %count)
  %cmp9.not.i = icmp eq i32 %count, 19
  %or.cond.i = and i1 %cmp7.not.i, %cmp9.not.i
  br i1 %or.cond.i, label %if.end12.i, label %if.end.i11.cleanup_crit_edge

if.end.i11.cleanup_crit_edge:                     ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.i:                                       ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #11
  %pyra_lock.i = getelementptr inbounds %struct.pyra_device, ptr %23, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %pyra_lock.i, i32 noundef 0) #9
  %call13.i = call i32 @roccat_common2_receive(ptr noundef %add.ptr.i.i, i32 noundef 7, ptr noundef %buf, i32 noundef 19) #9
  call void @mutex_unlock(ptr noundef %pyra_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i = icmp eq i32 %call13.i, 0
  %real_size.call13.i = select i1 %tobool.not.i, i32 19, i32 %call13.i
  br label %cleanup

cleanup:                                          ; preds = %if.end12.i, %if.end.i11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %pyra_send_control.exit.cleanup_crit_edge, %pyra_send_control.exit.thread
  %retval.0 = phi i32 [ %call.i, %pyra_send_control.exit.cleanup_crit_edge ], [ -22, %pyra_send_control.exit.thread ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end.i11.cleanup_crit_edge ], [ %real_size.call13.i, %if.end12.i ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !55, !57, !59, !61, !63, !64, !66, !68, !69, !71, !72, !74, !75, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !93, !95, !96, !98, !100, !101, !103, !104, !106, !107, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @__initcall__kmod_hid_roccat_pyra__232_605_pyra_init6, !1, !"__initcall__kmod_hid_roccat_pyra__232_605_pyra_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 605, i32 1}
!2 = !{ptr @__exitcall_pyra_exit, !3, !"__exitcall_pyra_exit", i1 false, i1 false}
!3 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 606, i32 1}
!4 = !{ptr @__UNIQUE_ID_author233, !5, !"__UNIQUE_ID_author233", i1 false, i1 false}
!5 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 608, i32 1}
!6 = !{ptr @__UNIQUE_ID_description234, !7, !"__UNIQUE_ID_description234", i1 false, i1 false}
!7 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 609, i32 1}
!8 = !{ptr @__UNIQUE_ID_file235, !9, !"__UNIQUE_ID_file235", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 610, i32 1}
!10 = !{ptr @__UNIQUE_ID_license236, !9, !"__UNIQUE_ID_license236", i1 false, i1 false}
!11 = !{ptr @pyra_class, !12, !"pyra_class", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 30, i32 22}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 576, i32 11}
!15 = !{ptr @pyra_driver, !16, !"pyra_driver", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 575, i32 26}
!17 = !{ptr @pyra_devices, !18, !"pyra_devices", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 565, i32 35}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 457, i32 3}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @pyra_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @pyra_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 463, i32 3}
!29 = !{ptr @pyra_probe._entry.6, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @pyra_probe._entry_ptr.8, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 469, i32 3}
!33 = !{ptr @pyra_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @pyra_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 405, i32 4}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @pyra_init_specials._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @pyra_init_specials._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 412, i32 4}
!42 = !{ptr @pyra_init_specials._entry.14, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @pyra_init_specials._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 419, i32 4}
!46 = !{ptr @pyra_init_specials._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @pyra_init_specials._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @pyra_init_pyra_device_struct.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 375, i32 2}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @pyra_init.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 588, i32 15}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 593, i32 11}
!55 = !{ptr @pyra_groups, !56, !"pyra_groups", i1 false, i1 false}
!56 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 364, i32 38}
!57 = !{ptr @pyra_group, !58, !"pyra_group", i1 false, i1 false}
!58 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 359, i32 37}
!59 = !{ptr @pyra_attrs, !60, !"pyra_attrs", i1 false, i1 false}
!60 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 332, i32 26}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 291, i32 8}
!63 = !{ptr @dev_attr_actual_cpi, !62, !"dev_attr_actual_cpi", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 289, i32 34}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 308, i32 8}
!68 = !{ptr @dev_attr_actual_profile, !67, !"dev_attr_actual_profile", i1 false, i1 false}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 329, i32 8}
!71 = !{ptr @dev_attr_firmware_version, !70, !"dev_attr_firmware_version", i1 false, i1 false}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 309, i32 8}
!74 = !{ptr @dev_attr_startup_profile, !73, !"dev_attr_startup_profile", i1 false, i1 false}
!75 = !{ptr @pyra_bin_attributes, !76, !"pyra_bin_attributes", i1 false, i1 false}
!76 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 340, i32 30}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 180, i32 1}
!79 = !{ptr @bin_attr_control, !78, !"bin_attr_control", i1 false, i1 false}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 181, i32 1}
!82 = !{ptr @bin_attr_info, !81, !"bin_attr_info", i1 false, i1 false}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 182, i32 1}
!85 = !{ptr @bin_attr_profile_settings, !84, !"bin_attr_profile_settings", i1 false, i1 false}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 183, i32 1}
!88 = !{ptr @bin_attr_profile_buttons, !87, !"bin_attr_profile_buttons", i1 false, i1 false}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 280, i32 2}
!91 = !{ptr @bin_attr_settings, !92, !"bin_attr_settings", i1 false, i1 false}
!92 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 279, i32 29}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 234, i32 1}
!95 = !{ptr @bin_attr_profile1_settings, !94, !"bin_attr_profile1_settings", i1 false, i1 false}
!96 = !{ptr @profile_numbers, !97, !"profile_numbers", i1 false, i1 false}
!97 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 27, i32 13}
!98 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 235, i32 1}
!100 = !{ptr @bin_attr_profile2_settings, !99, !"bin_attr_profile2_settings", i1 false, i1 false}
!101 = !{ptr @.str.34, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 236, i32 1}
!103 = !{ptr @bin_attr_profile3_settings, !102, !"bin_attr_profile3_settings", i1 false, i1 false}
!104 = !{ptr @.str.35, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 237, i32 1}
!106 = !{ptr @bin_attr_profile4_settings, !105, !"bin_attr_profile4_settings", i1 false, i1 false}
!107 = !{ptr @.str.36, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hid/hid-roccat-pyra.c", i32 238, i32 1}
!109 = !{ptr @bin_attr_profile5_settings, !108, !"bin_attr_profile5_settings", i1 false, i1 false}
!110 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @bin_attr_profile1_buttons, !94, !"bin_attr_profile1_buttons", i1 false, i1 false}
!112 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @bin_attr_profile2_buttons, !99, !"bin_attr_profile2_buttons", i1 false, i1 false}
!114 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @bin_attr_profile3_buttons, !102, !"bin_attr_profile3_buttons", i1 false, i1 false}
!116 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @bin_attr_profile4_buttons, !105, !"bin_attr_profile4_buttons", i1 false, i1 false}
!118 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @bin_attr_profile5_buttons, !108, !"bin_attr_profile5_buttons", i1 false, i1 false}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{!"auto-init"}
