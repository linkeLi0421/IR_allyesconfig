; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-playstation.c_pt.bc'
source_filename = "../drivers/hid/hid-playstation.c"
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
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ps_led_info = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.69 = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ps_device = type { %struct.list_head, ptr, %struct.spinlock, i32, %struct.power_supply_desc, ptr, i8, i32, ptr, [6 x i8], i32, i32, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.dualsense = type { %struct.ps_device, ptr, ptr, ptr, [3 x %struct.ps_calibration_data], [3 x %struct.ps_calibration_data], i8, i32, i32, i8, i8, i8, %struct.led_classdev_mc, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x %struct.led_classdev], %struct.work_struct, ptr, i8 }
%struct.ps_calibration_data = type { i32, i16, i32, i32 }
%struct.led_classdev_mc = type { %struct.led_classdev, i32, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.dualsense_input_report = type <{ i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [3 x i16], [3 x i16], i32, i8, [2 x %struct.dualsense_touch_point], [12 x i8], i8, [10 x i8] }>
%struct.dualsense_touch_point = type { i8, i8, i8, i8 }
%struct.dualsense_output_report_bt = type <{ i8, i8, i8, %struct.dualsense_output_report_common, [24 x i8], i32 }>
%struct.dualsense_output_report_common = type { i8, i8, i8, i8, [4 x i8], i8, i8, [28 x i8], i8, [2 x i8], i8, i8, i8, i8, i8, i8 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.2 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.2 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.dualsense_output_report_usb = type { i8, %struct.dualsense_output_report_common, [15 x i8] }
%struct.mc_subled = type { i32, i32, i32, i32 }

@ps_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str, ptr @ps_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @ps_probe, ptr @ps_remove, ptr null, ptr @ps_raw_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@ps_player_id_allocator = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.87, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_hid_playstation__227_1503_ps_init6 = internal global ptr @ps_init, section ".initcall6.init", align 4
@__exitcall_ps_exit = internal global ptr @ps_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [54 x i8] c"hid_playstation.author=Sony Interactive Entertainment\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [68 x i8] c"hid_playstation.description=HID Driver for PlayStation peripherals.\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [49 x i8] c"hid_playstation.file=drivers/hid/hid-playstation\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [28 x i8] c"hid_playstation.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"playstation\00", [20 x i8] zeroinitializer }, align 32
@ps_devices = internal constant { [3 x %struct.hid_device_id], [48 x i8] } { [3 x %struct.hid_device_id] [%struct.hid_device_id { i16 5, i16 0, i32 1356, i32 3302, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 3302, i32 0 }, %struct.hid_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ps_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1426, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ps_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/hid/hid-playstation.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ps_probe._entry_ptr = internal global ptr @ps_probe._entry, section ".printk_index", align 4
@ps_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1432, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to start HID device\0A\00", [36 x i8] zeroinitializer }, align 32
@ps_probe._entry_ptr.8 = internal global ptr @ps_probe._entry.6, section ".printk_index", align 4
@ps_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1438, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to open HID device\0A\00", [37 x i8] zeroinitializer }, align 32
@ps_probe._entry_ptr.11 = internal global ptr @ps_probe._entry.9, section ".printk_index", align 4
@ps_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1445, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to create dualsense.\0A\00", [35 x i8] zeroinitializer }, align 32
@ps_probe._entry_ptr.14 = internal global ptr @ps_probe._entry.12, section ".printk_index", align 4
@ps_device_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ps_device_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ps_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1453, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register sysfs nodes.\0A\00", [63 x i8] zeroinitializer }, align 32
@ps_probe._entry_ptr.17 = internal global ptr @ps_probe._entry.15, section ".printk_index", align 4
@dualsense_create.player_leds_info = internal constant { [5 x %struct.ps_led_info], [48 x i8] } { [5 x %struct.ps_led_info] [%struct.ps_led_info { ptr @.str.18, ptr @.str.19, ptr @dualsense_player_led_get_brightness, ptr @dualsense_player_led_set_brightness }, %struct.ps_led_info { ptr @.str.20, ptr @.str.19, ptr @dualsense_player_led_get_brightness, ptr @dualsense_player_led_set_brightness }, %struct.ps_led_info { ptr @.str.21, ptr @.str.19, ptr @dualsense_player_led_get_brightness, ptr @dualsense_player_led_set_brightness }, %struct.ps_led_info { ptr @.str.22, ptr @.str.19, ptr @dualsense_player_led_get_brightness, ptr @dualsense_player_led_set_brightness }, %struct.ps_led_info { ptr @.str.23, ptr @.str.19, ptr @dualsense_player_led_get_brightness, ptr @dualsense_player_led_set_brightness }], [48 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"player-1\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"white\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"player-2\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"player-3\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"player-4\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"player-5\00", [23 x i8] zeroinitializer }, align 32
@dualsense_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ps_dev->lock\00", [18 x i8] zeroinitializer }, align 32
@dualsense_create.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&ds->output_worker)\00", [58 x i8] zeroinitializer }, align 32
@dualsense_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 1315, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to get MAC address from DualSense\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dualsense_create\00", [47 x i8] zeroinitializer }, align 32
@dualsense_create._entry_ptr = internal global ptr @dualsense_create._entry, section ".printk_index", align 4
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pMR\00", [27 x i8] zeroinitializer }, align 32
@dualsense_create._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.3, i32 1322, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to get firmware info from DualSense\0A\00", [52 x i8] zeroinitializer }, align 32
@dualsense_create._entry_ptr.32 = internal global ptr @dualsense_create._entry.30, section ".printk_index", align 4
@dualsense_create._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.28, ptr @.str.3, i32 1332, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to get calibration data from DualSense\0A\00", [49 x i8] zeroinitializer }, align 32
@dualsense_create._entry_ptr.35 = internal global ptr @dualsense_create._entry.33, section ".printk_index", align 4
@dualsense_create._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.28, ptr @.str.3, i32 1387, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to assign player id for DualSense: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@dualsense_create._entry_ptr.38 = internal global ptr @dualsense_create._entry.36, section ".printk_index", align 4
@dualsense_create._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.28, ptr @.str.3, i32 1399, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Registered DualSense controller hw_version=0x%08x fw_version=0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dualsense_create._entry_ptr.42 = internal global ptr @dualsense_create._entry.39, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@dualsense_parse_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 1037, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DualSense input CRC's check failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dualsense_parse_report\00", [41 x i8] zeroinitializer }, align 32
@dualsense_parse_report._entry_ptr = internal global ptr @dualsense_parse_report._entry, section ".printk_index", align 4
@dualsense_parse_report._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.3, i32 1043, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unhandled reportID=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@dualsense_parse_report._entry_ptr.47 = internal global ptr @dualsense_parse_report._entry.45, section ".printk_index", align 4
@ps_gamepad_hat_mapping = internal constant { [9 x %struct.anon.69], [56 x i8] } { [9 x %struct.anon.69] [%struct.anon.69 { i32 0, i32 -1 }, %struct.anon.69 { i32 1, i32 -1 }, %struct.anon.69 { i32 1, i32 0 }, %struct.anon.69 { i32 1, i32 1 }, %struct.anon.69 { i32 0, i32 1 }, %struct.anon.69 { i32 -1, i32 1 }, %struct.anon.69 { i32 -1, i32 0 }, %struct.anon.69 { i32 -1, i32 -1 }, %struct.anon.69 zeroinitializer], [56 x i8] zeroinitializer }, align 32
@dualsense_get_mac_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 831, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to retrieve DualSense pairing info: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dualsense_get_mac_address\00", [38 x i8] zeroinitializer }, align 32
@dualsense_get_mac_address._entry_ptr = internal global ptr @dualsense_get_mac_address._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ps_get_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 513, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to retrieve feature with reportID %d: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ps_get_report\00", [18 x i8] zeroinitializer }, align 32
@ps_get_report._entry_ptr = internal global ptr @ps_get_report._entry, section ".printk_index", align 4
@ps_get_report._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 518, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Invalid byte count transferred, expected %zu got %d\0A\00", [43 x i8] zeroinitializer }, align 32
@ps_get_report._entry_ptr.54 = internal global ptr @ps_get_report._entry.52, section ".printk_index", align 4
@ps_get_report._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.3, i32 523, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Invalid reportID received, expected %d got %d\0A\00", [49 x i8] zeroinitializer }, align 32
@ps_get_report._entry_ptr.57 = internal global ptr @ps_get_report._entry.55, section ".printk_index", align 4
@ps_get_report._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.51, ptr @.str.3, i32 533, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CRC check failed for reportID=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@ps_get_report._entry_ptr.60 = internal global ptr @ps_get_report._entry.58, section ".printk_index", align 4
@dualsense_get_firmware_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 807, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to retrieve DualSense firmware info: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dualsense_get_firmware_info\00", [36 x i8] zeroinitializer }, align 32
@dualsense_get_firmware_info._entry_ptr = internal global ptr @dualsense_get_firmware_info._entry, section ".printk_index", align 4
@ps_devices_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.65, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ps_devices_lock, i64 52), ptr getelementptr (i8, ptr @ps_devices_lock, i64 52) }, ptr @ps_devices_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.66, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@ps_devices_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ps_devices_list, ptr @ps_devices_list }, [24 x i8] zeroinitializer }, align 32
@ps_devices_list_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 317, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Duplicate device found for MAC address %pMR.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ps_devices_list_add\00", [44 x i8] zeroinitializer }, align 32
@ps_devices_list_add._entry_ptr = internal global ptr @ps_devices_list_add._entry, section ".printk_index", align 4
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ps_devices_lock.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ps_devices_lock\00", [16 x i8] zeroinitializer }, align 32
@dualsense_get_calibration_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 726, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed to retrieve DualSense calibration info: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dualsense_get_calibration_data\00", [33 x i8] zeroinitializer }, align 32
@dualsense_get_calibration_data._entry_ptr = internal global ptr @dualsense_get_calibration_data._entry, section ".printk_index", align 4
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Motion Sensors\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Touchpad\00", [23 x i8] zeroinitializer }, align 32
@ps_power_supply_props = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 3, i32 47, i32 66], [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ps-controller-battery-%pMR\00", [37 x i8] zeroinitializer }, align 32
@ps_device_register_battery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 443, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to register battery device: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ps_device_register_battery\00", [37 x i8] zeroinitializer }, align 32
@ps_device_register_battery._entry_ptr = internal global ptr @ps_device_register_battery._entry, section ".printk_index", align 4
@ps_device_register_battery._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.3, i32 450, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to activate battery device: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ps_device_register_battery._entry_ptr.77 = internal global ptr @ps_device_register_battery._entry.75, section ".printk_index", align 4
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s:rgb:indicator\00", [47 x i8] zeroinitializer }, align 32
@ps_lightbar_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 599, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cannot register multicolor LED device\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ps_lightbar_register\00", [43 x i8] zeroinitializer }, align 32
@ps_lightbar_register._entry_ptr = internal global ptr @ps_lightbar_register._entry, section ".printk_index", align 4
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s:%s:%s\00", [23 x i8] zeroinitializer }, align 32
@ps_led_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.3, i32 560, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register LED %s: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ps_led_register\00", [16 x i8] zeroinitializer }, align 32
@ps_led_register._entry_ptr = internal global ptr @ps_led_register._entry, section ".printk_index", align 4
@dualsense_set_player_leds.player_ids = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 4, i32 10, i32 21, i32 27, i32 31], [44 x i8] zeroinitializer }, align 32
@ps_device_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_firmware_version, ptr @dev_attr_hardware_version, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_firmware_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @firmware_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hardware_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hardware_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"firmware_version\00", [47 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hardware_version\00", [47 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ps_player_id_allocator.xa_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hid_playstation\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 3, i64 5]
@__sancov_gen_cov_switch_values.89 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 10, i64 11]
@__sancov_gen_cov_switch_values.90 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 47, i64 66]
@___asan_gen_.91 = private unnamed_addr constant [10 x i8] c"ps_driver\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1484, i32 26 }
@___asan_gen_.94 = private unnamed_addr constant [23 x i8] c"ps_player_id_allocator\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1485, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant [11 x i8] c"ps_devices\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1477, i32 35 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1426, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1432, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1438, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1445, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant [26 x i8] c"ps_device_attribute_group\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 701, i32 37 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1453, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"player_leds_info\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1276, i32 34 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1277, i32 5 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1277, i32 27 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1279, i32 5 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1281, i32 5 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1283, i32 5 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1285, i32 5 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1301, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1305, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1315, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1318, i32 43 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1322, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1332, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1387, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1398, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1037, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1043, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant [23 x i8] c"ps_gamepad_hat_mapping\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 297, i32 38 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 831, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 513, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 518, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 523, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 533, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 807, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant [16 x i8] c"ps_devices_lock\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [16 x i8] c"ps_devices_list\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 24, i32 8 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 316, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 23, i32 8 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 726, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 369, i32 60 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 612, i32 40 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 649, i32 41 }
@___asan_gen_.322 = private unnamed_addr constant [22 x i8] c"ps_power_supply_props\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 382, i32 35 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 436, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 443, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 450, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 589, i32 58 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 599, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 547, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 560, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant [11 x i8] c"player_ids\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1254, i32 19 }
@___asan_gen_.370 = private unnamed_addr constant [21 x i8] c"ps_device_attributes\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 695, i32 26 }
@___asan_gen_.373 = private unnamed_addr constant [26 x i8] c"dev_attr_firmware_version\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [26 x i8] c"dev_attr_hardware_version\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 681, i32 8 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 678, i32 25 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 693, i32 8 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 26, i32 8 }
@___asan_gen_.391 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.392 = private constant [33 x i8] c"../drivers/hid/hid-playstation.c\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 1494, i32 9 }
@llvm.compiler.used = appending global [132 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_ps_exit, ptr @__initcall__kmod_hid_playstation__227_1503_ps_init6, ptr @dualsense_create._entry, ptr @dualsense_create._entry.30, ptr @dualsense_create._entry.33, ptr @dualsense_create._entry.36, ptr @dualsense_create._entry.39, ptr @dualsense_create._entry_ptr, ptr @dualsense_create._entry_ptr.32, ptr @dualsense_create._entry_ptr.35, ptr @dualsense_create._entry_ptr.38, ptr @dualsense_create._entry_ptr.42, ptr @dualsense_get_calibration_data._entry, ptr @dualsense_get_calibration_data._entry_ptr, ptr @dualsense_get_firmware_info._entry, ptr @dualsense_get_firmware_info._entry_ptr, ptr @dualsense_get_mac_address._entry, ptr @dualsense_get_mac_address._entry_ptr, ptr @dualsense_parse_report._entry, ptr @dualsense_parse_report._entry.45, ptr @dualsense_parse_report._entry_ptr, ptr @dualsense_parse_report._entry_ptr.47, ptr @ps_device_register_battery._entry, ptr @ps_device_register_battery._entry.75, ptr @ps_device_register_battery._entry_ptr, ptr @ps_device_register_battery._entry_ptr.77, ptr @ps_devices_list_add._entry, ptr @ps_devices_list_add._entry_ptr, ptr @ps_exit, ptr @ps_get_report._entry, ptr @ps_get_report._entry.52, ptr @ps_get_report._entry.55, ptr @ps_get_report._entry.58, ptr @ps_get_report._entry_ptr, ptr @ps_get_report._entry_ptr.54, ptr @ps_get_report._entry_ptr.57, ptr @ps_get_report._entry_ptr.60, ptr @ps_led_register._entry, ptr @ps_led_register._entry_ptr, ptr @ps_lightbar_register._entry, ptr @ps_lightbar_register._entry_ptr, ptr @ps_probe._entry, ptr @ps_probe._entry.12, ptr @ps_probe._entry.15, ptr @ps_probe._entry.6, ptr @ps_probe._entry.9, ptr @ps_probe._entry_ptr, ptr @ps_probe._entry_ptr.11, ptr @ps_probe._entry_ptr.14, ptr @ps_probe._entry_ptr.17, ptr @ps_probe._entry_ptr.8, ptr @ps_driver, ptr @ps_player_id_allocator, ptr @.str, ptr @ps_devices, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @ps_device_attribute_group, ptr @.str.16, ptr @dualsense_create.player_leds_info, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @dualsense_create.__key, ptr @.str.24, ptr @dualsense_create.__key.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @ps_gamepad_hat_mapping, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @ps_devices_lock, ptr @ps_devices_list, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @ps_power_supply_props, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @dualsense_set_player_leds.player_ids, ptr @ps_device_attributes, ptr @dev_attr_firmware_version, ptr @dev_attr_hardware_version, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_player_id_allocator to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_devices to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_device_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dualsense_create.player_leds_info to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dualsense_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dualsense_create.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dualsense_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dualsense_create._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dualsense_create._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dualsense_create._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dualsense_create._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dualsense_parse_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dualsense_parse_report._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_gamepad_hat_mapping to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dualsense_get_mac_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_get_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_get_report._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_get_report._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_get_report._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dualsense_get_firmware_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_devices_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_devices_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_devices_list_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dualsense_get_calibration_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_power_supply_props to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_device_register_battery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_device_register_battery._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_lightbar_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_led_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dualsense_set_player_leds.player_ids to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_device_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_firmware_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hardware_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ps_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @hid_unregister_driver(ptr noundef nonnull @ps_driver) #11
  tail call void @ida_destroy(ptr noundef nonnull @ps_player_id_allocator) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ps_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @ps_driver, ptr noundef null, ptr noundef nonnull @.str.88) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev1 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev8 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.7) #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @hid_hw_open(ptr noundef %hdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %dev16 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.10) #14
  br label %err_stop

if.end17:                                         ; preds = %if.end9
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %0 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %product, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3302, i32 %1)
  %cmp = icmp eq i32 %1, 3302
  br i1 %cmp, label %if.then18, label %if.end17.if.end28_crit_edge

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then18:                                        ; preds = %if.end17
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 2744, i32 noundef 3520) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then18.do.end24_crit_edge, label %if.end.i

if.then18.do.end24_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24

if.end.i:                                         ; preds = %if.then18
  %version.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 12
  %2 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version.i, align 4
  %or.i = or i32 %3, 32768
  store i32 %or.i, ptr %version.i, align 4
  %hdev2.i = getelementptr inbounds %struct.ps_device, ptr %call.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %hdev2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hdev, ptr %hdev2.i, align 4
  %lock.i = getelementptr inbounds %struct.ps_device, ptr %call.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @dualsense_create.__key, i16 noundef signext 3) #11
  %battery_capacity.i = getelementptr inbounds %struct.ps_device, ptr %call.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %battery_capacity.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 100, ptr %battery_capacity.i, align 4
  %battery_status.i = getelementptr inbounds %struct.ps_device, ptr %call.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %battery_status.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %battery_status.i, align 4
  %parse_report.i = getelementptr inbounds %struct.ps_device, ptr %call.i.i, i32 0, i32 12
  %7 = ptrtoint ptr %parse_report.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dualsense_parse_report, ptr %parse_report.i, align 4
  %output_worker.i = getelementptr inbounds %struct.dualsense, ptr %call.i.i, i32 0, i32 23
  tail call void @__init_work(ptr noundef %output_worker.i, i32 noundef 0) #11
  %8 = ptrtoint ptr %output_worker.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %output_worker.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.dualsense, ptr %call.i.i, i32 0, i32 23, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @dualsense_create.__key.25, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry8.i = getelementptr inbounds %struct.dualsense, ptr %call.i.i, i32 0, i32 23, i32 1
  %9 = ptrtoint ptr %entry8.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry8.i, ptr %entry8.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dualsense, ptr %call.i.i, i32 0, i32 23, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry8.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.dualsense, ptr %call.i.i, i32 0, i32 23, i32 2
  %11 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @dualsense_output_worker, ptr %func.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %12 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %driver_data.i.i.i, align 4
  %call.i189.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 78, i32 noundef 3520) #11
  %output_report_dmabuf.i = getelementptr inbounds %struct.dualsense, ptr %call.i.i, i32 0, i32 24
  %13 = ptrtoint ptr %output_report_dmabuf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i189.i, ptr %output_report_dmabuf.i, align 4
  %tobool15.not.i = icmp eq ptr %call.i189.i, null
  br i1 %tobool15.not.i, label %if.end.i.do.end24_crit_edge, label %if.end18.i

if.end.i.do.end24_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24

if.end18.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 20) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end18.i.do.end24.i_crit_edge, label %if.end.i.i

if.end18.i.do.end24.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24.i

if.end.i.i:                                       ; preds = %if.end18.i
  %15 = ptrtoint ptr %hdev2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hdev2.i, align 4
  %call1.i.i = tail call fastcc i32 @ps_get_report(ptr noundef %16, i8 noundef zeroext 9, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end27.i, label %dualsense_get_mac_address.exit.i

dualsense_get_mac_address.exit.i:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %hdev2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hdev2.i, align 4
  %dev.i.i = getelementptr inbounds %struct.hid_device, ptr %18, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.48, i32 noundef %call1.i.i) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  %phi.cast.i = inttoptr i32 %call1.i.i to ptr
  br label %do.end24.i

do.end24.i:                                       ; preds = %dualsense_get_mac_address.exit.i, %if.end18.i.do.end24.i_crit_edge
  %retval.0.i297.i = phi ptr [ %phi.cast.i, %dualsense_get_mac_address.exit.i ], [ inttoptr (i32 -12 to ptr), %if.end18.i.do.end24.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.27) #14
  br label %dualsense_create.exit

if.end27.i:                                       ; preds = %if.end.i.i
  %mac_address.i.i = getelementptr inbounds %struct.ps_device, ptr %call.i.i, i32 0, i32 9
  %arrayidx.i.i = getelementptr i8, ptr %call7.i.i.i.i, i32 1
  %19 = call ptr @memcpy(ptr %mac_address.i.i, ptr %arrayidx.i.i, i32 6)
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  %uniq.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 41
  %call30.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %uniq.i, i32 noundef 64, ptr noundef nonnull @.str.29, ptr noundef %mac_address.i.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i190.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 64) #15
  %tobool.not.i191.i = icmp eq ptr %call7.i.i.i190.i, null
  br i1 %tobool.not.i191.i, label %if.end27.i.do.end36.i_crit_edge, label %if.end.i195.i

if.end27.i.do.end36.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end36.i

if.end.i195.i:                                    ; preds = %if.end27.i
  %21 = ptrtoint ptr %hdev2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hdev2.i, align 4
  %call1.i193.i = tail call fastcc i32 @ps_get_report(ptr noundef %22, i8 noundef zeroext 32, ptr noundef nonnull %call7.i.i.i190.i, i32 noundef 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i193.i)
  %tobool2.not.i194.i = icmp eq i32 %call1.i193.i, 0
  br i1 %tobool2.not.i194.i, label %if.end39.i, label %dualsense_get_firmware_info.exit.i

dualsense_get_firmware_info.exit.i:               ; preds = %if.end.i195.i
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %hdev2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hdev2.i, align 4
  %dev.i196.i = getelementptr inbounds %struct.hid_device, ptr %24, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i196.i, ptr noundef nonnull @.str.61, i32 noundef %call1.i193.i) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i190.i) #11
  %phi.cast331.i = inttoptr i32 %call1.i193.i to ptr
  br label %do.end36.i

do.end36.i:                                       ; preds = %dualsense_get_firmware_info.exit.i, %if.end27.i.do.end36.i_crit_edge
  %retval.0.i201302.i = phi ptr [ %phi.cast331.i, %dualsense_get_firmware_info.exit.i ], [ inttoptr (i32 -12 to ptr), %if.end27.i.do.end36.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.31) #14
  br label %dualsense_create.exit

if.end39.i:                                       ; preds = %if.end.i195.i
  %arrayidx.i198.i = getelementptr i8, ptr %call7.i.i.i190.i, i32 24
  %25 = ptrtoint ptr %arrayidx.i198.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i198.i, align 8
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #11
  %hw_version.i.i = getelementptr inbounds %struct.ps_device, ptr %call.i.i, i32 0, i32 10
  %28 = ptrtoint ptr %hw_version.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %hw_version.i.i, align 4
  %arrayidx9.i.i = getelementptr i8, ptr %call7.i.i.i190.i, i32 28
  %29 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx9.i.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #11
  %fw_version.i.i = getelementptr inbounds %struct.ps_device, ptr %call.i.i, i32 0, i32 11
  %32 = ptrtoint ptr %fw_version.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %fw_version.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i190.i) #11
  tail call void @mutex_lock_nested(ptr noundef nonnull @ps_devices_lock, i32 noundef 0) #11
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end39.i
  %entry1.0.in.i.i = phi ptr [ @ps_devices_list, %if.end39.i ], [ %entry1.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %33 = ptrtoint ptr %entry1.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %entry1.0.i.i = load ptr, ptr %entry1.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %entry1.0.i.i, @ps_devices_list
  br i1 %cmp.not.i.i, label %for.end.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %mac_address.i202.i = getelementptr inbounds %struct.ps_device, ptr %entry1.0.i.i, i32 0, i32 9
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %mac_address.i202.i, ptr noundef dereferenceable(6) %mac_address.i.i, i32 6) #16
  %tobool.not.i203.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i203.i, label %if.then42.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  %34 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ps_devices_list, i32 0, i32 1), align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call.i.i, ptr noundef %34, ptr noundef nonnull @ps_devices_list) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.end.i.i.if.end44.i_crit_edge

for.end.i.i.if.end44.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.i

if.end.i.i.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %call.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @ps_devices_list, i32 0, i32 1), align 4
  %35 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @ps_devices_list, ptr %call.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %34, ptr %prev3.i.i.i.i, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %call.i.i, ptr %34, align 4
  br label %if.end44.i

if.then42.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %hdev2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hdev2.i, align 4
  %dev4.i.i = getelementptr inbounds %struct.hid_device, ptr %39, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i.i, ptr noundef nonnull @.str.63, ptr noundef %mac_address.i.i) #14
  tail call void @mutex_unlock(ptr noundef nonnull @ps_devices_lock) #11
  br label %do.end24

if.end44.i:                                       ; preds = %if.end.i.i.i.i, %for.end.i.i.if.end44.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ps_devices_lock) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i207.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 41) #15
  %tobool.not.i208.i = icmp eq ptr %call7.i.i.i207.i, null
  br i1 %tobool.not.i208.i, label %if.end44.i.do.end50.i_crit_edge, label %if.end.i212.i

if.end44.i.do.end50.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end50.i

if.end.i212.i:                                    ; preds = %if.end44.i
  %41 = ptrtoint ptr %hdev2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hdev2.i, align 4
  %call1.i210.i = tail call fastcc i32 @ps_get_report(ptr noundef %42, i8 noundef zeroext 5, ptr noundef nonnull %call7.i.i.i207.i, i32 noundef 41) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i210.i)
  %tobool2.not.i211.i = icmp eq i32 %call1.i210.i, 0
  br i1 %tobool2.not.i211.i, label %if.end52.i, label %dualsense_get_calibration_data.exit.i

dualsense_get_calibration_data.exit.i:            ; preds = %if.end.i212.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %hdev2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hdev2.i, align 4
  %dev.i213.i = getelementptr inbounds %struct.hid_device, ptr %44, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i213.i, ptr noundef nonnull @.str.67, i32 noundef %call1.i210.i) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i207.i) #11
  br label %do.end50.i

do.end50.i:                                       ; preds = %dualsense_get_calibration_data.exit.i, %if.end44.i.do.end50.i_crit_edge
  %retval.0.i218309.i = phi i32 [ %call1.i210.i, %dualsense_get_calibration_data.exit.i ], [ -12, %if.end44.i.do.end50.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.34) #14
  br label %err.i

if.end52.i:                                       ; preds = %if.end.i212.i
  %arrayidx.i215.i = getelementptr i8, ptr %call7.i.i.i207.i, i32 1
  %45 = ptrtoint ptr %arrayidx.i215.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %arrayidx.i215.i, align 1
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #11
  %arrayidx8.i.i = getelementptr i8, ptr %call7.i.i.i207.i, i32 3
  %48 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %arrayidx8.i.i, align 1
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #11
  %arrayidx10.i.i = getelementptr i8, ptr %call7.i.i.i207.i, i32 5
  %51 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %arrayidx10.i.i, align 1
  %53 = tail call i16 @llvm.bswap.i16(i16 %52) #11
  %arrayidx12.i.i = getelementptr i8, ptr %call7.i.i.i207.i, i32 7
  %54 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %arrayidx12.i.i, align 1
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #11
  %arrayidx14.i.i = getelementptr i8, ptr %call7.i.i.i207.i, i32 9
  %57 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %arrayidx14.i.i, align 1
  %59 = tail call i16 @llvm.bswap.i16(i16 %58) #11
  %arrayidx16.i.i = getelementptr i8, ptr %call7.i.i.i207.i, i32 11
  %60 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %arrayidx16.i.i, align 1
  %62 = tail call i16 @llvm.bswap.i16(i16 %61) #11
  %arrayidx18.i.i = getelementptr i8, ptr %call7.i.i.i207.i, i32 13
  %63 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %arrayidx18.i.i, align 1
  %65 = tail call i16 @llvm.bswap.i16(i16 %64) #11
  %arrayidx20.i.i = getelementptr i8, ptr %call7.i.i.i207.i, i32 15
  %66 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %arrayidx20.i.i, align 1
  %68 = tail call i16 @llvm.bswap.i16(i16 %67) #11
  %arrayidx22.i.i = getelementptr i8, ptr %call7.i.i.i207.i, i32 17
  %69 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %arrayidx22.i.i, align 1
  %71 = tail call i16 @llvm.bswap.i16(i16 %70) #11
  %arrayidx24.i.i = getelementptr i8, ptr %call7.i.i.i207.i, i32 19
  %72 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %arrayidx24.i.i, align 1
  %74 = tail call i16 @llvm.bswap.i16(i16 %73) #11
  %arrayidx26.i.i = getelementptr i8, ptr %call7.i.i.i207.i, i32 21
  %75 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %arrayidx26.i.i, align 1
  %77 = tail call i16 @llvm.bswap.i16(i16 %76) #11
  %arrayidx28.i.i = getelementptr i8, ptr %call7.i.i.i207.i, i32 23
  %78 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %79 = load i16, ptr %arrayidx28.i.i, align 1
  %80 = tail call i16 @llvm.bswap.i16(i16 %79) #11
  %arrayidx30.i.i = getelementptr i8, ptr %call7.i.i.i207.i, i32 25
  %81 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %arrayidx30.i.i, align 1
  %83 = tail call i16 @llvm.bswap.i16(i16 %82) #11
  %arrayidx32.i.i = getelementptr i8, ptr %call7.i.i.i207.i, i32 27
  %84 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %85 = load i16, ptr %arrayidx32.i.i, align 1
  %86 = tail call i16 @llvm.bswap.i16(i16 %85) #11
  %arrayidx34.i.i = getelementptr i8, ptr %call7.i.i.i207.i, i32 29
  %87 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %88 = load i16, ptr %arrayidx34.i.i, align 1
  %89 = tail call i16 @llvm.bswap.i16(i16 %88) #11
  %arrayidx36.i.i = getelementptr i8, ptr %call7.i.i.i207.i, i32 31
  %90 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %arrayidx36.i.i, align 1
  %92 = tail call i16 @llvm.bswap.i16(i16 %91) #11
  %arrayidx38.i.i = getelementptr i8, ptr %call7.i.i.i207.i, i32 33
  %93 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %94 = load i16, ptr %arrayidx38.i.i, align 1
  %95 = tail call i16 @llvm.bswap.i16(i16 %94) #11
  %conv.i.i = sext i16 %74 to i32
  %conv40.i.i = sext i16 %77 to i32
  %add.i.i = add nsw i32 %conv40.i.i, %conv.i.i
  %gyro_calib_data.i.i = getelementptr inbounds %struct.dualsense, ptr %call.i.i, i32 0, i32 5
  %96 = ptrtoint ptr %gyro_calib_data.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 3, ptr %gyro_calib_data.i.i, align 4
  %bias.i.i = getelementptr inbounds %struct.dualsense, ptr %call.i.i, i32 0, i32 5, i32 0, i32 1
  %97 = ptrtoint ptr %bias.i.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %47, ptr %bias.i.i, align 4
  %mul.i.i = shl nsw i32 %add.i.i, 10
  %sens_numer.i.i = getelementptr inbounds %struct.dualsense, ptr %call.i.i, i32 0, i32 5, i32 0, i32 2
  %98 = ptrtoint ptr %sens_numer.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %mul.i.i, ptr %sens_numer.i.i, align 4
  %conv46.i.i = sext i16 %56 to i32
  %conv47.i.i = sext i16 %59 to i32
  %sub.i.i = sub nsw i32 %conv46.i.i, %conv47.i.i
  %sens_denom.i.i = getelementptr inbounds %struct.dualsense, ptr %call.i.i, i32 0, i32 5, i32 0, i32 3
  %99 = ptrtoint ptr %sens_denom.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %sub.i.i, ptr %sens_denom.i.i, align 4
  %arrayidx51.i.i = getelementptr %struct.dualsense, ptr %call.i.i, i32 0, i32 5, i32 1
  %100 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 4, ptr %arrayidx51.i.i, align 4
  %bias55.i.i = getelementptr %struct.dualsense, ptr %call.i.i, i32 0, i32 5, i32 1, i32 1
  %101 = ptrtoint ptr %bias55.i.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %50, ptr %bias55.i.i, align 4
  %sens_numer59.i.i = getelementptr %struct.dualsense, ptr %call.i.i, i32 0, i32 5, i32 1, i32 2
  %102 = ptrtoint ptr %sens_numer59.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %mul.i.i, ptr %sens_numer59.i.i, align 4
  %conv60.i.i = sext i16 %62 to i32
  %conv61.i.i = sext i16 %65 to i32
  %sub62.i.i = sub nsw i32 %conv60.i.i, %conv61.i.i
  %sens_denom65.i.i = getelementptr %struct.dualsense, ptr %call.i.i, i32 0, i32 5, i32 1, i32 3
  %103 = ptrtoint ptr %sens_denom65.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %sub62.i.i, ptr %sens_denom65.i.i, align 4
  %arrayidx67.i.i = getelementptr %struct.dualsense, ptr %call.i.i, i32 0, i32 5, i32 2
  %104 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 5, ptr %arrayidx67.i.i, align 4
  %bias71.i.i = getelementptr %struct.dualsense, ptr %call.i.i, i32 0, i32 5, i32 2, i32 1
  %105 = ptrtoint ptr %bias71.i.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %53, ptr %bias71.i.i, align 4
  %sens_numer75.i.i = getelementptr %struct.dualsense, ptr %call.i.i, i32 0, i32 5, i32 2, i32 2
  %106 = ptrtoint ptr %sens_numer75.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %mul.i.i, ptr %sens_numer75.i.i, align 4
  %conv76.i.i = sext i16 %68 to i32
  %conv77.i.i = sext i16 %71 to i32
  %sub78.i.i = sub nsw i32 %conv76.i.i, %conv77.i.i
  %sens_denom81.i.i = getelementptr %struct.dualsense, ptr %call.i.i, i32 0, i32 5, i32 2, i32 3
  %107 = ptrtoint ptr %sens_denom81.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %sub78.i.i, ptr %sens_denom81.i.i, align 4
  %conv82.i.i = sext i16 %80 to i32
  %conv83.i.i = sext i16 %83 to i32
  %sub84.i.i = sub nsw i32 %conv82.i.i, %conv83.i.i
  %accel_calib_data.i.i = getelementptr inbounds %struct.dualsense, ptr %call.i.i, i32 0, i32 4
  %108 = ptrtoint ptr %accel_calib_data.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %accel_calib_data.i.i, align 4
  %div.neg.i.i = sdiv i32 %sub84.i.i, -2
  %109 = trunc i32 %div.neg.i.i to i16
  %conv89.i.i = add i16 %80, %109
  %bias92.i.i = getelementptr inbounds %struct.dualsense, ptr %call.i.i, i32 0, i32 4, i32 0, i32 1
  %110 = ptrtoint ptr %bias92.i.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv89.i.i, ptr %bias92.i.i, align 4
  %sens_numer95.i.i = getelementptr inbounds %struct.dualsense, ptr %call.i.i, i32 0, i32 4, i32 0, i32 2
  %111 = ptrtoint ptr %sens_numer95.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 16384, ptr %sens_numer95.i.i, align 4
  %sens_denom98.i.i = getelementptr inbounds %struct.dualsense, ptr %call.i.i, i32 0, i32 4, i32 0, i32 3
  %112 = ptrtoint ptr %sens_denom98.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %sub84.i.i, ptr %sens_denom98.i.i, align 4
  %conv99.i.i = sext i16 %86 to i32
  %conv100.i.i = sext i16 %89 to i32
  %sub101.i.i = sub nsw i32 %conv99.i.i, %conv100.i.i
  %arrayidx103.i.i = getelementptr %struct.dualsense, ptr %call.i.i, i32 0, i32 4, i32 1
  %113 = ptrtoint ptr %arrayidx103.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 1, ptr %arrayidx103.i.i, align 4
  %div106.neg.i.i = sdiv i32 %sub101.i.i, -2
  %114 = trunc i32 %div106.neg.i.i to i16
  %conv108.i.i = add i16 %86, %114
  %bias111.i.i = getelementptr %struct.dualsense, ptr %call.i.i, i32 0, i32 4, i32 1, i32 1
  %115 = ptrtoint ptr %bias111.i.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %conv108.i.i, ptr %bias111.i.i, align 4
  %sens_numer114.i.i = getelementptr %struct.dualsense, ptr %call.i.i, i32 0, i32 4, i32 1, i32 2
  %116 = ptrtoint ptr %sens_numer114.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 16384, ptr %sens_numer114.i.i, align 4
  %sens_denom117.i.i = getelementptr %struct.dualsense, ptr %call.i.i, i32 0, i32 4, i32 1, i32 3
  %117 = ptrtoint ptr %sens_denom117.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %sub101.i.i, ptr %sens_denom117.i.i, align 4
  %conv118.i.i = sext i16 %92 to i32
  %conv119.i.i = sext i16 %95 to i32
  %sub120.i.i = sub nsw i32 %conv118.i.i, %conv119.i.i
  %arrayidx122.i.i = getelementptr %struct.dualsense, ptr %call.i.i, i32 0, i32 4, i32 2
  %118 = ptrtoint ptr %arrayidx122.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 2, ptr %arrayidx122.i.i, align 4
  %div125.neg.i.i = sdiv i32 %sub120.i.i, -2
  %119 = trunc i32 %div125.neg.i.i to i16
  %conv127.i.i = add i16 %92, %119
  %bias130.i.i = getelementptr %struct.dualsense, ptr %call.i.i, i32 0, i32 4, i32 2, i32 1
  %120 = ptrtoint ptr %bias130.i.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %conv127.i.i, ptr %bias130.i.i, align 4
  %sens_numer133.i.i = getelementptr %struct.dualsense, ptr %call.i.i, i32 0, i32 4, i32 2, i32 2
  %121 = ptrtoint ptr %sens_numer133.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 16384, ptr %sens_numer133.i.i, align 4
  %sens_denom136.i.i = getelementptr %struct.dualsense, ptr %call.i.i, i32 0, i32 4, i32 2, i32 3
  %122 = ptrtoint ptr %sens_denom136.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %sub120.i.i, ptr %sens_denom136.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i207.i) #11
  %call.i.i.i = tail call ptr @devm_input_allocate_device(ptr noundef %dev.i) #11
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %ps_gamepad_create.exit.thread.i, label %ps_allocate_input_dev.exit.i.i

ps_gamepad_create.exit.thread.i:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  %gamepad313.i = getelementptr inbounds %struct.dualsense, ptr %call.i.i, i32 0, i32 1
  %123 = ptrtoint ptr %gamepad313.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr inttoptr (i32 -12 to ptr), ptr %gamepad313.i, align 4
  br label %if.then56.i

ps_allocate_input_dev.exit.i.i:                   ; preds = %if.end52.i
  %bus.i.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 8
  %124 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %bus.i.i.i, align 8
  %id.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i.i, i32 0, i32 3
  %126 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %125, ptr %id.i.i.i, align 4
  %vendor.i.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 10
  %127 = ptrtoint ptr %vendor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %vendor.i.i.i, align 4
  %conv.i.i.i = trunc i32 %128 to i16
  %vendor3.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i.i, i32 0, i32 3, i32 1
  %129 = ptrtoint ptr %vendor3.i.i.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv.i.i.i, ptr %vendor3.i.i.i, align 2
  %130 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %product, align 8
  %conv4.i.i.i = trunc i32 %131 to i16
  %product6.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i.i, i32 0, i32 3, i32 2
  %132 = ptrtoint ptr %product6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %conv4.i.i.i, ptr %product6.i.i.i, align 4
  %133 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %version.i, align 4
  %conv7.i.i.i = trunc i32 %134 to i16
  %version9.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i.i, i32 0, i32 3, i32 3
  %135 = ptrtoint ptr %version9.i.i.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv7.i.i.i, ptr %version9.i.i.i, align 2
  %uniq10.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i.i, i32 0, i32 2
  %136 = ptrtoint ptr %uniq10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %uniq.i, ptr %uniq10.i.i.i, align 8
  %name22.i.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 39
  %137 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %name22.i.i.i, ptr %call.i.i.i, align 8
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i.i, i32 0, i32 40, i32 8
  %138 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %hdev, ptr %driver_data.i.i.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %ps_allocate_input_dev.exit.i.i.ps_gamepad_create.exit.i_crit_edge, label %if.end.i219.i

ps_allocate_input_dev.exit.i.i.ps_gamepad_create.exit.i_crit_edge: ; preds = %ps_allocate_input_dev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ps_gamepad_create.exit.i

if.end.i219.i:                                    ; preds = %ps_allocate_input_dev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i.i, i32 noundef 2, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i.i, i32 noundef 3, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i.i, i32 noundef 4, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i.i, i32 noundef 5, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i.i, i32 noundef 16, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i.i, i32 noundef 17, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 308) #11
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 307) #11
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 305) #11
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 304) #11
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 310) #11
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 311) #11
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 312) #11
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 313) #11
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 314) #11
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 315) #11
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 317) #11
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 318) #11
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 316) #11
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i.i, i32 noundef 21, i32 noundef 80) #11
  %call4.i.i = tail call i32 @input_ff_create_memless(ptr noundef nonnull %call.i.i.i, ptr noundef null, ptr noundef nonnull @dualsense_play_effect) #11
  %call6.i.i = tail call i32 @input_register_device(ptr noundef nonnull %call.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  %139 = inttoptr i32 %call6.i.i to ptr
  %spec.select.i.i = select i1 %tobool7.not.i.i, ptr %call.i.i.i, ptr %139
  br label %ps_gamepad_create.exit.i

ps_gamepad_create.exit.i:                         ; preds = %if.end.i219.i, %ps_allocate_input_dev.exit.i.i.ps_gamepad_create.exit.i_crit_edge
  %retval.0.i220.i = phi ptr [ %call.i.i.i, %ps_allocate_input_dev.exit.i.i.ps_gamepad_create.exit.i_crit_edge ], [ %spec.select.i.i, %if.end.i219.i ]
  %gamepad.i = getelementptr inbounds %struct.dualsense, ptr %call.i.i, i32 0, i32 1
  %140 = ptrtoint ptr %gamepad.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %retval.0.i220.i, ptr %gamepad.i, align 4
  %cmp.i.i = icmp ugt ptr %retval.0.i220.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %ps_gamepad_create.exit.i.if.then56.i_crit_edge, label %if.end59.i

ps_gamepad_create.exit.i.if.then56.i_crit_edge:   ; preds = %ps_gamepad_create.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then56.i

if.then56.i:                                      ; preds = %ps_gamepad_create.exit.i.if.then56.i_crit_edge, %ps_gamepad_create.exit.thread.i
  %retval.0.i220315.i = phi ptr [ inttoptr (i32 -12 to ptr), %ps_gamepad_create.exit.thread.i ], [ %retval.0.i220.i, %ps_gamepad_create.exit.i.if.then56.i_crit_edge ]
  %141 = ptrtoint ptr %retval.0.i220315.i to i32
  br label %err.i

if.end59.i:                                       ; preds = %ps_gamepad_create.exit.i
  %init_name.i.i = getelementptr inbounds %struct.input_dev, ptr %retval.0.i220.i, i32 0, i32 40, i32 3
  %142 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i221.i = icmp eq ptr %143, null
  br i1 %tobool.not.i221.i, label %if.end.i222.i, label %if.end59.i.dev_name.exit.i_crit_edge

if.end59.i.dev_name.exit.i_crit_edge:             ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i222.i:                                    ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev61.i = getelementptr inbounds %struct.input_dev, ptr %retval.0.i220.i, i32 0, i32 40
  %144 = ptrtoint ptr %dev61.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev61.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i222.i, %if.end59.i.dev_name.exit.i_crit_edge
  %retval.0.i223.i = phi ptr [ %145, %if.end.i222.i ], [ %143, %if.end59.i.dev_name.exit.i_crit_edge ]
  %input_dev_name.i = getelementptr inbounds %struct.ps_device, ptr %call.i.i, i32 0, i32 8
  %146 = ptrtoint ptr %input_dev_name.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %retval.0.i223.i, ptr %input_dev_name.i, align 4
  %call.i.i225.i = tail call ptr @devm_input_allocate_device(ptr noundef %dev.i) #11
  %tobool.not.i.i226.i = icmp eq ptr %call.i.i225.i, null
  br i1 %tobool.not.i.i226.i, label %dev_name.exit.i.ps_sensors_create.exit.thread.i_crit_edge, label %if.end.i.i.i

dev_name.exit.i.ps_sensors_create.exit.thread.i_crit_edge: ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ps_sensors_create.exit.thread.i

if.end.i.i.i:                                     ; preds = %dev_name.exit.i
  %147 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %bus.i.i.i, align 8
  %id.i.i228.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i225.i, i32 0, i32 3
  %149 = ptrtoint ptr %id.i.i228.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %148, ptr %id.i.i228.i, align 4
  %150 = ptrtoint ptr %vendor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %vendor.i.i.i, align 4
  %conv.i.i230.i = trunc i32 %151 to i16
  %vendor3.i.i231.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i225.i, i32 0, i32 3, i32 1
  %152 = ptrtoint ptr %vendor3.i.i231.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %conv.i.i230.i, ptr %vendor3.i.i231.i, align 2
  %153 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %product, align 8
  %conv4.i.i233.i = trunc i32 %154 to i16
  %product6.i.i234.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i225.i, i32 0, i32 3, i32 2
  %155 = ptrtoint ptr %product6.i.i234.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %conv4.i.i233.i, ptr %product6.i.i234.i, align 4
  %156 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %version.i, align 4
  %conv7.i.i236.i = trunc i32 %157 to i16
  %version9.i.i237.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i225.i, i32 0, i32 3, i32 3
  %158 = ptrtoint ptr %version9.i.i237.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %conv7.i.i236.i, ptr %version9.i.i237.i, align 2
  %uniq10.i.i239.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i225.i, i32 0, i32 2
  %159 = ptrtoint ptr %uniq10.i.i239.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %uniq.i, ptr %uniq10.i.i239.i, align 8
  %call15.i.i.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev.i, i32 noundef 3264, ptr noundef nonnull @.str.69, ptr noundef %name22.i.i.i, ptr noundef nonnull @.str.70) #11
  %160 = ptrtoint ptr %call.i.i225.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %call15.i.i.i, ptr %call.i.i225.i, align 8
  %tobool18.not.i.i.i = icmp eq ptr %call15.i.i.i, null
  br i1 %tobool18.not.i.i.i, label %if.end.i.i.i.ps_sensors_create.exit.thread.i_crit_edge, label %ps_allocate_input_dev.exit.i243.i

if.end.i.i.i.ps_sensors_create.exit.thread.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ps_sensors_create.exit.thread.i

ps_allocate_input_dev.exit.i243.i:                ; preds = %if.end.i.i.i
  %driver_data.i.i.i.i241.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i225.i, i32 0, i32 40, i32 8
  %161 = ptrtoint ptr %driver_data.i.i.i.i241.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %hdev, ptr %driver_data.i.i.i.i241.i, align 4
  %cmp.i.i242.i = icmp ugt ptr %call.i.i225.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i242.i, label %ps_allocate_input_dev.exit.i243.i.ps_sensors_create.exit.i_crit_edge, label %if.end.i244.i

ps_allocate_input_dev.exit.i243.i.ps_sensors_create.exit.i_crit_edge: ; preds = %ps_allocate_input_dev.exit.i243.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ps_sensors_create.exit.i

if.end.i244.i:                                    ; preds = %ps_allocate_input_dev.exit.i243.i
  %propbit.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i225.i, i32 0, i32 4
  %162 = ptrtoint ptr %propbit.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %propbit.i.i, align 4
  %or.i.i.i = or i32 %163, 64
  store i32 %or.i.i.i, ptr %propbit.i.i, align 4
  %evbit.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i225.i, i32 0, i32 5
  %164 = ptrtoint ptr %evbit.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %evbit.i.i, align 4
  %or.i1.i.i = or i32 %165, 16
  store i32 %or.i1.i.i, ptr %evbit.i.i, align 4
  %mscbit.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i225.i, i32 0, i32 9
  %166 = ptrtoint ptr %mscbit.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %mscbit.i.i, align 4
  %or.i2.i.i = or i32 %167, 32
  store i32 %or.i2.i.i, ptr %mscbit.i.i, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i225.i, i32 noundef 0, i32 noundef -32768, i32 noundef 32768, i32 noundef 16, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i225.i, i32 noundef 1, i32 noundef -32768, i32 noundef 32768, i32 noundef 16, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i225.i, i32 noundef 2, i32 noundef -32768, i32 noundef 32768, i32 noundef 16, i32 noundef 0) #11
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call.i.i225.i) #11
  %absinfo.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i225.i, i32 0, i32 26
  %168 = ptrtoint ptr %absinfo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %absinfo.i.i.i, align 8
  %tobool.not.i3.i.i = icmp eq ptr %169, null
  br i1 %tobool.not.i3.i.i, label %if.end.i244.i.input_abs_set_res.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i244.i.input_abs_set_res.exit.i.i_crit_edge: ; preds = %if.end.i244.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %input_abs_set_res.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i244.i
  call void @__sanitizer_cov_trace_pc() #13
  %resolution.i.i.i = getelementptr %struct.input_absinfo, ptr %169, i32 0, i32 5
  %170 = ptrtoint ptr %resolution.i.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 8192, ptr %resolution.i.i.i, align 4
  br label %input_abs_set_res.exit.i.i

input_abs_set_res.exit.i.i:                       ; preds = %if.then.i.i.i, %if.end.i244.i.input_abs_set_res.exit.i.i_crit_edge
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call.i.i225.i) #11
  %171 = ptrtoint ptr %absinfo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %absinfo.i.i.i, align 8
  %tobool.not.i6.i.i = icmp eq ptr %172, null
  br i1 %tobool.not.i6.i.i, label %input_abs_set_res.exit.i.i.input_abs_set_res.exit10.i.i_crit_edge, label %if.then.i8.i.i

input_abs_set_res.exit.i.i.input_abs_set_res.exit10.i.i_crit_edge: ; preds = %input_abs_set_res.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %input_abs_set_res.exit10.i.i

if.then.i8.i.i:                                   ; preds = %input_abs_set_res.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %resolution.i7.i.i = getelementptr %struct.input_absinfo, ptr %172, i32 1, i32 5
  %173 = ptrtoint ptr %resolution.i7.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 8192, ptr %resolution.i7.i.i, align 4
  br label %input_abs_set_res.exit10.i.i

input_abs_set_res.exit10.i.i:                     ; preds = %if.then.i8.i.i, %input_abs_set_res.exit.i.i.input_abs_set_res.exit10.i.i_crit_edge
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call.i.i225.i) #11
  %174 = ptrtoint ptr %absinfo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %absinfo.i.i.i, align 8
  %tobool.not.i12.i.i = icmp eq ptr %175, null
  br i1 %tobool.not.i12.i.i, label %input_abs_set_res.exit10.i.i.input_abs_set_res.exit16.i.i_crit_edge, label %if.then.i14.i.i

input_abs_set_res.exit10.i.i.input_abs_set_res.exit16.i.i_crit_edge: ; preds = %input_abs_set_res.exit10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %input_abs_set_res.exit16.i.i

if.then.i14.i.i:                                  ; preds = %input_abs_set_res.exit10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %resolution.i13.i.i = getelementptr %struct.input_absinfo, ptr %175, i32 2, i32 5
  %176 = ptrtoint ptr %resolution.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 8192, ptr %resolution.i13.i.i, align 4
  br label %input_abs_set_res.exit16.i.i

input_abs_set_res.exit16.i.i:                     ; preds = %if.then.i14.i.i, %input_abs_set_res.exit10.i.i.input_abs_set_res.exit16.i.i_crit_edge
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i225.i, i32 noundef 3, i32 noundef -2097152, i32 noundef 2097152, i32 noundef 16, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i225.i, i32 noundef 4, i32 noundef -2097152, i32 noundef 2097152, i32 noundef 16, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i225.i, i32 noundef 5, i32 noundef -2097152, i32 noundef 2097152, i32 noundef 16, i32 noundef 0) #11
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call.i.i225.i) #11
  %177 = ptrtoint ptr %absinfo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %absinfo.i.i.i, align 8
  %tobool.not.i18.i.i = icmp eq ptr %178, null
  br i1 %tobool.not.i18.i.i, label %input_abs_set_res.exit16.i.i.input_abs_set_res.exit22.i.i_crit_edge, label %if.then.i20.i.i

input_abs_set_res.exit16.i.i.input_abs_set_res.exit22.i.i_crit_edge: ; preds = %input_abs_set_res.exit16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %input_abs_set_res.exit22.i.i

if.then.i20.i.i:                                  ; preds = %input_abs_set_res.exit16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %resolution.i19.i.i = getelementptr %struct.input_absinfo, ptr %178, i32 3, i32 5
  %179 = ptrtoint ptr %resolution.i19.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 1024, ptr %resolution.i19.i.i, align 4
  br label %input_abs_set_res.exit22.i.i

input_abs_set_res.exit22.i.i:                     ; preds = %if.then.i20.i.i, %input_abs_set_res.exit16.i.i.input_abs_set_res.exit22.i.i_crit_edge
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call.i.i225.i) #11
  %180 = ptrtoint ptr %absinfo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %absinfo.i.i.i, align 8
  %tobool.not.i24.i.i = icmp eq ptr %181, null
  br i1 %tobool.not.i24.i.i, label %input_abs_set_res.exit22.i.i.input_abs_set_res.exit28.i.i_crit_edge, label %if.then.i26.i.i

input_abs_set_res.exit22.i.i.input_abs_set_res.exit28.i.i_crit_edge: ; preds = %input_abs_set_res.exit22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %input_abs_set_res.exit28.i.i

if.then.i26.i.i:                                  ; preds = %input_abs_set_res.exit22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %resolution.i25.i.i = getelementptr %struct.input_absinfo, ptr %181, i32 4, i32 5
  %182 = ptrtoint ptr %resolution.i25.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 1024, ptr %resolution.i25.i.i, align 4
  br label %input_abs_set_res.exit28.i.i

input_abs_set_res.exit28.i.i:                     ; preds = %if.then.i26.i.i, %input_abs_set_res.exit22.i.i.input_abs_set_res.exit28.i.i_crit_edge
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call.i.i225.i) #11
  %183 = ptrtoint ptr %absinfo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %absinfo.i.i.i, align 8
  %tobool.not.i30.i.i = icmp eq ptr %184, null
  br i1 %tobool.not.i30.i.i, label %input_abs_set_res.exit28.i.i.input_abs_set_res.exit34.i.i_crit_edge, label %if.then.i32.i.i

input_abs_set_res.exit28.i.i.input_abs_set_res.exit34.i.i_crit_edge: ; preds = %input_abs_set_res.exit28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %input_abs_set_res.exit34.i.i

if.then.i32.i.i:                                  ; preds = %input_abs_set_res.exit28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %resolution.i31.i.i = getelementptr %struct.input_absinfo, ptr %184, i32 5, i32 5
  %185 = ptrtoint ptr %resolution.i31.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 1024, ptr %resolution.i31.i.i, align 4
  br label %input_abs_set_res.exit34.i.i

input_abs_set_res.exit34.i.i:                     ; preds = %if.then.i32.i.i, %input_abs_set_res.exit28.i.i.input_abs_set_res.exit34.i.i_crit_edge
  %call10.i.i = tail call i32 @input_register_device(ptr noundef nonnull %call.i.i225.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool.not.i245.i = icmp eq i32 %call10.i.i, 0
  %186 = inttoptr i32 %call10.i.i to ptr
  %spec.select.i246.i = select i1 %tobool.not.i245.i, ptr %call.i.i225.i, ptr %186
  br label %ps_sensors_create.exit.i

ps_sensors_create.exit.thread.i:                  ; preds = %if.end.i.i.i.ps_sensors_create.exit.thread.i_crit_edge, %dev_name.exit.i.ps_sensors_create.exit.thread.i_crit_edge
  %sensors317.i = getelementptr inbounds %struct.dualsense, ptr %call.i.i, i32 0, i32 2
  %187 = ptrtoint ptr %sensors317.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr inttoptr (i32 -12 to ptr), ptr %sensors317.i, align 4
  br label %if.then66.i

ps_sensors_create.exit.i:                         ; preds = %input_abs_set_res.exit34.i.i, %ps_allocate_input_dev.exit.i243.i.ps_sensors_create.exit.i_crit_edge
  %retval.0.i247.i = phi ptr [ %call.i.i225.i, %ps_allocate_input_dev.exit.i243.i.ps_sensors_create.exit.i_crit_edge ], [ %spec.select.i246.i, %input_abs_set_res.exit34.i.i ]
  %sensors.i = getelementptr inbounds %struct.dualsense, ptr %call.i.i, i32 0, i32 2
  %188 = ptrtoint ptr %sensors.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %retval.0.i247.i, ptr %sensors.i, align 4
  %cmp.i248.i = icmp ugt ptr %retval.0.i247.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i248.i, label %ps_sensors_create.exit.i.if.then66.i_crit_edge, label %if.end69.i

ps_sensors_create.exit.i.if.then66.i_crit_edge:   ; preds = %ps_sensors_create.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then66.i

if.then66.i:                                      ; preds = %ps_sensors_create.exit.i.if.then66.i_crit_edge, %ps_sensors_create.exit.thread.i
  %retval.0.i247319.i = phi ptr [ inttoptr (i32 -12 to ptr), %ps_sensors_create.exit.thread.i ], [ %retval.0.i247.i, %ps_sensors_create.exit.i.if.then66.i_crit_edge ]
  %189 = ptrtoint ptr %retval.0.i247319.i to i32
  br label %err.i

if.end69.i:                                       ; preds = %ps_sensors_create.exit.i
  %call.i.i250.i = tail call ptr @devm_input_allocate_device(ptr noundef %dev.i) #11
  %tobool.not.i.i251.i = icmp eq ptr %call.i.i250.i, null
  br i1 %tobool.not.i.i251.i, label %if.end69.i.ps_touchpad_create.exit.thread.i_crit_edge, label %if.end.i.i268.i

if.end69.i.ps_touchpad_create.exit.thread.i_crit_edge: ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ps_touchpad_create.exit.thread.i

if.end.i.i268.i:                                  ; preds = %if.end69.i
  %190 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %bus.i.i.i, align 8
  %id.i.i253.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i250.i, i32 0, i32 3
  %192 = ptrtoint ptr %id.i.i253.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 %191, ptr %id.i.i253.i, align 4
  %193 = ptrtoint ptr %vendor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %vendor.i.i.i, align 4
  %conv.i.i255.i = trunc i32 %194 to i16
  %vendor3.i.i256.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i250.i, i32 0, i32 3, i32 1
  %195 = ptrtoint ptr %vendor3.i.i256.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %conv.i.i255.i, ptr %vendor3.i.i256.i, align 2
  %196 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %product, align 8
  %conv4.i.i258.i = trunc i32 %197 to i16
  %product6.i.i259.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i250.i, i32 0, i32 3, i32 2
  %198 = ptrtoint ptr %product6.i.i259.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %conv4.i.i258.i, ptr %product6.i.i259.i, align 4
  %199 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %version.i, align 4
  %conv7.i.i261.i = trunc i32 %200 to i16
  %version9.i.i262.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i250.i, i32 0, i32 3, i32 3
  %201 = ptrtoint ptr %version9.i.i262.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %conv7.i.i261.i, ptr %version9.i.i262.i, align 2
  %uniq10.i.i264.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i250.i, i32 0, i32 2
  %202 = ptrtoint ptr %uniq10.i.i264.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %uniq.i, ptr %uniq10.i.i264.i, align 8
  %call15.i.i266.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev.i, i32 noundef 3264, ptr noundef nonnull @.str.69, ptr noundef %name22.i.i.i, ptr noundef nonnull @.str.71) #11
  %203 = ptrtoint ptr %call.i.i250.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %call15.i.i266.i, ptr %call.i.i250.i, align 8
  %tobool18.not.i.i267.i = icmp eq ptr %call15.i.i266.i, null
  br i1 %tobool18.not.i.i267.i, label %if.end.i.i268.i.ps_touchpad_create.exit.thread.i_crit_edge, label %ps_allocate_input_dev.exit.i271.i

if.end.i.i268.i.ps_touchpad_create.exit.thread.i_crit_edge: ; preds = %if.end.i.i268.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ps_touchpad_create.exit.thread.i

ps_allocate_input_dev.exit.i271.i:                ; preds = %if.end.i.i268.i
  %driver_data.i.i.i.i269.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i250.i, i32 0, i32 40, i32 8
  %204 = ptrtoint ptr %driver_data.i.i.i.i269.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %hdev, ptr %driver_data.i.i.i.i269.i, align 4
  %cmp.i.i270.i = icmp ugt ptr %call.i.i250.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i270.i, label %ps_allocate_input_dev.exit.i271.i.ps_touchpad_create.exit.i_crit_edge, label %if.end.i276.i

ps_allocate_input_dev.exit.i271.i.ps_touchpad_create.exit.i_crit_edge: ; preds = %ps_allocate_input_dev.exit.i271.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ps_touchpad_create.exit.i

if.end.i276.i:                                    ; preds = %ps_allocate_input_dev.exit.i271.i
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i250.i, i32 noundef 1, i32 noundef 272) #11
  %propbit.i272.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i250.i, i32 0, i32 4
  %205 = ptrtoint ptr %propbit.i272.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %propbit.i272.i, align 4
  %or.i.i273.i = or i32 %206, 4
  store i32 %or.i.i273.i, ptr %propbit.i272.i, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i250.i, i32 noundef 53, i32 noundef 0, i32 noundef 1919, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i250.i, i32 noundef 54, i32 noundef 0, i32 noundef 1079, i32 noundef 0, i32 noundef 0) #11
  %call4.i274.i = tail call i32 @input_mt_init_slots(ptr noundef nonnull %call.i.i250.i, i32 noundef 2, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i274.i)
  %tobool.not.i275.i = icmp eq i32 %call4.i274.i, 0
  br i1 %tobool.not.i275.i, label %if.end7.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end.i276.i
  call void @__sanitizer_cov_trace_pc() #13
  %207 = inttoptr i32 %call4.i274.i to ptr
  br label %ps_touchpad_create.exit.i

if.end7.i.i:                                      ; preds = %if.end.i276.i
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i.i = tail call i32 @input_register_device(ptr noundef nonnull %call.i.i250.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  %208 = inttoptr i32 %call8.i.i to ptr
  %spec.select.i277.i = select i1 %tobool9.not.i.i, ptr %call.i.i250.i, ptr %208
  br label %ps_touchpad_create.exit.i

ps_touchpad_create.exit.thread.i:                 ; preds = %if.end.i.i268.i.ps_touchpad_create.exit.thread.i_crit_edge, %if.end69.i.ps_touchpad_create.exit.thread.i_crit_edge
  %touchpad321.i = getelementptr inbounds %struct.dualsense, ptr %call.i.i, i32 0, i32 3
  %209 = ptrtoint ptr %touchpad321.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr inttoptr (i32 -12 to ptr), ptr %touchpad321.i, align 4
  br label %if.then73.i

ps_touchpad_create.exit.i:                        ; preds = %if.end7.i.i, %if.then5.i.i, %ps_allocate_input_dev.exit.i271.i.ps_touchpad_create.exit.i_crit_edge
  %retval.0.i278.i = phi ptr [ %207, %if.then5.i.i ], [ %call.i.i250.i, %ps_allocate_input_dev.exit.i271.i.ps_touchpad_create.exit.i_crit_edge ], [ %spec.select.i277.i, %if.end7.i.i ]
  %touchpad.i = getelementptr inbounds %struct.dualsense, ptr %call.i.i, i32 0, i32 3
  %210 = ptrtoint ptr %touchpad.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %retval.0.i278.i, ptr %touchpad.i, align 4
  %cmp.i279.i = icmp ugt ptr %retval.0.i278.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i279.i, label %ps_touchpad_create.exit.i.if.then73.i_crit_edge, label %if.end76.i

ps_touchpad_create.exit.i.if.then73.i_crit_edge:  ; preds = %ps_touchpad_create.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then73.i

if.then73.i:                                      ; preds = %ps_touchpad_create.exit.i.if.then73.i_crit_edge, %ps_touchpad_create.exit.thread.i
  %retval.0.i278323.i = phi ptr [ inttoptr (i32 -12 to ptr), %ps_touchpad_create.exit.thread.i ], [ %retval.0.i278.i, %ps_touchpad_create.exit.i.if.then73.i_crit_edge ]
  %211 = ptrtoint ptr %retval.0.i278323.i to i32
  br label %err.i

if.end76.i:                                       ; preds = %ps_touchpad_create.exit.i
  %call77.i = tail call fastcc i32 @ps_device_register_battery(ptr noundef nonnull %call.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool78.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool78.not.i, label %if.end80.i, label %if.end76.i.err.i_crit_edge

if.end76.i.err.i_crit_edge:                       ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err.i

if.end80.i:                                       ; preds = %if.end76.i
  %call81.i = tail call fastcc i32 @dualsense_reset_leds(ptr noundef nonnull %call.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %tobool82.not.i = icmp eq i32 %call81.i, 0
  br i1 %tobool82.not.i, label %if.end84.i, label %if.end80.i.err.i_crit_edge

if.end80.i.err.i_crit_edge:                       ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err.i

if.end84.i:                                       ; preds = %if.end80.i
  %lightbar.i = getelementptr inbounds %struct.dualsense, ptr %call.i.i, i32 0, i32 12
  %call85.i = tail call fastcc i32 @ps_lightbar_register(ptr noundef nonnull %call.i.i, ptr noundef %lightbar.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i)
  %tobool86.not.i = icmp eq i32 %call85.i, 0
  br i1 %tobool86.not.i, label %if.end88.i, label %if.end84.i.err.i_crit_edge

if.end84.i.err.i_crit_edge:                       ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err.i

if.end88.i:                                       ; preds = %if.end84.i
  tail call fastcc void @dualsense_set_lightbar(ptr noundef nonnull %call.i.i, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -128) #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end88.i
  %i.0332.i = phi i32 [ 0, %if.end88.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [5 x %struct.ps_led_info], ptr @dualsense_create.player_leds_info, i32 0, i32 %i.0332.i
  %arrayidx90.i = getelementptr %struct.dualsense, ptr %call.i.i, i32 0, i32 22, i32 %i.0332.i
  %212 = ptrtoint ptr %hdev2.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %hdev2.i, align 4
  %dev.i281.i = getelementptr inbounds %struct.hid_device, ptr %213, i32 0, i32 18
  %214 = ptrtoint ptr %input_dev_name.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %input_dev_name.i, align 4
  %color.i.i = getelementptr [5 x %struct.ps_led_info], ptr @dualsense_create.player_leds_info, i32 0, i32 %i.0332.i, i32 1
  %216 = ptrtoint ptr %color.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %color.i.i, align 4
  %218 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %arrayidx.i, align 4
  %call.i282.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev.i281.i, i32 noundef 3264, ptr noundef nonnull @.str.81, ptr noundef %215, ptr noundef %217, ptr noundef %219) #11
  %220 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %call.i282.i, ptr %arrayidx90.i, align 4
  %tobool.not.i283.i = icmp eq ptr %call.i282.i, null
  br i1 %tobool.not.i283.i, label %for.body.i.err.i_crit_edge, label %if.end.i286.i

for.body.i.err.i_crit_edge:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err.i

if.end.i286.i:                                    ; preds = %for.body.i
  %brightness.i.i = getelementptr %struct.dualsense, ptr %call.i.i, i32 0, i32 22, i32 %i.0332.i, i32 1
  %221 = ptrtoint ptr %brightness.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 0, ptr %brightness.i.i, align 4
  %max_brightness.i.i = getelementptr %struct.dualsense, ptr %call.i.i, i32 0, i32 22, i32 %i.0332.i, i32 2
  %222 = ptrtoint ptr %max_brightness.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 1, ptr %max_brightness.i.i, align 4
  %flags.i.i = getelementptr %struct.dualsense, ptr %call.i.i, i32 0, i32 22, i32 %i.0332.i, i32 3
  %223 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 65536, ptr %flags.i.i, align 4
  %brightness_get.i.i = getelementptr [5 x %struct.ps_led_info], ptr @dualsense_create.player_leds_info, i32 0, i32 %i.0332.i, i32 2
  %224 = ptrtoint ptr %brightness_get.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %brightness_get.i.i, align 4
  %brightness_get3.i.i = getelementptr %struct.dualsense, ptr %call.i.i, i32 0, i32 22, i32 %i.0332.i, i32 7
  %226 = ptrtoint ptr %brightness_get3.i.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %225, ptr %brightness_get3.i.i, align 4
  %brightness_set.i.i = getelementptr [5 x %struct.ps_led_info], ptr @dualsense_create.player_leds_info, i32 0, i32 %i.0332.i, i32 3
  %227 = ptrtoint ptr %brightness_set.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %brightness_set.i.i, align 4
  %brightness_set_blocking.i.i = getelementptr %struct.dualsense, ptr %call.i.i, i32 0, i32 22, i32 %i.0332.i, i32 6
  %229 = ptrtoint ptr %brightness_set_blocking.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %228, ptr %brightness_set_blocking.i.i, align 4
  %230 = ptrtoint ptr %hdev2.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %hdev2.i, align 4
  %dev5.i.i = getelementptr inbounds %struct.hid_device, ptr %231, i32 0, i32 18
  %call.i.i284.i = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev5.i.i, ptr noundef %arrayidx90.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i284.i)
  %tobool7.not.i285.i = icmp eq i32 %call.i.i284.i, 0
  br i1 %tobool7.not.i285.i, label %if.end.i286.i.for.inc.i_crit_edge, label %ps_led_register.exit.i

if.end.i286.i.for.inc.i_crit_edge:                ; preds = %if.end.i286.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

ps_led_register.exit.i:                           ; preds = %if.end.i286.i
  %232 = ptrtoint ptr %hdev2.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %hdev2.i, align 4
  %dev10.i.i = getelementptr inbounds %struct.hid_device, ptr %233, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i.i, ptr noundef nonnull @.str.82, ptr noundef %219, i32 noundef %call.i.i284.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i284.i)
  %cmp92.i = icmp slt i32 %call.i.i284.i, 0
  br i1 %cmp92.i, label %ps_led_register.exit.i.err.i_crit_edge, label %ps_led_register.exit.i.for.inc.i_crit_edge

ps_led_register.exit.i.for.inc.i_crit_edge:       ; preds = %ps_led_register.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

ps_led_register.exit.i.err.i_crit_edge:           ; preds = %ps_led_register.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err.i

for.inc.i:                                        ; preds = %ps_led_register.exit.i.for.inc.i_crit_edge, %if.end.i286.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0332.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 5
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %call.i.i289.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @ps_player_id_allocator, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i289.i)
  %cmp.i290.i = icmp slt i32 %call.i.i289.i, 0
  br i1 %cmp.i290.i, label %do.end101.i, label %if.end103.i

do.end101.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.37, i32 noundef %call.i.i289.i) #14
  br label %err.i

if.end103.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %player_id.i.i = getelementptr inbounds %struct.ps_device, ptr %call.i.i, i32 0, i32 3
  %234 = ptrtoint ptr %player_id.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %call.i.i289.i, ptr %player_id.i.i, align 4
  tail call fastcc void @dualsense_set_player_leds(ptr noundef nonnull %call.i.i) #11
  %235 = ptrtoint ptr %hw_version.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %hw_version.i.i, align 4
  %237 = ptrtoint ptr %fw_version.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %fw_version.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.40, i32 noundef %236, i32 noundef %238) #14
  br label %dualsense_create.exit

err.i:                                            ; preds = %do.end101.i, %ps_led_register.exit.i.err.i_crit_edge, %for.body.i.err.i_crit_edge, %if.end84.i.err.i_crit_edge, %if.end80.i.err.i_crit_edge, %if.end76.i.err.i_crit_edge, %if.then73.i, %if.then66.i, %if.then56.i, %do.end50.i
  %ret.0.i = phi i32 [ %retval.0.i218309.i, %do.end50.i ], [ %141, %if.then56.i ], [ %189, %if.then66.i ], [ %211, %if.then73.i ], [ %call77.i, %if.end76.i.err.i_crit_edge ], [ %call81.i, %if.end80.i.err.i_crit_edge ], [ %call85.i, %if.end84.i.err.i_crit_edge ], [ %call.i.i289.i, %do.end101.i ], [ %call.i.i284.i, %ps_led_register.exit.i.err.i_crit_edge ], [ -12, %for.body.i.err.i_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @ps_devices_lock, i32 noundef 0) #11
  %call.i.i.i293.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %call.i.i) #11
  br i1 %call.i.i.i293.i, label %if.end.i.i.i294.i, label %err.i.ps_devices_list_remove.exit.i_crit_edge

err.i.ps_devices_list_remove.exit.i_crit_edge:    ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ps_devices_list_remove.exit.i

if.end.i.i.i294.i:                                ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %239 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %prev.i.i.i.i, align 4
  %241 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %call.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %242, i32 0, i32 1
  %243 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %240, ptr %prev1.i.i.i.i.i, align 4
  %244 = ptrtoint ptr %240 to i32
  call void @__asan_store4_noabort(i32 %244)
  store volatile ptr %242, ptr %240, align 4
  br label %ps_devices_list_remove.exit.i

ps_devices_list_remove.exit.i:                    ; preds = %if.end.i.i.i294.i, %err.i.ps_devices_list_remove.exit.i_crit_edge
  %245 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr inttoptr (i32 256 to ptr), ptr %call.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %246 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ps_devices_lock) #11
  %247 = inttoptr i32 %ret.0.i to ptr
  br label %dualsense_create.exit

dualsense_create.exit:                            ; preds = %ps_devices_list_remove.exit.i, %if.end103.i, %do.end36.i, %do.end24.i
  %retval.0.i = phi ptr [ %retval.0.i297.i, %do.end24.i ], [ %retval.0.i201302.i, %do.end36.i ], [ %247, %ps_devices_list_remove.exit.i ], [ %call.i.i, %if.end103.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %dualsense_create.exit.do.end24_crit_edge, label %dualsense_create.exit.if.end28_crit_edge

dualsense_create.exit.if.end28_crit_edge:         ; preds = %dualsense_create.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

dualsense_create.exit.do.end24_crit_edge:         ; preds = %dualsense_create.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24

do.end24:                                         ; preds = %dualsense_create.exit.do.end24_crit_edge, %if.then42.i, %if.end.i.do.end24_crit_edge, %if.then18.do.end24_crit_edge
  %retval.0.i61 = phi ptr [ %retval.0.i, %dualsense_create.exit.do.end24_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.do.end24_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then18.do.end24_crit_edge ], [ inttoptr (i32 -17 to ptr), %if.then42.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13) #14
  %248 = ptrtoint ptr %retval.0.i61 to i32
  br label %err_close

if.end28:                                         ; preds = %dualsense_create.exit.if.end28_crit_edge, %if.end17.if.end28_crit_edge
  %dev29 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call30 = tail call i32 @devm_device_add_group(ptr noundef %dev29, ptr noundef nonnull @ps_device_attribute_group) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end28.cleanup_crit_edge, label %do.end35

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.16) #14
  br label %err_close

err_close:                                        ; preds = %do.end35, %do.end24
  %ret.0 = phi i32 [ %248, %do.end24 ], [ %call30, %do.end35 ]
  tail call void @hid_hw_close(ptr noundef %hdev) #11
  br label %err_stop

err_stop:                                         ; preds = %err_close, %do.end15
  %ret.1 = phi i32 [ %call10, %do.end15 ], [ %ret.0, %err_close ]
  tail call void @hid_hw_stop(ptr noundef %hdev) #11
  br label %cleanup

cleanup:                                          ; preds = %err_stop, %if.end28.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call2, %do.end7 ], [ %ret.1, %err_stop ], [ 0, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ps_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @ps_devices_lock, i32 noundef 0) #11
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.ps_devices_list_remove.exit_crit_edge

entry.ps_devices_list_remove.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ps_devices_list_remove.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %ps_devices_list_remove.exit

ps_devices_list_remove.exit:                      ; preds = %if.end.i.i.i, %entry.ps_devices_list_remove.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ps_devices_lock) #11
  %player_id.i = getelementptr inbounds %struct.ps_device, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %player_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %player_id.i, align 4
  tail call void @ida_free(ptr noundef nonnull @ps_player_id_allocator, i32 noundef %11) #11
  %12 = ptrtoint ptr %player_id.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %player_id.i, align 4
  tail call void @hid_hw_close(ptr noundef %hdev) #11
  tail call void @hid_hw_stop(ptr noundef %hdev) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps_raw_event(ptr nocapture noundef readonly %hdev, ptr noundef %report, ptr noundef %data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %parse_report = getelementptr inbounds %struct.ps_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %parse_report to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parse_report, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 %3(ptr noundef nonnull %1, ptr noundef %report, ptr noundef %data, i32 noundef %size) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dualsense_player_led_get_brightness(ptr noundef %led) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.led_classdev, ptr %led, i32 0, i32 11
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr i8, ptr %3, i32 164
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %player_leds_state = getelementptr inbounds %struct.dualsense, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %player_leds_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %player_leds_state, align 4
  %conv = zext i8 %7 to i32
  %player_leds = getelementptr inbounds %struct.dualsense, ptr %5, i32 0, i32 22
  %sub.ptr.lhs.cast = ptrtoint ptr %led to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %player_leds to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 400
  %8 = lshr i32 %conv, %sub.ptr.div
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dualsense_player_led_set_brightness(ptr noundef %led, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.led_classdev, ptr %led, i32 0, i32 11
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr i8, ptr %3, i32 164
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.ps_device, ptr %5, i32 0, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %player_leds = getelementptr inbounds %struct.dualsense, ptr %5, i32 0, i32 22
  %sub.ptr.lhs.cast = ptrtoint ptr %led to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %player_leds to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 400
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp7 = icmp eq i32 %value, 0
  %shl = shl nuw i32 1, %sub.ptr.div
  %player_leds_state = getelementptr inbounds %struct.dualsense, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %player_leds_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %player_leds_state, align 4
  %8 = trunc i32 %shl to i8
  %conv14 = or i8 %7, %8
  %9 = xor i8 %8, -1
  %conv10 = and i8 %7, %9
  %conv14.sink = select i1 %cmp7, i8 %conv10, i8 %conv14
  store i8 %conv14.sink, ptr %player_leds_state, align 4
  %update_player_leds = getelementptr inbounds %struct.dualsense, ptr %5, i32 0, i32 20
  %10 = ptrtoint ptr %update_player_leds to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %update_player_leds, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  %output_worker = getelementptr inbounds %struct.dualsense, ptr %5, i32 0, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %output_worker) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dualsense_parse_report(ptr noundef %ps_dev, ptr nocapture noundef readonly %report, ptr noundef %data, i32 noundef %size) #2 align 64 {
entry:
  %seed.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.ps_device, ptr %ps_dev, i32 0, i32 1
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %bus = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bus, align 8
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %entry.do.end28_crit_edge [
    i16 3, label %land.lhs.true
    i16 5, label %land.lhs.true12
  ]

entry.do.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end28

land.lhs.true:                                    ; preds = %entry
  %id = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 2
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp3 = icmp eq i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %size)
  %cmp6 = icmp eq i32 %size, 64
  %or.cond = and i1 %cmp6, %cmp3
  br i1 %or.cond, label %land.lhs.true.if.end32_crit_edge, label %land.lhs.true.do.end28_crit_edge

land.lhs.true.do.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end28

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

land.lhs.true12:                                  ; preds = %entry
  %id13 = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 2
  %7 = ptrtoint ptr %id13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %8)
  %cmp14 = icmp eq i32 %8, 49
  call void @__sanitizer_cov_trace_const_cmp4(i32 78, i32 %size)
  %cmp17 = icmp eq i32 %size, 78
  %or.cond525 = and i1 %cmp17, %cmp14
  br i1 %or.cond525, label %if.then19, label %land.lhs.true12.do.end28_crit_edge

land.lhs.true12.do.end28_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end28

if.then19:                                        ; preds = %land.lhs.true12
  %arrayidx20 = getelementptr i8, ptr %data, i32 74
  %9 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %arrayidx20, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %seed.addr.i)
  %12 = ptrtoint ptr %seed.addr.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -95, ptr %seed.addr.i, align 1
  %call.i = call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %seed.addr.i, i32 noundef 1) #17
  %call1.i = call i32 @crc32_le(i32 noundef %call.i, ptr noundef %data, i32 noundef 74) #17
  %neg.i = xor i32 %call1.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %neg.i)
  %cmp.i = icmp eq i32 %11, %neg.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %seed.addr.i)
  br i1 %cmp.i, label %if.then19.if.end32_crit_edge, label %cleanup

if.then19.if.end32_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

cleanup:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #14
  br label %cleanup353

do.end28:                                         ; preds = %land.lhs.true12.do.end28_crit_edge, %land.lhs.true.do.end28_crit_edge, %entry.do.end28_crit_edge
  %dev29 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  %id30 = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 2
  %13 = ptrtoint ptr %id30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.46, i32 noundef %14) #14
  br label %cleanup353

if.end32:                                         ; preds = %if.then19.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge
  %.sink = phi i32 [ 1, %land.lhs.true.if.end32_crit_edge ], [ 2, %if.then19.if.end32_crit_edge ]
  %arrayidx24 = getelementptr i8, ptr %data, i32 %.sink
  %gamepad = getelementptr inbounds %struct.dualsense, ptr %ps_dev, i32 0, i32 1
  %15 = ptrtoint ptr %gamepad to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gamepad, align 4
  %17 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx24, align 1
  %conv33 = zext i8 %18 to i32
  call void @input_event(ptr noundef %16, i32 noundef 3, i32 noundef 0, i32 noundef %conv33) #11
  %19 = ptrtoint ptr %gamepad to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gamepad, align 4
  %y = getelementptr inbounds %struct.dualsense_input_report, ptr %arrayidx24, i32 0, i32 1
  %21 = ptrtoint ptr %y to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %y, align 1
  %conv35 = zext i8 %22 to i32
  call void @input_event(ptr noundef %20, i32 noundef 3, i32 noundef 1, i32 noundef %conv35) #11
  %23 = ptrtoint ptr %gamepad to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gamepad, align 4
  %rx = getelementptr inbounds %struct.dualsense_input_report, ptr %arrayidx24, i32 0, i32 2
  %25 = ptrtoint ptr %rx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rx, align 1
  %conv37 = zext i8 %26 to i32
  call void @input_event(ptr noundef %24, i32 noundef 3, i32 noundef 3, i32 noundef %conv37) #11
  %27 = ptrtoint ptr %gamepad to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %gamepad, align 4
  %ry = getelementptr inbounds %struct.dualsense_input_report, ptr %arrayidx24, i32 0, i32 3
  %29 = ptrtoint ptr %ry to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ry, align 1
  %conv39 = zext i8 %30 to i32
  call void @input_event(ptr noundef %28, i32 noundef 3, i32 noundef 4, i32 noundef %conv39) #11
  %31 = ptrtoint ptr %gamepad to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gamepad, align 4
  %z = getelementptr inbounds %struct.dualsense_input_report, ptr %arrayidx24, i32 0, i32 4
  %33 = ptrtoint ptr %z to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %z, align 1
  %conv41 = zext i8 %34 to i32
  call void @input_event(ptr noundef %32, i32 noundef 3, i32 noundef 2, i32 noundef %conv41) #11
  %35 = ptrtoint ptr %gamepad to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gamepad, align 4
  %rz = getelementptr inbounds %struct.dualsense_input_report, ptr %arrayidx24, i32 0, i32 5
  %37 = ptrtoint ptr %rz to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rz, align 1
  %conv43 = zext i8 %38 to i32
  call void @input_event(ptr noundef %36, i32 noundef 3, i32 noundef 5, i32 noundef %conv43) #11
  %buttons = getelementptr inbounds %struct.dualsense_input_report, ptr %arrayidx24, i32 0, i32 7
  %39 = ptrtoint ptr %buttons to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %buttons, align 1
  %41 = and i8 %40, 15
  %42 = call i8 @llvm.umin.i8(i8 %41, i8 8)
  %43 = ptrtoint ptr %gamepad to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %gamepad, align 4
  %idxprom = zext i8 %42 to i32
  %arrayidx53 = getelementptr [9 x %struct.anon.69], ptr @ps_gamepad_hat_mapping, i32 0, i32 %idxprom
  %45 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx53, align 4
  call void @input_event(ptr noundef %44, i32 noundef 3, i32 noundef 16, i32 noundef %46) #11
  %47 = ptrtoint ptr %gamepad to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %gamepad, align 4
  %y58 = getelementptr [9 x %struct.anon.69], ptr @ps_gamepad_hat_mapping, i32 0, i32 %idxprom, i32 1
  %49 = ptrtoint ptr %y58 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %y58, align 4
  call void @input_event(ptr noundef %48, i32 noundef 3, i32 noundef 17, i32 noundef %50) #11
  %51 = ptrtoint ptr %gamepad to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %gamepad, align 4
  %53 = ptrtoint ptr %buttons to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %buttons, align 1
  %55 = lshr i8 %54, 4
  %.lobit554 = and i8 %55, 1
  %56 = zext i8 %.lobit554 to i32
  call void @input_event(ptr noundef %52, i32 noundef 1, i32 noundef 308, i32 noundef %56) #11
  %57 = ptrtoint ptr %gamepad to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %gamepad, align 4
  %59 = ptrtoint ptr %buttons to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %buttons, align 1
  %61 = lshr i8 %60, 5
  %.lobit555 = and i8 %61, 1
  %62 = zext i8 %.lobit555 to i32
  call void @input_event(ptr noundef %58, i32 noundef 1, i32 noundef 304, i32 noundef %62) #11
  %63 = ptrtoint ptr %gamepad to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %gamepad, align 4
  %65 = ptrtoint ptr %buttons to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %buttons, align 1
  %67 = lshr i8 %66, 6
  %.lobit556 = and i8 %67, 1
  %68 = zext i8 %.lobit556 to i32
  call void @input_event(ptr noundef %64, i32 noundef 1, i32 noundef 305, i32 noundef %68) #11
  %69 = ptrtoint ptr %gamepad to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %gamepad, align 4
  %71 = ptrtoint ptr %buttons to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %buttons, align 1
  %.lobit557 = lshr i8 %72, 7
  %73 = zext i8 %.lobit557 to i32
  call void @input_event(ptr noundef %70, i32 noundef 1, i32 noundef 307, i32 noundef %73) #11
  %74 = ptrtoint ptr %gamepad to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %gamepad, align 4
  %arrayidx81 = getelementptr %struct.dualsense_input_report, ptr %arrayidx24, i32 0, i32 7, i32 1
  %76 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx81, align 1
  %78 = and i8 %77, 1
  %79 = zext i8 %78 to i32
  call void @input_event(ptr noundef %75, i32 noundef 1, i32 noundef 310, i32 noundef %79) #11
  %80 = ptrtoint ptr %gamepad to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %gamepad, align 4
  %82 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx81, align 1
  %84 = lshr i8 %83, 1
  %.lobit558 = and i8 %84, 1
  %85 = zext i8 %.lobit558 to i32
  call void @input_event(ptr noundef %81, i32 noundef 1, i32 noundef 311, i32 noundef %85) #11
  %86 = ptrtoint ptr %gamepad to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %gamepad, align 4
  %88 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx81, align 1
  %90 = lshr i8 %89, 2
  %.lobit559 = and i8 %90, 1
  %91 = zext i8 %.lobit559 to i32
  call void @input_event(ptr noundef %87, i32 noundef 1, i32 noundef 312, i32 noundef %91) #11
  %92 = ptrtoint ptr %gamepad to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %gamepad, align 4
  %94 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx81, align 1
  %96 = lshr i8 %95, 3
  %.lobit560 = and i8 %96, 1
  %97 = zext i8 %.lobit560 to i32
  call void @input_event(ptr noundef %93, i32 noundef 1, i32 noundef 313, i32 noundef %97) #11
  %98 = ptrtoint ptr %gamepad to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %gamepad, align 4
  %100 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx81, align 1
  %102 = lshr i8 %101, 4
  %.lobit561 = and i8 %102, 1
  %103 = zext i8 %.lobit561 to i32
  call void @input_event(ptr noundef %99, i32 noundef 1, i32 noundef 314, i32 noundef %103) #11
  %104 = ptrtoint ptr %gamepad to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %gamepad, align 4
  %106 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx81, align 1
  %108 = lshr i8 %107, 5
  %.lobit562 = and i8 %108, 1
  %109 = zext i8 %.lobit562 to i32
  call void @input_event(ptr noundef %105, i32 noundef 1, i32 noundef 315, i32 noundef %109) #11
  %110 = ptrtoint ptr %gamepad to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %gamepad, align 4
  %112 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx81, align 1
  %114 = lshr i8 %113, 6
  %.lobit563 = and i8 %114, 1
  %115 = zext i8 %.lobit563 to i32
  call void @input_event(ptr noundef %111, i32 noundef 1, i32 noundef 317, i32 noundef %115) #11
  %116 = ptrtoint ptr %gamepad to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %gamepad, align 4
  %118 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx81, align 1
  %.lobit564 = lshr i8 %119, 7
  %120 = zext i8 %.lobit564 to i32
  call void @input_event(ptr noundef %117, i32 noundef 1, i32 noundef 318, i32 noundef %120) #11
  %121 = ptrtoint ptr %gamepad to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %gamepad, align 4
  %arrayidx121 = getelementptr %struct.dualsense_input_report, ptr %arrayidx24, i32 0, i32 7, i32 2
  %123 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx121, align 1
  %125 = and i8 %124, 1
  %126 = zext i8 %125 to i32
  call void @input_event(ptr noundef %122, i32 noundef 1, i32 noundef 316, i32 noundef %126) #11
  %127 = ptrtoint ptr %gamepad to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %gamepad, align 4
  call void @input_event(ptr noundef %128, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  %129 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx121, align 1
  %131 = and i8 %130, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool.not = icmp eq i8 %131, 0
  %.lobit = lshr exact i8 %131, 2
  br i1 %tobool.not, label %if.end32.if.end152_crit_edge, label %land.lhs.true132

if.end32.if.end152_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end152

land.lhs.true132:                                 ; preds = %if.end32
  %last_btn_mic_state = getelementptr inbounds %struct.dualsense, ptr %ps_dev, i32 0, i32 19
  %132 = ptrtoint ptr %last_btn_mic_state to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %last_btn_mic_state, align 2, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool133.not = icmp eq i8 %133, 0
  br i1 %tobool133.not, label %do.body136, label %land.lhs.true132.if.end152_crit_edge

land.lhs.true132.if.end152_crit_edge:             ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end152

do.body136:                                       ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #13
  %lock = getelementptr inbounds %struct.ps_device, ptr %ps_dev, i32 0, i32 2
  %call141 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %update_mic_mute = getelementptr inbounds %struct.dualsense, ptr %ps_dev, i32 0, i32 17
  %134 = ptrtoint ptr %update_mic_mute to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 1, ptr %update_mic_mute, align 4
  %mic_muted = getelementptr inbounds %struct.dualsense, ptr %ps_dev, i32 0, i32 18
  %135 = ptrtoint ptr %mic_muted to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %mic_muted, align 1, !range !202
  %137 = xor i8 %136, 1
  store i8 %137, ptr %mic_muted, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call141) #11
  %output_worker = getelementptr inbounds %struct.dualsense, ptr %ps_dev, i32 0, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %138 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %138, ptr noundef %output_worker) #11
  br label %if.end152

if.end152:                                        ; preds = %do.body136, %land.lhs.true132.if.end152_crit_edge, %if.end32.if.end152_crit_edge
  %last_btn_mic_state154 = getelementptr inbounds %struct.dualsense, ptr %ps_dev, i32 0, i32 19
  %139 = ptrtoint ptr %last_btn_mic_state154 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %.lobit, ptr %last_btn_mic_state154, align 2
  %sensors = getelementptr inbounds %struct.dualsense, ptr %ps_dev, i32 0, i32 2
  %arrayidx158 = getelementptr %struct.dualsense_input_report, ptr %arrayidx24, i32 0, i32 9, i32 0
  %140 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_loadN_noabort(i32 %140, i32 2)
  %141 = load i16, ptr %arrayidx158, align 1
  %142 = call i16 @llvm.bswap.i16(i16 %141)
  %conv159 = sext i16 %142 to i32
  %arrayidx160 = getelementptr %struct.dualsense, ptr %ps_dev, i32 0, i32 5, i32 0
  %sens_numer = getelementptr %struct.dualsense, ptr %ps_dev, i32 0, i32 5, i32 0, i32 2
  %143 = ptrtoint ptr %sens_numer to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %sens_numer, align 4
  %sens_denom = getelementptr %struct.dualsense, ptr %ps_dev, i32 0, i32 5, i32 0, i32 3
  %145 = ptrtoint ptr %sens_denom to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %sens_denom, align 4
  %.frozen = freeze i32 %144
  %.frozen570 = freeze i32 %146
  %div = sdiv i32 %.frozen, %.frozen570
  %147 = mul i32 %div, %.frozen570
  %rem169.decomposed = sub i32 %.frozen, %147
  %bias = getelementptr %struct.dualsense, ptr %ps_dev, i32 0, i32 5, i32 0, i32 1
  %148 = ptrtoint ptr %bias to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %bias, align 4
  %conv173 = sext i16 %149 to i32
  %sub174 = sub nsw i32 %conv159, %conv173
  %mul = mul i32 %sub174, %div
  %mul180 = mul i32 %sub174, %rem169.decomposed
  %div184 = sdiv i32 %mul180, %146
  %add = add i32 %mul, %div184
  %150 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %sensors, align 4
  %152 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx160, align 4
  call void @input_event(ptr noundef %151, i32 noundef 3, i32 noundef %153, i32 noundef %add) #11
  %arrayidx158.1 = getelementptr %struct.dualsense_input_report, ptr %arrayidx24, i32 0, i32 9, i32 1
  %154 = ptrtoint ptr %arrayidx158.1 to i32
  call void @__asan_loadN_noabort(i32 %154, i32 2)
  %155 = load i16, ptr %arrayidx158.1, align 1
  %156 = call i16 @llvm.bswap.i16(i16 %155)
  %conv159.1 = sext i16 %156 to i32
  %arrayidx160.1 = getelementptr %struct.dualsense, ptr %ps_dev, i32 0, i32 5, i32 1
  %sens_numer.1 = getelementptr %struct.dualsense, ptr %ps_dev, i32 0, i32 5, i32 1, i32 2
  %157 = ptrtoint ptr %sens_numer.1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %sens_numer.1, align 4
  %sens_denom.1 = getelementptr %struct.dualsense, ptr %ps_dev, i32 0, i32 5, i32 1, i32 3
  %159 = ptrtoint ptr %sens_denom.1 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %sens_denom.1, align 4
  %.frozen571 = freeze i32 %158
  %.frozen572 = freeze i32 %160
  %div.1 = sdiv i32 %.frozen571, %.frozen572
  %161 = mul i32 %div.1, %.frozen572
  %rem169.1.decomposed = sub i32 %.frozen571, %161
  %bias.1 = getelementptr %struct.dualsense, ptr %ps_dev, i32 0, i32 5, i32 1, i32 1
  %162 = ptrtoint ptr %bias.1 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %bias.1, align 4
  %conv173.1 = sext i16 %163 to i32
  %sub174.1 = sub nsw i32 %conv159.1, %conv173.1
  %mul.1 = mul i32 %sub174.1, %div.1
  %mul180.1 = mul i32 %sub174.1, %rem169.1.decomposed
  %div184.1 = sdiv i32 %mul180.1, %160
  %add.1 = add i32 %mul.1, %div184.1
  %164 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %sensors, align 4
  %166 = ptrtoint ptr %arrayidx160.1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx160.1, align 4
  call void @input_event(ptr noundef %165, i32 noundef 3, i32 noundef %167, i32 noundef %add.1) #11
  %arrayidx158.2 = getelementptr %struct.dualsense_input_report, ptr %arrayidx24, i32 0, i32 9, i32 2
  %168 = ptrtoint ptr %arrayidx158.2 to i32
  call void @__asan_loadN_noabort(i32 %168, i32 2)
  %169 = load i16, ptr %arrayidx158.2, align 1
  %170 = call i16 @llvm.bswap.i16(i16 %169)
  %conv159.2 = sext i16 %170 to i32
  %arrayidx160.2 = getelementptr %struct.dualsense, ptr %ps_dev, i32 0, i32 5, i32 2
  %sens_numer.2 = getelementptr %struct.dualsense, ptr %ps_dev, i32 0, i32 5, i32 2, i32 2
  %171 = ptrtoint ptr %sens_numer.2 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %sens_numer.2, align 4
  %sens_denom.2 = getelementptr %struct.dualsense, ptr %ps_dev, i32 0, i32 5, i32 2, i32 3
  %173 = ptrtoint ptr %sens_denom.2 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %sens_denom.2, align 4
  %.frozen573 = freeze i32 %172
  %.frozen574 = freeze i32 %174
  %div.2 = sdiv i32 %.frozen573, %.frozen574
  %175 = mul i32 %div.2, %.frozen574
  %rem169.2.decomposed = sub i32 %.frozen573, %175
  %bias.2 = getelementptr %struct.dualsense, ptr %ps_dev, i32 0, i32 5, i32 2, i32 1
  %176 = ptrtoint ptr %bias.2 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %bias.2, align 4
  %conv173.2 = sext i16 %177 to i32
  %sub174.2 = sub nsw i32 %conv159.2, %conv173.2
  %mul.2 = mul i32 %sub174.2, %div.2
  %mul180.2 = mul i32 %sub174.2, %rem169.2.decomposed
  %div184.2 = sdiv i32 %mul180.2, %174
  %add.2 = add i32 %mul.2, %div184.2
  %178 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %sensors, align 4
  %180 = ptrtoint ptr %arrayidx160.2 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx160.2, align 4
  call void @input_event(ptr noundef %179, i32 noundef 3, i32 noundef %181, i32 noundef %add.2) #11
  %arrayidx192 = getelementptr %struct.dualsense_input_report, ptr %arrayidx24, i32 0, i32 10, i32 0
  %182 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_loadN_noabort(i32 %182, i32 2)
  %183 = load i16, ptr %arrayidx192, align 1
  %184 = call i16 @llvm.bswap.i16(i16 %183)
  %conv193 = sext i16 %184 to i32
  %arrayidx196 = getelementptr %struct.dualsense, ptr %ps_dev, i32 0, i32 4, i32 0
  %sens_numer197 = getelementptr %struct.dualsense, ptr %ps_dev, i32 0, i32 4, i32 0, i32 2
  %185 = ptrtoint ptr %sens_numer197 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %sens_numer197, align 4
  %sens_denom200 = getelementptr %struct.dualsense, ptr %ps_dev, i32 0, i32 4, i32 0, i32 3
  %187 = ptrtoint ptr %sens_denom200 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %sens_denom200, align 4
  %.frozen575 = freeze i32 %186
  %.frozen576 = freeze i32 %188
  %div201 = sdiv i32 %.frozen575, %.frozen576
  %189 = mul i32 %div201, %.frozen576
  %rem209.decomposed = sub i32 %.frozen575, %189
  %bias213 = getelementptr %struct.dualsense, ptr %ps_dev, i32 0, i32 4, i32 0, i32 1
  %190 = ptrtoint ptr %bias213 to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %bias213, align 4
  %conv214 = sext i16 %191 to i32
  %sub215 = sub nsw i32 %conv193, %conv214
  %mul216 = mul i32 %sub215, %div201
  %mul222 = mul i32 %sub215, %rem209.decomposed
  %div226 = sdiv i32 %mul222, %188
  %add227 = add i32 %mul216, %div226
  %192 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %sensors, align 4
  %194 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx196, align 4
  call void @input_event(ptr noundef %193, i32 noundef 3, i32 noundef %195, i32 noundef %add227) #11
  %arrayidx192.1 = getelementptr %struct.dualsense_input_report, ptr %arrayidx24, i32 0, i32 10, i32 1
  %196 = ptrtoint ptr %arrayidx192.1 to i32
  call void @__asan_loadN_noabort(i32 %196, i32 2)
  %197 = load i16, ptr %arrayidx192.1, align 1
  %198 = call i16 @llvm.bswap.i16(i16 %197)
  %conv193.1 = sext i16 %198 to i32
  %arrayidx196.1 = getelementptr %struct.dualsense, ptr %ps_dev, i32 0, i32 4, i32 1
  %sens_numer197.1 = getelementptr %struct.dualsense, ptr %ps_dev, i32 0, i32 4, i32 1, i32 2
  %199 = ptrtoint ptr %sens_numer197.1 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %sens_numer197.1, align 4
  %sens_denom200.1 = getelementptr %struct.dualsense, ptr %ps_dev, i32 0, i32 4, i32 1, i32 3
  %201 = ptrtoint ptr %sens_denom200.1 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %sens_denom200.1, align 4
  %.frozen577 = freeze i32 %200
  %.frozen578 = freeze i32 %202
  %div201.1 = sdiv i32 %.frozen577, %.frozen578
  %203 = mul i32 %div201.1, %.frozen578
  %rem209.1.decomposed = sub i32 %.frozen577, %203
  %bias213.1 = getelementptr %struct.dualsense, ptr %ps_dev, i32 0, i32 4, i32 1, i32 1
  %204 = ptrtoint ptr %bias213.1 to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %bias213.1, align 4
  %conv214.1 = sext i16 %205 to i32
  %sub215.1 = sub nsw i32 %conv193.1, %conv214.1
  %mul216.1 = mul i32 %sub215.1, %div201.1
  %mul222.1 = mul i32 %sub215.1, %rem209.1.decomposed
  %div226.1 = sdiv i32 %mul222.1, %202
  %add227.1 = add i32 %mul216.1, %div226.1
  %206 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %sensors, align 4
  %208 = ptrtoint ptr %arrayidx196.1 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx196.1, align 4
  call void @input_event(ptr noundef %207, i32 noundef 3, i32 noundef %209, i32 noundef %add227.1) #11
  %arrayidx192.2 = getelementptr %struct.dualsense_input_report, ptr %arrayidx24, i32 0, i32 10, i32 2
  %210 = ptrtoint ptr %arrayidx192.2 to i32
  call void @__asan_loadN_noabort(i32 %210, i32 2)
  %211 = load i16, ptr %arrayidx192.2, align 1
  %212 = call i16 @llvm.bswap.i16(i16 %211)
  %conv193.2 = sext i16 %212 to i32
  %arrayidx196.2 = getelementptr %struct.dualsense, ptr %ps_dev, i32 0, i32 4, i32 2
  %sens_numer197.2 = getelementptr %struct.dualsense, ptr %ps_dev, i32 0, i32 4, i32 2, i32 2
  %213 = ptrtoint ptr %sens_numer197.2 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %sens_numer197.2, align 4
  %sens_denom200.2 = getelementptr %struct.dualsense, ptr %ps_dev, i32 0, i32 4, i32 2, i32 3
  %215 = ptrtoint ptr %sens_denom200.2 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %sens_denom200.2, align 4
  %.frozen579 = freeze i32 %214
  %.frozen580 = freeze i32 %216
  %div201.2 = sdiv i32 %.frozen579, %.frozen580
  %217 = mul i32 %div201.2, %.frozen580
  %rem209.2.decomposed = sub i32 %.frozen579, %217
  %bias213.2 = getelementptr %struct.dualsense, ptr %ps_dev, i32 0, i32 4, i32 2, i32 1
  %218 = ptrtoint ptr %bias213.2 to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %bias213.2, align 4
  %conv214.2 = sext i16 %219 to i32
  %sub215.2 = sub nsw i32 %conv193.2, %conv214.2
  %mul216.2 = mul i32 %sub215.2, %div201.2
  %mul222.2 = mul i32 %sub215.2, %rem209.2.decomposed
  %div226.2 = sdiv i32 %mul222.2, %216
  %add227.2 = add i32 %mul216.2, %div226.2
  %220 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %sensors, align 4
  %222 = ptrtoint ptr %arrayidx196.2 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx196.2, align 4
  call void @input_event(ptr noundef %221, i32 noundef 3, i32 noundef %223, i32 noundef %add227.2) #11
  %sensor_timestamp235 = getelementptr inbounds %struct.dualsense_input_report, ptr %arrayidx24, i32 0, i32 11
  %224 = ptrtoint ptr %sensor_timestamp235 to i32
  call void @__asan_loadN_noabort(i32 %224, i32 4)
  %225 = load i32, ptr %sensor_timestamp235, align 1
  %226 = call i32 @llvm.bswap.i32(i32 %225)
  %sensor_timestamp_initialized = getelementptr inbounds %struct.dualsense, ptr %ps_dev, i32 0, i32 6
  %227 = ptrtoint ptr %sensor_timestamp_initialized to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %sensor_timestamp_initialized, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %228)
  %tobool236.not = icmp eq i8 %228, 0
  br i1 %tobool236.not, label %if.then237, label %if.else243

if.then237:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #13
  %add240 = add i32 %226, 1
  %div241 = udiv i32 %add240, 3
  %sensor_timestamp_us = getelementptr inbounds %struct.dualsense, ptr %ps_dev, i32 0, i32 8
  %229 = ptrtoint ptr %sensor_timestamp_us to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %div241, ptr %sensor_timestamp_us, align 4
  %230 = ptrtoint ptr %sensor_timestamp_initialized to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 1, ptr %sensor_timestamp_initialized, align 4
  br label %if.end263

if.else243:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #13
  %prev_sensor_timestamp = getelementptr inbounds %struct.dualsense, ptr %ps_dev, i32 0, i32 7
  %231 = ptrtoint ptr %prev_sensor_timestamp to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %prev_sensor_timestamp, align 4
  %delta.0 = add i32 %226, 1
  %add259 = sub i32 %delta.0, %232
  %div260 = udiv i32 %add259, 3
  %sensor_timestamp_us261 = getelementptr inbounds %struct.dualsense, ptr %ps_dev, i32 0, i32 8
  %233 = ptrtoint ptr %sensor_timestamp_us261 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %sensor_timestamp_us261, align 4
  %add262 = add i32 %div260, %234
  store i32 %add262, ptr %sensor_timestamp_us261, align 4
  br label %if.end263

if.end263:                                        ; preds = %if.else243, %if.then237
  %prev_sensor_timestamp264 = getelementptr inbounds %struct.dualsense, ptr %ps_dev, i32 0, i32 7
  %235 = ptrtoint ptr %prev_sensor_timestamp264 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %226, ptr %prev_sensor_timestamp264, align 4
  %236 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %sensors, align 4
  %sensor_timestamp_us266 = getelementptr inbounds %struct.dualsense, ptr %ps_dev, i32 0, i32 8
  %238 = ptrtoint ptr %sensor_timestamp_us266 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %sensor_timestamp_us266, align 4
  call void @input_event(ptr noundef %237, i32 noundef 4, i32 noundef 5, i32 noundef %239) #11
  %240 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %sensors, align 4
  call void @input_event(ptr noundef %241, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  %touchpad = getelementptr inbounds %struct.dualsense, ptr %ps_dev, i32 0, i32 3
  %arrayidx272 = getelementptr %struct.dualsense_input_report, ptr %arrayidx24, i32 0, i32 13, i32 0
  %242 = ptrtoint ptr %arrayidx272 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %arrayidx272, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %243)
  %tobool276 = icmp sgt i8 %243, -1
  %244 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %touchpad, align 4
  call void @input_event(ptr noundef %245, i32 noundef 3, i32 noundef 47, i32 noundef 0) #11
  %246 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %touchpad, align 4
  %call280 = call zeroext i1 @input_mt_report_slot_state(ptr noundef %247, i32 noundef 0, i1 noundef zeroext %tobool276) #11
  br i1 %tobool276, label %if.then282, label %if.end263.if.end294_crit_edge

if.end263.if.end294_crit_edge:                    ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end294

if.then282:                                       ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #13
  %x_hi = getelementptr %struct.dualsense_input_report, ptr %arrayidx24, i32 0, i32 13, i32 0, i32 2
  %248 = ptrtoint ptr %x_hi to i32
  call void @__asan_load1_noabort(i32 %248)
  %bf.load = load i8, ptr %x_hi, align 1
  %bf.lshr = lshr i8 %bf.load, 4
  %conv284 = zext i8 %bf.lshr to i32
  %shl = shl nuw nsw i32 %conv284, 8
  %x_lo = getelementptr %struct.dualsense_input_report, ptr %arrayidx24, i32 0, i32 13, i32 0, i32 1
  %249 = ptrtoint ptr %x_lo to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %x_lo, align 1
  %conv285 = zext i8 %250 to i32
  %or = or i32 %shl, %conv285
  %y_hi = getelementptr %struct.dualsense_input_report, ptr %arrayidx24, i32 0, i32 13, i32 0, i32 3
  %251 = ptrtoint ptr %y_hi to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %y_hi, align 1
  %conv287 = zext i8 %252 to i32
  %shl288 = shl nuw nsw i32 %conv287, 4
  %bf.clear = and i8 %bf.load, 15
  %conv290 = zext i8 %bf.clear to i32
  %or291 = or i32 %shl288, %conv290
  %253 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %touchpad, align 4
  call void @input_event(ptr noundef %254, i32 noundef 3, i32 noundef 53, i32 noundef %or) #11
  %255 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %touchpad, align 4
  call void @input_event(ptr noundef %256, i32 noundef 3, i32 noundef 54, i32 noundef %or291) #11
  br label %if.end294

if.end294:                                        ; preds = %if.then282, %if.end263.if.end294_crit_edge
  %arrayidx272.1 = getelementptr %struct.dualsense_input_report, ptr %arrayidx24, i32 0, i32 13, i32 1
  %257 = ptrtoint ptr %arrayidx272.1 to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %arrayidx272.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %258)
  %tobool276.1 = icmp sgt i8 %258, -1
  %259 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %touchpad, align 4
  call void @input_event(ptr noundef %260, i32 noundef 3, i32 noundef 47, i32 noundef 1) #11
  %261 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %touchpad, align 4
  %call280.1 = call zeroext i1 @input_mt_report_slot_state(ptr noundef %262, i32 noundef 0, i1 noundef zeroext %tobool276.1) #11
  br i1 %tobool276.1, label %if.then282.1, label %if.end294.if.end294.1_crit_edge

if.end294.if.end294.1_crit_edge:                  ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end294.1

if.then282.1:                                     ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #13
  %x_hi.1 = getelementptr %struct.dualsense_input_report, ptr %arrayidx24, i32 0, i32 13, i32 1, i32 2
  %263 = ptrtoint ptr %x_hi.1 to i32
  call void @__asan_load1_noabort(i32 %263)
  %bf.load.1 = load i8, ptr %x_hi.1, align 1
  %bf.lshr.1 = lshr i8 %bf.load.1, 4
  %conv284.1 = zext i8 %bf.lshr.1 to i32
  %shl.1 = shl nuw nsw i32 %conv284.1, 8
  %x_lo.1 = getelementptr %struct.dualsense_input_report, ptr %arrayidx24, i32 0, i32 13, i32 1, i32 1
  %264 = ptrtoint ptr %x_lo.1 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %x_lo.1, align 1
  %conv285.1 = zext i8 %265 to i32
  %or.1 = or i32 %shl.1, %conv285.1
  %y_hi.1 = getelementptr %struct.dualsense_input_report, ptr %arrayidx24, i32 0, i32 13, i32 1, i32 3
  %266 = ptrtoint ptr %y_hi.1 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %y_hi.1, align 1
  %conv287.1 = zext i8 %267 to i32
  %shl288.1 = shl nuw nsw i32 %conv287.1, 4
  %bf.clear.1 = and i8 %bf.load.1, 15
  %conv290.1 = zext i8 %bf.clear.1 to i32
  %or291.1 = or i32 %shl288.1, %conv290.1
  %268 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %touchpad, align 4
  call void @input_event(ptr noundef %269, i32 noundef 3, i32 noundef 53, i32 noundef %or.1) #11
  %270 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %touchpad, align 4
  call void @input_event(ptr noundef %271, i32 noundef 3, i32 noundef 54, i32 noundef %or291.1) #11
  br label %if.end294.1

if.end294.1:                                      ; preds = %if.then282.1, %if.end294.if.end294.1_crit_edge
  %272 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %touchpad, align 4
  call void @input_mt_sync_frame(ptr noundef %273) #11
  %274 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %touchpad, align 4
  %276 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %arrayidx121, align 1
  %278 = lshr i8 %277, 1
  %.lobit565 = and i8 %278, 1
  %279 = zext i8 %.lobit565 to i32
  call void @input_event(ptr noundef %275, i32 noundef 1, i32 noundef 272, i32 noundef %279) #11
  %280 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %touchpad, align 4
  call void @input_event(ptr noundef %281, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  %status = getelementptr inbounds %struct.dualsense_input_report, ptr %arrayidx24, i32 0, i32 15
  %282 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %status, align 1
  %and306 = and i8 %283, 15
  %284 = lshr i8 %283, 4
  %conv312 = zext i8 %284 to i32
  %285 = zext i32 %conv312 to i64
  call void @__sanitizer_cov_trace_switch(i64 %285, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %conv312, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb321
    i32 2, label %if.end294.1.do.body337_crit_edge
    i32 10, label %if.end294.1.sw.bb334_crit_edge
    i32 11, label %if.end294.1.sw.bb334_crit_edge581
  ]

if.end294.1.sw.bb334_crit_edge581:                ; preds = %if.end294.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb334

if.end294.1.sw.bb334_crit_edge:                   ; preds = %if.end294.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb334

if.end294.1.do.body337_crit_edge:                 ; preds = %if.end294.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body337

sw.bb:                                            ; preds = %if.end294.1
  call void @__sanitizer_cov_trace_pc() #13
  %narrow523 = mul nuw i8 %and306, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %narrow523)
  %cmp317 = icmp ult i8 %narrow523, 95
  %add315 = add nuw i8 %narrow523, 5
  %cond319 = select i1 %cmp317, i8 %add315, i8 100
  br label %do.body337

sw.bb321:                                         ; preds = %if.end294.1
  call void @__sanitizer_cov_trace_pc() #13
  %narrow = mul nuw i8 %and306, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %narrow)
  %cmp326 = icmp ult i8 %narrow, 95
  %add324 = add nuw i8 %narrow, 5
  %cond331 = select i1 %cmp326, i8 %add324, i8 100
  br label %do.body337

sw.bb334:                                         ; preds = %if.end294.1.sw.bb334_crit_edge, %if.end294.1.sw.bb334_crit_edge581
  br label %do.body337

sw.default:                                       ; preds = %if.end294.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body337

do.body337:                                       ; preds = %sw.default, %sw.bb334, %sw.bb321, %sw.bb, %if.end294.1.do.body337_crit_edge
  %battery_status.0 = phi i32 [ 0, %sw.default ], [ 3, %sw.bb334 ], [ 1, %sw.bb321 ], [ 2, %sw.bb ], [ 4, %if.end294.1.do.body337_crit_edge ]
  %battery_capacity.0 = phi i8 [ 0, %sw.default ], [ 0, %sw.bb334 ], [ %cond331, %sw.bb321 ], [ %cond319, %sw.bb ], [ 100, %if.end294.1.do.body337_crit_edge ]
  %lock343 = getelementptr inbounds %struct.ps_device, ptr %ps_dev, i32 0, i32 2
  %call345 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock343) #11
  %battery_capacity350 = getelementptr inbounds %struct.ps_device, ptr %ps_dev, i32 0, i32 6
  %286 = ptrtoint ptr %battery_capacity350 to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 %battery_capacity.0, ptr %battery_capacity350, align 4
  %battery_status351 = getelementptr inbounds %struct.ps_device, ptr %ps_dev, i32 0, i32 7
  %287 = ptrtoint ptr %battery_status351 to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %battery_status.0, ptr %battery_status351, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock343, i32 noundef %call345) #11
  br label %cleanup353

cleanup353:                                       ; preds = %do.body337, %do.end28, %cleanup
  %retval.1 = phi i32 [ 0, %do.body337 ], [ -84, %cleanup ], [ -1, %do.end28 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dualsense_output_worker(ptr noundef %work) #2 align 64 {
entry:
  %seed.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %output_report_dmabuf = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %output_report_dmabuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %output_report_dmabuf, align 4
  %hdev1.i = getelementptr i8, ptr %work, i32 -2684
  %2 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev1.i, align 4
  %bus.i = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bus.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %5)
  %cmp.i = icmp eq i16 %5, 5
  %6 = getelementptr inbounds i8, ptr %1, i32 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = call ptr @memset(ptr %6, i32 0, i32 77)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 49, ptr %1, align 1
  %tag.i = getelementptr inbounds %struct.dualsense_output_report_bt, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %tag.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 16, ptr %tag.i, align 1
  %output_seq.i = getelementptr i8, ptr %work, i32 48
  %10 = ptrtoint ptr %output_seq.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %output_seq.i, align 4
  %shl.i = shl i8 %11, 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %shl.i, ptr %6, align 1
  %13 = load i8, ptr %output_seq.i, align 4
  %inc.i = add i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %inc.i)
  %cmp7.i = icmp eq i8 %inc.i, 16
  %spec.select.i = select i1 %cmp7.i, i8 0, i8 %inc.i
  %14 = ptrtoint ptr %output_seq.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %spec.select.i, ptr %output_seq.i, align 4
  %common.i = getelementptr inbounds %struct.dualsense_output_report_bt, ptr %1, i32 0, i32 3
  br label %dualsense_init_output_report.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %15 = call ptr @memset(ptr %6, i32 0, i32 62)
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %1, align 1
  br label %dualsense_init_output_report.exit

dualsense_init_output_report.exit:                ; preds = %if.else.i, %if.then.i
  %.sink45.i = phi i32 [ 78, %if.then.i ], [ 63, %if.else.i ]
  %.sink.i = phi ptr [ %1, %if.then.i ], [ null, %if.else.i ]
  %common19.sink.i = phi ptr [ %common.i, %if.then.i ], [ %6, %if.else.i ]
  %lock = getelementptr i8, ptr %work, i32 -2680
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %update_rumble = getelementptr i8, ptr %work, i32 -2424
  %17 = ptrtoint ptr %update_rumble to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %update_rumble, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %dualsense_init_output_report.exit.if.end_crit_edge, label %if.then

dualsense_init_output_report.exit.if.end_crit_edge: ; preds = %dualsense_init_output_report.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %dualsense_init_output_report.exit
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %common19.sink.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %common19.sink.i, align 1
  %21 = or i8 %20, 3
  store i8 %21, ptr %common19.sink.i, align 1
  %motor_left = getelementptr i8, ptr %work, i32 -2423
  %22 = ptrtoint ptr %motor_left to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %motor_left, align 1
  %motor_left13 = getelementptr inbounds %struct.dualsense_output_report_common, ptr %common19.sink.i, i32 0, i32 3
  %24 = ptrtoint ptr %motor_left13 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %motor_left13, align 1
  %motor_right = getelementptr i8, ptr %work, i32 -2422
  %25 = ptrtoint ptr %motor_right to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %motor_right, align 2
  %motor_right14 = getelementptr inbounds %struct.dualsense_output_report_common, ptr %common19.sink.i, i32 0, i32 2
  %27 = ptrtoint ptr %motor_right14 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %motor_right14, align 1
  %28 = ptrtoint ptr %update_rumble to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %update_rumble, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %dualsense_init_output_report.exit.if.end_crit_edge
  %update_lightbar = getelementptr i8, ptr %work, i32 -2012
  %29 = ptrtoint ptr %update_lightbar to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %update_lightbar, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool16.not = icmp eq i8 %30, 0
  br i1 %tobool16.not, label %if.end.if.end25_crit_edge, label %if.then17

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %valid_flag1 = getelementptr inbounds %struct.dualsense_output_report_common, ptr %common19.sink.i, i32 0, i32 1
  %31 = ptrtoint ptr %valid_flag1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %valid_flag1, align 1
  %33 = or i8 %32, 4
  store i8 %33, ptr %valid_flag1, align 1
  %lightbar_red = getelementptr i8, ptr %work, i32 -2011
  %34 = ptrtoint ptr %lightbar_red to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %lightbar_red, align 1
  %lightbar_red21 = getelementptr inbounds %struct.dualsense_output_report_common, ptr %common19.sink.i, i32 0, i32 13
  %36 = ptrtoint ptr %lightbar_red21 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %lightbar_red21, align 1
  %lightbar_green = getelementptr i8, ptr %work, i32 -2010
  %37 = ptrtoint ptr %lightbar_green to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %lightbar_green, align 2
  %lightbar_green22 = getelementptr inbounds %struct.dualsense_output_report_common, ptr %common19.sink.i, i32 0, i32 14
  %39 = ptrtoint ptr %lightbar_green22 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %lightbar_green22, align 1
  %lightbar_blue = getelementptr i8, ptr %work, i32 -2009
  %40 = ptrtoint ptr %lightbar_blue to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %lightbar_blue, align 1
  %lightbar_blue23 = getelementptr inbounds %struct.dualsense_output_report_common, ptr %common19.sink.i, i32 0, i32 15
  %42 = ptrtoint ptr %lightbar_blue23 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %lightbar_blue23, align 1
  %43 = ptrtoint ptr %update_lightbar to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %update_lightbar, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then17, %if.end.if.end25_crit_edge
  %update_player_leds = getelementptr i8, ptr %work, i32 -2005
  %44 = ptrtoint ptr %update_player_leds to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %update_player_leds, align 1, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool26.not = icmp eq i8 %45, 0
  br i1 %tobool26.not, label %if.end25.if.end33_crit_edge, label %if.then27

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %valid_flag128 = getelementptr inbounds %struct.dualsense_output_report_common, ptr %common19.sink.i, i32 0, i32 1
  %46 = ptrtoint ptr %valid_flag128 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %valid_flag128, align 1
  %48 = or i8 %47, 16
  store i8 %48, ptr %valid_flag128, align 1
  %player_leds_state = getelementptr i8, ptr %work, i32 -2004
  %49 = ptrtoint ptr %player_leds_state to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %player_leds_state, align 4
  %player_leds = getelementptr inbounds %struct.dualsense_output_report_common, ptr %common19.sink.i, i32 0, i32 12
  %51 = ptrtoint ptr %player_leds to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %player_leds, align 1
  %52 = ptrtoint ptr %update_player_leds to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %update_player_leds, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %if.end25.if.end33_crit_edge
  %update_mic_mute = getelementptr i8, ptr %work, i32 -2008
  %53 = ptrtoint ptr %update_mic_mute to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %update_mic_mute, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool34.not = icmp eq i8 %54, 0
  br i1 %tobool34.not, label %if.end33.if.end61_crit_edge, label %if.then35

if.end33.if.end61_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %valid_flag136 = getelementptr inbounds %struct.dualsense_output_report_common, ptr %common19.sink.i, i32 0, i32 1
  %55 = ptrtoint ptr %valid_flag136 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %valid_flag136, align 1
  %57 = or i8 %56, 1
  store i8 %57, ptr %valid_flag136, align 1
  %mic_muted = getelementptr i8, ptr %work, i32 -2007
  %58 = ptrtoint ptr %mic_muted to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %mic_muted, align 1, !range !202
  %mute_button_led = getelementptr inbounds %struct.dualsense_output_report_common, ptr %common19.sink.i, i32 0, i32 5
  %60 = ptrtoint ptr %mute_button_led to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %mute_button_led, align 1
  %61 = load i8, ptr %mic_muted, align 1, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool43.not = icmp eq i8 %61, 0
  %62 = or i8 %56, 3
  %63 = ptrtoint ptr %valid_flag136 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %valid_flag136, align 1
  %power_save_control56 = getelementptr inbounds %struct.dualsense_output_report_common, ptr %common19.sink.i, i32 0, i32 6
  %64 = ptrtoint ptr %power_save_control56 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %power_save_control56, align 1
  %66 = and i8 %65, -17
  %masksel = select i1 %tobool43.not, i8 0, i8 16
  %.sink = or i8 %66, %masksel
  store i8 %.sink, ptr %power_save_control56, align 1
  %67 = ptrtoint ptr %update_mic_mute to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %update_mic_mute, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then35, %if.end33.if.end61_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  %68 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hdev1.i, align 4
  %tobool.not.i = icmp eq ptr %.sink.i, null
  br i1 %tobool.not.i, label %if.end61.dualsense_send_output_report.exit_crit_edge, label %if.then.i100

if.end61.dualsense_send_output_report.exit_crit_edge: ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %dualsense_send_output_report.exit

if.then.i100:                                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %seed.i) #11
  %70 = ptrtoint ptr %seed.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -94, ptr %seed.i, align 1
  %call.i = call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %seed.i, i32 noundef 1) #17
  %sub.i = add nsw i32 %.sink45.i, -4
  %call2.i = call i32 @crc32_le(i32 noundef %call.i, ptr noundef %1, i32 noundef %sub.i) #17
  %neg.i = xor i32 %call2.i, -1
  %71 = call i32 @llvm.bswap.i32(i32 %neg.i) #11
  %crc32.i = getelementptr inbounds %struct.dualsense_output_report_bt, ptr %.sink.i, i32 0, i32 5
  %72 = ptrtoint ptr %crc32.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 %71, ptr %crc32.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %seed.i) #11
  br label %dualsense_send_output_report.exit

dualsense_send_output_report.exit:                ; preds = %if.then.i100, %if.end61.dualsense_send_output_report.exit_crit_edge
  %call7.i = call i32 @hid_hw_output_report(ptr noundef %69, ptr noundef %1, i32 noundef %.sink45.i) #11
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dualsense_play_effect(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %effect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %effect to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %effect, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %1)
  %cmp.not = icmp eq i16 %1, 80
  br i1 %cmp.not, label %do.body3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i28 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18, i32 8
  %4 = ptrtoint ptr %driver_data.i.i28 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i28, align 4
  %lock = getelementptr inbounds %struct.ps_device, ptr %5, i32 0, i32 2
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %update_rumble = getelementptr inbounds %struct.dualsense, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %update_rumble to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %update_rumble, align 4
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %7 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %u, align 4
  %9 = lshr i16 %8, 8
  %conv11 = trunc i16 %9 to i8
  %motor_left = getelementptr inbounds %struct.dualsense, ptr %5, i32 0, i32 10
  %10 = ptrtoint ptr %motor_left to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv11, ptr %motor_left, align 1
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %weak_magnitude, align 2
  %13 = lshr i16 %12, 8
  %conv15 = trunc i16 %13 to i8
  %motor_right = getelementptr inbounds %struct.dualsense, ptr %5, i32 0, i32 11
  %14 = ptrtoint ptr %motor_right to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv15, ptr %motor_right, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #11
  %output_worker = getelementptr inbounds %struct.dualsense, ptr %5, i32 0, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %15 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %output_worker) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body3, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ps_device_register_battery(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %battery_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %battery_cfg) #11
  %0 = getelementptr inbounds %struct.power_supply_config, ptr %battery_cfg, i32 0, i32 2
  %1 = call ptr @memset(ptr %battery_cfg, i32 0, i32 24)
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %0, align 4
  %battery_desc = getelementptr inbounds %struct.ps_device, ptr %dev, i32 0, i32 4
  %type = getelementptr inbounds %struct.ps_device, ptr %dev, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %type, align 4
  %properties = getelementptr inbounds %struct.ps_device, ptr %dev, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %properties to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ps_power_supply_props, ptr %properties, align 4
  %num_properties = getelementptr inbounds %struct.ps_device, ptr %dev, i32 0, i32 4, i32 5
  %5 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %num_properties, align 4
  %get_property = getelementptr inbounds %struct.ps_device, ptr %dev, i32 0, i32 4, i32 6
  %6 = ptrtoint ptr %get_property to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ps_battery_get_property, ptr %get_property, align 4
  %hdev = getelementptr inbounds %struct.ps_device, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdev, align 4
  %dev4 = getelementptr inbounds %struct.hid_device, ptr %8, i32 0, i32 18
  %mac_address = getelementptr inbounds %struct.ps_device, ptr %dev, i32 0, i32 9
  %call = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev4, i32 noundef 3264, ptr noundef nonnull @.str.72, ptr noundef %mac_address) #11
  %9 = ptrtoint ptr %battery_desc to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %battery_desc, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdev, align 4
  %dev9 = getelementptr inbounds %struct.hid_device, ptr %11, i32 0, i32 18
  %call11 = call ptr @devm_power_supply_register(ptr noundef %dev9, ptr noundef %battery_desc, ptr noundef nonnull %battery_cfg) #11
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %call11 to i32
  %13 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hdev, align 4
  %dev16 = getelementptr inbounds %struct.hid_device, ptr %14, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.73, i32 noundef %12) #14
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %battery18 = getelementptr inbounds %struct.ps_device, ptr %dev, i32 0, i32 5
  %15 = ptrtoint ptr %battery18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call11, ptr %battery18, align 4
  %16 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdev, align 4
  %dev21 = getelementptr inbounds %struct.hid_device, ptr %17, i32 0, i32 18
  %call22 = call i32 @power_supply_powers(ptr noundef %call11, ptr noundef %dev21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end17.cleanup_crit_edge, label %do.end27

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end27:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hdev, align 4
  %dev29 = getelementptr inbounds %struct.hid_device, ptr %19, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.76, i32 noundef %call22) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %if.end17.cleanup_crit_edge, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then13 ], [ %call22, %do.end27 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %battery_cfg) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dualsense_reset_leds(ptr nocapture noundef %ds) unnamed_addr #2 align 64 {
entry:
  %seed.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 78) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdev1.i = getelementptr inbounds %struct.ps_device, ptr %ds, i32 0, i32 1
  %1 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdev1.i, align 4
  %bus.i = getelementptr inbounds %struct.hid_device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %bus.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %bus.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %4)
  %cmp.i = icmp eq i16 %4, 5
  %5 = getelementptr inbounds i8, ptr %call7.i.i, i32 1
  br i1 %cmp.i, label %if.then.i7, label %dualsense_init_output_report.exit.thread

dualsense_init_output_report.exit.thread:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = call ptr @memset(ptr %5, i32 0, i32 62)
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %call7.i.i, align 8
  %valid_flag214 = getelementptr inbounds %struct.dualsense_output_report_usb, ptr %call7.i.i, i32 0, i32 1, i32 8
  %8 = ptrtoint ptr %valid_flag214 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %valid_flag214, align 1
  %lightbar_setup15 = getelementptr inbounds %struct.dualsense_output_report_usb, ptr %call7.i.i, i32 0, i32 1, i32 10
  %9 = ptrtoint ptr %lightbar_setup15 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %lightbar_setup15, align 2
  br label %dualsense_send_output_report.exit

if.then.i7:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = getelementptr inbounds i8, ptr %call7.i.i, i32 3
  %11 = call ptr @memset(ptr %10, i32 0, i32 75)
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 49, ptr %call7.i.i, align 8
  %tag.i = getelementptr inbounds %struct.dualsense_output_report_bt, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %tag.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 16, ptr %tag.i, align 2
  %output_seq.i = getelementptr inbounds %struct.dualsense, ptr %ds, i32 0, i32 25
  %14 = ptrtoint ptr %output_seq.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %output_seq.i, align 4
  %shl.i = shl i8 %15, 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %shl.i, ptr %5, align 1
  %inc.i = add i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %inc.i)
  %cmp7.i = icmp eq i8 %inc.i, 16
  %spec.select.i = select i1 %cmp7.i, i8 0, i8 %inc.i
  %17 = ptrtoint ptr %output_seq.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %spec.select.i, ptr %output_seq.i, align 4
  %valid_flag2 = getelementptr inbounds %struct.dualsense_output_report_bt, ptr %call7.i.i, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %valid_flag2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %valid_flag2, align 1
  %lightbar_setup = getelementptr inbounds %struct.dualsense_output_report_bt, ptr %call7.i.i, i32 0, i32 3, i32 10
  %19 = ptrtoint ptr %lightbar_setup to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %lightbar_setup, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %seed.i) #11
  %20 = ptrtoint ptr %seed.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -94, ptr %seed.i, align 1
  %call.i = call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %seed.i, i32 noundef 1) #17
  %call2.i = call i32 @crc32_le(i32 noundef %call.i, ptr noundef nonnull %call7.i.i, i32 noundef 74) #17
  %neg.i = xor i32 %call2.i, -1
  %21 = call i32 @llvm.bswap.i32(i32 %neg.i) #11
  %crc32.i = getelementptr inbounds %struct.dualsense_output_report_bt, ptr %call7.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %crc32.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %crc32.i, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %seed.i) #11
  br label %dualsense_send_output_report.exit

dualsense_send_output_report.exit:                ; preds = %if.then.i7, %dualsense_init_output_report.exit.thread
  %.sink45.i17 = phi i32 [ 63, %dualsense_init_output_report.exit.thread ], [ 78, %if.then.i7 ]
  %call7.i = call i32 @hid_hw_output_report(ptr noundef %2, ptr noundef nonnull %call7.i.i, i32 noundef %.sink45.i17) #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %dualsense_send_output_report.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dualsense_send_output_report.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ps_lightbar_register(ptr nocapture noundef readonly %ps_dev, ptr noundef %lightbar_mc_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.ps_device, ptr %ps_dev, i32 0, i32 1
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  %call5.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 48, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call5.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call5.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %call5.i, align 4
  %arrayidx2 = getelementptr %struct.mc_subled, ptr %call5.i, i32 1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.mc_subled, ptr %call5.i, i32 2
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %arrayidx4, align 4
  %subled_info = getelementptr inbounds %struct.led_classdev_mc, ptr %lightbar_mc_dev, i32 0, i32 2
  %5 = ptrtoint ptr %subled_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5.i, ptr %subled_info, align 4
  %num_colors = getelementptr inbounds %struct.led_classdev_mc, ptr %lightbar_mc_dev, i32 0, i32 1
  %6 = ptrtoint ptr %num_colors to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %num_colors, align 4
  %input_dev_name = getelementptr inbounds %struct.ps_device, ptr %ps_dev, i32 0, i32 8
  %7 = ptrtoint ptr %input_dev_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %input_dev_name, align 4
  %call8 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.78, ptr noundef %8) #11
  %9 = ptrtoint ptr %lightbar_mc_dev to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8, ptr %lightbar_mc_dev, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %lightbar_mc_dev, i32 0, i32 1
  %10 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 255, ptr %brightness, align 4
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %lightbar_mc_dev, i32 0, i32 2
  %11 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 255, ptr %max_brightness, align 4
  %brightness_set_blocking = getelementptr inbounds %struct.led_classdev, ptr %lightbar_mc_dev, i32 0, i32 6
  %12 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @dualsense_lightbar_set_brightness, ptr %brightness_set_blocking, align 4
  %call.i = tail call i32 @devm_led_classdev_multicolor_register_ext(ptr noundef %dev, ptr noundef %lightbar_mc_dev, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.79) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dualsense_lightbar_set_brightness(ptr noundef %cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @led_mc_calc_color_components(ptr noundef %cdev, i32 noundef %brightness) #11
  %subled_info = getelementptr inbounds %struct.led_classdev_mc, ptr %cdev, i32 0, i32 2
  %0 = ptrtoint ptr %subled_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subled_info, align 4
  %brightness2 = getelementptr inbounds %struct.mc_subled, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %brightness2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %brightness2, align 4
  %conv = trunc i32 %3 to i8
  %brightness5 = getelementptr %struct.mc_subled, ptr %1, i32 1, i32 1
  %4 = ptrtoint ptr %brightness5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %brightness5, align 4
  %conv6 = trunc i32 %5 to i8
  %brightness9 = getelementptr %struct.mc_subled, ptr %1, i32 2, i32 1
  %6 = ptrtoint ptr %brightness9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %brightness9, align 4
  %conv10 = trunc i32 %7 to i8
  %lock.i = getelementptr i8, ptr %cdev, i32 -260
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %update_lightbar.i = getelementptr i8, ptr %cdev, i32 408
  %8 = ptrtoint ptr %update_lightbar.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %update_lightbar.i, align 4
  %lightbar_red.i = getelementptr i8, ptr %cdev, i32 409
  %9 = ptrtoint ptr %lightbar_red.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %lightbar_red.i, align 1
  %lightbar_green.i = getelementptr i8, ptr %cdev, i32 410
  %10 = ptrtoint ptr %lightbar_green.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6, ptr %lightbar_green.i, align 2
  %lightbar_blue.i = getelementptr i8, ptr %cdev, i32 411
  %11 = ptrtoint ptr %lightbar_blue.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv10, ptr %lightbar_blue.i, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #11
  %output_worker.i = getelementptr i8, ptr %cdev, i32 2420
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %output_worker.i) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dualsense_set_lightbar(ptr noundef %ds, i8 noundef zeroext %red, i8 noundef zeroext %green, i8 noundef zeroext %blue) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ps_device, ptr %ds, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %update_lightbar = getelementptr inbounds %struct.dualsense, ptr %ds, i32 0, i32 13
  %0 = ptrtoint ptr %update_lightbar to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %update_lightbar, align 4
  %lightbar_red = getelementptr inbounds %struct.dualsense, ptr %ds, i32 0, i32 14
  %1 = ptrtoint ptr %lightbar_red to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %red, ptr %lightbar_red, align 1
  %lightbar_green = getelementptr inbounds %struct.dualsense, ptr %ds, i32 0, i32 15
  %2 = ptrtoint ptr %lightbar_green to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %green, ptr %lightbar_green, align 2
  %lightbar_blue = getelementptr inbounds %struct.dualsense, ptr %ds, i32 0, i32 16
  %3 = ptrtoint ptr %lightbar_blue to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %blue, ptr %lightbar_blue, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #11
  %output_worker = getelementptr inbounds %struct.dualsense, ptr %ds, i32 0, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %output_worker) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dualsense_set_player_leds(ptr noundef %ds) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %player_id1 = getelementptr inbounds %struct.ps_device, ptr %ds, i32 0, i32 3
  %0 = ptrtoint ptr %player_id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %player_id1, align 4
  %rem = urem i32 %1, 5
  %update_player_leds = getelementptr inbounds %struct.dualsense, ptr %ds, i32 0, i32 20
  %2 = ptrtoint ptr %update_player_leds to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %update_player_leds, align 1
  %arrayidx = getelementptr [5 x i32], ptr @dualsense_set_player_leds.player_ids, i32 0, i32 %rem
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %conv2 = trunc i32 %4 to i8
  %player_leds_state = getelementptr inbounds %struct.dualsense, ptr %ds, i32 0, i32 21
  %5 = ptrtoint ptr %player_leds_state to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv2, ptr %player_leds_state, align 4
  %output_worker = getelementptr inbounds %struct.dualsense, ptr %ds, i32 0, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %output_worker) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_output_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ps_get_report(ptr noundef %hdev, i8 noundef zeroext %report_id, ptr noundef %buf, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  %seed.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %report_id, ptr noundef %buf, i32 noundef %size, i8 noundef zeroext 2, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %conv = zext i8 %report_id to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %conv, i32 noundef %call) #14
  br label %cleanup40

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %size)
  %cmp1.not = icmp eq i32 %call, %size
  br i1 %cmp1.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev7 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.53, i32 noundef %size, i32 noundef %call) #14
  br label %cleanup40

if.end8:                                          ; preds = %if.end
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  %conv10 = zext i8 %report_id to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %report_id)
  %cmp11.not = icmp eq i8 %1, %report_id
  br i1 %cmp11.not, label %if.end21, label %do.end16

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %conv9 = zext i8 %1 to i32
  %dev17 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.56, i32 noundef %conv10, i32 noundef %conv9) #14
  br label %cleanup40

if.end21:                                         ; preds = %if.end8
  %bus = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 8
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bus, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %3)
  %cmp23 = icmp eq i16 %3, 5
  br i1 %cmp23, label %if.then25, label %if.end21.cleanup40_crit_edge

if.end21.cleanup40_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40

if.then25:                                        ; preds = %if.end21
  %conv26 = add i32 %size, 252
  %idxprom = and i32 %conv26, 255
  %arrayidx27 = getelementptr i8, ptr %buf, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %arrayidx27, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %seed.addr.i)
  %7 = ptrtoint ptr %seed.addr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -93, ptr %seed.addr.i, align 1
  %call.i = call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %seed.addr.i, i32 noundef 1) #17
  %call1.i = call i32 @crc32_le(i32 noundef %call.i, ptr noundef %buf, i32 noundef %idxprom) #17
  %neg.i = xor i32 %call1.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %neg.i)
  %cmp.i = icmp eq i32 %6, %neg.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %seed.addr.i)
  br i1 %cmp.i, label %if.then25.cleanup40_crit_edge, label %do.end34

if.then25.cleanup40_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40

do.end34:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  %dev35 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.59, i32 noundef %conv10) #14
  br label %cleanup40

cleanup40:                                        ; preds = %do.end34, %if.then25.cleanup40_crit_edge, %if.end21.cleanup40_crit_edge, %do.end16, %do.end6, %do.end
  %retval.1 = phi i32 [ %call, %do.end ], [ -22, %do.end6 ], [ -22, %do.end16 ], [ -84, %do.end34 ], [ 0, %if.end21.cleanup40_crit_edge ], [ 0, %if.then25.cleanup40_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_raw_request(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps_battery_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #11
  %lock = getelementptr inbounds %struct.ps_device, ptr %call, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %battery_capacity6 = getelementptr inbounds %struct.ps_device, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %battery_capacity6 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %battery_capacity6, align 4
  %battery_status7 = getelementptr inbounds %struct.ps_device, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %battery_status7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %battery_status7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  %4 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %psp, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.epilog.sink.split_crit_edge
    i32 3, label %sw.bb9
    i32 47, label %sw.bb10
    i32 66, label %sw.bb12
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv11 = zext i8 %1 to i32
  br label %sw.epilog.sink.split

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb12, %sw.bb10, %sw.bb9, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 2, %sw.bb12 ], [ %conv11, %sw.bb10 ], [ 1, %sw.bb9 ], [ %3, %entry.sw.epilog.sink.split_crit_edge ]
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_powers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_multicolor_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_mc_calc_color_components(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @firmware_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fw_version = getelementptr inbounds %struct.ps_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_version, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.85, i32 noundef %3) #11
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hardware_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hw_version = getelementptr inbounds %struct.ps_device, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %hw_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_version, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.85, i32 noundef %3) #11
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !58, !60, !61, !63, !64, !65, !66, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !136, !137, !138, !139, !141, !143, !145, !147, !149, !151, !152, !153, !154, !156, !157, !158, !160, !162, !164, !165, !166, !167, !169, !171, !172, !173, !174, !176, !178, !180, !182, !183, !185, !187, !188, !190, !191}
!llvm.module.flags = !{!193, !194, !195, !196, !197, !198, !199, !200}
!llvm.ident = !{!201}

!0 = !{ptr @__initcall__kmod_hid_playstation__227_1503_ps_init6, !1, !"__initcall__kmod_hid_playstation__227_1503_ps_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-playstation.c", i32 1503, i32 1}
!2 = !{ptr @__exitcall_ps_exit, !3, !"__exitcall_ps_exit", i1 false, i1 false}
!3 = !{!"../drivers/hid/hid-playstation.c", i32 1504, i32 1}
!4 = !{ptr @__UNIQUE_ID_author228, !5, !"__UNIQUE_ID_author228", i1 false, i1 false}
!5 = !{!"../drivers/hid/hid-playstation.c", i32 1506, i32 1}
!6 = !{ptr @__UNIQUE_ID_description229, !7, !"__UNIQUE_ID_description229", i1 false, i1 false}
!7 = !{!"../drivers/hid/hid-playstation.c", i32 1507, i32 1}
!8 = !{ptr @__UNIQUE_ID_file230, !9, !"__UNIQUE_ID_file230", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-playstation.c", i32 1508, i32 1}
!10 = !{ptr @__UNIQUE_ID_license231, !9, !"__UNIQUE_ID_license231", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-playstation.c", i32 1485, i32 11}
!13 = !{ptr @ps_driver, !14, !"ps_driver", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-playstation.c", i32 1484, i32 26}
!15 = !{ptr @ps_devices, !16, !"ps_devices", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-playstation.c", i32 1477, i32 35}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-playstation.c", i32 1426, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ps_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @ps_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-playstation.c", i32 1432, i32 3}
!27 = !{ptr @ps_probe._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @ps_probe._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hid/hid-playstation.c", i32 1438, i32 3}
!31 = !{ptr @ps_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ps_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hid/hid-playstation.c", i32 1445, i32 4}
!35 = !{ptr @ps_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ps_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hid/hid-playstation.c", i32 1453, i32 3}
!39 = !{ptr @ps_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ps_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hid/hid-playstation.c", i32 1277, i32 5}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hid/hid-playstation.c", i32 1277, i32 27}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hid/hid-playstation.c", i32 1279, i32 5}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hid/hid-playstation.c", i32 1281, i32 5}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hid/hid-playstation.c", i32 1283, i32 5}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hid/hid-playstation.c", i32 1285, i32 5}
!53 = !{ptr @dualsense_create.player_leds_info, !54, !"player_leds_info", i1 false, i1 false}
!54 = !{!"../drivers/hid/hid-playstation.c", i32 1276, i32 34}
!55 = !{ptr @dualsense_create.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/hid/hid-playstation.c", i32 1301, i32 2}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @dualsense_create.__key.25, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/hid/hid-playstation.c", i32 1305, i32 2}
!60 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hid/hid-playstation.c", i32 1315, i32 3}
!63 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @dualsense_create._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @dualsense_create._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hid/hid-playstation.c", i32 1318, i32 43}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hid/hid-playstation.c", i32 1322, i32 3}
!70 = !{ptr @dualsense_create._entry.30, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @dualsense_create._entry_ptr.32, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hid/hid-playstation.c", i32 1332, i32 3}
!74 = !{ptr @dualsense_create._entry.33, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @dualsense_create._entry_ptr.35, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hid/hid-playstation.c", i32 1387, i32 3}
!78 = !{ptr @dualsense_create._entry.36, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @dualsense_create._entry_ptr.38, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hid/hid-playstation.c", i32 1398, i32 2}
!82 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @dualsense_create._entry.39, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @dualsense_create._entry_ptr.42, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hid/hid-playstation.c", i32 1037, i32 4}
!87 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @dualsense_parse_report._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @dualsense_parse_report._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hid/hid-playstation.c", i32 1043, i32 3}
!92 = !{ptr @dualsense_parse_report._entry.45, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @dualsense_parse_report._entry_ptr.47, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @ps_gamepad_hat_mapping, !95, !"ps_gamepad_hat_mapping", i1 false, i1 false}
!95 = !{!"../drivers/hid/hid-playstation.c", i32 297, i32 38}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hid/hid-playstation.c", i32 831, i32 3}
!98 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @dualsense_get_mac_address._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @dualsense_get_mac_address._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hid/hid-playstation.c", i32 513, i32 3}
!103 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @ps_get_report._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @ps_get_report._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hid/hid-playstation.c", i32 518, i32 3}
!108 = !{ptr @ps_get_report._entry.52, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @ps_get_report._entry_ptr.54, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hid/hid-playstation.c", i32 523, i32 3}
!112 = !{ptr @ps_get_report._entry.55, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @ps_get_report._entry_ptr.57, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hid/hid-playstation.c", i32 533, i32 4}
!116 = !{ptr @ps_get_report._entry.58, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @ps_get_report._entry_ptr.60, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/hid/hid-playstation.c", i32 807, i32 3}
!120 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @dualsense_get_firmware_info._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @dualsense_get_firmware_info._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hid/hid-playstation.c", i32 316, i32 4}
!125 = !{ptr @.str.64, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @ps_devices_list_add._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @ps_devices_list_add._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hid/hid-playstation.c", i32 23, i32 8}
!130 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @ps_devices_lock, !129, !"ps_devices_lock", i1 false, i1 false}
!132 = !{ptr @ps_devices_list, !133, !"ps_devices_list", i1 false, i1 false}
!133 = !{!"../drivers/hid/hid-playstation.c", i32 24, i32 8}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/hid/hid-playstation.c", i32 726, i32 3}
!136 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @dualsense_get_calibration_data._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @dualsense_get_calibration_data._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/hid/hid-playstation.c", i32 369, i32 60}
!141 = distinct !{null, !142, !"ps_gamepad_buttons", i1 false, i1 false}
!142 = !{!"../drivers/hid/hid-playstation.c", i32 281, i32 18}
!143 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/hid/hid-playstation.c", i32 612, i32 40}
!145 = !{ptr @.str.71, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/hid/hid-playstation.c", i32 649, i32 41}
!147 = !{ptr @.str.72, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/hid/hid-playstation.c", i32 436, i32 4}
!149 = !{ptr @.str.73, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/hid/hid-playstation.c", i32 443, i32 3}
!151 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @ps_device_register_battery._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @ps_device_register_battery._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/hid/hid-playstation.c", i32 450, i32 3}
!156 = !{ptr @ps_device_register_battery._entry.75, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @ps_device_register_battery._entry_ptr.77, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @ps_power_supply_props, !159, !"ps_power_supply_props", i1 false, i1 false}
!159 = !{!"../drivers/hid/hid-playstation.c", i32 382, i32 35}
!160 = !{ptr @.str.78, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/hid/hid-playstation.c", i32 589, i32 58}
!162 = !{ptr @.str.79, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/hid/hid-playstation.c", i32 599, i32 3}
!164 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @ps_lightbar_register._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @ps_lightbar_register._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.81, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/hid/hid-playstation.c", i32 547, i32 4}
!169 = !{ptr @.str.82, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/hid/hid-playstation.c", i32 560, i32 3}
!171 = !{ptr @.str.83, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @ps_led_register._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @ps_led_register._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @dualsense_set_player_leds.player_ids, !175, !"player_ids", i1 false, i1 false}
!175 = !{!"../drivers/hid/hid-playstation.c", i32 1254, i32 19}
!176 = !{ptr @ps_device_attribute_group, !177, !"ps_device_attribute_group", i1 false, i1 false}
!177 = !{!"../drivers/hid/hid-playstation.c", i32 701, i32 37}
!178 = !{ptr @ps_device_attributes, !179, !"ps_device_attributes", i1 false, i1 false}
!179 = !{!"../drivers/hid/hid-playstation.c", i32 695, i32 26}
!180 = !{ptr @.str.84, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/hid/hid-playstation.c", i32 681, i32 8}
!182 = !{ptr @dev_attr_firmware_version, !181, !"dev_attr_firmware_version", i1 false, i1 false}
!183 = !{ptr @.str.85, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/hid/hid-playstation.c", i32 678, i32 25}
!185 = !{ptr @.str.86, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/hid/hid-playstation.c", i32 693, i32 8}
!187 = !{ptr @dev_attr_hardware_version, !186, !"dev_attr_hardware_version", i1 false, i1 false}
!188 = !{ptr @.str.87, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/hid/hid-playstation.c", i32 26, i32 8}
!190 = !{ptr @ps_player_id_allocator, !189, !"ps_player_id_allocator", i1 false, i1 false}
!191 = !{ptr @.str.88, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/hid/hid-playstation.c", i32 1494, i32 9}
!193 = !{i32 1, !"wchar_size", i32 2}
!194 = !{i32 1, !"min_enum_size", i32 4}
!195 = !{i32 8, !"branch-target-enforcement", i32 0}
!196 = !{i32 8, !"sign-return-address", i32 0}
!197 = !{i32 8, !"sign-return-address-all", i32 0}
!198 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!199 = !{i32 7, !"uwtable", i32 1}
!200 = !{i32 7, !"frame-pointer", i32 2}
!201 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!202 = !{i8 0, i8 2}
