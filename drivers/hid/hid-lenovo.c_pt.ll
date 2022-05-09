; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-lenovo.c_pt.bc'
source_filename = "../drivers/hid/hid-lenovo.c"
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
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.lenovo_drvdata = type { [3 x i8], i32, %struct.mutex, %struct.led_classdev, %struct.led_classdev, %struct.work_struct, ptr, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_hid_lenovo__224_1222_lenovo_driver_init6 = internal global ptr @lenovo_driver_init, section ".initcall6.init", align 4
@lenovo_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @lenovo_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @lenovo_probe, ptr @lenovo_remove, ptr null, ptr @lenovo_raw_event, ptr null, ptr @lenovo_event, ptr null, ptr @lenovo_report_fixup, ptr @lenovo_input_mapping, ptr null, ptr @lenovo_input_configured, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lenovo_driver_exit = internal global ptr @lenovo_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file225 = internal constant [39 x i8] c"hid_lenovo.file=drivers/hid/hid-lenovo\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [23 x i8] c"hid_lenovo.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hid_lenovo\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lenovo\00", [25 x i8] zeroinitializer }, align 32
@lenovo_devices = internal constant { [13 x %struct.hid_device_id], [48 x i8] } { [13 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24585, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24647, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 6127, i32 24648, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24679, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1203, i32 12544, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1203, i32 12547, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1203, i32 12549, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1203, i32 12552, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1203, i32 12553, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24649, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24674, i32 0 }, %struct.hid_device_id { i16 3, i16 1, i32 6127, i32 24739, i32 0 }, %struct.hid_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@lenovo_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1075, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hid_parse failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lenovo_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/hid/hid-lenovo.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lenovo_probe._entry_ptr = internal global ptr @lenovo_probe._entry, section ".printk_index", align 4
@lenovo_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1081, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hid_hw_start failed\0A\00", [43 x i8] zeroinitializer }, align 32
@lenovo_probe._entry_ptr.9 = internal global ptr @lenovo_probe._entry.7, section ".printk_index", align 4
@lenovo_attr_group_tpkbd = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lenovo_attributes_tpkbd, ptr null }, [44 x i8] zeroinitializer }, align 32
@lenovo_probe_tpkbd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 928, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Could not create sysfs group: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lenovo_probe_tpkbd\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@lenovo_probe_tpkbd._entry_ptr = internal global ptr @lenovo_probe_tpkbd._entry, section ".printk_index", align 4
@lenovo_probe_tpkbd._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.4, i32 934, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Could not allocate memory for driver data\0A\00", [53 x i8] zeroinitializer }, align 32
@lenovo_probe_tpkbd._entry_ptr.15 = internal global ptr @lenovo_probe_tpkbd._entry.13, section ".printk_index", align 4
@lenovo_attributes_tpkbd = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @dev_attr_press_to_select_tpkbd, ptr @dev_attr_dragging_tpkbd, ptr @dev_attr_release_to_select_tpkbd, ptr @dev_attr_select_right_tpkbd, ptr @dev_attr_sensitivity_tpkbd, ptr @dev_attr_press_speed_tpkbd, ptr null], [36 x i8] zeroinitializer }, align 32
@dev_attr_press_to_select_tpkbd = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @attr_press_to_select_show_tpkbd, ptr @attr_press_to_select_store_tpkbd }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dragging_tpkbd = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @attr_dragging_show_tpkbd, ptr @attr_dragging_store_tpkbd }, [36 x i8] zeroinitializer }, align 32
@dev_attr_release_to_select_tpkbd = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @attr_release_to_select_show_tpkbd, ptr @attr_release_to_select_store_tpkbd }, [36 x i8] zeroinitializer }, align 32
@dev_attr_select_right_tpkbd = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @attr_select_right_show_tpkbd, ptr @attr_select_right_store_tpkbd }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sensitivity_tpkbd = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @attr_sensitivity_show_tpkbd, ptr @attr_sensitivity_store_tpkbd }, [36 x i8] zeroinitializer }, align 32
@dev_attr_press_speed_tpkbd = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @attr_press_speed_show_tpkbd, ptr @attr_press_speed_store_tpkbd }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"press_to_select\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dragging\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"release_to_select\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"select_right\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sensitivity\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"press_speed\00", [20 x i8] zeroinitializer }, align 32
@lenovo_register_leds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 873, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Could not allocate memory for led data\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lenovo_register_leds\00", [43 x i8] zeroinitializer }, align 32
@lenovo_register_leds._entry_ptr = internal global ptr @lenovo_register_leds._entry, section ".printk_index", align 4
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s:amber:mute\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s:amber:micmute\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio-mute\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio-micmute\00", [18 x i8] zeroinitializer }, align 32
@__const.lenovo_led_brightness_set.tp10ubkbd_led = private unnamed_addr constant [2 x i8] c"dt", align 1
@lenovo_led_set_tp10ubkbd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 83, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Set LED output report error: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lenovo_led_set_tp10ubkbd\00", [39 x i8] zeroinitializer }, align 32
@lenovo_led_set_tp10ubkbd._entry_ptr = internal global ptr @lenovo_led_set_tp10ubkbd._entry, section ".printk_index", align 4
@lenovo_probe_cptkbd.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 0, i8 -15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lenovo_probe_cptkbd\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Ignoring keyboard half of device\0A\00", [62 x i8] zeroinitializer }, align 32
@lenovo_probe_cptkbd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.4, i32 973, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can't alloc keyboard descriptor\0A\00", [63 x i8] zeroinitializer }, align 32
@lenovo_probe_cptkbd._entry_ptr = internal global ptr @lenovo_probe_cptkbd._entry, section ".printk_index", align 4
@lenovo_probe_cptkbd._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.31, ptr @.str.4, i32 984, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to switch F7/9/11 mode: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@lenovo_probe_cptkbd._entry_ptr.36 = internal global ptr @lenovo_probe_cptkbd._entry.34, section ".printk_index", align 4
@lenovo_probe_cptkbd._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.31, ptr @.str.4, i32 989, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to switch middle button: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@lenovo_probe_cptkbd._entry_ptr.39 = internal global ptr @lenovo_probe_cptkbd._entry.37, section ".printk_index", align 4
@lenovo_attr_group_cptkbd = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lenovo_attributes_cptkbd, ptr null }, [44 x i8] zeroinitializer }, align 32
@lenovo_probe_cptkbd._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.31, ptr @.str.4, i32 999, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@lenovo_probe_cptkbd._entry_ptr.41 = internal global ptr @lenovo_probe_cptkbd._entry.40, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lenovo_features_set_cptkbd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 389, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Fn-lock setting failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lenovo_features_set_cptkbd\00", [37 x i8] zeroinitializer }, align 32
@lenovo_features_set_cptkbd._entry_ptr = internal global ptr @lenovo_features_set_cptkbd._entry, section ".printk_index", align 4
@lenovo_features_set_cptkbd._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.4, i32 393, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Sensitivity setting failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@lenovo_features_set_cptkbd._entry_ptr.46 = internal global ptr @lenovo_features_set_cptkbd._entry.44, section ".printk_index", align 4
@lenovo_attributes_cptkbd = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_fn_lock, ptr @dev_attr_sensitivity_cptkbd, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_fn_lock = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @attr_fn_lock_show, ptr @attr_fn_lock_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sensitivity_cptkbd = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @attr_sensitivity_show_cptkbd, ptr @attr_sensitivity_store_cptkbd }, [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fn_lock\00", [24 x i8] zeroinitializer }, align 32
@lenovo_probe_tp10ubkbd.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&data->led_report_mutex\00", [40 x i8] zeroinitializer }, align 32
@lenovo_probe_tp10ubkbd.__key.49 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&data->fn_lock_sync_work)\00", [52 x i8] zeroinitializer }, align 32
@lenovo_attr_group_tp10ubkbd = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lenovo_attributes_tp10ubkbd, ptr null }, [44 x i8] zeroinitializer }, align 32
@lenovo_attributes_tp10ubkbd = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_fn_lock, ptr null], [24 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@lenovo_pro_dock_need_fixup_collection = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\05\88\09\01\A1\01\85\04\19\00*\FF\FF", [19 x i8] zeroinitializer }, align 32
@hid_map_usage._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.51, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.hid_map_usage = private unnamed_addr constant [14 x i8] c"hid_map_usage\00", align 1
@hid_map_usage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @__func__.hid_map_usage, ptr @.str.53, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: Invalid code %d type %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@hid_map_usage._entry_ptr = internal global ptr @hid_map_usage._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 24585, i64 24647, i64 24648, i64 24674, i64 24739]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4294967277]
@__sancov_gen_cov_switch_values.55 = internal global [7 x i64] [i64 5, i64 32, i64 24585, i64 24647, i64 24648, i64 24674, i64 24739]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 24647, i64 24648, i64 24674, i64 24739]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 16, i64 6, i64 8]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.60 = internal global [13 x i64] [i64 11, i64 32, i64 12544, i64 12547, i64 12549, i64 12552, i64 12553, i64 24585, i64 24647, i64 24648, i64 24649, i64 24674, i64 24739]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 4278190080, i64 4288675840]
@__sancov_gen_cov_switch_values.62 = internal global [12 x i64] [i64 10, i64 16, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 248, i64 249, i64 250, i64 251]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 65592, i64 589827, i64 787000]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 4279238656, i64 4288741376]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.66 = internal global [7 x i64] [i64 5, i64 32, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 458906, i64 786433]
@__sancov_gen_cov_switch_values.68 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 8, i64 9, i64 10, i64 13, i64 14]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 32, i64 24585, i64 24647, i64 24648]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 24585, i64 24674, i64 24739]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4294967277]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 24647, i64 24648]
@__sancov_gen_cov_switch_values.73 = internal global [6 x i64] [i64 4, i64 32, i64 24647, i64 24648, i64 24674, i64 24739]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4294967277]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4294967277]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.77 = private unnamed_addr constant [14 x i8] c"lenovo_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1211, i32 26 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1222, i32 1 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1212, i32 10 }
@___asan_gen_.86 = private unnamed_addr constant [15 x i8] c"lenovo_devices\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1188, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1075, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1081, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [24 x i8] c"lenovo_attr_group_tpkbd\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 817, i32 37 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 928, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 934, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [24 x i8] c"lenovo_attributes_tpkbd\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 807, i32 26 }
@___asan_gen_.137 = private unnamed_addr constant [31 x i8] c"dev_attr_press_to_select_tpkbd\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 777, i32 32 }
@___asan_gen_.140 = private unnamed_addr constant [24 x i8] c"dev_attr_dragging_tpkbd\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 782, i32 32 }
@___asan_gen_.143 = private unnamed_addr constant [33 x i8] c"dev_attr_release_to_select_tpkbd\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 787, i32 32 }
@___asan_gen_.146 = private unnamed_addr constant [28 x i8] c"dev_attr_select_right_tpkbd\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 792, i32 32 }
@___asan_gen_.149 = private unnamed_addr constant [27 x i8] c"dev_attr_sensitivity_tpkbd\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 797, i32 32 }
@___asan_gen_.152 = private unnamed_addr constant [27 x i8] c"dev_attr_press_speed_tpkbd\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 802, i32 32 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 778, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 606, i32 34 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 783, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 788, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 793, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 798, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 803, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 873, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 876, i32 31 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 877, i32 31 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 880, i32 35 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 890, i32 38 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 83, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 965, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 973, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 984, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 989, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant [25 x i8] c"lenovo_attr_group_cptkbd\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 485, i32 37 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 999, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 389, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 393, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant [25 x i8] c"lenovo_attributes_cptkbd\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 479, i32 26 }
@___asan_gen_.254 = private unnamed_addr constant [17 x i8] c"dev_attr_fn_lock\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 468, i32 32 }
@___asan_gen_.257 = private unnamed_addr constant [28 x i8] c"dev_attr_sensitivity_cptkbd\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 473, i32 32 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 469, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1039, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1040, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [28 x i8] c"lenovo_attr_group_tp10ubkbd\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1009, i32 37 }
@___asan_gen_.278 = private unnamed_addr constant [28 x i8] c"lenovo_attributes_tp10ubkbd\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1004, i32 26 }
@___asan_gen_.281 = private unnamed_addr constant [38 x i8] c"lenovo_pro_dock_need_fixup_collection\00", align 1
@___asan_gen_.282 = private constant [28 x i8] c"../drivers/hid/hid-lenovo.c\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 104, i32 19 }
@___asan_gen_.284 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.296 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.297 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1036, i32 3 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__exitcall_lenovo_driver_exit, ptr @__initcall__kmod_hid_lenovo__224_1222_lenovo_driver_init6, ptr @hid_map_usage._entry, ptr @hid_map_usage._entry_ptr, ptr @lenovo_driver_exit, ptr @lenovo_features_set_cptkbd._entry, ptr @lenovo_features_set_cptkbd._entry.44, ptr @lenovo_features_set_cptkbd._entry_ptr, ptr @lenovo_features_set_cptkbd._entry_ptr.46, ptr @lenovo_led_set_tp10ubkbd._entry, ptr @lenovo_led_set_tp10ubkbd._entry_ptr, ptr @lenovo_probe._entry, ptr @lenovo_probe._entry.7, ptr @lenovo_probe._entry_ptr, ptr @lenovo_probe._entry_ptr.9, ptr @lenovo_probe_cptkbd._entry, ptr @lenovo_probe_cptkbd._entry.34, ptr @lenovo_probe_cptkbd._entry.37, ptr @lenovo_probe_cptkbd._entry.40, ptr @lenovo_probe_cptkbd._entry_ptr, ptr @lenovo_probe_cptkbd._entry_ptr.36, ptr @lenovo_probe_cptkbd._entry_ptr.39, ptr @lenovo_probe_cptkbd._entry_ptr.41, ptr @lenovo_probe_tpkbd._entry, ptr @lenovo_probe_tpkbd._entry.13, ptr @lenovo_probe_tpkbd._entry_ptr, ptr @lenovo_probe_tpkbd._entry_ptr.15, ptr @lenovo_register_leds._entry, ptr @lenovo_register_leds._entry_ptr, ptr @lenovo_driver, ptr @.str, ptr @.str.1, ptr @lenovo_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @lenovo_attr_group_tpkbd, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @lenovo_attributes_tpkbd, ptr @dev_attr_press_to_select_tpkbd, ptr @dev_attr_dragging_tpkbd, ptr @dev_attr_release_to_select_tpkbd, ptr @dev_attr_select_right_tpkbd, ptr @dev_attr_sensitivity_tpkbd, ptr @dev_attr_press_speed_tpkbd, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @lenovo_attr_group_cptkbd, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @lenovo_attributes_cptkbd, ptr @dev_attr_fn_lock, ptr @dev_attr_sensitivity_cptkbd, ptr @.str.47, ptr @lenovo_probe_tp10ubkbd.__key, ptr @.str.48, ptr @lenovo_probe_tp10ubkbd.__key.49, ptr @.str.50, ptr @lenovo_attr_group_tp10ubkbd, ptr @lenovo_attributes_tp10ubkbd, ptr @lenovo_pro_dock_need_fixup_collection, ptr @hid_map_usage._rs, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lenovo_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lenovo_devices to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lenovo_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lenovo_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lenovo_attr_group_tpkbd to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lenovo_probe_tpkbd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lenovo_probe_tpkbd._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lenovo_attributes_tpkbd to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_press_to_select_tpkbd to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dragging_tpkbd to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_release_to_select_tpkbd to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_select_right_tpkbd to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sensitivity_tpkbd to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_press_speed_tpkbd to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lenovo_register_leds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lenovo_led_set_tp10ubkbd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lenovo_probe_cptkbd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lenovo_probe_cptkbd._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lenovo_probe_cptkbd._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lenovo_attr_group_cptkbd to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lenovo_probe_cptkbd._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lenovo_features_set_cptkbd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lenovo_features_set_cptkbd._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lenovo_attributes_cptkbd to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fn_lock to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sensitivity_cptkbd to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lenovo_probe_tp10ubkbd.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lenovo_probe_tp10ubkbd.__key.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lenovo_attr_group_tp10ubkbd to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lenovo_attributes_tp10ubkbd to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lenovo_pro_dock_need_fixup_collection to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lenovo_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @lenovo_driver, ptr noundef null, ptr noundef nonnull @.str) #14
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lenovo_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @hid_unregister_driver(ptr noundef nonnull @lenovo_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lenovo_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 45) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev7 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.8) #17
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %0 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %product, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.end8.cleanup_crit_edge [
    i32 24585, label %sw.bb
    i32 24647, label %if.end8.sw.epilog_crit_edge
    i32 24648, label %if.end8.sw.epilog_crit_edge41
    i32 24674, label %if.end8.sw.bb12_crit_edge
    i32 24739, label %if.end8.sw.bb12_crit_edge42
  ]

if.end8.sw.bb12_crit_edge42:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb12

if.end8.sw.bb12_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb12

if.end8.sw.epilog_crit_edge41:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %if.end8
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %3 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %driver_data.i.i.i, align 4
  %call1.i = tail call ptr @hid_validate_values(ptr noundef %hdev, i32 noundef 2, i32 noundef 4, i32 noundef 0, i32 noundef 1) #14
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.err_hid_crit_edge, label %for.cond.i

if.end.i.err_hid_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_hid

for.cond.i:                                       ; preds = %if.end.i
  %call1.1.i = tail call ptr @hid_validate_values(ptr noundef %hdev, i32 noundef 2, i32 noundef 4, i32 noundef 1, i32 noundef 1) #14
  %tobool2.not.1.i = icmp eq ptr %call1.1.i, null
  br i1 %tobool2.not.1.i, label %for.cond.i.err_hid_crit_edge, label %for.cond.1.i

for.cond.i.err_hid_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_hid

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call ptr @hid_validate_values(ptr noundef %hdev, i32 noundef 2, i32 noundef 4, i32 noundef 2, i32 noundef 1) #14
  %tobool2.not.2.i = icmp eq ptr %call1.2.i, null
  br i1 %tobool2.not.2.i, label %for.cond.1.i.err_hid_crit_edge, label %for.cond.2.i

for.cond.1.i.err_hid_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_hid

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call1.3.i = tail call ptr @hid_validate_values(ptr noundef %hdev, i32 noundef 2, i32 noundef 4, i32 noundef 3, i32 noundef 1) #14
  %tobool2.not.3.i = icmp eq ptr %call1.3.i, null
  br i1 %tobool2.not.3.i, label %for.cond.2.i.err_hid_crit_edge, label %for.cond.3.i

for.cond.2.i.err_hid_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_hid

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %call5.i = tail call ptr @hid_validate_values(ptr noundef %hdev, i32 noundef 1, i32 noundef 3, i32 noundef 0, i32 noundef 2) #14
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %for.cond.3.i.err_hid_crit_edge, label %if.end8.i

for.cond.3.i.err_hid_crit_edge:                   ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_hid

if.end8.i:                                        ; preds = %for.cond.3.i
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call9.i = tail call i32 @sysfs_create_group(ptr noundef %dev.i, ptr noundef nonnull @lenovo_attr_group_tpkbd) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.if.end13.i_crit_edge, label %do.end.i

if.end8.i.if.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

do.end.i:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.10, i32 noundef %call9.i) #17
  br label %if.end13.i

if.end13.i:                                       ; preds = %do.end.i, %if.end8.i.if.end13.i_crit_edge
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 976, i32 noundef 3520) #14
  %cmp16.i = icmp eq ptr %call.i.i, null
  br i1 %cmp16.i, label %do.end20.i, label %if.end22.i

do.end20.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.14) #17
  br label %err.i

if.end22.i:                                       ; preds = %if.end13.i
  %sensitivity.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %call.i.i, i32 0, i32 11
  %6 = ptrtoint ptr %sensitivity.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 160, ptr %sensitivity.i, align 4
  %press_speed.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %call.i.i, i32 0, i32 12
  %7 = ptrtoint ptr %press_speed.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 56, ptr %press_speed.i, align 4
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %driver_data.i.i.i, align 4
  %call23.i = tail call fastcc i32 @lenovo_register_leds(ptr noundef %hdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end22.i.err.i_crit_edge

if.end22.i.err.i_crit_edge:                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err.i

if.end26.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i.i, align 4
  %arrayidx1.i.i = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 2, i32 2, i32 4
  %11 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx1.i.i, align 4
  %press_to_select.i.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %10, i32 0, i32 7
  %13 = ptrtoint ptr %press_to_select.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %press_to_select.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  %field.i.i = getelementptr inbounds %struct.hid_report, ptr %12, i32 0, i32 5
  %15 = ptrtoint ptr %field.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %field.i.i, align 4
  %value.i.i = getelementptr inbounds %struct.hid_field, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %value.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond.i.i, ptr %18, align 4
  %dragging.i.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %10, i32 0, i32 8
  %20 = ptrtoint ptr %dragging.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dragging.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool4.not.i.i = icmp eq i32 %21, 0
  %cond5.i.i = select i1 %tobool4.not.i.i, i32 8, i32 4
  %22 = ptrtoint ptr %field.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %field.i.i, align 4
  %value8.i.i = getelementptr inbounds %struct.hid_field, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %value8.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %value8.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %or.i.i = or i32 %27, %cond5.i.i
  store i32 %or.i.i, ptr %25, align 4
  %release_to_select.i.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %10, i32 0, i32 9
  %28 = ptrtoint ptr %release_to_select.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %release_to_select.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool10.not.i.i = icmp eq i32 %29, 0
  %cond11.i.i = select i1 %tobool10.not.i.i, i32 32, i32 16
  %30 = ptrtoint ptr %field.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %field.i.i, align 4
  %value14.i.i = getelementptr inbounds %struct.hid_field, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %value14.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %value14.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %or16.i.i = or i32 %35, %cond11.i.i
  store i32 %or16.i.i, ptr %33, align 4
  %select_right.i.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %10, i32 0, i32 10
  %36 = ptrtoint ptr %select_right.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %select_right.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool17.not.i.i = icmp eq i32 %37, 0
  %cond18.i.i = select i1 %tobool17.not.i.i, i32 64, i32 128
  %38 = ptrtoint ptr %field.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %field.i.i, align 4
  %value21.i.i = getelementptr inbounds %struct.hid_field, ptr %39, i32 0, i32 10
  %40 = ptrtoint ptr %value21.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %value21.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %or23.i.i = or i32 %43, %cond18.i.i
  store i32 %or23.i.i, ptr %41, align 4
  %arrayidx25.i.i = getelementptr %struct.hid_report, ptr %12, i32 0, i32 5, i32 1
  %44 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx25.i.i, align 4
  %value26.i.i = getelementptr inbounds %struct.hid_field, ptr %45, i32 0, i32 10
  %46 = ptrtoint ptr %value26.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %value26.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 3, ptr %47, align 4
  %sensitivity.i.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %10, i32 0, i32 11
  %49 = ptrtoint ptr %sensitivity.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sensitivity.i.i, align 4
  %arrayidx29.i.i = getelementptr %struct.hid_report, ptr %12, i32 0, i32 5, i32 2
  %51 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx29.i.i, align 4
  %value30.i.i = getelementptr inbounds %struct.hid_field, ptr %52, i32 0, i32 10
  %53 = ptrtoint ptr %value30.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %value30.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %50, ptr %54, align 4
  %press_speed.i.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %10, i32 0, i32 12
  %56 = ptrtoint ptr %press_speed.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %press_speed.i.i, align 4
  %arrayidx33.i.i = getelementptr %struct.hid_report, ptr %12, i32 0, i32 5, i32 3
  %58 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx33.i.i, align 4
  %value34.i.i = getelementptr inbounds %struct.hid_field, ptr %59, i32 0, i32 10
  %60 = ptrtoint ptr %value34.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %value34.i.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %57, ptr %61, align 4
  tail call void @hid_hw_request(ptr noundef %hdev, ptr noundef %12, i32 noundef 9) #14
  br label %cleanup

err.i:                                            ; preds = %if.end22.i.err.i_crit_edge, %do.end20.i
  %ret.0.i = phi i32 [ -12, %do.end20.i ], [ %call23.i, %if.end22.i.err.i_crit_edge ]
  tail call void @sysfs_remove_group(ptr noundef %dev.i, ptr noundef nonnull @lenovo_attr_group_tpkbd) #14
  br label %err_hid

sw.bb12:                                          ; preds = %if.end8.sw.bb12_crit_edge, %if.end8.sw.bb12_crit_edge42
  %report_list.i = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 1, i32 1
  %63 = ptrtoint ptr %report_list.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %rep.065.i = load ptr, ptr %report_list.i, align 4
  %cmp.not66.i = icmp eq ptr %rep.065.i, %report_list.i
  br i1 %cmp.not66.i, label %sw.bb12.cleanup_crit_edge, label %sw.bb12.for.body.i_crit_edge

sw.bb12.for.body.i_crit_edge:                     ; preds = %sw.bb12
  br label %for.body.i

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb12.for.body.i_crit_edge
  %rep.068.i = phi ptr [ %rep.0.i, %for.body.i.for.body.i_crit_edge ], [ %rep.065.i, %sw.bb12.for.body.i_crit_edge ]
  %found.0.off067.i = phi i1 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ false, %sw.bb12.for.body.i_crit_edge ]
  %application.i = getelementptr inbounds %struct.hid_report, ptr %rep.068.i, i32 0, i32 4
  %64 = ptrtoint ptr %application.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %application.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6291455, i32 %65)
  %cmp2.i = icmp eq i32 %65, -6291455
  %spec.select.i = select i1 %cmp2.i, i1 true, i1 %found.0.off067.i
  %66 = ptrtoint ptr %rep.068.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %rep.0.i = load ptr, ptr %rep.068.i, align 4
  %cmp.not.i = icmp eq ptr %rep.0.i, %report_list.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  br i1 %spec.select.i, label %if.end9.i, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9.i:                                        ; preds = %for.end.i
  %dev.i28 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i.i29 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i28, i32 noundef 976, i32 noundef 3520) #14
  %tobool10.not.i30 = icmp eq ptr %call.i.i29, null
  br i1 %tobool10.not.i30, label %if.end9.i.err_hid_crit_edge, label %do.body.i

if.end9.i.err_hid_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_hid

do.body.i:                                        ; preds = %if.end9.i
  %led_report_mutex.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %call.i.i29, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %led_report_mutex.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @lenovo_probe_tp10ubkbd.__key) #14
  %fn_lock_sync_work.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %call.i.i29, i32 0, i32 5
  tail call void @__init_work(ptr noundef %fn_lock_sync_work.i, i32 noundef 0) #14
  %67 = ptrtoint ptr %fn_lock_sync_work.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -64, ptr %fn_lock_sync_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %call.i.i29, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @lenovo_probe_tp10ubkbd.__key.49, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry18.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %call.i.i29, i32 0, i32 5, i32 1
  %68 = ptrtoint ptr %entry18.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %entry18.i, ptr %entry18.i, align 4
  %prev.i.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %call.i.i29, i32 0, i32 5, i32 1, i32 1
  %69 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %entry18.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %call.i.i29, i32 0, i32 5, i32 2
  %70 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @lenovo_tp10ubkbd_sync_fn_lock, ptr %func.i, align 4
  %hdev22.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %call.i.i29, i32 0, i32 6
  %71 = ptrtoint ptr %hdev22.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %hdev, ptr %hdev22.i, align 4
  %driver_data.i.i.i31 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %72 = ptrtoint ptr %driver_data.i.i.i31 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i.i29, ptr %driver_data.i.i.i31, align 4
  %fn_lock.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %call.i.i29, i32 0, i32 14
  %73 = ptrtoint ptr %fn_lock.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %fn_lock.i, align 1
  tail call void @mutex_lock_nested(ptr noundef %led_report_mutex.i, i32 noundef 0) #14
  %74 = ptrtoint ptr %call.i.i29 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 9, ptr %call.i.i29, align 4
  %arrayidx2.i.i = getelementptr [3 x i8], ptr %call.i.i29, i32 0, i32 1
  %75 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 84, ptr %arrayidx2.i.i, align 1
  %arrayidx4.i.i = getelementptr [3 x i8], ptr %call.i.i29, i32 0, i32 2
  %76 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 2, ptr %arrayidx4.i.i, align 2
  %call8.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext 9, ptr noundef nonnull %call.i.i29, i32 noundef 3, i8 noundef zeroext 1, i32 noundef 9) #14
  %77 = zext i32 %call8.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %call8.i.i, label %do.end.i.i [
    i32 3, label %do.body.i.lenovo_led_set_tp10ubkbd.exit.i_crit_edge
    i32 -19, label %do.body.i.lenovo_led_set_tp10ubkbd.exit.i_crit_edge43
  ]

do.body.i.lenovo_led_set_tp10ubkbd.exit.i_crit_edge43: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lenovo_led_set_tp10ubkbd.exit.i

do.body.i.lenovo_led_set_tp10ubkbd.exit.i_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lenovo_led_set_tp10ubkbd.exit.i

do.end.i.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i28, ptr noundef nonnull @.str.29, i32 noundef %call8.i.i) #17
  br label %lenovo_led_set_tp10ubkbd.exit.i

lenovo_led_set_tp10ubkbd.exit.i:                  ; preds = %do.end.i.i, %do.body.i.lenovo_led_set_tp10ubkbd.exit.i_crit_edge, %do.body.i.lenovo_led_set_tp10ubkbd.exit.i_crit_edge43
  tail call void @mutex_unlock(ptr noundef %led_report_mutex.i) #14
  %call27.i = tail call i32 @sysfs_create_group(ptr noundef %dev.i28, ptr noundef nonnull @lenovo_attr_group_tp10ubkbd) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %lenovo_led_set_tp10ubkbd.exit.i.err_hid_crit_edge

lenovo_led_set_tp10ubkbd.exit.i.err_hid_crit_edge: ; preds = %lenovo_led_set_tp10ubkbd.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_hid

if.end30.i:                                       ; preds = %lenovo_led_set_tp10ubkbd.exit.i
  %call31.i = tail call fastcc i32 @lenovo_register_leds(ptr noundef %hdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end30.i.cleanup_crit_edge, label %err.i32

if.end30.i.cleanup_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

err.i32:                                          ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @sysfs_remove_group(ptr noundef %dev.i28, ptr noundef nonnull @lenovo_attr_group_tp10ubkbd) #14
  br label %err_hid

sw.epilog:                                        ; preds = %if.end8.sw.epilog_crit_edge, %if.end8.sw.epilog_crit_edge41
  %call11 = tail call fastcc i32 @lenovo_probe_cptkbd(ptr noundef %hdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool14.not = icmp eq i32 %call11, 0
  br i1 %tobool14.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.err_hid_crit_edge

sw.epilog.err_hid_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_hid

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

err_hid:                                          ; preds = %sw.epilog.err_hid_crit_edge, %err.i32, %lenovo_led_set_tp10ubkbd.exit.i.err_hid_crit_edge, %if.end9.i.err_hid_crit_edge, %err.i, %for.cond.3.i.err_hid_crit_edge, %for.cond.2.i.err_hid_crit_edge, %for.cond.1.i.err_hid_crit_edge, %for.cond.i.err_hid_crit_edge, %if.end.i.err_hid_crit_edge
  %ret.036 = phi i32 [ %call11, %sw.epilog.err_hid_crit_edge ], [ %call27.i, %lenovo_led_set_tp10ubkbd.exit.i.err_hid_crit_edge ], [ -12, %if.end9.i.err_hid_crit_edge ], [ %call31.i, %err.i32 ], [ -19, %if.end.i.err_hid_crit_edge ], [ -19, %for.cond.i.err_hid_crit_edge ], [ -19, %for.cond.1.i.err_hid_crit_edge ], [ -19, %for.cond.2.i.err_hid_crit_edge ], [ -19, %for.cond.3.i.err_hid_crit_edge ], [ %ret.0.i, %err.i ]
  tail call void @hid_hw_stop(ptr noundef %hdev) #14
  br label %cleanup

cleanup:                                          ; preds = %err_hid, %sw.epilog.cleanup_crit_edge, %if.end30.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge, %if.end26.i, %sw.bb.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ 0, %sw.epilog.cleanup_crit_edge ], [ %call.i, %do.end ], [ %call1, %do.end6 ], [ %ret.036, %err_hid ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %if.end26.i ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %for.end.i.cleanup_crit_edge ], [ 0, %if.end30.i.cleanup_crit_edge ], [ 0, %sw.bb12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lenovo_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %0 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %product, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 24585, label %sw.bb
    i32 24647, label %entry.sw.bb1_crit_edge
    i32 24648, label %entry.sw.bb1_crit_edge14
    i32 24674, label %entry.sw.bb2_crit_edge
    i32 24739, label %entry.sw.bb2_crit_edge15
  ]

entry.sw.bb2_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2

entry.sw.bb1_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %3 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp.i = icmp eq ptr %4, null
  br i1 %cmp.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void @sysfs_remove_group(ptr noundef %dev.i, ptr noundef nonnull @lenovo_attr_group_tpkbd) #14
  %led_micmute.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %4, i32 0, i32 4
  tail call void @led_classdev_unregister(ptr noundef %led_micmute.i) #14
  %led_mute.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %4, i32 0, i32 3
  tail call void @led_classdev_unregister(ptr noundef %led_mute.i) #14
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge14
  %dev.i7 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void @sysfs_remove_group(ptr noundef %dev.i7, ptr noundef nonnull @lenovo_attr_group_cptkbd) #14
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge15
  %driver_data.i.i.i8 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %5 = ptrtoint ptr %driver_data.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i8, align 4
  %cmp.i9 = icmp eq ptr %6, null
  br i1 %cmp.i9, label %sw.bb2.sw.epilog_crit_edge, label %if.end.i13

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end.i13:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #16
  %led_micmute.i10 = getelementptr inbounds %struct.lenovo_drvdata, ptr %6, i32 0, i32 4
  tail call void @led_classdev_unregister(ptr noundef %led_micmute.i10) #14
  %led_mute.i11 = getelementptr inbounds %struct.lenovo_drvdata, ptr %6, i32 0, i32 3
  tail call void @led_classdev_unregister(ptr noundef %led_mute.i11) #14
  %dev.i12 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void @sysfs_remove_group(ptr noundef %dev.i12, ptr noundef nonnull @lenovo_attr_group_tp10ubkbd) #14
  %fn_lock_sync_work.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %6, i32 0, i32 5
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %fn_lock_sync_work.i) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i13, %sw.bb2.sw.epilog_crit_edge, %sw.bb1, %if.end.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  tail call void @hid_hw_stop(ptr noundef %hdev) #14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lenovo_raw_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readnone %report, ptr nocapture noundef %data, i32 noundef %size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %0 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %product, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24647, i32 %1)
  %cmp = icmp eq i32 %1, 24647
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size)
  %cmp1 = icmp eq i32 %size, 3
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %land.lhs.true2, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true2:                                   ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %3)
  %cmp3 = icmp eq i8 %3, 21
  br i1 %cmp3, label %land.lhs.true5, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true2
  %arrayidx6 = getelementptr i8, ptr %data, i32 1
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -108, i8 %5)
  %cmp8 = icmp eq i8 %5, -108
  br i1 %cmp8, label %land.rhs, label %land.lhs.true5.if.end_crit_edge

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs:                                         ; preds = %land.lhs.true5
  %arrayidx10 = getelementptr i8, ptr %data, i32 2
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp12 = icmp eq i8 %7, 1
  br i1 %cmp12, label %if.then, label %land.rhs.if.end_crit_edge, !prof !150

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx6, align 1
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %arrayidx10, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.rhs.if.end_crit_edge, %land.lhs.true5.if.end_crit_edge, %land.lhs.true2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lenovo_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %field, ptr nocapture noundef readonly %usage, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %2 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %product, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %3, label %if.end.return_crit_edge [
    i32 24647, label %if.end.sw.bb_crit_edge
    i32 24648, label %if.end.sw.bb_crit_edge15
    i32 24674, label %if.end.sw.bb2_crit_edge
    i32 24739, label %if.end.sw.bb2_crit_edge16
  ]

if.end.sw.bb2_crit_edge16:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2

if.end.sw.bb_crit_edge15:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge15
  %type.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type.i, align 4
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %6, label %sw.bb.return_crit_edge [
    i8 2, label %land.lhs.true.i
    i8 1, label %land.lhs.true13.i
  ]

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.lhs.true.i:                                  ; preds = %sw.bb
  %code.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %8 = ptrtoint ptr %code.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %code.i, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.58)
  switch i16 %9, label %land.lhs.true.i.return_crit_edge [
    i16 8, label %land.lhs.true.i.if.then.i_crit_edge
    i16 6, label %land.lhs.true.i.if.then.i_crit_edge17
  ]

land.lhs.true.i.if.then.i_crit_edge17:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge17
  %middlebutton_state.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %middlebutton_state.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %middlebutton_state.i, align 4
  br label %return

land.lhs.true13.i:                                ; preds = %sw.bb
  %code14.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %12 = ptrtoint ptr %code14.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %code14.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 274, i16 %13)
  %cmp16.i = icmp eq i16 %13, 274
  br i1 %cmp16.i, label %if.then18.i, label %land.lhs.true13.i.return_crit_edge

land.lhs.true13.i.return_crit_edge:               ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then18.i:                                      ; preds = %land.lhs.true13.i
  %14 = zext i32 %value to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %value, label %if.then18.i.return_crit_edge [
    i32 1, label %if.then21.i
    i32 0, label %if.then25.i
  ]

if.then18.i.return_crit_edge:                     ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then21.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  %middlebutton_state22.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %middlebutton_state22.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %middlebutton_state22.i, align 4
  br label %return

if.then25.i:                                      ; preds = %if.then18.i
  %middlebutton_state26.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %middlebutton_state26.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %middlebutton_state26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp28.i = icmp eq i8 %17, 1
  br i1 %cmp28.i, label %if.then30.i, label %if.then25.i.if.end37.i_crit_edge

if.then25.i.if.end37.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37.i

if.then30.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #16
  %hidinput.i = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 19
  %18 = ptrtoint ptr %hidinput.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hidinput.i, align 4
  %input.i = getelementptr inbounds %struct.hid_input, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %input.i, align 4
  tail call void @input_event(ptr noundef %21, i32 noundef 1, i32 noundef 274, i32 noundef 1) #14
  %22 = ptrtoint ptr %hidinput.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hidinput.i, align 4
  %input32.i = getelementptr inbounds %struct.hid_input, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %input32.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %input32.i, align 4
  tail call void @input_event(ptr noundef %25, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14
  %26 = ptrtoint ptr %hidinput.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hidinput.i, align 4
  %input34.i = getelementptr inbounds %struct.hid_input, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %input34.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %input34.i, align 4
  tail call void @input_event(ptr noundef %29, i32 noundef 1, i32 noundef 274, i32 noundef 0) #14
  %30 = ptrtoint ptr %hidinput.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hidinput.i, align 4
  %input36.i = getelementptr inbounds %struct.hid_input, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %input36.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %input36.i, align 4
  tail call void @input_event(ptr noundef %33, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then30.i, %if.then25.i.if.end37.i_crit_edge
  %34 = ptrtoint ptr %middlebutton_state26.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %middlebutton_state26.i, align 4
  br label %return

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge16
  %type.i11 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %35 = ptrtoint ptr %type.i11 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %type.i11, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp.i = icmp eq i8 %36, 1
  br i1 %cmp.i, label %land.lhs.true.i13, label %sw.bb2.return_crit_edge

sw.bb2.return_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.lhs.true.i13:                                ; preds = %sw.bb2
  %code.i12 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %37 = ptrtoint ptr %code.i12 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %code.i12, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 465, i16 %38)
  %cmp3.i = icmp eq i16 %38, 465
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %value)
  %cmp6.i = icmp eq i32 %value, 1
  %or.cond.i = and i1 %cmp6.i, %cmp3.i
  br i1 %or.cond.i, label %if.then.i14, label %land.lhs.true.i13.return_crit_edge

land.lhs.true.i13.return_crit_edge:               ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then.i14:                                      ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #16
  %fn_lock.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 14
  %39 = ptrtoint ptr %fn_lock.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %fn_lock.i, align 1, !range !151
  %41 = xor i8 %40, 1
  store i8 %41, ptr %fn_lock.i, align 1
  %fn_lock_sync_work.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %42 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %42, ptr noundef %fn_lock_sync_work.i) #14
  br label %return

return:                                           ; preds = %if.then.i14, %land.lhs.true.i13.return_crit_edge, %sw.bb2.return_crit_edge, %if.end37.i, %if.then21.i, %if.then18.i.return_crit_edge, %land.lhs.true13.i.return_crit_edge, %if.then.i, %land.lhs.true.i.return_crit_edge, %sw.bb.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 0, %if.then.i ], [ 1, %if.then18.i.return_crit_edge ], [ 1, %if.end37.i ], [ 1, %if.then21.i ], [ 0, %land.lhs.true13.i.return_crit_edge ], [ 0, %land.lhs.true.i.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ], [ 0, %sw.bb2.return_crit_edge ], [ 0, %land.lhs.true.i13.return_crit_edge ], [ 0, %if.then.i14 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @lenovo_report_fixup(ptr nocapture noundef readonly %hdev, ptr noundef returned %rdesc, ptr nocapture noundef readonly %rsize) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %0 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %product, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24679, i32 %1)
  %cond = icmp eq i32 %1, 24679
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 152, i32 %3)
  %cmp = icmp ugt i32 %3, 152
  br i1 %cmp, label %land.lhs.true, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %arrayidx = getelementptr i8, ptr %rdesc, i32 140
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(13) %arrayidx, ptr noundef nonnull dereferenceable(13) @lenovo_pro_dock_need_fixup_collection, i32 13) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp1 = icmp eq i32 %bcmp, 0
  br i1 %cmp1, label %if.then, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx2 = getelementptr i8, ptr %rdesc, i32 151
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %arrayidx2, align 1
  %arrayidx3 = getelementptr i8, ptr %rdesc, i32 152
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx3, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret ptr %rdesc
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lenovo_input_mapping(ptr nocapture noundef %hdev, ptr noundef readonly %hi, ptr nocapture noundef %field, ptr noundef %usage, ptr nocapture noundef writeonly %bit, ptr nocapture noundef writeonly %max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %0 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %product, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %1, label %entry.return_crit_edge [
    i32 24585, label %sw.bb
    i32 24647, label %entry.sw.bb1_crit_edge
    i32 24648, label %entry.sw.bb1_crit_edge85
    i32 12544, label %entry.sw.bb3_crit_edge
    i32 12547, label %entry.sw.bb3_crit_edge86
    i32 12549, label %entry.sw.bb3_crit_edge87
    i32 12552, label %entry.sw.bb3_crit_edge88
    i32 12553, label %entry.sw.bb3_crit_edge89
    i32 24649, label %entry.sw.bb3_crit_edge90
    i32 24674, label %sw.bb5
    i32 24739, label %sw.bb7
  ]

entry.sw.bb3_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb3

entry.sw.bb3_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb3

entry.sw.bb3_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb3

entry.sw.bb3_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb3

entry.sw.bb3_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb3

entry.sw.bb1_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb1

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 589840, i32 %4)
  %cmp.i = icmp eq i32 %4, 589840
  br i1 %cmp.i, label %if.then.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 1 to ptr), ptr %driver_data.i.i.i, align 4
  %input1.i.i.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %6 = ptrtoint ptr %input1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input1.i.i.i, align 4
  %keybit.i.i.i = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 6
  %type19.i.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %8 = ptrtoint ptr %type19.i.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %type19.i.i.i, align 4
  %code.i.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %9 = ptrtoint ptr %code.i.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 190, ptr %code.i.i.i, align 2
  %10 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 767, ptr %max, align 4
  %11 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %keybit.i.i.i, ptr %bit, align 4
  %12 = load i16, ptr %code.i.i.i, align 2
  %conv1.i.i = zext i16 %12 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i.i, ptr noundef nonnull %keybit.i.i.i) #14
  br label %return

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge85
  %13 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usage, align 4
  %and.i = and i32 %14, -65536
  %15 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %and.i, label %sw.bb1.if.end.i_crit_edge [
    i32 -16777216, label %sw.bb1.if.then.i34_crit_edge
    i32 -6291456, label %sw.bb1.if.then.i34_crit_edge91
  ]

sw.bb1.if.then.i34_crit_edge91:                   ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i34

sw.bb1.if.then.i34_crit_edge:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i34

sw.bb1.if.end.i_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i34:                                      ; preds = %sw.bb1.if.then.i34_crit_edge, %sw.bb1.if.then.i34_crit_edge91
  %trunc1.i = trunc i32 %14 to i16
  %16 = zext i16 %trunc1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.62)
  switch i16 %trunc1.i, label %if.then.i34.if.end.i_crit_edge [
    i16 241, label %sw.bb.i
    i16 242, label %sw.bb6.i
    i16 243, label %sw.bb7.i
    i16 244, label %sw.bb8.i
    i16 245, label %sw.bb9.i
    i16 246, label %sw.bb10.i
    i16 248, label %sw.bb11.i
    i16 249, label %sw.bb12.i
    i16 250, label %sw.bb13.i
    i16 251, label %sw.bb14.i
  ]

if.then.i34.if.end.i_crit_edge:                   ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

sw.bb.i:                                          ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #16
  %input1.i.i.i35 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %17 = ptrtoint ptr %input1.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %input1.i.i.i35, align 4
  %keybit.i.i.i36 = getelementptr inbounds %struct.input_dev, ptr %18, i32 0, i32 6
  %type19.i.i.i37 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %19 = ptrtoint ptr %type19.i.i.i37 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %type19.i.i.i37, align 4
  %code.i.i.i38 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %20 = ptrtoint ptr %code.i.i.i38 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 190, ptr %code.i.i.i38, align 2
  %21 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 767, ptr %max, align 4
  %22 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %keybit.i.i.i36, ptr %bit, align 4
  %23 = load i16, ptr %code.i.i.i38, align 2
  %conv1.i.i39 = zext i16 %23 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i.i39, ptr noundef nonnull %keybit.i.i.i36) #14
  br label %return

sw.bb6.i:                                         ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #16
  %input1.i.i3.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %24 = ptrtoint ptr %input1.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %input1.i.i3.i, align 4
  %keybit.i.i4.i = getelementptr inbounds %struct.input_dev, ptr %25, i32 0, i32 6
  %type19.i.i5.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %26 = ptrtoint ptr %type19.i.i5.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %type19.i.i5.i, align 4
  %code.i.i6.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %27 = ptrtoint ptr %code.i.i6.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 224, ptr %code.i.i6.i, align 2
  %28 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 767, ptr %max, align 4
  %29 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %keybit.i.i4.i, ptr %bit, align 4
  %30 = load i16, ptr %code.i.i6.i, align 2
  %conv1.i7.i = zext i16 %30 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i7.i, ptr noundef nonnull %keybit.i.i4.i) #14
  br label %return

sw.bb7.i:                                         ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #16
  %input1.i.i8.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %31 = ptrtoint ptr %input1.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %input1.i.i8.i, align 4
  %keybit.i.i9.i = getelementptr inbounds %struct.input_dev, ptr %32, i32 0, i32 6
  %type19.i.i10.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %33 = ptrtoint ptr %type19.i.i10.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %type19.i.i10.i, align 4
  %code.i.i11.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %34 = ptrtoint ptr %code.i.i11.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 225, ptr %code.i.i11.i, align 2
  %35 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 767, ptr %max, align 4
  %36 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %keybit.i.i9.i, ptr %bit, align 4
  %37 = load i16, ptr %code.i.i11.i, align 2
  %conv1.i12.i = zext i16 %37 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i12.i, ptr noundef nonnull %keybit.i.i9.i) #14
  br label %return

sw.bb8.i:                                         ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #16
  %input1.i.i13.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %38 = ptrtoint ptr %input1.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %input1.i.i13.i, align 4
  %keybit.i.i14.i = getelementptr inbounds %struct.input_dev, ptr %39, i32 0, i32 6
  %type19.i.i15.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %40 = ptrtoint ptr %type19.i.i15.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %type19.i.i15.i, align 4
  %code.i.i16.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %41 = ptrtoint ptr %code.i.i16.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 227, ptr %code.i.i16.i, align 2
  %42 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 767, ptr %max, align 4
  %43 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %keybit.i.i14.i, ptr %bit, align 4
  %44 = load i16, ptr %code.i.i16.i, align 2
  %conv1.i17.i = zext i16 %44 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i17.i, ptr noundef nonnull %keybit.i.i14.i) #14
  br label %return

sw.bb9.i:                                         ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #16
  %input1.i.i18.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %45 = ptrtoint ptr %input1.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %input1.i.i18.i, align 4
  %keybit.i.i19.i = getelementptr inbounds %struct.input_dev, ptr %46, i32 0, i32 6
  %type19.i.i20.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %47 = ptrtoint ptr %type19.i.i20.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %type19.i.i20.i, align 4
  %code.i.i21.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %48 = ptrtoint ptr %code.i.i21.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 238, ptr %code.i.i21.i, align 2
  %49 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 767, ptr %max, align 4
  %50 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %keybit.i.i19.i, ptr %bit, align 4
  %51 = load i16, ptr %code.i.i21.i, align 2
  %conv1.i22.i = zext i16 %51 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i22.i, ptr noundef nonnull %keybit.i.i19.i) #14
  br label %return

sw.bb10.i:                                        ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #16
  %input1.i.i23.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %52 = ptrtoint ptr %input1.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %input1.i.i23.i, align 4
  %keybit.i.i24.i = getelementptr inbounds %struct.input_dev, ptr %53, i32 0, i32 6
  %type19.i.i25.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %54 = ptrtoint ptr %type19.i.i25.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %type19.i.i25.i, align 4
  %code.i.i26.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %55 = ptrtoint ptr %code.i.i26.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 171, ptr %code.i.i26.i, align 2
  %56 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 767, ptr %max, align 4
  %57 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %keybit.i.i24.i, ptr %bit, align 4
  %58 = load i16, ptr %code.i.i26.i, align 2
  %conv1.i27.i = zext i16 %58 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i27.i, ptr noundef nonnull %keybit.i.i24.i) #14
  br label %return

sw.bb11.i:                                        ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #16
  %input1.i.i28.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %59 = ptrtoint ptr %input1.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %input1.i.i28.i, align 4
  %keybit.i.i29.i = getelementptr inbounds %struct.input_dev, ptr %60, i32 0, i32 6
  %type19.i.i30.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %61 = ptrtoint ptr %type19.i.i30.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %type19.i.i30.i, align 4
  %code.i.i31.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %62 = ptrtoint ptr %code.i.i31.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 120, ptr %code.i.i31.i, align 2
  %63 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 767, ptr %max, align 4
  %64 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %keybit.i.i29.i, ptr %bit, align 4
  %65 = load i16, ptr %code.i.i31.i, align 2
  %conv1.i32.i = zext i16 %65 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i32.i, ptr noundef nonnull %keybit.i.i29.i) #14
  br label %return

sw.bb12.i:                                        ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #16
  %input1.i.i33.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %66 = ptrtoint ptr %input1.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %input1.i.i33.i, align 4
  %keybit.i.i34.i = getelementptr inbounds %struct.input_dev, ptr %67, i32 0, i32 6
  %type19.i.i35.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %68 = ptrtoint ptr %type19.i.i35.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %type19.i.i35.i, align 4
  %code.i.i36.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %69 = ptrtoint ptr %code.i.i36.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 144, ptr %code.i.i36.i, align 2
  %70 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 767, ptr %max, align 4
  %71 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %keybit.i.i34.i, ptr %bit, align 4
  %72 = load i16, ptr %code.i.i36.i, align 2
  %conv1.i37.i = zext i16 %72 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i37.i, ptr noundef nonnull %keybit.i.i34.i) #14
  br label %return

sw.bb13.i:                                        ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #16
  %input1.i.i38.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %73 = ptrtoint ptr %input1.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %input1.i.i38.i, align 4
  %keybit.i.i39.i = getelementptr inbounds %struct.input_dev, ptr %74, i32 0, i32 6
  %type19.i.i40.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %75 = ptrtoint ptr %type19.i.i40.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %type19.i.i40.i, align 4
  %code.i.i41.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %76 = ptrtoint ptr %code.i.i41.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 465, ptr %code.i.i41.i, align 2
  %77 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 767, ptr %max, align 4
  %78 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %keybit.i.i39.i, ptr %bit, align 4
  %79 = load i16, ptr %code.i.i41.i, align 2
  %conv1.i42.i = zext i16 %79 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i42.i, ptr noundef nonnull %keybit.i.i39.i) #14
  br label %return

sw.bb14.i:                                        ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #16
  %input1.i.i43.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %80 = ptrtoint ptr %input1.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %input1.i.i43.i, align 4
  %keybit.i.i44.i = getelementptr inbounds %struct.input_dev, ptr %81, i32 0, i32 6
  %type19.i.i45.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %82 = ptrtoint ptr %type19.i.i45.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %type19.i.i45.i, align 4
  %code.i.i46.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %83 = ptrtoint ptr %code.i.i46.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 274, ptr %code.i.i46.i, align 2
  %84 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 767, ptr %max, align 4
  %85 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %keybit.i.i44.i, ptr %bit, align 4
  %86 = load i16, ptr %code.i.i46.i, align 2
  %conv1.i47.i = zext i16 %86 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i47.i, ptr noundef nonnull %keybit.i.i44.i) #14
  br label %return

if.end.i:                                         ; preds = %if.then.i34.if.end.i_crit_edge, %sw.bb1.if.end.i_crit_edge
  %87 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %14, label %if.end35.i [
    i32 65592, label %if.end.i.return_crit_edge
    i32 589827, label %if.end.i.return_crit_edge92
    i32 787000, label %if.end.i.return_crit_edge93
  ]

if.end.i.return_crit_edge93:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end.i.return_crit_edge92:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end35.i:                                       ; preds = %if.end.i
  %88 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %and.i, label %if.end35.i.return_crit_edge [
    i32 -15728640, label %if.end35.i.if.then43.i_crit_edge
    i32 -6225920, label %if.end35.i.if.then43.i_crit_edge94
  ]

if.end35.i.if.then43.i_crit_edge94:               ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then43.i

if.end35.i.if.then43.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then43.i

if.end35.i.return_crit_edge:                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then43.i:                                      ; preds = %if.end35.i.if.then43.i_crit_edge, %if.end35.i.if.then43.i_crit_edge94
  %flags.i = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 5
  %89 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %90, 6
  store i32 %or.i, ptr %flags.i, align 4
  %logical_minimum.i = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 11
  %91 = ptrtoint ptr %logical_minimum.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -127, ptr %logical_minimum.i, align 4
  %logical_maximum.i = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 12
  %92 = ptrtoint ptr %logical_maximum.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 127, ptr %logical_maximum.i, align 4
  %93 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %usage, align 4
  %trunc.i = trunc i32 %94 to i16
  %95 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.65)
  switch i16 %trunc.i, label %if.then43.i.return_crit_edge [
    i16 0, label %sw.bb46.i
    i16 1, label %sw.bb47.i
  ]

if.then43.i.return_crit_edge:                     ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb46.i:                                        ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @hid_map_usage(ptr noundef %hi, ptr noundef %usage, ptr noundef %bit, ptr noundef %max, i8 noundef zeroext 2, i32 noundef 6) #14
  br label %return

sw.bb47.i:                                        ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @hid_map_usage(ptr noundef %hi, ptr noundef %usage, ptr noundef %bit, ptr noundef %max, i8 noundef zeroext 2, i32 noundef 8) #14
  br label %return

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge86, %entry.sw.bb3_crit_edge87, %entry.sw.bb3_crit_edge88, %entry.sw.bb3_crit_edge89, %entry.sw.bb3_crit_edge90
  %96 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65586, i32 %97)
  %cmp.i41 = icmp eq i32 %97, 65586
  br i1 %cmp.i41, label %if.then.i42, label %sw.bb3.return_crit_edge

sw.bb3.return_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then.i42:                                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #16
  %input1.i.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %98 = ptrtoint ptr %input1.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %input1.i.i, align 4
  %relbit.i.i = getelementptr inbounds %struct.input_dev, ptr %99, i32 0, i32 7
  %type19.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %100 = ptrtoint ptr %type19.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 2, ptr %type19.i.i, align 4
  %code.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %101 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 6, ptr %code.i.i, align 2
  %102 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 15, ptr %max, align 4
  %103 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %relbit.i.i, ptr %bit, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  %104 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 786433, i32 %105)
  %cmp.i44 = icmp eq i32 %105, 786433
  br i1 %cmp.i44, label %if.then.i45, label %sw.bb5.if.end.i52_crit_edge

sw.bb5.if.end.i52_crit_edge:                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i52

if.then.i45:                                      ; preds = %sw.bb5
  %usage_index.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 2
  %106 = ptrtoint ptr %usage_index.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %usage_index.i, align 4
  %108 = zext i32 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %107, label %if.then.i45.if.end.i52_crit_edge [
    i32 8, label %sw.bb.i51
    i32 9, label %sw.bb1.i
    i32 10, label %sw.bb2.i
    i32 11, label %sw.bb3.i
    i32 12, label %sw.bb4.i
  ]

if.then.i45.if.end.i52_crit_edge:                 ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i52

sw.bb.i51:                                        ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_pc() #16
  %input1.i.i.i46 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %109 = ptrtoint ptr %input1.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %input1.i.i.i46, align 4
  %keybit.i.i.i47 = getelementptr inbounds %struct.input_dev, ptr %110, i32 0, i32 6
  %type19.i.i.i48 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %111 = ptrtoint ptr %type19.i.i.i48 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %type19.i.i.i48, align 4
  %code.i.i.i49 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %112 = ptrtoint ptr %code.i.i.i49 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 465, ptr %code.i.i.i49, align 2
  %113 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 767, ptr %max, align 4
  %114 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %keybit.i.i.i47, ptr %bit, align 4
  %115 = load i16, ptr %code.i.i.i49, align 2
  %conv1.i.i50 = zext i16 %115 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i.i50, ptr noundef nonnull %keybit.i.i.i47) #14
  br label %return

sw.bb1.i:                                         ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_pc() #16
  %input1.i.i1.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %116 = ptrtoint ptr %input1.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %input1.i.i1.i, align 4
  %keybit.i.i2.i = getelementptr inbounds %struct.input_dev, ptr %117, i32 0, i32 6
  %type19.i.i3.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %118 = ptrtoint ptr %type19.i.i3.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 1, ptr %type19.i.i3.i, align 4
  %code.i.i4.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %119 = ptrtoint ptr %code.i.i4.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 190, ptr %code.i.i4.i, align 2
  %120 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 767, ptr %max, align 4
  %121 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %keybit.i.i2.i, ptr %bit, align 4
  %122 = load i16, ptr %code.i.i4.i, align 2
  %conv1.i5.i = zext i16 %122 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i5.i, ptr noundef nonnull %keybit.i.i2.i) #14
  br label %return

sw.bb2.i:                                         ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_pc() #16
  %input1.i.i6.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %123 = ptrtoint ptr %input1.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %input1.i.i6.i, align 4
  %keybit.i.i7.i = getelementptr inbounds %struct.input_dev, ptr %124, i32 0, i32 6
  %type19.i.i8.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %125 = ptrtoint ptr %type19.i.i8.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 1, ptr %type19.i.i8.i, align 4
  %code.i.i9.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %126 = ptrtoint ptr %code.i.i9.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 171, ptr %code.i.i9.i, align 2
  %127 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 767, ptr %max, align 4
  %128 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %keybit.i.i7.i, ptr %bit, align 4
  %129 = load i16, ptr %code.i.i9.i, align 2
  %conv1.i10.i = zext i16 %129 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i10.i, ptr noundef nonnull %keybit.i.i7.i) #14
  br label %return

sw.bb3.i:                                         ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_pc() #16
  %input1.i.i11.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %130 = ptrtoint ptr %input1.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %input1.i.i11.i, align 4
  %keybit.i.i12.i = getelementptr inbounds %struct.input_dev, ptr %131, i32 0, i32 6
  %type19.i.i13.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %132 = ptrtoint ptr %type19.i.i13.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %type19.i.i13.i, align 4
  %code.i.i14.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %133 = ptrtoint ptr %code.i.i14.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 217, ptr %code.i.i14.i, align 2
  %134 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 767, ptr %max, align 4
  %135 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %keybit.i.i12.i, ptr %bit, align 4
  %136 = load i16, ptr %code.i.i14.i, align 2
  %conv1.i15.i = zext i16 %136 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i15.i, ptr noundef nonnull %keybit.i.i12.i) #14
  br label %return

sw.bb4.i:                                         ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_pc() #16
  %input1.i.i16.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %137 = ptrtoint ptr %input1.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %input1.i.i16.i, align 4
  %keybit.i.i17.i = getelementptr inbounds %struct.input_dev, ptr %138, i32 0, i32 6
  %type19.i.i18.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %139 = ptrtoint ptr %type19.i.i18.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 1, ptr %type19.i.i18.i, align 4
  %code.i.i19.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %140 = ptrtoint ptr %code.i.i19.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 144, ptr %code.i.i19.i, align 2
  %141 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 767, ptr %max, align 4
  %142 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %keybit.i.i17.i, ptr %bit, align 4
  %143 = load i16, ptr %code.i.i19.i, align 2
  %conv1.i20.i = zext i16 %143 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i20.i, ptr noundef nonnull %keybit.i.i17.i) #14
  br label %return

if.end.i52:                                       ; preds = %if.then.i45.if.end.i52_crit_edge, %sw.bb5.if.end.i52_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 458866, i32 %105)
  %cmp6.i = icmp eq i32 %105, 458866
  %..i = sext i1 %cmp6.i to i32
  br label %return

sw.bb7:                                           ; preds = %entry
  %144 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %usage, align 4
  %146 = zext i32 %145 to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %145, label %sw.bb7.return_crit_edge [
    i32 786433, label %if.then.i55
    i32 458906, label %if.then11.i
  ]

sw.bb7.return_crit_edge:                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then.i55:                                      ; preds = %sw.bb7
  %usage_index.i54 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 2
  %147 = ptrtoint ptr %usage_index.i54 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %usage_index.i54, align 4
  %149 = zext i32 %148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %148, label %if.then.i55.return_crit_edge [
    i32 0, label %sw.bb.i60
    i32 1, label %sw.bb1.i65
    i32 2, label %sw.bb2.i70
    i32 3, label %sw.bb3.i75
    i32 8, label %sw.bb4.i80
    i32 9, label %sw.bb5.i
    i32 10, label %sw.bb6.i81
    i32 13, label %sw.bb7.i82
    i32 14, label %sw.bb8.i83
  ]

if.then.i55.return_crit_edge:                     ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb.i60:                                        ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #16
  %input1.i.i.i56 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %150 = ptrtoint ptr %input1.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %input1.i.i.i56, align 4
  %keybit.i.i.i57 = getelementptr inbounds %struct.input_dev, ptr %151, i32 0, i32 6
  %type19.i.i.i58 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %152 = ptrtoint ptr %type19.i.i.i58 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 1, ptr %type19.i.i.i58, align 4
  %code.i.i.i59 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %153 = ptrtoint ptr %code.i.i.i59 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 237, ptr %code.i.i.i59, align 2
  br label %return.sink.split.i

sw.bb1.i65:                                       ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #16
  %input1.i.i1.i61 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %154 = ptrtoint ptr %input1.i.i1.i61 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %input1.i.i1.i61, align 4
  %keybit.i.i2.i62 = getelementptr inbounds %struct.input_dev, ptr %155, i32 0, i32 6
  %type19.i.i3.i63 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %156 = ptrtoint ptr %type19.i.i3.i63 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 1, ptr %type19.i.i3.i63, align 4
  %code.i.i4.i64 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %157 = ptrtoint ptr %code.i.i4.i64 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 374, ptr %code.i.i4.i64, align 2
  br label %return.sink.split.i

sw.bb2.i70:                                       ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #16
  %input1.i.i6.i66 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %158 = ptrtoint ptr %input1.i.i6.i66 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %input1.i.i6.i66, align 4
  %keybit.i.i7.i67 = getelementptr inbounds %struct.input_dev, ptr %159, i32 0, i32 6
  %type19.i.i8.i68 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %160 = ptrtoint ptr %type19.i.i8.i68 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 1, ptr %type19.i.i8.i68, align 4
  %code.i.i9.i69 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %161 = ptrtoint ptr %code.i.i9.i69 to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 656, ptr %code.i.i9.i69, align 2
  br label %return.sink.split.i

sw.bb3.i75:                                       ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #16
  %input1.i.i11.i71 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %162 = ptrtoint ptr %input1.i.i11.i71 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %input1.i.i11.i71, align 4
  %keybit.i.i12.i72 = getelementptr inbounds %struct.input_dev, ptr %163, i32 0, i32 6
  %type19.i.i13.i73 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %164 = ptrtoint ptr %type19.i.i13.i73 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 1, ptr %type19.i.i13.i73, align 4
  %code.i.i14.i74 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %165 = ptrtoint ptr %code.i.i14.i74 to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 634, ptr %code.i.i14.i74, align 2
  br label %return.sink.split.i

sw.bb4.i80:                                       ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #16
  %input1.i.i16.i76 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %166 = ptrtoint ptr %input1.i.i16.i76 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %input1.i.i16.i76, align 4
  %keybit.i.i17.i77 = getelementptr inbounds %struct.input_dev, ptr %167, i32 0, i32 6
  %type19.i.i18.i78 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %168 = ptrtoint ptr %type19.i.i18.i78 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 1, ptr %type19.i.i18.i78, align 4
  %code.i.i19.i79 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %169 = ptrtoint ptr %code.i.i19.i79 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 465, ptr %code.i.i19.i79, align 2
  br label %return.sink.split.i

sw.bb5.i:                                         ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #16
  %input1.i.i21.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %170 = ptrtoint ptr %input1.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %input1.i.i21.i, align 4
  %keybit.i.i22.i = getelementptr inbounds %struct.input_dev, ptr %171, i32 0, i32 6
  %type19.i.i23.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %172 = ptrtoint ptr %type19.i.i23.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 1, ptr %type19.i.i23.i, align 4
  %code.i.i24.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %173 = ptrtoint ptr %code.i.i24.i to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 248, ptr %code.i.i24.i, align 2
  br label %return.sink.split.i

sw.bb6.i81:                                       ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #16
  %input1.i.i26.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %174 = ptrtoint ptr %input1.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %input1.i.i26.i, align 4
  %keybit.i.i27.i = getelementptr inbounds %struct.input_dev, ptr %175, i32 0, i32 6
  %type19.i.i28.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %176 = ptrtoint ptr %type19.i.i28.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 1, ptr %type19.i.i28.i, align 4
  %code.i.i29.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %177 = ptrtoint ptr %code.i.i29.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 171, ptr %code.i.i29.i, align 2
  br label %return.sink.split.i

sw.bb7.i82:                                       ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #16
  %input1.i.i31.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %178 = ptrtoint ptr %input1.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %input1.i.i31.i, align 4
  %keybit.i.i32.i = getelementptr inbounds %struct.input_dev, ptr %179, i32 0, i32 6
  %type19.i.i33.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %180 = ptrtoint ptr %type19.i.i33.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 1, ptr %type19.i.i33.i, align 4
  %code.i.i34.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %181 = ptrtoint ptr %code.i.i34.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 227, ptr %code.i.i34.i, align 2
  br label %return.sink.split.i

sw.bb8.i83:                                       ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #16
  %input1.i.i36.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %182 = ptrtoint ptr %input1.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %input1.i.i36.i, align 4
  %keybit.i.i37.i = getelementptr inbounds %struct.input_dev, ptr %183, i32 0, i32 6
  %type19.i.i38.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %184 = ptrtoint ptr %type19.i.i38.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 1, ptr %type19.i.i38.i, align 4
  %code.i.i39.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %185 = ptrtoint ptr %code.i.i39.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 238, ptr %code.i.i39.i, align 2
  br label %return.sink.split.i

if.then11.i:                                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #16
  %input1.i.i41.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %186 = ptrtoint ptr %input1.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %input1.i.i41.i, align 4
  %keybit.i.i42.i = getelementptr inbounds %struct.input_dev, ptr %187, i32 0, i32 6
  %type19.i.i43.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %188 = ptrtoint ptr %type19.i.i43.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 1, ptr %type19.i.i43.i, align 4
  %code.i.i44.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %189 = ptrtoint ptr %code.i.i44.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 99, ptr %code.i.i44.i, align 2
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.then11.i, %sw.bb8.i83, %sw.bb7.i82, %sw.bb6.i81, %sw.bb5.i, %sw.bb4.i80, %sw.bb3.i75, %sw.bb2.i70, %sw.bb1.i65, %sw.bb.i60
  %keybit.i.i42.sink47.i = phi ptr [ %keybit.i.i42.i, %if.then11.i ], [ %keybit.i.i37.i, %sw.bb8.i83 ], [ %keybit.i.i32.i, %sw.bb7.i82 ], [ %keybit.i.i27.i, %sw.bb6.i81 ], [ %keybit.i.i22.i, %sw.bb5.i ], [ %keybit.i.i17.i77, %sw.bb4.i80 ], [ %keybit.i.i12.i72, %sw.bb3.i75 ], [ %keybit.i.i7.i67, %sw.bb2.i70 ], [ %keybit.i.i2.i62, %sw.bb1.i65 ], [ %keybit.i.i.i57, %sw.bb.i60 ]
  %code.i.i44.sink.i = phi ptr [ %code.i.i44.i, %if.then11.i ], [ %code.i.i39.i, %sw.bb8.i83 ], [ %code.i.i34.i, %sw.bb7.i82 ], [ %code.i.i29.i, %sw.bb6.i81 ], [ %code.i.i24.i, %sw.bb5.i ], [ %code.i.i19.i79, %sw.bb4.i80 ], [ %code.i.i14.i74, %sw.bb3.i75 ], [ %code.i.i9.i69, %sw.bb2.i70 ], [ %code.i.i4.i64, %sw.bb1.i65 ], [ %code.i.i.i59, %sw.bb.i60 ]
  %190 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 767, ptr %max, align 4
  %191 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %keybit.i.i42.sink47.i, ptr %bit, align 4
  %192 = ptrtoint ptr %code.i.i44.sink.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %code.i.i44.sink.i, align 2
  %conv1.i45.i = zext i16 %193 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i45.i, ptr noundef nonnull %keybit.i.i42.sink47.i) #14
  br label %return

return:                                           ; preds = %return.sink.split.i, %if.then.i55.return_crit_edge, %sw.bb7.return_crit_edge, %if.end.i52, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i51, %if.then.i42, %sw.bb3.return_crit_edge, %sw.bb47.i, %sw.bb46.i, %if.then43.i.return_crit_edge, %if.end35.i.return_crit_edge, %if.end.i.return_crit_edge, %if.end.i.return_crit_edge92, %if.end.i.return_crit_edge93, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb.i, %if.then.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %if.then.i ], [ 0, %sw.bb.return_crit_edge ], [ 1, %sw.bb47.i ], [ 1, %sw.bb46.i ], [ 1, %sw.bb14.i ], [ 1, %sw.bb13.i ], [ 1, %sw.bb12.i ], [ 1, %sw.bb11.i ], [ 1, %sw.bb10.i ], [ 1, %sw.bb9.i ], [ 1, %sw.bb8.i ], [ 1, %sw.bb7.i ], [ 1, %sw.bb6.i ], [ 1, %sw.bb.i ], [ -1, %if.end.i.return_crit_edge ], [ -1, %if.then43.i.return_crit_edge ], [ 0, %if.end35.i.return_crit_edge ], [ -1, %if.end.i.return_crit_edge92 ], [ -1, %if.end.i.return_crit_edge93 ], [ 1, %if.then.i42 ], [ 0, %sw.bb3.return_crit_edge ], [ 1, %sw.bb4.i ], [ 1, %sw.bb3.i ], [ 1, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 1, %sw.bb.i51 ], [ %..i, %if.end.i52 ], [ 0, %if.then.i55.return_crit_edge ], [ 0, %sw.bb7.return_crit_edge ], [ 1, %return.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lenovo_input_configured(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %hi) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %0 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %product, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 24585, label %entry.sw.bb_crit_edge
    i32 24647, label %entry.sw.bb_crit_edge9
    i32 24648, label %entry.sw.bb_crit_edge10
  ]

entry.sw.bb_crit_edge10:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.sw.bb_crit_edge9:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge9, %entry.sw.bb_crit_edge10
  %input = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %3 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %input, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %evbit, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %propbit = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 4
  %8 = ptrtoint ptr %propbit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %propbit, align 4
  %or.i = or i32 %9, 1
  store i32 %or.i, ptr %propbit, align 4
  %10 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %input, align 4
  %propbit4 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %propbit4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %propbit4, align 4
  %or.i8 = or i32 %13, 32
  store i32 %or.i8, ptr %propbit4, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lenovo_probe_cptkbd(ptr noundef %hdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %0 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %product, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24647, i32 %1)
  %cmp = icmp eq i32 %1, 24647
  br i1 %cmp, label %land.lhs.true, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 13
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1.not = icmp eq i32 %3, 1
  br i1 %cmp1.not, label %land.lhs.true.if.end5_crit_edge, label %do.body

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lenovo_probe_cptkbd.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lenovo_probe_cptkbd, %if.then4)) #14
          to label %cleanup [label %if.then4], !srcloc !152

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lenovo_probe_cptkbd.__UNIQUE_ID_ddebug223, ptr noundef %dev, ptr noundef nonnull @.str.32) #14
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  %dev6 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev6, i32 noundef 976, i32 noundef 3520) #14
  %cmp8 = icmp eq ptr %call.i, null
  br i1 %cmp8, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.33) #17
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call15 = tail call fastcc i32 @lenovo_send_cmd_cptkbd(ptr noundef %hdev, i8 noundef zeroext 1, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.if.end22_crit_edge, label %do.end20

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev6, ptr noundef nonnull @.str.35, i32 noundef %call15) #17
  br label %if.end22

if.end22:                                         ; preds = %do.end20, %if.end14.if.end22_crit_edge
  %call23 = tail call fastcc i32 @lenovo_send_cmd_cptkbd(ptr noundef %hdev, i8 noundef zeroext 9, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.if.end30_crit_edge, label %do.end28

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev6, ptr noundef nonnull @.str.38, i32 noundef %call23) #17
  br label %if.end30

if.end30:                                         ; preds = %do.end28, %if.end22.if.end30_crit_edge
  %middlebutton_state = getelementptr inbounds %struct.lenovo_drvdata, ptr %call.i, i32 0, i32 13
  %5 = ptrtoint ptr %middlebutton_state to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %middlebutton_state, align 4
  %fn_lock = getelementptr inbounds %struct.lenovo_drvdata, ptr %call.i, i32 0, i32 14
  %6 = ptrtoint ptr %fn_lock to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %fn_lock, align 1
  %sensitivity = getelementptr inbounds %struct.lenovo_drvdata, ptr %call.i, i32 0, i32 11
  %7 = ptrtoint ptr %sensitivity to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 5, ptr %sensitivity, align 4
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %fn_lock.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %fn_lock.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fn_lock.i, align 1, !range !151
  %call1.i = tail call fastcc i32 @lenovo_send_cmd_cptkbd(ptr noundef %hdev, i8 noundef zeroext 5, i8 noundef zeroext %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end30.if.end.i_crit_edge, label %do.end.i

if.end30.if.end.i_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.42, i32 noundef %call1.i) #17
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end30.if.end.i_crit_edge
  %sensitivity.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %9, i32 0, i32 11
  %12 = ptrtoint ptr %sensitivity.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sensitivity.i, align 4
  %conv3.i = trunc i32 %13 to i8
  %call4.i = tail call fastcc i32 @lenovo_send_cmd_cptkbd(ptr noundef %hdev, i8 noundef zeroext 2, i8 noundef zeroext %conv3.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.lenovo_features_set_cptkbd.exit_crit_edge, label %do.end9.i

if.end.i.lenovo_features_set_cptkbd.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lenovo_features_set_cptkbd.exit

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.45, i32 noundef %call4.i) #17
  br label %lenovo_features_set_cptkbd.exit

lenovo_features_set_cptkbd.exit:                  ; preds = %do.end9.i, %if.end.i.lenovo_features_set_cptkbd.exit_crit_edge
  %call32 = tail call i32 @sysfs_create_group(ptr noundef %dev6, ptr noundef nonnull @lenovo_attr_group_cptkbd) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %lenovo_features_set_cptkbd.exit.cleanup_crit_edge, label %do.end37

lenovo_features_set_cptkbd.exit.cleanup_crit_edge: ; preds = %lenovo_features_set_cptkbd.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end37:                                         ; preds = %lenovo_features_set_cptkbd.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev6, ptr noundef nonnull @.str.10, i32 noundef %call32) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %lenovo_features_set_cptkbd.exit.cleanup_crit_edge, %do.end12, %if.then4, %do.body
  %retval.0 = phi i32 [ -12, %do.end12 ], [ 0, %if.then4 ], [ 0, %do.end37 ], [ 0, %lenovo_features_set_cptkbd.exit.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hid_validate_values(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lenovo_register_leds(ptr noundef %hdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %init_name.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %call2 = tail call i32 @strlen(ptr noundef %retval.0.i) #18
  %add = add i32 %call2, 16
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %add, i32 noundef 3520) #14
  %call.i85 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %add, i32 noundef 3520) #14
  %cmp = icmp eq ptr %call.i, null
  %cmp7 = icmp eq ptr %call.i85, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp7
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #17
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i87 = icmp eq ptr %7, null
  br i1 %tobool.not.i87, label %if.end.i88, label %if.end.dev_name.exit90_crit_edge

if.end.dev_name.exit90_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit90

if.end.i88:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %dev_name.exit90

dev_name.exit90:                                  ; preds = %if.end.i88, %if.end.dev_name.exit90_crit_edge
  %retval.0.i89 = phi ptr [ %9, %if.end.i88 ], [ %7, %if.end.dev_name.exit90_crit_edge ]
  %call11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i, i32 noundef %add, ptr noundef nonnull @.str.25, ptr noundef %retval.0.i89)
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i92 = icmp eq ptr %11, null
  br i1 %tobool.not.i92, label %if.end.i93, label %dev_name.exit90.dev_name.exit95_crit_edge

dev_name.exit90.dev_name.exit95_crit_edge:        ; preds = %dev_name.exit90
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit95

if.end.i93:                                       ; preds = %dev_name.exit90
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  br label %dev_name.exit95

dev_name.exit95:                                  ; preds = %if.end.i93, %dev_name.exit90.dev_name.exit95_crit_edge
  %retval.0.i94 = phi ptr [ %13, %if.end.i93 ], [ %11, %dev_name.exit90.dev_name.exit95_crit_edge ]
  %call14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i85, i32 noundef %add, ptr noundef nonnull @.str.26, ptr noundef %retval.0.i94)
  %led_mute = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %led_mute to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %led_mute, align 4
  %default_trigger = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 3, i32 14
  %15 = ptrtoint ptr %default_trigger to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.27, ptr %default_trigger, align 4
  %brightness_set_blocking = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 3, i32 6
  %16 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @lenovo_led_brightness_set, ptr %brightness_set_blocking, align 4
  %max_brightness = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %max_brightness, align 4
  %flags = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 524288, ptr %flags, align 4
  %dev21 = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 3, i32 11
  %19 = ptrtoint ptr %dev21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %dev21, align 4
  %call.i96 = tail call i32 @led_classdev_register_ext(ptr noundef %dev, ptr noundef %led_mute, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %cmp25 = icmp slt i32 %call.i96, 0
  br i1 %cmp25, label %dev_name.exit95.cleanup_crit_edge, label %if.end27

dev_name.exit95.cleanup_crit_edge:                ; preds = %dev_name.exit95
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end27:                                         ; preds = %dev_name.exit95
  %led_micmute = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %led_micmute to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i85, ptr %led_micmute, align 4
  %default_trigger30 = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 4, i32 14
  %21 = ptrtoint ptr %default_trigger30 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.28, ptr %default_trigger30, align 4
  %brightness_set_blocking32 = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 4, i32 6
  %22 = ptrtoint ptr %brightness_set_blocking32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @lenovo_led_brightness_set, ptr %brightness_set_blocking32, align 4
  %max_brightness34 = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 4, i32 2
  %23 = ptrtoint ptr %max_brightness34 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %max_brightness34, align 4
  %flags36 = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 4, i32 3
  %24 = ptrtoint ptr %flags36 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 524288, ptr %flags36, align 4
  %dev39 = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 4, i32 11
  %25 = ptrtoint ptr %dev39 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev, ptr %dev39, align 4
  %call.i97 = tail call i32 @led_classdev_register_ext(ptr noundef %dev, ptr noundef %led_micmute, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %cmp43 = icmp slt i32 %call.i97, 0
  br i1 %cmp43, label %if.then44, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then44:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @led_classdev_unregister(ptr noundef %led_mute) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.end27.cleanup_crit_edge, %dev_name.exit95.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call.i97, %if.then44 ], [ %call.i96, %dev_name.exit95.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attr_press_to_select_show_tpkbd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %press_to_select = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %press_to_select to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %press_to_select, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.17, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attr_press_to_select_store_tpkbd(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -3264
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #14
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !153
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %press_to_select = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %press_to_select to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %press_to_select, align 4
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx1.i = getelementptr i8, ptr %dev, i32 -1108
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx1.i, align 4
  %press_to_select.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %8, i32 0, i32 7
  %11 = ptrtoint ptr %press_to_select.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %press_to_select.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 1
  %field.i = getelementptr inbounds %struct.hid_report, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %field.i, align 4
  %value.i = getelementptr inbounds %struct.hid_field, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %value.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond.i, ptr %16, align 4
  %dragging.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %8, i32 0, i32 8
  %18 = ptrtoint ptr %dragging.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dragging.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool4.not.i = icmp eq i32 %19, 0
  %cond5.i = select i1 %tobool4.not.i, i32 8, i32 4
  %20 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %field.i, align 4
  %value8.i = getelementptr inbounds %struct.hid_field, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %value8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %value8.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %or.i = or i32 %25, %cond5.i
  store i32 %or.i, ptr %23, align 4
  %release_to_select.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %8, i32 0, i32 9
  %26 = ptrtoint ptr %release_to_select.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %release_to_select.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool10.not.i = icmp eq i32 %27, 0
  %cond11.i = select i1 %tobool10.not.i, i32 32, i32 16
  %28 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %field.i, align 4
  %value14.i = getelementptr inbounds %struct.hid_field, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %value14.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %value14.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %or16.i = or i32 %33, %cond11.i
  store i32 %or16.i, ptr %31, align 4
  %select_right.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %8, i32 0, i32 10
  %34 = ptrtoint ptr %select_right.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %select_right.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool17.not.i = icmp eq i32 %35, 0
  %cond18.i = select i1 %tobool17.not.i, i32 64, i32 128
  %36 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %field.i, align 4
  %value21.i = getelementptr inbounds %struct.hid_field, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %value21.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %value21.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %or23.i = or i32 %41, %cond18.i
  store i32 %or23.i, ptr %39, align 4
  %arrayidx25.i = getelementptr %struct.hid_report, ptr %10, i32 0, i32 5, i32 1
  %42 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx25.i, align 4
  %value26.i = getelementptr inbounds %struct.hid_field, ptr %43, i32 0, i32 10
  %44 = ptrtoint ptr %value26.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %value26.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3, ptr %45, align 4
  %sensitivity.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %8, i32 0, i32 11
  %47 = ptrtoint ptr %sensitivity.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sensitivity.i, align 4
  %arrayidx29.i = getelementptr %struct.hid_report, ptr %10, i32 0, i32 5, i32 2
  %49 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx29.i, align 4
  %value30.i = getelementptr inbounds %struct.hid_field, ptr %50, i32 0, i32 10
  %51 = ptrtoint ptr %value30.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %value30.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %48, ptr %52, align 4
  %press_speed.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %8, i32 0, i32 12
  %54 = ptrtoint ptr %press_speed.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %press_speed.i, align 4
  %arrayidx33.i = getelementptr %struct.hid_report, ptr %10, i32 0, i32 5, i32 3
  %56 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx33.i, align 4
  %value34.i = getelementptr inbounds %struct.hid_field, ptr %57, i32 0, i32 10
  %58 = ptrtoint ptr %value34.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %value34.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %55, ptr %59, align 4
  call void @hid_hw_request(ptr noundef %add.ptr, ptr noundef %10, i32 noundef 9) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #14
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attr_dragging_show_tpkbd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dragging = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %dragging to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dragging, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.17, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attr_dragging_store_tpkbd(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -3264
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #14
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !153
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dragging = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %dragging to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %dragging, align 4
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx1.i = getelementptr i8, ptr %dev, i32 -1108
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx1.i, align 4
  %press_to_select.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %8, i32 0, i32 7
  %11 = ptrtoint ptr %press_to_select.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %press_to_select.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 1
  %field.i = getelementptr inbounds %struct.hid_report, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %field.i, align 4
  %value.i = getelementptr inbounds %struct.hid_field, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %value.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond.i, ptr %16, align 4
  %dragging.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %8, i32 0, i32 8
  %18 = ptrtoint ptr %dragging.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dragging.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool4.not.i = icmp eq i32 %19, 0
  %cond5.i = select i1 %tobool4.not.i, i32 8, i32 4
  %20 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %field.i, align 4
  %value8.i = getelementptr inbounds %struct.hid_field, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %value8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %value8.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %or.i = or i32 %25, %cond5.i
  store i32 %or.i, ptr %23, align 4
  %release_to_select.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %8, i32 0, i32 9
  %26 = ptrtoint ptr %release_to_select.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %release_to_select.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool10.not.i = icmp eq i32 %27, 0
  %cond11.i = select i1 %tobool10.not.i, i32 32, i32 16
  %28 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %field.i, align 4
  %value14.i = getelementptr inbounds %struct.hid_field, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %value14.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %value14.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %or16.i = or i32 %33, %cond11.i
  store i32 %or16.i, ptr %31, align 4
  %select_right.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %8, i32 0, i32 10
  %34 = ptrtoint ptr %select_right.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %select_right.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool17.not.i = icmp eq i32 %35, 0
  %cond18.i = select i1 %tobool17.not.i, i32 64, i32 128
  %36 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %field.i, align 4
  %value21.i = getelementptr inbounds %struct.hid_field, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %value21.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %value21.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %or23.i = or i32 %41, %cond18.i
  store i32 %or23.i, ptr %39, align 4
  %arrayidx25.i = getelementptr %struct.hid_report, ptr %10, i32 0, i32 5, i32 1
  %42 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx25.i, align 4
  %value26.i = getelementptr inbounds %struct.hid_field, ptr %43, i32 0, i32 10
  %44 = ptrtoint ptr %value26.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %value26.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3, ptr %45, align 4
  %sensitivity.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %8, i32 0, i32 11
  %47 = ptrtoint ptr %sensitivity.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sensitivity.i, align 4
  %arrayidx29.i = getelementptr %struct.hid_report, ptr %10, i32 0, i32 5, i32 2
  %49 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx29.i, align 4
  %value30.i = getelementptr inbounds %struct.hid_field, ptr %50, i32 0, i32 10
  %51 = ptrtoint ptr %value30.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %value30.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %48, ptr %52, align 4
  %press_speed.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %8, i32 0, i32 12
  %54 = ptrtoint ptr %press_speed.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %press_speed.i, align 4
  %arrayidx33.i = getelementptr %struct.hid_report, ptr %10, i32 0, i32 5, i32 3
  %56 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx33.i, align 4
  %value34.i = getelementptr inbounds %struct.hid_field, ptr %57, i32 0, i32 10
  %58 = ptrtoint ptr %value34.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %value34.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %55, ptr %59, align 4
  call void @hid_hw_request(ptr noundef %add.ptr, ptr noundef %10, i32 noundef 9) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #14
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attr_release_to_select_show_tpkbd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %release_to_select = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %release_to_select to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %release_to_select, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.17, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attr_release_to_select_store_tpkbd(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -3264
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #14
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !153
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %release_to_select = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %release_to_select to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %release_to_select, align 4
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx1.i = getelementptr i8, ptr %dev, i32 -1108
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx1.i, align 4
  %press_to_select.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %8, i32 0, i32 7
  %11 = ptrtoint ptr %press_to_select.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %press_to_select.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 1
  %field.i = getelementptr inbounds %struct.hid_report, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %field.i, align 4
  %value.i = getelementptr inbounds %struct.hid_field, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %value.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond.i, ptr %16, align 4
  %dragging.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %8, i32 0, i32 8
  %18 = ptrtoint ptr %dragging.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dragging.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool4.not.i = icmp eq i32 %19, 0
  %cond5.i = select i1 %tobool4.not.i, i32 8, i32 4
  %20 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %field.i, align 4
  %value8.i = getelementptr inbounds %struct.hid_field, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %value8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %value8.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %or.i = or i32 %25, %cond5.i
  store i32 %or.i, ptr %23, align 4
  %release_to_select.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %8, i32 0, i32 9
  %26 = ptrtoint ptr %release_to_select.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %release_to_select.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool10.not.i = icmp eq i32 %27, 0
  %cond11.i = select i1 %tobool10.not.i, i32 32, i32 16
  %28 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %field.i, align 4
  %value14.i = getelementptr inbounds %struct.hid_field, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %value14.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %value14.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %or16.i = or i32 %33, %cond11.i
  store i32 %or16.i, ptr %31, align 4
  %select_right.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %8, i32 0, i32 10
  %34 = ptrtoint ptr %select_right.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %select_right.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool17.not.i = icmp eq i32 %35, 0
  %cond18.i = select i1 %tobool17.not.i, i32 64, i32 128
  %36 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %field.i, align 4
  %value21.i = getelementptr inbounds %struct.hid_field, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %value21.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %value21.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %or23.i = or i32 %41, %cond18.i
  store i32 %or23.i, ptr %39, align 4
  %arrayidx25.i = getelementptr %struct.hid_report, ptr %10, i32 0, i32 5, i32 1
  %42 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx25.i, align 4
  %value26.i = getelementptr inbounds %struct.hid_field, ptr %43, i32 0, i32 10
  %44 = ptrtoint ptr %value26.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %value26.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3, ptr %45, align 4
  %sensitivity.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %8, i32 0, i32 11
  %47 = ptrtoint ptr %sensitivity.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sensitivity.i, align 4
  %arrayidx29.i = getelementptr %struct.hid_report, ptr %10, i32 0, i32 5, i32 2
  %49 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx29.i, align 4
  %value30.i = getelementptr inbounds %struct.hid_field, ptr %50, i32 0, i32 10
  %51 = ptrtoint ptr %value30.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %value30.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %48, ptr %52, align 4
  %press_speed.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %8, i32 0, i32 12
  %54 = ptrtoint ptr %press_speed.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %press_speed.i, align 4
  %arrayidx33.i = getelementptr %struct.hid_report, ptr %10, i32 0, i32 5, i32 3
  %56 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx33.i, align 4
  %value34.i = getelementptr inbounds %struct.hid_field, ptr %57, i32 0, i32 10
  %58 = ptrtoint ptr %value34.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %value34.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %55, ptr %59, align 4
  call void @hid_hw_request(ptr noundef %add.ptr, ptr noundef %10, i32 noundef 9) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #14
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attr_select_right_show_tpkbd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %select_right = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %select_right to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %select_right, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.17, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attr_select_right_store_tpkbd(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -3264
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #14
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !153
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %select_right = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %select_right to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %select_right, align 4
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx1.i = getelementptr i8, ptr %dev, i32 -1108
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx1.i, align 4
  %press_to_select.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %8, i32 0, i32 7
  %11 = ptrtoint ptr %press_to_select.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %press_to_select.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 1
  %field.i = getelementptr inbounds %struct.hid_report, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %field.i, align 4
  %value.i = getelementptr inbounds %struct.hid_field, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %value.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond.i, ptr %16, align 4
  %dragging.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %8, i32 0, i32 8
  %18 = ptrtoint ptr %dragging.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dragging.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool4.not.i = icmp eq i32 %19, 0
  %cond5.i = select i1 %tobool4.not.i, i32 8, i32 4
  %20 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %field.i, align 4
  %value8.i = getelementptr inbounds %struct.hid_field, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %value8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %value8.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %or.i = or i32 %25, %cond5.i
  store i32 %or.i, ptr %23, align 4
  %release_to_select.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %8, i32 0, i32 9
  %26 = ptrtoint ptr %release_to_select.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %release_to_select.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool10.not.i = icmp eq i32 %27, 0
  %cond11.i = select i1 %tobool10.not.i, i32 32, i32 16
  %28 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %field.i, align 4
  %value14.i = getelementptr inbounds %struct.hid_field, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %value14.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %value14.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %or16.i = or i32 %33, %cond11.i
  store i32 %or16.i, ptr %31, align 4
  %select_right.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %8, i32 0, i32 10
  %34 = ptrtoint ptr %select_right.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %select_right.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool17.not.i = icmp eq i32 %35, 0
  %cond18.i = select i1 %tobool17.not.i, i32 64, i32 128
  %36 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %field.i, align 4
  %value21.i = getelementptr inbounds %struct.hid_field, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %value21.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %value21.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %or23.i = or i32 %41, %cond18.i
  store i32 %or23.i, ptr %39, align 4
  %arrayidx25.i = getelementptr %struct.hid_report, ptr %10, i32 0, i32 5, i32 1
  %42 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx25.i, align 4
  %value26.i = getelementptr inbounds %struct.hid_field, ptr %43, i32 0, i32 10
  %44 = ptrtoint ptr %value26.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %value26.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3, ptr %45, align 4
  %sensitivity.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %8, i32 0, i32 11
  %47 = ptrtoint ptr %sensitivity.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sensitivity.i, align 4
  %arrayidx29.i = getelementptr %struct.hid_report, ptr %10, i32 0, i32 5, i32 2
  %49 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx29.i, align 4
  %value30.i = getelementptr inbounds %struct.hid_field, ptr %50, i32 0, i32 10
  %51 = ptrtoint ptr %value30.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %value30.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %48, ptr %52, align 4
  %press_speed.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %8, i32 0, i32 12
  %54 = ptrtoint ptr %press_speed.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %press_speed.i, align 4
  %arrayidx33.i = getelementptr %struct.hid_report, ptr %10, i32 0, i32 5, i32 3
  %56 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx33.i, align 4
  %value34.i = getelementptr inbounds %struct.hid_field, ptr %57, i32 0, i32 10
  %58 = ptrtoint ptr %value34.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %value34.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %55, ptr %59, align 4
  call void @hid_hw_request(ptr noundef %add.ptr, ptr noundef %10, i32 noundef 9) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #14
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attr_sensitivity_show_tpkbd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sensitivity = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %sensitivity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sensitivity, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.17, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attr_sensitivity_store_tpkbd(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -3264
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #14
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !153
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %5 = add i32 %4, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %5)
  %6 = icmp ult i32 %5, -255
  br i1 %6, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %sensitivity = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %sensitivity to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %sensitivity, align 4
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx1.i = getelementptr i8, ptr %dev, i32 -1108
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx1.i, align 4
  %press_to_select.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %9, i32 0, i32 7
  %12 = ptrtoint ptr %press_to_select.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %press_to_select.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 1
  %field.i = getelementptr inbounds %struct.hid_report, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %field.i, align 4
  %value.i = getelementptr inbounds %struct.hid_field, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %value.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond.i, ptr %17, align 4
  %dragging.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %9, i32 0, i32 8
  %19 = ptrtoint ptr %dragging.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dragging.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool4.not.i = icmp eq i32 %20, 0
  %cond5.i = select i1 %tobool4.not.i, i32 8, i32 4
  %21 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %field.i, align 4
  %value8.i = getelementptr inbounds %struct.hid_field, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %value8.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %value8.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %or.i = or i32 %26, %cond5.i
  store i32 %or.i, ptr %24, align 4
  %release_to_select.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %9, i32 0, i32 9
  %27 = ptrtoint ptr %release_to_select.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %release_to_select.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool10.not.i = icmp eq i32 %28, 0
  %cond11.i = select i1 %tobool10.not.i, i32 32, i32 16
  %29 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %field.i, align 4
  %value14.i = getelementptr inbounds %struct.hid_field, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %value14.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %value14.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %or16.i = or i32 %34, %cond11.i
  store i32 %or16.i, ptr %32, align 4
  %select_right.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %9, i32 0, i32 10
  %35 = ptrtoint ptr %select_right.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %select_right.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool17.not.i = icmp eq i32 %36, 0
  %cond18.i = select i1 %tobool17.not.i, i32 64, i32 128
  %37 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %field.i, align 4
  %value21.i = getelementptr inbounds %struct.hid_field, ptr %38, i32 0, i32 10
  %39 = ptrtoint ptr %value21.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %value21.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %or23.i = or i32 %42, %cond18.i
  store i32 %or23.i, ptr %40, align 4
  %arrayidx25.i = getelementptr %struct.hid_report, ptr %11, i32 0, i32 5, i32 1
  %43 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx25.i, align 4
  %value26.i = getelementptr inbounds %struct.hid_field, ptr %44, i32 0, i32 10
  %45 = ptrtoint ptr %value26.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %value26.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 3, ptr %46, align 4
  %sensitivity.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %9, i32 0, i32 11
  %48 = ptrtoint ptr %sensitivity.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sensitivity.i, align 4
  %arrayidx29.i = getelementptr %struct.hid_report, ptr %11, i32 0, i32 5, i32 2
  %50 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx29.i, align 4
  %value30.i = getelementptr inbounds %struct.hid_field, ptr %51, i32 0, i32 10
  %52 = ptrtoint ptr %value30.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %value30.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %49, ptr %53, align 4
  %press_speed.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %9, i32 0, i32 12
  %55 = ptrtoint ptr %press_speed.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %press_speed.i, align 4
  %arrayidx33.i = getelementptr %struct.hid_report, ptr %11, i32 0, i32 5, i32 3
  %57 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx33.i, align 4
  %value34.i = getelementptr inbounds %struct.hid_field, ptr %58, i32 0, i32 10
  %59 = ptrtoint ptr %value34.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %value34.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %56, ptr %60, align 4
  call void @hid_hw_request(ptr noundef %add.ptr, ptr noundef %11, i32 noundef 9) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #14
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attr_press_speed_show_tpkbd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %press_speed = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %press_speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %press_speed, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.17, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attr_press_speed_store_tpkbd(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -3264
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #14
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !153
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %5 = add i32 %4, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %5)
  %6 = icmp ult i32 %5, -255
  br i1 %6, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %press_speed = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %press_speed to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %press_speed, align 4
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx1.i = getelementptr i8, ptr %dev, i32 -1108
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx1.i, align 4
  %press_to_select.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %9, i32 0, i32 7
  %12 = ptrtoint ptr %press_to_select.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %press_to_select.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 1
  %field.i = getelementptr inbounds %struct.hid_report, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %field.i, align 4
  %value.i = getelementptr inbounds %struct.hid_field, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %value.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond.i, ptr %17, align 4
  %dragging.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %9, i32 0, i32 8
  %19 = ptrtoint ptr %dragging.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dragging.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool4.not.i = icmp eq i32 %20, 0
  %cond5.i = select i1 %tobool4.not.i, i32 8, i32 4
  %21 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %field.i, align 4
  %value8.i = getelementptr inbounds %struct.hid_field, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %value8.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %value8.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %or.i = or i32 %26, %cond5.i
  store i32 %or.i, ptr %24, align 4
  %release_to_select.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %9, i32 0, i32 9
  %27 = ptrtoint ptr %release_to_select.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %release_to_select.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool10.not.i = icmp eq i32 %28, 0
  %cond11.i = select i1 %tobool10.not.i, i32 32, i32 16
  %29 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %field.i, align 4
  %value14.i = getelementptr inbounds %struct.hid_field, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %value14.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %value14.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %or16.i = or i32 %34, %cond11.i
  store i32 %or16.i, ptr %32, align 4
  %select_right.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %9, i32 0, i32 10
  %35 = ptrtoint ptr %select_right.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %select_right.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool17.not.i = icmp eq i32 %36, 0
  %cond18.i = select i1 %tobool17.not.i, i32 64, i32 128
  %37 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %field.i, align 4
  %value21.i = getelementptr inbounds %struct.hid_field, ptr %38, i32 0, i32 10
  %39 = ptrtoint ptr %value21.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %value21.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %or23.i = or i32 %42, %cond18.i
  store i32 %or23.i, ptr %40, align 4
  %arrayidx25.i = getelementptr %struct.hid_report, ptr %11, i32 0, i32 5, i32 1
  %43 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx25.i, align 4
  %value26.i = getelementptr inbounds %struct.hid_field, ptr %44, i32 0, i32 10
  %45 = ptrtoint ptr %value26.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %value26.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 3, ptr %46, align 4
  %sensitivity.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %9, i32 0, i32 11
  %48 = ptrtoint ptr %sensitivity.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sensitivity.i, align 4
  %arrayidx29.i = getelementptr %struct.hid_report, ptr %11, i32 0, i32 5, i32 2
  %50 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx29.i, align 4
  %value30.i = getelementptr inbounds %struct.hid_field, ptr %51, i32 0, i32 10
  %52 = ptrtoint ptr %value30.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %value30.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %49, ptr %53, align 4
  %press_speed.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %9, i32 0, i32 12
  %55 = ptrtoint ptr %press_speed.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %press_speed.i, align 4
  %arrayidx33.i = getelementptr %struct.hid_report, ptr %11, i32 0, i32 5, i32 3
  %57 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx33.i, align 4
  %value34.i = getelementptr inbounds %struct.hid_field, ptr %58, i32 0, i32 10
  %59 = ptrtoint ptr %value34.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %value34.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %56, ptr %60, align 4
  call void @hid_hw_request(ptr noundef %add.ptr, ptr noundef %11, i32 noundef 9) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lenovo_led_brightness_set(ptr noundef readonly %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -3264
  %driver_data.i.i = getelementptr i8, ptr %3, i32 164
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %led_micmute = getelementptr inbounds %struct.lenovo_drvdata, ptr %5, i32 0, i32 4
  %cmp = icmp eq ptr %led_micmute, %led_cdev
  %spec.select = zext i1 %cmp to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp2 = icmp eq i32 %value, 0
  %shl = shl nuw nsw i32 1, %spec.select
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %neg = xor i32 %shl, -1
  %led_state = getelementptr inbounds %struct.lenovo_drvdata, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %led_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %led_state, align 4
  %and = and i32 %7, %neg
  store i32 %and, ptr %led_state, align 4
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %led_state5 = getelementptr inbounds %struct.lenovo_drvdata, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %led_state5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %led_state5, align 4
  %or = or i32 %9, %shl
  store i32 %or, ptr %led_state5, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %product = getelementptr i8, ptr %3, i32 -3224
  %10 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %product, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %11, label %if.end6.sw.epilog_crit_edge [
    i32 24585, label %sw.bb
    i32 24674, label %if.end6.sw.bb7_crit_edge
    i32 24739, label %if.end6.sw.bb7_crit_edge19
  ]

if.end6.sw.bb7_crit_edge19:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7

if.end6.sw.bb7_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx1.i = getelementptr i8, ptr %3, i32 -2148
  %15 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx1.i, align 4
  %led_state.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %led_state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %led_state.i, align 4
  %and.i = and i32 %18, 1
  %field.i = getelementptr inbounds %struct.hid_report, ptr %16, i32 0, i32 5
  %19 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %field.i, align 4
  %value.i = getelementptr inbounds %struct.hid_field, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %value.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and.i, ptr %22, align 4
  %24 = load i32, ptr %led_state.i, align 4
  %shr516.i = lshr i32 %24, 1
  %and6.i = and i32 %shr516.i, 1
  %25 = load ptr, ptr %field.i, align 4
  %value9.i = getelementptr inbounds %struct.hid_field, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %value9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %value9.i, align 4
  %arrayidx10.i = getelementptr i32, ptr %27, i32 1
  %28 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and6.i, ptr %arrayidx10.i, align 4
  tail call void @hid_hw_request(ptr noundef %add.ptr, ptr noundef %16, i32 noundef 9) #14
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end6.sw.bb7_crit_edge, %if.end6.sw.bb7_crit_edge19
  %arrayidx = getelementptr [2 x i8], ptr @__const.lenovo_led_brightness_set.tp10ubkbd_led, i32 0, i32 %spec.select
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx, align 1
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i.i, align 4
  %led_report_mutex.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %32, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %led_report_mutex.i, i32 noundef 0) #14
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 9, ptr %32, align 4
  %arrayidx2.i = getelementptr [3 x i8], ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %30, ptr %arrayidx2.i, align 1
  %conv.i = select i1 %cmp2, i8 1, i8 2
  %arrayidx4.i = getelementptr [3 x i8], ptr %32, i32 0, i32 2
  %35 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv.i, ptr %arrayidx4.i, align 2
  %call8.i = tail call i32 @hid_hw_raw_request(ptr noundef %add.ptr, i8 noundef zeroext 9, ptr noundef %32, i32 noundef 3, i8 noundef zeroext 1, i32 noundef 9) #14
  %36 = zext i32 %call8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %call8.i, label %do.end.i [
    i32 3, label %sw.bb7.lenovo_led_set_tp10ubkbd.exit_crit_edge
    i32 -19, label %sw.bb7.if.end.i_crit_edge
  ]

sw.bb7.if.end.i_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

sw.bb7.lenovo_led_set_tp10ubkbd.exit_crit_edge:   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #16
  br label %lenovo_led_set_tp10ubkbd.exit

do.end.i:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.29, i32 noundef %call8.i) #17
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %sw.bb7.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp13.i = icmp slt i32 %call8.i, 0
  %spec.select.i = select i1 %cmp13.i, i32 %call8.i, i32 -5
  br label %lenovo_led_set_tp10ubkbd.exit

lenovo_led_set_tp10ubkbd.exit:                    ; preds = %if.end.i, %sw.bb7.lenovo_led_set_tp10ubkbd.exit_crit_edge
  %ret.0.i = phi i32 [ %spec.select.i, %if.end.i ], [ 0, %sw.bb7.lenovo_led_set_tp10ubkbd.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %led_report_mutex.i) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %lenovo_led_set_tp10ubkbd.exit, %sw.bb, %if.end6.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %if.end6.sw.epilog_crit_edge ], [ %ret.0.i, %lenovo_led_set_tp10ubkbd.exit ], [ 0, %sw.bb ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_raw_request(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lenovo_send_cmd_cptkbd(ptr noundef %hdev, i8 noundef zeroext %byte2, i8 noundef zeroext %byte3) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 3) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 24, ptr %call7.i.i, align 8
  %arrayidx1 = getelementptr i8, ptr %call7.i.i, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %byte2, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr i8, ptr %call7.i.i, i32 2
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %byte3, ptr %arrayidx2, align 2
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %4 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %product, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %5, label %sw.epilog.thread [
    i32 24647, label %sw.bb
    i32 24648, label %sw.bb4
  ]

sw.epilog.thread:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %7

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext 19, ptr noundef nonnull %call7.i.i, i32 noundef 3, i8 noundef zeroext 2, i32 noundef 9) #14
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = tail call i32 @hid_hw_output_report(ptr noundef %hdev, ptr noundef nonnull %call7.i.i, i32 noundef 3) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  %ret.0 = phi i32 [ %call5, %sw.bb4 ], [ %call3, %sw.bb ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp slt i32 %ret.0, 0
  br i1 %cmp, label %sw.epilog._crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.epilog._crit_edge:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %7

7:                                                ; preds = %sw.epilog._crit_edge, %sw.epilog.thread
  %ret.018 = phi i32 [ -22, %sw.epilog.thread ], [ %ret.0, %sw.epilog._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %7, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %ret.018, %7 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_output_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attr_fn_lock_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fn_lock = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %fn_lock to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fn_lock, align 1, !range !151
  %4 = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.17, i32 noundef %4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attr_fn_lock_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -3264
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #14
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !153
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5 = icmp ne i32 %4, 0
  %fn_lock = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 14
  %frombool = zext i1 %tobool5 to i8
  %6 = ptrtoint ptr %fn_lock to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %fn_lock, align 1
  %product = getelementptr i8, ptr %dev, i32 -3224
  %7 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %product, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %8, label %if.end4.cleanup_crit_edge [
    i32 24647, label %if.end4.sw.bb_crit_edge
    i32 24648, label %if.end4.sw.bb_crit_edge26
    i32 24674, label %if.end4.sw.bb7_crit_edge
    i32 24739, label %if.end4.sw.bb7_crit_edge27
  ]

if.end4.sw.bb7_crit_edge27:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7

if.end4.sw.bb7_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7

if.end4.sw.bb_crit_edge26:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end4.sw.bb_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %if.end4.sw.bb_crit_edge, %if.end4.sw.bb_crit_edge26
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %fn_lock.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %fn_lock.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fn_lock.i, align 1, !range !151
  %call1.i = call fastcc i32 @lenovo_send_cmd_cptkbd(ptr noundef %add.ptr, i8 noundef zeroext 5, i8 noundef zeroext %13) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %sw.bb.if.end.i_crit_edge, label %do.end.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %call1.i) #17
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %sw.bb.if.end.i_crit_edge
  %sensitivity.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %11, i32 0, i32 11
  %14 = ptrtoint ptr %sensitivity.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sensitivity.i, align 4
  %conv3.i = trunc i32 %15 to i8
  %call4.i = call fastcc i32 @lenovo_send_cmd_cptkbd(ptr noundef %add.ptr, i8 noundef zeroext 2, i8 noundef zeroext %conv3.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.cleanup_crit_edge, label %do.end9.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %call4.i) #17
  br label %cleanup

sw.bb7:                                           ; preds = %if.end4.sw.bb7_crit_edge, %if.end4.sw.bb7_crit_edge27
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i, align 4
  %led_report_mutex.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %17, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %led_report_mutex.i, i32 noundef 0) #14
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 9, ptr %17, align 4
  %arrayidx2.i = getelementptr [3 x i8], ptr %17, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 84, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %conv.i = select i1 %tobool.not.i, i8 1, i8 2
  %arrayidx4.i = getelementptr [3 x i8], ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i, ptr %arrayidx4.i, align 2
  %call8.i = call i32 @hid_hw_raw_request(ptr noundef %add.ptr, i8 noundef zeroext 9, ptr noundef %17, i32 noundef 3, i8 noundef zeroext 1, i32 noundef 9) #14
  %21 = zext i32 %call8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %call8.i, label %if.end.i22 [
    i32 3, label %lenovo_led_set_tp10ubkbd.exit
    i32 -19, label %sw.bb7.select.unfold_crit_edge
  ]

sw.bb7.select.unfold_crit_edge:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #16
  br label %select.unfold

if.end.i22:                                       ; preds = %sw.bb7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %call8.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp13.i = icmp slt i32 %call8.i, 0
  br i1 %cmp13.i, label %if.end.i22.select.unfold_crit_edge, label %if.end.i22.lenovo_led_set_tp10ubkbd.exit.thread_crit_edge

if.end.i22.lenovo_led_set_tp10ubkbd.exit.thread_crit_edge: ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #16
  br label %lenovo_led_set_tp10ubkbd.exit.thread

if.end.i22.select.unfold_crit_edge:               ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #16
  br label %select.unfold

select.unfold:                                    ; preds = %if.end.i22.select.unfold_crit_edge, %sw.bb7.select.unfold_crit_edge
  br label %lenovo_led_set_tp10ubkbd.exit.thread

lenovo_led_set_tp10ubkbd.exit.thread:             ; preds = %select.unfold, %if.end.i22.lenovo_led_set_tp10ubkbd.exit.thread_crit_edge
  %ret.0.i.ph = phi i32 [ %call8.i, %select.unfold ], [ -5, %if.end.i22.lenovo_led_set_tp10ubkbd.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %led_report_mutex.i) #14
  br label %cleanup

lenovo_led_set_tp10ubkbd.exit:                    ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_unlock(ptr noundef %led_report_mutex.i) #14
  br label %cleanup

cleanup:                                          ; preds = %lenovo_led_set_tp10ubkbd.exit, %lenovo_led_set_tp10ubkbd.exit.thread, %do.end9.i, %if.end.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %ret.0.i.ph, %lenovo_led_set_tp10ubkbd.exit.thread ], [ %count, %lenovo_led_set_tp10ubkbd.exit ], [ %count, %do.end9.i ], [ %count, %if.end.i.cleanup_crit_edge ], [ %count, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #14
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attr_sensitivity_show_cptkbd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sensitivity = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %sensitivity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sensitivity, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.17, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attr_sensitivity_store_cptkbd(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -3264
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #14
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !153
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %5 = add i32 %4, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %5)
  %6 = icmp ult i32 %5, -255
  br i1 %6, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sensitivity = getelementptr inbounds %struct.lenovo_drvdata, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %sensitivity to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %sensitivity, align 4
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %fn_lock.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %fn_lock.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fn_lock.i, align 1, !range !151
  %call1.i = call fastcc i32 @lenovo_send_cmd_cptkbd(ptr noundef %add.ptr, i8 noundef zeroext 5, i8 noundef zeroext %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.if.end.i_crit_edge, label %do.end.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %call1.i) #17
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge
  %sensitivity.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %9, i32 0, i32 11
  %12 = ptrtoint ptr %sensitivity.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sensitivity.i, align 4
  %conv3.i = trunc i32 %13 to i8
  %call4.i = call fastcc i32 @lenovo_send_cmd_cptkbd(ptr noundef %add.ptr, i8 noundef zeroext 2, i8 noundef zeroext %conv3.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.cleanup_crit_edge, label %do.end9.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %call4.i) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end9.i, %if.end.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %count, %if.end.i.cleanup_crit_edge ], [ %count, %do.end9.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lenovo_tp10ubkbd_sync_fn_lock(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  %fn_lock = getelementptr i8, ptr %work, i32 73
  %2 = ptrtoint ptr %fn_lock to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fn_lock, align 1, !range !151
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %led_report_mutex.i = getelementptr inbounds %struct.lenovo_drvdata, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %led_report_mutex.i, i32 noundef 0) #14
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 9, ptr %5, align 4
  %arrayidx2.i = getelementptr [3 x i8], ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 84, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %conv.i = select i1 %tobool.not.i, i8 1, i8 2
  %arrayidx4.i = getelementptr [3 x i8], ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %arrayidx4.i, align 2
  %call8.i = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext 9, ptr noundef %5, i32 noundef 3, i8 noundef zeroext 1, i32 noundef 9) #14
  %9 = zext i32 %call8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %call8.i, label %do.end.i [
    i32 3, label %entry.lenovo_led_set_tp10ubkbd.exit_crit_edge
    i32 -19, label %entry.lenovo_led_set_tp10ubkbd.exit_crit_edge2
  ]

entry.lenovo_led_set_tp10ubkbd.exit_crit_edge2:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %lenovo_led_set_tp10ubkbd.exit

entry.lenovo_led_set_tp10ubkbd.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %lenovo_led_set_tp10ubkbd.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef %call8.i) #17
  br label %lenovo_led_set_tp10ubkbd.exit

lenovo_led_set_tp10ubkbd.exit:                    ; preds = %do.end.i, %entry.lenovo_led_set_tp10ubkbd.exit_crit_edge, %entry.lenovo_led_set_tp10ubkbd.exit_crit_edge2
  tail call void @mutex_unlock(ptr noundef %led_report_mutex.i) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hid_map_usage(ptr nocapture noundef readonly %hidinput, ptr nocapture noundef writeonly %usage, ptr nocapture noundef writeonly %bit, ptr nocapture noundef writeonly %max, i8 noundef zeroext %type, i32 noundef %c) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %input1 = getelementptr inbounds %struct.hid_input, ptr %hidinput, i32 0, i32 2
  %0 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input1, align 4
  %conv = zext i8 %type to i32
  %2 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %type, label %entry.if.then_crit_edge [
    i8 1, label %sw.bb4
    i8 2, label %sw.bb2
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %relbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %keybit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb2
  %bmap.0 = phi ptr [ %keybit, %sw.bb4 ], [ %relbit, %sw.bb2 ]
  %limit.0 = phi i32 [ 767, %sw.bb4 ], [ 15, %sw.bb2 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %limit.0, i32 %c)
  %cmp = icmp ult i32 %limit.0, %c
  %tobool.not = icmp eq ptr %bmap.0, null
  %spec.select = select i1 %cmp, i1 true, i1 %tobool.not, !prof !150
  br i1 %spec.select, label %sw.epilog.if.then_crit_edge, label %if.end18, !prof !150

sw.epilog.if.then_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %sw.epilog.if.then_crit_edge, %entry.if.then_crit_edge
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @hid_map_usage._rs, ptr noundef nonnull @__func__.hid_map_usage) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not = icmp eq i32 %call, 0
  br i1 %tobool14.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %4, i32 noundef %c, i32 noundef %conv) #17
  br label %cleanup

if.end18:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %type19 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %5 = ptrtoint ptr %type19 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %type, ptr %type19, align 4
  %conv20 = trunc i32 %c to i16
  %code = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %6 = ptrtoint ptr %code to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv20, ptr %code, align 2
  %7 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %limit.0, ptr %max, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end, %if.then.cleanup_crit_edge
  %storemerge = phi ptr [ %bmap.0, %if.end18 ], [ null, %do.end ], [ null, %if.then.cleanup_crit_edge ]
  %8 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %storemerge, ptr %bit, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !70, !72, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !115, !117, !119, !121, !123, !124, !126, !127, !129, !131, !133, !135, !136, !137, !138, !139, !140}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146, !147, !148}
!llvm.ident = !{!149}

!0 = !{ptr @__initcall__kmod_hid_lenovo__224_1222_lenovo_driver_init6, !1, !"__initcall__kmod_hid_lenovo__224_1222_lenovo_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-lenovo.c", i32 1222, i32 1}
!2 = !{ptr @__exitcall_lenovo_driver_exit, !1, !"__exitcall_lenovo_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file225, !4, !"__UNIQUE_ID_file225", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-lenovo.c", i32 1224, i32 1}
!5 = !{ptr @__UNIQUE_ID_license226, !4, !"__UNIQUE_ID_license226", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-lenovo.c", i32 1212, i32 10}
!9 = !{ptr @lenovo_driver, !10, !"lenovo_driver", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-lenovo.c", i32 1211, i32 26}
!11 = !{ptr @lenovo_devices, !12, !"lenovo_devices", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-lenovo.c", i32 1188, i32 35}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-lenovo.c", i32 1075, i32 3}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @lenovo_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @lenovo_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-lenovo.c", i32 1081, i32 3}
!23 = !{ptr @lenovo_probe._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @lenovo_probe._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-lenovo.c", i32 928, i32 3}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @lenovo_probe_tpkbd._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @lenovo_probe_tpkbd._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hid/hid-lenovo.c", i32 934, i32 3}
!33 = !{ptr @lenovo_probe_tpkbd._entry.13, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @lenovo_probe_tpkbd._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @lenovo_attr_group_tpkbd, !36, !"lenovo_attr_group_tpkbd", i1 false, i1 false}
!36 = !{!"../drivers/hid/hid-lenovo.c", i32 817, i32 37}
!37 = !{ptr @lenovo_attributes_tpkbd, !38, !"lenovo_attributes_tpkbd", i1 false, i1 false}
!38 = !{!"../drivers/hid/hid-lenovo.c", i32 807, i32 26}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hid/hid-lenovo.c", i32 778, i32 2}
!41 = !{ptr @dev_attr_press_to_select_tpkbd, !42, !"dev_attr_press_to_select_tpkbd", i1 false, i1 false}
!42 = !{!"../drivers/hid/hid-lenovo.c", i32 777, i32 32}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hid/hid-lenovo.c", i32 606, i32 34}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hid/hid-lenovo.c", i32 783, i32 2}
!47 = !{ptr @dev_attr_dragging_tpkbd, !48, !"dev_attr_dragging_tpkbd", i1 false, i1 false}
!48 = !{!"../drivers/hid/hid-lenovo.c", i32 782, i32 32}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hid/hid-lenovo.c", i32 788, i32 2}
!51 = !{ptr @dev_attr_release_to_select_tpkbd, !52, !"dev_attr_release_to_select_tpkbd", i1 false, i1 false}
!52 = !{!"../drivers/hid/hid-lenovo.c", i32 787, i32 32}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hid/hid-lenovo.c", i32 793, i32 2}
!55 = !{ptr @dev_attr_select_right_tpkbd, !56, !"dev_attr_select_right_tpkbd", i1 false, i1 false}
!56 = !{!"../drivers/hid/hid-lenovo.c", i32 792, i32 32}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hid/hid-lenovo.c", i32 798, i32 2}
!59 = !{ptr @dev_attr_sensitivity_tpkbd, !60, !"dev_attr_sensitivity_tpkbd", i1 false, i1 false}
!60 = !{!"../drivers/hid/hid-lenovo.c", i32 797, i32 32}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hid/hid-lenovo.c", i32 803, i32 2}
!63 = !{ptr @dev_attr_press_speed_tpkbd, !64, !"dev_attr_press_speed_tpkbd", i1 false, i1 false}
!64 = !{!"../drivers/hid/hid-lenovo.c", i32 802, i32 32}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hid/hid-lenovo.c", i32 873, i32 3}
!67 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @lenovo_register_leds._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @lenovo_register_leds._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hid/hid-lenovo.c", i32 876, i32 31}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hid/hid-lenovo.c", i32 877, i32 31}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hid/hid-lenovo.c", i32 880, i32 35}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hid/hid-lenovo.c", i32 890, i32 38}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hid/hid-lenovo.c", i32 83, i32 4}
!80 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @lenovo_led_set_tp10ubkbd._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @lenovo_led_set_tp10ubkbd._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hid/hid-lenovo.c", i32 965, i32 3}
!85 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @lenovo_probe_cptkbd.__UNIQUE_ID_ddebug223, !84, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hid/hid-lenovo.c", i32 973, i32 3}
!89 = !{ptr @lenovo_probe_cptkbd._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @lenovo_probe_cptkbd._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hid/hid-lenovo.c", i32 984, i32 3}
!93 = !{ptr @lenovo_probe_cptkbd._entry.34, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @lenovo_probe_cptkbd._entry_ptr.36, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hid/hid-lenovo.c", i32 989, i32 3}
!97 = !{ptr @lenovo_probe_cptkbd._entry.37, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @lenovo_probe_cptkbd._entry_ptr.39, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @lenovo_probe_cptkbd._entry.40, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../drivers/hid/hid-lenovo.c", i32 999, i32 3}
!101 = !{ptr @lenovo_probe_cptkbd._entry_ptr.41, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hid/hid-lenovo.c", i32 389, i32 3}
!104 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @lenovo_features_set_cptkbd._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @lenovo_features_set_cptkbd._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hid/hid-lenovo.c", i32 393, i32 3}
!109 = !{ptr @lenovo_features_set_cptkbd._entry.44, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @lenovo_features_set_cptkbd._entry_ptr.46, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @lenovo_attr_group_cptkbd, !112, !"lenovo_attr_group_cptkbd", i1 false, i1 false}
!112 = !{!"../drivers/hid/hid-lenovo.c", i32 485, i32 37}
!113 = !{ptr @lenovo_attributes_cptkbd, !114, !"lenovo_attributes_cptkbd", i1 false, i1 false}
!114 = !{!"../drivers/hid/hid-lenovo.c", i32 479, i32 26}
!115 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hid/hid-lenovo.c", i32 469, i32 2}
!117 = !{ptr @dev_attr_fn_lock, !118, !"dev_attr_fn_lock", i1 false, i1 false}
!118 = !{!"../drivers/hid/hid-lenovo.c", i32 468, i32 32}
!119 = !{ptr @dev_attr_sensitivity_cptkbd, !120, !"dev_attr_sensitivity_cptkbd", i1 false, i1 false}
!120 = !{!"../drivers/hid/hid-lenovo.c", i32 473, i32 32}
!121 = !{ptr @lenovo_probe_tp10ubkbd.__key, !122, !"__key", i1 false, i1 false}
!122 = !{!"../drivers/hid/hid-lenovo.c", i32 1039, i32 2}
!123 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @lenovo_probe_tp10ubkbd.__key.49, !125, !"__key", i1 false, i1 false}
!125 = !{!"../drivers/hid/hid-lenovo.c", i32 1040, i32 2}
!126 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @lenovo_attr_group_tp10ubkbd, !128, !"lenovo_attr_group_tp10ubkbd", i1 false, i1 false}
!128 = !{!"../drivers/hid/hid-lenovo.c", i32 1009, i32 37}
!129 = !{ptr @lenovo_attributes_tp10ubkbd, !130, !"lenovo_attributes_tp10ubkbd", i1 false, i1 false}
!130 = !{!"../drivers/hid/hid-lenovo.c", i32 1004, i32 26}
!131 = !{ptr @lenovo_pro_dock_need_fixup_collection, !132, !"lenovo_pro_dock_need_fixup_collection", i1 false, i1 false}
!132 = !{!"../drivers/hid/hid-lenovo.c", i32 104, i32 19}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../include/linux/hid.h", i32 1036, i32 3}
!135 = !{ptr @hid_map_usage._rs, !134, !"_rs", i1 false, i1 false}
!136 = !{ptr @__func__.hid_map_usage, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.53, !134, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @hid_map_usage._entry, !134, !"_entry", i1 false, i1 false}
!140 = !{ptr @hid_map_usage._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!141 = !{i32 1, !"wchar_size", i32 2}
!142 = !{i32 1, !"min_enum_size", i32 4}
!143 = !{i32 8, !"branch-target-enforcement", i32 0}
!144 = !{i32 8, !"sign-return-address", i32 0}
!145 = !{i32 8, !"sign-return-address-all", i32 0}
!146 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!147 = !{i32 7, !"uwtable", i32 1}
!148 = !{i32 7, !"frame-pointer", i32 2}
!149 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!150 = !{!"branch_weights", i32 1, i32 2000}
!151 = !{i8 0, i8 2}
!152 = !{i64 2148984852, i64 2148984857, i64 2148984870, i64 2148984914, i64 2148984948, i64 2148984969}
!153 = !{!"auto-init"}
