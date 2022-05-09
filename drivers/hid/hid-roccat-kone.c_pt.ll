; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-roccat-kone.c_pt.bc'
source_filename = "../drivers/hid/hid-roccat-kone.c"
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
%struct.kone_device = type <{ i32, i32, %struct.kone_mouse_event, %struct.mutex, [5 x %struct.kone_profile], %struct.kone_settings, i8, i32, i32, i32 }>
%struct.kone_mouse_event = type { i8, i8, i16, i16, i8, %union.anon.69 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { i8, i8, i8, i8, i8 }
%struct.kone_profile = type <{ i16, i16, i8, i16, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, [5 x %struct.kone_light_info], [8 x %struct.kone_button_info], i16 }>
%struct.kone_light_info = type { i8, i8, i8, i8, i8 }
%struct.kone_button_info = type { i8, i8, i8, [16 x i8], [16 x i8], i8, [20 x %struct.kone_keystroke] }
%struct.kone_keystroke = type { i8, i8, i16 }
%struct.kone_settings = type { i16, i8, i8, i8, [23 x i8], [4 x i8], [2 x i8], i16 }
%struct.kone_roccat_report = type { i8, i8, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@kone_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str, ptr @kone_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @kone_probe, ptr @kone_remove, ptr null, ptr @kone_raw_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@kone_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_hid_roccat_kone__232_910_kone_init6 = internal global ptr @kone_init, section ".initcall6.init", align 4
@__exitcall_kone_exit = internal global ptr @kone_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author233 = internal constant [37 x i8] c"hid_roccat_kone.author=Stefan Achatz\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [51 x i8] c"hid_roccat_kone.description=USB Roccat Kone driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [49 x i8] c"hid_roccat_kone.file=drivers/hid/hid-roccat-kone\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [31 x i8] c"hid_roccat_kone.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"kone\00", [27 x i8] zeroinitializer }, align 32
@kone_devices = internal constant { [2 x %struct.hid_device_id], [32 x i8] } { [2 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 7805, i32 11501, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@kone_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 757, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kone_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/hid/hid-roccat-kone.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kone_probe._entry_ptr = internal global ptr @kone_probe._entry, section ".printk_index", align 4
@kone_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 763, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@kone_probe._entry_ptr.8 = internal global ptr @kone_probe._entry.6, section ".printk_index", align 4
@kone_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 769, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"couldn't install mouse\0A\00", [40 x i8] zeroinitializer }, align 32
@kone_probe._entry_ptr.11 = internal global ptr @kone_probe._entry.9, section ".printk_index", align 4
@usb_hid_driver = external dso_local global %struct.hid_ll_driver, align 4
@kone_init_specials._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 711, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"couldn't init struct kone_device\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kone_init_specials\00", [45 x i8] zeroinitializer }, align 32
@kone_init_specials._entry_ptr = internal global ptr @kone_init_specials._entry, section ".printk_index", align 4
@kone_init_specials._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.3, i32 718, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"couldn't init char dev\0A\00", [40 x i8] zeroinitializer }, align 32
@kone_init_specials._entry_ptr.16 = internal global ptr @kone_init_specials._entry.14, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@kone_init_kone_device_struct.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&kone->kone_lock\00", [47 x i8] zeroinitializer }, align 32
@kone_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@kone_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @kone_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hid_roccat_kone\00", [16 x i8] zeroinitializer }, align 32
@kone_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @kone_attrs, ptr @kone_bin_attributes }, [44 x i8] zeroinitializer }, align 32
@kone_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @dev_attr_actual_dpi, ptr @dev_attr_actual_profile, ptr @dev_attr_weight, ptr @dev_attr_firmware_version, ptr @dev_attr_tcu, ptr @dev_attr_startup_profile, ptr null], [36 x i8] zeroinitializer }, align 32
@kone_bin_attributes = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @bin_attr_settings, ptr @bin_attr_profile1, ptr @bin_attr_profile2, ptr @bin_attr_profile3, ptr @bin_attr_profile4, ptr @bin_attr_profile5, ptr null], [36 x i8] zeroinitializer }, align 32
@dev_attr_actual_dpi = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @kone_sysfs_show_actual_dpi, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_actual_profile = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @kone_sysfs_show_actual_profile, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_weight = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @kone_sysfs_show_weight, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_firmware_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @kone_sysfs_show_firmware_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_tcu = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @kone_sysfs_show_tcu, ptr @kone_sysfs_set_tcu }, [36 x i8] zeroinitializer }, align 32
@dev_attr_startup_profile = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @kone_sysfs_show_startup_profile, ptr @kone_sysfs_set_startup_profile }, [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"actual_dpi\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"actual_profile\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"weight\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"firmware_version\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tcu\00", [28 x i8] zeroinitializer }, align 32
@kone_sysfs_set_tcu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 531, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"couldn't set tcu state\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kone_sysfs_set_tcu\00", [45 x i8] zeroinitializer }, align 32
@kone_sysfs_set_tcu._entry_ptr = internal global ptr @kone_sysfs_set_tcu._entry, section ".printk_index", align 4
@kone_sysfs_set_tcu._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 547, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"couldn't read settings\0A\00", [40 x i8] zeroinitializer }, align 32
@kone_sysfs_set_tcu._entry_ptr.29 = internal global ptr @kone_sysfs_set_tcu._entry.27, section ".printk_index", align 4
@kone_check_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 139, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"got retval %d when checking write\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kone_check_write\00", [47 x i8] zeroinitializer }, align 32
@kone_check_write._entry_ptr = internal global ptr @kone_check_write._entry, section ".printk_index", align 4
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"startup_profile\00", [16 x i8] zeroinitializer }, align 32
@bin_attr_settings = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.33, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 36, ptr null, ptr null, ptr @kone_sysfs_read_settings, ptr @kone_sysfs_write_settings, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile1 = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.34, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 975, ptr @profile_numbers, ptr null, ptr @kone_sysfs_read_profilex, ptr @kone_sysfs_write_profilex, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile2 = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.35, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 975, ptr getelementptr (i8, ptr @profile_numbers, i64 4), ptr null, ptr @kone_sysfs_read_profilex, ptr @kone_sysfs_write_profilex, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile3 = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.36, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 975, ptr getelementptr (i8, ptr @profile_numbers, i64 8), ptr null, ptr @kone_sysfs_read_profilex, ptr @kone_sysfs_write_profilex, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile4 = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.37, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 975, ptr getelementptr (i8, ptr @profile_numbers, i64 12), ptr null, ptr @kone_sysfs_read_profilex, ptr @kone_sysfs_write_profilex, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile5 = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.38, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 975, ptr getelementptr (i8, ptr @profile_numbers, i64 16), ptr null, ptr @kone_sysfs_read_profilex, ptr @kone_sysfs_write_profilex, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"settings\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"profile1\00", [23 x i8] zeroinitializer }, align 32
@profile_numbers = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4], [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"profile2\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"profile3\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"profile4\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"profile5\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 160, i64 176, i64 240, i64 241]
@__sancov_gen_cov_switch_values.39 = internal global [8 x i64] [i64 6, i64 8, i64 160, i64 176, i64 224, i64 225, i64 240, i64 241]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 975]
@___asan_gen_.42 = private unnamed_addr constant [12 x i8] c"kone_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 880, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant [11 x i8] c"kone_class\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 93, i32 22 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 881, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [13 x i8] c"kone_devices\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 873, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 757, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 763, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 769, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 711, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 718, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 666, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 893, i32 15 }
@___asan_gen_.108 = private unnamed_addr constant [12 x i8] c"kone_groups\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 655, i32 38 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 898, i32 11 }
@___asan_gen_.114 = private unnamed_addr constant [11 x i8] c"kone_group\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 650, i32 37 }
@___asan_gen_.117 = private unnamed_addr constant [11 x i8] c"kone_attrs\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 602, i32 26 }
@___asan_gen_.120 = private unnamed_addr constant [20 x i8] c"kone_bin_attributes\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 640, i32 30 }
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c"dev_attr_actual_dpi\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [24 x i8] c"dev_attr_actual_profile\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [16 x i8] c"dev_attr_weight\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [26 x i8] c"dev_attr_firmware_version\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [13 x i8] c"dev_attr_tcu\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [25 x i8] c"dev_attr_startup_profile\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 417, i32 8 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 415, i32 34 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 408, i32 8 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 440, i32 8 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 449, i32 8 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 552, i32 8 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 531, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 547, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 139, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 599, i32 8 }
@___asan_gen_.186 = private unnamed_addr constant [18 x i8] c"bin_attr_settings\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [18 x i8] c"bin_attr_profile1\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [18 x i8] c"bin_attr_profile2\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [18 x i8] c"bin_attr_profile3\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [18 x i8] c"bin_attr_profile4\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [18 x i8] c"bin_attr_profile5\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 333, i32 8 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 395, i32 1 }
@___asan_gen_.210 = private unnamed_addr constant [16 x i8] c"profile_numbers\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 35, i32 13 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 396, i32 1 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 397, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 398, i32 1 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.223 = private constant [33 x i8] c"../drivers/hid/hid-roccat-kone.c\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 399, i32 1 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_kone_exit, ptr @__initcall__kmod_hid_roccat_kone__232_910_kone_init6, ptr @kone_check_write._entry, ptr @kone_check_write._entry_ptr, ptr @kone_exit, ptr @kone_init_specials._entry, ptr @kone_init_specials._entry.14, ptr @kone_init_specials._entry_ptr, ptr @kone_init_specials._entry_ptr.16, ptr @kone_probe._entry, ptr @kone_probe._entry.6, ptr @kone_probe._entry.9, ptr @kone_probe._entry_ptr, ptr @kone_probe._entry_ptr.11, ptr @kone_probe._entry_ptr.8, ptr @kone_sysfs_set_tcu._entry, ptr @kone_sysfs_set_tcu._entry.27, ptr @kone_sysfs_set_tcu._entry_ptr, ptr @kone_sysfs_set_tcu._entry_ptr.29, ptr @kone_driver, ptr @kone_class, ptr @.str, ptr @kone_devices, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @kone_init_kone_device_struct.__key, ptr @.str.17, ptr @kone_init.__key, ptr @kone_groups, ptr @.str.18, ptr @kone_group, ptr @kone_attrs, ptr @kone_bin_attributes, ptr @dev_attr_actual_dpi, ptr @dev_attr_actual_profile, ptr @dev_attr_weight, ptr @dev_attr_firmware_version, ptr @dev_attr_tcu, ptr @dev_attr_startup_profile, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @bin_attr_settings, ptr @bin_attr_profile1, ptr @bin_attr_profile2, ptr @bin_attr_profile3, ptr @bin_attr_profile4, ptr @bin_attr_profile5, ptr @.str.33, ptr @.str.34, ptr @profile_numbers, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kone_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kone_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kone_devices to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kone_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kone_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kone_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kone_init_specials._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kone_init_specials._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kone_init_kone_device_struct.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kone_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kone_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kone_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kone_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kone_bin_attributes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_actual_dpi to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_actual_profile to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_weight to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_firmware_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tcu to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_startup_profile to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kone_sysfs_set_tcu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kone_sysfs_set_tcu._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kone_check_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_settings to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @profile_numbers to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kone_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @hid_unregister_driver(ptr noundef nonnull @kone_driver) #11
  %0 = load ptr, ptr @kone_class, align 4
  tail call void @class_destroy(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kone_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @kone_init.__key) #11
  store ptr %call, ptr @kone_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_groups = getelementptr inbounds %struct.class, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %dev_groups to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @kone_groups, ptr %dev_groups, align 4
  %call4 = tail call i32 @__hid_register_driver(ptr noundef nonnull @kone_driver, ptr noundef null, ptr noundef nonnull @.str.18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %2 = load ptr, ptr @kone_class, align 4
  tail call void @class_destroy(ptr noundef %2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call4, %if.then5 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kone_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ll_driver.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 20
  %0 = ptrtoint ptr %ll_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ll_driver.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, @usb_hid_driver
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 45) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  br i1 %tobool6.not, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.7) #14
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
  br i1 %cmp.i, label %if.then.i, label %if.else19.i

if.then.i:                                        ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 5036) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.i.do.end18_crit_edge, label %if.end.i

if.then.i.do.end18_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18

if.end.i:                                         ; preds = %if.then.i
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %11 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i.i, ptr %driver_data.i.i.i, align 4
  %kone_lock.i.i = getelementptr inbounds %struct.kone_device, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %kone_lock.i.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @kone_init_kone_device_struct.__key) #11
  %arrayidx.i.i = getelementptr %struct.kone_device, ptr %call7.i.i.i, i32 0, i32 4, i32 0
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i.i.i.i = shl i32 %13, 8
  %or2.i.i.i = or i32 %shl.i.i.i.i, -2147483520
  %call3.i.i.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i.i, i32 noundef %or2.i.i.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 90, i16 noundef zeroext 1, ptr noundef %arrayidx.i.i, i16 noundef zeroext 975, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 975, i32 %call3.i.i.i)
  %cmp4.not.i.i.i = icmp eq i32 %call3.i.i.i, 975
  br i1 %cmp4.not.i.i.i, label %for.cond.1.i.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

for.cond.1.i.i:                                   ; preds = %if.end.i
  %arrayidx.1.i.i = getelementptr %struct.kone_device, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i.i.1.i.i = shl i32 %15, 8
  %or2.i.1.i.i = or i32 %shl.i.i.1.i.i, -2147483520
  %call3.i.1.i.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i.i, i32 noundef %or2.i.1.i.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 90, i16 noundef zeroext 2, ptr noundef %arrayidx.1.i.i, i16 noundef zeroext 975, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 975, i32 %call3.i.1.i.i)
  %cmp4.not.i.1.i.i = icmp eq i32 %call3.i.1.i.i, 975
  br i1 %cmp4.not.i.1.i.i, label %for.cond.2.i.i, label %for.cond.1.i.i.do.end.i_crit_edge

for.cond.1.i.i.do.end.i_crit_edge:                ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %arrayidx.2.i.i = getelementptr %struct.kone_device, ptr %call7.i.i.i, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i.i.2.i.i = shl i32 %17, 8
  %or2.i.2.i.i = or i32 %shl.i.i.2.i.i, -2147483520
  %call3.i.2.i.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i.i, i32 noundef %or2.i.2.i.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 90, i16 noundef zeroext 3, ptr noundef %arrayidx.2.i.i, i16 noundef zeroext 975, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 975, i32 %call3.i.2.i.i)
  %cmp4.not.i.2.i.i = icmp eq i32 %call3.i.2.i.i, 975
  br i1 %cmp4.not.i.2.i.i, label %for.cond.3.i.i, label %for.cond.2.i.i.do.end.i_crit_edge

for.cond.2.i.i.do.end.i_crit_edge:                ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %arrayidx.3.i.i = getelementptr %struct.kone_device, ptr %call7.i.i.i, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i.i.3.i.i = shl i32 %19, 8
  %or2.i.3.i.i = or i32 %shl.i.i.3.i.i, -2147483520
  %call3.i.3.i.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i.i, i32 noundef %or2.i.3.i.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 90, i16 noundef zeroext 4, ptr noundef %arrayidx.3.i.i, i16 noundef zeroext 975, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 975, i32 %call3.i.3.i.i)
  %cmp4.not.i.3.i.i = icmp eq i32 %call3.i.3.i.i, 975
  br i1 %cmp4.not.i.3.i.i, label %for.cond.4.i.i, label %for.cond.3.i.i.do.end.i_crit_edge

for.cond.3.i.i.do.end.i_crit_edge:                ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  %arrayidx.4.i.i = getelementptr %struct.kone_device, ptr %call7.i.i.i, i32 0, i32 4, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i.i.4.i.i = shl i32 %21, 8
  %or2.i.4.i.i = or i32 %shl.i.i.4.i.i, -2147483520
  %call3.i.4.i.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i.i, i32 noundef %or2.i.4.i.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 90, i16 noundef zeroext 5, ptr noundef %arrayidx.4.i.i, i16 noundef zeroext 975, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 975, i32 %call3.i.4.i.i)
  %cmp4.not.i.4.i.i = icmp eq i32 %call3.i.4.i.i, 975
  br i1 %cmp4.not.i.4.i.i, label %for.end.i.i, label %for.cond.4.i.i.do.end.i_crit_edge

for.cond.4.i.i.do.end.i_crit_edge:                ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

for.end.i.i:                                      ; preds = %for.cond.4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3264, i32 noundef 36) #15
  %cmp.i.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %cmp.i.i.i.i, label %for.end.i.i.do.end.i_crit_edge, label %kone_get_settings.exit.i.i

for.end.i.i.do.end.i_crit_edge:                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

kone_get_settings.exit.i.i:                       ; preds = %for.end.i.i
  %settings.i.i = getelementptr inbounds %struct.kone_device, ptr %call7.i.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i.i.i.i.i = shl i32 %24, 8
  %or2.i.i.i.i = or i32 %shl.i.i.i.i.i, -2147483520
  %call4.i.i.i.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i.i, i32 noundef %or2.i.i.i.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 346, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i.i.i.i, i16 noundef zeroext 36, i32 noundef 5000) #11
  %25 = call ptr @memcpy(ptr %settings.i.i, ptr %call7.i.i.i.i.i, i32 36)
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i.i)
  %cmp5.i.i.i.i = icmp slt i32 %call4.i.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %call4.i.i.i.i)
  %cmp7.not.i.i.i.i = icmp eq i32 %call4.i.i.i.i, 36
  %cond.i.i.i.i = select i1 %cmp7.not.i.i.i.i, i32 0, i32 -5
  %cond9.i.i.i.i = select i1 %cmp5.i.i.i.i, i32 %call4.i.i.i.i, i32 %cond.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond9.i.i.i.i)
  %tobool3.not.i.i = icmp eq i32 %cond9.i.i.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %kone_get_settings.exit.i.i.do.end.i_crit_edge

kone_get_settings.exit.i.i.do.end.i_crit_edge:    ; preds = %kone_get_settings.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end5.i.i:                                      ; preds = %kone_get_settings.exit.i.i
  %firmware_version.i.i = getelementptr inbounds %struct.kone_device, ptr %call7.i.i.i, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i27.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3264, i32 noundef 2) #15
  %cmp.i.i28.i.i = icmp eq ptr %call7.i.i.i27.i.i, null
  br i1 %cmp.i.i28.i.i, label %if.end5.i.i.do.end.i_crit_edge, label %kone_receive.exit.i.i.i

if.end5.i.i.do.end.i_crit_edge:                   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

kone_receive.exit.i.i.i:                          ; preds = %if.end5.i.i
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i.i.i29.i.i = shl i32 %28, 8
  %or2.i.i30.i.i = or i32 %shl.i.i.i29.i.i, -2147483520
  %call4.i.i31.i.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i.i, i32 noundef %or2.i.i30.i.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 602, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i.i27.i.i, i16 noundef zeroext 2, i32 noundef 5000) #11
  %29 = ptrtoint ptr %call7.i.i.i27.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %data.0.copyload.i.i.i = load i16, ptr %call7.i.i.i27.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i27.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i31.i.i)
  %cmp5.i.i32.i.i = icmp slt i32 %call4.i.i31.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call4.i.i31.i.i)
  %cmp7.not.i.i33.i.i = icmp eq i32 %call4.i.i31.i.i, 2
  %cond.i.i34.i.i = select i1 %cmp7.not.i.i33.i.i, i32 0, i32 -5
  %cond9.i.i35.i.i = select i1 %cmp5.i.i32.i.i, i32 %call4.i.i31.i.i, i32 %cond.i.i34.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond9.i.i35.i.i)
  %tobool.not.i.i.i = icmp eq i32 %cond9.i.i35.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end9.i, label %kone_receive.exit.i.i.i.do.end.i_crit_edge

kone_receive.exit.i.i.i.do.end.i_crit_edge:       ; preds = %kone_receive.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i:                                         ; preds = %kone_receive.exit.i.i.i.do.end.i_crit_edge, %if.end5.i.i.do.end.i_crit_edge, %kone_get_settings.exit.i.i.do.end.i_crit_edge, %for.end.i.i.do.end.i_crit_edge, %for.cond.4.i.i.do.end.i_crit_edge, %for.cond.3.i.i.do.end.i_crit_edge, %for.cond.2.i.i.do.end.i_crit_edge, %for.cond.1.i.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -5, %if.end.i.do.end.i_crit_edge ], [ -5, %for.cond.1.i.i.do.end.i_crit_edge ], [ -5, %for.cond.2.i.i.do.end.i_crit_edge ], [ -5, %for.cond.3.i.i.do.end.i_crit_edge ], [ -5, %for.cond.4.i.i.do.end.i_crit_edge ], [ %cond9.i.i35.i.i, %kone_receive.exit.i.i.i.do.end.i_crit_edge ], [ -12, %if.end5.i.i.do.end.i_crit_edge ], [ -12, %for.end.i.i.do.end.i_crit_edge ], [ %cond9.i.i.i.i, %kone_get_settings.exit.i.i.do.end.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.12) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %do.end18

if.end9.i:                                        ; preds = %kone_receive.exit.i.i.i
  %30 = tail call i16 @llvm.bswap.i16(i16 %data.0.copyload.i.i.i) #11
  %conv.i36.i.i = zext i16 %30 to i32
  %31 = ptrtoint ptr %firmware_version.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv.i36.i.i, ptr %firmware_version.i.i, align 8
  %startup_profile.i.i = getelementptr inbounds %struct.kone_device, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %startup_profile.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %startup_profile.i.i, align 1
  %conv.i.i = zext i8 %33 to i32
  %34 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv.i.i, ptr %call7.i.i.i, align 8
  %sub.i.i.i = add nsw i32 %conv.i.i, -1
  %startup_dpi.i.i.i = getelementptr %struct.kone_device, ptr %call7.i.i.i, i32 0, i32 4, i32 %sub.i.i.i, i32 8
  %35 = ptrtoint ptr %startup_dpi.i.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %startup_dpi.i.i.i, align 1
  %conv.i38.i.i = zext i8 %36 to i32
  %actual_dpi.i.i.i = getelementptr inbounds %struct.kone_device, ptr %call7.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %actual_dpi.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv.i38.i.i, ptr %actual_dpi.i.i.i, align 4
  %38 = load ptr, ptr @kone_class, align 4
  %call10.i = tail call i32 @roccat_connect(ptr noundef %38, ptr noundef %hdev, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %do.end16.i, label %if.else.i

do.end16.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15) #14
  br label %cleanup

if.else.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %roccat_claimed.i = getelementptr inbounds %struct.kone_device, ptr %call7.i.i.i, i32 0, i32 8
  %39 = ptrtoint ptr %roccat_claimed.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %roccat_claimed.i, align 4
  %chrdev_minor.i = getelementptr inbounds %struct.kone_device, ptr %call7.i.i.i, i32 0, i32 9
  %40 = ptrtoint ptr %chrdev_minor.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call10.i, ptr %chrdev_minor.i, align 8
  br label %cleanup

if.else19.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i38.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %41 = ptrtoint ptr %driver_data.i.i38.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %driver_data.i.i38.i, align 4
  br label %cleanup

do.end18:                                         ; preds = %do.end.i, %if.then.i.do.end18_crit_edge
  %retval.0.i = phi i32 [ %retval.0.i.ph.i, %do.end.i ], [ -12, %if.then.i.do.end18_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.10) #14
  tail call void @hid_hw_stop(ptr noundef %hdev) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.else19.i, %if.else.i, %do.end16.i, %do.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %do.end ], [ %call5, %do.end10 ], [ %retval.0.i, %do.end18 ], [ 0, %do.end16.i ], [ 0, %if.else.i ], [ 0, %if.else19.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kone_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  br i1 %cmp.i, label %if.then.i, label %entry.kone_remove_specials.exit_crit_edge

entry.kone_remove_specials.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %kone_remove_specials.exit

if.then.i:                                        ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %roccat_claimed.i = getelementptr inbounds %struct.kone_device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %roccat_claimed.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %roccat_claimed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %chrdev_minor.i = getelementptr inbounds %struct.kone_device, ptr %7, i32 0, i32 9
  %10 = ptrtoint ptr %chrdev_minor.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chrdev_minor.i, align 4
  tail call void @roccat_disconnect(i32 noundef %11) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %12 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void @kfree(ptr noundef %13) #11
  br label %kone_remove_specials.exit

kone_remove_specials.exit:                        ; preds = %if.end.i, %entry.kone_remove_specials.exit_crit_edge
  tail call void @hid_hw_stop(ptr noundef %hdev) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kone_raw_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readnone %report, ptr nocapture noundef %data, i32 noundef %size) #2 align 64 {
entry:
  %roccat_report.i = alloca %struct.kone_roccat_report, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %size)
  %cmp.not = icmp ne i32 %size, 12
  %cmp1 = icmp eq ptr %1, null
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.kone_device, ptr %1, i32 0, i32 2, i32 5
  %3 = getelementptr inbounds %struct.kone_mouse_event, ptr %data, i32 0, i32 5
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(5) %2, ptr noundef dereferenceable(5) %3, i32 5) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %last_mouse_event = getelementptr inbounds %struct.kone_device, ptr %1, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %last_mouse_event, ptr %data, i32 12)
  br label %if.end8

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %5 = call ptr @memset(ptr %3, i32 0, i32 5)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  %event1.i = getelementptr inbounds %struct.kone_mouse_event, ptr %data, i32 0, i32 5, i32 0, i32 2
  %6 = ptrtoint ptr %event1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %event1.i, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %if.end8.kone_keep_values_up_to_date.exit_crit_edge [
    i8 -15, label %sw.bb.i
    i8 -80, label %if.end8.sw.bb4.i_crit_edge
    i8 -16, label %if.end8.sw.bb7.i_crit_edge
    i8 -96, label %if.end8.sw.bb7.i_crit_edge25
  ]

if.end8.sw.bb7.i_crit_edge25:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i

if.end8.sw.bb7.i_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i

if.end8.sw.bb4.i_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4.i

if.end8.kone_keep_values_up_to_date.exit_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %kone_keep_values_up_to_date.exit

sw.bb.i:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %value.i = getelementptr inbounds %struct.kone_mouse_event, ptr %data, i32 0, i32 5, i32 0, i32 3
  %9 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %value.i, align 1
  %conv2.i = zext i8 %10 to i32
  %sub.i = add nsw i32 %conv2.i, -1
  %startup_dpi.i = getelementptr %struct.kone_device, ptr %1, i32 0, i32 4, i32 %sub.i, i32 8
  %11 = ptrtoint ptr %startup_dpi.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %startup_dpi.i, align 1
  %conv3.i = zext i8 %12 to i32
  %actual_dpi.i = getelementptr inbounds %struct.kone_device, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %actual_dpi.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv3.i, ptr %actual_dpi.i, align 4
  br label %sw.bb4.i

sw.bb4.i:                                         ; preds = %sw.bb.i, %if.end8.sw.bb4.i_crit_edge
  %value5.i = getelementptr inbounds %struct.kone_mouse_event, ptr %data, i32 0, i32 5, i32 0, i32 3
  %14 = ptrtoint ptr %value5.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %value5.i, align 1
  %conv6.i = zext i8 %15 to i32
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv6.i, ptr %1, align 4
  br label %kone_keep_values_up_to_date.exit

sw.bb7.i:                                         ; preds = %if.end8.sw.bb7.i_crit_edge, %if.end8.sw.bb7.i_crit_edge25
  %value8.i = getelementptr inbounds %struct.kone_mouse_event, ptr %data, i32 0, i32 5, i32 0, i32 3
  %17 = ptrtoint ptr %value8.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %value8.i, align 1
  %conv9.i = zext i8 %18 to i32
  %actual_dpi10.i = getelementptr inbounds %struct.kone_device, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %actual_dpi10.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv9.i, ptr %actual_dpi10.i, align 4
  br label %kone_keep_values_up_to_date.exit

kone_keep_values_up_to_date.exit:                 ; preds = %sw.bb7.i, %sw.bb4.i, %if.end8.kone_keep_values_up_to_date.exit_crit_edge
  %roccat_claimed = getelementptr inbounds %struct.kone_device, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %roccat_claimed to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %roccat_claimed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool9.not = icmp eq i32 %21, 0
  br i1 %tobool9.not, label %kone_keep_values_up_to_date.exit.cleanup_crit_edge, label %if.then10

kone_keep_values_up_to_date.exit.cleanup_crit_edge: ; preds = %kone_keep_values_up_to_date.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10:                                        ; preds = %kone_keep_values_up_to_date.exit
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %roccat_report.i) #11
  %22 = getelementptr inbounds %struct.kone_roccat_report, ptr %roccat_report.i, i32 0, i32 1
  %23 = getelementptr inbounds %struct.kone_roccat_report, ptr %roccat_report.i, i32 0, i32 2
  %24 = ptrtoint ptr %event1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %event1.i, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %25, label %if.then10.kone_report_to_chrdev.exit_crit_edge [
    i8 -15, label %if.then10.sw.bb.i24_crit_edge
    i8 -16, label %if.then10.sw.bb.i24_crit_edge26
    i8 -80, label %if.then10.sw.bb.i24_crit_edge27
    i8 -96, label %if.then10.sw.bb.i24_crit_edge28
    i8 -32, label %if.then10.sw.bb5.i_crit_edge
    i8 -31, label %if.then10.sw.bb5.i_crit_edge29
  ]

if.then10.sw.bb5.i_crit_edge29:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5.i

if.then10.sw.bb5.i_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5.i

if.then10.sw.bb.i24_crit_edge28:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i24

if.then10.sw.bb.i24_crit_edge27:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i24

if.then10.sw.bb.i24_crit_edge26:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i24

if.then10.sw.bb.i24_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i24

if.then10.kone_report_to_chrdev.exit_crit_edge:   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %kone_report_to_chrdev.exit

sw.bb.i24:                                        ; preds = %if.then10.sw.bb.i24_crit_edge, %if.then10.sw.bb.i24_crit_edge26, %if.then10.sw.bb.i24_crit_edge27, %if.then10.sw.bb.i24_crit_edge28
  %27 = ptrtoint ptr %roccat_report.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %25, ptr %roccat_report.i, align 1
  %value.i23 = getelementptr inbounds %struct.kone_mouse_event, ptr %data, i32 0, i32 5, i32 0, i32 3
  %28 = ptrtoint ptr %value.i23 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %value.i23, align 1
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %22, align 1
  br label %sw.epilog.sink.split.i

sw.bb5.i:                                         ; preds = %if.then10.sw.bb5.i_crit_edge, %if.then10.sw.bb5.i_crit_edge29
  %value6.i = getelementptr inbounds %struct.kone_mouse_event, ptr %data, i32 0, i32 5, i32 0, i32 3
  %31 = ptrtoint ptr %value6.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %value6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp.i = icmp eq i8 %32, 0
  br i1 %cmp.i, label %if.then.i, label %sw.bb5.i.kone_report_to_chrdev.exit_crit_edge

sw.bb5.i.kone_report_to_chrdev.exit_crit_edge:    ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kone_report_to_chrdev.exit

if.then.i:                                        ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %roccat_report.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %25, ptr %roccat_report.i, align 1
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 4
  %conv11.i = trunc i32 %35 to i8
  %36 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv11.i, ptr %22, align 1
  %macro_key.i = getelementptr inbounds %struct.kone_mouse_event, ptr %data, i32 0, i32 5, i32 0, i32 4
  %37 = ptrtoint ptr %macro_key.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %macro_key.i, align 1
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %if.then.i, %sw.bb.i24
  %.sink.i = phi i8 [ %38, %if.then.i ], [ 0, %sw.bb.i24 ]
  %39 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %.sink.i, ptr %23, align 1
  %chrdev_minor14.i = getelementptr inbounds %struct.kone_device, ptr %1, i32 0, i32 9
  %40 = ptrtoint ptr %chrdev_minor14.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chrdev_minor14.i, align 4
  %call15.i = call i32 @roccat_report_event(i32 noundef %41, ptr noundef nonnull %roccat_report.i) #11
  br label %kone_report_to_chrdev.exit

kone_report_to_chrdev.exit:                       ; preds = %sw.epilog.sink.split.i, %sw.bb5.i.kone_report_to_chrdev.exit_crit_edge, %if.then10.kone_report_to_chrdev.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %roccat_report.i) #11
  br label %cleanup

cleanup:                                          ; preds = %kone_report_to_chrdev.exit, %kone_keep_values_up_to_date.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kone_get_settings(ptr noundef %usb_dev, ptr nocapture noundef writeonly %buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 36) #15
  %cmp.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.i, label %entry.kone_receive.exit_crit_edge, label %if.end.i

entry.kone_receive.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %kone_receive.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %usb_dev, align 8
  %shl.i.i = shl i32 %2, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %usb_dev, i32 noundef %or2.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 346, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 36, i32 noundef 5000) #11
  %3 = call ptr @memcpy(ptr %buf, ptr %call7.i.i, i32 36)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %call4.i)
  %cmp7.not.i = icmp eq i32 %call4.i, 36
  %cond.i = select i1 %cmp7.not.i, i32 0, i32 -5
  %cond9.i = select i1 %cmp5.i, i32 %call4.i, i32 %cond.i
  br label %kone_receive.exit

kone_receive.exit:                                ; preds = %if.end.i, %entry.kone_receive.exit_crit_edge
  %retval.0.i = phi i32 [ %cond9.i, %if.end.i ], [ -12, %entry.kone_receive.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @roccat_disconnect(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @roccat_report_event(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kone_sysfs_show_actual_dpi(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %actual_dpi = getelementptr inbounds %struct.kone_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %actual_dpi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_dpi, align 4
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %9)
  ret i32 %call3
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kone_sysfs_show_actual_profile(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %9)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kone_sysfs_show_weight(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %parent2 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent2, align 8
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
  %kone_lock = getelementptr inbounds %struct.kone_device, ptr %7, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %kone_lock, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 1) #15
  %cmp.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i.i, label %entry.kone_get_weight.exit.thread_crit_edge, label %kone_receive.exit.i

entry.kone_get_weight.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %kone_get_weight.exit.thread

kone_receive.exit.i:                              ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %9, i32 -128
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i.i = shl i32 %12, 8
  %or2.i.i = or i32 %shl.i.i.i, -2147483520
  %call4.i.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or2.i.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 1114, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 1, i32 noundef 5000) #11
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %data.0.copyload.i = load i8, ptr %call7.i.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp5.i.i = icmp slt i32 %call4.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i.i)
  %cmp7.not.i.i = icmp eq i32 %call4.i.i, 1
  %cond.i.i = select i1 %cmp7.not.i.i, i32 0, i32 -5
  %cond9.i.i = select i1 %cmp5.i.i, i32 %call4.i.i, i32 %cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond9.i.i)
  %tobool.not.i = icmp eq i32 %cond9.i.i, 0
  br i1 %tobool.not.i, label %if.end, label %kone_receive.exit.i.kone_get_weight.exit.thread_crit_edge

kone_receive.exit.i.kone_get_weight.exit.thread_crit_edge: ; preds = %kone_receive.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kone_get_weight.exit.thread

kone_get_weight.exit.thread:                      ; preds = %kone_receive.exit.i.kone_get_weight.exit.thread_crit_edge, %entry.kone_get_weight.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %entry.kone_get_weight.exit.thread_crit_edge ], [ %cond9.i.i, %kone_receive.exit.i.kone_get_weight.exit.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %kone_lock) #11
  br label %cleanup

if.end:                                           ; preds = %kone_receive.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i8 %data.0.copyload.i to i32
  tail call void @mutex_unlock(ptr noundef %kone_lock) #11
  %call7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %conv.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kone_get_weight.exit.thread
  %retval.0 = phi i32 [ %call7, %if.end ], [ %retval.0.i.ph, %kone_get_weight.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kone_sysfs_show_firmware_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %firmware_version = getelementptr inbounds %struct.kone_device, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %firmware_version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %firmware_version, align 4
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %9)
  ret i32 %call3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kone_sysfs_show_tcu(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %tcu = getelementptr inbounds %struct.kone_device, ptr %7, i32 0, i32 5, i32 3
  %8 = ptrtoint ptr %tcu to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tcu, align 1
  %conv = zext i8 %9 to i32
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %conv)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kone_sysfs_set_tcu(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %value.i110 = alloca i8, align 1
  %value.i97 = alloca i8, align 1
  %value.i = alloca i8, align 1
  %state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #11
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %state, align 4, !annotation !122
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %parent2 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent2, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %6, i32 0, i32 18, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %parent.i = getelementptr i8, ptr %4, i32 136
  %9 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 -128
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %switch = icmp ult i32 %12, 2
  br i1 %switch, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %kone_lock = getelementptr inbounds %struct.kone_device, ptr %8, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %kone_lock, i32 noundef 0) #11
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp9 = icmp eq i32 %14, 1
  br i1 %cmp9, label %if.then10, label %if.end8.if.end31_crit_edge

if.end8.if.end31_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then10:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #11
  %15 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %value.i, align 1
  %call.i.i = call ptr @kmemdup(ptr noundef nonnull %value.i, i32 noundef 1, i32 noundef 3264) #11
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %kone_tcu_command.exit.thread, label %kone_tcu_command.exit

kone_tcu_command.exit.thread:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #11
  br label %exit_unlock

kone_tcu_command.exit:                            ; preds = %if.then10
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i.i = shl i32 %17, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call3.i.i = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.i.i, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 1370, i16 noundef zeroext 0, ptr noundef nonnull %call.i.i, i16 noundef zeroext 1, i32 noundef 5000) #11
  call void @kfree(ptr noundef nonnull %call.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i)
  %cmp6.not.i.i = icmp eq i32 %call3.i.i, 1
  %cond.i.i = select i1 %cmp6.not.i.i, i32 0, i32 -5
  %cond8.i.i = select i1 %cmp4.i.i, i32 %call3.i.i, i32 %cond.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond8.i.i)
  %tobool12.not = icmp eq i32 %cond8.i.i, 0
  br i1 %tobool12.not, label %if.end14, label %kone_tcu_command.exit.exit_unlock_crit_edge

kone_tcu_command.exit.exit_unlock_crit_edge:      ; preds = %kone_tcu_command.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_unlock

if.end14:                                         ; preds = %kone_tcu_command.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i97) #11
  %18 = ptrtoint ptr %value.i97 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %value.i97, align 1
  %call.i.i98 = call ptr @kmemdup(ptr noundef nonnull %value.i97, i32 noundef 1, i32 noundef 3264) #11
  %cmp.i.i99 = icmp eq ptr %call.i.i98, null
  br i1 %cmp.i.i99, label %kone_tcu_command.exit109.thread, label %kone_tcu_command.exit109

kone_tcu_command.exit109.thread:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i97) #11
  br label %exit_unlock

kone_tcu_command.exit109:                         ; preds = %if.end14
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i.i100 = shl i32 %20, 8
  %or.i.i101 = or i32 %shl.i.i.i100, -2147483648
  %call3.i.i102 = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.i.i101, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 1370, i16 noundef zeroext 0, ptr noundef nonnull %call.i.i98, i16 noundef zeroext 1, i32 noundef 5000) #11
  call void @kfree(ptr noundef nonnull %call.i.i98) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i102)
  %cmp4.i.i103 = icmp slt i32 %call3.i.i102, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i102)
  %cmp6.not.i.i104 = icmp eq i32 %call3.i.i102, 1
  %cond.i.i105 = select i1 %cmp6.not.i.i104, i32 0, i32 -5
  %cond8.i.i106 = select i1 %cmp4.i.i103, i32 %call3.i.i102, i32 %cond.i.i105
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i97) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond8.i.i106)
  %tobool16.not = icmp eq i32 %cond8.i.i106, 0
  br i1 %tobool16.not, label %if.end18, label %kone_tcu_command.exit109.exit_unlock_crit_edge

kone_tcu_command.exit109.exit_unlock_crit_edge:   ; preds = %kone_tcu_command.exit109
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_unlock

if.end18:                                         ; preds = %kone_tcu_command.exit109
  call void @msleep(i32 noundef 5000) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i110) #11
  %21 = ptrtoint ptr %value.i110 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 3, ptr %value.i110, align 1
  %call.i.i111 = call ptr @kmemdup(ptr noundef nonnull %value.i110, i32 noundef 1, i32 noundef 3264) #11
  %cmp.i.i112 = icmp eq ptr %call.i.i111, null
  br i1 %cmp.i.i112, label %kone_tcu_command.exit122.thread, label %kone_tcu_command.exit122

kone_tcu_command.exit122.thread:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i110) #11
  br label %exit_unlock

kone_tcu_command.exit122:                         ; preds = %if.end18
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i.i113 = shl i32 %23, 8
  %or.i.i114 = or i32 %shl.i.i.i113, -2147483648
  %call3.i.i115 = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.i.i114, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 1370, i16 noundef zeroext 0, ptr noundef nonnull %call.i.i111, i16 noundef zeroext 1, i32 noundef 5000) #11
  call void @kfree(ptr noundef nonnull %call.i.i111) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i115)
  %cmp4.i.i116 = icmp slt i32 %call3.i.i115, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i115)
  %cmp6.not.i.i117 = icmp eq i32 %call3.i.i115, 1
  %cond.i.i118 = select i1 %cmp6.not.i.i117, i32 0, i32 -5
  %cond8.i.i119 = select i1 %cmp4.i.i116, i32 %call3.i.i115, i32 %cond.i.i118
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i110) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond8.i.i119)
  %tobool20.not = icmp eq i32 %cond8.i.i119, 0
  br i1 %tobool20.not, label %if.end22, label %kone_tcu_command.exit122.exit_unlock_crit_edge

kone_tcu_command.exit122.exit_unlock_crit_edge:   ; preds = %kone_tcu_command.exit122
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_unlock

if.end22:                                         ; preds = %kone_tcu_command.exit122
  %call23 = call fastcc i32 @kone_tcu_command(ptr noundef %add.ptr.i, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.exit_unlock_crit_edge

if.end22.exit_unlock_crit_edge:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_unlock

if.end26:                                         ; preds = %if.end22
  %call27 = call fastcc i32 @kone_tcu_command(ptr noundef %add.ptr.i, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.exit_unlock_crit_edge

if.end26.exit_unlock_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_unlock

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  call void @msleep(i32 noundef 1000) #11
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end8.if.end31_crit_edge
  %settings = getelementptr inbounds %struct.kone_device, ptr %8, i32 0, i32 5
  %call32 = call fastcc i32 @kone_get_settings(ptr noundef %add.ptr.i, ptr noundef %settings)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.do.end60_crit_edge

if.end31.do.end60_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60

if.end35:                                         ; preds = %if.end31
  %tcu = getelementptr inbounds %struct.kone_device, ptr %8, i32 0, i32 5, i32 3
  %24 = ptrtoint ptr %tcu to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tcu, align 1
  %conv = zext i8 %25 to i32
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv)
  %cmp37.not = icmp eq i32 %27, %conv
  br i1 %cmp37.not, label %if.end35.do.end60_crit_edge, label %if.then39

if.end35.do.end60_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60

if.then39:                                        ; preds = %if.end35
  %conv40 = trunc i32 %27 to i8
  %28 = ptrtoint ptr %tcu to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv40, ptr %tcu, align 1
  call fastcc void @kone_set_settings_checksum(ptr noundef %settings)
  %call45 = call fastcc i32 @kone_set_settings(ptr noundef %add.ptr.i, ptr noundef %settings)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end54, label %do.end

do.end:                                           ; preds = %if.then39
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.25) #14
  %call50 = call fastcc i32 @kone_get_settings(ptr noundef %add.ptr.i, ptr noundef %settings)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %do.end.exit_unlock_crit_edge, label %do.end.do.end60_crit_edge

do.end.do.end60_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60

do.end.exit_unlock_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_unlock

if.end54:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  %startup_profile = getelementptr inbounds %struct.kone_device, ptr %8, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %startup_profile to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %startup_profile, align 1
  %conv56 = zext i8 %30 to i32
  %31 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv56, ptr %8, align 4
  %sub.i = add nsw i32 %conv56, -1
  %startup_dpi.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 4, i32 %sub.i, i32 8
  %32 = ptrtoint ptr %startup_dpi.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %startup_dpi.i, align 1
  %conv.i = zext i8 %33 to i32
  %actual_dpi.i = getelementptr inbounds %struct.kone_device, ptr %8, i32 0, i32 1
  %34 = ptrtoint ptr %actual_dpi.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv.i, ptr %actual_dpi.i, align 4
  br label %do.end60

do.end60:                                         ; preds = %if.end54, %do.end.do.end60_crit_edge, %if.end35.do.end60_crit_edge, %if.end31.do.end60_crit_edge
  %retval1.0 = phi i32 [ %call32, %if.end31.do.end60_crit_edge ], [ %call50, %do.end.do.end60_crit_edge ], [ %size, %if.end54 ], [ %size, %if.end35.do.end60_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.28) #14
  br label %exit_unlock

exit_unlock:                                      ; preds = %do.end60, %do.end.exit_unlock_crit_edge, %if.end26.exit_unlock_crit_edge, %if.end22.exit_unlock_crit_edge, %kone_tcu_command.exit122.exit_unlock_crit_edge, %kone_tcu_command.exit122.thread, %kone_tcu_command.exit109.exit_unlock_crit_edge, %kone_tcu_command.exit109.thread, %kone_tcu_command.exit.exit_unlock_crit_edge, %kone_tcu_command.exit.thread
  %retval1.1 = phi i32 [ %cond8.i.i, %kone_tcu_command.exit.exit_unlock_crit_edge ], [ %cond8.i.i106, %kone_tcu_command.exit109.exit_unlock_crit_edge ], [ %cond8.i.i119, %kone_tcu_command.exit122.exit_unlock_crit_edge ], [ %call23, %if.end22.exit_unlock_crit_edge ], [ %call27, %if.end26.exit_unlock_crit_edge ], [ %retval1.0, %do.end60 ], [ 0, %do.end.exit_unlock_crit_edge ], [ -12, %kone_tcu_command.exit.thread ], [ -12, %kone_tcu_command.exit109.thread ], [ -12, %kone_tcu_command.exit122.thread ]
  call void @mutex_unlock(ptr noundef %kone_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %exit_unlock, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.1, %exit_unlock ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kone_tcu_command(ptr noundef %usb_dev, i32 noundef %number) unnamed_addr #2 align 64 {
entry:
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #11
  %conv = trunc i32 %number to i8
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %value, align 1
  %call.i = call ptr @kmemdup(ptr noundef nonnull %value, i32 noundef 1, i32 noundef 3264) #11
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.kone_send.exit_crit_edge, label %if.end.i

entry.kone_send.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %kone_send.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %usb_dev, align 8
  %shl.i.i = shl i32 %2, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call3.i = call i32 @usb_control_msg(ptr noundef %usb_dev, i32 noundef %or.i, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 1370, i16 noundef zeroext 0, ptr noundef nonnull %call.i, i16 noundef zeroext 1, i32 noundef 5000) #11
  call void @kfree(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i)
  %cmp6.not.i = icmp eq i32 %call3.i, 1
  %cond.i = select i1 %cmp6.not.i, i32 0, i32 -5
  %cond8.i = select i1 %cmp4.i, i32 %call3.i, i32 %cond.i
  br label %kone_send.exit

kone_send.exit:                                   ; preds = %if.end.i, %entry.kone_send.exit_crit_edge
  %retval.0.i = phi i32 [ %cond8.i, %if.end.i ], [ -12, %entry.kone_send.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #11
  ret i32 %retval.0.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kone_set_settings_checksum(ptr nocapture noundef %settings) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %settings to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %settings, align 1
  %conv = zext i8 %1 to i16
  %incdec.ptr = getelementptr i8, ptr %settings, i32 1
  %2 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %incdec.ptr, align 1
  %conv.1 = zext i8 %3 to i16
  %add.1 = add nuw nsw i16 %conv, %conv.1
  %incdec.ptr.1 = getelementptr i8, ptr %settings, i32 2
  %4 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %incdec.ptr.1, align 1
  %conv.2 = zext i8 %5 to i16
  %add.2 = add nuw nsw i16 %add.1, %conv.2
  %incdec.ptr.2 = getelementptr i8, ptr %settings, i32 3
  %6 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr.2, align 1
  %conv.3 = zext i8 %7 to i16
  %add.3 = add nuw nsw i16 %add.2, %conv.3
  %incdec.ptr.3 = getelementptr i8, ptr %settings, i32 4
  %8 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr.3, align 1
  %conv.4 = zext i8 %9 to i16
  %add.4 = add nuw nsw i16 %add.3, %conv.4
  %incdec.ptr.4 = getelementptr i8, ptr %settings, i32 5
  %10 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %incdec.ptr.4, align 1
  %conv.5 = zext i8 %11 to i16
  %add.5 = add nuw nsw i16 %add.4, %conv.5
  %incdec.ptr.5 = getelementptr i8, ptr %settings, i32 6
  %12 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr.5, align 1
  %conv.6 = zext i8 %13 to i16
  %add.6 = add nuw nsw i16 %add.5, %conv.6
  %incdec.ptr.6 = getelementptr i8, ptr %settings, i32 7
  %14 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %incdec.ptr.6, align 1
  %conv.7 = zext i8 %15 to i16
  %add.7 = add nuw nsw i16 %add.6, %conv.7
  %incdec.ptr.7 = getelementptr i8, ptr %settings, i32 8
  %16 = ptrtoint ptr %incdec.ptr.7 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %incdec.ptr.7, align 1
  %conv.8 = zext i8 %17 to i16
  %add.8 = add nuw nsw i16 %add.7, %conv.8
  %incdec.ptr.8 = getelementptr i8, ptr %settings, i32 9
  %18 = ptrtoint ptr %incdec.ptr.8 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr.8, align 1
  %conv.9 = zext i8 %19 to i16
  %add.9 = add nuw nsw i16 %add.8, %conv.9
  %incdec.ptr.9 = getelementptr i8, ptr %settings, i32 10
  %20 = ptrtoint ptr %incdec.ptr.9 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %incdec.ptr.9, align 1
  %conv.10 = zext i8 %21 to i16
  %add.10 = add nuw nsw i16 %add.9, %conv.10
  %incdec.ptr.10 = getelementptr i8, ptr %settings, i32 11
  %22 = ptrtoint ptr %incdec.ptr.10 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %incdec.ptr.10, align 1
  %conv.11 = zext i8 %23 to i16
  %add.11 = add nuw nsw i16 %add.10, %conv.11
  %incdec.ptr.11 = getelementptr i8, ptr %settings, i32 12
  %24 = ptrtoint ptr %incdec.ptr.11 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %incdec.ptr.11, align 1
  %conv.12 = zext i8 %25 to i16
  %add.12 = add nuw nsw i16 %add.11, %conv.12
  %incdec.ptr.12 = getelementptr i8, ptr %settings, i32 13
  %26 = ptrtoint ptr %incdec.ptr.12 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %incdec.ptr.12, align 1
  %conv.13 = zext i8 %27 to i16
  %add.13 = add nuw nsw i16 %add.12, %conv.13
  %incdec.ptr.13 = getelementptr i8, ptr %settings, i32 14
  %28 = ptrtoint ptr %incdec.ptr.13 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr.13, align 1
  %conv.14 = zext i8 %29 to i16
  %add.14 = add nuw nsw i16 %add.13, %conv.14
  %incdec.ptr.14 = getelementptr i8, ptr %settings, i32 15
  %30 = ptrtoint ptr %incdec.ptr.14 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %incdec.ptr.14, align 1
  %conv.15 = zext i8 %31 to i16
  %add.15 = add nuw nsw i16 %add.14, %conv.15
  %incdec.ptr.15 = getelementptr i8, ptr %settings, i32 16
  %32 = ptrtoint ptr %incdec.ptr.15 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %incdec.ptr.15, align 1
  %conv.16 = zext i8 %33 to i16
  %add.16 = add nuw nsw i16 %add.15, %conv.16
  %incdec.ptr.16 = getelementptr i8, ptr %settings, i32 17
  %34 = ptrtoint ptr %incdec.ptr.16 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %incdec.ptr.16, align 1
  %conv.17 = zext i8 %35 to i16
  %add.17 = add nuw nsw i16 %add.16, %conv.17
  %incdec.ptr.17 = getelementptr i8, ptr %settings, i32 18
  %36 = ptrtoint ptr %incdec.ptr.17 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %incdec.ptr.17, align 1
  %conv.18 = zext i8 %37 to i16
  %add.18 = add nuw nsw i16 %add.17, %conv.18
  %incdec.ptr.18 = getelementptr i8, ptr %settings, i32 19
  %38 = ptrtoint ptr %incdec.ptr.18 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %incdec.ptr.18, align 1
  %conv.19 = zext i8 %39 to i16
  %add.19 = add nuw nsw i16 %add.18, %conv.19
  %incdec.ptr.19 = getelementptr i8, ptr %settings, i32 20
  %40 = ptrtoint ptr %incdec.ptr.19 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %incdec.ptr.19, align 1
  %conv.20 = zext i8 %41 to i16
  %add.20 = add nuw nsw i16 %add.19, %conv.20
  %incdec.ptr.20 = getelementptr i8, ptr %settings, i32 21
  %42 = ptrtoint ptr %incdec.ptr.20 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %incdec.ptr.20, align 1
  %conv.21 = zext i8 %43 to i16
  %add.21 = add nuw nsw i16 %add.20, %conv.21
  %incdec.ptr.21 = getelementptr i8, ptr %settings, i32 22
  %44 = ptrtoint ptr %incdec.ptr.21 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %incdec.ptr.21, align 1
  %conv.22 = zext i8 %45 to i16
  %add.22 = add nuw nsw i16 %add.21, %conv.22
  %incdec.ptr.22 = getelementptr i8, ptr %settings, i32 23
  %46 = ptrtoint ptr %incdec.ptr.22 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %incdec.ptr.22, align 1
  %conv.23 = zext i8 %47 to i16
  %add.23 = add nuw nsw i16 %add.22, %conv.23
  %incdec.ptr.23 = getelementptr i8, ptr %settings, i32 24
  %48 = ptrtoint ptr %incdec.ptr.23 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %incdec.ptr.23, align 1
  %conv.24 = zext i8 %49 to i16
  %add.24 = add nuw nsw i16 %add.23, %conv.24
  %incdec.ptr.24 = getelementptr i8, ptr %settings, i32 25
  %50 = ptrtoint ptr %incdec.ptr.24 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %incdec.ptr.24, align 1
  %conv.25 = zext i8 %51 to i16
  %add.25 = add nuw nsw i16 %add.24, %conv.25
  %incdec.ptr.25 = getelementptr i8, ptr %settings, i32 26
  %52 = ptrtoint ptr %incdec.ptr.25 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %incdec.ptr.25, align 1
  %conv.26 = zext i8 %53 to i16
  %add.26 = add nuw nsw i16 %add.25, %conv.26
  %incdec.ptr.26 = getelementptr i8, ptr %settings, i32 27
  %54 = ptrtoint ptr %incdec.ptr.26 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %incdec.ptr.26, align 1
  %conv.27 = zext i8 %55 to i16
  %add.27 = add nuw nsw i16 %add.26, %conv.27
  %incdec.ptr.27 = getelementptr i8, ptr %settings, i32 28
  %56 = ptrtoint ptr %incdec.ptr.27 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %incdec.ptr.27, align 1
  %conv.28 = zext i8 %57 to i16
  %add.28 = add nuw nsw i16 %add.27, %conv.28
  %incdec.ptr.28 = getelementptr i8, ptr %settings, i32 29
  %58 = ptrtoint ptr %incdec.ptr.28 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %incdec.ptr.28, align 1
  %conv.29 = zext i8 %59 to i16
  %add.29 = add nuw nsw i16 %add.28, %conv.29
  %incdec.ptr.29 = getelementptr i8, ptr %settings, i32 30
  %60 = ptrtoint ptr %incdec.ptr.29 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %incdec.ptr.29, align 1
  %conv.30 = zext i8 %61 to i16
  %add.30 = add nuw nsw i16 %add.29, %conv.30
  %incdec.ptr.30 = getelementptr i8, ptr %settings, i32 31
  %62 = ptrtoint ptr %incdec.ptr.30 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %incdec.ptr.30, align 1
  %conv.31 = zext i8 %63 to i16
  %add.31 = add nuw nsw i16 %add.30, %conv.31
  %incdec.ptr.31 = getelementptr i8, ptr %settings, i32 32
  %64 = ptrtoint ptr %incdec.ptr.31 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %incdec.ptr.31, align 1
  %conv.32 = zext i8 %65 to i16
  %add.32 = add nuw nsw i16 %add.31, %conv.32
  %incdec.ptr.32 = getelementptr i8, ptr %settings, i32 33
  %66 = ptrtoint ptr %incdec.ptr.32 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %incdec.ptr.32, align 1
  %conv.33 = zext i8 %67 to i16
  %add.33 = add nuw nsw i16 %add.32, %conv.33
  %68 = tail call i16 @llvm.bswap.i16(i16 %add.33)
  %checksum3 = getelementptr inbounds %struct.kone_settings, ptr %settings, i32 0, i32 7
  %69 = ptrtoint ptr %checksum3 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 2)
  store i16 %68, ptr %checksum3, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kone_set_settings(ptr noundef %usb_dev, ptr noundef %settings) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmemdup(ptr noundef %settings, i32 noundef 36, i32 noundef 3264) #11
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %kone_send.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

kone_send.exit:                                   ; preds = %entry
  %0 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_dev, align 8
  %shl.i.i = shl i32 %1, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %usb_dev, i32 noundef %or.i, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 346, i16 noundef zeroext 0, ptr noundef nonnull %call.i, i16 noundef zeroext 36, i32 noundef 5000) #11
  tail call void @kfree(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %call3.i)
  %cmp6.not.i = icmp eq i32 %call3.i, 36
  %cond.i = select i1 %cmp6.not.i, i32 0, i32 -5
  %cond8.i = select i1 %cmp4.i, i32 %call3.i, i32 %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond8.i)
  %tobool.not = icmp eq i32 %cond8.i, 0
  br i1 %tobool.not, label %if.end, label %kone_send.exit.cleanup_crit_edge

kone_send.exit.cleanup_crit_edge:                 ; preds = %kone_send.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %kone_send.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call fastcc i32 @kone_check_write(ptr noundef %usb_dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kone_send.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %cond8.i, %kone_send.exit.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kone_check_write(ptr noundef %usb_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  tail call void @msleep(i32 noundef 80) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1) #15
  %cmp.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.i, label %do.body.cleanup_crit_edge, label %kone_receive.exit

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

kone_receive.exit:                                ; preds = %do.body
  %1 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %usb_dev, align 8
  %shl.i.i = shl i32 %2, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %usb_dev, i32 noundef %or2.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 1626, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1, i32 noundef 5000) #11
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %data.0.copyload = load i8, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i)
  %cmp7.not.i = icmp eq i32 %call4.i, 1
  %cond.i = select i1 %cmp7.not.i, i32 0, i32 -5
  %cond9.i = select i1 %cmp5.i, i32 %call4.i, i32 %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond9.i)
  %tobool.not = icmp eq i32 %cond9.i, 0
  br i1 %tobool.not, label %do.cond, label %kone_receive.exit.cleanup_crit_edge

kone_receive.exit.cleanup_crit_edge:              ; preds = %kone_receive.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.cond:                                          ; preds = %kone_receive.exit
  %4 = zext i8 %data.0.copyload to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %data.0.copyload, label %do.end10 [
    i8 3, label %do.cond.do.body_crit_edge
    i8 1, label %do.cond.cleanup_crit_edge
  ]

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end10:                                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %data.0.copyload to i32
  %dev = getelementptr inbounds %struct.usb_device, ptr %usb_dev, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %conv) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %do.cond.cleanup_crit_edge, %kone_receive.exit.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end10 ], [ -12, %do.body.cleanup_crit_edge ], [ 0, %do.cond.cleanup_crit_edge ], [ %cond9.i, %kone_receive.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kone_sysfs_show_startup_profile(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %startup_profile = getelementptr inbounds %struct.kone_device, ptr %7, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %startup_profile to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %startup_profile, align 1
  %conv = zext i8 %9 to i32
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %conv)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kone_sysfs_set_startup_profile(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %roccat_report.i = alloca %struct.kone_roccat_report, align 1
  %new_startup_profile = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_startup_profile) #11
  %0 = ptrtoint ptr %new_startup_profile to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %new_startup_profile, align 4, !annotation !122
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %parent2 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent2, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %6, i32 0, i32 18, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %parent.i = getelementptr i8, ptr %4, i32 136
  %9 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 -128
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %new_startup_profile) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %new_startup_profile to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %new_startup_profile, align 4
  %13 = add i32 %12, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %13)
  %14 = icmp ult i32 %13, -5
  br i1 %14, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %kone_lock = getelementptr inbounds %struct.kone_device, ptr %8, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %kone_lock, i32 noundef 0) #11
  %15 = ptrtoint ptr %new_startup_profile to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %new_startup_profile, align 4
  %conv = trunc i32 %16 to i8
  %settings = getelementptr inbounds %struct.kone_device, ptr %8, i32 0, i32 5
  %startup_profile = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %startup_profile to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %startup_profile, align 1
  %18 = ptrtoint ptr %settings to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %settings, align 1
  %conv.i = zext i8 %19 to i16
  %incdec.ptr.i = getelementptr i8, ptr %settings, i32 1
  %20 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %incdec.ptr.i, align 1
  %conv.1.i = zext i8 %21 to i16
  %add.1.i = add nuw nsw i16 %conv.1.i, %conv.i
  %22 = trunc i32 %16 to i16
  %conv.2.i = and i16 %22, 255
  %add.2.i = add nuw nsw i16 %add.1.i, %conv.2.i
  %incdec.ptr.2.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 2
  %23 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %incdec.ptr.2.i, align 1
  %conv.3.i = zext i8 %24 to i16
  %add.3.i = add nuw nsw i16 %add.2.i, %conv.3.i
  %incdec.ptr.3.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 3
  %25 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %incdec.ptr.3.i, align 1
  %conv.4.i = zext i8 %26 to i16
  %add.4.i = add nuw nsw i16 %add.3.i, %conv.4.i
  %incdec.ptr.4.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 4
  %27 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %incdec.ptr.4.i, align 1
  %conv.5.i = zext i8 %28 to i16
  %add.5.i = add nuw nsw i16 %add.4.i, %conv.5.i
  %incdec.ptr.5.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 4, i32 1
  %29 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %incdec.ptr.5.i, align 1
  %conv.6.i = zext i8 %30 to i16
  %add.6.i = add nuw nsw i16 %add.5.i, %conv.6.i
  %incdec.ptr.6.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 4, i32 2
  %31 = ptrtoint ptr %incdec.ptr.6.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %incdec.ptr.6.i, align 1
  %conv.7.i = zext i8 %32 to i16
  %add.7.i = add nuw nsw i16 %add.6.i, %conv.7.i
  %incdec.ptr.7.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 4, i32 3
  %33 = ptrtoint ptr %incdec.ptr.7.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %incdec.ptr.7.i, align 1
  %conv.8.i = zext i8 %34 to i16
  %add.8.i = add nuw nsw i16 %add.7.i, %conv.8.i
  %incdec.ptr.8.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 4, i32 4
  %35 = ptrtoint ptr %incdec.ptr.8.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %incdec.ptr.8.i, align 1
  %conv.9.i = zext i8 %36 to i16
  %add.9.i = add nuw nsw i16 %add.8.i, %conv.9.i
  %incdec.ptr.9.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 4, i32 5
  %37 = ptrtoint ptr %incdec.ptr.9.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %incdec.ptr.9.i, align 1
  %conv.10.i = zext i8 %38 to i16
  %add.10.i = add nuw nsw i16 %add.9.i, %conv.10.i
  %incdec.ptr.10.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 4, i32 6
  %39 = ptrtoint ptr %incdec.ptr.10.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %incdec.ptr.10.i, align 1
  %conv.11.i = zext i8 %40 to i16
  %add.11.i = add nuw nsw i16 %add.10.i, %conv.11.i
  %incdec.ptr.11.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 4, i32 7
  %41 = ptrtoint ptr %incdec.ptr.11.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %incdec.ptr.11.i, align 1
  %conv.12.i = zext i8 %42 to i16
  %add.12.i = add nuw nsw i16 %add.11.i, %conv.12.i
  %incdec.ptr.12.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 4, i32 8
  %43 = ptrtoint ptr %incdec.ptr.12.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %incdec.ptr.12.i, align 1
  %conv.13.i = zext i8 %44 to i16
  %add.13.i = add nuw nsw i16 %add.12.i, %conv.13.i
  %incdec.ptr.13.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 4, i32 9
  %45 = ptrtoint ptr %incdec.ptr.13.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %incdec.ptr.13.i, align 1
  %conv.14.i = zext i8 %46 to i16
  %add.14.i = add nuw nsw i16 %add.13.i, %conv.14.i
  %incdec.ptr.14.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 4, i32 10
  %47 = ptrtoint ptr %incdec.ptr.14.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %incdec.ptr.14.i, align 1
  %conv.15.i = zext i8 %48 to i16
  %add.15.i = add nuw nsw i16 %add.14.i, %conv.15.i
  %incdec.ptr.15.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 4, i32 11
  %49 = ptrtoint ptr %incdec.ptr.15.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %incdec.ptr.15.i, align 1
  %conv.16.i = zext i8 %50 to i16
  %add.16.i = add nuw nsw i16 %add.15.i, %conv.16.i
  %incdec.ptr.16.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 4, i32 12
  %51 = ptrtoint ptr %incdec.ptr.16.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %incdec.ptr.16.i, align 1
  %conv.17.i = zext i8 %52 to i16
  %add.17.i = add nuw nsw i16 %add.16.i, %conv.17.i
  %incdec.ptr.17.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 4, i32 13
  %53 = ptrtoint ptr %incdec.ptr.17.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %incdec.ptr.17.i, align 1
  %conv.18.i = zext i8 %54 to i16
  %add.18.i = add nuw nsw i16 %add.17.i, %conv.18.i
  %incdec.ptr.18.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 4, i32 14
  %55 = ptrtoint ptr %incdec.ptr.18.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %incdec.ptr.18.i, align 1
  %conv.19.i = zext i8 %56 to i16
  %add.19.i = add nuw nsw i16 %add.18.i, %conv.19.i
  %incdec.ptr.19.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 4, i32 15
  %57 = ptrtoint ptr %incdec.ptr.19.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %incdec.ptr.19.i, align 1
  %conv.20.i = zext i8 %58 to i16
  %add.20.i = add nuw nsw i16 %add.19.i, %conv.20.i
  %incdec.ptr.20.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 4, i32 16
  %59 = ptrtoint ptr %incdec.ptr.20.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %incdec.ptr.20.i, align 1
  %conv.21.i = zext i8 %60 to i16
  %add.21.i = add nuw nsw i16 %add.20.i, %conv.21.i
  %incdec.ptr.21.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 4, i32 17
  %61 = ptrtoint ptr %incdec.ptr.21.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %incdec.ptr.21.i, align 1
  %conv.22.i = zext i8 %62 to i16
  %add.22.i = add nuw nsw i16 %add.21.i, %conv.22.i
  %incdec.ptr.22.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 4, i32 18
  %63 = ptrtoint ptr %incdec.ptr.22.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %incdec.ptr.22.i, align 1
  %conv.23.i = zext i8 %64 to i16
  %add.23.i = add nuw nsw i16 %add.22.i, %conv.23.i
  %incdec.ptr.23.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 4, i32 19
  %65 = ptrtoint ptr %incdec.ptr.23.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %incdec.ptr.23.i, align 1
  %conv.24.i = zext i8 %66 to i16
  %add.24.i = add nuw nsw i16 %add.23.i, %conv.24.i
  %incdec.ptr.24.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 4, i32 20
  %67 = ptrtoint ptr %incdec.ptr.24.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %incdec.ptr.24.i, align 1
  %conv.25.i = zext i8 %68 to i16
  %add.25.i = add nuw nsw i16 %add.24.i, %conv.25.i
  %incdec.ptr.25.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 4, i32 21
  %69 = ptrtoint ptr %incdec.ptr.25.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %incdec.ptr.25.i, align 1
  %conv.26.i = zext i8 %70 to i16
  %add.26.i = add nuw nsw i16 %add.25.i, %conv.26.i
  %incdec.ptr.26.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 4, i32 22
  %71 = ptrtoint ptr %incdec.ptr.26.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %incdec.ptr.26.i, align 1
  %conv.27.i = zext i8 %72 to i16
  %add.27.i = add nuw nsw i16 %add.26.i, %conv.27.i
  %incdec.ptr.27.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 5
  %73 = ptrtoint ptr %incdec.ptr.27.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %incdec.ptr.27.i, align 1
  %conv.28.i = zext i8 %74 to i16
  %add.28.i = add nuw nsw i16 %add.27.i, %conv.28.i
  %incdec.ptr.28.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 5, i32 1
  %75 = ptrtoint ptr %incdec.ptr.28.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %incdec.ptr.28.i, align 1
  %conv.29.i = zext i8 %76 to i16
  %add.29.i = add nuw nsw i16 %add.28.i, %conv.29.i
  %incdec.ptr.29.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 5, i32 2
  %77 = ptrtoint ptr %incdec.ptr.29.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %incdec.ptr.29.i, align 1
  %conv.30.i = zext i8 %78 to i16
  %add.30.i = add nuw nsw i16 %add.29.i, %conv.30.i
  %incdec.ptr.30.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 5, i32 3
  %79 = ptrtoint ptr %incdec.ptr.30.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %incdec.ptr.30.i, align 1
  %conv.31.i = zext i8 %80 to i16
  %add.31.i = add nuw nsw i16 %add.30.i, %conv.31.i
  %incdec.ptr.31.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 6
  %81 = ptrtoint ptr %incdec.ptr.31.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %incdec.ptr.31.i, align 1
  %conv.32.i = zext i8 %82 to i16
  %add.32.i = add nuw nsw i16 %add.31.i, %conv.32.i
  %incdec.ptr.32.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 5, i32 6, i32 1
  %83 = ptrtoint ptr %incdec.ptr.32.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %incdec.ptr.32.i, align 1
  %conv.33.i = zext i8 %84 to i16
  %add.33.i = add nuw nsw i16 %add.32.i, %conv.33.i
  %85 = call i16 @llvm.bswap.i16(i16 %add.33.i) #11
  %checksum3.i = getelementptr inbounds %struct.kone_device, ptr %8, i32 0, i32 5, i32 7
  %86 = ptrtoint ptr %checksum3.i to i32
  call void @__asan_storeN_noabort(i32 %86, i32 2)
  store i16 %85, ptr %checksum3.i, align 1
  %call.i.i = call ptr @kmemdup(ptr noundef %settings, i32 noundef 36, i32 noundef 3264) #11
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %if.end8.cleanup.sink.split_crit_edge, label %kone_send.exit.i

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

kone_send.exit.i:                                 ; preds = %if.end8
  %87 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i.i = shl i32 %88, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call3.i.i = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.i.i, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 346, i16 noundef zeroext 0, ptr noundef nonnull %call.i.i, i16 noundef zeroext 36, i32 noundef 5000) #11
  call void @kfree(ptr noundef nonnull %call.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %call3.i.i)
  %cmp6.not.i.i = icmp eq i32 %call3.i.i, 36
  %cond.i.i = select i1 %cmp6.not.i.i, i32 0, i32 -5
  %cond8.i.i = select i1 %cmp4.i.i, i32 %call3.i.i, i32 %cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond8.i.i)
  %tobool.not.i = icmp eq i32 %cond8.i.i, 0
  br i1 %tobool.not.i, label %kone_set_settings.exit, label %kone_send.exit.i.cleanup.sink.split_crit_edge

kone_send.exit.i.cleanup.sink.split_crit_edge:    ; preds = %kone_send.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

kone_set_settings.exit:                           ; preds = %kone_send.exit.i
  %call2.i = call fastcc i32 @kone_check_write(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool12.not = icmp eq i32 %call2.i, 0
  br i1 %tobool12.not, label %if.end15, label %kone_set_settings.exit.cleanup.sink.split_crit_edge

kone_set_settings.exit.cleanup.sink.split_crit_edge: ; preds = %kone_set_settings.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end15:                                         ; preds = %kone_set_settings.exit
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %new_startup_profile to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %new_startup_profile, align 4
  %91 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %8, align 4
  %sub.i = add i32 %90, -1
  %startup_dpi.i = getelementptr %struct.kone_device, ptr %8, i32 0, i32 4, i32 %sub.i, i32 8
  %92 = ptrtoint ptr %startup_dpi.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %startup_dpi.i, align 1
  %conv.i32 = zext i8 %93 to i32
  %actual_dpi.i = getelementptr inbounds %struct.kone_device, ptr %8, i32 0, i32 1
  %94 = ptrtoint ptr %actual_dpi.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %conv.i32, ptr %actual_dpi.i, align 4
  %95 = load i32, ptr %new_startup_profile, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %roccat_report.i) #11
  %96 = getelementptr inbounds %struct.kone_roccat_report, ptr %roccat_report.i, i32 0, i32 1
  %97 = getelementptr inbounds %struct.kone_roccat_report, ptr %roccat_report.i, i32 0, i32 2
  %98 = ptrtoint ptr %roccat_report.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -15, ptr %roccat_report.i, align 1
  %conv.i33 = trunc i32 %95 to i8
  %99 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv.i33, ptr %96, align 1
  %100 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %97, align 1
  %chrdev_minor.i = getelementptr inbounds %struct.kone_device, ptr %8, i32 0, i32 9
  %101 = ptrtoint ptr %chrdev_minor.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %chrdev_minor.i, align 4
  %call.i34 = call i32 @roccat_report_event(i32 noundef %102, ptr noundef nonnull %roccat_report.i) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %roccat_report.i) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end15, %kone_set_settings.exit.cleanup.sink.split_crit_edge, %kone_send.exit.i.cleanup.sink.split_crit_edge, %if.end8.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %size, %if.end15 ], [ %call2.i, %kone_set_settings.exit.cleanup.sink.split_crit_edge ], [ -12, %if.end8.cleanup.sink.split_crit_edge ], [ %cond8.i.i, %kone_send.exit.i.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %kone_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_startup_profile) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kone_sysfs_read_settings(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 35, i64 %off)
  %cmp = icmp sgt i64 %off, 35
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  %conv = zext i32 %count to i64
  %add = add nsw i64 %conv, %off
  call void @__sanitizer_cov_trace_const_cmp8(i64 36, i64 %add)
  %cmp4 = icmp sgt i64 %add, 36
  %8 = trunc i64 %off to i32
  %conv7 = sub i32 36, %8
  %count.addr.0 = select i1 %cmp4, i32 %conv7, i32 %count
  %kone_lock = getelementptr inbounds %struct.kone_device, ptr %7, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %kone_lock, i32 noundef 0) #11
  %settings = getelementptr inbounds %struct.kone_device, ptr %7, i32 0, i32 5
  %add.ptr = getelementptr i8, ptr %settings, i32 %8
  %9 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %count.addr.0)
  tail call void @mutex_unlock(ptr noundef %kone_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kone_sysfs_write_settings(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %roccat_report.i = alloca %struct.kone_roccat_report, align 1
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %count)
  %cmp6.not = icmp eq i32 %count, 36
  %or.cond = and i1 %cmp.not, %cmp6.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %kone_lock = getelementptr inbounds %struct.kone_device, ptr %7, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %kone_lock, i32 noundef 0) #11
  %settings7 = getelementptr inbounds %struct.kone_device, ptr %7, i32 0, i32 5
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(36) %buf, ptr noundef dereferenceable(36) %settings7, i32 36) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end._crit_edge, label %if.then9

if.end._crit_edge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %31

if.then9:                                         ; preds = %if.end
  %startup_profile = getelementptr inbounds %struct.kone_settings, ptr %buf, i32 0, i32 1
  %10 = ptrtoint ptr %startup_profile to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %startup_profile, align 1
  %12 = add i8 %11, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %12)
  %13 = icmp ult i8 %12, -5
  br i1 %13, label %if.then9.unlock_crit_edge, label %if.end18

if.then9.unlock_crit_edge:                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end18:                                         ; preds = %if.then9
  %call.i.i = tail call ptr @kmemdup(ptr noundef %buf, i32 noundef 36, i32 noundef 3264) #11
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %if.end18.unlock_crit_edge, label %kone_send.exit.i

if.end18.unlock_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

kone_send.exit.i:                                 ; preds = %if.end18
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i.i = shl i32 %15, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.i.i, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 346, i16 noundef zeroext 0, ptr noundef nonnull %call.i.i, i16 noundef zeroext 36, i32 noundef 5000) #11
  tail call void @kfree(ptr noundef nonnull %call.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %call3.i.i)
  %cmp6.not.i.i = icmp eq i32 %call3.i.i, 36
  %cond.i.i = select i1 %cmp6.not.i.i, i32 0, i32 -5
  %cond8.i.i = select i1 %cmp4.i.i, i32 %call3.i.i, i32 %cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond8.i.i)
  %tobool.not.i = icmp eq i32 %cond8.i.i, 0
  br i1 %tobool.not.i, label %kone_set_settings.exit, label %kone_send.exit.i.unlock_crit_edge

kone_send.exit.i.unlock_crit_edge:                ; preds = %kone_send.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

kone_set_settings.exit:                           ; preds = %kone_send.exit.i
  %call2.i = tail call fastcc i32 @kone_check_write(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool20.not = icmp eq i32 %call2.i, 0
  br i1 %tobool20.not, label %if.end22, label %kone_set_settings.exit.unlock_crit_edge

kone_set_settings.exit.unlock_crit_edge:          ; preds = %kone_set_settings.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end22:                                         ; preds = %kone_set_settings.exit
  %startup_profile24 = getelementptr inbounds %struct.kone_device, ptr %7, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %startup_profile24 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %startup_profile24, align 1
  %18 = call ptr @memcpy(ptr %settings7, ptr %buf, i32 36)
  %19 = load i8, ptr %startup_profile24, align 1
  %conv29 = zext i8 %19 to i32
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv29, ptr %7, align 4
  %sub.i = add nsw i32 %conv29, -1
  %startup_dpi.i = getelementptr %struct.kone_device, ptr %7, i32 0, i32 4, i32 %sub.i, i32 8
  %21 = ptrtoint ptr %startup_dpi.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %startup_dpi.i, align 1
  %conv.i = zext i8 %22 to i32
  %actual_dpi.i = getelementptr inbounds %struct.kone_device, ptr %7, i32 0, i32 1
  %23 = ptrtoint ptr %actual_dpi.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv.i, ptr %actual_dpi.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %17)
  %cmp33.not = icmp eq i8 %19, %17
  br i1 %cmp33.not, label %if.end22._crit_edge, label %if.then35

if.end22._crit_edge:                              ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %31

if.then35:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %roccat_report.i) #11
  %24 = getelementptr inbounds %struct.kone_roccat_report, ptr %roccat_report.i, i32 0, i32 1
  %25 = getelementptr inbounds %struct.kone_roccat_report, ptr %roccat_report.i, i32 0, i32 2
  %26 = ptrtoint ptr %roccat_report.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -15, ptr %roccat_report.i, align 1
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %19, ptr %24, align 1
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %25, align 1
  %chrdev_minor.i = getelementptr inbounds %struct.kone_device, ptr %7, i32 0, i32 9
  %29 = ptrtoint ptr %chrdev_minor.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chrdev_minor.i, align 4
  %call.i = call i32 @roccat_report_event(i32 noundef %30, ptr noundef nonnull %roccat_report.i) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %roccat_report.i) #11
  br label %31

unlock:                                           ; preds = %kone_set_settings.exit.unlock_crit_edge, %kone_send.exit.i.unlock_crit_edge, %if.end18.unlock_crit_edge, %if.then9.unlock_crit_edge
  %retval5.0 = phi i32 [ %call2.i, %kone_set_settings.exit.unlock_crit_edge ], [ -22, %if.then9.unlock_crit_edge ], [ -12, %if.end18.unlock_crit_edge ], [ %cond8.i.i, %kone_send.exit.i.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %kone_lock) #11
  br label %cleanup

31:                                               ; preds = %if.then35, %if.end22._crit_edge, %if.end._crit_edge
  call void @mutex_unlock(ptr noundef %kone_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %31, %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 36, %31 ], [ %retval5.0, %unlock ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kone_sysfs_read_profilex(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 974, i64 %off)
  %cmp = icmp sgt i64 %off, 974
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  %conv = zext i32 %count to i64
  %add = add nsw i64 %conv, %off
  call void @__sanitizer_cov_trace_const_cmp8(i64 975, i64 %add)
  %cmp4 = icmp sgt i64 %add, 975
  %8 = trunc i64 %off to i32
  %conv7 = sub i32 975, %8
  %count.addr.0 = select i1 %cmp4, i32 %conv7, i32 %count
  %kone_lock = getelementptr inbounds %struct.kone_device, ptr %7, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %kone_lock, i32 noundef 0) #11
  %private = getelementptr inbounds %struct.bin_attribute, ptr %attr, i32 0, i32 2
  %9 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %arrayidx = getelementptr %struct.kone_device, ptr %7, i32 0, i32 4, i32 %12
  %add.ptr = getelementptr i8, ptr %arrayidx, i32 %8
  %13 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %count.addr.0)
  tail call void @mutex_unlock(ptr noundef %kone_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kone_sysfs_write_profilex(ptr nocapture noundef readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %add.ptr.i = getelementptr i8, ptr %5, i32 -128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 975, i32 %count)
  %cmp6.not = icmp eq i32 %count, 975
  %or.cond = and i1 %cmp.not, %cmp6.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %7, i32 0, i32 18, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %private = getelementptr inbounds %struct.bin_attribute, ptr %attr, i32 0, i32 2
  %10 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %arrayidx = getelementptr %struct.kone_device, ptr %9, i32 0, i32 4, i32 %13
  %kone_lock = getelementptr inbounds %struct.kone_device, ptr %9, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %kone_lock, i32 noundef 0) #11
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(975) %buf, ptr noundef dereferenceable(975) %arrayidx, i32 975) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.then8

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then8:                                         ; preds = %if.end
  %14 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %18 = icmp ugt i32 %17, 4
  br i1 %18, label %if.then8.cleanup.sink.split_crit_edge, label %if.end.i

if.then8.cleanup.sink.split_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.then8
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i = shl i32 %20, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %21 = trunc i32 %17 to i16
  %conv.i = add nuw nsw i16 %21, 1
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.i, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 90, i16 noundef zeroext %conv.i, ptr noundef %buf, i16 noundef zeroext 975, i32 noundef 5000) #11
  %22 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call2.i, label %if.end.i.cleanup.sink.split_crit_edge [
    i32 975, label %if.end6.i
    i32 0, label %if.end.i.if.then12_crit_edge
  ]

if.end.i.if.then12_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call fastcc i32 @kone_check_write(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %if.end6.i.if.then12_crit_edge, label %if.end6.i.cleanup.sink.split_crit_edge

if.end6.i.cleanup.sink.split_crit_edge:           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end6.i.if.then12_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.then12:                                        ; preds = %if.end6.i.if.then12_crit_edge, %if.end.i.if.then12_crit_edge
  %23 = call ptr @memcpy(ptr %arrayidx, ptr %buf, i32 975)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then12, %if.end6.i.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge, %if.then8.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -5, %if.end6.i.cleanup.sink.split_crit_edge ], [ -22, %if.then8.cleanup.sink.split_crit_edge ], [ 975, %if.then12 ], [ 975, %if.end.cleanup.sink.split_crit_edge ], [ %call2.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %kone_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !49, !51, !53, !55, !57, !59, !60, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !93, !95, !96, !98, !99, !101, !103, !104, !106, !107, !109, !110, !112}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @__initcall__kmod_hid_roccat_kone__232_910_kone_init6, !1, !"__initcall__kmod_hid_roccat_kone__232_910_kone_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-roccat-kone.c", i32 910, i32 1}
!2 = !{ptr @__exitcall_kone_exit, !3, !"__exitcall_kone_exit", i1 false, i1 false}
!3 = !{!"../drivers/hid/hid-roccat-kone.c", i32 911, i32 1}
!4 = !{ptr @__UNIQUE_ID_author233, !5, !"__UNIQUE_ID_author233", i1 false, i1 false}
!5 = !{!"../drivers/hid/hid-roccat-kone.c", i32 913, i32 1}
!6 = !{ptr @__UNIQUE_ID_description234, !7, !"__UNIQUE_ID_description234", i1 false, i1 false}
!7 = !{!"../drivers/hid/hid-roccat-kone.c", i32 914, i32 1}
!8 = !{ptr @__UNIQUE_ID_file235, !9, !"__UNIQUE_ID_file235", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-roccat-kone.c", i32 915, i32 1}
!10 = !{ptr @__UNIQUE_ID_license236, !9, !"__UNIQUE_ID_license236", i1 false, i1 false}
!11 = !{ptr @kone_class, !12, !"kone_class", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-roccat-kone.c", i32 93, i32 22}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-roccat-kone.c", i32 881, i32 11}
!15 = !{ptr @kone_driver, !16, !"kone_driver", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-roccat-kone.c", i32 880, i32 26}
!17 = !{ptr @kone_devices, !18, !"kone_devices", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-roccat-kone.c", i32 873, i32 35}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hid/hid-roccat-kone.c", i32 757, i32 3}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @kone_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @kone_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hid/hid-roccat-kone.c", i32 763, i32 3}
!29 = !{ptr @kone_probe._entry.6, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @kone_probe._entry_ptr.8, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hid/hid-roccat-kone.c", i32 769, i32 3}
!33 = !{ptr @kone_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @kone_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hid/hid-roccat-kone.c", i32 711, i32 4}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @kone_init_specials._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @kone_init_specials._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hid/hid-roccat-kone.c", i32 718, i32 4}
!42 = !{ptr @kone_init_specials._entry.14, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @kone_init_specials._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @kone_init_kone_device_struct.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/hid/hid-roccat-kone.c", i32 666, i32 2}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @kone_init.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/hid/hid-roccat-kone.c", i32 893, i32 15}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hid/hid-roccat-kone.c", i32 898, i32 11}
!51 = !{ptr @kone_groups, !52, !"kone_groups", i1 false, i1 false}
!52 = !{!"../drivers/hid/hid-roccat-kone.c", i32 655, i32 38}
!53 = !{ptr @kone_group, !54, !"kone_group", i1 false, i1 false}
!54 = !{!"../drivers/hid/hid-roccat-kone.c", i32 650, i32 37}
!55 = !{ptr @kone_attrs, !56, !"kone_attrs", i1 false, i1 false}
!56 = !{!"../drivers/hid/hid-roccat-kone.c", i32 602, i32 26}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hid/hid-roccat-kone.c", i32 417, i32 8}
!59 = !{ptr @dev_attr_actual_dpi, !58, !"dev_attr_actual_dpi", i1 false, i1 false}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hid/hid-roccat-kone.c", i32 415, i32 34}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hid/hid-roccat-kone.c", i32 408, i32 8}
!64 = !{ptr @dev_attr_actual_profile, !63, !"dev_attr_actual_profile", i1 false, i1 false}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hid/hid-roccat-kone.c", i32 440, i32 8}
!67 = !{ptr @dev_attr_weight, !66, !"dev_attr_weight", i1 false, i1 false}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hid/hid-roccat-kone.c", i32 449, i32 8}
!70 = !{ptr @dev_attr_firmware_version, !69, !"dev_attr_firmware_version", i1 false, i1 false}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hid/hid-roccat-kone.c", i32 552, i32 8}
!73 = !{ptr @dev_attr_tcu, !72, !"dev_attr_tcu", i1 false, i1 false}
!74 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hid/hid-roccat-kone.c", i32 531, i32 4}
!76 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @kone_sysfs_set_tcu._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @kone_sysfs_set_tcu._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hid/hid-roccat-kone.c", i32 547, i32 2}
!81 = !{ptr @kone_sysfs_set_tcu._entry.27, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @kone_sysfs_set_tcu._entry_ptr.29, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hid/hid-roccat-kone.c", i32 139, i32 2}
!85 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @kone_check_write._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @kone_check_write._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hid/hid-roccat-kone.c", i32 599, i32 8}
!90 = !{ptr @dev_attr_startup_profile, !89, !"dev_attr_startup_profile", i1 false, i1 false}
!91 = !{ptr @kone_bin_attributes, !92, !"kone_bin_attributes", i1 false, i1 false}
!92 = !{!"../drivers/hid/hid-roccat-kone.c", i32 640, i32 30}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hid/hid-roccat-kone.c", i32 333, i32 8}
!95 = !{ptr @bin_attr_settings, !94, !"bin_attr_settings", i1 false, i1 false}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hid/hid-roccat-kone.c", i32 395, i32 1}
!98 = !{ptr @bin_attr_profile1, !97, !"bin_attr_profile1", i1 false, i1 false}
!99 = !{ptr @profile_numbers, !100, !"profile_numbers", i1 false, i1 false}
!100 = !{!"../drivers/hid/hid-roccat-kone.c", i32 35, i32 13}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hid/hid-roccat-kone.c", i32 396, i32 1}
!103 = !{ptr @bin_attr_profile2, !102, !"bin_attr_profile2", i1 false, i1 false}
!104 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hid/hid-roccat-kone.c", i32 397, i32 1}
!106 = !{ptr @bin_attr_profile3, !105, !"bin_attr_profile3", i1 false, i1 false}
!107 = !{ptr @.str.37, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hid/hid-roccat-kone.c", i32 398, i32 1}
!109 = !{ptr @bin_attr_profile4, !108, !"bin_attr_profile4", i1 false, i1 false}
!110 = !{ptr @.str.38, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hid/hid-roccat-kone.c", i32 399, i32 1}
!112 = !{ptr @bin_attr_profile5, !111, !"bin_attr_profile5", i1 false, i1 false}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{!"auto-init"}
