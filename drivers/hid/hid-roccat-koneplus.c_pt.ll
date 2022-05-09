; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-roccat-koneplus.c_pt.bc'
source_filename = "../drivers/hid/hid-roccat-koneplus.c"
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
%struct.koneplus_actual_profile = type { i8, i8, i8 }
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
%struct.koneplus_device = type { i32, i32, i32, %struct.mutex }
%struct.koneplus_roccat_report = type { i8, i8, i8, i8 }
%struct.koneplus_mouse_report_button = type { i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.koneplus_info = type { i8, i8, i8, [3 x i8] }
%struct.roccat_common2_control = type { i8, i8, i8 }

@koneplus_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str, ptr @koneplus_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @koneplus_probe, ptr @koneplus_remove, ptr null, ptr @koneplus_raw_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@koneplus_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_hid_roccat_koneplus__232_569_koneplus_init6 = internal global ptr @koneplus_init, section ".initcall6.init", align 4
@__exitcall_koneplus_exit = internal global ptr @koneplus_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author233 = internal constant [41 x i8] c"hid_roccat_koneplus.author=Stefan Achatz\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [62 x i8] c"hid_roccat_koneplus.description=USB Roccat Kone[+]/XTD driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [57 x i8] c"hid_roccat_koneplus.file=drivers/hid/hid-roccat-koneplus\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [35 x i8] c"hid_roccat_koneplus.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"koneplus\00", [23 x i8] zeroinitializer }, align 32
@koneplus_devices = internal constant { [3 x %struct.hid_device_id], [48 x i8] } { [3 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 7805, i32 11601, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7805, i32 11810, i32 0 }, %struct.hid_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@koneplus_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 439, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"koneplus_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/hid/hid-roccat-koneplus.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@koneplus_probe._entry_ptr = internal global ptr @koneplus_probe._entry, section ".printk_index", align 4
@koneplus_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 445, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@koneplus_probe._entry_ptr.8 = internal global ptr @koneplus_probe._entry.6, section ".printk_index", align 4
@koneplus_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 451, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"couldn't install mouse\0A\00", [40 x i8] zeroinitializer }, align 32
@koneplus_probe._entry_ptr.11 = internal global ptr @koneplus_probe._entry.9, section ".printk_index", align 4
@usb_hid_driver = external dso_local global %struct.hid_ll_driver, align 4
@koneplus_init_specials._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 386, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"can't alloc device descriptor\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"koneplus_init_specials\00", [41 x i8] zeroinitializer }, align 32
@koneplus_init_specials._entry_ptr = internal global ptr @koneplus_init_specials._entry, section ".printk_index", align 4
@koneplus_init_specials._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.3, i32 393, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"couldn't init struct koneplus_device\0A\00", [58 x i8] zeroinitializer }, align 32
@koneplus_init_specials._entry_ptr.16 = internal global ptr @koneplus_init_specials._entry.14, section ".printk_index", align 4
@koneplus_init_specials._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.3, i32 400, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"couldn't init char dev\0A\00", [40 x i8] zeroinitializer }, align 32
@koneplus_init_specials._entry_ptr.19 = internal global ptr @koneplus_init_specials._entry.17, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@koneplus_init_koneplus_device_struct.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&koneplus->koneplus_lock\00", [39 x i8] zeroinitializer }, align 32
@koneplus_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@koneplus_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @koneplus_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hid_roccat_koneplus\00", [44 x i8] zeroinitializer }, align 32
@koneplus_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @koneplus_attrs, ptr @koneplus_bin_attributes }, [44 x i8] zeroinitializer }, align 32
@koneplus_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_actual_profile, ptr @dev_attr_startup_profile, ptr @dev_attr_firmware_version, ptr null], [16 x i8] zeroinitializer }, align 32
@koneplus_bin_attributes = internal global { [20 x ptr], [48 x i8] } { [20 x ptr] [ptr @bin_attr_control, ptr @bin_attr_talk, ptr @bin_attr_macro, ptr @bin_attr_tcu_image, ptr @bin_attr_info, ptr @bin_attr_sensor, ptr @bin_attr_tcu, ptr @bin_attr_profile_settings, ptr @bin_attr_profile_buttons, ptr @bin_attr_profile1_settings, ptr @bin_attr_profile2_settings, ptr @bin_attr_profile3_settings, ptr @bin_attr_profile4_settings, ptr @bin_attr_profile5_settings, ptr @bin_attr_profile1_buttons, ptr @bin_attr_profile2_buttons, ptr @bin_attr_profile3_buttons, ptr @bin_attr_profile4_buttons, ptr @bin_attr_profile5_buttons, ptr null], [48 x i8] zeroinitializer }, align 32
@dev_attr_actual_profile = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @koneplus_sysfs_show_actual_profile, ptr @koneplus_sysfs_set_actual_profile }, [36 x i8] zeroinitializer }, align 32
@dev_attr_startup_profile = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @koneplus_sysfs_show_actual_profile, ptr @koneplus_sysfs_set_actual_profile }, [36 x i8] zeroinitializer }, align 32
@dev_attr_firmware_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @koneplus_sysfs_show_firmware_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"actual_profile\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"startup_profile\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"firmware_version\00", [47 x i8] zeroinitializer }, align 32
@bin_attr_control = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.26, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 3, ptr null, ptr null, ptr null, ptr @koneplus_sysfs_write_control, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_talk = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.27, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 16, ptr null, ptr null, ptr null, ptr @koneplus_sysfs_write_talk, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_macro = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.28, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 2082, ptr null, ptr null, ptr null, ptr @koneplus_sysfs_write_macro, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_tcu_image = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.29, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 1028, ptr null, ptr null, ptr @koneplus_sysfs_read_tcu_image, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_info = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.30, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 6, ptr null, ptr null, ptr @koneplus_sysfs_read_info, ptr @koneplus_sysfs_write_info, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_sensor = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.31, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 6, ptr null, ptr null, ptr @koneplus_sysfs_read_sensor, ptr @koneplus_sysfs_write_sensor, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_tcu = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.32, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 4, ptr null, ptr null, ptr @koneplus_sysfs_read_tcu, ptr @koneplus_sysfs_write_tcu, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile_settings = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.33, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 43, ptr null, ptr null, ptr @koneplus_sysfs_read_profile_settings, ptr @koneplus_sysfs_write_profile_settings, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile_buttons = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.34, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 77, ptr null, ptr null, ptr @koneplus_sysfs_read_profile_buttons, ptr @koneplus_sysfs_write_profile_buttons, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile1_settings = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.35, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 43, ptr @profile_numbers, ptr null, ptr @koneplus_sysfs_read_profilex_settings, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile2_settings = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.36, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 43, ptr getelementptr (i8, ptr @profile_numbers, i64 4), ptr null, ptr @koneplus_sysfs_read_profilex_settings, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile3_settings = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.37, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 43, ptr getelementptr (i8, ptr @profile_numbers, i64 8), ptr null, ptr @koneplus_sysfs_read_profilex_settings, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile4_settings = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.38, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 43, ptr getelementptr (i8, ptr @profile_numbers, i64 12), ptr null, ptr @koneplus_sysfs_read_profilex_settings, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile5_settings = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.39, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 43, ptr getelementptr (i8, ptr @profile_numbers, i64 16), ptr null, ptr @koneplus_sysfs_read_profilex_settings, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile1_buttons = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.40, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 77, ptr @profile_numbers, ptr null, ptr @koneplus_sysfs_read_profilex_buttons, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile2_buttons = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.41, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 77, ptr getelementptr (i8, ptr @profile_numbers, i64 4), ptr null, ptr @koneplus_sysfs_read_profilex_buttons, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile3_buttons = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.42, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 77, ptr getelementptr (i8, ptr @profile_numbers, i64 8), ptr null, ptr @koneplus_sysfs_read_profilex_buttons, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile4_buttons = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.43, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 77, ptr getelementptr (i8, ptr @profile_numbers, i64 12), ptr null, ptr @koneplus_sysfs_read_profilex_buttons, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile5_buttons = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.44, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 77, ptr getelementptr (i8, ptr @profile_numbers, i64 16), ptr null, ptr @koneplus_sysfs_read_profilex_buttons, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"talk\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"macro\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tcu_image\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"info\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sensor\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tcu\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"profile_settings\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"profile_buttons\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"profile1_settings\00", [46 x i8] zeroinitializer }, align 32
@profile_numbers = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4], [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"profile2_settings\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"profile3_settings\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"profile4_settings\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"profile5_settings\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"profile1_buttons\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"profile2_buttons\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"profile3_buttons\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"profile4_buttons\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"profile5_buttons\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 96, i64 128]
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"koneplus_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 539, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"koneplus_class\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 29, i32 22 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 540, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"koneplus_devices\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 531, i32 35 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 439, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 445, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 451, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 386, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 393, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 400, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 364, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 552, i32 19 }
@___asan_gen_.117 = private unnamed_addr constant [16 x i8] c"koneplus_groups\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 354, i32 38 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 557, i32 11 }
@___asan_gen_.123 = private unnamed_addr constant [15 x i8] c"koneplus_group\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 349, i32 37 }
@___asan_gen_.126 = private unnamed_addr constant [15 x i8] c"koneplus_attrs\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 319, i32 26 }
@___asan_gen_.129 = private unnamed_addr constant [24 x i8] c"koneplus_bin_attributes\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 326, i32 30 }
@___asan_gen_.132 = private unnamed_addr constant [24 x i8] c"dev_attr_actual_profile\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [25 x i8] c"dev_attr_startup_profile\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [26 x i8] c"dev_attr_firmware_version\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 291, i32 8 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 247, i32 34 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 294, i32 8 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 316, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"bin_attr_control\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [14 x i8] c"bin_attr_talk\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [15 x i8] c"bin_attr_macro\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [19 x i8] c"bin_attr_tcu_image\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [14 x i8] c"bin_attr_info\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [16 x i8] c"bin_attr_sensor\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [13 x i8] c"bin_attr_tcu\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [26 x i8] c"bin_attr_profile_settings\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [25 x i8] c"bin_attr_profile_buttons\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [27 x i8] c"bin_attr_profile1_settings\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [27 x i8] c"bin_attr_profile2_settings\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [27 x i8] c"bin_attr_profile3_settings\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [27 x i8] c"bin_attr_profile4_settings\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [27 x i8] c"bin_attr_profile5_settings\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [26 x i8] c"bin_attr_profile1_buttons\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [26 x i8] c"bin_attr_profile2_buttons\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [26 x i8] c"bin_attr_profile3_buttons\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [26 x i8] c"bin_attr_profile4_buttons\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [26 x i8] c"bin_attr_profile5_buttons\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 177, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 178, i32 1 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 179, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 180, i32 1 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 181, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 182, i32 1 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 183, i32 1 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 184, i32 1 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 185, i32 1 }
@___asan_gen_.240 = private unnamed_addr constant [16 x i8] c"profile_numbers\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 27, i32 13 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 236, i32 1 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 237, i32 1 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 238, i32 1 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 239, i32 1 }
@___asan_gen_.267 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.268 = private constant [37 x i8] c"../drivers/hid/hid-roccat-koneplus.c\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 240, i32 1 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_koneplus_exit, ptr @__initcall__kmod_hid_roccat_koneplus__232_569_koneplus_init6, ptr @koneplus_exit, ptr @koneplus_init_specials._entry, ptr @koneplus_init_specials._entry.14, ptr @koneplus_init_specials._entry.17, ptr @koneplus_init_specials._entry_ptr, ptr @koneplus_init_specials._entry_ptr.16, ptr @koneplus_init_specials._entry_ptr.19, ptr @koneplus_probe._entry, ptr @koneplus_probe._entry.6, ptr @koneplus_probe._entry.9, ptr @koneplus_probe._entry_ptr, ptr @koneplus_probe._entry_ptr.11, ptr @koneplus_probe._entry_ptr.8, ptr @koneplus_driver, ptr @koneplus_class, ptr @.str, ptr @koneplus_devices, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @koneplus_init_koneplus_device_struct.__key, ptr @.str.20, ptr @koneplus_init.__key, ptr @koneplus_groups, ptr @.str.21, ptr @koneplus_group, ptr @koneplus_attrs, ptr @koneplus_bin_attributes, ptr @dev_attr_actual_profile, ptr @dev_attr_startup_profile, ptr @dev_attr_firmware_version, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @bin_attr_control, ptr @bin_attr_talk, ptr @bin_attr_macro, ptr @bin_attr_tcu_image, ptr @bin_attr_info, ptr @bin_attr_sensor, ptr @bin_attr_tcu, ptr @bin_attr_profile_settings, ptr @bin_attr_profile_buttons, ptr @bin_attr_profile1_settings, ptr @bin_attr_profile2_settings, ptr @bin_attr_profile3_settings, ptr @bin_attr_profile4_settings, ptr @bin_attr_profile5_settings, ptr @bin_attr_profile1_buttons, ptr @bin_attr_profile2_buttons, ptr @bin_attr_profile3_buttons, ptr @bin_attr_profile4_buttons, ptr @bin_attr_profile5_buttons, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @profile_numbers, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @koneplus_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @koneplus_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @koneplus_devices to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @koneplus_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @koneplus_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @koneplus_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @koneplus_init_specials._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @koneplus_init_specials._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @koneplus_init_specials._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @koneplus_init_koneplus_device_struct.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @koneplus_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @koneplus_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @koneplus_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @koneplus_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @koneplus_bin_attributes to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_actual_profile to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_startup_profile to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_firmware_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_control to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_talk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_macro to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_tcu_image to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_info to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_sensor to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_tcu to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile_settings to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile_buttons to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile1_settings to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile2_settings to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile3_settings to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile4_settings to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile5_settings to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile1_buttons to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile2_buttons to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile3_buttons to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile4_buttons to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile5_buttons to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @profile_numbers to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @koneplus_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hid_unregister_driver(ptr noundef nonnull @koneplus_driver) #8
  %0 = load ptr, ptr @koneplus_class, align 4
  tail call void @class_destroy(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @koneplus_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @koneplus_init.__key) #8
  store ptr %call, ptr @koneplus_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_groups = getelementptr inbounds %struct.class, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %dev_groups to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @koneplus_groups, ptr %dev_groups, align 4
  %call4 = tail call i32 @__hid_register_driver(ptr noundef nonnull @koneplus_driver, ptr noundef null, ptr noundef nonnull @.str.21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load ptr, ptr @koneplus_class, align 4
  tail call void @class_destroy(ptr noundef %2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call4, %if.then5 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @koneplus_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %buf.i.i.i = alloca %struct.koneplus_actual_profile, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ll_driver.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 20
  %0 = ptrtoint ptr %ll_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ll_driver.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, @usb_hid_driver
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  br i1 %tobool6.not, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.7) #11
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 104) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.12) #11
  br label %do.end18

if.end.i:                                         ; preds = %if.then.i
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %11 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i.i, ptr %driver_data.i.i.i, align 4
  %koneplus_lock.i.i = getelementptr inbounds %struct.koneplus_device, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %koneplus_lock.i.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @koneplus_init_koneplus_device_struct.__key) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i.i) #8
  %12 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %buf.i.i.i, align 1, !annotation !137
  %13 = getelementptr inbounds %struct.koneplus_actual_profile, ptr %buf.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %13, align 1, !annotation !137
  %15 = getelementptr inbounds %struct.koneplus_actual_profile, ptr %buf.i.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %15, align 1, !annotation !137
  %call.i.i.i = call i32 @roccat_common2_receive(ptr noundef %add.ptr.i.i, i32 noundef 5, ptr noundef nonnull %buf.i.i.i, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %koneplus_get_actual_profile.exit.thread.i.i, label %koneplus_get_actual_profile.exit.i.i

koneplus_get_actual_profile.exit.thread.i.i:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %15, align 1
  %conv.i.i.i = zext i8 %18 to i32
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i.i) #8
  br label %if.end13.i

koneplus_get_actual_profile.exit.i.i:             ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i31 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i31, label %do.end11.i, label %koneplus_get_actual_profile.exit.i.i.if.end13.i_crit_edge

koneplus_get_actual_profile.exit.i.i.if.end13.i_crit_edge: ; preds = %koneplus_get_actual_profile.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

do.end11.i:                                       ; preds = %koneplus_get_actual_profile.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %do.end18

if.end13.i:                                       ; preds = %koneplus_get_actual_profile.exit.i.i.if.end13.i_crit_edge, %koneplus_get_actual_profile.exit.thread.i.i
  %cond.i7.i.i = phi i32 [ %conv.i.i.i, %koneplus_get_actual_profile.exit.thread.i.i ], [ %call.i.i.i, %koneplus_get_actual_profile.exit.i.i.if.end13.i_crit_edge ]
  %19 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond.i7.i.i, ptr %call7.i.i.i, align 8
  %20 = load ptr, ptr @koneplus_class, align 4
  %call14.i = call i32 @roccat_connect(ptr noundef %20, ptr noundef %hdev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %do.end20.i, label %if.else.i

do.end20.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.18) #11
  br label %cleanup

if.else.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %chrdev_minor.i = getelementptr inbounds %struct.koneplus_device, ptr %call7.i.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %chrdev_minor.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call14.i, ptr %chrdev_minor.i, align 8
  %roccat_claimed.i = getelementptr inbounds %struct.koneplus_device, ptr %call7.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %roccat_claimed.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %roccat_claimed.i, align 4
  br label %cleanup

if.else23.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i43.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %23 = ptrtoint ptr %driver_data.i.i43.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %driver_data.i.i43.i, align 4
  br label %cleanup

do.end18:                                         ; preds = %do.end11.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i.i.i, %do.end11.i ], [ -12, %do.end.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.10) #11
  call void @hid_hw_stop(ptr noundef %hdev) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.else23.i, %if.else.i, %do.end20.i, %do.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %do.end ], [ %call5, %do.end10 ], [ %retval.0.i, %do.end18 ], [ 0, %do.end20.i ], [ 0, %if.else.i ], [ 0, %if.else23.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @koneplus_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %cmp.i, label %if.then.i, label %entry.koneplus_remove_specials.exit_crit_edge

entry.koneplus_remove_specials.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %koneplus_remove_specials.exit

if.then.i:                                        ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %roccat_claimed.i = getelementptr inbounds %struct.koneplus_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %roccat_claimed.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %roccat_claimed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %chrdev_minor.i = getelementptr inbounds %struct.koneplus_device, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %chrdev_minor.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chrdev_minor.i, align 4
  tail call void @roccat_disconnect(i32 noundef %11) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  tail call void @kfree(ptr noundef %7) #8
  br label %koneplus_remove_specials.exit

koneplus_remove_specials.exit:                    ; preds = %if.end.i, %entry.koneplus_remove_specials.exit_crit_edge
  tail call void @hid_hw_stop(ptr noundef %hdev) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @koneplus_raw_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readnone %report, ptr nocapture noundef readonly %data, i32 noundef %size) #2 align 64 {
entry:
  %roccat_report.i = alloca %struct.koneplus_roccat_report, align 1
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %entry
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cond.i = icmp eq i8 %9, 3
  br i1 %cond.i, label %sw.bb.i, label %if.end5.koneplus_keep_values_up_to_date.exit_crit_edge

if.end5.koneplus_keep_values_up_to_date.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %koneplus_keep_values_up_to_date.exit

sw.bb.i:                                          ; preds = %if.end5
  %type.i = getelementptr inbounds %struct.koneplus_mouse_report_button, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %11)
  %cond5.i = icmp eq i8 %11, 32
  br i1 %cond5.i, label %sw.bb2.i, label %sw.bb.i.koneplus_keep_values_up_to_date.exit_crit_edge

sw.bb.i.koneplus_keep_values_up_to_date.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %koneplus_keep_values_up_to_date.exit

sw.bb2.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %data1.i = getelementptr inbounds %struct.koneplus_mouse_report_button, ptr %data, i32 0, i32 3
  %12 = ptrtoint ptr %data1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data1.i, align 1
  %conv3.i = zext i8 %13 to i32
  %sub.i = add nsw i32 %conv3.i, -1
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub.i, ptr %3, align 4
  br label %koneplus_keep_values_up_to_date.exit

koneplus_keep_values_up_to_date.exit:             ; preds = %sw.bb2.i, %sw.bb.i.koneplus_keep_values_up_to_date.exit_crit_edge, %if.end5.koneplus_keep_values_up_to_date.exit_crit_edge
  %roccat_claimed = getelementptr inbounds %struct.koneplus_device, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %roccat_claimed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %roccat_claimed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %koneplus_keep_values_up_to_date.exit.cleanup_crit_edge, label %if.then6

koneplus_keep_values_up_to_date.exit.cleanup_crit_edge: ; preds = %koneplus_keep_values_up_to_date.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %koneplus_keep_values_up_to_date.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %roccat_report.i) #8
  %17 = getelementptr inbounds %struct.koneplus_roccat_report, ptr %roccat_report.i, i32 0, i32 1
  %18 = getelementptr inbounds %struct.koneplus_roccat_report, ptr %roccat_report.i, i32 0, i32 2
  %19 = getelementptr inbounds %struct.koneplus_roccat_report, ptr %roccat_report.i, i32 0, i32 3
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %21)
  %cmp.not.i = icmp eq i8 %21, 3
  br i1 %cmp.not.i, label %if.end.i, label %if.then6.koneplus_report_to_chrdev.exit_crit_edge

if.then6.koneplus_report_to_chrdev.exit_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %koneplus_report_to_chrdev.exit

if.end.i:                                         ; preds = %if.then6
  %type.i14 = getelementptr inbounds %struct.koneplus_mouse_report_button, ptr %data, i32 0, i32 2
  %22 = ptrtoint ptr %type.i14 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %type.i14, align 1
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i8 %23, label %if.end.i.if.end13.i_crit_edge [
    i8 96, label %if.end.i.land.lhs.true.i_crit_edge
    i8 -128, label %if.end.i.land.lhs.true.i_crit_edge16
  ]

if.end.i.land.lhs.true.i_crit_edge16:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.end.i.land.lhs.true.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

land.lhs.true.i:                                  ; preds = %if.end.i.land.lhs.true.i_crit_edge, %if.end.i.land.lhs.true.i_crit_edge16
  %data2.i = getelementptr inbounds %struct.koneplus_mouse_report_button, ptr %data, i32 0, i32 4
  %25 = ptrtoint ptr %data2.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %data2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp10.not.i = icmp eq i8 %26, 0
  br i1 %cmp10.not.i, label %land.lhs.true.i.if.end13.i_crit_edge, label %land.lhs.true.i.koneplus_report_to_chrdev.exit_crit_edge

land.lhs.true.i.koneplus_report_to_chrdev.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %koneplus_report_to_chrdev.exit

land.lhs.true.i.if.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.end13.i:                                       ; preds = %land.lhs.true.i.if.end13.i_crit_edge, %if.end.i.if.end13.i_crit_edge
  %27 = ptrtoint ptr %roccat_report.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %23, ptr %roccat_report.i, align 1
  %data1.i15 = getelementptr inbounds %struct.koneplus_mouse_report_button, ptr %data, i32 0, i32 3
  %28 = ptrtoint ptr %data1.i15 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %data1.i15, align 1
  %30 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %17, align 1
  %data217.i = getelementptr inbounds %struct.koneplus_mouse_report_button, ptr %data, i32 0, i32 4
  %31 = ptrtoint ptr %data217.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %data217.i, align 1
  %33 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %18, align 1
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %3, align 4
  %36 = trunc i32 %35 to i8
  %conv19.i = add i8 %36, 1
  %37 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv19.i, ptr %19, align 1
  %chrdev_minor.i = getelementptr inbounds %struct.koneplus_device, ptr %3, i32 0, i32 2
  %38 = ptrtoint ptr %chrdev_minor.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %chrdev_minor.i, align 4
  %call.i = call i32 @roccat_report_event(i32 noundef %39, ptr noundef nonnull %roccat_report.i) #8
  br label %koneplus_report_to_chrdev.exit

koneplus_report_to_chrdev.exit:                   ; preds = %if.end13.i, %land.lhs.true.i.koneplus_report_to_chrdev.exit_crit_edge, %if.then6.koneplus_report_to_chrdev.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %roccat_report.i) #8
  br label %cleanup

cleanup:                                          ; preds = %koneplus_report_to_chrdev.exit, %koneplus_keep_values_up_to_date.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
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
declare dso_local void @roccat_disconnect(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @roccat_report_event(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @koneplus_sysfs_show_actual_profile(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.23, i32 noundef %9)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @koneplus_sysfs_set_actual_profile(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %buf.i = alloca %struct.koneplus_actual_profile, align 1
  %profile = alloca i32, align 4
  %roccat_report = alloca %struct.koneplus_roccat_report, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %profile) #8
  %0 = ptrtoint ptr %profile to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %profile, align 4, !annotation !137
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %roccat_report) #8
  %1 = getelementptr inbounds %struct.koneplus_roccat_report, ptr %roccat_report, i32 0, i32 1
  %2 = getelementptr inbounds %struct.koneplus_roccat_report, ptr %roccat_report, i32 0, i32 2
  %3 = getelementptr inbounds %struct.koneplus_roccat_report, ptr %roccat_report, i32 0, i32 3
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %parent2 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent2, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %9, i32 0, i32 18, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %parent.i = getelementptr i8, ptr %7, i32 136
  %12 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 -128
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %profile) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %profile, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp = icmp ugt i32 %15, 4
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %koneplus_lock = getelementptr inbounds %struct.koneplus_device, ptr %11, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %koneplus_lock, i32 noundef 0) #8
  %16 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %profile, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #8
  %18 = getelementptr inbounds %struct.koneplus_actual_profile, ptr %buf.i, i32 0, i32 1
  %19 = getelementptr inbounds %struct.koneplus_actual_profile, ptr %buf.i, i32 0, i32 2
  %20 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 5, ptr %buf.i, align 1
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 3, ptr %18, align 1
  %conv.i = trunc i32 %17 to i8
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.i, ptr %19, align 1
  %call.i31 = call i32 @roccat_common2_send_with_status(ptr noundef %add.ptr.i, i32 noundef 5, ptr noundef nonnull %buf.i, i32 noundef 3) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool9.not = icmp eq i32 %call.i31, 0
  br i1 %tobool9.not, label %if.end12, label %if.end7.cleanup.sink.split_crit_edge

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %profile, align 4
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %11, align 4
  %26 = ptrtoint ptr %roccat_report to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 32, ptr %roccat_report, align 1
  %27 = load i32, ptr %profile, align 4
  %28 = trunc i32 %27 to i8
  %conv = add i8 %28, 1
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv, ptr %1, align 1
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %2, align 1
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv, ptr %3, align 1
  %chrdev_minor = getelementptr inbounds %struct.koneplus_device, ptr %11, i32 0, i32 2
  %32 = ptrtoint ptr %chrdev_minor to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %chrdev_minor, align 4
  %call16 = call i32 @roccat_report_event(i32 noundef %33, ptr noundef nonnull %roccat_report) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end12, %if.end7.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %size, %if.end12 ], [ %call.i31, %if.end7.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %koneplus_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %roccat_report) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %profile) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @roccat_common2_send_with_status(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @koneplus_sysfs_show_firmware_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %info = alloca %struct.koneplus_info, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %info) #8
  %0 = getelementptr inbounds %struct.koneplus_info, ptr %info, i32 0, i32 2
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
  %koneplus_lock = getelementptr inbounds %struct.koneplus_device, ptr %9, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %koneplus_lock, i32 noundef 0) #8
  %call4 = call i32 @roccat_common2_receive(ptr noundef %add.ptr.i, i32 noundef 9, ptr noundef nonnull %info, i32 noundef 6) #8
  call void @mutex_unlock(ptr noundef %koneplus_lock) #8
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %0, align 1
  %conv = zext i8 %13 to i32
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.23, i32 noundef %conv)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %info) #8
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @koneplus_sysfs_write_control(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not.i = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp6.not.i = icmp eq i32 %count, 3
  %or.cond.i = and i1 %cmp.not.i, %cmp6.not.i
  br i1 %or.cond.i, label %if.end.i, label %entry.koneplus_sysfs_write.exit_crit_edge

entry.koneplus_sysfs_write.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %koneplus_sysfs_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %koneplus_lock.i = getelementptr inbounds %struct.koneplus_device, ptr %9, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %koneplus_lock.i, i32 noundef 0) #8
  %call7.i = tail call i32 @roccat_common2_send_with_status(ptr noundef %add.ptr.i.i, i32 noundef 4, ptr noundef %buf, i32 noundef 3) #8
  tail call void @mutex_unlock(ptr noundef %koneplus_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  %real_size.call7.i = select i1 %tobool.not.i, i32 3, i32 %call7.i
  br label %koneplus_sysfs_write.exit

koneplus_sysfs_write.exit:                        ; preds = %if.end.i, %entry.koneplus_sysfs_write.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.koneplus_sysfs_write.exit_crit_edge ], [ %real_size.call7.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @koneplus_sysfs_write_talk(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not.i = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %count)
  %cmp6.not.i = icmp eq i32 %count, 16
  %or.cond.i = and i1 %cmp.not.i, %cmp6.not.i
  br i1 %or.cond.i, label %if.end.i, label %entry.koneplus_sysfs_write.exit_crit_edge

entry.koneplus_sysfs_write.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %koneplus_sysfs_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %koneplus_lock.i = getelementptr inbounds %struct.koneplus_device, ptr %9, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %koneplus_lock.i, i32 noundef 0) #8
  %call7.i = tail call i32 @roccat_common2_send_with_status(ptr noundef %add.ptr.i.i, i32 noundef 16, ptr noundef %buf, i32 noundef 16) #8
  tail call void @mutex_unlock(ptr noundef %koneplus_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  %real_size.call7.i = select i1 %tobool.not.i, i32 16, i32 %call7.i
  br label %koneplus_sysfs_write.exit

koneplus_sysfs_write.exit:                        ; preds = %if.end.i, %entry.koneplus_sysfs_write.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.koneplus_sysfs_write.exit_crit_edge ], [ %real_size.call7.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @koneplus_sysfs_write_macro(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not.i = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2082, i32 %count)
  %cmp6.not.i = icmp eq i32 %count, 2082
  %or.cond.i = and i1 %cmp.not.i, %cmp6.not.i
  br i1 %or.cond.i, label %if.end.i, label %entry.koneplus_sysfs_write.exit_crit_edge

entry.koneplus_sysfs_write.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %koneplus_sysfs_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %koneplus_lock.i = getelementptr inbounds %struct.koneplus_device, ptr %9, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %koneplus_lock.i, i32 noundef 0) #8
  %call7.i = tail call i32 @roccat_common2_send_with_status(ptr noundef %add.ptr.i.i, i32 noundef 8, ptr noundef %buf, i32 noundef 2082) #8
  tail call void @mutex_unlock(ptr noundef %koneplus_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  %real_size.call7.i = select i1 %tobool.not.i, i32 2082, i32 %call7.i
  br label %koneplus_sysfs_write.exit

koneplus_sysfs_write.exit:                        ; preds = %if.end.i, %entry.koneplus_sysfs_write.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.koneplus_sysfs_write.exit_crit_edge ], [ %real_size.call7.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @koneplus_sysfs_read_tcu_image(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_const_cmp8(i64 1028, i64 %off)
  %cmp.not.i = icmp slt i64 %off, 1028
  br i1 %cmp.not.i, label %if.end.i, label %entry.koneplus_sysfs_read.exit_crit_edge

entry.koneplus_sysfs_read.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %koneplus_sysfs_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp7.not.i = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1028, i32 %count)
  %cmp9.not.i = icmp eq i32 %count, 1028
  %or.cond.i = and i1 %cmp7.not.i, %cmp9.not.i
  br i1 %or.cond.i, label %if.end12.i, label %if.end.i.koneplus_sysfs_read.exit_crit_edge

if.end.i.koneplus_sysfs_read.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %koneplus_sysfs_read.exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %koneplus_lock.i = getelementptr inbounds %struct.koneplus_device, ptr %7, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %koneplus_lock.i, i32 noundef 0) #8
  %call13.i = tail call i32 @roccat_common2_receive(ptr noundef %add.ptr.i.i, i32 noundef 12, ptr noundef %buf, i32 noundef 1028) #8
  tail call void @mutex_unlock(ptr noundef %koneplus_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i = icmp eq i32 %call13.i, 0
  %real_size.call13.i = select i1 %tobool.not.i, i32 1028, i32 %call13.i
  br label %koneplus_sysfs_read.exit

koneplus_sysfs_read.exit:                         ; preds = %if.end12.i, %if.end.i.koneplus_sysfs_read.exit_crit_edge, %entry.koneplus_sysfs_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.koneplus_sysfs_read.exit_crit_edge ], [ -22, %if.end.i.koneplus_sysfs_read.exit_crit_edge ], [ %real_size.call13.i, %if.end12.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @koneplus_sysfs_read_info(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.koneplus_sysfs_read.exit_crit_edge

entry.koneplus_sysfs_read.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %koneplus_sysfs_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp7.not.i = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %count)
  %cmp9.not.i = icmp eq i32 %count, 6
  %or.cond.i = and i1 %cmp7.not.i, %cmp9.not.i
  br i1 %or.cond.i, label %if.end12.i, label %if.end.i.koneplus_sysfs_read.exit_crit_edge

if.end.i.koneplus_sysfs_read.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %koneplus_sysfs_read.exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %koneplus_lock.i = getelementptr inbounds %struct.koneplus_device, ptr %7, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %koneplus_lock.i, i32 noundef 0) #8
  %call13.i = tail call i32 @roccat_common2_receive(ptr noundef %add.ptr.i.i, i32 noundef 9, ptr noundef %buf, i32 noundef 6) #8
  tail call void @mutex_unlock(ptr noundef %koneplus_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i = icmp eq i32 %call13.i, 0
  %real_size.call13.i = select i1 %tobool.not.i, i32 6, i32 %call13.i
  br label %koneplus_sysfs_read.exit

koneplus_sysfs_read.exit:                         ; preds = %if.end12.i, %if.end.i.koneplus_sysfs_read.exit_crit_edge, %entry.koneplus_sysfs_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.koneplus_sysfs_read.exit_crit_edge ], [ -22, %if.end.i.koneplus_sysfs_read.exit_crit_edge ], [ %real_size.call13.i, %if.end12.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @koneplus_sysfs_write_info(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not.i = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %count)
  %cmp6.not.i = icmp eq i32 %count, 6
  %or.cond.i = and i1 %cmp.not.i, %cmp6.not.i
  br i1 %or.cond.i, label %if.end.i, label %entry.koneplus_sysfs_write.exit_crit_edge

entry.koneplus_sysfs_write.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %koneplus_sysfs_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %koneplus_lock.i = getelementptr inbounds %struct.koneplus_device, ptr %9, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %koneplus_lock.i, i32 noundef 0) #8
  %call7.i = tail call i32 @roccat_common2_send_with_status(ptr noundef %add.ptr.i.i, i32 noundef 9, ptr noundef %buf, i32 noundef 6) #8
  tail call void @mutex_unlock(ptr noundef %koneplus_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  %real_size.call7.i = select i1 %tobool.not.i, i32 6, i32 %call7.i
  br label %koneplus_sysfs_write.exit

koneplus_sysfs_write.exit:                        ; preds = %if.end.i, %entry.koneplus_sysfs_write.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.koneplus_sysfs_write.exit_crit_edge ], [ %real_size.call7.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @koneplus_sysfs_read_sensor(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.koneplus_sysfs_read.exit_crit_edge

entry.koneplus_sysfs_read.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %koneplus_sysfs_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp7.not.i = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %count)
  %cmp9.not.i = icmp eq i32 %count, 6
  %or.cond.i = and i1 %cmp7.not.i, %cmp9.not.i
  br i1 %or.cond.i, label %if.end12.i, label %if.end.i.koneplus_sysfs_read.exit_crit_edge

if.end.i.koneplus_sysfs_read.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %koneplus_sysfs_read.exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %koneplus_lock.i = getelementptr inbounds %struct.koneplus_device, ptr %7, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %koneplus_lock.i, i32 noundef 0) #8
  %call13.i = tail call i32 @roccat_common2_receive(ptr noundef %add.ptr.i.i, i32 noundef 15, ptr noundef %buf, i32 noundef 6) #8
  tail call void @mutex_unlock(ptr noundef %koneplus_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i = icmp eq i32 %call13.i, 0
  %real_size.call13.i = select i1 %tobool.not.i, i32 6, i32 %call13.i
  br label %koneplus_sysfs_read.exit

koneplus_sysfs_read.exit:                         ; preds = %if.end12.i, %if.end.i.koneplus_sysfs_read.exit_crit_edge, %entry.koneplus_sysfs_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.koneplus_sysfs_read.exit_crit_edge ], [ -22, %if.end.i.koneplus_sysfs_read.exit_crit_edge ], [ %real_size.call13.i, %if.end12.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @koneplus_sysfs_write_sensor(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not.i = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %count)
  %cmp6.not.i = icmp eq i32 %count, 6
  %or.cond.i = and i1 %cmp.not.i, %cmp6.not.i
  br i1 %or.cond.i, label %if.end.i, label %entry.koneplus_sysfs_write.exit_crit_edge

entry.koneplus_sysfs_write.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %koneplus_sysfs_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %koneplus_lock.i = getelementptr inbounds %struct.koneplus_device, ptr %9, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %koneplus_lock.i, i32 noundef 0) #8
  %call7.i = tail call i32 @roccat_common2_send_with_status(ptr noundef %add.ptr.i.i, i32 noundef 15, ptr noundef %buf, i32 noundef 6) #8
  tail call void @mutex_unlock(ptr noundef %koneplus_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  %real_size.call7.i = select i1 %tobool.not.i, i32 6, i32 %call7.i
  br label %koneplus_sysfs_write.exit

koneplus_sysfs_write.exit:                        ; preds = %if.end.i, %entry.koneplus_sysfs_write.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.koneplus_sysfs_write.exit_crit_edge ], [ %real_size.call7.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @koneplus_sysfs_read_tcu(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %off)
  %cmp.not.i = icmp slt i64 %off, 4
  br i1 %cmp.not.i, label %if.end.i, label %entry.koneplus_sysfs_read.exit_crit_edge

entry.koneplus_sysfs_read.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %koneplus_sysfs_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp7.not.i = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count)
  %cmp9.not.i = icmp eq i32 %count, 4
  %or.cond.i = and i1 %cmp7.not.i, %cmp9.not.i
  br i1 %or.cond.i, label %if.end12.i, label %if.end.i.koneplus_sysfs_read.exit_crit_edge

if.end.i.koneplus_sysfs_read.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %koneplus_sysfs_read.exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %koneplus_lock.i = getelementptr inbounds %struct.koneplus_device, ptr %7, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %koneplus_lock.i, i32 noundef 0) #8
  %call13.i = tail call i32 @roccat_common2_receive(ptr noundef %add.ptr.i.i, i32 noundef 12, ptr noundef %buf, i32 noundef 4) #8
  tail call void @mutex_unlock(ptr noundef %koneplus_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i = icmp eq i32 %call13.i, 0
  %real_size.call13.i = select i1 %tobool.not.i, i32 4, i32 %call13.i
  br label %koneplus_sysfs_read.exit

koneplus_sysfs_read.exit:                         ; preds = %if.end12.i, %if.end.i.koneplus_sysfs_read.exit_crit_edge, %entry.koneplus_sysfs_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.koneplus_sysfs_read.exit_crit_edge ], [ -22, %if.end.i.koneplus_sysfs_read.exit_crit_edge ], [ %real_size.call13.i, %if.end12.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @koneplus_sysfs_write_tcu(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not.i = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count)
  %cmp6.not.i = icmp eq i32 %count, 4
  %or.cond.i = and i1 %cmp.not.i, %cmp6.not.i
  br i1 %or.cond.i, label %if.end.i, label %entry.koneplus_sysfs_write.exit_crit_edge

entry.koneplus_sysfs_write.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %koneplus_sysfs_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %koneplus_lock.i = getelementptr inbounds %struct.koneplus_device, ptr %9, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %koneplus_lock.i, i32 noundef 0) #8
  %call7.i = tail call i32 @roccat_common2_send_with_status(ptr noundef %add.ptr.i.i, i32 noundef 12, ptr noundef %buf, i32 noundef 4) #8
  tail call void @mutex_unlock(ptr noundef %koneplus_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  %real_size.call7.i = select i1 %tobool.not.i, i32 4, i32 %call7.i
  br label %koneplus_sysfs_write.exit

koneplus_sysfs_write.exit:                        ; preds = %if.end.i, %entry.koneplus_sysfs_write.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.koneplus_sysfs_write.exit_crit_edge ], [ %real_size.call7.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @koneplus_sysfs_read_profile_settings(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_const_cmp8(i64 43, i64 %off)
  %cmp.not.i = icmp slt i64 %off, 43
  br i1 %cmp.not.i, label %if.end.i, label %entry.koneplus_sysfs_read.exit_crit_edge

entry.koneplus_sysfs_read.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %koneplus_sysfs_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp7.not.i = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %count)
  %cmp9.not.i = icmp eq i32 %count, 43
  %or.cond.i = and i1 %cmp7.not.i, %cmp9.not.i
  br i1 %or.cond.i, label %if.end12.i, label %if.end.i.koneplus_sysfs_read.exit_crit_edge

if.end.i.koneplus_sysfs_read.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %koneplus_sysfs_read.exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %koneplus_lock.i = getelementptr inbounds %struct.koneplus_device, ptr %7, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %koneplus_lock.i, i32 noundef 0) #8
  %call13.i = tail call i32 @roccat_common2_receive(ptr noundef %add.ptr.i.i, i32 noundef 6, ptr noundef %buf, i32 noundef 43) #8
  tail call void @mutex_unlock(ptr noundef %koneplus_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i = icmp eq i32 %call13.i, 0
  %real_size.call13.i = select i1 %tobool.not.i, i32 43, i32 %call13.i
  br label %koneplus_sysfs_read.exit

koneplus_sysfs_read.exit:                         ; preds = %if.end12.i, %if.end.i.koneplus_sysfs_read.exit_crit_edge, %entry.koneplus_sysfs_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.koneplus_sysfs_read.exit_crit_edge ], [ -22, %if.end.i.koneplus_sysfs_read.exit_crit_edge ], [ %real_size.call13.i, %if.end12.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @koneplus_sysfs_write_profile_settings(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not.i = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %count)
  %cmp6.not.i = icmp eq i32 %count, 43
  %or.cond.i = and i1 %cmp.not.i, %cmp6.not.i
  br i1 %or.cond.i, label %if.end.i, label %entry.koneplus_sysfs_write.exit_crit_edge

entry.koneplus_sysfs_write.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %koneplus_sysfs_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %koneplus_lock.i = getelementptr inbounds %struct.koneplus_device, ptr %9, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %koneplus_lock.i, i32 noundef 0) #8
  %call7.i = tail call i32 @roccat_common2_send_with_status(ptr noundef %add.ptr.i.i, i32 noundef 6, ptr noundef %buf, i32 noundef 43) #8
  tail call void @mutex_unlock(ptr noundef %koneplus_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  %real_size.call7.i = select i1 %tobool.not.i, i32 43, i32 %call7.i
  br label %koneplus_sysfs_write.exit

koneplus_sysfs_write.exit:                        ; preds = %if.end.i, %entry.koneplus_sysfs_write.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.koneplus_sysfs_write.exit_crit_edge ], [ %real_size.call7.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @koneplus_sysfs_read_profile_buttons(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_const_cmp8(i64 77, i64 %off)
  %cmp.not.i = icmp slt i64 %off, 77
  br i1 %cmp.not.i, label %if.end.i, label %entry.koneplus_sysfs_read.exit_crit_edge

entry.koneplus_sysfs_read.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %koneplus_sysfs_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp7.not.i = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 77, i32 %count)
  %cmp9.not.i = icmp eq i32 %count, 77
  %or.cond.i = and i1 %cmp7.not.i, %cmp9.not.i
  br i1 %or.cond.i, label %if.end12.i, label %if.end.i.koneplus_sysfs_read.exit_crit_edge

if.end.i.koneplus_sysfs_read.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %koneplus_sysfs_read.exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %koneplus_lock.i = getelementptr inbounds %struct.koneplus_device, ptr %7, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %koneplus_lock.i, i32 noundef 0) #8
  %call13.i = tail call i32 @roccat_common2_receive(ptr noundef %add.ptr.i.i, i32 noundef 7, ptr noundef %buf, i32 noundef 77) #8
  tail call void @mutex_unlock(ptr noundef %koneplus_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i = icmp eq i32 %call13.i, 0
  %real_size.call13.i = select i1 %tobool.not.i, i32 77, i32 %call13.i
  br label %koneplus_sysfs_read.exit

koneplus_sysfs_read.exit:                         ; preds = %if.end12.i, %if.end.i.koneplus_sysfs_read.exit_crit_edge, %entry.koneplus_sysfs_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.koneplus_sysfs_read.exit_crit_edge ], [ -22, %if.end.i.koneplus_sysfs_read.exit_crit_edge ], [ %real_size.call13.i, %if.end12.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @koneplus_sysfs_write_profile_buttons(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not.i = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 77, i32 %count)
  %cmp6.not.i = icmp eq i32 %count, 77
  %or.cond.i = and i1 %cmp.not.i, %cmp6.not.i
  br i1 %or.cond.i, label %if.end.i, label %entry.koneplus_sysfs_write.exit_crit_edge

entry.koneplus_sysfs_write.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %koneplus_sysfs_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %koneplus_lock.i = getelementptr inbounds %struct.koneplus_device, ptr %9, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %koneplus_lock.i, i32 noundef 0) #8
  %call7.i = tail call i32 @roccat_common2_send_with_status(ptr noundef %add.ptr.i.i, i32 noundef 7, ptr noundef %buf, i32 noundef 77) #8
  tail call void @mutex_unlock(ptr noundef %koneplus_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  %real_size.call7.i = select i1 %tobool.not.i, i32 77, i32 %call7.i
  br label %koneplus_sysfs_write.exit

koneplus_sysfs_write.exit:                        ; preds = %if.end.i, %entry.koneplus_sysfs_write.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.koneplus_sysfs_write.exit_crit_edge ], [ %real_size.call7.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @koneplus_sysfs_read_profilex_settings(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %control.i = alloca %struct.roccat_common2_control, align 1
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %control.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp2.i = icmp ugt i32 %9, 4
  br i1 %cmp2.i, label %koneplus_send_control.exit.thread, label %koneplus_send_control.exit

koneplus_send_control.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %control.i) #8
  br label %cleanup

koneplus_send_control.exit:                       ; preds = %entry
  %10 = getelementptr inbounds %struct.roccat_common2_control, ptr %control.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.roccat_common2_control, ptr %control.i, i32 0, i32 1
  %add.ptr.i = getelementptr i8, ptr %5, i32 -128
  %12 = ptrtoint ptr %control.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 4, ptr %control.i, align 1
  %conv.i = trunc i32 %9 to i8
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %11, align 1
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -128, ptr %10, align 1
  %call.i = call i32 @roccat_common2_send_with_status(ptr noundef %add.ptr.i, i32 noundef 4, ptr noundef nonnull %control.i, i32 noundef 3) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %control.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %koneplus_send_control.exit.cleanup_crit_edge

koneplus_send_control.exit.cleanup_crit_edge:     ; preds = %koneplus_send_control.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %koneplus_send_control.exit
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 8
  %parent1.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent1.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %20, i32 0, i32 18, i32 8
  %21 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i.i.i, align 4
  %parent.i.i = getelementptr i8, ptr %18, i32 136
  %23 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 -128
  call void @__sanitizer_cov_trace_const_cmp8(i64 43, i64 %off)
  %cmp.not.i = icmp slt i64 %off, 43
  br i1 %cmp.not.i, label %if.end.i11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i11:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp7.not.i = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %count)
  %cmp9.not.i = icmp eq i32 %count, 43
  %or.cond.i = and i1 %cmp7.not.i, %cmp9.not.i
  br i1 %or.cond.i, label %if.end12.i, label %if.end.i11.cleanup_crit_edge

if.end.i11.cleanup_crit_edge:                     ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12.i:                                       ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #10
  %koneplus_lock.i = getelementptr inbounds %struct.koneplus_device, ptr %22, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %koneplus_lock.i, i32 noundef 0) #8
  %call13.i = call i32 @roccat_common2_receive(ptr noundef %add.ptr.i.i, i32 noundef 6, ptr noundef %buf, i32 noundef 43) #8
  call void @mutex_unlock(ptr noundef %koneplus_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i = icmp eq i32 %call13.i, 0
  %real_size.call13.i = select i1 %tobool.not.i, i32 43, i32 %call13.i
  br label %cleanup

cleanup:                                          ; preds = %if.end12.i, %if.end.i11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %koneplus_send_control.exit.cleanup_crit_edge, %koneplus_send_control.exit.thread
  %retval.0 = phi i32 [ %call.i, %koneplus_send_control.exit.cleanup_crit_edge ], [ -22, %koneplus_send_control.exit.thread ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end.i11.cleanup_crit_edge ], [ %real_size.call13.i, %if.end12.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @koneplus_sysfs_read_profilex_buttons(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %control.i = alloca %struct.roccat_common2_control, align 1
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %control.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp2.i = icmp ugt i32 %9, 4
  br i1 %cmp2.i, label %koneplus_send_control.exit.thread, label %koneplus_send_control.exit

koneplus_send_control.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %control.i) #8
  br label %cleanup

koneplus_send_control.exit:                       ; preds = %entry
  %10 = getelementptr inbounds %struct.roccat_common2_control, ptr %control.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.roccat_common2_control, ptr %control.i, i32 0, i32 1
  %add.ptr.i = getelementptr i8, ptr %5, i32 -128
  %12 = ptrtoint ptr %control.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 4, ptr %control.i, align 1
  %conv.i = trunc i32 %9 to i8
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %11, align 1
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -112, ptr %10, align 1
  %call.i = call i32 @roccat_common2_send_with_status(ptr noundef %add.ptr.i, i32 noundef 4, ptr noundef nonnull %control.i, i32 noundef 3) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %control.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %koneplus_send_control.exit.cleanup_crit_edge

koneplus_send_control.exit.cleanup_crit_edge:     ; preds = %koneplus_send_control.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %koneplus_send_control.exit
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 8
  %parent1.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent1.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %20, i32 0, i32 18, i32 8
  %21 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i.i.i, align 4
  %parent.i.i = getelementptr i8, ptr %18, i32 136
  %23 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 -128
  call void @__sanitizer_cov_trace_const_cmp8(i64 77, i64 %off)
  %cmp.not.i = icmp slt i64 %off, 77
  br i1 %cmp.not.i, label %if.end.i11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i11:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp7.not.i = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 77, i32 %count)
  %cmp9.not.i = icmp eq i32 %count, 77
  %or.cond.i = and i1 %cmp7.not.i, %cmp9.not.i
  br i1 %or.cond.i, label %if.end12.i, label %if.end.i11.cleanup_crit_edge

if.end.i11.cleanup_crit_edge:                     ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12.i:                                       ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #10
  %koneplus_lock.i = getelementptr inbounds %struct.koneplus_device, ptr %22, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %koneplus_lock.i, i32 noundef 0) #8
  %call13.i = call i32 @roccat_common2_receive(ptr noundef %add.ptr.i.i, i32 noundef 7, ptr noundef %buf, i32 noundef 77) #8
  call void @mutex_unlock(ptr noundef %koneplus_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i = icmp eq i32 %call13.i, 0
  %real_size.call13.i = select i1 %tobool.not.i, i32 77, i32 %call13.i
  br label %cleanup

cleanup:                                          ; preds = %if.end12.i, %if.end.i11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %koneplus_send_control.exit.cleanup_crit_edge, %koneplus_send_control.exit.thread
  %retval.0 = phi i32 [ %call.i, %koneplus_send_control.exit.cleanup_crit_edge ], [ -22, %koneplus_send_control.exit.thread ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end.i11.cleanup_crit_edge ], [ %real_size.call13.i, %if.end12.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
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
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !55, !57, !59, !61, !63, !64, !66, !68, !69, !71, !72, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !108, !109, !111, !112, !114, !115, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @__initcall__kmod_hid_roccat_koneplus__232_569_koneplus_init6, !1, !"__initcall__kmod_hid_roccat_koneplus__232_569_koneplus_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 569, i32 1}
!2 = !{ptr @__exitcall_koneplus_exit, !3, !"__exitcall_koneplus_exit", i1 false, i1 false}
!3 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 570, i32 1}
!4 = !{ptr @__UNIQUE_ID_author233, !5, !"__UNIQUE_ID_author233", i1 false, i1 false}
!5 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 572, i32 1}
!6 = !{ptr @__UNIQUE_ID_description234, !7, !"__UNIQUE_ID_description234", i1 false, i1 false}
!7 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 573, i32 1}
!8 = !{ptr @__UNIQUE_ID_file235, !9, !"__UNIQUE_ID_file235", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 574, i32 1}
!10 = !{ptr @__UNIQUE_ID_license236, !9, !"__UNIQUE_ID_license236", i1 false, i1 false}
!11 = !{ptr @koneplus_class, !12, !"koneplus_class", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 29, i32 22}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 540, i32 11}
!15 = !{ptr @koneplus_driver, !16, !"koneplus_driver", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 539, i32 26}
!17 = !{ptr @koneplus_devices, !18, !"koneplus_devices", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 531, i32 35}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 439, i32 3}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @koneplus_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @koneplus_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 445, i32 3}
!29 = !{ptr @koneplus_probe._entry.6, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @koneplus_probe._entry_ptr.8, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 451, i32 3}
!33 = !{ptr @koneplus_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @koneplus_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 386, i32 4}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @koneplus_init_specials._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @koneplus_init_specials._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 393, i32 4}
!42 = !{ptr @koneplus_init_specials._entry.14, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @koneplus_init_specials._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 400, i32 4}
!46 = !{ptr @koneplus_init_specials._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @koneplus_init_specials._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @koneplus_init_koneplus_device_struct.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 364, i32 2}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @koneplus_init.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 552, i32 19}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 557, i32 11}
!55 = !{ptr @koneplus_groups, !56, !"koneplus_groups", i1 false, i1 false}
!56 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 354, i32 38}
!57 = !{ptr @koneplus_group, !58, !"koneplus_group", i1 false, i1 false}
!58 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 349, i32 37}
!59 = !{ptr @koneplus_attrs, !60, !"koneplus_attrs", i1 false, i1 false}
!60 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 319, i32 26}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 291, i32 8}
!63 = !{ptr @dev_attr_actual_profile, !62, !"dev_attr_actual_profile", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 247, i32 34}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 294, i32 8}
!68 = !{ptr @dev_attr_startup_profile, !67, !"dev_attr_startup_profile", i1 false, i1 false}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 316, i32 8}
!71 = !{ptr @dev_attr_firmware_version, !70, !"dev_attr_firmware_version", i1 false, i1 false}
!72 = !{ptr @koneplus_bin_attributes, !73, !"koneplus_bin_attributes", i1 false, i1 false}
!73 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 326, i32 30}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 177, i32 1}
!76 = !{ptr @bin_attr_control, !75, !"bin_attr_control", i1 false, i1 false}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 178, i32 1}
!79 = !{ptr @bin_attr_talk, !78, !"bin_attr_talk", i1 false, i1 false}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 179, i32 1}
!82 = !{ptr @bin_attr_macro, !81, !"bin_attr_macro", i1 false, i1 false}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 180, i32 1}
!85 = !{ptr @bin_attr_tcu_image, !84, !"bin_attr_tcu_image", i1 false, i1 false}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 181, i32 1}
!88 = !{ptr @bin_attr_info, !87, !"bin_attr_info", i1 false, i1 false}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 182, i32 1}
!91 = !{ptr @bin_attr_sensor, !90, !"bin_attr_sensor", i1 false, i1 false}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 183, i32 1}
!94 = !{ptr @bin_attr_tcu, !93, !"bin_attr_tcu", i1 false, i1 false}
!95 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 184, i32 1}
!97 = !{ptr @bin_attr_profile_settings, !96, !"bin_attr_profile_settings", i1 false, i1 false}
!98 = !{ptr @.str.34, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 185, i32 1}
!100 = !{ptr @bin_attr_profile_buttons, !99, !"bin_attr_profile_buttons", i1 false, i1 false}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 236, i32 1}
!103 = !{ptr @bin_attr_profile1_settings, !102, !"bin_attr_profile1_settings", i1 false, i1 false}
!104 = !{ptr @profile_numbers, !105, !"profile_numbers", i1 false, i1 false}
!105 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 27, i32 13}
!106 = !{ptr @.str.36, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 237, i32 1}
!108 = !{ptr @bin_attr_profile2_settings, !107, !"bin_attr_profile2_settings", i1 false, i1 false}
!109 = !{ptr @.str.37, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 238, i32 1}
!111 = !{ptr @bin_attr_profile3_settings, !110, !"bin_attr_profile3_settings", i1 false, i1 false}
!112 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 239, i32 1}
!114 = !{ptr @bin_attr_profile4_settings, !113, !"bin_attr_profile4_settings", i1 false, i1 false}
!115 = !{ptr @.str.39, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hid/hid-roccat-koneplus.c", i32 240, i32 1}
!117 = !{ptr @bin_attr_profile5_settings, !116, !"bin_attr_profile5_settings", i1 false, i1 false}
!118 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @bin_attr_profile1_buttons, !102, !"bin_attr_profile1_buttons", i1 false, i1 false}
!120 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @bin_attr_profile2_buttons, !107, !"bin_attr_profile2_buttons", i1 false, i1 false}
!122 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @bin_attr_profile3_buttons, !110, !"bin_attr_profile3_buttons", i1 false, i1 false}
!124 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @bin_attr_profile4_buttons, !113, !"bin_attr_profile4_buttons", i1 false, i1 false}
!126 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @bin_attr_profile5_buttons, !116, !"bin_attr_profile5_buttons", i1 false, i1 false}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{!"auto-init"}
