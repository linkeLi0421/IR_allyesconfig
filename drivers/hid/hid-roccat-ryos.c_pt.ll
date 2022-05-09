; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-roccat-ryos.c_pt.bc'
source_filename = "../drivers/hid/hid-roccat-ryos.c"
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
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.roccat_common2_device = type { i32, i32, %struct.mutex }

@ryos_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str, ptr @ryos_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @ryos_probe, ptr @ryos_remove, ptr null, ptr @ryos_raw_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@ryos_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_hid_roccat_ryos__232_236_ryos_init6 = internal global ptr @ryos_init, section ".initcall6.init", align 4
@__exitcall_ryos_exit = internal global ptr @ryos_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author233 = internal constant [37 x i8] c"hid_roccat_ryos.author=Stefan Achatz\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [63 x i8] c"hid_roccat_ryos.description=USB Roccat Ryos MK/Glow/Pro driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [49 x i8] c"hid_roccat_ryos.file=drivers/hid/hid-roccat-ryos\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [31 x i8] c"hid_roccat_ryos.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ryos\00", [27 x i8] zeroinitializer }, align 32
@ryos_devices = internal constant { [4 x %struct.hid_device_id], [32 x i8] } { [4 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 7805, i32 12600, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7805, i32 12750, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7805, i32 12850, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ryos_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 149, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ryos_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/hid/hid-roccat-ryos.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ryos_probe._entry_ptr = internal global ptr @ryos_probe._entry, section ".printk_index", align 4
@ryos_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 155, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@ryos_probe._entry_ptr.8 = internal global ptr @ryos_probe._entry.6, section ".printk_index", align 4
@ryos_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 161, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"couldn't install mouse\0A\00", [40 x i8] zeroinitializer }, align 32
@ryos_probe._entry_ptr.11 = internal global ptr @ryos_probe._entry.9, section ".printk_index", align 4
@usb_hid_driver = external dso_local global %struct.hid_ll_driver, align 4
@ryos_init_specials._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 98, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"can't alloc device descriptor\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ryos_init_specials\00", [45 x i8] zeroinitializer }, align 32
@ryos_init_specials._entry_ptr = internal global ptr @ryos_init_specials._entry, section ".printk_index", align 4
@ryos_init_specials._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.3, i32 105, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"couldn't init Ryos device\0A\00", [37 x i8] zeroinitializer }, align 32
@ryos_init_specials._entry_ptr.16 = internal global ptr @ryos_init_specials._entry.14, section ".printk_index", align 4
@ryos_init_specials._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.3, i32 112, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"couldn't init char dev\0A\00", [40 x i8] zeroinitializer }, align 32
@ryos_init_specials._entry_ptr.19 = internal global ptr @ryos_init_specials._entry.17, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ryos_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ryos_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ryos_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hid_roccat_ryos\00", [16 x i8] zeroinitializer }, align 32
@ryos_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr null, ptr @ryos_bin_attrs }, [44 x i8] zeroinitializer }, align 32
@ryos_bin_attrs = internal global { [19 x ptr], [52 x i8] } { [19 x ptr] [ptr @bin_attr_control, ptr @bin_attr_profile, ptr @bin_attr_keys_primary, ptr @bin_attr_keys_function, ptr @bin_attr_keys_macro, ptr @bin_attr_keys_thumbster, ptr @bin_attr_keys_extra, ptr @bin_attr_keys_easyzone, ptr @bin_attr_key_mask, ptr @bin_attr_light, ptr @bin_attr_macro, ptr @bin_attr_info, ptr @bin_attr_reset, ptr @bin_attr_light_control, ptr @bin_attr_talk, ptr @bin_attr_stored_lights, ptr @bin_attr_custom_lights, ptr @bin_attr_light_macro, ptr null], [52 x i8] zeroinitializer }, align 32
@bin_attr_control = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.21, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 3, ptr null, ptr null, ptr null, ptr @roccat_common2_sysfs_write_control, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_profile = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.22, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 3, ptr null, ptr null, ptr @roccat_common2_sysfs_read_profile, ptr @roccat_common2_sysfs_write_profile, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_keys_primary = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.23, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 125, ptr null, ptr null, ptr @roccat_common2_sysfs_read_keys_primary, ptr @roccat_common2_sysfs_write_keys_primary, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_keys_function = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.24, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 95, ptr null, ptr null, ptr @roccat_common2_sysfs_read_keys_function, ptr @roccat_common2_sysfs_write_keys_function, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_keys_macro = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.25, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 35, ptr null, ptr null, ptr @roccat_common2_sysfs_read_keys_macro, ptr @roccat_common2_sysfs_write_keys_macro, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_keys_thumbster = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.26, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 23, ptr null, ptr null, ptr @roccat_common2_sysfs_read_keys_thumbster, ptr @roccat_common2_sysfs_write_keys_thumbster, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_keys_extra = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.27, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 8, ptr null, ptr null, ptr @roccat_common2_sysfs_read_keys_extra, ptr @roccat_common2_sysfs_write_keys_extra, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_keys_easyzone = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.28, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 294, ptr null, ptr null, ptr @roccat_common2_sysfs_read_keys_easyzone, ptr @roccat_common2_sysfs_write_keys_easyzone, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_key_mask = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.29, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 6, ptr null, ptr null, ptr @roccat_common2_sysfs_read_key_mask, ptr @roccat_common2_sysfs_write_key_mask, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_light = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.30, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 16, ptr null, ptr null, ptr @roccat_common2_sysfs_read_light, ptr @roccat_common2_sysfs_write_light, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_macro = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.31, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 2002, ptr null, ptr null, ptr @roccat_common2_sysfs_read_macro, ptr @roccat_common2_sysfs_write_macro, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_info = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.32, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 8, ptr null, ptr null, ptr @roccat_common2_sysfs_read_info, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_reset = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.33, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 3, ptr null, ptr null, ptr null, ptr @roccat_common2_sysfs_write_reset, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_light_control = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.34, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 8, ptr null, ptr null, ptr null, ptr @roccat_common2_sysfs_write_light_control, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_talk = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.35, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 16, ptr null, ptr null, ptr null, ptr @roccat_common2_sysfs_write_talk, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_stored_lights = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.36, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 1382, ptr null, ptr null, ptr @roccat_common2_sysfs_read_stored_lights, ptr @roccat_common2_sysfs_write_stored_lights, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_custom_lights = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.37, i16 144, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 20, ptr null, ptr null, ptr null, ptr @roccat_common2_sysfs_write_custom_lights, ptr null }, [52 x i8] zeroinitializer }, align 32
@bin_attr_light_macro = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.38, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 2002, ptr null, ptr null, ptr @roccat_common2_sysfs_read_light_macro, ptr @roccat_common2_sysfs_write_light_macro, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"profile\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"keys_primary\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"keys_function\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"keys_macro\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"keys_thumbster\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"keys_extra\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"keys_easyzone\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"key_mask\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"light\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"macro\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"info\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"light_control\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"talk\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stored_lights\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"custom_lights\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"light_macro\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.39 = private unnamed_addr constant [12 x i8] c"ryos_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 207, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant [11 x i8] c"ryos_class\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 31, i32 22 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 208, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [13 x i8] c"ryos_devices\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 198, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 149, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 155, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 161, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 98, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 105, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 112, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 219, i32 15 }
@___asan_gen_.105 = private unnamed_addr constant [12 x i8] c"ryos_groups\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 78, i32 38 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 224, i32 11 }
@___asan_gen_.111 = private unnamed_addr constant [11 x i8] c"ryos_group\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 74, i32 37 }
@___asan_gen_.114 = private unnamed_addr constant [15 x i8] c"ryos_bin_attrs\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 52, i32 30 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"bin_attr_control\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"bin_attr_profile\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [22 x i8] c"bin_attr_keys_primary\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [23 x i8] c"bin_attr_keys_function\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [20 x i8] c"bin_attr_keys_macro\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [24 x i8] c"bin_attr_keys_thumbster\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [20 x i8] c"bin_attr_keys_extra\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [23 x i8] c"bin_attr_keys_easyzone\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [18 x i8] c"bin_attr_key_mask\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [15 x i8] c"bin_attr_light\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [15 x i8] c"bin_attr_macro\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [14 x i8] c"bin_attr_info\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [15 x i8] c"bin_attr_reset\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [23 x i8] c"bin_attr_light_control\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [14 x i8] c"bin_attr_talk\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [23 x i8] c"bin_attr_stored_lights\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [23 x i8] c"bin_attr_custom_lights\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [21 x i8] c"bin_attr_light_macro\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 33, i32 1 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 34, i32 1 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 35, i32 1 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 36, i32 1 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 37, i32 1 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 38, i32 1 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 39, i32 1 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 40, i32 1 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 41, i32 1 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 42, i32 1 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 43, i32 1 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 44, i32 1 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 45, i32 1 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 46, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 47, i32 1 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 48, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 49, i32 1 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.223 = private constant [33 x i8] c"../drivers/hid/hid-roccat-ryos.c\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 50, i32 1 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_ryos_exit, ptr @__initcall__kmod_hid_roccat_ryos__232_236_ryos_init6, ptr @ryos_exit, ptr @ryos_init_specials._entry, ptr @ryos_init_specials._entry.14, ptr @ryos_init_specials._entry.17, ptr @ryos_init_specials._entry_ptr, ptr @ryos_init_specials._entry_ptr.16, ptr @ryos_init_specials._entry_ptr.19, ptr @ryos_probe._entry, ptr @ryos_probe._entry.6, ptr @ryos_probe._entry.9, ptr @ryos_probe._entry_ptr, ptr @ryos_probe._entry_ptr.11, ptr @ryos_probe._entry_ptr.8, ptr @ryos_driver, ptr @ryos_class, ptr @.str, ptr @ryos_devices, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @ryos_init.__key, ptr @ryos_groups, ptr @.str.20, ptr @ryos_group, ptr @ryos_bin_attrs, ptr @bin_attr_control, ptr @bin_attr_profile, ptr @bin_attr_keys_primary, ptr @bin_attr_keys_function, ptr @bin_attr_keys_macro, ptr @bin_attr_keys_thumbster, ptr @bin_attr_keys_extra, ptr @bin_attr_keys_easyzone, ptr @bin_attr_key_mask, ptr @bin_attr_light, ptr @bin_attr_macro, ptr @bin_attr_info, ptr @bin_attr_reset, ptr @bin_attr_light_control, ptr @bin_attr_talk, ptr @bin_attr_stored_lights, ptr @bin_attr_custom_lights, ptr @bin_attr_light_macro, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ryos_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ryos_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ryos_devices to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ryos_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ryos_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ryos_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ryos_init_specials._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ryos_init_specials._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ryos_init_specials._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ryos_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ryos_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ryos_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ryos_bin_attrs to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_control to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_profile to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_keys_primary to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_keys_function to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_keys_macro to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_keys_thumbster to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_keys_extra to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_keys_easyzone to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_key_mask to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_light to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_macro to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_info to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_reset to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_light_control to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_talk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_stored_lights to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_custom_lights to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_light_macro to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ryos_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @hid_unregister_driver(ptr noundef nonnull @ryos_driver) #5
  %0 = load ptr, ptr @ryos_class, align 4
  tail call void @class_destroy(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ryos_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @ryos_init.__key) #5
  store ptr %call, ptr @ryos_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_groups = getelementptr inbounds %struct.class, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %dev_groups to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ryos_groups, ptr %dev_groups, align 4
  %call4 = tail call i32 @__hid_register_driver(ptr noundef nonnull @ryos_driver, ptr noundef null, ptr noundef nonnull @.str.20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = load ptr, ptr @ryos_class, align 4
  tail call void @class_destroy(ptr noundef %2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call4, %if.then5 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ryos_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ll_driver.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 20
  %0 = ptrtoint ptr %ll_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ll_driver.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, @usb_hid_driver
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 45) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  br i1 %tobool6.not, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.7) #8
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
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.not.i = icmp eq i8 %9, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %driver_data.i.i.i, align 4
  br label %cleanup

if.end.i:                                         ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 100) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end6.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.12) #8
  br label %do.end18

if.end6.i:                                        ; preds = %if.end.i
  %driver_data.i.i42.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %12 = ptrtoint ptr %driver_data.i.i42.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i.i, ptr %driver_data.i.i42.i, align 4
  %call7.i = tail call i32 @roccat_common2_device_init_struct(ptr noundef %add.ptr.i.i, ptr noundef nonnull %call7.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end14.i, label %do.end12.i

do.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  br label %do.end18

if.end14.i:                                       ; preds = %if.end6.i
  %13 = load ptr, ptr @ryos_class, align 4
  %call15.i = tail call i32 @roccat_connect(ptr noundef %13, ptr noundef %hdev, i32 noundef 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %do.end21.i, label %if.else.i

do.end21.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.else.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %chrdev_minor.i = getelementptr inbounds %struct.roccat_common2_device, ptr %call7.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %chrdev_minor.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call15.i, ptr %chrdev_minor.i, align 4
  %15 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %call7.i.i.i, align 8
  br label %cleanup

do.end18:                                         ; preds = %do.end12.i, %do.end.i
  %retval.0.i = phi i32 [ %call7.i, %do.end12.i ], [ -12, %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.10) #8
  tail call void @hid_hw_stop(ptr noundef %hdev) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.else.i, %do.end21.i, %if.then.i, %do.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %do.end ], [ %call5, %do.end10 ], [ %retval.0.i, %do.end18 ], [ 0, %if.then.i ], [ 0, %if.else.i ], [ 0, %do.end21.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ryos_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not.i = icmp eq i8 %5, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.ryos_remove_specials.exit_crit_edge

entry.ryos_remove_specials.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ryos_remove_specials.exit

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %chrdev_minor.i = getelementptr inbounds %struct.roccat_common2_device, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %chrdev_minor.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chrdev_minor.i, align 4
  tail call void @roccat_disconnect(i32 noundef %11) #5
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  tail call void @kfree(ptr noundef %7) #5
  br label %ryos_remove_specials.exit

ryos_remove_specials.exit:                        ; preds = %if.end3.i, %entry.ryos_remove_specials.exit_crit_edge
  tail call void @hid_hw_stop(ptr noundef %hdev) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ryos_raw_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readnone %report, ptr noundef %data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not = icmp eq i8 %7, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp3.not = icmp ne i8 %9, 3
  %cmp7.not = icmp eq ptr %3, null
  %or.cond = select i1 %cmp3.not, i1 true, i1 %cmp7.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %if.then9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %chrdev_minor = getelementptr inbounds %struct.roccat_common2_device, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %chrdev_minor to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chrdev_minor, align 4
  %call10 = tail call i32 @roccat_report_event(i32 noundef %13, ptr noundef %data) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @roccat_common2_device_init_struct(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @roccat_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @roccat_disconnect(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @roccat_report_event(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_write_control(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_write(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 3, i32 noundef 4) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @roccat_common2_sysfs_write(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_read_profile(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_read(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 3, i32 noundef 5) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_write_profile(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_write(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 3, i32 noundef 5) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @roccat_common2_sysfs_read(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_read_keys_primary(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_read(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 125, i32 noundef 6) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_write_keys_primary(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_write(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 125, i32 noundef 6) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_read_keys_function(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_read(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 95, i32 noundef 7) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_write_keys_function(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_write(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 95, i32 noundef 7) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_read_keys_macro(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_read(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 35, i32 noundef 8) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_write_keys_macro(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_write(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 35, i32 noundef 8) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_read_keys_thumbster(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_read(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 23, i32 noundef 9) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_write_keys_thumbster(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_write(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 23, i32 noundef 9) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_read_keys_extra(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_read(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 8, i32 noundef 10) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_write_keys_extra(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_write(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 8, i32 noundef 10) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_read_keys_easyzone(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_read(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 294, i32 noundef 11) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_write_keys_easyzone(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_write(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 294, i32 noundef 11) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_read_key_mask(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_read(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 6, i32 noundef 12) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_write_key_mask(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_write(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 6, i32 noundef 12) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_read_light(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_read(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 16, i32 noundef 13) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_write_light(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_write(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 16, i32 noundef 13) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_read_macro(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_read(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 2002, i32 noundef 14) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_write_macro(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_write(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 2002, i32 noundef 14) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_read_info(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_read(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 8, i32 noundef 15) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_write_reset(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_write(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 3, i32 noundef 17) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_write_light_control(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_write(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 8, i32 noundef 19) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_write_talk(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_write(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 16, i32 noundef 22) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_read_stored_lights(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_read(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 1382, i32 noundef 23) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_write_stored_lights(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_write(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 1382, i32 noundef 23) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_write_custom_lights(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_write(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 20, i32 noundef 24) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_read_light_macro(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_read(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 2002, i32 noundef 25) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @roccat_common2_sysfs_write_light_macro(ptr noundef %fp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @roccat_common2_sysfs_write(ptr noundef %fp, ptr noundef %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef 2002, i32 noundef 25) #5
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__initcall__kmod_hid_roccat_ryos__232_236_ryos_init6, !1, !"__initcall__kmod_hid_roccat_ryos__232_236_ryos_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 236, i32 1}
!2 = !{ptr @__exitcall_ryos_exit, !3, !"__exitcall_ryos_exit", i1 false, i1 false}
!3 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 237, i32 1}
!4 = !{ptr @__UNIQUE_ID_author233, !5, !"__UNIQUE_ID_author233", i1 false, i1 false}
!5 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 239, i32 1}
!6 = !{ptr @__UNIQUE_ID_description234, !7, !"__UNIQUE_ID_description234", i1 false, i1 false}
!7 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 240, i32 1}
!8 = !{ptr @__UNIQUE_ID_file235, !9, !"__UNIQUE_ID_file235", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 241, i32 1}
!10 = !{ptr @__UNIQUE_ID_license236, !9, !"__UNIQUE_ID_license236", i1 false, i1 false}
!11 = !{ptr @ryos_class, !12, !"ryos_class", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 31, i32 22}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 208, i32 11}
!15 = !{ptr @ryos_driver, !16, !"ryos_driver", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 207, i32 26}
!17 = !{ptr @ryos_devices, !18, !"ryos_devices", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 198, i32 35}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 149, i32 3}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ryos_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @ryos_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 155, i32 3}
!29 = !{ptr @ryos_probe._entry.6, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ryos_probe._entry_ptr.8, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 161, i32 3}
!33 = !{ptr @ryos_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ryos_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 98, i32 3}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ryos_init_specials._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @ryos_init_specials._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 105, i32 3}
!42 = !{ptr @ryos_init_specials._entry.14, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ryos_init_specials._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 112, i32 3}
!46 = !{ptr @ryos_init_specials._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ryos_init_specials._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @ryos_init.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 219, i32 15}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 224, i32 11}
!52 = !{ptr @ryos_groups, !53, !"ryos_groups", i1 false, i1 false}
!53 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 78, i32 38}
!54 = !{ptr @ryos_group, !55, !"ryos_group", i1 false, i1 false}
!55 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 74, i32 37}
!56 = !{ptr @ryos_bin_attrs, !57, !"ryos_bin_attrs", i1 false, i1 false}
!57 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 52, i32 30}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 33, i32 1}
!60 = !{ptr @bin_attr_control, !59, !"bin_attr_control", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 34, i32 1}
!63 = !{ptr @bin_attr_profile, !62, !"bin_attr_profile", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 35, i32 1}
!66 = !{ptr @bin_attr_keys_primary, !65, !"bin_attr_keys_primary", i1 false, i1 false}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 36, i32 1}
!69 = !{ptr @bin_attr_keys_function, !68, !"bin_attr_keys_function", i1 false, i1 false}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 37, i32 1}
!72 = !{ptr @bin_attr_keys_macro, !71, !"bin_attr_keys_macro", i1 false, i1 false}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 38, i32 1}
!75 = !{ptr @bin_attr_keys_thumbster, !74, !"bin_attr_keys_thumbster", i1 false, i1 false}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 39, i32 1}
!78 = !{ptr @bin_attr_keys_extra, !77, !"bin_attr_keys_extra", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 40, i32 1}
!81 = !{ptr @bin_attr_keys_easyzone, !80, !"bin_attr_keys_easyzone", i1 false, i1 false}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 41, i32 1}
!84 = !{ptr @bin_attr_key_mask, !83, !"bin_attr_key_mask", i1 false, i1 false}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 42, i32 1}
!87 = !{ptr @bin_attr_light, !86, !"bin_attr_light", i1 false, i1 false}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 43, i32 1}
!90 = !{ptr @bin_attr_macro, !89, !"bin_attr_macro", i1 false, i1 false}
!91 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 44, i32 1}
!93 = !{ptr @bin_attr_info, !92, !"bin_attr_info", i1 false, i1 false}
!94 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 45, i32 1}
!96 = !{ptr @bin_attr_reset, !95, !"bin_attr_reset", i1 false, i1 false}
!97 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 46, i32 1}
!99 = !{ptr @bin_attr_light_control, !98, !"bin_attr_light_control", i1 false, i1 false}
!100 = !{ptr @.str.35, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 47, i32 1}
!102 = !{ptr @bin_attr_talk, !101, !"bin_attr_talk", i1 false, i1 false}
!103 = !{ptr @.str.36, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 48, i32 1}
!105 = !{ptr @bin_attr_stored_lights, !104, !"bin_attr_stored_lights", i1 false, i1 false}
!106 = !{ptr @.str.37, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 49, i32 1}
!108 = !{ptr @bin_attr_custom_lights, !107, !"bin_attr_custom_lights", i1 false, i1 false}
!109 = !{ptr @.str.38, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/hid/hid-roccat-ryos.c", i32 50, i32 1}
!111 = !{ptr @bin_attr_light_macro, !110, !"bin_attr_light_macro", i1 false, i1 false}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
