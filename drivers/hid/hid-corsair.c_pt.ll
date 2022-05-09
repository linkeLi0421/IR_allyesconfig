; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-corsair.c_pt.bc'
source_filename = "../drivers/hid/hid-corsair.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
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
%struct.corsair_drvdata = type { i32, ptr, ptr }
%struct.k90_led = type { %struct.led_classdev, i32, %struct.work_struct, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }

@__param_str_gkey_codes = internal constant [23 x i8] c"hid_corsair.gkey_codes\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_gkey_codes = internal constant %struct.kparam_array { i32 18, i32 2, ptr null, ptr @param_ops_ushort, ptr @corsair_gkey_map }, align 4
@__param_gkey_codes = internal constant %struct.kernel_param { ptr @__param_str_gkey_codes, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @__param_arr_gkey_codes } }, section "__param", align 4
@__UNIQUE_ID_gkey_codestype232 = internal constant [48 x i8] c"hid_corsair.parmtype=gkey_codes:array of ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_gkey_codes233 = internal constant [53 x i8] c"hid_corsair.parm=gkey_codes:Key codes for the G-keys\00", section ".modinfo", align 1
@__param_str_recordkey_codes = internal constant [28 x i8] c"hid_corsair.recordkey_codes\00", align 1
@__param_arr_recordkey_codes = internal constant %struct.kparam_array { i32 2, i32 2, ptr null, ptr @param_ops_ushort, ptr @corsair_record_keycodes }, align 4
@__param_recordkey_codes = internal constant %struct.kernel_param { ptr @__param_str_recordkey_codes, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @__param_arr_recordkey_codes } }, section "__param", align 4
@__UNIQUE_ID_recordkey_codestype234 = internal constant [53 x i8] c"hid_corsair.parmtype=recordkey_codes:array of ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_recordkey_codes235 = internal constant [85 x i8] c"hid_corsair.parm=recordkey_codes:Key codes for the MR (start and stop record) button\00", section ".modinfo", align 1
@__param_str_profilekey_codes = internal constant [29 x i8] c"hid_corsair.profilekey_codes\00", align 1
@__param_arr_profilekey_codes = internal constant %struct.kparam_array { i32 3, i32 2, ptr null, ptr @param_ops_ushort, ptr @corsair_profile_keycodes }, align 4
@__param_profilekey_codes = internal constant %struct.kernel_param { ptr @__param_str_profilekey_codes, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @__param_arr_profilekey_codes } }, section "__param", align 4
@__UNIQUE_ID_profilekey_codestype236 = internal constant [54 x i8] c"hid_corsair.parmtype=profilekey_codes:array of ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_profilekey_codes237 = internal constant [68 x i8] c"hid_corsair.parm=profilekey_codes:Key codes for the profile buttons\00", section ".modinfo", align 1
@__initcall__kmod_hid_corsair__238_749_corsair_driver_init6 = internal global ptr @corsair_driver_init, section ".initcall6.init", align 4
@corsair_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @corsair_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @corsair_probe, ptr @corsair_remove, ptr null, ptr null, ptr null, ptr @corsair_event, ptr null, ptr @corsair_mouse_report_fixup, ptr @corsair_input_mapping, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_corsair_driver_exit = internal global ptr @corsair_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file239 = internal constant [41 x i8] c"hid_corsair.file=drivers/hid/hid-corsair\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [24 x i8] c"hid_corsair.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [36 x i8] c"hid_corsair.author=Clement Vuchener\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [32 x i8] c"hid_corsair.author=Oscar Campos\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [55 x i8] c"hid_corsair.description=HID driver for Corsair devices\00", section ".modinfo", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@corsair_gkey_map = internal global { [18 x i16], [60 x i8] } { [18 x i16] [i16 704, i16 705, i16 706, i16 707, i16 708, i16 709, i16 710, i16 711, i16 712, i16 713, i16 714, i16 715, i16 716, i16 717, i16 718, i16 719, i16 720, i16 721], [60 x i8] zeroinitializer }, align 32
@corsair_record_keycodes = internal global { [2 x i16], [28 x i8] } { [2 x i16] [i16 722, i16 723], [28 x i8] zeroinitializer }, align 32
@corsair_profile_keycodes = internal global { [3 x i16], [26 x i8] } { [3 x i16] [i16 724, i16 725, i16 726], [26 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hid_corsair\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"corsair\00", [24 x i8] zeroinitializer }, align 32
@corsair_devices = internal constant { [5 x %struct.hid_device_id], [48 x i8] } { [5 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6914, i32 3 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6964, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6974, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6921, i32 0 }, %struct.hid_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@corsair_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 572, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"corsair_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/hid/hid-corsair.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@corsair_probe._entry_ptr = internal global ptr @corsair_probe._entry, section ".printk_index", align 4
@corsair_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 577, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@corsair_probe._entry_ptr.9 = internal global ptr @corsair_probe._entry.7, section ".printk_index", align 4
@corsair_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 585, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to initialize K90 macro functions.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@corsair_probe._entry_ptr.13 = internal global ptr @corsair_probe._entry.10, section ".printk_index", align 4
@corsair_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 590, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to initialize K90 backlight.\0A\00", [59 x i8] zeroinitializer }, align 32
@corsair_probe._entry_ptr.16 = internal global ptr @corsair_probe._entry.14, section ".printk_index", align 4
@usb_hid_driver = external dso_local global %struct.hid_ll_driver, align 4
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s::record\00", [21 x i8] zeroinitializer }, align 32
@k90_init_macro_functions.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&k90->record_led.work)\00", [55 x i8] zeroinitializer }, align 32
@k90_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @k90_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@k90_record_led_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 254, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to set record LED state (error: %d).\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"k90_record_led_work\00", [44 x i8] zeroinitializer }, align 32
@k90_record_led_work._entry_ptr = internal global ptr @k90_record_led_work._entry, section ".printk_index", align 4
@k90_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_macro_mode, ptr @dev_attr_current_profile, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_macro_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @k90_show_macro_mode, ptr @k90_store_macro_mode }, [36 x i8] zeroinitializer }, align 32
@dev_attr_current_profile = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @k90_show_current_profile, ptr @k90_store_current_profile }, [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"macro_mode\00", [21 x i8] zeroinitializer }, align 32
@k90_show_macro_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 281, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to get K90 initial mode (error %d).\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"k90_show_macro_mode\00", [44 x i8] zeroinitializer }, align 32
@k90_show_macro_mode._entry_ptr = internal global ptr @k90_show_macro_mode._entry, section ".printk_index", align 4
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HW\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SW\00", [29 x i8] zeroinitializer }, align 32
@k90_show_macro_mode._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.23, ptr @.str.4, i32 296, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"K90 in unknown mode: %02hhx.\0A\00", [34 x i8] zeroinitializer }, align 32
@k90_show_macro_mode._entry_ptr.28 = internal global ptr @k90_show_macro_mode._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@k90_store_macro_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 330, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set macro mode.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"k90_store_macro_mode\00", [43 x i8] zeroinitializer }, align 32
@k90_store_macro_mode._entry_ptr = internal global ptr @k90_store_macro_mode._entry, section ".printk_index", align 4
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"current_profile\00", [16 x i8] zeroinitializer }, align 32
@k90_show_current_profile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 358, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to get K90 initial state (error %d).\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"k90_show_current_profile\00", [39 x i8] zeroinitializer }, align 32
@k90_show_current_profile._entry_ptr = internal global ptr @k90_show_current_profile._entry, section ".printk_index", align 4
@k90_show_current_profile._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.4, i32 365, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Read invalid current profile: %02hhx.\0A\00", [57 x i8] zeroinitializer }, align 32
@k90_show_current_profile._entry_ptr.37 = internal global ptr @k90_show_current_profile._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@k90_store_current_profile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 398, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to change current profile (error %d).\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"k90_store_current_profile\00", [38 x i8] zeroinitializer }, align 32
@k90_store_current_profile._entry_ptr = internal global ptr @k90_store_current_profile._entry, section ".printk_index", align 4
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s::backlight\00", [18 x i8] zeroinitializer }, align 32
@k90_init_backlight.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&drvdata->backlight->work)\00", [51 x i8] zeroinitializer }, align 32
@k90_backlight_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.43, ptr @.str.4, i32 166, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"k90_backlight_get\00", [46 x i8] zeroinitializer }, align 32
@k90_backlight_get._entry_ptr = internal global ptr @k90_backlight_get._entry, section ".printk_index", align 4
@k90_backlight_get._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.4, i32 174, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Read invalid backlight brightness: %02hhx.\0A\00", [52 x i8] zeroinitializer }, align 32
@k90_backlight_get._entry_ptr.46 = internal global ptr @k90_backlight_get._entry.44, section ".printk_index", align 4
@k90_backlight_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 223, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to set backlight brightness (error: %d).\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"k90_backlight_work\00", [45 x i8] zeroinitializer }, align 32
@k90_backlight_work._entry_ptr = internal global ptr @k90_backlight_work._entry, section ".printk_index", align 4
@corsair_mouse_report_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 711, ptr @.str.51, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Fixing up report descriptor\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"corsair_mouse_report_fixup\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@corsair_mouse_report_fixup._entry_ptr = internal global ptr @corsair_mouse_report_fixup._entry, section ".printk_index", align 4
@hid_map_usage._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.52, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.hid_map_usage = private unnamed_addr constant [14 x i8] c"hid_map_usage\00", align 1
@hid_map_usage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @__func__.hid_map_usage, ptr @.str.54, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: Invalid code %d type %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@hid_map_usage._entry_ptr = internal global ptr @hid_map_usage._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 246, i64 247]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 6964, i64 6974]
@__sancov_gen_cov_switch_values.56 = internal global [7 x i64] [i64 5, i64 16, i64 241, i64 242, i64 243, i64 246, i64 247]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 48]
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"corsair_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 739, i32 26 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"corsair_gkey_map\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 59, i32 23 }
@___asan_gen_.64 = private unnamed_addr constant [24 x i8] c"corsair_record_keycodes\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 83, i32 23 }
@___asan_gen_.67 = private unnamed_addr constant [25 x i8] c"corsair_profile_keycodes\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 92, i32 23 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 749, i32 1 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 740, i32 10 }
@___asan_gen_.76 = private unnamed_addr constant [16 x i8] c"corsair_devices\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 721, i32 35 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 572, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 577, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 585, i32 5 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 590, i32 5 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 488, i32 26 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 495, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [15 x i8] c"k90_attr_group\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 415, i32 37 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 253, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [10 x i8] c"k90_attrs\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 409, i32 26 }
@___asan_gen_.142 = private unnamed_addr constant [20 x i8] c"dev_attr_macro_mode\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [25 x i8] c"dev_attr_current_profile\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 405, i32 8 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 280, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 288, i32 16 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 292, i32 16 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 295, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 301, i32 33 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 330, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 406, i32 8 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 357, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 364, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 370, i32 33 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 397, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 443, i32 26 }
@___asan_gen_.217 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 450, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 165, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 172, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 222, i32 3 }
@___asan_gen_.254 = private constant [29 x i8] c"../drivers/hid/hid-corsair.c\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 711, i32 5 }
@___asan_gen_.256 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1036, i32 3 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_gkey_codes233, ptr @__UNIQUE_ID_gkey_codestype232, ptr @__UNIQUE_ID_license240, ptr @__UNIQUE_ID_profilekey_codes237, ptr @__UNIQUE_ID_profilekey_codestype236, ptr @__UNIQUE_ID_recordkey_codes235, ptr @__UNIQUE_ID_recordkey_codestype234, ptr @__exitcall_corsair_driver_exit, ptr @__initcall__kmod_hid_corsair__238_749_corsair_driver_init6, ptr @__param_gkey_codes, ptr @__param_profilekey_codes, ptr @__param_recordkey_codes, ptr @corsair_driver_exit, ptr @corsair_mouse_report_fixup._entry, ptr @corsair_mouse_report_fixup._entry_ptr, ptr @corsair_probe._entry, ptr @corsair_probe._entry.10, ptr @corsair_probe._entry.14, ptr @corsair_probe._entry.7, ptr @corsair_probe._entry_ptr, ptr @corsair_probe._entry_ptr.13, ptr @corsair_probe._entry_ptr.16, ptr @corsair_probe._entry_ptr.9, ptr @hid_map_usage._entry, ptr @hid_map_usage._entry_ptr, ptr @k90_backlight_get._entry, ptr @k90_backlight_get._entry.44, ptr @k90_backlight_get._entry_ptr, ptr @k90_backlight_get._entry_ptr.46, ptr @k90_backlight_work._entry, ptr @k90_backlight_work._entry_ptr, ptr @k90_record_led_work._entry, ptr @k90_record_led_work._entry_ptr, ptr @k90_show_current_profile._entry, ptr @k90_show_current_profile._entry.35, ptr @k90_show_current_profile._entry_ptr, ptr @k90_show_current_profile._entry_ptr.37, ptr @k90_show_macro_mode._entry, ptr @k90_show_macro_mode._entry.26, ptr @k90_show_macro_mode._entry_ptr, ptr @k90_show_macro_mode._entry_ptr.28, ptr @k90_store_current_profile._entry, ptr @k90_store_current_profile._entry_ptr, ptr @k90_store_macro_mode._entry, ptr @k90_store_macro_mode._entry_ptr, ptr @corsair_driver, ptr @corsair_gkey_map, ptr @corsair_record_keycodes, ptr @corsair_profile_keycodes, ptr @.str, ptr @.str.1, ptr @corsair_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @k90_init_macro_functions.__key, ptr @.str.18, ptr @k90_attr_group, ptr @.str.19, ptr @.str.20, ptr @k90_attrs, ptr @dev_attr_macro_mode, ptr @dev_attr_current_profile, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @k90_init_backlight.__key, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @hid_map_usage._rs, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @corsair_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @corsair_gkey_map to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @corsair_record_keycodes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @corsair_profile_keycodes to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @corsair_devices to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @corsair_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @corsair_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @corsair_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @corsair_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k90_init_macro_functions.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k90_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k90_record_led_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k90_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_macro_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_current_profile to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k90_show_macro_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k90_show_macro_mode._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k90_store_macro_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k90_show_current_profile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k90_show_current_profile._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k90_store_current_profile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k90_init_backlight.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k90_backlight_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k90_backlight_get._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k90_backlight_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @corsair_mouse_report_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @corsair_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @corsair_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @corsair_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @hid_unregister_driver(ptr noundef nonnull @corsair_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @corsair_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 4
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %ll_driver.i.i = getelementptr inbounds %struct.hid_device, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %ll_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ll_driver.i.i, align 4
  %cmp.i.i = icmp eq ptr %3, @usb_hid_driver
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.hid_device, ptr %dev, i32 0, i32 18
  %parent = getelementptr inbounds %struct.hid_device, ptr %dev, i32 0, i32 18, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #12
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %dev, i32 0, i32 18, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i71 = tail call i32 @hid_open_report(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %cmp8.not = icmp eq i32 %call.i71, 0
  br i1 %cmp8.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #15
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %call12 = tail call i32 @hid_hw_start(ptr noundef %dev, i32 noundef 45) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #15
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %cur_altsetting = getelementptr i8, ptr %5, i32 -28
  %8 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp20 = icmp eq i8 %11, 0
  br i1 %cmp20, label %if.then22, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then22:                                        ; preds = %if.end19
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then22.if.end33_crit_edge, label %if.then23

if.then22.if.end33_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then23:                                        ; preds = %if.then22
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 452) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then23.do.end30_crit_edge, label %if.end.i

if.then23.do.end30_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

if.end.i:                                         ; preds = %if.then23
  %k902.i = getelementptr inbounds %struct.corsair_drvdata, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %k902.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i.i, ptr %k902.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.hid_device, ptr %dev, i32 0, i32 18, i32 3
  %16 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.dev_name.exit.i_crit_edge

if.end.i.dev_name.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %19, %if.end.i.i ], [ %17, %if.end.i.dev_name.exit.i_crit_edge ]
  %call5.i = tail call i32 @strlen(ptr noundef %retval.0.i.i) #17
  %add.i = add i32 %call5.i, 9
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #18
  %tobool7.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool7.not.i, label %dev_name.exit.i.fail_record_led_alloc.i_crit_edge, label %if.end9.i

dev_name.exit.i.fail_record_led_alloc.i_crit_edge: ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_record_led_alloc.i

if.end9.i:                                        ; preds = %dev_name.exit.i
  %20 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i88.i = icmp eq ptr %21, null
  br i1 %tobool.not.i88.i, label %if.end.i89.i, label %if.end9.i.dev_name.exit91.i_crit_edge

if.end9.i.dev_name.exit91.i_crit_edge:            ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit91.i

if.end.i89.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit91.i

dev_name.exit91.i:                                ; preds = %if.end.i89.i, %if.end9.i.dev_name.exit91.i_crit_edge
  %retval.0.i90.i = phi ptr [ %23, %if.end.i89.i ], [ %21, %if.end9.i.dev_name.exit91.i_crit_edge ]
  %call12.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call9.i.i.i, i32 noundef %add.i, ptr noundef nonnull @.str.17, ptr noundef %retval.0.i90.i) #12
  %removed.i = getelementptr inbounds %struct.k90_led, ptr %call7.i.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %removed.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %removed.i, align 8
  %25 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call9.i.i.i, ptr %call7.i.i.i, align 8
  %max_brightness.i = getelementptr inbounds %struct.led_classdev, ptr %call7.i.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %max_brightness.i, align 8
  %brightness_set.i = getelementptr inbounds %struct.led_classdev, ptr %call7.i.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %brightness_set.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @k90_brightness_set, ptr %brightness_set.i, align 4
  %brightness_get.i = getelementptr inbounds %struct.led_classdev, ptr %call7.i.i.i, i32 0, i32 7
  %28 = ptrtoint ptr %brightness_get.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @k90_record_led_get, ptr %brightness_get.i, align 4
  %work.i = getelementptr inbounds %struct.k90_led, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #12
  %29 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -64, ptr %work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.k90_led, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @k90_init_macro_functions.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry28.i = getelementptr inbounds %struct.k90_led, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %entry28.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %entry28.i, ptr %entry28.i, align 8
  %prev.i.i = getelementptr inbounds %struct.k90_led, ptr %call7.i.i.i, i32 0, i32 2, i32 1, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %entry28.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.k90_led, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @k90_record_led_work, ptr %func.i, align 8
  %brightness.i = getelementptr inbounds %struct.k90_led, ptr %call7.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %brightness.i, align 8
  %call.i.i = tail call i32 @led_classdev_register_ext(ptr noundef %dev1, ptr noundef nonnull %call7.i.i.i, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %if.end37.i, label %dev_name.exit91.i.fail_record_led.i_crit_edge

dev_name.exit91.i.fail_record_led.i_crit_edge:    ; preds = %dev_name.exit91.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_record_led.i

if.end37.i:                                       ; preds = %dev_name.exit91.i
  %call39.i = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @k90_attr_group) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %cmp40.not.i = icmp eq i32 %call39.i, 0
  br i1 %cmp40.not.i, label %if.end37.i.if.end33_crit_edge, label %fail_sysfs.i

if.end37.i.if.end33_crit_edge:                    ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

fail_sysfs.i:                                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %removed.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %removed.i, align 8
  tail call void @led_classdev_unregister(ptr noundef nonnull %call7.i.i.i) #12
  %call49.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.i) #12
  br label %fail_record_led.i

fail_record_led.i:                                ; preds = %fail_sysfs.i, %dev_name.exit91.i.fail_record_led.i_crit_edge
  %35 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call7.i.i.i, align 8
  tail call void @kfree(ptr noundef %36) #12
  br label %fail_record_led_alloc.i

fail_record_led_alloc.i:                          ; preds = %fail_record_led.i, %dev_name.exit.i.fail_record_led_alloc.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %do.end30

do.end30:                                         ; preds = %fail_record_led_alloc.i, %if.then23.do.end30_crit_edge
  %k9053.i = getelementptr inbounds %struct.corsair_drvdata, ptr %13, i32 0, i32 1
  %37 = ptrtoint ptr %k9053.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %k9053.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.11) #15
  br label %if.end33

if.end33:                                         ; preds = %do.end30, %if.end37.i.if.end33_crit_edge, %if.then22.if.end33_crit_edge
  %and34 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.cleanup_crit_edge, label %if.then36

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then36:                                        ; preds = %if.end33
  %38 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i73 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 452) #16
  %backlight.i = getelementptr inbounds %struct.corsair_drvdata, ptr %39, i32 0, i32 2
  %41 = ptrtoint ptr %backlight.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i.i73, ptr %backlight.i, align 4
  %tobool.not.i74 = icmp eq ptr %call7.i.i.i73, null
  br i1 %tobool.not.i74, label %if.then36.do.end43_crit_edge, label %if.end.i78

if.then36.do.end43_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43

if.end.i78:                                       ; preds = %if.then36
  %init_name.i.i76 = getelementptr inbounds %struct.hid_device, ptr %dev, i32 0, i32 18, i32 3
  %42 = ptrtoint ptr %init_name.i.i76 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %init_name.i.i76, align 8
  %tobool.not.i.i77 = icmp eq ptr %43, null
  br i1 %tobool.not.i.i77, label %if.end.i.i79, label %if.end.i78.dev_name.exit.i83_crit_edge

if.end.i78.dev_name.exit.i83_crit_edge:           ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i83

if.end.i.i79:                                     ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.i83

dev_name.exit.i83:                                ; preds = %if.end.i.i79, %if.end.i78.dev_name.exit.i83_crit_edge
  %retval.0.i.i80 = phi ptr [ %45, %if.end.i.i79 ], [ %43, %if.end.i78.dev_name.exit.i83_crit_edge ]
  %call5.i81 = tail call i32 @strlen(ptr noundef %retval.0.i.i80) #17
  %add.i82 = add i32 %call5.i81, 12
  %call9.i.i.i108 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i82, i32 noundef 3520) #18
  %tobool7.not.i111 = icmp eq ptr %call9.i.i.i108, null
  br i1 %tobool7.not.i111, label %dev_name.exit.i83.fail_name_alloc.i_crit_edge, label %if.end9.i113

dev_name.exit.i83.fail_name_alloc.i_crit_edge:    ; preds = %dev_name.exit.i83
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_name_alloc.i

if.end9.i113:                                     ; preds = %dev_name.exit.i83
  %46 = ptrtoint ptr %init_name.i.i76 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i.i76, align 8
  %tobool.not.i70.i = icmp eq ptr %47, null
  br i1 %tobool.not.i70.i, label %if.end.i71.i, label %if.end9.i113.dev_name.exit73.i_crit_edge

if.end9.i113.dev_name.exit73.i_crit_edge:         ; preds = %if.end9.i113
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit73.i

if.end.i71.i:                                     ; preds = %if.end9.i113
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit73.i

dev_name.exit73.i:                                ; preds = %if.end.i71.i, %if.end9.i113.dev_name.exit73.i_crit_edge
  %retval.0.i72.i = phi ptr [ %49, %if.end.i71.i ], [ %47, %if.end9.i113.dev_name.exit73.i_crit_edge ]
  %call12.i114 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call9.i.i.i108, i32 noundef %add.i82, ptr noundef nonnull @.str.41, ptr noundef %retval.0.i72.i) #12
  %50 = ptrtoint ptr %backlight.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %backlight.i, align 4
  %removed.i115 = getelementptr inbounds %struct.k90_led, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %removed.i115 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %removed.i115, align 4
  %53 = load ptr, ptr %backlight.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call9.i.i.i108, ptr %53, align 4
  %55 = load ptr, ptr %backlight.i, align 4
  %max_brightness.i116 = getelementptr inbounds %struct.led_classdev, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %max_brightness.i116 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 3, ptr %max_brightness.i116, align 4
  %57 = load ptr, ptr %backlight.i, align 4
  %brightness_set.i117 = getelementptr inbounds %struct.led_classdev, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %brightness_set.i117 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @k90_brightness_set, ptr %brightness_set.i117, align 4
  %59 = load ptr, ptr %backlight.i, align 4
  %brightness_get.i118 = getelementptr inbounds %struct.led_classdev, ptr %59, i32 0, i32 7
  %60 = ptrtoint ptr %brightness_get.i118 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @k90_backlight_get, ptr %brightness_get.i118, align 4
  %61 = load ptr, ptr %backlight.i, align 4
  %work.i119 = getelementptr inbounds %struct.k90_led, ptr %61, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work.i119, i32 noundef 0) #12
  %62 = ptrtoint ptr %backlight.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %backlight.i, align 4
  %work24.i = getelementptr inbounds %struct.k90_led, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %work24.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -64, ptr %work24.i, align 4
  %65 = load ptr, ptr %backlight.i, align 4
  %lockdep_map.i120 = getelementptr inbounds %struct.k90_led, ptr %65, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i120, ptr noundef nonnull @.str.42, ptr noundef nonnull @k90_init_backlight.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %66 = ptrtoint ptr %backlight.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %backlight.i, align 4
  %entry29.i = getelementptr inbounds %struct.k90_led, ptr %67, i32 0, i32 2, i32 1
  %68 = ptrtoint ptr %entry29.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %entry29.i, ptr %entry29.i, align 4
  %prev.i.i121 = getelementptr inbounds %struct.k90_led, ptr %67, i32 0, i32 2, i32 1, i32 1
  %69 = ptrtoint ptr %prev.i.i121 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %entry29.i, ptr %prev.i.i121, align 4
  %70 = load ptr, ptr %backlight.i, align 4
  %func.i122 = getelementptr inbounds %struct.k90_led, ptr %70, i32 0, i32 2, i32 2
  %71 = ptrtoint ptr %func.i122 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @k90_backlight_work, ptr %func.i122, align 4
  %72 = load ptr, ptr %backlight.i, align 4
  %call.i.i123 = tail call i32 @led_classdev_register_ext(ptr noundef %dev1, ptr noundef %72, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i123)
  %cmp.not.i124 = icmp eq i32 %call.i.i123, 0
  br i1 %cmp.not.i124, label %dev_name.exit73.i.cleanup_crit_edge, label %fail_register_cdev.i

dev_name.exit73.i.cleanup_crit_edge:              ; preds = %dev_name.exit73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

fail_register_cdev.i:                             ; preds = %dev_name.exit73.i
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %backlight.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %backlight.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  tail call void @kfree(ptr noundef %76) #12
  br label %fail_name_alloc.i

fail_name_alloc.i:                                ; preds = %fail_register_cdev.i, %dev_name.exit.i83.fail_name_alloc.i_crit_edge
  %77 = ptrtoint ptr %backlight.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %backlight.i, align 4
  tail call void @kfree(ptr noundef %78) #12
  %79 = ptrtoint ptr %backlight.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %backlight.i, align 4
  br label %do.end43

do.end43:                                         ; preds = %fail_name_alloc.i, %if.then36.do.end43_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.15) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %dev_name.exit73.i.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %do.end17, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i71, %do.end ], [ %call12, %do.end17 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ], [ 0, %do.end43 ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %dev_name.exit73.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @corsair_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %dev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %k901.i = getelementptr inbounds %struct.corsair_drvdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %k901.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %k901.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.k90_cleanup_macro_functions.exit_crit_edge, label %if.then.i

entry.k90_cleanup_macro_functions.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %k90_cleanup_macro_functions.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev2.i = getelementptr inbounds %struct.hid_device, ptr %dev, i32 0, i32 18
  tail call void @sysfs_remove_group(ptr noundef %dev2.i, ptr noundef nonnull @k90_attr_group) #12
  %removed.i = getelementptr inbounds %struct.k90_led, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %removed.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %removed.i, align 4
  tail call void @led_classdev_unregister(ptr noundef nonnull %3) #12
  %work.i = getelementptr inbounds %struct.k90_led, ptr %3, i32 0, i32 2
  %call5.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.i) #12
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %6) #12
  tail call void @kfree(ptr noundef nonnull %3) #12
  br label %k90_cleanup_macro_functions.exit

k90_cleanup_macro_functions.exit:                 ; preds = %if.then.i, %entry.k90_cleanup_macro_functions.exit_crit_edge
  %7 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i, align 4
  %backlight.i = getelementptr inbounds %struct.corsair_drvdata, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %backlight.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %backlight.i, align 4
  %tobool.not.i4 = icmp eq ptr %10, null
  br i1 %tobool.not.i4, label %k90_cleanup_macro_functions.exit.k90_cleanup_backlight.exit_crit_edge, label %if.then.i7

k90_cleanup_macro_functions.exit.k90_cleanup_backlight.exit_crit_edge: ; preds = %k90_cleanup_macro_functions.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %k90_cleanup_backlight.exit

if.then.i7:                                       ; preds = %k90_cleanup_macro_functions.exit
  call void @__sanitizer_cov_trace_pc() #14
  %removed.i5 = getelementptr inbounds %struct.k90_led, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %removed.i5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %removed.i5, align 4
  %12 = ptrtoint ptr %backlight.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %backlight.i, align 4
  tail call void @led_classdev_unregister(ptr noundef %13) #12
  %14 = ptrtoint ptr %backlight.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %backlight.i, align 4
  %work.i6 = getelementptr inbounds %struct.k90_led, ptr %15, i32 0, i32 2
  %call4.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.i6) #12
  %16 = ptrtoint ptr %backlight.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %backlight.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  tail call void @kfree(ptr noundef %19) #12
  %20 = ptrtoint ptr %backlight.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %backlight.i, align 4
  tail call void @kfree(ptr noundef %21) #12
  br label %k90_cleanup_backlight.exit

k90_cleanup_backlight.exit:                       ; preds = %if.then.i7, %k90_cleanup_macro_functions.exit.k90_cleanup_backlight.exit_crit_edge
  tail call void @hid_hw_stop(ptr noundef %dev) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @corsair_event(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %field, ptr nocapture noundef readonly %usage, i32 noundef %value) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %dev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %k90 = getelementptr inbounds %struct.corsair_drvdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %k90 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %k90, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usage, align 4
  %trunc = trunc i32 %5 to i16
  %6 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %if.end.cleanup_crit_edge [
    i16 246, label %if.end.cleanup.sink.split_crit_edge
    i16 247, label %sw.bb2
  ]

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb2 ], [ 1, %if.end.cleanup.sink.split_crit_edge ]
  %brightness = getelementptr inbounds %struct.k90_led, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %brightness, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @corsair_mouse_report_fixup(ptr noundef %hdev, ptr noundef returned %rdesc, ptr nocapture noundef readonly %rsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %parent = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %cur_altsetting = getelementptr i8, ptr %1, i32 -28
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %if.then, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then:                                          ; preds = %entry
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %6 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %product, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %7, label %if.then.if.end25_crit_edge [
    i32 6964, label %if.then.sw.bb_crit_edge
    i32 6974, label %if.then.sw.bb_crit_edge33
  ]

if.then.sw.bb_crit_edge33:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.then.if.end25_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge33
  %9 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 171, i32 %10)
  %cmp2 = icmp ugt i32 %10, 171
  br i1 %cmp2, label %land.lhs.true, label %sw.bb.if.end25_crit_edge

sw.bb.if.end25_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

land.lhs.true:                                    ; preds = %sw.bb
  %arrayidx = getelementptr i8, ptr %rdesc, i32 75
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %12)
  %cmp5 = icmp eq i8 %12, 21
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

land.lhs.true7:                                   ; preds = %land.lhs.true
  %arrayidx8 = getelementptr i8, ptr %rdesc, i32 77
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %14)
  %cmp10 = icmp eq i8 %14, 22
  br i1 %cmp10, label %land.lhs.true12, label %land.lhs.true7.if.end25_crit_edge

land.lhs.true7.if.end25_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

land.lhs.true12:                                  ; preds = %land.lhs.true7
  %arrayidx13 = getelementptr i8, ptr %rdesc, i32 78
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp15 = icmp eq i8 %16, -1
  br i1 %cmp15, label %land.lhs.true17, label %land.lhs.true12.if.end25_crit_edge

land.lhs.true12.if.end25_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

land.lhs.true17:                                  ; preds = %land.lhs.true12
  %arrayidx18 = getelementptr i8, ptr %rdesc, i32 79
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %18)
  %cmp20 = icmp eq i8 %18, 15
  br i1 %cmp20, label %do.end, label %land.lhs.true17.if.end25_crit_edge

land.lhs.true17.if.end25_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

do.end:                                           ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.49) #15
  %19 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 38, ptr %arrayidx8, align 1
  br label %if.end25

if.end25:                                         ; preds = %do.end, %land.lhs.true17.if.end25_crit_edge, %land.lhs.true12.if.end25_crit_edge, %land.lhs.true7.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %sw.bb.if.end25_crit_edge, %if.then.if.end25_crit_edge, %entry.if.end25_crit_edge
  ret ptr %rdesc
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @corsair_input_mapping(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %input, ptr nocapture noundef readnone %field, ptr nocapture noundef %usage, ptr nocapture noundef %bit, ptr nocapture noundef writeonly %max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usage, align 4
  %and = and i32 %1, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 458752, i32 %and)
  %cmp.not = icmp eq i32 %and, 458752
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %1, 65535
  %2 = and i32 %1, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 208, i32 %2)
  %3 = icmp eq i32 %2, 208
  br i1 %3, label %corsair_usage_to_gkey.exit.thread50, label %if.end.i

corsair_usage_to_gkey.exit.thread50:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.i = add nsw i32 %and2, -207
  br label %if.then4

if.end.i:                                         ; preds = %if.end
  %4 = and i32 %1, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 232, i32 %4)
  %5 = icmp eq i32 %4, 232
  br i1 %5, label %corsair_usage_to_gkey.exit, label %if.end5

corsair_usage_to_gkey.exit:                       ; preds = %if.end.i
  %add7.i = add nsw i32 %and2, -215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add7.i)
  %cmp3.not = icmp eq i32 %add7.i, 0
  br i1 %cmp3.not, label %corsair_usage_to_gkey.exit.cleanup_crit_edge, label %corsair_usage_to_gkey.exit.if.then4_crit_edge

corsair_usage_to_gkey.exit.if.then4_crit_edge:    ; preds = %corsair_usage_to_gkey.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

corsair_usage_to_gkey.exit.cleanup_crit_edge:     ; preds = %corsair_usage_to_gkey.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %corsair_usage_to_gkey.exit.if.then4_crit_edge, %corsair_usage_to_gkey.exit.thread50
  %retval.0.i53 = phi i32 [ %add.i, %corsair_usage_to_gkey.exit.thread50 ], [ %add7.i, %corsair_usage_to_gkey.exit.if.then4_crit_edge ]
  %sub = add nsw i32 %retval.0.i53, -1
  %arrayidx = getelementptr [18 x i16], ptr @corsair_gkey_map, i32 0, i32 %sub
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %conv.i = zext i16 %7 to i32
  %input1.i.i = getelementptr inbounds %struct.hid_input, ptr %input, i32 0, i32 2
  %8 = ptrtoint ptr %input1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %7)
  %cmp.i.i = icmp ugt i16 %7, 767
  br i1 %cmp.i.i, label %if.then.i.i, label %hid_map_usage.exit.i, !prof !164

if.then.i.i:                                      ; preds = %if.then4
  %call.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @hid_map_usage._rs, ptr noundef nonnull @__func__.hid_map_usage) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool14.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool14.not.i.i, label %if.then.i.i.hid_map_usage.exit.thread.i_crit_edge, label %do.end.i.i

if.then.i.i.hid_map_usage.exit.thread.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hid_map_usage.exit.thread.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %call17.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %11, i32 noundef %conv.i, i32 noundef 1) #15
  br label %hid_map_usage.exit.thread.i

hid_map_usage.exit.thread.i:                      ; preds = %do.end.i.i, %if.then.i.i.hid_map_usage.exit.thread.i_crit_edge
  %12 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %bit, align 4
  br label %cleanup

hid_map_usage.exit.i:                             ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %keybit.i.i = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 6
  %type19.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %13 = ptrtoint ptr %type19.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %type19.i.i, align 4
  %code.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %14 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %7, ptr %code.i.i, align 2
  %15 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 767, ptr %max, align 4
  %16 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %keybit.i.i, ptr %bit, align 4
  %17 = load i16, ptr %code.i.i, align 2
  %conv1.i = zext i16 %17 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i, ptr noundef nonnull %keybit.i.i) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %2)
  %18 = icmp eq i32 %2, 240
  br i1 %18, label %if.then12, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12:                                        ; preds = %if.end5
  %trunc = trunc i32 %1 to i16
  %19 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.56)
  switch i16 %trunc, label %if.then12.cleanup_crit_edge [
    i16 246, label %sw.bb
    i16 247, label %sw.bb15
    i16 241, label %sw.bb16
    i16 242, label %sw.bb17
    i16 243, label %sw.bb18
  ]

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %20 = load i16, ptr @corsair_record_keycodes, align 2
  tail call fastcc void @hid_map_usage_clear(ptr noundef %input, ptr noundef %usage, ptr noundef %bit, ptr noundef %max, i16 noundef zeroext %20)
  br label %cleanup

sw.bb15:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %21 = load i16, ptr getelementptr inbounds ([2 x i16], ptr @corsair_record_keycodes, i32 0, i32 1), align 2
  tail call fastcc void @hid_map_usage_clear(ptr noundef %input, ptr noundef %usage, ptr noundef %bit, ptr noundef %max, i16 noundef zeroext %21)
  br label %cleanup

sw.bb16:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %22 = load i16, ptr @corsair_profile_keycodes, align 2
  tail call fastcc void @hid_map_usage_clear(ptr noundef %input, ptr noundef %usage, ptr noundef %bit, ptr noundef %max, i16 noundef zeroext %22)
  br label %cleanup

sw.bb17:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %23 = load i16, ptr getelementptr inbounds ([3 x i16], ptr @corsair_profile_keycodes, i32 0, i32 1), align 2
  tail call fastcc void @hid_map_usage_clear(ptr noundef %input, ptr noundef %usage, ptr noundef %bit, ptr noundef %max, i16 noundef zeroext %23)
  br label %cleanup

sw.bb18:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %24 = load i16, ptr getelementptr inbounds ([3 x i16], ptr @corsair_profile_keycodes, i32 0, i32 2), align 2
  tail call fastcc void @hid_map_usage_clear(ptr noundef %input, ptr noundef %usage, ptr noundef %bit, ptr noundef %max, i16 noundef zeroext %24)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb, %if.then12.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %hid_map_usage.exit.i, %hid_map_usage.exit.thread.i, %corsair_usage_to_gkey.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb18 ], [ 1, %sw.bb17 ], [ 1, %sw.bb16 ], [ 1, %sw.bb15 ], [ 1, %sw.bb ], [ 0, %entry.cleanup_crit_edge ], [ -1, %if.then12.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 1, %hid_map_usage.exit.thread.i ], [ 1, %hid_map_usage.exit.i ], [ 0, %corsair_usage_to_gkey.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k90_brightness_set(ptr noundef %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %brightness1 = getelementptr inbounds %struct.k90_led, ptr %led_cdev, i32 0, i32 1
  %0 = ptrtoint ptr %brightness1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %brightness, ptr %brightness1, align 4
  %work = getelementptr inbounds %struct.k90_led, ptr %led_cdev, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %work) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @k90_record_led_get(ptr nocapture noundef readonly %led_cdev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %brightness = getelementptr inbounds %struct.k90_led, ptr %led_cdev, i32 0, i32 1
  %0 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %brightness, align 4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k90_record_led_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %removed = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %removed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %removed, align 4, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr i8, ptr %work, i32 -360
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %parent = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %parent3 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent3, align 8
  %parent.i = getelementptr i8, ptr %7, i32 136
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 -128
  %brightness = getelementptr i8, ptr %work, i32 -4
  %10 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp sgt i32 %11, 0
  %. = select i1 %cmp, i16 32, i16 64
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %13, 8
  %or = or i32 %shl.i, -2147483648
  %call9 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext %., i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.19, i32 noundef %call9) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k90_show_macro_mode(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %parent.i = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 2) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %6, 8
  %or3 = or i32 %shl.i, -2147483520
  %call4 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or3, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 2, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp = icmp slt i32 %call4, 1
  br i1 %cmp, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call4) #15
  br label %out

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call7.i, align 8
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %8, label %do.end10 [
    i8 1, label %if.end6.sw.epilog_crit_edge
    i8 48, label %sw.bb7
  ]

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %conv) #15
  br label %out

sw.epilog:                                        ; preds = %sw.bb7, %if.end6.sw.epilog_crit_edge
  %macro_mode.0 = phi ptr [ @.str.25, %sw.bb7 ], [ @.str.24, %if.end6.sw.epilog_crit_edge ]
  %call13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.29, ptr noundef nonnull %macro_mode.0)
  br label %out

out:                                              ; preds = %sw.epilog, %do.end10, %do.end
  %ret.0 = phi i32 [ -5, %do.end ], [ -5, %do.end10 ], [ %call13, %sw.epilog ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k90_store_macro_mode(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %parent.i = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  %call1 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(3) @.str.25, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %entry.if.end6_crit_edge, label %if.else

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(3) @.str.24, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.else.if.end6_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end6:                                          ; preds = %if.else.if.end6_crit_edge, %entry.if.end6_crit_edge
  %value.0 = phi i16 [ 48, %entry.if.end6_crit_edge ], [ 1, %if.else.if.end6_crit_edge ]
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %5, 8
  %or = or i32 %shl.i, -2147483648
  %call8 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext %value.0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %if.end6.cleanup_crit_edge, label %do.end

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.30) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end6.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end ], [ -22, %if.else.cleanup_crit_edge ], [ %count, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k90_show_current_profile(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %parent.i = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 8) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %6, 8
  %or3 = or i32 %shl.i, -2147483520
  %call4 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or3, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 8, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call4)
  %cmp = icmp slt i32 %call4, 8
  br i1 %cmp, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %call4) #15
  br label %out

if.end6:                                          ; preds = %if.end
  %arrayidx = getelementptr i8, ptr %call7.i, i32 7
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %9 = add i8 %8, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %9)
  %10 = icmp ult i8 %9, -3
  br i1 %10, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %conv) #15
  br label %out

if.end17:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %call18 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.38, i32 noundef %conv)
  br label %out

out:                                              ; preds = %if.end17, %do.end14, %do.end
  %ret.0 = phi i32 [ -5, %do.end ], [ -5, %do.end14 ], [ %call18, %if.end17 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k90_store_current_profile(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %profile = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %parent.i = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %profile) #12
  %4 = ptrtoint ptr %profile to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %profile, align 4, !annotation !166
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %profile) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %profile, align 4
  %7 = add i32 %6, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %7)
  %8 = icmp ult i32 %7, -3
  br i1 %8, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %10, 8
  %or = or i32 %shl.i, -2147483648
  %conv = trunc i32 %6 to i16
  %call6 = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or, i8 noundef zeroext 20, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.end4.cleanup_crit_edge, label %do.end

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %call6) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %count, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %profile) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k90_backlight_get(ptr nocapture noundef readonly %led_cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %parent3 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent3, align 8
  %parent.i = getelementptr i8, ptr %5, i32 136
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 8) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %7, i32 -128
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %10, 8
  %or8 = or i32 %shl.i, -2147483520
  %call9 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or8, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 8, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call9)
  %cmp = icmp slt i32 %call9, 5
  br i1 %cmp, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.33, i32 noundef %call9) #15
  br label %out

if.end11:                                         ; preds = %if.end
  %arrayidx = getelementptr i8, ptr %call7.i, i32 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 4
  %conv = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp14 = icmp ugt i8 %12, 3
  br i1 %cmp14, label %do.end19, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.45, i32 noundef %conv) #15
  br label %out

out:                                              ; preds = %do.end19, %if.end11.out_crit_edge, %do.end
  %ret.0 = phi i32 [ -5, %do.end ], [ -5, %do.end19 ], [ %conv, %if.end11.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k90_backlight_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %removed = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %removed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %removed, align 4, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr i8, ptr %work, i32 -360
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %parent = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %parent3 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent3, align 8
  %parent.i = getelementptr i8, ptr %7, i32 136
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 -128
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %11, 8
  %or = or i32 %shl.i, -2147483648
  %brightness = getelementptr i8, ptr %work, i32 -4
  %12 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %brightness, align 4
  %conv = trunc i32 %13 to i16
  %call7 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or, i8 noundef zeroext 49, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp.not = icmp eq i32 %call7, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.47, i32 noundef %call7) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hid_map_usage_clear(ptr nocapture noundef readonly %hidinput, ptr nocapture noundef %usage, ptr nocapture noundef %bit, ptr nocapture noundef writeonly %max, i16 noundef zeroext %c) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i16 %c to i32
  %input1.i = getelementptr inbounds %struct.hid_input, ptr %hidinput, i32 0, i32 2
  %0 = ptrtoint ptr %input1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input1.i, align 4
  %keybit.i = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %c)
  %cmp.i = icmp ugt i16 %c, 767
  br i1 %cmp.i, label %if.then.i, label %hid_map_usage.exit, !prof !164

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @hid_map_usage._rs, ptr noundef nonnull @__func__.hid_map_usage) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool14.not.i, label %if.then.i.hid_map_usage.exit.thread_crit_edge, label %do.end.i

if.then.i.hid_map_usage.exit.thread_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hid_map_usage.exit.thread

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %3, i32 noundef %conv, i32 noundef 1) #15
  br label %hid_map_usage.exit.thread

hid_map_usage.exit.thread:                        ; preds = %do.end.i, %if.then.i.hid_map_usage.exit.thread_crit_edge
  %4 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bit, align 4
  br label %if.end

hid_map_usage.exit:                               ; preds = %entry
  %type19.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %5 = ptrtoint ptr %type19.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %type19.i, align 4
  %code.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %6 = ptrtoint ptr %code.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %c, ptr %code.i, align 2
  %7 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 767, ptr %max, align 4
  %8 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %keybit.i, ptr %bit, align 4
  %tobool.not = icmp eq ptr %keybit.i, null
  br i1 %tobool.not, label %hid_map_usage.exit.if.end_crit_edge, label %if.then

hid_map_usage.exit.if.end_crit_edge:              ; preds = %hid_map_usage.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %hid_map_usage.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %code.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %code.i, align 2
  %conv1 = zext i16 %10 to i32
  tail call void @_clear_bit(i32 noundef %conv1, ptr noundef nonnull %keybit.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %hid_map_usage.exit.if.end_crit_edge, %hid_map_usage.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !21, !23, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !42, !44, !46, !48, !49, !50, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !71, !72, !74, !75, !76, !77, !79, !81, !83, !84, !86, !87, !88, !89, !91, !93, !95, !96, !97, !99, !101, !102, !103, !104, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !120, !121, !122, !123, !125, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !146, !147, !149, !150, !151, !152, !153, !154}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @__param_gkey_codes, !1, !"__param_gkey_codes", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-corsair.c", i32 80, i32 1}
!2 = !{ptr @__UNIQUE_ID_gkey_codestype232, !1, !"__UNIQUE_ID_gkey_codestype232", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_gkey_codes233, !4, !"__UNIQUE_ID_gkey_codes233", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-corsair.c", i32 81, i32 1}
!5 = !{ptr @__param_recordkey_codes, !6, !"__param_recordkey_codes", i1 false, i1 false}
!6 = !{!"../drivers/hid/hid-corsair.c", i32 88, i32 1}
!7 = !{ptr @__UNIQUE_ID_recordkey_codestype234, !6, !"__UNIQUE_ID_recordkey_codestype234", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_recordkey_codes235, !9, !"__UNIQUE_ID_recordkey_codes235", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-corsair.c", i32 90, i32 1}
!10 = !{ptr @__param_profilekey_codes, !11, !"__param_profilekey_codes", i1 false, i1 false}
!11 = !{!"../drivers/hid/hid-corsair.c", i32 98, i32 1}
!12 = !{ptr @__UNIQUE_ID_profilekey_codestype236, !11, !"__UNIQUE_ID_profilekey_codestype236", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_profilekey_codes237, !14, !"__UNIQUE_ID_profilekey_codes237", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-corsair.c", i32 100, i32 1}
!15 = !{ptr @__initcall__kmod_hid_corsair__238_749_corsair_driver_init6, !16, !"__initcall__kmod_hid_corsair__238_749_corsair_driver_init6", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-corsair.c", i32 749, i32 1}
!17 = !{ptr @__exitcall_corsair_driver_exit, !16, !"__exitcall_corsair_driver_exit", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_file239, !19, !"__UNIQUE_ID_file239", i1 false, i1 false}
!19 = !{!"../drivers/hid/hid-corsair.c", i32 751, i32 1}
!20 = !{ptr @__UNIQUE_ID_license240, !19, !"__UNIQUE_ID_license240", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_author241, !22, !"__UNIQUE_ID_author241", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-corsair.c", i32 753, i32 1}
!23 = !{ptr @__UNIQUE_ID_author242, !24, !"__UNIQUE_ID_author242", i1 false, i1 false}
!24 = !{!"../drivers/hid/hid-corsair.c", i32 755, i32 1}
!25 = !{ptr @__UNIQUE_ID_description243, !26, !"__UNIQUE_ID_description243", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-corsair.c", i32 756, i32 1}
!27 = !{ptr @__param_str_gkey_codes, !1, !"__param_str_gkey_codes", i1 false, i1 false}
!28 = !{ptr @__param_arr_gkey_codes, !1, !"__param_arr_gkey_codes", i1 false, i1 false}
!29 = !{ptr @corsair_gkey_map, !30, !"corsair_gkey_map", i1 false, i1 false}
!30 = !{!"../drivers/hid/hid-corsair.c", i32 59, i32 23}
!31 = !{ptr @__param_str_recordkey_codes, !6, !"__param_str_recordkey_codes", i1 false, i1 false}
!32 = !{ptr @__param_arr_recordkey_codes, !6, !"__param_arr_recordkey_codes", i1 false, i1 false}
!33 = !{ptr @corsair_record_keycodes, !34, !"corsair_record_keycodes", i1 false, i1 false}
!34 = !{!"../drivers/hid/hid-corsair.c", i32 83, i32 23}
!35 = !{ptr @__param_str_profilekey_codes, !11, !"__param_str_profilekey_codes", i1 false, i1 false}
!36 = !{ptr @__param_arr_profilekey_codes, !11, !"__param_arr_profilekey_codes", i1 false, i1 false}
!37 = !{ptr @corsair_profile_keycodes, !38, !"corsair_profile_keycodes", i1 false, i1 false}
!38 = !{!"../drivers/hid/hid-corsair.c", i32 92, i32 23}
!39 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.1, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hid/hid-corsair.c", i32 740, i32 10}
!42 = !{ptr @corsair_driver, !43, !"corsair_driver", i1 false, i1 false}
!43 = !{!"../drivers/hid/hid-corsair.c", i32 739, i32 26}
!44 = !{ptr @corsair_devices, !45, !"corsair_devices", i1 false, i1 false}
!45 = !{!"../drivers/hid/hid-corsair.c", i32 721, i32 35}
!46 = !{ptr @.str.2, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hid/hid-corsair.c", i32 572, i32 3}
!48 = !{ptr @.str.3, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.4, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.5, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.6, !47, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @corsair_probe._entry, !47, !"_entry", i1 false, i1 false}
!53 = !{ptr @corsair_probe._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.8, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hid/hid-corsair.c", i32 577, i32 3}
!56 = !{ptr @corsair_probe._entry.7, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @corsair_probe._entry_ptr.9, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.11, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hid/hid-corsair.c", i32 585, i32 5}
!60 = !{ptr @.str.12, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @corsair_probe._entry.10, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @corsair_probe._entry_ptr.13, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hid/hid-corsair.c", i32 590, i32 5}
!65 = !{ptr @corsair_probe._entry.14, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @corsair_probe._entry_ptr.16, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.17, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hid/hid-corsair.c", i32 488, i32 26}
!69 = !{ptr @k90_init_macro_functions.__key, !70, !"__key", i1 false, i1 false}
!70 = !{!"../drivers/hid/hid-corsair.c", i32 495, i32 2}
!71 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.19, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hid/hid-corsair.c", i32 253, i32 3}
!74 = !{ptr @.str.20, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @k90_record_led_work._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @k90_record_led_work._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @k90_attr_group, !78, !"k90_attr_group", i1 false, i1 false}
!78 = !{!"../drivers/hid/hid-corsair.c", i32 415, i32 37}
!79 = !{ptr @k90_attrs, !80, !"k90_attrs", i1 false, i1 false}
!80 = !{!"../drivers/hid/hid-corsair.c", i32 409, i32 26}
!81 = !{ptr @.str.21, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hid/hid-corsair.c", i32 405, i32 8}
!83 = !{ptr @dev_attr_macro_mode, !82, !"dev_attr_macro_mode", i1 false, i1 false}
!84 = !{ptr @.str.22, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hid/hid-corsair.c", i32 280, i32 3}
!86 = !{ptr @.str.23, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @k90_show_macro_mode._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @k90_show_macro_mode._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.24, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hid/hid-corsair.c", i32 288, i32 16}
!91 = !{ptr @.str.25, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hid/hid-corsair.c", i32 292, i32 16}
!93 = !{ptr @.str.27, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hid/hid-corsair.c", i32 295, i32 3}
!95 = !{ptr @k90_show_macro_mode._entry.26, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @k90_show_macro_mode._entry_ptr.28, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.29, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hid/hid-corsair.c", i32 301, i32 33}
!99 = !{ptr @.str.30, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hid/hid-corsair.c", i32 330, i32 3}
!101 = !{ptr @.str.31, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @k90_store_macro_mode._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @k90_store_macro_mode._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.32, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hid/hid-corsair.c", i32 406, i32 8}
!106 = !{ptr @dev_attr_current_profile, !105, !"dev_attr_current_profile", i1 false, i1 false}
!107 = !{ptr @.str.33, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hid/hid-corsair.c", i32 357, i32 3}
!109 = !{ptr @.str.34, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @k90_show_current_profile._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @k90_show_current_profile._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.36, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/hid/hid-corsair.c", i32 364, i32 3}
!114 = !{ptr @k90_show_current_profile._entry.35, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @k90_show_current_profile._entry_ptr.37, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.38, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hid/hid-corsair.c", i32 370, i32 33}
!118 = !{ptr @.str.39, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/hid/hid-corsair.c", i32 397, i32 3}
!120 = !{ptr @.str.40, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @k90_store_current_profile._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @k90_store_current_profile._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.41, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hid/hid-corsair.c", i32 443, i32 26}
!125 = !{ptr @k90_init_backlight.__key, !126, !"__key", i1 false, i1 false}
!126 = !{!"../drivers/hid/hid-corsair.c", i32 450, i32 2}
!127 = !{ptr @.str.42, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.43, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hid/hid-corsair.c", i32 165, i32 3}
!130 = !{ptr @k90_backlight_get._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @k90_backlight_get._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.45, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/hid/hid-corsair.c", i32 172, i32 3}
!134 = !{ptr @k90_backlight_get._entry.44, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @k90_backlight_get._entry_ptr.46, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.47, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/hid/hid-corsair.c", i32 222, i32 3}
!138 = !{ptr @.str.48, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @k90_backlight_work._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @k90_backlight_work._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.49, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/hid/hid-corsair.c", i32 711, i32 5}
!143 = !{ptr @.str.50, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.51, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @corsair_mouse_report_fixup._entry, !142, !"_entry", i1 false, i1 false}
!146 = !{ptr @corsair_mouse_report_fixup._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.52, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../include/linux/hid.h", i32 1036, i32 3}
!149 = !{ptr @hid_map_usage._rs, !148, !"_rs", i1 false, i1 false}
!150 = !{ptr @__func__.hid_map_usage, !148, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.53, !148, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.54, !148, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @hid_map_usage._entry, !148, !"_entry", i1 false, i1 false}
!154 = !{ptr @hid_map_usage._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!164 = !{!"branch_weights", i32 1, i32 2000}
!165 = !{i8 0, i8 2}
!166 = !{!"auto-init"}
