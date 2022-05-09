; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-logitech-hidpp.c_pt.bc'
source_filename = "../drivers/hid/hid-logitech-hidpp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
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
%struct.hid_usage_id = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.hidpp_report = type { i8, i8, %union.anon.73 }
%union.anon.73 = type { %struct.fap }
%struct.fap = type { i8, i8, [60 x i8] }
%struct.hidpp_ff_private_data = type { ptr, i8, i8, i16, i16, i8, i8, ptr, ptr, %struct.atomic_t }
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
%struct.hidpp_device = type { ptr, ptr, %struct.mutex, ptr, ptr, %struct.wait_queue_head, i32, i8, i8, i8, ptr, %struct.work_struct, %struct.kfifo, %struct.atomic_t, ptr, i32, i32, i8, %struct.hidpp_battery, %struct.hidpp_scroll_counter, i8 }
%struct.kfifo = type { %union.anon.72, [0 x i8] }
%union.anon.72 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.hidpp_battery = type { i8, i8, i8, %struct.power_supply_desc, ptr, [64 x i8], i32, i32, i32, i32, i32, i8, i8 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.hidpp_scroll_counter = type { i32, i32, i32, i64 }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.ff_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i32], %struct.mutex, i32, ptr, [0 x ptr] }
%struct.hidpp_touchpad_raw_xy = type { i16, [2 x %struct.hidpp_touchpad_raw_xy_finger], i8, i8, i8, i8 }
%struct.hidpp_touchpad_raw_xy_finger = type { i8, i8, i16, i16, i8, i8, i8 }
%struct.wtp_data = type { i16, i16, i8, i8, i8, i8, i8, i32 }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.71 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.71 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.hidpp_ff_work_data = type { %struct.work_struct, ptr, i32, i8, [20 x i8], i8 }

@__UNIQUE_ID_file237 = internal constant [55 x i8] c"hid_logitech_hidpp.file=drivers/hid/hid-logitech-hidpp\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [31 x i8] c"hid_logitech_hidpp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [76 x i8] c"hid_logitech_hidpp.author=Benjamin Tissoires <benjamin.tissoires@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [73 x i8] c"hid_logitech_hidpp.author=Nestor Lopez Casado <nlopezcasad@logitech.com>\00", section ".modinfo", align 1
@__param_str_disable_raw_mode = internal constant [36 x i8] c"hid_logitech_hidpp.disable_raw_mode\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@disable_raw_mode = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_disable_raw_mode = internal constant %struct.kernel_param { ptr @__param_str_disable_raw_mode, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @disable_raw_mode } }, section "__param", align 4
@__UNIQUE_ID_disable_raw_modetype241 = internal constant [50 x i8] c"hid_logitech_hidpp.parmtype=disable_raw_mode:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_raw_mode242 = internal constant [110 x i8] c"hid_logitech_hidpp.parm=disable_raw_mode:Disable Raw mode reporting for touchpads and keep firmware gestures.\00", section ".modinfo", align 1
@__param_str_disable_tap_to_click = internal constant [40 x i8] c"hid_logitech_hidpp.disable_tap_to_click\00", align 1
@disable_tap_to_click = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_disable_tap_to_click = internal constant %struct.kernel_param { ptr @__param_str_disable_tap_to_click, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @disable_tap_to_click } }, section "__param", align 4
@__UNIQUE_ID_disable_tap_to_clicktype243 = internal constant [54 x i8] c"hid_logitech_hidpp.parmtype=disable_tap_to_click:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_tap_to_click244 = internal constant [125 x i8] c"hid_logitech_hidpp.parm=disable_tap_to_click:Disable Tap-To-Click mode reporting for touchpads (only on the K400 currently).\00", section ".modinfo", align 1
@__initcall__kmod_hid_logitech_hidpp__252_4374_hidpp_driver_init6 = internal global ptr @hidpp_driver_init, section ".initcall6.init", align 4
@hidpp_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @hidpp_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @hidpp_probe, ptr @hidpp_remove, ptr null, ptr @hidpp_raw_event, ptr @hidpp_usages, ptr @hidpp_event, ptr null, ptr @hidpp_report_fixup, ptr @hidpp_input_mapping, ptr @hidpp_input_mapped, ptr @hidpp_input_configured, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hidpp_driver_exit = internal global ptr @hidpp_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hid_logitech_hidpp\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"logitech-hidpp-device\00", [42 x i8] zeroinitializer }, align 32
@hidpp_devices = internal constant { [51 x %struct.hid_device_id], [208 x i8] } { [51 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 258, i32 1133, i32 16401, i32 12582913 }, %struct.hid_device_id { i16 3, i16 258, i32 1133, i32 16641, i32 8388609 }, %struct.hid_device_id { i16 5, i16 0, i32 1133, i32 45068, i32 1 }, %struct.hid_device_id { i16 3, i16 258, i32 1133, i32 4119, i32 67108864 }, %struct.hid_device_id { i16 3, i16 258, i32 1133, i32 16400, i32 134217728 }, %struct.hid_device_id { i16 3, i16 258, i32 1133, i32 16464, i32 268435456 }, %struct.hid_device_id { i16 3, i16 258, i32 1133, i32 16391, i32 134217728 }, %struct.hid_device_id { i16 3, i16 258, i32 1133, i32 16429, i32 142606338 }, %struct.hid_device_id { i16 3, i16 258, i32 1133, i32 4123, i32 67108864 }, %struct.hid_device_id { i16 3, i16 258, i32 1133, i32 16493, i32 268435456 }, %struct.hid_device_id { i16 3, i16 258, i32 1133, i32 16478, i32 268435456 }, %struct.hid_device_id { i16 3, i16 258, i32 1133, i32 16458, i32 268435456 }, %struct.hid_device_id { i16 3, i16 258, i32 1133, i32 16498, i32 268435456 }, %struct.hid_device_id { i16 3, i16 258, i32 1133, i32 45075, i32 268435456 }, %struct.hid_device_id { i16 3, i16 258, i32 1133, i32 45080, i32 268435456 }, %struct.hid_device_id { i16 3, i16 258, i32 1133, i32 45087, i32 268435456 }, %struct.hid_device_id { i16 3, i16 258, i32 1133, i32 16490, i32 268435456 }, %struct.hid_device_id { i16 3, i16 258, i32 1133, i32 16449, i32 268435456 }, %struct.hid_device_id { i16 3, i16 258, i32 1133, i32 16480, i32 268435456 }, %struct.hid_device_id { i16 3, i16 258, i32 1133, i32 16497, i32 268435456 }, %struct.hid_device_id { i16 3, i16 258, i32 1133, i32 16489, i32 268435456 }, %struct.hid_device_id { i16 3, i16 258, i32 1133, i32 16514, i32 268435456 }, %struct.hid_device_id { i16 3, i16 258, i32 1133, i32 4122, i32 67108864 }, %struct.hid_device_id { i16 3, i16 258, i32 1133, i32 16420, i32 4 }, %struct.hid_device_id { i16 3, i16 258, i32 1133, i32 16386, i32 16 }, %struct.hid_device_id { i16 3, i16 258, i32 1133, i32 45829, i32 -2147483648 }, %struct.hid_device_id { i16 3, i16 258, i32 1133, i32 45833, i32 -2147483648 }, %struct.hid_device_id { i16 3, i16 258, i32 1133, i32 45835, i32 -2147483648 }, %struct.hid_device_id { i16 3, i16 258, i32 1133, i32 -1, i32 0 }, %struct.hid_device_id { i16 3, i16 260, i32 1133, i32 73, i32 536870912 }, %struct.hid_device_id { i16 3, i16 260, i32 1133, i32 87, i32 536870912 }, %struct.hid_device_id { i16 3, i16 260, i32 1133, i32 92, i32 536870912 }, %struct.hid_device_id { i16 3, i16 260, i32 1133, i32 254, i32 536870912 }, %struct.hid_device_id { i16 3, i16 260, i32 1133, i32 -1, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49282, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49287, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49296, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49281, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49286, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49297, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49762, i32 16777224 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49288, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1133, i32 45829, i32 -2147483648 }, %struct.hid_device_id { i16 5, i16 0, i32 1133, i32 45833, i32 -2147483648 }, %struct.hid_device_id { i16 5, i16 0, i32 1133, i32 45835, i32 -2147483648 }, %struct.hid_device_id { i16 5, i16 0, i32 1133, i32 45064, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1133, i32 45074, i32 268435456 }, %struct.hid_device_id { i16 5, i16 0, i32 1133, i32 45085, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1133, i32 45086, i32 268435456 }, %struct.hid_device_id { i16 5, i16 0, i32 1133, i32 45091, i32 268435456 }, %struct.hid_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@hidpp_usages = internal constant { [2 x %struct.hid_usage_id], [40 x i8] } { [2 x %struct.hid_usage_id] [%struct.hid_usage_id { i32 65592, i32 2, i32 11 }, %struct.hid_usage_id { i32 -2, i32 -2, i32 -2 }], [40 x i8] zeroinitializer }, align 32
@hidpp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 4065, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s:parse failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hidpp_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/hid/hid-logitech-hidpp.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hidpp_probe._entry_ptr = internal global ptr @hidpp_probe._entry, section ".printk_index", align 4
@hidpp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&hidpp->work)\00", [32 x i8] zeroinitializer }, align 32
@hidpp_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&hidpp->send_mutex\00", [45 x i8] zeroinitializer }, align 32
@hidpp_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&hidpp->wait\00", [19 x i8] zeroinitializer }, align 32
@ps_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sysfs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@hidpp_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 4115, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Cannot allocate sysfs group for %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hidpp_probe._entry_ptr.15 = internal global ptr @hidpp_probe._entry.12, section ".printk_index", align 4
@hidpp_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 4123, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@hidpp_probe._entry_ptr.18 = internal global ptr @hidpp_probe._entry.16, section ".printk_index", align 4
@hidpp_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 4130, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:hid_hw_open returned error:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@hidpp_probe._entry_ptr.21 = internal global ptr @hidpp_probe._entry.19, section ".printk_index", align 4
@hidpp_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 4145, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Device not connected\00", [43 x i8] zeroinitializer }, align 32
@hidpp_probe._entry_ptr.24 = internal global ptr @hidpp_probe._entry.22, section ".printk_index", align 4
@hidpp_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 4183, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s:hid_hw_start returned error\0A\00", [32 x i8] zeroinitializer }, align 32
@hidpp_probe._entry_ptr.27 = internal global ptr @hidpp_probe._entry.25, section ".printk_index", align 4
@hidpp_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 4192, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Unable to initialize force feedback support, errno %d\0A\00", [41 x i8] zeroinitializer }, align 32
@hidpp_probe._entry_ptr.30 = internal global ptr @hidpp_probe._entry.28, section ".printk_index", align 4
@hidpp_validate_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 4030, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"not enough values in hidpp report %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hidpp_validate_device\00", [42 x i8] zeroinitializer }, align 32
@hidpp_validate_device._entry_ptr = internal global ptr @hidpp_validate_device._entry, section ".printk_index", align 4
@sysfs_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_builtin_power_supply, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_builtin_power_supply = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 0, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"builtin_power_supply\00", [43 x i8] zeroinitializer }, align 32
@hid_device_io_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.36, i32 963, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"io already started\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hid_device_io_start\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@hid_device_io_start._entry_ptr = internal global ptr @hid_device_io_start._entry, section ".printk_index", align 4
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%04x-%4phD\00", [21 x i8] zeroinitializer }, align 32
@hid_debug = external dso_local local_unnamed_addr global i32, align 4
@hidpp_unifying_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 839, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: HID++ Unifying: Got serial: %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hidpp_unifying_init\00", [44 x i8] zeroinitializer }, align 32
@hidpp_unifying_init._entry_ptr = internal global ptr @hidpp_unifying_init._entry, section ".printk_index", align 4
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@hidpp_unifying_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.39, ptr @.str.4, i32 846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: HID++ Unifying: Got name: %s\0A\00", [60 x i8] zeroinitializer }, align 32
@hidpp_unifying_init._entry_ptr.43 = internal global ptr @hidpp_unifying_init._entry.41, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hidpp_send_message_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: __hidpp_send_report returned err: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hidpp_send_message_sync\00", [40 x i8] zeroinitializer }, align 32
@hidpp_send_message_sync._entry_ptr = internal global ptr @hidpp_send_message_sync._entry, section ".printk_index", align 4
@hidpp_send_message_sync._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.4, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: %s:timeout waiting for response\0A\00", [57 x i8] zeroinitializer }, align 32
@hidpp_send_message_sync._entry_ptr.48 = internal global ptr @hidpp_send_message_sync._entry.46, section ".printk_index", align 4
@hidpp_send_message_sync._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.4, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: %s:got hidpp error %02X\0A\00", [33 x i8] zeroinitializer }, align 32
@hidpp_send_message_sync._entry_ptr.51 = internal global ptr @hidpp_send_message_sync._entry.49, section ".printk_index", align 4
@hidpp_send_message_sync._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str.4, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: %s:got hidpp 2.0 error %02X\0A\00", [61 x i8] zeroinitializer }, align 32
@hidpp_send_message_sync._entry_ptr.54 = internal global ptr @hidpp_send_message_sync._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Logitech \00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Logitech %s\00", [20 x i8] zeroinitializer }, align 32
@__const.hidpp_root_get_protocol_version.ping_data = private unnamed_addr constant [3 x i8] c"\00\00Z", align 1
@hidpp_root_get_protocol_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 910, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: received protocol error 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hidpp_root_get_protocol_version\00", [32 x i8] zeroinitializer }, align 32
@hidpp_root_get_protocol_version._entry_ptr = internal global ptr @hidpp_root_get_protocol_version._entry, section ".printk_index", align 4
@hidpp_root_get_protocol_version._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.4, i32 918, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: ping mismatch 0x%02x != 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@hidpp_root_get_protocol_version._entry_ptr.61 = internal global ptr @hidpp_root_get_protocol_version._entry.59, section ".printk_index", align 4
@hidpp_root_get_protocol_version._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.4, i32 927, ptr @.str.64, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HID++ %u.%u device connected.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hidpp_root_get_protocol_version._entry_ptr.65 = internal global ptr @hidpp_root_get_protocol_version._entry.62, section ".printk_index", align 4
@hidpp_overwrite_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.4, i32 3806, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unable to retrieve the name of the device\00", [54 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hidpp_overwrite_name\00", [43 x i8] zeroinitializer }, align 32
@hidpp_overwrite_name._entry_ptr = internal global ptr @hidpp_overwrite_name._entry, section ".printk_index", align 4
@hidpp_overwrite_name._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.4, i32 3808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: HID++: Got name: %s\0A\00", [37 x i8] zeroinitializer }, align 32
@hidpp_overwrite_name._entry_ptr.70 = internal global ptr @hidpp_overwrite_name._entry.68, section ".printk_index", align 4
@hidpp_devicenametype_get_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.71, ptr @.str.4, i32 952, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"hidpp_devicenametype_get_count\00", [33 x i8] zeroinitializer }, align 32
@hidpp_devicenametype_get_count._entry_ptr = internal global ptr @hidpp_devicenametype_get_count._entry, section ".printk_index", align 4
@hidpp_devicenametype_get_device_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.72, ptr @.str.4, i32 976, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"hidpp_devicenametype_get_device_name\00", [59 x i8] zeroinitializer }, align 32
@hidpp_devicenametype_get_device_name._entry_ptr = internal global ptr @hidpp_devicenametype_get_device_name._entry, section ".printk_index", align 4
@hidpp_touchpad_get_raw_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.73, ptr @.str.4, i32 2019, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hidpp_touchpad_get_raw_info\00", [36 x i8] zeroinitializer }, align 32
@hidpp_touchpad_get_raw_info._entry_ptr = internal global ptr @hidpp_touchpad_get_raw_info._entry, section ".printk_index", align 4
@g920_get_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.74, ptr @.str.4, i32 3179, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"g920_get_config\00", [16 x i8] zeroinitializer }, align 32
@g920_get_config._entry_ptr = internal global ptr @g920_get_config._entry, section ".printk_index", align 4
@g920_get_config._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.4, i32 3191, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to reset all forces!\0A\00", [35 x i8] zeroinitializer }, align 32
@g920_get_config._entry_ptr.77 = internal global ptr @g920_get_config._entry.75, section ".printk_index", align 4
@g920_get_config._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.74, ptr @.str.4, i32 3199, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read range from device!\0A\00", [61 x i8] zeroinitializer }, align 32
@g920_get_config._entry_ptr.80 = internal global ptr @g920_get_config._entry.78, section ".printk_index", align 4
@g920_get_config._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.74, ptr @.str.4, i32 3211, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to read gain values from device!\0A\00", [55 x i8] zeroinitializer }, align 32
@g920_get_config._entry_ptr.83 = internal global ptr @g920_get_config._entry.81, section ".printk_index", align 4
@__const.g920_ff_set_autocenter.params = private unnamed_addr constant <{ i8, i8, [16 x i8] }> <{ i8 0, i8 -122, [16 x i8] zeroinitializer }>, align 1
@g920_ff_set_autocenter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.4, i32 3142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: Setting autocenter to 0.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"g920_ff_set_autocenter\00", [41 x i8] zeroinitializer }, align 32
@g920_ff_set_autocenter._entry_ptr = internal global ptr @g920_ff_set_autocenter._entry, section ".printk_index", align 4
@g920_ff_set_autocenter._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.4, i32 3148, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to autocenter device!\0A\00", [34 x i8] zeroinitializer }, align 32
@g920_ff_set_autocenter._entry_ptr.88 = internal global ptr @g920_ff_set_autocenter._entry.86, section ".printk_index", align 4
@hidpp_connect_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.4, i32 3908, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Can not get the protocol version.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hidpp_connect_event\00", [44 x i8] zeroinitializer }, align 32
@hidpp_connect_event._entry_ptr = internal global ptr @hidpp_connect_event._entry, section ".printk_index", align 4
@hidpp_connect_event._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.4, i32 3955, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cannot allocate new input device: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@hidpp_connect_event._entry_ptr.93 = internal global ptr @hidpp_connect_event._entry.91, section ".printk_index", align 4
@wtp_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.4, i32 2867, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Can not get wtp config: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wtp_connect\00", [20 x i8] zeroinitializer }, align 32
@wtp_connect._entry_ptr = internal global ptr @wtp_connect._entry, section ".printk_index", align 4
@m560_config_parameter = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\00\AF\03", [29 x i8] zeroinitializer }, align 32
@hidpp_touchpad_fw_items_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.96, ptr @.str.4, i32 1949, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hidpp_touchpad_fw_items_set\00", [36 x i8] zeroinitializer }, align 32
@hidpp_touchpad_fw_items_set._entry_ptr = internal global ptr @hidpp_touchpad_fw_items_set._entry, section ".printk_index", align 4
@hidpp_initialize_battery.battery_no = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@hidpp_battery_props = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 4, i32 0, i32 66, i32 73, i32 74, i32 75, i32 0, i32 0, i32 0], [60 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hidpp_battery_%ld\00", [46 x i8] zeroinitializer }, align 32
@hidpp_solar_request_battery_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.98, ptr @.str.4, i32 1856, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"hidpp_solar_request_battery_event\00", [62 x i8] zeroinitializer }, align 32
@hidpp_solar_request_battery_event._entry_ptr = internal global ptr @hidpp_solar_request_battery_event._entry, section ".printk_index", align 4
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Logitech\00", [23 x i8] zeroinitializer }, align 32
@hidpp20_battery_get_battery_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.100, ptr @.str.4, i32 1320, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"hidpp20_battery_get_battery_voltage\00", [60 x i8] zeroinitializer }, align 32
@hidpp20_battery_get_battery_voltage._entry_ptr = internal global ptr @hidpp20_battery_get_battery_voltage._entry, section ".printk_index", align 4
@hidpp20_map_battery_capacity.voltages = internal constant { [100 x i32], [112 x i8] } { [100 x i32] [i32 4186, i32 4156, i32 4143, i32 4133, i32 4122, i32 4113, i32 4103, i32 4094, i32 4086, i32 4075, i32 4067, i32 4059, i32 4051, i32 4043, i32 4035, i32 4027, i32 4019, i32 4011, i32 4003, i32 3997, i32 3989, i32 3983, i32 3976, i32 3969, i32 3961, i32 3955, i32 3949, i32 3942, i32 3935, i32 3929, i32 3922, i32 3916, i32 3909, i32 3902, i32 3896, i32 3890, i32 3883, i32 3877, i32 3870, i32 3865, i32 3859, i32 3853, i32 3848, i32 3842, i32 3837, i32 3833, i32 3828, i32 3824, i32 3819, i32 3815, i32 3811, i32 3808, i32 3804, i32 3800, i32 3797, i32 3793, i32 3790, i32 3787, i32 3784, i32 3781, i32 3778, i32 3775, i32 3772, i32 3770, i32 3767, i32 3764, i32 3762, i32 3759, i32 3757, i32 3754, i32 3751, i32 3748, i32 3744, i32 3741, i32 3737, i32 3734, i32 3730, i32 3726, i32 3724, i32 3720, i32 3717, i32 3714, i32 3710, i32 3706, i32 3702, i32 3697, i32 3693, i32 3688, i32 3683, i32 3677, i32 3671, i32 3666, i32 3662, i32 3658, i32 3654, i32 3646, i32 3633, i32 3612, i32 3579, i32 3537], [112 x i8] zeroinitializer }, align 32
@hidpp20_map_battery_capacity.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@hidpp20_map_battery_capacity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.4, i32 1361, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: possibly using the wrong voltage curve\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hidpp20_map_battery_capacity\00", [35 x i8] zeroinitializer }, align 32
@hidpp20_map_battery_capacity._entry_ptr = internal global ptr @hidpp20_map_battery_capacity._entry, section ".printk_index", align 4
@hidpp20_unifiedbattery_get_capabilities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.103, ptr @.str.4, i32 1471, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"hidpp20_unifiedbattery_get_capabilities\00", [56 x i8] zeroinitializer }, align 32
@hidpp20_unifiedbattery_get_capabilities._entry_ptr = internal global ptr @hidpp20_unifiedbattery_get_capabilities._entry, section ".printk_index", align 4
@hidpp20_unifiedbattery_get_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.104, ptr @.str.4, i32 1561, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"hidpp20_unifiedbattery_get_status\00", [62 x i8] zeroinitializer }, align 32
@hidpp20_unifiedbattery_get_status._entry_ptr = internal global ptr @hidpp20_unifiedbattery_get_status._entry, section ".printk_index", align 4
@hidpp20_unifiedbattery_map_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.4, i32 1515, ptr @.str.64, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: charging error\00", [45 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"hidpp20_unifiedbattery_map_status\00", [62 x i8] zeroinitializer }, align 32
@hidpp20_unifiedbattery_map_status._entry_ptr = internal global ptr @hidpp20_unifiedbattery_map_status._entry, section ".printk_index", align 4
@hidpp20_batterylevel_get_battery_capacity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.107, ptr @.str.4, i32 1137, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"hidpp20_batterylevel_get_battery_capacity\00", [54 x i8] zeroinitializer }, align 32
@hidpp20_batterylevel_get_battery_capacity._entry_ptr = internal global ptr @hidpp20_batterylevel_get_battery_capacity._entry, section ".printk_index", align 4
@hidpp20_batterylevel_get_battery_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.108, ptr @.str.4, i32 1163, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"hidpp20_batterylevel_get_battery_info\00", [58 x i8] zeroinitializer }, align 32
@hidpp20_batterylevel_get_battery_info._entry_ptr = internal global ptr @hidpp20_batterylevel_get_battery_info._entry, section ".printk_index", align 4
@hi_res_scroll_enable.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.109, ptr @.str.4, ptr @.str.110, i8 3, i8 91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hi_res_scroll_enable\00", [43 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wheel multiplier = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@hidpp_hrw_get_wheel_capability._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.4, i32 1795, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Couldn't get wheel multiplier (error %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"hidpp_hrw_get_wheel_capability\00", [33 x i8] zeroinitializer }, align 32
@hidpp_hrw_get_wheel_capability._entry_ptr = internal global ptr @hidpp_hrw_get_wheel_capability._entry, section ".printk_index", align 4
@hid_device_io_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.36, i32 983, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"io already stopped\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hid_device_io_stop\00", [45 x i8] zeroinitializer }, align 32
@hid_device_io_stop._entry_ptr = internal global ptr @hid_device_io_stop._entry, section ".printk_index", align 4
@hidpp_ff_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.4, i32 2555, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no inputs found\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hidpp_ff_init\00", [18 x i8] zeroinitializer }, align 32
@hidpp_ff_init._entry_ptr = internal global ptr @hidpp_ff_init._entry, section ".printk_index", align 4
@hidpp_ff_init._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.4, i32 2562, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Struct input_dev not set!\0A\00", [37 x i8] zeroinitializer }, align 32
@hidpp_ff_init._entry_ptr.119 = internal global ptr @hidpp_ff_init._entry.117, section ".printk_index", align 4
@hidpp_ff_init._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.116, ptr @.str.4, i32 2579, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to create FF device!\0A\00", [35 x i8] zeroinitializer }, align 32
@hidpp_ff_init._entry_ptr.122 = internal global ptr @hidpp_ff_init._entry.120, section ".printk_index", align 4
@.str.123 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hidpp-ff-sendqueue\00", [45 x i8] zeroinitializer }, align 32
@dev_attr_range = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.178, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hidpp_ff_range_show, ptr @hidpp_ff_range_store }, [36 x i8] zeroinitializer }, align 32
@hidpp_ff_init._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.116, ptr @.str.4, i32 2619, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Unable to create sysfs interface for \22range\22, errno %d!\0A\00", [39 x i8] zeroinitializer }, align 32
@hidpp_ff_init._entry_ptr.126 = internal global ptr @hidpp_ff_init._entry.124, section ".printk_index", align 4
@hidpp_ff_init._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.116, ptr @.str.4, i32 2625, ptr @.str.64, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Force feedback support loaded (firmware release %d).\0A\00", [42 x i8] zeroinitializer }, align 32
@hidpp_ff_init._entry_ptr.129 = internal global ptr @hidpp_ff_init._entry.127, section ".printk_index", align 4
@hidpp_ff_upload_effect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.4, i32 2322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017%s: Uploading constant force level=%d in dir %d = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hidpp_ff_upload_effect\00", [41 x i8] zeroinitializer }, align 32
@hidpp_ff_upload_effect._entry_ptr = internal global ptr @hidpp_ff_upload_effect._entry, section ".printk_index", align 4
@hidpp_ff_upload_effect._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.4, i32 2327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017%s:           envelope attack=(%d, %d ms) fade=(%d, %d ms)\0A\00", [34 x i8] zeroinitializer }, align 32
@hidpp_ff_upload_effect._entry_ptr.134 = internal global ptr @hidpp_ff_upload_effect._entry.132, section ".printk_index", align 4
@hidpp_ff_upload_effect._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.131, ptr @.str.4, i32 2348, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unexpected periodic waveform type %i!\0A\00", [57 x i8] zeroinitializer }, align 32
@hidpp_ff_upload_effect._entry_ptr.137 = internal global ptr @hidpp_ff_upload_effect._entry.135, section ".printk_index", align 4
@hidpp_ff_upload_effect._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.131, ptr @.str.4, i32 2371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\017%s: Uploading periodic force mag=%d/dir=%d, offset=%d, period=%d ms, phase=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@hidpp_ff_upload_effect._entry_ptr.140 = internal global ptr @hidpp_ff_upload_effect._entry.138, section ".printk_index", align 4
@hidpp_ff_upload_effect._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.4, i32 2376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hidpp_ff_upload_effect._entry_ptr.142 = internal global ptr @hidpp_ff_upload_effect._entry.141, section ".printk_index", align 4
@hidpp_ff_upload_effect._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.131, ptr @.str.4, i32 2397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017%s: Uploading ramp force level=%d -> %d in dir %d = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@hidpp_ff_upload_effect._entry_ptr.145 = internal global ptr @hidpp_ff_upload_effect._entry.143, section ".printk_index", align 4
@hidpp_ff_upload_effect._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.4, i32 2402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hidpp_ff_upload_effect._entry_ptr.147 = internal global ptr @hidpp_ff_upload_effect._entry.146, section ".printk_index", align 4
@HIDPP_FF_CONDITION_CMDS = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\06\08\07\09", [28 x i8] zeroinitializer }, align 32
@hidpp_ff_upload_effect._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.131, ptr @.str.4, i32 2427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\017%s: Uploading %s force left coeff=%d, left sat=%d, right coeff=%d, right sat=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@hidpp_ff_upload_effect._entry_ptr.150 = internal global ptr @hidpp_ff_upload_effect._entry.148, section ".printk_index", align 4
@HIDPP_FF_CONDITION_NAMES = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160], [16 x i8] zeroinitializer }, align 32
@hidpp_ff_upload_effect._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.131, ptr @.str.4, i32 2430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s:           deadband=%d, center=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@hidpp_ff_upload_effect._entry_ptr.153 = internal global ptr @hidpp_ff_upload_effect._entry.151, section ".printk_index", align 4
@hidpp_ff_upload_effect._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.131, ptr @.str.4, i32 2433, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unexpected force type %i!\0A\00", [37 x i8] zeroinitializer }, align 32
@hidpp_ff_upload_effect._entry_ptr.156 = internal global ptr @hidpp_ff_upload_effect._entry.154, section ".printk_index", align 4
@sin_table = internal constant { [91 x i32], [84 x i8] } { [91 x i32] [i32 0, i32 37478757, i32 74946098, i32 112390610, i32 149800886, i32 187165532, i32 224473165, i32 261712422, i32 298871958, i32 335940455, i32 372906621, i32 409759197, i32 446486956, i32 483078710, i32 519523314, i32 555809666, i32 591926714, i32 627863454, i32 663608942, i32 699152287, i32 734482664, i32 769589311, i32 804461533, i32 839088708, i32 873460289, i32 907565806, i32 941394869, i32 974937174, i32 1008182503, i32 1041120731, i32 1073741823, i32 1106035843, i32 1137992954, i32 1169603421, i32 1200857615, i32 1231746017, i32 1262259217, i32 1292387920, i32 1322122950, i32 1351455248, i32 1380375880, i32 1408876036, i32 1436947034, i32 1464580325, i32 1491767490, i32 1518500249, i32 1544770457, i32 1570570114, i32 1595891360, i32 1620726481, i32 1645067914, i32 1668908243, i32 1692240207, i32 1715056697, i32 1737350765, i32 1759115619, i32 1780344629, i32 1801031329, i32 1821169418, i32 1840752761, i32 1859775392, i32 1878231518, i32 1896115516, i32 1913421940, i32 1930145516, i32 1946281151, i32 1961823931, i32 1976769119, i32 1991112165, i32 2004848699, i32 2017974536, i32 2030485679, i32 2042378316, i32 2053648824, i32 2064293772, i32 2074309916, i32 2083694204, i32 2092443780, i32 2100555976, i32 2108028323, i32 2114858545, i32 2121044559, i32 2126584483, i32 2131476629, i32 2135719506, i32 2139311823, i32 2142252484, i32 2144540595, i32 2146175457, i32 2147156574, i32 2147483647], [84 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spring\00", [25 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"friction\00", [23 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"damper\00", [25 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"inertia\00", [24 x i8] zeroinitializer }, align 32
@hidpp_ff_queue_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.161 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&wd->work)\00", [35 x i8] zeroinitializer }, align 32
@hidpp_ff_queue_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.163, ptr @.str.4, i32 2289, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Force feedback command queue contains %d commands, causing substantial delays!\00", [49 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hidpp_ff_queue_work\00", [44 x i8] zeroinitializer }, align 32
@hidpp_ff_queue_work._entry_ptr = internal global ptr @hidpp_ff_queue_work._entry, section ".printk_index", align 4
@hidpp_ff_work_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.165, ptr @.str.4, i32 2227, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to send command to device!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hidpp_ff_work_handler\00", [42 x i8] zeroinitializer }, align 32
@hidpp_ff_work_handler._entry_ptr = internal global ptr @hidpp_ff_work_handler._entry, section ".printk_index", align 4
@hidpp_ff_erase_effect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str.4, i32 2457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Erasing effect %d.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hidpp_ff_erase_effect\00", [42 x i8] zeroinitializer }, align 32
@hidpp_ff_erase_effect._entry_ptr = internal global ptr @hidpp_ff_erase_effect._entry, section ".printk_index", align 4
@hidpp_ff_playback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str.4, i32 2447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: St%sing playback of effect %d.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hidpp_ff_playback\00", [46 x i8] zeroinitializer }, align 32
@hidpp_ff_playback._entry_ptr = internal global ptr @hidpp_ff_playback._entry, section ".printk_index", align 4
@.str.170 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"art\00", [28 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"opp\00", [28 x i8] zeroinitializer }, align 32
@hidpp_ff_set_gain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.173, ptr @.str.4, i32 2489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Setting gain to %d.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hidpp_ff_set_gain\00", [46 x i8] zeroinitializer }, align 32
@hidpp_ff_set_gain._entry_ptr = internal global ptr @hidpp_ff_set_gain._entry, section ".printk_index", align 4
@hidpp_ff_set_autocenter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.175, ptr @.str.4, i32 2467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: Setting autocenter to %d.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hidpp_ff_set_autocenter\00", [40 x i8] zeroinitializer }, align 32
@hidpp_ff_set_autocenter._entry_ptr = internal global ptr @hidpp_ff_set_autocenter._entry, section ".printk_index", align 4
@hidpp_ff_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.177, ptr @.str.4, i32 2535, ptr @.str.64, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unloading HID++ force feedback.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hidpp_ff_destroy\00", [47 x i8] zeroinitializer }, align 32
@hidpp_ff_destroy._entry_ptr = internal global ptr @hidpp_ff_destroy._entry, section ".printk_index", align 4
@.str.178 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"range\00", [26 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@hidpp_raw_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.181, ptr @.str.4, i32 3640, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"received hid++ report of bad size (%d)\00", [57 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hidpp_raw_event\00", [16 x i8] zeroinitializer }, align 32
@hidpp_raw_event._entry_ptr = internal global ptr @hidpp_raw_event._entry, section ".printk_index", align 4
@hidpp_raw_event._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.181, ptr @.str.4, i32 3648, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@hidpp_raw_event._entry_ptr.183 = internal global ptr @hidpp_raw_event._entry.182, section ".printk_index", align 4
@hidpp_raw_event._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.181, ptr @.str.4, i32 3656, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@hidpp_raw_event._entry_ptr.185 = internal global ptr @hidpp_raw_event._entry.184, section ".printk_index", align 4
@hidpp_raw_hidpp_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.187, ptr @.str.4, i32 3570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: %s: connect event already queued\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hidpp_raw_hidpp_event\00", [42 x i8] zeroinitializer }, align 32
@hidpp_raw_hidpp_event._entry_ptr = internal global ptr @hidpp_raw_hidpp_event._entry, section ".printk_index", align 4
@hidpp_raw_hidpp_event._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.188, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@hidpp_raw_hidpp_event._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.187, ptr @.str.4, i32 3579, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [125 x i8], [35 x i8] } { [125 x i8] c"Error the keyboard's wireless encryption key has been lost, your keyboard will not work unless you re-configure encryption.\0A\00", [35 x i8] zeroinitializer }, align 32
@hidpp_raw_hidpp_event._entry_ptr.191 = internal global ptr @hidpp_raw_hidpp_event._entry.189, section ".printk_index", align 4
@hidpp_raw_hidpp_event._rs.192 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.188, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@hidpp_raw_hidpp_event._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.187, ptr @.str.4, i32 3581, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"See: https://gitlab.freedesktop.org/jwrdegoede/logitech-27mhz-keyboard-encryption-setup/\0A\00", [38 x i8] zeroinitializer }, align 32
@hidpp_raw_hidpp_event._entry_ptr.195 = internal global ptr @hidpp_raw_hidpp_event._entry.193, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@wtp_raw_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.197, ptr @.str.4, i32 2785, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Received HID report of bad size (%d)\00", [59 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wtp_raw_event\00", [18 x i8] zeroinitializer }, align 32
@wtp_raw_event._entry_ptr = internal global ptr @wtp_raw_event._entry, section ".printk_index", align 4
@m560_raw_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.199, ptr @.str.4, i32 2944, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"error in parameter\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"m560_raw_event\00", [17 x i8] zeroinitializer }, align 32
@m560_raw_event._entry_ptr = internal global ptr @m560_raw_event._entry, section ".printk_index", align 4
@m560_raw_event._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.199, ptr @.str.4, i32 2949, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"error in report\0A\00", [47 x i8] zeroinitializer }, align 32
@m560_raw_event._entry_ptr.202 = internal global ptr @m560_raw_event._entry.200, section ".printk_index", align 4
@m560_raw_event._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.199, ptr @.str.4, i32 2984, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@m560_raw_event._entry_ptr.204 = internal global ptr @m560_raw_event._entry.203, section ".printk_index", align 4
@hidpp10_consumer_keys_report_fixup.consumer_rdesc_start = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\05\0C\09\01\A1\01\85\03u\10\95\02\15\01&\00", [16 x i8] zeroinitializer }, align 32
@__func__.hid_map_usage = private unnamed_addr constant [14 x i8] c"hid_map_usage\00", align 1
@hid_map_usage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @__func__.hid_map_usage, ptr @.str.36, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014hid_logitech_hidpp: %s: Invalid code %d type %d\0A\00", [45 x i8] zeroinitializer }, align 32
@hid_map_usage._entry_ptr = internal global ptr @hid_map_usage._entry, section ".printk_index", align 4
@switch.table.hidpp10_query_battery_status = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4], [36 x i8] zeroinitializer }, align 32
@switch.table.hidpp_ff_upload_effect = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\02\03\01\04\05", [27 x i8] zeroinitializer }, align 32
@switch.table.hidpp_raw_hidpp_event = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 258, i64 260]
@__sancov_gen_cov_switch_values.206 = internal global [5 x i64] [i64 3, i64 8, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.207 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 17]
@__sancov_gen_cov_switch_values.208 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 17]
@__sancov_gen_cov_switch_values.209 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 174, i64 175, i64 176]
@__sancov_gen_cov_switch_values.210 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.211 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 9]
@__sancov_gen_cov_switch_values.212 = internal global [5 x i64] [i64 3, i64 8, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.213 = internal global [5 x i64] [i64 3, i64 8, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.214 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.215 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 32, i64 33, i64 34, i64 36, i64 37, i64 38]
@__sancov_gen_cov_switch_values.216 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.217 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.218 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.219 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 4, i64 12, i64 47, i64 51, i64 66, i64 73, i64 74, i64 75]
@__sancov_gen_cov_switch_values.220 = internal global [9 x i64] [i64 7, i64 16, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87]
@__sancov_gen_cov_switch_values.221 = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.222 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.223 = internal global [4 x i64] [i64 2, i64 8, i64 143, i64 255]
@__sancov_gen_cov_switch_values.224 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.225 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.226 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 16, i64 32]
@__sancov_gen_cov_switch_values.227 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.228 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 13]
@__sancov_gen_cov_switch_values.229 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 32, i64 33, i64 34, i64 36, i64 37, i64 38]
@__sancov_gen_cov_switch_values.230 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"disable_raw_mode\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 34, i32 13 }
@___asan_gen_.234 = private unnamed_addr constant [21 x i8] c"disable_tap_to_click\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 39, i32 13 }
@___asan_gen_.237 = private unnamed_addr constant [13 x i8] c"hidpp_driver\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 4360, i32 26 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 4374, i32 1 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 4361, i32 10 }
@___asan_gen_.246 = private unnamed_addr constant [14 x i8] c"hidpp_devices\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 4230, i32 35 }
@___asan_gen_.249 = private unnamed_addr constant [13 x i8] c"hidpp_usages\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 4355, i32 34 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 4065, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 4107, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 4108, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 4109, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant [19 x i8] c"ps_attribute_group\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 3975, i32 37 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 4114, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 4123, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 4129, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 4145, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 4183, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 4190, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 4030, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant [12 x i8] c"sysfs_attrs\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 3970, i32 26 }
@___asan_gen_.342 = private unnamed_addr constant [30 x i8] c"dev_attr_builtin_power_supply\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 3968, i32 8 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.913, i32 963, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 837, i32 43 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 839, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 845, i32 43 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 846, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 294, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 301, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 309, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 317, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 439, i32 21 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 448, i32 33 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 909, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 917, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 926, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 3806, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 3808, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 951, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 975, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2018, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 3178, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 3191, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 3198, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 3210, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 3142, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 3148, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 3908, i32 4 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 3955, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2867, i32 4 }
@___asan_gen_.534 = private unnamed_addr constant [22 x i8] c"m560_config_parameter\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2909, i32 17 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 1948, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant [11 x i8] c"battery_no\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 3704, i32 18 }
@___asan_gen_.546 = private unnamed_addr constant [20 x i8] c"hidpp_battery_props\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 1649, i32 35 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 3779, i32 25 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 1855, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 1691, i32 18 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 1319, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant [9 x i8] c"voltages\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 1341, i32 19 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 1359, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 1470, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 1560, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 1514, i32 4 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 1136, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 1162, i32 3 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 3436, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 1794, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.913, i32 983, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2555, i32 3 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2562, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2579, i32 3 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2594, i32 13 }
@___asan_gen_.660 = private unnamed_addr constant [15 x i8] c"dev_attr_range\00", align 1
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2619, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2624, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2320, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2323, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2348, i32 4 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2367, i32 3 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2372, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2394, i32 3 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2398, i32 3 }
@___asan_gen_.714 = private unnamed_addr constant [24 x i8] c"HIDPP_FF_CONDITION_CMDS\00", align 1
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2174, i32 17 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2422, i32 3 }
@___asan_gen_.723 = private unnamed_addr constant [25 x i8] c"HIDPP_FF_CONDITION_NAMES\00", align 1
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2181, i32 20 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2428, i32 3 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2433, i32 3 }
@___asan_gen_.738 = private unnamed_addr constant [10 x i8] c"sin_table\00", align 1
@___asan_gen_.739 = private unnamed_addr constant [30 x i8] c"../include/linux/fixp-arith.h\00", align 1
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.739, i32 22, i32 18 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2182, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2183, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2184, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2185, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2276, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2289, i32 3 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2227, i32 3 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2457, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2447, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2489, i32 2 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2467, i32 2 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2535, i32 2 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2528, i32 8 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2506, i32 35 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 3639, i32 4 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 3647, i32 4 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 3655, i32 4 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 3570, i32 4 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 3578, i32 3 }
@___asan_gen_.870 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 3580, i32 3 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2784, i32 4 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2944, i32 3 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2949, i32 3 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 2984, i32 4 }
@___asan_gen_.906 = private unnamed_addr constant [21 x i8] c"consumer_rdesc_start\00", align 1
@___asan_gen_.907 = private constant [36 x i8] c"../drivers/hid/hid-logitech-hidpp.c\00", align 1
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.907, i32 3353, i32 20 }
@___asan_gen_.909 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.912 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.913 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.913, i32 1036, i32 3 }
@___asan_gen_.915 = private unnamed_addr constant [42 x i8] c"switch.table.hidpp10_query_battery_status\00", align 1
@___asan_gen_.916 = private unnamed_addr constant [36 x i8] c"switch.table.hidpp_ff_upload_effect\00", align 1
@___asan_gen_.917 = private unnamed_addr constant [35 x i8] c"switch.table.hidpp_raw_hidpp_event\00", align 1
@llvm.compiler.used = appending global [320 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_disable_raw_mode242, ptr @__UNIQUE_ID_disable_raw_modetype241, ptr @__UNIQUE_ID_disable_tap_to_click244, ptr @__UNIQUE_ID_disable_tap_to_clicktype243, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_hidpp_driver_exit, ptr @__initcall__kmod_hid_logitech_hidpp__252_4374_hidpp_driver_init6, ptr @__param_disable_raw_mode, ptr @__param_disable_tap_to_click, ptr @g920_ff_set_autocenter._entry, ptr @g920_ff_set_autocenter._entry.86, ptr @g920_ff_set_autocenter._entry_ptr, ptr @g920_ff_set_autocenter._entry_ptr.88, ptr @g920_get_config._entry, ptr @g920_get_config._entry.75, ptr @g920_get_config._entry.78, ptr @g920_get_config._entry.81, ptr @g920_get_config._entry_ptr, ptr @g920_get_config._entry_ptr.77, ptr @g920_get_config._entry_ptr.80, ptr @g920_get_config._entry_ptr.83, ptr @hid_device_io_start._entry, ptr @hid_device_io_start._entry_ptr, ptr @hid_device_io_stop._entry, ptr @hid_device_io_stop._entry_ptr, ptr @hid_map_usage._entry, ptr @hid_map_usage._entry_ptr, ptr @hidpp20_battery_get_battery_voltage._entry, ptr @hidpp20_battery_get_battery_voltage._entry_ptr, ptr @hidpp20_batterylevel_get_battery_capacity._entry, ptr @hidpp20_batterylevel_get_battery_capacity._entry_ptr, ptr @hidpp20_batterylevel_get_battery_info._entry, ptr @hidpp20_batterylevel_get_battery_info._entry_ptr, ptr @hidpp20_map_battery_capacity._entry, ptr @hidpp20_map_battery_capacity._entry_ptr, ptr @hidpp20_unifiedbattery_get_capabilities._entry, ptr @hidpp20_unifiedbattery_get_capabilities._entry_ptr, ptr @hidpp20_unifiedbattery_get_status._entry, ptr @hidpp20_unifiedbattery_get_status._entry_ptr, ptr @hidpp20_unifiedbattery_map_status._entry, ptr @hidpp20_unifiedbattery_map_status._entry_ptr, ptr @hidpp_connect_event._entry, ptr @hidpp_connect_event._entry.91, ptr @hidpp_connect_event._entry_ptr, ptr @hidpp_connect_event._entry_ptr.93, ptr @hidpp_devicenametype_get_count._entry, ptr @hidpp_devicenametype_get_count._entry_ptr, ptr @hidpp_devicenametype_get_device_name._entry, ptr @hidpp_devicenametype_get_device_name._entry_ptr, ptr @hidpp_driver_exit, ptr @hidpp_ff_destroy._entry, ptr @hidpp_ff_destroy._entry_ptr, ptr @hidpp_ff_erase_effect._entry, ptr @hidpp_ff_erase_effect._entry_ptr, ptr @hidpp_ff_init._entry, ptr @hidpp_ff_init._entry.117, ptr @hidpp_ff_init._entry.120, ptr @hidpp_ff_init._entry.124, ptr @hidpp_ff_init._entry.127, ptr @hidpp_ff_init._entry_ptr, ptr @hidpp_ff_init._entry_ptr.119, ptr @hidpp_ff_init._entry_ptr.122, ptr @hidpp_ff_init._entry_ptr.126, ptr @hidpp_ff_init._entry_ptr.129, ptr @hidpp_ff_playback._entry, ptr @hidpp_ff_playback._entry_ptr, ptr @hidpp_ff_queue_work._entry, ptr @hidpp_ff_queue_work._entry_ptr, ptr @hidpp_ff_set_autocenter._entry, ptr @hidpp_ff_set_autocenter._entry_ptr, ptr @hidpp_ff_set_gain._entry, ptr @hidpp_ff_set_gain._entry_ptr, ptr @hidpp_ff_upload_effect._entry, ptr @hidpp_ff_upload_effect._entry.132, ptr @hidpp_ff_upload_effect._entry.135, ptr @hidpp_ff_upload_effect._entry.138, ptr @hidpp_ff_upload_effect._entry.141, ptr @hidpp_ff_upload_effect._entry.143, ptr @hidpp_ff_upload_effect._entry.146, ptr @hidpp_ff_upload_effect._entry.148, ptr @hidpp_ff_upload_effect._entry.151, ptr @hidpp_ff_upload_effect._entry.154, ptr @hidpp_ff_upload_effect._entry_ptr, ptr @hidpp_ff_upload_effect._entry_ptr.134, ptr @hidpp_ff_upload_effect._entry_ptr.137, ptr @hidpp_ff_upload_effect._entry_ptr.140, ptr @hidpp_ff_upload_effect._entry_ptr.142, ptr @hidpp_ff_upload_effect._entry_ptr.145, ptr @hidpp_ff_upload_effect._entry_ptr.147, ptr @hidpp_ff_upload_effect._entry_ptr.150, ptr @hidpp_ff_upload_effect._entry_ptr.153, ptr @hidpp_ff_upload_effect._entry_ptr.156, ptr @hidpp_ff_work_handler._entry, ptr @hidpp_ff_work_handler._entry_ptr, ptr @hidpp_hrw_get_wheel_capability._entry, ptr @hidpp_hrw_get_wheel_capability._entry_ptr, ptr @hidpp_overwrite_name._entry, ptr @hidpp_overwrite_name._entry.68, ptr @hidpp_overwrite_name._entry_ptr, ptr @hidpp_overwrite_name._entry_ptr.70, ptr @hidpp_probe._entry, ptr @hidpp_probe._entry.12, ptr @hidpp_probe._entry.16, ptr @hidpp_probe._entry.19, ptr @hidpp_probe._entry.22, ptr @hidpp_probe._entry.25, ptr @hidpp_probe._entry.28, ptr @hidpp_probe._entry_ptr, ptr @hidpp_probe._entry_ptr.15, ptr @hidpp_probe._entry_ptr.18, ptr @hidpp_probe._entry_ptr.21, ptr @hidpp_probe._entry_ptr.24, ptr @hidpp_probe._entry_ptr.27, ptr @hidpp_probe._entry_ptr.30, ptr @hidpp_raw_event._entry, ptr @hidpp_raw_event._entry.182, ptr @hidpp_raw_event._entry.184, ptr @hidpp_raw_event._entry_ptr, ptr @hidpp_raw_event._entry_ptr.183, ptr @hidpp_raw_event._entry_ptr.185, ptr @hidpp_raw_hidpp_event._entry, ptr @hidpp_raw_hidpp_event._entry.189, ptr @hidpp_raw_hidpp_event._entry.193, ptr @hidpp_raw_hidpp_event._entry_ptr, ptr @hidpp_raw_hidpp_event._entry_ptr.191, ptr @hidpp_raw_hidpp_event._entry_ptr.195, ptr @hidpp_root_get_protocol_version._entry, ptr @hidpp_root_get_protocol_version._entry.59, ptr @hidpp_root_get_protocol_version._entry.62, ptr @hidpp_root_get_protocol_version._entry_ptr, ptr @hidpp_root_get_protocol_version._entry_ptr.61, ptr @hidpp_root_get_protocol_version._entry_ptr.65, ptr @hidpp_send_message_sync._entry, ptr @hidpp_send_message_sync._entry.46, ptr @hidpp_send_message_sync._entry.49, ptr @hidpp_send_message_sync._entry.52, ptr @hidpp_send_message_sync._entry_ptr, ptr @hidpp_send_message_sync._entry_ptr.48, ptr @hidpp_send_message_sync._entry_ptr.51, ptr @hidpp_send_message_sync._entry_ptr.54, ptr @hidpp_solar_request_battery_event._entry, ptr @hidpp_solar_request_battery_event._entry_ptr, ptr @hidpp_touchpad_fw_items_set._entry, ptr @hidpp_touchpad_fw_items_set._entry_ptr, ptr @hidpp_touchpad_get_raw_info._entry, ptr @hidpp_touchpad_get_raw_info._entry_ptr, ptr @hidpp_unifying_init._entry, ptr @hidpp_unifying_init._entry.41, ptr @hidpp_unifying_init._entry_ptr, ptr @hidpp_unifying_init._entry_ptr.43, ptr @hidpp_validate_device._entry, ptr @hidpp_validate_device._entry_ptr, ptr @m560_raw_event._entry, ptr @m560_raw_event._entry.200, ptr @m560_raw_event._entry.203, ptr @m560_raw_event._entry_ptr, ptr @m560_raw_event._entry_ptr.202, ptr @m560_raw_event._entry_ptr.204, ptr @wtp_connect._entry, ptr @wtp_connect._entry_ptr, ptr @wtp_raw_event._entry, ptr @wtp_raw_event._entry_ptr, ptr @disable_raw_mode, ptr @disable_tap_to_click, ptr @hidpp_driver, ptr @.str, ptr @.str.1, ptr @hidpp_devices, ptr @hidpp_usages, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @hidpp_probe.__key, ptr @.str.7, ptr @hidpp_probe.__key.8, ptr @.str.9, ptr @hidpp_probe.__key.10, ptr @.str.11, ptr @ps_attribute_group, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @sysfs_attrs, ptr @dev_attr_builtin_power_supply, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @m560_config_parameter, ptr @.str.96, ptr @hidpp_initialize_battery.battery_no, ptr @hidpp_battery_props, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @hidpp20_map_battery_capacity.voltages, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @.str.123, ptr @dev_attr_range, ptr @.str.125, ptr @.str.128, ptr @.str.130, ptr @.str.131, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.144, ptr @HIDPP_FF_CONDITION_CMDS, ptr @.str.149, ptr @HIDPP_FF_CONDITION_NAMES, ptr @.str.152, ptr @.str.155, ptr @sin_table, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @hidpp_ff_queue_work.__key, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.186, ptr @.str.187, ptr @hidpp_raw_hidpp_event._rs, ptr @.str.188, ptr @.str.190, ptr @hidpp_raw_hidpp_event._rs.192, ptr @.str.194, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.201, ptr @hidpp10_consumer_keys_report_fixup.consumer_rdesc_start, ptr @.str.205, ptr @switch.table.hidpp10_query_battery_status, ptr @switch.table.hidpp_ff_upload_effect, ptr @switch.table.hidpp_raw_hidpp_event], section "llvm.metadata"
@0 = internal global [231 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_raw_mode to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_tap_to_click to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_devices to i32), i32 816, i32 1024, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_usages to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_validate_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_builtin_power_supply to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_device_io_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_unifying_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_unifying_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_send_message_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_send_message_sync._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_send_message_sync._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_send_message_sync._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_root_get_protocol_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_root_get_protocol_version._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_root_get_protocol_version._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_overwrite_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_overwrite_name._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_devicenametype_get_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_devicenametype_get_device_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_touchpad_get_raw_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g920_get_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g920_get_config._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g920_get_config._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g920_get_config._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g920_ff_set_autocenter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g920_ff_set_autocenter._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_connect_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_connect_event._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wtp_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m560_config_parameter to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_touchpad_fw_items_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_initialize_battery.battery_no to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_battery_props to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_solar_request_battery_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp20_battery_get_battery_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp20_map_battery_capacity.voltages to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp20_map_battery_capacity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp20_unifiedbattery_get_capabilities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp20_unifiedbattery_get_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp20_unifiedbattery_map_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp20_batterylevel_get_battery_capacity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp20_batterylevel_get_battery_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_hrw_get_wheel_capability._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_device_io_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_ff_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_ff_init._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_ff_init._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_range to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_ff_init._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_ff_init._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_ff_upload_effect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_ff_upload_effect._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_ff_upload_effect._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_ff_upload_effect._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_ff_upload_effect._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_ff_upload_effect._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_ff_upload_effect._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HIDPP_FF_CONDITION_CMDS to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_ff_upload_effect._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HIDPP_FF_CONDITION_NAMES to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_ff_upload_effect._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_ff_upload_effect._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sin_table to i32), i32 364, i32 448, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_ff_queue_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_ff_queue_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_ff_work_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_ff_erase_effect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_ff_playback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_ff_set_gain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_ff_set_autocenter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_ff_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_raw_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_raw_event._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_raw_event._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_raw_hidpp_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_raw_hidpp_event._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_raw_hidpp_event._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 125, i32 160, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_raw_hidpp_event._rs.192 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp_raw_hidpp_event._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wtp_raw_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m560_raw_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m560_raw_event._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m560_raw_event._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidpp10_consumer_keys_report_fixup.consumer_rdesc_start to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hidpp10_query_battery_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hidpp_ff_upload_effect to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hidpp_raw_hidpp_event to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hidpp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @hidpp_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hidpp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @hid_unregister_driver(ptr noundef nonnull @hidpp_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidpp_probe(ptr noundef %hdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %response.i116.i = alloca %struct.hidpp_report, align 1
  %response.i.i350 = alloca %struct.hidpp_report, align 1
  %response.i = alloca %struct.hidpp_report, align 1
  %response.i.i345 = alloca %struct.hidpp_report, align 1
  %response.i1.i = alloca %struct.hidpp_report, align 1
  %response.i.i = alloca %struct.hidpp_report, align 1
  %serial.i = alloca i32, align 4
  %data = alloca %struct.hidpp_ff_private_data, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %data) #12
  %0 = getelementptr inbounds %struct.hidpp_ff_private_data, ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds %struct.hidpp_ff_private_data, ptr %data, i32 0, i32 3
  %2 = getelementptr inbounds %struct.hidpp_ff_private_data, ptr %data, i32 0, i32 4
  %3 = getelementptr inbounds %struct.hidpp_ff_private_data, ptr %data, i32 0, i32 5
  %4 = getelementptr inbounds %struct.hidpp_ff_private_data, ptr %data, i32 0, i32 6
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %5 = call ptr @memset(ptr %data, i32 255, i32 24)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 440, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %hdev, ptr %call.i, align 8
  %name = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 39
  %name1 = getelementptr inbounds %struct.hidpp_device, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %name1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %name, ptr %name1, align 8
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 4
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_data, align 4
  %quirks = getelementptr inbounds %struct.hidpp_device, ptr %call.i, i32 0, i32 15
  %10 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %quirks, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i309 = tail call i32 @hid_open_report(ptr noundef %hdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i309)
  %tobool3.not = icmp eq i32 %call.i309, 0
  br i1 %tobool3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx1.i.i = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 1, i32 2, i32 16
  %14 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end6.if.end4.i_crit_edge, label %hidpp_get_report_length.exit.i

if.end6.if.end4.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

hidpp_get_report_length.exit.i:                   ; preds = %if.end6
  %field.i.i = getelementptr inbounds %struct.hid_report, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %field.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %field.i.i, align 4
  %report_count.i.i = getelementptr inbounds %struct.hid_field, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %report_count.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %report_count.i.i, align 4
  %add.i.i = add i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %tobool.not.i = icmp eq i32 %add.i.i, 0
  br i1 %tobool.not.i, label %hidpp_get_report_length.exit.i.if.end4.i_crit_edge, label %if.then.i

hidpp_get_report_length.exit.i.if.end4.i_crit_edge: ; preds = %hidpp_get_report_length.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then.i:                                        ; preds = %hidpp_get_report_length.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add.i.i)
  %cmp.i = icmp slt i32 %add.i.i, 7
  br i1 %cmp.i, label %if.then.i.hidpp_validate_device.exit.thread_crit_edge, label %if.then.i.if.end4.i_crit_edge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then.i.hidpp_validate_device.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_validate_device.exit.thread

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %hidpp_get_report_length.exit.i.if.end4.i_crit_edge, %if.end6.if.end4.i_crit_edge
  %supported_reports.0.i = phi i8 [ 0, %hidpp_get_report_length.exit.i.if.end4.i_crit_edge ], [ 1, %if.then.i.if.end4.i_crit_edge ], [ 0, %if.end6.if.end4.i_crit_edge ]
  %arrayidx1.i49.i = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 1, i32 2, i32 17
  %20 = ptrtoint ptr %arrayidx1.i49.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx1.i49.i, align 4
  %tobool.not.i50.i = icmp eq ptr %21, null
  br i1 %tobool.not.i50.i, label %if.end4.i.if.end15.i_crit_edge, label %hidpp_get_report_length.exit56.i

if.end4.i.if.end15.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

hidpp_get_report_length.exit56.i:                 ; preds = %if.end4.i
  %field.i51.i = getelementptr inbounds %struct.hid_report, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %field.i51.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %field.i51.i, align 4
  %report_count.i52.i = getelementptr inbounds %struct.hid_field, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %report_count.i52.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %report_count.i52.i, align 4
  %add.i53.i = add i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i53.i)
  %tobool6.not.i = icmp eq i32 %add.i53.i, 0
  br i1 %tobool6.not.i, label %hidpp_get_report_length.exit56.i.if.end15.i_crit_edge, label %if.then7.i

hidpp_get_report_length.exit56.i.if.end15.i_crit_edge: ; preds = %hidpp_get_report_length.exit56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

if.then7.i:                                       ; preds = %hidpp_get_report_length.exit56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %add.i53.i)
  %cmp8.i = icmp slt i32 %add.i53.i, 20
  br i1 %cmp8.i, label %if.then7.i.hidpp_validate_device.exit.thread_crit_edge, label %if.end11.i

if.then7.i.hidpp_validate_device.exit.thread_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_validate_device.exit.thread

if.end11.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  %26 = or i8 %supported_reports.0.i, 2
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end11.i, %hidpp_get_report_length.exit56.i.if.end15.i_crit_edge, %if.end4.i.if.end15.i_crit_edge
  %supported_reports.1.i = phi i8 [ %26, %if.end11.i ], [ %supported_reports.0.i, %hidpp_get_report_length.exit56.i.if.end15.i_crit_edge ], [ %supported_reports.0.i, %if.end4.i.if.end15.i_crit_edge ]
  %arrayidx1.i57.i = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 1, i32 2, i32 18
  %27 = ptrtoint ptr %arrayidx1.i57.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx1.i57.i, align 4
  %tobool.not.i58.i = icmp eq ptr %28, null
  br i1 %tobool.not.i58.i, label %if.end15.i.hidpp_validate_device.exit_crit_edge, label %hidpp_get_report_length.exit64.i

if.end15.i.hidpp_validate_device.exit_crit_edge:  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_validate_device.exit

hidpp_get_report_length.exit64.i:                 ; preds = %if.end15.i
  %field.i59.i = getelementptr inbounds %struct.hid_report, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %field.i59.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %field.i59.i, align 4
  %report_count.i60.i = getelementptr inbounds %struct.hid_field, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %report_count.i60.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %report_count.i60.i, align 4
  %add.i61.i = add i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i61.i)
  %tobool17.not.i = icmp eq i32 %add.i61.i, 0
  br i1 %tobool17.not.i, label %hidpp_get_report_length.exit64.i.hidpp_validate_device.exit_crit_edge, label %if.then18.i

hidpp_get_report_length.exit64.i.hidpp_validate_device.exit_crit_edge: ; preds = %hidpp_get_report_length.exit64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_validate_device.exit

if.then18.i:                                      ; preds = %hidpp_get_report_length.exit64.i
  %33 = add i32 %32, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -45, i32 %33)
  %34 = icmp ult i32 %33, -45
  br i1 %34, label %if.then18.i.hidpp_validate_device.exit.thread_crit_edge, label %hidpp_validate_device.exit.thread390

if.then18.i.hidpp_validate_device.exit.thread_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_validate_device.exit.thread

hidpp_validate_device.exit.thread390:             ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = or i8 %supported_reports.1.i, 4
  %very_long_report_length.i = getelementptr inbounds %struct.hidpp_device, ptr %13, i32 0, i32 6
  %36 = ptrtoint ptr %very_long_report_length.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add.i61.i, ptr %very_long_report_length.i, align 8
  %supported_reports392 = getelementptr inbounds %struct.hidpp_device, ptr %call.i, i32 0, i32 17
  %37 = ptrtoint ptr %supported_reports392 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %35, ptr %supported_reports392, align 4
  br label %if.end13

hidpp_validate_device.exit.thread:                ; preds = %if.then18.i.hidpp_validate_device.exit.thread_crit_edge, %if.then7.i.hidpp_validate_device.exit.thread_crit_edge, %if.then.i.hidpp_validate_device.exit.thread_crit_edge
  %id.0.i = phi i32 [ 16, %if.then.i.hidpp_validate_device.exit.thread_crit_edge ], [ 17, %if.then7.i.hidpp_validate_device.exit.thread_crit_edge ], [ 18, %if.then18.i.hidpp_validate_device.exit.thread_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %id.0.i) #15
  %supported_reports388 = getelementptr inbounds %struct.hidpp_device, ptr %call.i, i32 0, i32 17
  %38 = ptrtoint ptr %supported_reports388 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %supported_reports388, align 4
  br label %if.then10

hidpp_validate_device.exit:                       ; preds = %hidpp_get_report_length.exit64.i.hidpp_validate_device.exit_crit_edge, %if.end15.i.hidpp_validate_device.exit_crit_edge
  %supported_reports = getelementptr inbounds %struct.hidpp_device, ptr %call.i, i32 0, i32 17
  %39 = ptrtoint ptr %supported_reports to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %supported_reports.1.i, ptr %supported_reports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %supported_reports.1.i)
  %tobool9.not = icmp eq i8 %supported_reports.1.i, 0
  br i1 %tobool9.not, label %hidpp_validate_device.exit.if.then10_crit_edge, label %hidpp_validate_device.exit.if.end13_crit_edge

hidpp_validate_device.exit.if.end13_crit_edge:    ; preds = %hidpp_validate_device.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

hidpp_validate_device.exit.if.then10_crit_edge:   ; preds = %hidpp_validate_device.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

if.then10:                                        ; preds = %hidpp_validate_device.exit.if.then10_crit_edge, %hidpp_validate_device.exit.thread
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %call.i) #12
  %call12 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 45) #12
  br label %cleanup

if.end13:                                         ; preds = %hidpp_validate_device.exit.if.end13_crit_edge, %hidpp_validate_device.exit.thread390
  %supported_reports394 = phi ptr [ %supported_reports392, %hidpp_validate_device.exit.thread390 ], [ %supported_reports, %hidpp_validate_device.exit.if.end13_crit_edge ]
  %group = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 1
  %41 = ptrtoint ptr %group to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %group, align 2
  %43 = zext i16 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i16 %42, label %if.end13.if.end38_crit_edge [
    i16 258, label %if.end13.if.end38.sink.split_crit_edge
    i16 260, label %land.lhs.true
  ]

if.end13.if.end38.sink.split_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.sink.split

if.end13.if.end38_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end13
  %report_list1.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 0, i32 1
  %44 = ptrtoint ptr %report_list1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %report_list1.i, align 4
  %cmp.not.i = icmp eq ptr %45, %report_list1.i
  %tobool.not9.i = icmp eq ptr %45, null
  %tobool.not.i311 = or i1 %cmp.not.i, %tobool.not9.i
  br i1 %tobool.not.i311, label %land.lhs.true.land.lhs.true32_crit_edge, label %hidpp_application_equals.exit

land.lhs.true.land.lhs.true32_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true32

hidpp_application_equals.exit:                    ; preds = %land.lhs.true
  %application4.i = getelementptr inbounds %struct.hid_report, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %application4.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %application4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65538, i32 %47)
  %cmp5.i = icmp eq i32 %47, 65538
  br i1 %cmp5.i, label %if.then24, label %hidpp_application_equals.exit.land.lhs.true32_crit_edge

hidpp_application_equals.exit.land.lhs.true32_crit_edge: ; preds = %hidpp_application_equals.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true32

if.then24:                                        ; preds = %hidpp_application_equals.exit
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %quirks, align 4
  %or26 = or i32 %49, 1610612736
  store i32 %or26, ptr %quirks, align 4
  br label %land.lhs.true32

land.lhs.true32:                                  ; preds = %if.then24, %hidpp_application_equals.exit.land.lhs.true32_crit_edge, %land.lhs.true.land.lhs.true32_crit_edge
  %50 = ptrtoint ptr %report_list1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %report_list1.i, align 4
  %cmp.not.i313 = icmp eq ptr %51, %report_list1.i
  %tobool.not9.i314 = icmp eq ptr %51, null
  %tobool.not.i315 = or i1 %cmp.not.i313, %tobool.not9.i314
  br i1 %tobool.not.i315, label %land.lhs.true32.if.end38_crit_edge, label %hidpp_application_equals.exit319

land.lhs.true32.if.end38_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

hidpp_application_equals.exit319:                 ; preds = %land.lhs.true32
  %application4.i316 = getelementptr inbounds %struct.hid_report, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %application4.i316 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %application4.i316, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65542, i32 %53)
  %cmp5.i317 = icmp eq i32 %53, 65542
  br i1 %cmp5.i317, label %hidpp_application_equals.exit319.if.end38.sink.split_crit_edge, label %hidpp_application_equals.exit319.if.end38_crit_edge

hidpp_application_equals.exit319.if.end38_crit_edge: ; preds = %hidpp_application_equals.exit319
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

hidpp_application_equals.exit319.if.end38.sink.split_crit_edge: ; preds = %hidpp_application_equals.exit319
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.sink.split

if.end38.sink.split:                              ; preds = %hidpp_application_equals.exit319.if.end38.sink.split_crit_edge, %if.end13.if.end38.sink.split_crit_edge
  %.sink417 = phi i32 [ 33554432, %if.end13.if.end38.sink.split_crit_edge ], [ -2147483648, %hidpp_application_equals.exit319.if.end38.sink.split_crit_edge ]
  %54 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %quirks, align 4
  %or = or i32 %55, %.sink417
  store i32 %or, ptr %quirks, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end38.sink.split, %hidpp_application_equals.exit319.if.end38_crit_edge, %land.lhs.true32.if.end38_crit_edge, %if.end13.if.end38_crit_edge
  %56 = load i8, ptr @disable_raw_mode, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool39.not = icmp eq i8 %56, 0
  br i1 %tobool39.not, label %if.end38.if.end44_crit_edge, label %if.then40

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %quirks, align 4
  %and43 = and i32 %58, -8388610
  store i32 %and43, ptr %quirks, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.end38.if.end44_crit_edge
  %59 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %quirks, align 4
  %and46 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.else, label %if.then48

if.then48:                                        ; preds = %if.end44
  %61 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %driver_data.i.i, align 4
  %call.i.i322 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #12
  %tobool.not.i323 = icmp eq ptr %call.i.i322, null
  br i1 %tobool.not.i323, label %if.then48.cleanup_crit_edge, label %if.then48.do.body63.sink.split_crit_edge

if.then48.do.body63.sink.split_crit_edge:         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body63.sink.split

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %if.end44
  %and54 = and i32 %60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.else.do.body63_crit_edge, label %if.then56

if.else.do.body63_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body63

if.then56:                                        ; preds = %if.else
  %63 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %driver_data.i.i, align 4
  %call.i.i327 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1, i32 noundef 3520) #12
  %tobool.not.i328 = icmp eq ptr %call.i.i327, null
  br i1 %tobool.not.i328, label %if.then56.cleanup_crit_edge, label %if.then56.do.body63.sink.split_crit_edge

if.then56.do.body63.sink.split_crit_edge:         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body63.sink.split

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body63.sink.split:                             ; preds = %if.then56.do.body63.sink.split_crit_edge, %if.then48.do.body63.sink.split_crit_edge
  %.sink = phi ptr [ %62, %if.then48.do.body63.sink.split_crit_edge ], [ %64, %if.then56.do.body63.sink.split_crit_edge ]
  %call.i.i327.sink = phi ptr [ %call.i.i322, %if.then48.do.body63.sink.split_crit_edge ], [ %call.i.i327, %if.then56.do.body63.sink.split_crit_edge ]
  %private_data.i329 = getelementptr inbounds %struct.hidpp_device, ptr %.sink, i32 0, i32 10
  %65 = ptrtoint ptr %private_data.i329 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i.i327.sink, ptr %private_data.i329, align 8
  br label %do.body63

do.body63:                                        ; preds = %do.body63.sink.split, %if.else.do.body63_crit_edge
  %work = getelementptr inbounds %struct.hidpp_device, ptr %call.i, i32 0, i32 11
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #12
  %66 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.hidpp_device, ptr %call.i, i32 0, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @hidpp_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry68 = getelementptr inbounds %struct.hidpp_device, ptr %call.i, i32 0, i32 11, i32 1
  %67 = ptrtoint ptr %entry68 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %entry68, ptr %entry68, align 4
  %prev.i = getelementptr inbounds %struct.hidpp_device, ptr %call.i, i32 0, i32 11, i32 1, i32 1
  %68 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %entry68, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.hidpp_device, ptr %call.i, i32 0, i32 11, i32 2
  %69 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @delayed_work_cb, ptr %func, align 4
  %send_mutex = getelementptr inbounds %struct.hidpp_device, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %send_mutex, ptr noundef nonnull @.str.9, ptr noundef nonnull @hidpp_probe.__key.8) #12
  %wait = getelementptr inbounds %struct.hidpp_device, ptr %call.i, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.11, ptr noundef nonnull @hidpp_probe.__key.10) #12
  %call79 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @ps_attribute_group) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %do.body63.if.end88_crit_edge, label %do.end84

do.body63.if.end88_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

do.end84:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef %name) #15
  br label %if.end88

if.end88:                                         ; preds = %do.end84, %do.body63.if.end88_crit_edge
  %call89 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end96, label %do.end94

do.end94:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #15
  br label %hid_hw_start_fail

if.end96:                                         ; preds = %if.end88
  %call97 = tail call i32 @hid_hw_open(ptr noundef %hdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %do.end103, label %if.end105

do.end103:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.3, i32 noundef %call97) #15
  br label %hid_hw_open_fail

if.end105:                                        ; preds = %if.end96
  %io_started.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 35
  %70 = ptrtoint ptr %io_started.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %io_started.i, align 4, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i332 = icmp eq i8 %71, 0
  br i1 %tobool.not.i332, label %if.end.i335, label %do.end.i334

do.end.i334:                                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.34) #15
  br label %hid_device_io_start.exit

if.end.i335:                                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %io_started.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %io_started.i, align 4
  %driver_input_lock.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 17
  tail call void @up(ptr noundef %driver_input_lock.i) #12
  br label %hid_device_io_start.exit

hid_device_io_start.exit:                         ; preds = %if.end.i335, %do.end.i334
  %73 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %quirks, align 4
  %and107 = and i32 %74, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %hid_device_io_start.exit.if.end111_crit_edge, label %if.then109

hid_device_io_start.exit.if.end111_crit_edge:     ; preds = %hid_device_io_start.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

if.then109:                                       ; preds = %hid_device_io_start.exit
  %75 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %serial.i) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i.i) #12
  %77 = call ptr @memset(ptr %response.i.i, i32 255, i32 64)
  %78 = ptrtoint ptr %supported_reports394 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %supported_reports394, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %80 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %80, i32 noundef 3520, i32 noundef 64) #16
  %tobool10.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool10.not.i.i.i, label %if.then109.hidpp_unifying_get_serial.exit.thread.i_crit_edge, label %hidpp_send_rap_command_sync.exit.i.i

if.then109.hidpp_unifying_get_serial.exit.thread.i_crit_edge: ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_unifying_get_serial.exit.thread.i

hidpp_send_rap_command_sync.exit.i.i:             ; preds = %if.then109
  %81 = and i8 %79, 1
  %82 = xor i8 %81, 17
  %83 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %call7.i.i.i.i.i, align 8
  %84 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -125, ptr %84, align 2
  %reg_address15.i.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i, i32 0, i32 2, i32 0, i32 1
  %86 = ptrtoint ptr %reg_address15.i.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -75, ptr %reg_address15.i.i.i, align 1
  %params16.i.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i, i32 0, i32 2, i32 0, i32 2
  %87 = ptrtoint ptr %params16.i.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 48, ptr %params16.i.i.i, align 4
  %call17.i.i.i = call fastcc i32 @hidpp_send_message_sync(ptr noundef nonnull %call.i, ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef nonnull %response.i.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i.i)
  %tobool.not.i.i336 = icmp eq i32 %call17.i.i.i, 0
  br i1 %tobool.not.i.i336, label %if.end.i337, label %hidpp_send_rap_command_sync.exit.i.i.hidpp_unifying_get_serial.exit.thread.i_crit_edge

hidpp_send_rap_command_sync.exit.i.i.hidpp_unifying_get_serial.exit.thread.i_crit_edge: ; preds = %hidpp_send_rap_command_sync.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_unifying_get_serial.exit.thread.i

hidpp_unifying_get_serial.exit.thread.i:          ; preds = %hidpp_send_rap_command_sync.exit.i.i.hidpp_unifying_get_serial.exit.thread.i_crit_edge, %if.then109.hidpp_unifying_get_serial.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i.i) #12
  br label %hidpp_unifying_init.exit

if.end.i337:                                      ; preds = %hidpp_send_rap_command_sync.exit.i.i
  %arrayidx.i.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i.i, i32 0, i32 2, i32 0, i32 2, i32 1
  %88 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %arrayidx.i.i, align 1
  %90 = ptrtoint ptr %serial.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %serial.i, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i.i) #12
  %uniq.i = getelementptr inbounds %struct.hid_device, ptr %76, i32 0, i32 41
  %product.i = getelementptr inbounds %struct.hid_device, ptr %76, i32 0, i32 11
  %91 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %product.i, align 8
  %call1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %uniq.i, i32 noundef 64, ptr noundef nonnull @.str.37, i32 noundef %92, ptr noundef nonnull %serial.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %93 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool2.not.i = icmp eq i32 %93, 0
  br i1 %tobool2.not.i, label %if.end.i337.do.end10.i_crit_edge, label %do.end.i338

if.end.i337.do.end10.i_crit_edge:                 ; preds = %if.end.i337
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

do.end.i338:                                      ; preds = %if.end.i337
  call void @__sanitizer_cov_trace_pc() #14
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.4, ptr noundef %uniq.i) #15
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i338, %if.end.i337.do.end10.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i1.i) #12
  %94 = call ptr @memset(ptr %response.i1.i, i32 255, i32 64)
  %95 = ptrtoint ptr %supported_reports394 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %supported_reports394, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %97 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i3.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %97, i32 noundef 3520, i32 noundef 64) #16
  %tobool10.not.i.i4.i = icmp eq ptr %call7.i.i.i.i3.i, null
  br i1 %tobool10.not.i.i4.i, label %do.end10.i.hidpp_unifying_get_name.exit.thread.i_crit_edge, label %hidpp_send_rap_command_sync.exit.i9.i

do.end10.i.hidpp_unifying_get_name.exit.thread.i_crit_edge: ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_unifying_get_name.exit.thread.i

hidpp_send_rap_command_sync.exit.i9.i:            ; preds = %do.end10.i
  %98 = and i8 %96, 1
  %99 = xor i8 %98, 17
  %100 = ptrtoint ptr %call7.i.i.i.i3.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %call7.i.i.i.i3.i, align 8
  %101 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i3.i, i32 0, i32 2
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 -125, ptr %101, align 2
  %reg_address15.i.i5.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i3.i, i32 0, i32 2, i32 0, i32 1
  %103 = ptrtoint ptr %reg_address15.i.i5.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 -75, ptr %reg_address15.i.i5.i, align 1
  %params16.i.i6.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i3.i, i32 0, i32 2, i32 0, i32 2
  %104 = ptrtoint ptr %params16.i.i6.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 64, ptr %params16.i.i6.i, align 4
  %call17.i.i7.i = call fastcc i32 @hidpp_send_message_sync(ptr noundef nonnull %call.i, ptr noundef nonnull %call7.i.i.i.i3.i, ptr noundef nonnull %response.i1.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i3.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i7.i)
  %tobool.not.i8.i = icmp eq i32 %call17.i.i7.i, 0
  br i1 %tobool.not.i8.i, label %if.end.i11.i, label %hidpp_send_rap_command_sync.exit.i9.i.hidpp_unifying_get_name.exit.thread.i_crit_edge

hidpp_send_rap_command_sync.exit.i9.i.hidpp_unifying_get_name.exit.thread.i_crit_edge: ; preds = %hidpp_send_rap_command_sync.exit.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_unifying_get_name.exit.thread.i

if.end.i11.i:                                     ; preds = %hidpp_send_rap_command_sync.exit.i9.i
  %arrayidx.i10.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i1.i, i32 0, i32 2, i32 0, i32 2, i32 1
  %105 = ptrtoint ptr %arrayidx.i10.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx.i10.i, align 1
  %conv.i.i = zext i8 %106 to i32
  %107 = add i8 %106, -59
  call void @__sanitizer_cov_trace_const_cmp1(i8 -55, i8 %107)
  %108 = icmp ult i8 %107, -55
  br i1 %108, label %if.end.i11.i.hidpp_unifying_get_name.exit.thread.i_crit_edge, label %if.end8.i.i.i.i

if.end.i11.i.hidpp_unifying_get_name.exit.thread.i_crit_edge: ; preds = %if.end.i11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_unifying_get_name.exit.thread.i

if.end8.i.i.i.i:                                  ; preds = %if.end.i11.i
  %add9.i.i = add nuw nsw i32 %conv.i.i, 1
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add9.i.i, i32 noundef 3520) #17
  %tobool11.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool11.not.i.i, label %if.end8.i.i.i.i.hidpp_unifying_get_name.exit.thread.i_crit_edge, label %if.end13.i.i

if.end8.i.i.i.i.hidpp_unifying_get_name.exit.thread.i_crit_edge: ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_unifying_get_name.exit.thread.i

if.end13.i.i:                                     ; preds = %if.end8.i.i.i.i
  %arrayidx15.i.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i1.i, i32 0, i32 2, i32 0, i32 2, i32 2
  %109 = call ptr @memcpy(ptr %call9.i.i.i.i, ptr %arrayidx15.i.i, i32 %conv.i.i)
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %106)
  %cmp.i.i.i = icmp ugt i8 %106, 8
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %if.end13.i.i.if.end.i.i.i_crit_edge

if.end13.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end13.i.i
  %call.i.i.i = call i32 @strncmp(ptr noundef nonnull %call9.i.i.i.i, ptr noundef nonnull dereferenceable(10) @.str.55, i32 noundef 9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp1.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp1.i.i.i, label %land.lhs.true.i.i.i.if.end14.i_crit_edge, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

land.lhs.true.i.i.i.if.end14.i_crit_edge:         ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.end13.i.i.if.end.i.i.i_crit_edge
  %add.i.i.i = add nuw nsw i32 %conv.i.i, 10
  %call9.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i.i, i32 noundef 3520) #17
  %tobool.not.i.i.i = icmp eq ptr %call9.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.if.end14.i_crit_edge, label %if.end4.i.i.i

if.end.i.i.i.if.end14.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call9.i.i.i.i.i, i32 noundef %add.i.i.i, ptr noundef nonnull @.str.56, ptr noundef nonnull %call9.i.i.i.i) #12
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #12
  br label %if.end14.i

hidpp_unifying_get_name.exit.thread.i:            ; preds = %if.end8.i.i.i.i.hidpp_unifying_get_name.exit.thread.i_crit_edge, %if.end.i11.i.hidpp_unifying_get_name.exit.thread.i_crit_edge, %hidpp_send_rap_command_sync.exit.i9.i.hidpp_unifying_get_name.exit.thread.i_crit_edge, %do.end10.i.hidpp_unifying_get_name.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i1.i) #12
  br label %hidpp_unifying_init.exit

if.end14.i:                                       ; preds = %if.end4.i.i.i, %if.end.i.i.i.if.end14.i_crit_edge, %land.lhs.true.i.i.i.if.end14.i_crit_edge
  %retval.0.i12.i = phi ptr [ %call9.i.i.i.i, %land.lhs.true.i.i.i.if.end14.i_crit_edge ], [ %call9.i.i.i.i, %if.end.i.i.i.if.end14.i_crit_edge ], [ %call9.i.i.i.i.i, %if.end4.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i1.i) #12
  %name15.i = getelementptr inbounds %struct.hid_device, ptr %76, i32 0, i32 39
  %call17.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name15.i, i32 noundef 128, ptr noundef nonnull @.str.40, ptr noundef nonnull %retval.0.i12.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %110 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool19.not.i = icmp eq i32 %110, 0
  br i1 %tobool19.not.i, label %if.end14.i.do.end28.i_crit_edge, label %do.end23.i

if.end14.i.do.end28.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28.i

do.end23.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.4, ptr noundef nonnull %retval.0.i12.i) #15
  br label %do.end28.i

do.end28.i:                                       ; preds = %do.end23.i, %if.end14.i.do.end28.i_crit_edge
  call void @kfree(ptr noundef nonnull %retval.0.i12.i) #12
  br label %hidpp_unifying_init.exit

hidpp_unifying_init.exit:                         ; preds = %do.end28.i, %hidpp_unifying_get_name.exit.thread.i, %hidpp_unifying_get_serial.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %serial.i) #12
  br label %if.end111

if.end111:                                        ; preds = %hidpp_unifying_init.exit, %hid_device_io_start.exit.if.end111_crit_edge
  %call112 = call fastcc i32 @hidpp_root_get_protocol_version(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp113 = icmp eq i32 %call112, 0
  %connected115 = getelementptr inbounds %struct.hidpp_device, ptr %call.i, i32 0, i32 13
  %conv117 = zext i1 %cmp113 to i32
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %connected115, i32 noundef 4) #12
  %111 = ptrtoint ptr %connected115 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile i32 %conv117, ptr %connected115, align 4
  %112 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %quirks, align 4
  %and119 = and i32 %113, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.then121, label %if.end129

if.then121:                                       ; preds = %if.end111
  br i1 %cmp113, label %if.end128, label %if.then123

if.then123:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #15
  br label %hid_hw_init_fail

if.end128:                                        ; preds = %if.then121
  %114 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %driver_data.i.i, align 4
  %protocol_major.i = getelementptr inbounds %struct.hidpp_device, ptr %115, i32 0, i32 8
  %116 = ptrtoint ptr %protocol_major.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %protocol_major.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %117)
  %cmp.i340 = icmp ult i8 %117, 2
  br i1 %cmp.i340, label %if.end128.land.lhs.true132_crit_edge, label %if.end.i342

if.end128.land.lhs.true132_crit_edge:             ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true132

if.end.i342:                                      ; preds = %if.end128
  %call2.i = call fastcc ptr @hidpp_get_device_name(ptr noundef %115) #12
  %tobool.not.i341 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i341, label %do.end.i344, label %do.body4.i

do.end.i344:                                      ; preds = %if.end.i342
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.66) #15
  br label %if.end16.i

do.body4.i:                                       ; preds = %if.end.i342
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %118 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool5.not.i = icmp eq i32 %118, 0
  br i1 %tobool5.not.i, label %do.body4.i.do.end13.i_crit_edge, label %do.end9.i

do.body4.i.do.end13.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13.i

do.end9.i:                                        ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.4, ptr noundef nonnull %call2.i) #15
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end9.i, %do.body4.i.do.end13.i_crit_edge
  %call15.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 128, ptr noundef nonnull @.str.40, ptr noundef nonnull %call2.i) #12
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.end13.i, %do.end.i344
  call void @kfree(ptr noundef %call2.i) #12
  br label %land.lhs.true132

if.end129:                                        ; preds = %if.end111
  br i1 %cmp113, label %if.end129.land.lhs.true132_crit_edge, label %if.end129.if.end171_crit_edge

if.end129.if.end171_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171

if.end129.land.lhs.true132_crit_edge:             ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true132

land.lhs.true132:                                 ; preds = %if.end129.land.lhs.true132_crit_edge, %if.end16.i, %if.end128.land.lhs.true132_crit_edge
  %protocol_major = getelementptr inbounds %struct.hidpp_device, ptr %call.i, i32 0, i32 8
  %119 = ptrtoint ptr %protocol_major to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %protocol_major, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %120)
  %cmp134 = icmp ugt i8 %120, 1
  br i1 %cmp134, label %if.then136, label %land.lhs.true132.land.lhs.true149_crit_edge

land.lhs.true132.land.lhs.true149_crit_edge:      ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true149

if.then136:                                       ; preds = %land.lhs.true132
  %wireless_feature_index.i = getelementptr inbounds %struct.hidpp_device, ptr %call.i, i32 0, i32 20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i.i345) #12
  %121 = call ptr @memset(ptr %response.i.i345, i32 255, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %122 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i346 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %122, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i.i.i347 = icmp eq ptr %call7.i.i.i.i.i346, null
  br i1 %tobool.not.i.i.i347, label %hidpp_set_wireless_feature_index.exit.thread, label %hidpp_send_fap_command_sync.exit.i.i

hidpp_set_wireless_feature_index.exit.thread:     ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i.i345) #12
  br label %hid_hw_init_fail

hidpp_send_fap_command_sync.exit.i.i:             ; preds = %if.then136
  %123 = ptrtoint ptr %call7.i.i.i.i.i346 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 17, ptr %call7.i.i.i.i.i346, align 8
  %124 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i346, i32 0, i32 2
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %124, align 2
  %funcindex_clientid7.i.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i346, i32 0, i32 2, i32 0, i32 1
  %126 = ptrtoint ptr %funcindex_clientid7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %funcindex_clientid7.i.i.i, align 1
  %params8.i.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i346, i32 0, i32 2, i32 0, i32 2
  %127 = ptrtoint ptr %params8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 29, ptr %params8.i.i.i, align 4
  %params.sroa.5.0.params8.i.sroa_idx.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i346, i32 0, i32 2, i32 0, i32 2, i32 1
  %128 = ptrtoint ptr %params.sroa.5.0.params8.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 75, ptr %params.sroa.5.0.params8.i.sroa_idx.i.i, align 1
  %call9.i.i.i = call fastcc i32 @hidpp_send_message_sync(ptr noundef nonnull %call.i, ptr noundef nonnull %call7.i.i.i.i.i346, ptr noundef nonnull %response.i.i345) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i346) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i)
  %tobool.not.i.i348 = icmp eq i32 %call9.i.i.i, 0
  br i1 %tobool.not.i.i348, label %if.end.i.i, label %hidpp_set_wireless_feature_index.exit

if.end.i.i:                                       ; preds = %hidpp_send_fap_command_sync.exit.i.i
  %params4.i.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i.i345, i32 0, i32 2, i32 0, i32 2
  %129 = ptrtoint ptr %params4.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %params4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %cmp.i.i = icmp eq i8 %130, 0
  br i1 %cmp.i.i, label %hidpp_set_wireless_feature_index.exit.thread405, label %hidpp_set_wireless_feature_index.exit.thread407

hidpp_set_wireless_feature_index.exit.thread405:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i.i345) #12
  br label %if.then140

hidpp_set_wireless_feature_index.exit.thread407:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %131 = ptrtoint ptr %wireless_feature_index.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %wireless_feature_index.i, align 1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i.i345) #12
  br label %land.lhs.true149

hidpp_set_wireless_feature_index.exit:            ; preds = %hidpp_send_fap_command_sync.exit.i.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i.i345) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call9.i.i.i)
  %cond = icmp eq i32 %call9.i.i.i, -2
  br i1 %cond, label %hidpp_set_wireless_feature_index.exit.if.then140_crit_edge, label %hidpp_set_wireless_feature_index.exit.hid_hw_init_fail_crit_edge

hidpp_set_wireless_feature_index.exit.hid_hw_init_fail_crit_edge: ; preds = %hidpp_set_wireless_feature_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %hid_hw_init_fail

hidpp_set_wireless_feature_index.exit.if.then140_crit_edge: ; preds = %hidpp_set_wireless_feature_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then140

if.then140:                                       ; preds = %hidpp_set_wireless_feature_index.exit.if.then140_crit_edge, %hidpp_set_wireless_feature_index.exit.thread405
  %132 = ptrtoint ptr %wireless_feature_index.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %wireless_feature_index.i, align 8
  br label %land.lhs.true149

land.lhs.true149:                                 ; preds = %if.then140, %hidpp_set_wireless_feature_index.exit.thread407, %land.lhs.true132.land.lhs.true149_crit_edge
  %133 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %quirks, align 4
  %and151 = and i32 %134, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %land.lhs.true161.critedge, label %if.then153

if.then153:                                       ; preds = %land.lhs.true149
  %call154 = call fastcc i32 @wtp_get_config(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.then153.if.end171_crit_edge, label %if.then153.hid_hw_init_fail_crit_edge

if.then153.hid_hw_init_fail_crit_edge:            ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #14
  br label %hid_hw_init_fail

if.then153.if.end171_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171

land.lhs.true161.critedge:                        ; preds = %land.lhs.true149
  %and163 = and i32 %134, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool164.not = icmp eq i32 %and163, 0
  br i1 %tobool164.not, label %land.lhs.true161.critedge.if.end171_crit_edge, label %if.then165

land.lhs.true161.critedge.if.end171_crit_edge:    ; preds = %land.lhs.true161.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171

if.then165:                                       ; preds = %land.lhs.true161.critedge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i) #12
  %135 = call ptr @memset(ptr %response.i, i32 255, i32 64)
  %136 = call ptr @memset(ptr %data, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i.i350) #12
  %137 = call ptr @memset(ptr %response.i.i350, i32 255, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %138 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i351 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %138, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i.i.i352 = icmp eq ptr %call7.i.i.i.i.i351, null
  br i1 %tobool.not.i.i.i352, label %if.then165.hidpp_root_get_feature.exit.thread.i_crit_edge, label %hidpp_send_fap_command_sync.exit.i.i358

if.then165.hidpp_root_get_feature.exit.thread.i_crit_edge: ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread.i

hidpp_send_fap_command_sync.exit.i.i358:          ; preds = %if.then165
  %139 = ptrtoint ptr %call7.i.i.i.i.i351 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 17, ptr %call7.i.i.i.i.i351, align 8
  %140 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i351, i32 0, i32 2
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %140, align 2
  %funcindex_clientid7.i.i.i353 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i351, i32 0, i32 2, i32 0, i32 1
  %142 = ptrtoint ptr %funcindex_clientid7.i.i.i353 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 1, ptr %funcindex_clientid7.i.i.i353, align 1
  %params8.i.i.i354 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i351, i32 0, i32 2, i32 0, i32 2
  %143 = ptrtoint ptr %params8.i.i.i354 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 -127, ptr %params8.i.i.i354, align 4
  %params.sroa.5.0.params8.i.sroa_idx.i.i355 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i351, i32 0, i32 2, i32 0, i32 2, i32 1
  %144 = ptrtoint ptr %params.sroa.5.0.params8.i.sroa_idx.i.i355 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 35, ptr %params.sroa.5.0.params8.i.sroa_idx.i.i355, align 1
  %call9.i.i.i356 = call fastcc i32 @hidpp_send_message_sync(ptr noundef nonnull %call.i, ptr noundef nonnull %call7.i.i.i.i.i351, ptr noundef nonnull %response.i.i350) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i351) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i356)
  %tobool.not.i.i357 = icmp eq i32 %call9.i.i.i356, 0
  br i1 %tobool.not.i.i357, label %if.end.i.i361, label %hidpp_send_fap_command_sync.exit.i.i358.hidpp_root_get_feature.exit.thread.i_crit_edge

hidpp_send_fap_command_sync.exit.i.i358.hidpp_root_get_feature.exit.thread.i_crit_edge: ; preds = %hidpp_send_fap_command_sync.exit.i.i358
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread.i

if.end.i.i361:                                    ; preds = %hidpp_send_fap_command_sync.exit.i.i358
  %params4.i.i359 = getelementptr inbounds %struct.hidpp_report, ptr %response.i.i350, i32 0, i32 2, i32 0, i32 2
  %145 = ptrtoint ptr %params4.i.i359 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %params4.i.i359, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %cmp.i.i360 = icmp eq i8 %146, 0
  br i1 %cmp.i.i360, label %if.end.i.i361.hidpp_root_get_feature.exit.thread.i_crit_edge, label %if.end.i363

if.end.i.i361.hidpp_root_get_feature.exit.thread.i_crit_edge: ; preds = %if.end.i.i361
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread.i

hidpp_root_get_feature.exit.thread.i:             ; preds = %if.end.i.i361.hidpp_root_get_feature.exit.thread.i_crit_edge, %hidpp_send_fap_command_sync.exit.i.i358.hidpp_root_get_feature.exit.thread.i_crit_edge, %if.then165.hidpp_root_get_feature.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -12, %if.then165.hidpp_root_get_feature.exit.thread.i_crit_edge ], [ -2, %if.end.i.i361.hidpp_root_get_feature.exit.thread.i_crit_edge ], [ %call9.i.i.i356, %hidpp_send_fap_command_sync.exit.i.i358.hidpp_root_get_feature.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i.i350) #12
  br label %g920_get_config.exit.thread

if.end.i363:                                      ; preds = %if.end.i.i361
  %147 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %0, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i.i350) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %148 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i362 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %148, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i86.i = icmp eq ptr %call7.i.i.i.i362, null
  br i1 %tobool.not.i86.i, label %if.end.i363.g920_get_config.exit.thread_crit_edge, label %hidpp_send_fap_command_sync.exit.i

if.end.i363.g920_get_config.exit.thread_crit_edge: ; preds = %if.end.i363
  call void @__sanitizer_cov_trace_pc() #14
  br label %g920_get_config.exit.thread

hidpp_send_fap_command_sync.exit.i:               ; preds = %if.end.i363
  %149 = ptrtoint ptr %call7.i.i.i.i362 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 17, ptr %call7.i.i.i.i362, align 8
  %150 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i362, i32 0, i32 2
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %146, ptr %150, align 2
  %funcindex_clientid7.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i362, i32 0, i32 2, i32 0, i32 1
  %152 = ptrtoint ptr %funcindex_clientid7.i.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 1, ptr %funcindex_clientid7.i.i, align 1
  %call9.i.i = call fastcc i32 @hidpp_send_message_sync(ptr noundef nonnull %call.i, ptr noundef nonnull %call7.i.i.i.i362, ptr noundef nonnull %response.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i362) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool3.not.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool3.not.i, label %if.end7.i, label %if.then4.i

if.then4.i:                                       ; preds = %hidpp_send_fap_command_sync.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %cmp.i364 = icmp slt i32 %call9.i.i, 0
  br i1 %cmp.i364, label %if.then4.i.g920_get_config.exit.thread_crit_edge, label %do.end.i366

if.then4.i.g920_get_config.exit.thread_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %g920_get_config.exit.thread

do.end.i366:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  %153 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %call.i, align 8
  %dev.i365 = getelementptr inbounds %struct.hid_device, ptr %154, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i365, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.74, i32 noundef %call9.i.i) #15
  br label %g920_get_config.exit.thread

if.end7.i:                                        ; preds = %hidpp_send_fap_command_sync.exit.i
  %params.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i, i32 0, i32 2, i32 0, i32 2
  %155 = ptrtoint ptr %params.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %params.i, align 1
  %sub.i = add i8 %156, -1
  %157 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %sub.i, ptr %4, align 1
  %158 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %160 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i89.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %160, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i90.i = icmp eq ptr %call7.i.i.i89.i, null
  br i1 %tobool.not.i90.i, label %if.end7.i.do.end15.i_crit_edge, label %hidpp_send_fap_command_sync.exit97.i

if.end7.i.do.end15.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15.i

hidpp_send_fap_command_sync.exit97.i:             ; preds = %if.end7.i
  %161 = ptrtoint ptr %call7.i.i.i89.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 17, ptr %call7.i.i.i89.i, align 8
  %162 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i89.i, i32 0, i32 2
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %159, ptr %162, align 2
  %funcindex_clientid7.i92.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i89.i, i32 0, i32 2, i32 0, i32 1
  %164 = ptrtoint ptr %funcindex_clientid7.i92.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 17, ptr %funcindex_clientid7.i92.i, align 1
  %call9.i94.i = call fastcc i32 @hidpp_send_message_sync(ptr noundef nonnull %call.i, ptr noundef nonnull %call7.i.i.i89.i, ptr noundef nonnull %response.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i89.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i94.i)
  %tobool11.not.i = icmp eq i32 %call9.i94.i, 0
  br i1 %tobool11.not.i, label %hidpp_send_fap_command_sync.exit97.i.if.end18.i_crit_edge, label %hidpp_send_fap_command_sync.exit97.i.do.end15.i_crit_edge

hidpp_send_fap_command_sync.exit97.i.do.end15.i_crit_edge: ; preds = %hidpp_send_fap_command_sync.exit97.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15.i

hidpp_send_fap_command_sync.exit97.i.if.end18.i_crit_edge: ; preds = %hidpp_send_fap_command_sync.exit97.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

do.end15.i:                                       ; preds = %hidpp_send_fap_command_sync.exit97.i.do.end15.i_crit_edge, %if.end7.i.do.end15.i_crit_edge
  %165 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %call.i, align 8
  %dev17.i = getelementptr inbounds %struct.hid_device, ptr %166, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev17.i, ptr noundef nonnull @.str.76) #15
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end15.i, %hidpp_send_fap_command_sync.exit97.i.if.end18.i_crit_edge
  %167 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %169 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i98.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %169, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i99.i = icmp eq ptr %call7.i.i.i98.i, null
  br i1 %tobool.not.i99.i, label %if.end18.i.do.end25.i_crit_edge, label %hidpp_send_fap_command_sync.exit106.i

if.end18.i.do.end25.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25.i

hidpp_send_fap_command_sync.exit106.i:            ; preds = %if.end18.i
  %170 = ptrtoint ptr %call7.i.i.i98.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 17, ptr %call7.i.i.i98.i, align 8
  %171 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i98.i, i32 0, i32 2
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %168, ptr %171, align 2
  %funcindex_clientid7.i101.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i98.i, i32 0, i32 2, i32 0, i32 1
  %173 = ptrtoint ptr %funcindex_clientid7.i101.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 81, ptr %funcindex_clientid7.i101.i, align 1
  %call9.i103.i = call fastcc i32 @hidpp_send_message_sync(ptr noundef nonnull %call.i, ptr noundef nonnull %call7.i.i.i98.i, ptr noundef nonnull %response.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i98.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i103.i)
  %tobool21.not.i = icmp eq i32 %call9.i103.i, 0
  br i1 %tobool21.not.i, label %cond.false.critedge.i, label %hidpp_send_fap_command_sync.exit106.i.do.end25.i_crit_edge

hidpp_send_fap_command_sync.exit106.i.do.end25.i_crit_edge: ; preds = %hidpp_send_fap_command_sync.exit106.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25.i

do.end25.i:                                       ; preds = %hidpp_send_fap_command_sync.exit106.i.do.end25.i_crit_edge, %if.end18.i.do.end25.i_crit_edge
  %174 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %call.i, align 8
  %dev27.i = getelementptr inbounds %struct.hid_device, ptr %175, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev27.i, ptr noundef nonnull @.str.79) #15
  br label %cond.end.i

cond.false.critedge.i:                            ; preds = %hidpp_send_fap_command_sync.exit106.i
  call void @__sanitizer_cov_trace_pc() #14
  %176 = ptrtoint ptr %params.i to i32
  call void @__asan_loadN_noabort(i32 %176, i32 2)
  %177 = load i16, ptr %params.i, align 1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.critedge.i, %do.end25.i
  %cond.i = phi i16 [ %177, %cond.false.critedge.i ], [ 900, %do.end25.i ]
  %178 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %cond.i, ptr %2, align 4
  %179 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %181 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i107.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %181, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i108.i = icmp eq ptr %call7.i.i.i107.i, null
  br i1 %tobool.not.i108.i, label %cond.end.i.do.end41.i_crit_edge, label %hidpp_send_fap_command_sync.exit115.i

cond.end.i.do.end41.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end41.i

hidpp_send_fap_command_sync.exit115.i:            ; preds = %cond.end.i
  %182 = ptrtoint ptr %call7.i.i.i107.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 17, ptr %call7.i.i.i107.i, align 8
  %183 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i107.i, i32 0, i32 2
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %180, ptr %183, align 2
  %funcindex_clientid7.i110.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i107.i, i32 0, i32 2, i32 0, i32 1
  %185 = ptrtoint ptr %funcindex_clientid7.i110.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 113, ptr %funcindex_clientid7.i110.i, align 1
  %call9.i112.i = call fastcc i32 @hidpp_send_message_sync(ptr noundef nonnull %call.i, ptr noundef nonnull %call7.i.i.i107.i, ptr noundef nonnull %response.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i107.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i112.i)
  %tobool37.not.i = icmp eq i32 %call9.i112.i, 0
  br i1 %tobool37.not.i, label %cond.false47.critedge.i, label %hidpp_send_fap_command_sync.exit115.i.do.end41.i_crit_edge

hidpp_send_fap_command_sync.exit115.i.do.end41.i_crit_edge: ; preds = %hidpp_send_fap_command_sync.exit115.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end41.i

do.end41.i:                                       ; preds = %hidpp_send_fap_command_sync.exit115.i.do.end41.i_crit_edge, %cond.end.i.do.end41.i_crit_edge
  %186 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %call.i, align 8
  %dev43.i = getelementptr inbounds %struct.hid_device, ptr %187, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev43.i, ptr noundef nonnull @.str.82) #15
  br label %cond.end52.i

cond.false47.critedge.i:                          ; preds = %hidpp_send_fap_command_sync.exit115.i
  call void @__sanitizer_cov_trace_pc() #14
  %188 = ptrtoint ptr %params.i to i32
  call void @__asan_loadN_noabort(i32 %188, i32 2)
  %189 = load i16, ptr %params.i, align 1
  br label %cond.end52.i

cond.end52.i:                                     ; preds = %cond.false47.critedge.i, %do.end41.i
  %cond53.i = phi i16 [ %189, %cond.false47.critedge.i ], [ -1, %do.end41.i ]
  %190 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %cond53.i, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i116.i) #12
  %191 = call ptr @memset(ptr %response.i116.i, i32 255, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %192 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool.not.i117.i = icmp eq i32 %192, 0
  br i1 %tobool.not.i117.i, label %cond.end52.i.do.end3.i.i_crit_edge, label %do.end.i.i

cond.end52.i.do.end3.i.i_crit_edge:               ; preds = %cond.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3.i.i

do.end.i.i:                                       ; preds = %cond.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i367 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.4) #15
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %do.end.i.i, %cond.end52.i.do.end3.i.i_crit_edge
  %193 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %195 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i118.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %195, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i.i119.i = icmp eq ptr %call7.i.i.i.i118.i, null
  br i1 %tobool.not.i.i119.i, label %do.end3.i.i.g920_get_config.exit_crit_edge, label %hidpp_send_fap_command_sync.exit.i123.i

do.end3.i.i.g920_get_config.exit_crit_edge:       ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %g920_get_config.exit

hidpp_send_fap_command_sync.exit.i123.i:          ; preds = %do.end3.i.i
  %196 = ptrtoint ptr %call7.i.i.i.i118.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 18, ptr %call7.i.i.i.i118.i, align 8
  %197 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i118.i, i32 0, i32 2
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %194, ptr %197, align 2
  %funcindex_clientid7.i.i120.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i118.i, i32 0, i32 2, i32 0, i32 1
  %199 = ptrtoint ptr %funcindex_clientid7.i.i120.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 33, ptr %funcindex_clientid7.i.i120.i, align 1
  %params8.i.i121.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i118.i, i32 0, i32 2, i32 0, i32 2
  %200 = call ptr @memcpy(ptr %params8.i.i121.i, ptr @__const.g920_ff_set_autocenter.params, i32 18)
  %call9.i.i122.i = call fastcc i32 @hidpp_send_message_sync(ptr noundef nonnull %call.i, ptr noundef nonnull %call7.i.i.i.i118.i, ptr noundef nonnull %response.i116.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i118.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i122.i)
  %tobool5.not.i.i = icmp eq i32 %call9.i.i122.i, 0
  br i1 %tobool5.not.i.i, label %g920_get_config.exit.thread411, label %hidpp_send_fap_command_sync.exit.i123.i.g920_get_config.exit_crit_edge

hidpp_send_fap_command_sync.exit.i123.i.g920_get_config.exit_crit_edge: ; preds = %hidpp_send_fap_command_sync.exit.i123.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %g920_get_config.exit

g920_get_config.exit.thread411:                   ; preds = %hidpp_send_fap_command_sync.exit.i123.i
  call void @__sanitizer_cov_trace_pc() #14
  %params10.i.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i116.i, i32 0, i32 2, i32 0, i32 2
  %201 = ptrtoint ptr %params10.i.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %params10.i.i, align 1
  %203 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %202, ptr %3, align 2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i116.i) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i) #12
  br label %if.end171

g920_get_config.exit.thread:                      ; preds = %do.end.i366, %if.then4.i.g920_get_config.exit.thread_crit_edge, %if.end.i363.g920_get_config.exit.thread_crit_edge, %hidpp_root_get_feature.exit.thread.i
  %retval.0.i368.ph = phi i32 [ -12, %if.end.i363.g920_get_config.exit.thread_crit_edge ], [ %retval.0.i.ph.i, %hidpp_root_get_feature.exit.thread.i ], [ %call9.i.i, %if.then4.i.g920_get_config.exit.thread_crit_edge ], [ -71, %do.end.i366 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i) #12
  br label %hid_hw_init_fail

g920_get_config.exit:                             ; preds = %hidpp_send_fap_command_sync.exit.i123.i.g920_get_config.exit_crit_edge, %do.end3.i.i.g920_get_config.exit_crit_edge
  %retval.0.i18.i.i = phi i32 [ %call9.i.i122.i, %hidpp_send_fap_command_sync.exit.i123.i.g920_get_config.exit_crit_edge ], [ -12, %do.end3.i.i.g920_get_config.exit_crit_edge ]
  %204 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %call.i, align 8
  %dev.i.i = getelementptr inbounds %struct.hid_device, ptr %205, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.87) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i116.i) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i) #12
  br label %hid_hw_init_fail

if.end171:                                        ; preds = %g920_get_config.exit.thread411, %land.lhs.true161.critedge.if.end171_crit_edge, %if.then153.if.end171_crit_edge, %if.end129.if.end171_crit_edge
  call fastcc void @hidpp_connect_event(ptr noundef nonnull %call.i)
  %206 = ptrtoint ptr %io_started.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %io_started.i, align 4, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool.not.i370 = icmp eq i8 %207, 0
  br i1 %tobool.not.i370, label %do.end.i372, label %if.end.i374

do.end.i372:                                      ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.113) #15
  br label %hid_device_io_stop.exit

if.end.i374:                                      ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #14
  %208 = ptrtoint ptr %io_started.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 0, ptr %io_started.i, align 4
  %driver_input_lock.i373 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 17
  call void @down(ptr noundef %driver_input_lock.i373) #12
  br label %hid_device_io_stop.exit

hid_device_io_stop.exit:                          ; preds = %if.end.i374, %do.end.i372
  call void @hid_hw_close(ptr noundef %hdev) #12
  call void @hid_hw_stop(ptr noundef %hdev) #12
  %209 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %quirks, align 4
  %and173 = and i32 %210, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  %spec.select = select i1 %tobool174.not, i32 45, i32 44
  %call178 = call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef %spec.select) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %if.end185, label %do.end183

do.end183:                                        ; preds = %hid_device_io_stop.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.3) #15
  br label %hid_hw_start_fail

if.end185:                                        ; preds = %hid_device_io_stop.exit
  %211 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %quirks, align 4
  %and187 = and i32 %212, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp eq i32 %and187, 0
  br i1 %tobool188.not, label %if.end185.cleanup_crit_edge, label %if.then189

if.end185.cleanup_crit_edge:                      ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then189:                                       ; preds = %if.end185
  %213 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %call.i, align 8
  %dev1.i = getelementptr inbounds %struct.hid_device, ptr %214, i32 0, i32 18
  %parent.i = getelementptr inbounds %struct.hid_device, ptr %214, i32 0, i32 18, i32 1
  %215 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %parent.i, align 8
  %parent2.i = getelementptr inbounds %struct.device, ptr %216, i32 0, i32 1
  %217 = ptrtoint ptr %parent2.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %parent2.i, align 8
  %bcdDevice3.i = getelementptr i8, ptr %218, i32 940
  %219 = ptrtoint ptr %bcdDevice3.i to i32
  call void @__asan_loadN_noabort(i32 %219, i32 2)
  %220 = load i16, ptr %bcdDevice3.i, align 1
  %221 = lshr i16 %220, 8
  %222 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %4, align 1
  %conv.i = zext i8 %223 to i32
  %inputs.i = getelementptr inbounds %struct.hid_device, ptr %214, i32 0, i32 36
  %224 = ptrtoint ptr %inputs.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load volatile ptr, ptr %inputs.i, align 4
  %cmp.i.not.i = icmp eq ptr %225, %inputs.i
  br i1 %cmp.i.not.i, label %do.end.i376, label %if.end.i377

do.end.i376:                                      ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.115) #15
  br label %do.end195

if.end.i377:                                      ; preds = %if.then189
  %input.i = getelementptr inbounds %struct.hid_input, ptr %225, i32 0, i32 2
  %226 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %input.i, align 4
  %tobool9.not.i = icmp eq ptr %227, null
  br i1 %tobool9.not.i, label %do.end13.i378, label %if.end15.i379

do.end13.i378:                                    ; preds = %if.end.i377
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.118) #15
  br label %do.end195

if.end15.i379:                                    ; preds = %if.end.i377
  %ffbit.i = getelementptr inbounds %struct.input_dev, ptr %227, i32 0, i32 12
  call void @_set_bit(i32 noundef 82, ptr noundef %ffbit.i) #12
  call void @_set_bit(i32 noundef 81, ptr noundef %ffbit.i) #12
  call void @_set_bit(i32 noundef 90, ptr noundef %ffbit.i) #12
  call void @_set_bit(i32 noundef 88, ptr noundef %ffbit.i) #12
  call void @_set_bit(i32 noundef 91, ptr noundef %ffbit.i) #12
  call void @_set_bit(i32 noundef 92, ptr noundef %ffbit.i) #12
  call void @_set_bit(i32 noundef 89, ptr noundef %ffbit.i) #12
  call void @_set_bit(i32 noundef 83, ptr noundef %ffbit.i) #12
  call void @_set_bit(i32 noundef 85, ptr noundef %ffbit.i) #12
  call void @_set_bit(i32 noundef 97, ptr noundef %ffbit.i) #12
  call void @_set_bit(i32 noundef 96, ptr noundef %ffbit.i) #12
  %conv17.i = trunc i16 %221 to i8
  %conv22.i = zext i16 %221 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %220)
  %cmp23.i = icmp ugt i16 %220, 511
  br i1 %cmp23.i, label %for.cond26.preheader.i, label %if.end15.i379.if.end39.i_crit_edge

if.end15.i379.if.end39.i_crit_edge:               ; preds = %if.end15.i379
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.i

for.cond26.preheader.i:                           ; preds = %if.end15.i379
  call void @__sanitizer_cov_trace_pc() #14
  call void @_set_bit(i32 noundef 87, ptr noundef %ffbit.i) #12
  call void @_set_bit(i32 noundef 84, ptr noundef %ffbit.i) #12
  call void @_set_bit(i32 noundef 86, ptr noundef %ffbit.i) #12
  br label %if.end39.i

if.end39.i:                                       ; preds = %for.cond26.preheader.i, %if.end15.i379.if.end39.i_crit_edge
  %call40.i = call i32 @input_ff_create(ptr noundef nonnull %227, i32 noundef %conv.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end47.i, label %do.end45.i

do.end45.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev46.i = getelementptr inbounds %struct.input_dev, ptr %227, i32 0, i32 40
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46.i, ptr noundef nonnull @.str.121) #15
  br label %do.end195

if.end47.i:                                       ; preds = %if.end39.i
  %call48.i = call ptr @kmemdup(ptr noundef nonnull %data, i32 noundef 24, i32 noundef 3264) #12
  %tobool49.not.i = icmp eq ptr %call48.i, null
  br i1 %tobool49.not.i, label %if.end47.i.do.end195_crit_edge, label %if.end7.i.i.i

if.end47.i.do.end195_crit_edge:                   ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end195

if.end7.i.i.i:                                    ; preds = %if.end47.i
  %228 = shl nuw nsw i32 %conv.i, 2
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %228, i32 noundef 3520) #17
  %effect_ids.i = getelementptr inbounds %struct.hidpp_ff_private_data, ptr %call48.i, i32 0, i32 7
  %229 = ptrtoint ptr %effect_ids.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %call8.i.i.i, ptr %effect_ids.i, align 4
  %tobool54.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool54.not.i, label %if.then55.i, label %if.end56.i

if.then55.i:                                      ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call48.i) #12
  br label %do.end195

if.end56.i:                                       ; preds = %if.end7.i.i.i
  %call57.i = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.40, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.123) #12
  %wq.i = getelementptr inbounds %struct.hidpp_ff_private_data, ptr %call48.i, i32 0, i32 8
  %230 = ptrtoint ptr %wq.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %call57.i, ptr %wq.i, align 4
  %tobool59.not.i = icmp eq ptr %call57.i, null
  br i1 %tobool59.not.i, label %if.then60.i, label %if.end62.i

if.then60.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  %231 = ptrtoint ptr %effect_ids.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %effect_ids.i, align 4
  call void @kfree(ptr noundef %232) #12
  call void @kfree(ptr noundef nonnull %call48.i) #12
  br label %do.end195

if.end62.i:                                       ; preds = %if.end56.i
  %233 = ptrtoint ptr %call48.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %call.i, ptr %call48.i, align 4
  %version64.i = getelementptr inbounds %struct.hidpp_ff_private_data, ptr %call48.i, i32 0, i32 2
  %234 = ptrtoint ptr %version64.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %conv17.i, ptr %version64.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %cmp66158.not.i = icmp eq i8 %223, 0
  br i1 %cmp66158.not.i, label %if.end62.i.for.end73.i_crit_edge, label %if.end62.i.for.body68.i_crit_edge

if.end62.i.for.body68.i_crit_edge:                ; preds = %if.end62.i
  br label %for.body68.i

if.end62.i.for.end73.i_crit_edge:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end73.i

for.body68.i:                                     ; preds = %for.body68.i.for.body68.i_crit_edge, %if.end62.i.for.body68.i_crit_edge
  %j.2159.i = phi i32 [ %inc72.i, %for.body68.i.for.body68.i_crit_edge ], [ 0, %if.end62.i.for.body68.i_crit_edge ]
  %235 = ptrtoint ptr %effect_ids.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %effect_ids.i, align 4
  %arrayidx70.i = getelementptr i32, ptr %236, i32 %j.2159.i
  %237 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 -1, ptr %arrayidx70.i, align 4
  %inc72.i = add nuw nsw i32 %j.2159.i, 1
  %exitcond.not.i = icmp eq i32 %inc72.i, %conv.i
  br i1 %exitcond.not.i, label %for.body68.i.for.end73.i_crit_edge, label %for.body68.i.for.body68.i_crit_edge

for.body68.i.for.body68.i_crit_edge:              ; preds = %for.body68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body68.i

for.body68.i.for.end73.i_crit_edge:               ; preds = %for.body68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end73.i

for.end73.i:                                      ; preds = %for.body68.i.for.end73.i_crit_edge, %if.end62.i.for.end73.i_crit_edge
  %ff74.i = getelementptr inbounds %struct.input_dev, ptr %227, i32 0, i32 20
  %238 = ptrtoint ptr %ff74.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %ff74.i, align 8
  %private.i = getelementptr inbounds %struct.ff_device, ptr %239, i32 0, i32 6
  %240 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %call48.i, ptr %private.i, align 4
  %241 = ptrtoint ptr %239 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr @hidpp_ff_upload_effect, ptr %239, align 4
  %erase.i = getelementptr inbounds %struct.ff_device, ptr %239, i32 0, i32 1
  %242 = ptrtoint ptr %erase.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr @hidpp_ff_erase_effect, ptr %erase.i, align 4
  %playback.i = getelementptr inbounds %struct.ff_device, ptr %239, i32 0, i32 2
  %243 = ptrtoint ptr %playback.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr @hidpp_ff_playback, ptr %playback.i, align 4
  %set_gain.i = getelementptr inbounds %struct.ff_device, ptr %239, i32 0, i32 3
  %244 = ptrtoint ptr %set_gain.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr @hidpp_ff_set_gain, ptr %set_gain.i, align 4
  %set_autocenter.i = getelementptr inbounds %struct.ff_device, ptr %239, i32 0, i32 4
  %245 = ptrtoint ptr %set_autocenter.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr @hidpp_ff_set_autocenter, ptr %set_autocenter.i, align 4
  %destroy.i = getelementptr inbounds %struct.ff_device, ptr %239, i32 0, i32 5
  %246 = ptrtoint ptr %destroy.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr @hidpp_ff_destroy, ptr %destroy.i, align 4
  %247 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %call.i, align 8
  %dev76.i = getelementptr inbounds %struct.hid_device, ptr %248, i32 0, i32 18
  %call77.i = call i32 @device_create_file(ptr noundef %dev76.i, ptr noundef nonnull @dev_attr_range) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool78.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool78.not.i, label %for.end73.i.hidpp_ff_init.exit_crit_edge, label %do.end82.i

for.end73.i.hidpp_ff_init.exit_crit_edge:         ; preds = %for.end73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_ff_init.exit

do.end82.i:                                       ; preds = %for.end73.i
  call void @__sanitizer_cov_trace_pc() #14
  %249 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %call.i, align 8
  %dev84.i = getelementptr inbounds %struct.hid_device, ptr %250, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev84.i, ptr noundef nonnull @.str.125, i32 noundef %call77.i) #15
  br label %hidpp_ff_init.exit

hidpp_ff_init.exit:                               ; preds = %do.end82.i, %for.end73.i.hidpp_ff_init.exit_crit_edge
  %workqueue_size.i = getelementptr inbounds %struct.hidpp_ff_private_data, ptr %call48.i, i32 0, i32 9
  %call.i.i.i385 = call zeroext i1 @__kasan_check_write(ptr noundef %workqueue_size.i, i32 noundef 4) #12
  %251 = ptrtoint ptr %workqueue_size.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store volatile i32 0, ptr %workqueue_size.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.128, i32 noundef %conv22.i) #15
  br label %cleanup

do.end195:                                        ; preds = %if.then60.i, %if.then55.i, %if.end47.i.do.end195_crit_edge, %do.end45.i, %do.end13.i378, %do.end.i376
  %retval.0.i386.ph = phi i32 [ -12, %if.end47.i.do.end195_crit_edge ], [ -22, %do.end13.i378 ], [ -12, %if.then55.i ], [ -12, %if.then60.i ], [ %call40.i, %do.end45.i ], [ -19, %do.end.i376 ]
  %252 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %call.i, align 8
  %dev197 = getelementptr inbounds %struct.hid_device, ptr %253, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev197, ptr noundef nonnull @.str.29, i32 noundef %retval.0.i386.ph) #15
  br label %cleanup

hid_hw_init_fail:                                 ; preds = %g920_get_config.exit, %g920_get_config.exit.thread, %if.then153.hid_hw_init_fail_crit_edge, %hidpp_set_wireless_feature_index.exit.hid_hw_init_fail_crit_edge, %hidpp_set_wireless_feature_index.exit.thread, %if.then123
  %ret.1 = phi i32 [ %call154, %if.then153.hid_hw_init_fail_crit_edge ], [ %retval.0.i18.i.i, %g920_get_config.exit ], [ -19, %if.then123 ], [ %call9.i.i.i, %hidpp_set_wireless_feature_index.exit.hid_hw_init_fail_crit_edge ], [ -12, %hidpp_set_wireless_feature_index.exit.thread ], [ %retval.0.i368.ph, %g920_get_config.exit.thread ]
  call void @hid_hw_close(ptr noundef %hdev) #12
  br label %hid_hw_open_fail

hid_hw_open_fail:                                 ; preds = %hid_hw_init_fail, %do.end103
  %ret.2 = phi i32 [ %call97, %do.end103 ], [ %ret.1, %hid_hw_init_fail ]
  call void @hid_hw_stop(ptr noundef %hdev) #12
  br label %hid_hw_start_fail

hid_hw_start_fail:                                ; preds = %hid_hw_open_fail, %do.end183, %do.end94
  %ret.3 = phi i32 [ %call89, %do.end94 ], [ %ret.2, %hid_hw_open_fail ], [ %call178, %do.end183 ]
  call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @ps_attribute_group) #12
  %call203 = call zeroext i1 @cancel_work_sync(ptr noundef %work) #12
  call void @mutex_destroy(ptr noundef %send_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %hid_hw_start_fail, %do.end195, %hidpp_ff_init.exit, %if.end185.cleanup_crit_edge, %if.then56.cleanup_crit_edge, %if.then48.cleanup_crit_edge, %if.then10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i309, %do.end ], [ %ret.3, %hid_hw_start_fail ], [ %call12, %if.then10 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i386.ph, %do.end195 ], [ 0, %hidpp_ff_init.exit ], [ 0, %if.end185.cleanup_crit_edge ], [ -12, %if.then48.cleanup_crit_edge ], [ -12, %if.then56.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hidpp_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @hid_hw_stop(ptr noundef %hdev) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @ps_attribute_group) #12
  tail call void @hid_hw_stop(ptr noundef %hdev) #12
  %work = getelementptr inbounds %struct.hidpp_device, ptr %1, i32 0, i32 11
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #12
  %send_mutex = getelementptr inbounds %struct.hidpp_device, ptr %1, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %send_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidpp_raw_event(ptr noundef %hdev, ptr nocapture noundef readnone %report, ptr noundef %data, i32 noundef %size) #2 align 64 {
entry:
  %raw.i.i = alloca %struct.hidpp_touchpad_raw_xy, align 2
  %raw.i = alloca %struct.hidpp_touchpad_raw_xy, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.206)
  switch i8 %3, label %if.end.if.end28_crit_edge [
    i8 18, label %sw.bb
    i8 17, label %sw.bb5
    i8 16, label %sw.bb15
  ]

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

sw.bb:                                            ; preds = %if.end
  %very_long_report_length = getelementptr inbounds %struct.hidpp_device, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %very_long_report_length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %very_long_report_length, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %size)
  %cmp.not = icmp eq i32 %6, %size
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %do.end

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.180, i32 noundef %size) #15
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %size)
  %cmp6.not = icmp eq i32 %size, 20
  br i1 %cmp6.not, label %sw.bb5.sw.epilog_crit_edge, label %do.end11

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end11:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  %dev12 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.180, i32 noundef %size) #15
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp16.not = icmp eq i32 %size, 7
  br i1 %cmp16.not, label %sw.bb15.sw.epilog_crit_edge, label %do.end21

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end21:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #14
  %dev22 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.180, i32 noundef %size) #15
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb15.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %.sink = phi i32 [ %size, %sw.bb.sw.epilog_crit_edge ], [ 20, %sw.bb5.sw.epilog_crit_edge ], [ 7, %sw.bb15.sw.epilog_crit_edge ]
  %call24 = tail call fastcc i32 @hidpp_raw_hidpp_event(ptr noundef nonnull %1, ptr noundef %data, i32 noundef %.sink)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %sw.epilog.if.end28_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.epilog.if.end28_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.end28:                                         ; preds = %sw.epilog.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %quirks = getelementptr inbounds %struct.hidpp_device, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %quirks, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end28
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %private_data.i = getelementptr inbounds %struct.hidpp_device, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %raw.i) #12
  %13 = call ptr @memset(ptr %raw.i, i32 255, i32 26)
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then30.wtp_raw_event.exit_crit_edge, label %lor.lhs.false.i

if.then30.wtp_raw_event.exit_crit_edge:           ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %wtp_raw_event.exit

lor.lhs.false.i:                                  ; preds = %if.then30
  %input.i = getelementptr inbounds %struct.hidpp_device, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %input.i, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.wtp_raw_event.exit_crit_edge, label %if.end.i

lor.lhs.false.i.wtp_raw_event.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wtp_raw_event.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %data, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.207)
  switch i8 %17, label %if.end.i.wtp_raw_event.exit_crit_edge [
    i8 2, label %sw.bb.i
    i8 17, label %sw.bb29.i
  ]

if.end.i.wtp_raw_event.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wtp_raw_event.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size)
  %cmp.i = icmp slt i32 %size, 2
  br i1 %cmp.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.196, i32 noundef %size) #15
  br label %wtp_raw_event.exit

if.end4.i:                                        ; preds = %sw.bb.i
  %quirks.i = getelementptr inbounds %struct.hidpp_device, ptr %10, i32 0, i32 15
  %19 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %20, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx8.i = getelementptr i8, ptr %data, i32 1
  %21 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx8.i, align 1
  %23 = and i8 %22, 1
  %24 = zext i8 %23 to i32
  tail call void @input_event(ptr noundef nonnull %15, i32 noundef 1, i32 noundef 272, i32 noundef %24) #12
  %25 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %input.i, align 4
  %27 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx8.i, align 1
  %29 = lshr i8 %28, 1
  %.lobit.i = and i8 %29, 1
  %30 = zext i8 %.lobit.i to i32
  tail call void @input_event(ptr noundef %26, i32 noundef 1, i32 noundef 273, i32 noundef %30) #12
  %31 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %input.i, align 4
  tail call void @input_event(ptr noundef %32, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  br label %wtp_raw_event.exit

if.else.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %size)
  %cmp23.i = icmp ult i32 %size, 21
  br i1 %cmp23.i, label %if.else.i.wtp_raw_event.exit_crit_edge, label %if.end26.i

if.else.i.wtp_raw_event.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wtp_raw_event.exit

if.end26.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx27.i = getelementptr i8, ptr %data, i32 7
  %arrayidx.i.i = getelementptr i8, ptr %data, i32 14
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %34 to i32
  %and.i.i = and i32 %conv.i.i, 15
  %mul.i.i = mul nuw nsw i32 %and.i.i, %and.i.i
  %35 = lshr i32 %conv.i.i, 4
  %mul9.i.i = mul nuw nsw i32 %35, %35
  %add.i.i = add nuw nsw i32 %mul.i.i, %mul9.i.i
  %div1.i.i = lshr i32 %add.i.i, 1
  %conv10.i.i = trunc i32 %div1.i.i to i8
  %arrayidx11.i.i = getelementptr i8, ptr %data, i32 20
  %36 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx11.i.i, align 1
  %conv12.i.i = zext i8 %37 to i32
  %and13.i.i = and i32 %conv12.i.i, 15
  %mul17.i.i = mul nuw nsw i32 %and13.i.i, %and13.i.i
  %38 = lshr i32 %conv12.i.i, 4
  %mul24.i.i = mul nuw nsw i32 %38, %38
  %add25.i.i = add nuw nsw i32 %mul17.i.i, %mul24.i.i
  %div262.i.i = lshr i32 %add25.i.i, 1
  %conv27.i.i = trunc i32 %div262.i.i to i8
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %raw.i.i) #12
  %39 = getelementptr inbounds i8, ptr %raw.i.i, i32 10
  %40 = call ptr @memset(ptr %39, i32 255, i32 16)
  %arrayidx28.i.i = getelementptr i8, ptr %data, i32 8
  %41 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx28.i.i, align 1
  %conv29.i.i = zext i8 %42 to i16
  %43 = ptrtoint ptr %raw.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv29.i.i, ptr %raw.i.i, align 2
  %fingers.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %fingers.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %fingers.i.i, align 2
  %contact_status.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i.i, i32 0, i32 1, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.i.i = icmp ne i8 %34, 0
  %conv32.i.i = zext i1 %tobool.i.i to i8
  %45 = ptrtoint ptr %contact_status.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv32.i.i, ptr %contact_status.i.i, align 1
  %x.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i.i, i32 0, i32 1, i32 0, i32 2
  %arrayidx33.i.i = getelementptr i8, ptr %data, i32 10
  %46 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %arrayidx33.i.i, align 1
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #12
  %49 = ptrtoint ptr %x.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %x.i.i, align 2
  %y.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i.i, i32 0, i32 1, i32 0, i32 3
  %arrayidx34.i.i = getelementptr i8, ptr %data, i32 12
  %50 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %arrayidx34.i.i, align 1
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #12
  %53 = ptrtoint ptr %y.i.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %y.i.i, align 2
  %z.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i.i, i32 0, i32 1, i32 0, i32 4
  %54 = ptrtoint ptr %z.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv10.i.i, ptr %z.i.i, align 2
  %area.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i.i, i32 0, i32 1, i32 0, i32 5
  %55 = ptrtoint ptr %area.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv10.i.i, ptr %area.i.i, align 1
  %arrayidx36.i.i = getelementptr i8, ptr %data, i32 9
  %56 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx36.i.i, align 1
  %58 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %39, align 2
  %arrayinit.element.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i.i, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %arrayinit.element.i.i, align 2
  %contact_status38.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i.i, i32 0, i32 1, i32 1, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool40.i.i = icmp ne i8 %37, 0
  %conv45.i.i = zext i1 %tobool40.i.i to i8
  %60 = ptrtoint ptr %contact_status38.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv45.i.i, ptr %contact_status38.i.i, align 1
  %x46.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i.i, i32 0, i32 1, i32 1, i32 2
  %arrayidx47.i.i = getelementptr i8, ptr %data, i32 16
  %61 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %arrayidx47.i.i, align 1
  %63 = tail call i16 @llvm.bswap.i16(i16 %62) #12
  %64 = ptrtoint ptr %x46.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %x46.i.i, align 2
  %y49.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i.i, i32 0, i32 1, i32 1, i32 3
  %arrayidx50.i.i = getelementptr i8, ptr %data, i32 18
  %65 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %arrayidx50.i.i, align 1
  %67 = tail call i16 @llvm.bswap.i16(i16 %66) #12
  %68 = ptrtoint ptr %y49.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %y49.i.i, align 2
  %z52.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i.i, i32 0, i32 1, i32 1, i32 4
  %69 = ptrtoint ptr %z52.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv27.i.i, ptr %z52.i.i, align 2
  %area53.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i.i, i32 0, i32 1, i32 1, i32 5
  %70 = ptrtoint ptr %area53.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv27.i.i, ptr %area53.i.i, align 1
  %finger_id54.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i.i, i32 0, i32 1, i32 1, i32 6
  %arrayidx55.i.i = getelementptr i8, ptr %data, i32 15
  %71 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx55.i.i, align 1
  %73 = ptrtoint ptr %finger_id54.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %finger_id54.i.i, align 2
  %spurious_flag.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i.i, i32 0, i32 2
  %74 = ptrtoint ptr %spurious_flag.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %spurious_flag.i.i, align 2
  %end_of_frame.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i.i, i32 0, i32 3
  %75 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx27.i, align 1
  %77 = xor i8 %76, -1
  %.lobit.not.i.i = lshr i8 %77, 7
  %78 = ptrtoint ptr %end_of_frame.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %.lobit.not.i.i, ptr %end_of_frame.i.i, align 1
  %finger_count.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i.i, i32 0, i32 4
  %maxcontacts.i.i = getelementptr inbounds %struct.wtp_data, ptr %12, i32 0, i32 5
  %79 = ptrtoint ptr %maxcontacts.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %maxcontacts.i.i, align 1
  %81 = ptrtoint ptr %finger_count.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %finger_count.i.i, align 2
  %button.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i.i, i32 0, i32 5
  %82 = and i8 %76, 1
  %83 = ptrtoint ptr %button.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %button.i.i, align 1
  call fastcc void @wtp_send_raw_xy_event(ptr noundef %10, ptr noundef nonnull %raw.i.i) #12
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %raw.i.i) #12
  br label %wtp_raw_event.exit

sw.bb29.i:                                        ; preds = %if.end.i
  %84 = getelementptr inbounds %struct.hidpp_report, ptr %data, i32 0, i32 2
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %84, align 1
  %mt_feature_index.i = getelementptr inbounds %struct.wtp_data, ptr %12, i32 0, i32 3
  %87 = ptrtoint ptr %mt_feature_index.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %mt_feature_index.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %86, i8 %88)
  %cmp32.not.i = icmp eq i8 %86, %88
  br i1 %cmp32.not.i, label %lor.lhs.false34.i, label %sw.bb29.i.wtp_raw_event.exit_crit_edge

sw.bb29.i.wtp_raw_event.exit_crit_edge:           ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wtp_raw_event.exit

lor.lhs.false34.i:                                ; preds = %sw.bb29.i
  %funcindex_clientid.i = getelementptr inbounds %struct.hidpp_report, ptr %data, i32 0, i32 2, i32 0, i32 1
  %89 = ptrtoint ptr %funcindex_clientid.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %funcindex_clientid.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %cmp36.not.i = icmp eq i8 %90, 0
  br i1 %cmp36.not.i, label %if.end39.i, label %lor.lhs.false34.i.wtp_raw_event.exit_crit_edge

lor.lhs.false34.i.wtp_raw_event.exit_crit_edge:   ; preds = %lor.lhs.false34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wtp_raw_event.exit

if.end39.i:                                       ; preds = %lor.lhs.false34.i
  %91 = call ptr @memset(ptr %raw.i, i32 0, i32 22)
  %arrayidx.i62.i = getelementptr i8, ptr %data, i32 12
  %92 = ptrtoint ptr %arrayidx.i62.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.i62.i, align 1
  %94 = and i8 %93, 1
  %end_of_frame.i63.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i, i32 0, i32 3
  %95 = ptrtoint ptr %end_of_frame.i63.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %end_of_frame.i63.i, align 1
  %96 = lshr i8 %93, 1
  %97 = and i8 %96, 1
  %spurious_flag.i64.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i, i32 0, i32 2
  %98 = ptrtoint ptr %spurious_flag.i64.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %spurious_flag.i64.i, align 2
  %arrayidx6.i.i = getelementptr i8, ptr %data, i32 19
  %99 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx6.i.i, align 1
  %101 = and i8 %100, 15
  %finger_count.i65.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i, i32 0, i32 4
  %102 = ptrtoint ptr %finger_count.i65.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %finger_count.i65.i, align 2
  %103 = lshr i8 %93, 2
  %104 = and i8 %103, 1
  %button.i66.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i, i32 0, i32 5
  %105 = ptrtoint ptr %button.i66.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %button.i66.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i.i = icmp eq i8 %101, 0
  br i1 %tobool.not.i.i, label %if.end39.i.hidpp_touchpad_raw_xy_event.exit.i_crit_edge, label %if.then.i.i

if.end39.i.hidpp_touchpad_raw_xy_event.exit.i_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_touchpad_raw_xy_event.exit.i

if.then.i.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx16.i.i = getelementptr i8, ptr %data, i32 6
  %fingers.i67.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i, i32 0, i32 1
  %106 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx16.i.i, align 1
  %shl.i.i.i = shl i8 %107, 2
  %arrayidx2.i.i.i = getelementptr i8, ptr %data, i32 8
  %108 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx2.i.i.i, align 1
  %shl4.i.i.i = shl i8 %109, 2
  %conv6.i.i.i = zext i8 %shl.i.i.i to i16
  %shl7.i.i.i = shl nuw nsw i16 %conv6.i.i.i, 6
  %arrayidx8.i.i.i = getelementptr i8, ptr %data, i32 7
  %110 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %111 to i16
  %or.i.i.i = or i16 %shl7.i.i.i, %conv9.i.i.i
  %x.i.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i, i32 0, i32 1, i32 0, i32 2
  %112 = ptrtoint ptr %x.i.i.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %or.i.i.i, ptr %x.i.i.i, align 2
  %conv11.i.i.i = zext i8 %shl4.i.i.i to i16
  %shl12.i.i.i = shl nuw nsw i16 %conv11.i.i.i, 6
  %arrayidx13.i.i.i = getelementptr i8, ptr %data, i32 9
  %113 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx13.i.i.i, align 1
  %conv14.i.i.i = zext i8 %114 to i16
  %or15.i.i.i = or i16 %shl12.i.i.i, %conv14.i.i.i
  %y.i.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i, i32 0, i32 1, i32 0, i32 3
  %115 = ptrtoint ptr %y.i.i.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %or15.i.i.i, ptr %y.i.i.i, align 2
  %116 = lshr i8 %107, 6
  %117 = ptrtoint ptr %fingers.i67.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %fingers.i67.i, align 2
  %118 = lshr i8 %109, 6
  %contact_status.i.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i, i32 0, i32 1, i32 0, i32 1
  %119 = ptrtoint ptr %contact_status.i.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %contact_status.i.i.i, align 1
  %arrayidx24.i.i.i = getelementptr i8, ptr %data, i32 10
  %120 = ptrtoint ptr %arrayidx24.i.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx24.i.i.i, align 1
  %z.i.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i, i32 0, i32 1, i32 0, i32 4
  %122 = ptrtoint ptr %z.i.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %z.i.i.i, align 2
  %arrayidx25.i.i.i = getelementptr i8, ptr %data, i32 11
  %123 = ptrtoint ptr %arrayidx25.i.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx25.i.i.i, align 1
  %area.i.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i, i32 0, i32 1, i32 0, i32 5
  %125 = ptrtoint ptr %area.i.i.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %area.i.i.i, align 1
  %126 = lshr i8 %93, 4
  %finger_id.i.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i, i32 0, i32 1, i32 0, i32 6
  %127 = ptrtoint ptr %finger_id.i.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %finger_id.i.i.i, align 2
  %arrayidx18.i.i = getelementptr i8, ptr %data, i32 13
  %arrayidx20.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i, i32 0, i32 1, i32 1
  %128 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx18.i.i, align 1
  %shl.i1.i.i = shl i8 %129, 2
  %arrayidx2.i2.i.i = getelementptr i8, ptr %data, i32 15
  %130 = ptrtoint ptr %arrayidx2.i2.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx2.i2.i.i, align 1
  %shl4.i3.i.i = shl i8 %131, 2
  %conv6.i4.i.i = zext i8 %shl.i1.i.i to i16
  %shl7.i5.i.i = shl nuw nsw i16 %conv6.i4.i.i, 6
  %arrayidx8.i6.i.i = getelementptr i8, ptr %data, i32 14
  %132 = ptrtoint ptr %arrayidx8.i6.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx8.i6.i.i, align 1
  %conv9.i7.i.i = zext i8 %133 to i16
  %or.i8.i.i = or i16 %shl7.i5.i.i, %conv9.i7.i.i
  %x.i9.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i, i32 0, i32 1, i32 1, i32 2
  %134 = ptrtoint ptr %x.i9.i.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %or.i8.i.i, ptr %x.i9.i.i, align 2
  %conv11.i10.i.i = zext i8 %shl4.i3.i.i to i16
  %shl12.i11.i.i = shl nuw nsw i16 %conv11.i10.i.i, 6
  %arrayidx13.i12.i.i = getelementptr i8, ptr %data, i32 16
  %135 = ptrtoint ptr %arrayidx13.i12.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx13.i12.i.i, align 1
  %conv14.i13.i.i = zext i8 %136 to i16
  %or15.i14.i.i = or i16 %shl12.i11.i.i, %conv14.i13.i.i
  %y.i15.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i, i32 0, i32 1, i32 1, i32 3
  %137 = ptrtoint ptr %y.i15.i.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %or15.i14.i.i, ptr %y.i15.i.i, align 2
  %138 = lshr i8 %129, 6
  %139 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %arrayidx20.i.i, align 2
  %140 = lshr i8 %131, 6
  %contact_status.i16.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i, i32 0, i32 1, i32 1, i32 1
  %141 = ptrtoint ptr %contact_status.i16.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %140, ptr %contact_status.i16.i.i, align 1
  %arrayidx24.i17.i.i = getelementptr i8, ptr %data, i32 17
  %142 = ptrtoint ptr %arrayidx24.i17.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx24.i17.i.i, align 1
  %z.i18.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i, i32 0, i32 1, i32 1, i32 4
  %144 = ptrtoint ptr %z.i18.i.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %z.i18.i.i, align 2
  %arrayidx25.i19.i.i = getelementptr i8, ptr %data, i32 18
  %145 = ptrtoint ptr %arrayidx25.i19.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx25.i19.i.i, align 1
  %area.i20.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i, i32 0, i32 1, i32 1, i32 5
  %147 = ptrtoint ptr %area.i20.i.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %area.i20.i.i, align 1
  %148 = lshr i8 %100, 4
  %finger_id.i22.i.i = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw.i, i32 0, i32 1, i32 1, i32 6
  %149 = ptrtoint ptr %finger_id.i22.i.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %finger_id.i22.i.i, align 2
  br label %hidpp_touchpad_raw_xy_event.exit.i

hidpp_touchpad_raw_xy_event.exit.i:               ; preds = %if.then.i.i, %if.end39.i.hidpp_touchpad_raw_xy_event.exit.i_crit_edge
  call fastcc void @wtp_send_raw_xy_event(ptr noundef %10, ptr noundef nonnull %raw.i) #12
  br label %wtp_raw_event.exit

wtp_raw_event.exit:                               ; preds = %hidpp_touchpad_raw_xy_event.exit.i, %lor.lhs.false34.i.wtp_raw_event.exit_crit_edge, %sw.bb29.i.wtp_raw_event.exit_crit_edge, %if.end26.i, %if.else.i.wtp_raw_event.exit_crit_edge, %if.then6.i, %do.end.i, %if.end.i.wtp_raw_event.exit_crit_edge, %lor.lhs.false.i.wtp_raw_event.exit_crit_edge, %if.then30.wtp_raw_event.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %hidpp_touchpad_raw_xy_event.exit.i ], [ 1, %do.end.i ], [ 0, %if.then6.i ], [ 1, %if.end26.i ], [ 1, %lor.lhs.false.i.wtp_raw_event.exit_crit_edge ], [ 1, %if.then30.wtp_raw_event.exit_crit_edge ], [ 1, %if.else.i.wtp_raw_event.exit_crit_edge ], [ 1, %lor.lhs.false34.i.wtp_raw_event.exit_crit_edge ], [ 1, %sw.bb29.i.wtp_raw_event.exit_crit_edge ], [ 0, %if.end.i.wtp_raw_event.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %raw.i) #12
  br label %cleanup

if.else:                                          ; preds = %if.end28
  %and33 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else.cleanup_crit_edge, label %if.then35

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then35:                                        ; preds = %if.else
  %150 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %driver_data.i.i, align 4
  %input.i68 = getelementptr inbounds %struct.hidpp_device, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %input.i68 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %input.i68, align 4
  %tobool.not.i69 = icmp eq ptr %153, null
  br i1 %tobool.not.i69, label %do.end.i71, label %if.end.i73

do.end.i71:                                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i70 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i70, ptr noundef nonnull @.str.198) #15
  br label %cleanup

if.end.i73:                                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp.i72 = icmp slt i32 %size, 7
  br i1 %cmp.i72, label %do.end4.i, label %if.end6.i

do.end4.i:                                        ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #14
  %dev5.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i, ptr noundef nonnull @.str.201) #15
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i73
  %154 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %data, align 1
  %156 = zext i8 %155 to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values.208)
  switch i8 %155, label %if.end6.i.cleanup_crit_edge [
    i8 17, label %land.lhs.true.i
    i8 2, label %if.then39.i
  ]

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end6.i
  %arrayidx9.i = getelementptr i8, ptr %data, i32 2
  %157 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %158)
  %cmp11.i = icmp eq i8 %158, 10
  br i1 %cmp11.i, label %land.lhs.true13.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true13.i:                                ; preds = %land.lhs.true.i
  %arrayidx14.i = getelementptr i8, ptr %data, i32 6
  %159 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %cmp16.i = icmp eq i8 %160, 0
  br i1 %cmp16.i, label %if.then18.i, label %land.lhs.true13.i.cleanup_crit_edge

land.lhs.true13.i.cleanup_crit_edge:              ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then18.i:                                      ; preds = %land.lhs.true13.i
  %arrayidx19.i = getelementptr i8, ptr %data, i32 5
  %161 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx19.i, align 1
  %163 = zext i8 %162 to i64
  call void @__sanitizer_cov_trace_switch(i64 %163, ptr @__sancov_gen_cov_switch_values.209)
  switch i8 %162, label %do.end32.i [
    i8 -81, label %sw.bb.i74
    i8 -80, label %sw.bb22.i
    i8 -82, label %sw.bb24.i
    i8 0, label %sw.bb26.i
  ]

sw.bb.i74:                                        ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @input_event(ptr noundef nonnull %153, i32 noundef 1, i32 noundef 274, i32 noundef 1) #12
  br label %sw.epilog.i

sw.bb22.i:                                        ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @input_event(ptr noundef nonnull %153, i32 noundef 1, i32 noundef 277, i32 noundef 1) #12
  br label %sw.epilog.i

sw.bb24.i:                                        ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @input_event(ptr noundef nonnull %153, i32 noundef 1, i32 noundef 278, i32 noundef 1) #12
  br label %sw.epilog.i

sw.bb26.i:                                        ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @input_event(ptr noundef nonnull %153, i32 noundef 1, i32 noundef 278, i32 noundef 0) #12
  %164 = ptrtoint ptr %input.i68 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %input.i68, align 4
  tail call void @input_event(ptr noundef %165, i32 noundef 1, i32 noundef 277, i32 noundef 0) #12
  %166 = ptrtoint ptr %input.i68 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %input.i68, align 4
  tail call void @input_event(ptr noundef %167, i32 noundef 1, i32 noundef 274, i32 noundef 0) #12
  br label %sw.epilog.i

do.end32.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev33.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33.i, ptr noundef nonnull @.str.201) #15
  br label %cleanup

sw.epilog.i:                                      ; preds = %sw.bb26.i, %sw.bb24.i, %sw.bb22.i, %sw.bb.i74
  %168 = ptrtoint ptr %input.i68 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %input.i68, align 4
  tail call void @input_event(ptr noundef %169, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  br label %cleanup

if.then39.i:                                      ; preds = %if.end6.i
  %arrayidx41.i = getelementptr i8, ptr %data, i32 1
  %170 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx41.i, align 1
  %172 = and i8 %171, 1
  %173 = zext i8 %172 to i32
  tail call void @input_event(ptr noundef nonnull %153, i32 noundef 1, i32 noundef 272, i32 noundef %173) #12
  %174 = ptrtoint ptr %input.i68 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %input.i68, align 4
  %176 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx41.i, align 1
  %178 = lshr i8 %177, 1
  %.lobit.i75 = and i8 %178, 1
  %179 = zext i8 %.lobit.i75 to i32
  tail call void @input_event(ptr noundef %175, i32 noundef 1, i32 noundef 273, i32 noundef %179) #12
  %180 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx41.i, align 1
  %conv55.i = zext i8 %181 to i32
  %and56.i = and i32 %conv55.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %if.else61.i, label %if.then39.i.if.end70.sink.split.i_crit_edge

if.then39.i.if.end70.sink.split.i_crit_edge:      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.sink.split.i

if.else61.i:                                      ; preds = %if.then39.i
  %and64.i = and i32 %conv55.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %if.else61.i.if.end70.i_crit_edge, label %if.else61.i.if.end70.sink.split.i_crit_edge

if.else61.i.if.end70.sink.split.i_crit_edge:      ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.sink.split.i

if.else61.i.if.end70.i_crit_edge:                 ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.i

if.end70.sink.split.i:                            ; preds = %if.else61.i.if.end70.sink.split.i_crit_edge, %if.then39.i.if.end70.sink.split.i_crit_edge
  %.sink130.i = phi i32 [ -1, %if.then39.i.if.end70.sink.split.i_crit_edge ], [ 1, %if.else61.i.if.end70.sink.split.i_crit_edge ]
  %.sink129.i = phi i32 [ -120, %if.then39.i.if.end70.sink.split.i_crit_edge ], [ 120, %if.else61.i.if.end70.sink.split.i_crit_edge ]
  %182 = ptrtoint ptr %input.i68 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %input.i68, align 4
  tail call void @input_event(ptr noundef %183, i32 noundef 2, i32 noundef 6, i32 noundef %.sink130.i) #12
  %184 = ptrtoint ptr %input.i68 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %input.i68, align 4
  tail call void @input_event(ptr noundef %185, i32 noundef 2, i32 noundef 12, i32 noundef %.sink129.i) #12
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.end70.sink.split.i, %if.else61.i.if.end70.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %data, i32 3
  %call71.i = tail call i32 @hid_field_extract(ptr noundef %hdev, ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 12) #12
  %call72.i = tail call i32 @hid_snto32(i32 noundef %call71.i, i32 noundef 12) #12
  %186 = ptrtoint ptr %input.i68 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %input.i68, align 4
  tail call void @input_event(ptr noundef %187, i32 noundef 2, i32 noundef 0, i32 noundef %call72.i) #12
  %call75.i = tail call i32 @hid_field_extract(ptr noundef %hdev, ptr noundef %add.ptr.i, i32 noundef 12, i32 noundef 12) #12
  %call76.i = tail call i32 @hid_snto32(i32 noundef %call75.i, i32 noundef 12) #12
  %188 = ptrtoint ptr %input.i68 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %input.i68, align 4
  tail call void @input_event(ptr noundef %189, i32 noundef 2, i32 noundef 1, i32 noundef %call76.i) #12
  %arrayidx78.i = getelementptr i8, ptr %data, i32 6
  %190 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx78.i, align 1
  %conv79.i = zext i8 %191 to i32
  %call80.i = tail call i32 @hid_snto32(i32 noundef %conv79.i, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %cmp81.not.i = icmp eq i32 %call80.i, 0
  br i1 %cmp81.not.i, label %if.end70.i.if.end85.i_crit_edge, label %if.then83.i

if.end70.i.if.end85.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85.i

if.then83.i:                                      ; preds = %if.end70.i
  %192 = ptrtoint ptr %input.i68 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %input.i68, align 4
  %vertical_wheel_counter.i = getelementptr inbounds %struct.hidpp_device, ptr %151, i32 0, i32 19
  %mul.i.i76 = mul i32 %call80.i, 120
  %194 = ptrtoint ptr %vertical_wheel_counter.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %vertical_wheel_counter.i, align 8
  %div.i.i = sdiv i32 %mul.i.i76, %195
  tail call void @input_event(ptr noundef %193, i32 noundef 2, i32 noundef 11, i32 noundef %div.i.i) #12
  %remainder1.i.i = getelementptr inbounds %struct.hidpp_device, ptr %151, i32 0, i32 19, i32 1
  %196 = ptrtoint ptr %remainder1.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %remainder1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div.i.i)
  %cmp.inv.i.i = icmp slt i32 %div.i.i, 1
  %cond.i.i = select i1 %cmp.inv.i.i, i32 -1, i32 1
  %call.i.i = tail call i64 @sched_clock() #12
  %last_time.i.i = getelementptr inbounds %struct.hidpp_device, ptr %151, i32 0, i32 19, i32 3
  %198 = ptrtoint ptr %last_time.i.i to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %last_time.i.i, align 8
  store i64 %call.i.i, ptr %last_time.i.i, align 8
  %sub.i.i = sub i64 %call.i.i, %199
  call void @__sanitizer_cov_trace_const_cmp8(i64 1000000000, i64 %sub.i.i)
  %cmp3.i.i = icmp ugt i64 %sub.i.i, 1000000000
  br i1 %cmp3.i.i, label %if.then83.i.if.then.i.i77_crit_edge, label %lor.lhs.false.i.i

if.then83.i.if.then.i.i77_crit_edge:              ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i77

lor.lhs.false.i.i:                                ; preds = %if.then83.i
  %direction4.i.i = getelementptr inbounds %struct.hidpp_device, ptr %151, i32 0, i32 19, i32 2
  %200 = ptrtoint ptr %direction4.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %direction4.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %201)
  %cmp5.not.i.i = icmp eq i32 %cond.i.i, %201
  br i1 %cmp5.not.i.i, label %lor.lhs.false.i.i.if.end.i.i_crit_edge, label %lor.lhs.false.i.i.if.then.i.i77_crit_edge

lor.lhs.false.i.i.if.then.i.i77_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i77

lor.lhs.false.i.i.if.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i77:                                    ; preds = %lor.lhs.false.i.i.if.then.i.i77_crit_edge, %if.then83.i.if.then.i.i77_crit_edge
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i77, %lor.lhs.false.i.i.if.end.i.i_crit_edge
  %remainder.0.i.i = phi i32 [ 0, %if.then.i.i77 ], [ %197, %lor.lhs.false.i.i.if.end.i.i_crit_edge ]
  %direction6.i.i = getelementptr inbounds %struct.hidpp_device, ptr %151, i32 0, i32 19, i32 2
  %202 = ptrtoint ptr %direction6.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %cond.i.i, ptr %direction6.i.i, align 8
  %add.i.i78 = add i32 %remainder.0.i.i, %div.i.i
  %203 = tail call i32 @llvm.abs.i32(i32 %add.i.i78, i1 false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %203)
  %cmp10.i.i = icmp sgt i32 %203, 59
  br i1 %cmp10.i.i, label %if.then11.i.i, label %if.end.i.i.hidpp_scroll_counter_handle_scroll.exit.i_crit_edge

if.end.i.i.hidpp_scroll_counter_handle_scroll.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_scroll_counter_handle_scroll.exit.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %div12.i.i = sdiv i32 %add.i.i78, 120
  %add.off.i.i = add i32 %add.i.i78, 119
  call void @__sanitizer_cov_trace_const_cmp4(i32 239, i32 %add.off.i.i)
  %204 = icmp ult i32 %add.off.i.i, 239
  %spec.select.i.i = select i1 %204, i32 %cond.i.i, i32 %div12.i.i
  tail call void @input_event(ptr noundef %193, i32 noundef 2, i32 noundef 8, i32 noundef %spec.select.i.i) #12
  %mul18.neg.i.i = mul nsw i32 %spec.select.i.i, -120
  %sub19.i.i = add i32 %mul18.neg.i.i, %add.i.i78
  br label %hidpp_scroll_counter_handle_scroll.exit.i

hidpp_scroll_counter_handle_scroll.exit.i:        ; preds = %if.then11.i.i, %if.end.i.i.hidpp_scroll_counter_handle_scroll.exit.i_crit_edge
  %remainder.1.i.i = phi i32 [ %sub19.i.i, %if.then11.i.i ], [ %add.i.i78, %if.end.i.i.hidpp_scroll_counter_handle_scroll.exit.i_crit_edge ]
  %205 = ptrtoint ptr %remainder1.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %remainder.1.i.i, ptr %remainder1.i.i, align 4
  br label %if.end85.i

if.end85.i:                                       ; preds = %hidpp_scroll_counter_handle_scroll.exit.i, %if.end70.i.if.end85.i_crit_edge
  %206 = ptrtoint ptr %input.i68 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %input.i68, align 4
  tail call void @input_event(ptr noundef %207, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end85.i, %sw.epilog.i, %do.end32.i, %land.lhs.true13.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %do.end4.i, %do.end.i71, %if.else.cleanup_crit_edge, %wtp_raw_event.exit, %sw.epilog.cleanup_crit_edge, %do.end21, %do.end11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %wtp_raw_event.exit ], [ 1, %do.end21 ], [ 1, %do.end11 ], [ 1, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call24, %sw.epilog.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %do.end4.i ], [ 0, %do.end32.i ], [ -22, %do.end.i71 ], [ 1, %if.end85.i ], [ 1, %sw.epilog.i ], [ 1, %land.lhs.true13.i.cleanup_crit_edge ], [ 1, %land.lhs.true.i.cleanup_crit_edge ], [ 1, %if.end6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidpp_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readnone %field, ptr nocapture noundef readnone %usage, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %vertical_wheel_counter = getelementptr inbounds %struct.hidpp_device, ptr %1, i32 0, i32 19
  %quirks = getelementptr inbounds %struct.hidpp_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 4
  %and = and i32 %3, 469762048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp = icmp eq i32 %value, 0
  %or.cond = or i1 %cmp, %tobool1.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %lor.lhs.false2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false2:                                   ; preds = %if.end
  %input = getelementptr inbounds %struct.hidpp_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %lor.lhs.false2.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %6 = ptrtoint ptr %vertical_wheel_counter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vertical_wheel_counter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp5, label %lor.lhs.false4.cleanup_crit_edge, label %if.end7

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false4
  %mul.i = mul i32 %value, 120
  %div.i = sdiv i32 %mul.i, %7
  tail call void @input_event(ptr noundef nonnull %5, i32 noundef 2, i32 noundef 11, i32 noundef %div.i) #12
  %remainder1.i = getelementptr inbounds %struct.hidpp_device, ptr %1, i32 0, i32 19, i32 1
  %8 = ptrtoint ptr %remainder1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %remainder1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div.i)
  %cmp.inv.i = icmp slt i32 %div.i, 1
  %cond.i = select i1 %cmp.inv.i, i32 -1, i32 1
  %call.i = tail call i64 @sched_clock() #12
  %last_time.i = getelementptr inbounds %struct.hidpp_device, ptr %1, i32 0, i32 19, i32 3
  %10 = ptrtoint ptr %last_time.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %last_time.i, align 8
  store i64 %call.i, ptr %last_time.i, align 8
  %sub.i = sub i64 %call.i, %11
  call void @__sanitizer_cov_trace_const_cmp8(i64 1000000000, i64 %sub.i)
  %cmp3.i = icmp ugt i64 %sub.i, 1000000000
  br i1 %cmp3.i, label %if.end7.if.then.i_crit_edge, label %lor.lhs.false.i

if.end7.if.then.i_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end7
  %direction4.i = getelementptr inbounds %struct.hidpp_device, ptr %1, i32 0, i32 19, i32 2
  %12 = ptrtoint ptr %direction4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %direction4.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %13)
  %cmp5.not.i = icmp eq i32 %cond.i, %13
  br i1 %cmp5.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end7.if.then.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  %remainder.0.i = phi i32 [ 0, %if.then.i ], [ %9, %lor.lhs.false.i.if.end.i_crit_edge ]
  %direction6.i = getelementptr inbounds %struct.hidpp_device, ptr %1, i32 0, i32 19, i32 2
  %14 = ptrtoint ptr %direction6.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond.i, ptr %direction6.i, align 8
  %add.i = add i32 %remainder.0.i, %div.i
  %15 = tail call i32 @llvm.abs.i32(i32 %add.i, i1 false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %15)
  %cmp10.i = icmp sgt i32 %15, 59
  br i1 %cmp10.i, label %if.then11.i, label %if.end.i.hidpp_scroll_counter_handle_scroll.exit_crit_edge

if.end.i.hidpp_scroll_counter_handle_scroll.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_scroll_counter_handle_scroll.exit

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %div12.i = sdiv i32 %add.i, 120
  %add.off.i = add i32 %add.i, 119
  call void @__sanitizer_cov_trace_const_cmp4(i32 239, i32 %add.off.i)
  %16 = icmp ult i32 %add.off.i, 239
  %spec.select.i = select i1 %16, i32 %cond.i, i32 %div12.i
  tail call void @input_event(ptr noundef nonnull %5, i32 noundef 2, i32 noundef 8, i32 noundef %spec.select.i) #12
  %mul18.neg.i = mul nsw i32 %spec.select.i, -120
  %sub19.i = add i32 %mul18.neg.i, %add.i
  br label %hidpp_scroll_counter_handle_scroll.exit

hidpp_scroll_counter_handle_scroll.exit:          ; preds = %if.then11.i, %if.end.i.hidpp_scroll_counter_handle_scroll.exit_crit_edge
  %remainder.1.i = phi i32 [ %sub19.i, %if.then11.i ], [ %add.i, %if.end.i.hidpp_scroll_counter_handle_scroll.exit_crit_edge ]
  %17 = ptrtoint ptr %remainder1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %remainder.1.i, ptr %remainder1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %hidpp_scroll_counter_handle_scroll.exit, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %hidpp_scroll_counter_handle_scroll.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false4.cleanup_crit_edge ], [ 0, %lor.lhs.false2.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hidpp_report_fixup(ptr nocapture noundef readonly %hdev, ptr noundef %rdesc, ptr nocapture noundef readonly %rsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %group = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 9
  %2 = ptrtoint ptr %group to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %group, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 260, i16 %3)
  %cmp = icmp eq i16 %3, 260
  br i1 %cmp, label %if.end.if.then3_crit_edge, label %lor.lhs.false

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %quirks = getelementptr inbounds %struct.hidpp_device, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool2.not = icmp sgt i32 %5, -1
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then3_crit_edge

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %6 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rsize, align 4
  %call.i = tail call ptr @strnstr(ptr noundef %rdesc, ptr noundef nonnull @hidpp10_consumer_keys_report_fixup.consumer_rdesc_start, i32 noundef %7) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then3.cleanup_crit_edge, label %land.lhs.true.i

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then3
  %8 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rsize, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %rdesc to i32
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call.i to i32
  %sub.ptr.sub.neg.i = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %sub.i = add i32 %sub.ptr.sub.neg.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.i)
  %cmp.i = icmp ugt i32 %sub.i, 24
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 15
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 127, ptr %arrayidx.i, align 1
  %arrayidx1.i = getelementptr i8, ptr %call.i, i32 16
  %11 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 16, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %call.i, i32 20
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 127, ptr %arrayidx2.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %call.i, i32 21
  %13 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 16, ptr %arrayidx3.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %land.lhs.true.i.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %rdesc
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidpp_input_mapping(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %hi, ptr nocapture noundef readonly %field, ptr nocapture noundef %usage, ptr nocapture noundef writeonly %bit, ptr nocapture noundef writeonly %max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %quirks = getelementptr inbounds %struct.hidpp_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  %and5 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else.if.end10_crit_edge, label %land.lhs.true

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true:                                    ; preds = %if.else
  %application = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 2
  %4 = ptrtoint ptr %application to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %application, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65538, i32 %5)
  %cmp.not = icmp eq i32 %5, 65538
  br i1 %cmp.not, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.else.if.end10_crit_edge
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %6 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %product, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 45836, i32 %7)
  %cmp11 = icmp eq i32 %7, 45836
  br i1 %cmp11, label %if.then12, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12:                                        ; preds = %if.end10
  %8 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4456435, i32 %9)
  %10 = icmp eq i32 %9, -4456435
  br i1 %10, label %sw.bb.i, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %input1.i.i.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %11 = ptrtoint ptr %input1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %input1.i.i.i, align 4
  %keybit.i.i.i = getelementptr inbounds %struct.input_dev, ptr %12, i32 0, i32 6
  %type19.i.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %13 = ptrtoint ptr %type19.i.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %type19.i.i.i, align 4
  %code.i.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %14 = ptrtoint ptr %code.i.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 226, ptr %code.i.i.i, align 2
  %15 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 767, ptr %max, align 4
  %16 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %keybit.i.i.i, ptr %bit, align 4
  %17 = load i16, ptr %code.i.i.i, align 2
  %conv1.i.i = zext i16 %17 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i.i, ptr noundef nonnull %keybit.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.i, %if.then12.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ 1, %sw.bb.i ], [ 0, %if.then12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hidpp_input_mapped(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readnone %hi, ptr nocapture noundef writeonly %field, ptr nocapture noundef readonly %usage, ptr nocapture noundef readnone %bit, ptr nocapture noundef readnone %max) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %quirks = getelementptr inbounds %struct.hidpp_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %type = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp eq i8 %5, 3
  br i1 %cmp, label %land.lhs.true, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then2
  %code = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %6 = ptrtoint ptr %code to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %code, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.210)
  switch i16 %7, label %land.lhs.true.cleanup_crit_edge [
    i16 0, label %land.lhs.true.if.then21_crit_edge
    i16 1, label %land.lhs.true.if.then21_crit_edge29
    i16 2, label %land.lhs.true.if.then21_crit_edge30
    i16 5, label %land.lhs.true.if.then21_crit_edge31
  ]

land.lhs.true.if.then21_crit_edge31:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

land.lhs.true.if.then21_crit_edge30:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

land.lhs.true.if.then21_crit_edge29:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

land.lhs.true.if.then21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then21:                                        ; preds = %land.lhs.true.if.then21_crit_edge, %land.lhs.true.if.then21_crit_edge29, %land.lhs.true.if.then21_crit_edge30, %land.lhs.true.if.then21_crit_edge31
  %application = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 2
  %9 = ptrtoint ptr %application to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 65544, ptr %application, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %land.lhs.true.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidpp_input_configured(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %hidinput) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %input1 = getelementptr inbounds %struct.hid_input, ptr %hidinput, i32 0, i32 2
  %2 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input1, align 4
  tail call fastcc void @hidpp_populate_input(ptr noundef nonnull %1, ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delayed_work_cb(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -172
  tail call fastcc void @hidpp_connect_event(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hidpp_root_get_protocol_version(ptr noundef %hidpp) unnamed_addr #2 align 64 {
entry:
  %response = alloca %struct.hidpp_report, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response) #12
  %0 = call ptr @memset(ptr %response, i32 255, i32 64)
  %supported_reports.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 17
  %1 = ptrtoint ptr %supported_reports.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %supported_reports.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 64) #16
  %tobool10.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool10.not.i, label %entry.cleanup_crit_edge, label %hidpp_send_rap_command_sync.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

hidpp_send_rap_command_sync.exit:                 ; preds = %entry
  %4 = and i8 %2, 1
  %5 = xor i8 %4, 17
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %call7.i.i.i, align 8
  %7 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %7, align 2
  %reg_address15.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %reg_address15.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 17, ptr %reg_address15.i, align 1
  %params16.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %params16.i, ptr @__const.hidpp_root_get_protocol_version.ping_data, i32 3)
  %call17.i = call fastcc i32 @hidpp_send_message_sync(ptr noundef %hidpp, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %response) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  %11 = zext i32 %call17.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.211)
  switch i32 %call17.i, label %if.end3 [
    i32 1, label %if.then
    i32 9, label %hidpp_send_rap_command_sync.exit.cleanup_crit_edge
  ]

hidpp_send_rap_command_sync.exit.cleanup_crit_edge: ; preds = %hidpp_send_rap_command_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %hidpp_send_rap_command_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  %protocol_major = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 8
  %12 = ptrtoint ptr %protocol_major to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %protocol_major, align 1
  br label %do.end29

if.end3:                                          ; preds = %hidpp_send_rap_command_sync.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp4 = icmp sgt i32 %call17.i, 0
  br i1 %cmp4, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hidpp, align 8
  %dev = getelementptr inbounds %struct.hid_device, ptr %14, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef %call17.i) #15
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool.not = icmp eq i32 %call17.i, 0
  br i1 %tobool.not, label %if.end8, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end6
  %arrayidx = getelementptr inbounds %struct.hidpp_report, ptr %response, i32 0, i32 2, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %16)
  %cmp9.not = icmp eq i8 %16, 90
  br i1 %cmp9.not, label %if.end20, label %do.end14

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %16 to i32
  %17 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hidpp, align 8
  %dev16 = getelementptr inbounds %struct.hid_device, ptr %18, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.58, i32 noundef %conv, i32 noundef 90) #15
  br label %cleanup

if.end20:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %params = getelementptr inbounds %struct.hidpp_report, ptr %response, i32 0, i32 2, i32 0, i32 2
  %19 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %params, align 1
  %protocol_major23 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 8
  %21 = ptrtoint ptr %protocol_major23 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %protocol_major23, align 1
  %arrayidx25 = getelementptr inbounds %struct.hidpp_report, ptr %response, i32 0, i32 2, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx25, align 1
  br label %do.end29

do.end29:                                         ; preds = %if.end20, %if.then
  %.sink = phi i8 [ 0, %if.then ], [ %23, %if.end20 ]
  %protocol_minor = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 9
  %24 = ptrtoint ptr %protocol_minor to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.sink, ptr %protocol_minor, align 2
  %25 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hidpp, align 8
  %dev31 = getelementptr inbounds %struct.hid_device, ptr %26, i32 0, i32 18
  %protocol_major32 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 8
  %27 = ptrtoint ptr %protocol_major32 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %protocol_major32, align 1
  %conv33 = zext i8 %28 to i32
  %protocol_minor34 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 9
  %29 = ptrtoint ptr %protocol_minor34 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %protocol_minor34, align 2
  %conv35 = zext i8 %30 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev31, ptr noundef nonnull @.str.63, i32 noundef %conv33, i32 noundef %conv35) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %do.end14, %if.end6.cleanup_crit_edge, %do.end, %hidpp_send_rap_command_sync.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end29 ], [ -71, %do.end ], [ -71, %do.end14 ], [ -5, %hidpp_send_rap_command_sync.exit.cleanup_crit_edge ], [ %call17.i, %if.end6.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wtp_get_config(ptr noundef %hidpp) unnamed_addr #2 align 64 {
entry:
  %response.i32 = alloca %struct.hidpp_report, align 1
  %response.i = alloca %struct.hidpp_report, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %mt_feature_index = getelementptr inbounds %struct.wtp_data, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i) #12
  %2 = call ptr @memset(ptr %response.i, i32 255, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.hidpp_root_get_feature.exit.thread_crit_edge, label %hidpp_send_fap_command_sync.exit.i

entry.hidpp_root_get_feature.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread

hidpp_send_fap_command_sync.exit.i:               ; preds = %entry
  %4 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 17, ptr %call7.i.i.i.i, align 8
  %5 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %5, align 2
  %funcindex_clientid7.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %funcindex_clientid7.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %funcindex_clientid7.i.i, align 1
  %params8.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 2
  %8 = ptrtoint ptr %params8.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 97, ptr %params8.i.i, align 4
  %params.sroa.5.0.params8.i.sroa_idx.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %params.sroa.5.0.params8.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %params.sroa.5.0.params8.i.sroa_idx.i, align 1
  %call9.i.i = call fastcc i32 @hidpp_send_message_sync(ptr noundef %hidpp, ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull %response.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool.not.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %hidpp_send_fap_command_sync.exit.i.hidpp_root_get_feature.exit.thread_crit_edge

hidpp_send_fap_command_sync.exit.i.hidpp_root_get_feature.exit.thread_crit_edge: ; preds = %hidpp_send_fap_command_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread

if.end.i:                                         ; preds = %hidpp_send_fap_command_sync.exit.i
  %params4.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i, i32 0, i32 2, i32 0, i32 2
  %10 = ptrtoint ptr %params4.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %params4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.i = icmp eq i8 %11, 0
  br i1 %cmp.i, label %if.end.i.hidpp_root_get_feature.exit.thread_crit_edge, label %if.end

if.end.i.hidpp_root_get_feature.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread

hidpp_root_get_feature.exit.thread:               ; preds = %if.end.i.hidpp_root_get_feature.exit.thread_crit_edge, %hidpp_send_fap_command_sync.exit.i.hidpp_root_get_feature.exit.thread_crit_edge, %entry.hidpp_root_get_feature.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %entry.hidpp_root_get_feature.exit.thread_crit_edge ], [ -2, %if.end.i.hidpp_root_get_feature.exit.thread_crit_edge ], [ %call9.i.i, %hidpp_send_fap_command_sync.exit.i.hidpp_root_get_feature.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %12 = ptrtoint ptr %mt_feature_index to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %mt_feature_index, align 1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i) #12
  %13 = ptrtoint ptr %mt_feature_index to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mt_feature_index, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i32) #12
  %15 = call ptr @memset(ptr %response.i32, i32 255, i32 64)
  %params1.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i32, i32 0, i32 2, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i33 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i.i34 = icmp eq ptr %call7.i.i.i.i33, null
  br i1 %tobool.not.i.i34, label %if.end.hidpp_touchpad_get_raw_info.exit.thread_crit_edge, label %hidpp_send_fap_command_sync.exit.i38

if.end.hidpp_touchpad_get_raw_info.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_touchpad_get_raw_info.exit.thread

hidpp_send_fap_command_sync.exit.i38:             ; preds = %if.end
  %17 = ptrtoint ptr %call7.i.i.i.i33 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 17, ptr %call7.i.i.i.i33, align 8
  %18 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i33, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %14, ptr %18, align 2
  %funcindex_clientid7.i.i35 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i33, i32 0, i32 2, i32 0, i32 1
  %20 = ptrtoint ptr %funcindex_clientid7.i.i35 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %funcindex_clientid7.i.i35, align 1
  %call9.i.i36 = call fastcc i32 @hidpp_send_message_sync(ptr noundef %hidpp, ptr noundef nonnull %call7.i.i.i.i33, ptr noundef nonnull %response.i32) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i33) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i36)
  %cmp.i37 = icmp sgt i32 %call9.i.i36, 0
  br i1 %cmp.i37, label %do.end.i, label %if.end.i40

do.end.i:                                         ; preds = %hidpp_send_fap_command_sync.exit.i38
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hidpp, align 8
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %22, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.73, i32 noundef %call9.i.i36) #15
  br label %hidpp_touchpad_get_raw_info.exit.thread

if.end.i40:                                       ; preds = %hidpp_send_fap_command_sync.exit.i38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i36)
  %tobool.not.i39 = icmp eq i32 %call9.i.i36, 0
  br i1 %tobool.not.i39, label %if.end5, label %if.end.i40.hidpp_touchpad_get_raw_info.exit.thread_crit_edge

if.end.i40.hidpp_touchpad_get_raw_info.exit.thread_crit_edge: ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_touchpad_get_raw_info.exit.thread

hidpp_touchpad_get_raw_info.exit.thread:          ; preds = %if.end.i40.hidpp_touchpad_get_raw_info.exit.thread_crit_edge, %do.end.i, %if.end.hidpp_touchpad_get_raw_info.exit.thread_crit_edge
  %retval.0.i41.ph = phi i32 [ -12, %if.end.hidpp_touchpad_get_raw_info.exit.thread_crit_edge ], [ %call9.i.i36, %if.end.i40.hidpp_touchpad_get_raw_info.exit.thread_crit_edge ], [ -71, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i32) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %params1.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %params1.i, align 1
  %arrayidx5.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i32, i32 0, i32 2, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %arrayidx5.i, align 1
  %arrayidx9.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i32, i32 0, i32 2, i32 0, i32 2, i32 7
  %27 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx9.i, align 1
  %arrayidx10.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i32, i32 0, i32 2, i32 0, i32 2, i32 8
  %29 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx10.i, align 1
  %arrayidx11.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i32, i32 0, i32 2, i32 0, i32 2, i32 13
  %31 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %arrayidx11.i, align 1
  %conv.i = zext i16 %32 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 1
  %div.i = udiv i32 %mul.i, 51
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i32) #12
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %24, ptr %1, align 4
  %y_size7 = getelementptr inbounds %struct.wtp_data, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %y_size7 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %26, ptr %y_size7, align 2
  %maxcontacts8 = getelementptr inbounds %struct.wtp_data, ptr %1, i32 0, i32 5
  %35 = ptrtoint ptr %maxcontacts8 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %28, ptr %maxcontacts8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp = icmp eq i8 %30, 1
  %flip_y = getelementptr inbounds %struct.wtp_data, ptr %1, i32 0, i32 6
  %frombool = zext i1 %cmp to i8
  %36 = ptrtoint ptr %flip_y to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool, ptr %flip_y, align 4
  %resolution = getelementptr inbounds %struct.wtp_data, ptr %1, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 26, i16 %32)
  %37 = icmp ult i16 %32, 26
  %spec.select = select i1 %37, i32 39, i32 %div.i
  %38 = ptrtoint ptr %resolution to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %spec.select, ptr %resolution, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %hidpp_touchpad_get_raw_info.exit.thread, %hidpp_root_get_feature.exit.thread
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %retval.0.i.ph, %hidpp_root_get_feature.exit.thread ], [ %retval.0.i41.ph, %hidpp_touchpad_get_raw_info.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hidpp_connect_event(ptr noundef %hidpp) unnamed_addr #2 align 64 {
entry:
  %response.i.i.i236 = alloca %struct.hidpp_report, align 1
  %response.i.i237 = alloca %struct.hidpp_report, align 1
  %cfg.i = alloca %struct.power_supply_config, align 4
  %response.i20.i.i = alloca %struct.hidpp_report, align 1
  %response.i.i.i = alloca %struct.hidpp_report, align 1
  %response.i = alloca %struct.hidpp_report, align 1
  %response.i.i = alloca %struct.hidpp_report, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hidpp, align 8
  %connected1 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %connected1, i32 noundef 4) #12
  %2 = ptrtoint ptr %connected1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %connected1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %ps = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 4
  %4 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ps, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %online = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 11
  %6 = ptrtoint ptr %online to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %online, align 8
  %status = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 6
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %status, align 4
  %level = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 8
  %8 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %level, align 4
  tail call void @power_supply_changed(ptr noundef nonnull %5) #12
  br label %cleanup

if.end10:                                         ; preds = %entry
  %quirks = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 15
  %9 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %quirks, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end10
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18, i32 8
  %11 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data.i = getelementptr inbounds %struct.hidpp_device, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_data.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not.i = icmp eq i16 %16, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then12.if.end4.i_crit_edge

if.then12.if.end4.i_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then.i:                                        ; preds = %if.then12
  %call1.i = tail call fastcc i32 @wtp_get_config(ptr noundef %12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end4.i_crit_edge, label %wtp_connect.exit.thread

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

wtp_connect.exit.thread:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.94, i32 noundef %call1.i) #15
  br label %cleanup

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %if.then12.if.end4.i_crit_edge
  %mt_feature_index.i = getelementptr inbounds %struct.wtp_data, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %mt_feature_index.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mt_feature_index.i, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i.i) #12
  %19 = call ptr @memset(ptr %response.i.i, i32 255, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %wtp_connect.exit.thread263, label %wtp_connect.exit

wtp_connect.exit.thread263:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i.i) #12
  br label %cleanup

wtp_connect.exit:                                 ; preds = %if.end4.i
  %21 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 17, ptr %call7.i.i.i.i.i, align 8
  %22 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %18, ptr %22, align 2
  %funcindex_clientid7.i.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i, i32 0, i32 2, i32 0, i32 1
  %24 = ptrtoint ptr %funcindex_clientid7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 33, ptr %funcindex_clientid7.i.i.i, align 1
  %params8.i.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i, i32 0, i32 2, i32 0, i32 2
  %25 = ptrtoint ptr %params8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 5, ptr %params8.i.i.i, align 4
  %call9.i.i.i = call fastcc i32 @hidpp_send_message_sync(ptr noundef %12, ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef nonnull %response.i.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i)
  %tobool15.not = icmp eq i32 %call9.i.i.i, 0
  br i1 %tobool15.not, label %wtp_connect.exit.if.end39_crit_edge, label %wtp_connect.exit.cleanup_crit_edge

wtp_connect.exit.cleanup_crit_edge:               ; preds = %wtp_connect.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

wtp_connect.exit.if.end39_crit_edge:              ; preds = %wtp_connect.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.else:                                          ; preds = %if.end10
  %and19 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else27, label %if.then21

if.then21:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i) #12
  %26 = call ptr @memset(ptr %response.i, i32 255, i32 64)
  %driver_data.i.i.i229 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18, i32 8
  %27 = ptrtoint ptr %driver_data.i.i.i229 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i.i229, align 4
  %supported_reports.i.i = getelementptr inbounds %struct.hidpp_device, ptr %28, i32 0, i32 17
  %29 = ptrtoint ptr %supported_reports.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %supported_reports.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 64) #16
  %tobool10.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool10.not.i.i, label %m560_send_config_command.exit.thread, label %m560_send_config_command.exit

m560_send_config_command.exit.thread:             ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i) #12
  br label %cleanup

m560_send_config_command.exit:                    ; preds = %if.then21
  %32 = and i8 %30, 1
  %33 = xor i8 %32, 17
  %34 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %call7.i.i.i.i, align 8
  %35 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 10, ptr %35, align 2
  %reg_address15.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 1
  %37 = ptrtoint ptr %reg_address15.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 53, ptr %reg_address15.i.i, align 1
  %params16.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 2
  %38 = call ptr @memcpy(ptr %params16.i.i, ptr @m560_config_parameter, i32 3)
  %call17.i.i = call fastcc i32 @hidpp_send_message_sync(ptr noundef %28, ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull %response.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool24.not = icmp eq i32 %call17.i.i, 0
  br i1 %tobool24.not, label %m560_send_config_command.exit.if.end39_crit_edge, label %m560_send_config_command.exit.cleanup_crit_edge

m560_send_config_command.exit.cleanup_crit_edge:  ; preds = %m560_send_config_command.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

m560_send_config_command.exit.if.end39_crit_edge: ; preds = %m560_send_config_command.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.else27:                                        ; preds = %if.else
  %and29 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.else27.if.end39_crit_edge, label %if.then31

if.else27.if.end39_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then31:                                        ; preds = %if.else27
  %driver_data.i.i.i230 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18, i32 8
  %39 = ptrtoint ptr %driver_data.i.i.i230 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver_data.i.i.i230, align 4
  %41 = load i8, ptr @disable_tap_to_click, align 1, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i231 = icmp eq i8 %41, 0
  br i1 %tobool.not.i231, label %if.then31.if.end39_crit_edge, label %if.end.i

if.then31.if.end39_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.end.i:                                         ; preds = %if.then31
  %private_data.i.i = getelementptr inbounds %struct.hidpp_device, ptr %40, i32 0, i32 10
  %42 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %private_data.i.i, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.if.end4.i.i_crit_edge

if.end.i.if.end4.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i.i.i) #12
  %46 = call ptr @memset(ptr %response.i.i.i, i32 255, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i.i.i.i = icmp eq ptr %call7.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.k400_connect.exit.thread270_crit_edge, label %hidpp_send_fap_command_sync.exit.i.i.i

if.then.i.i.k400_connect.exit.thread270_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %k400_connect.exit.thread270

hidpp_send_fap_command_sync.exit.i.i.i:           ; preds = %if.then.i.i
  %48 = ptrtoint ptr %call7.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 17, ptr %call7.i.i.i.i.i.i, align 8
  %49 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %49, align 2
  %funcindex_clientid7.i.i.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i.i, i32 0, i32 2, i32 0, i32 1
  %51 = ptrtoint ptr %funcindex_clientid7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %funcindex_clientid7.i.i.i.i, align 1
  %params8.i.i.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i.i, i32 0, i32 2, i32 0, i32 2
  %52 = ptrtoint ptr %params8.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 96, ptr %params8.i.i.i.i, align 4
  %params.sroa.5.0.params8.i.sroa_idx.i.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i.i, i32 0, i32 2, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %params.sroa.5.0.params8.i.sroa_idx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 16, ptr %params.sroa.5.0.params8.i.sroa_idx.i.i.i, align 1
  %call9.i.i.i.i = call fastcc i32 @hidpp_send_message_sync(ptr noundef %40, ptr noundef nonnull %call7.i.i.i.i.i.i, ptr noundef nonnull %response.i.i.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i.i)
  %tobool.not.i.i.i232 = icmp eq i32 %call9.i.i.i.i, 0
  br i1 %tobool.not.i.i.i232, label %if.end.i.i.i, label %hidpp_send_fap_command_sync.exit.i.i.i.k400_connect.exit.thread270_crit_edge

hidpp_send_fap_command_sync.exit.i.i.i.k400_connect.exit.thread270_crit_edge: ; preds = %hidpp_send_fap_command_sync.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %k400_connect.exit.thread270

if.end.i.i.i:                                     ; preds = %hidpp_send_fap_command_sync.exit.i.i.i
  %params4.i.i.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i.i.i, i32 0, i32 2, i32 0, i32 2
  %54 = ptrtoint ptr %params4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %params4.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp.i.i.i = icmp eq i8 %55, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i.k400_connect.exit.thread270_crit_edge, label %hidpp_root_get_feature.exit.i.i

if.end.i.i.i.k400_connect.exit.thread270_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %k400_connect.exit.thread270

k400_connect.exit.thread270:                      ; preds = %if.end.i.i.i.k400_connect.exit.thread270_crit_edge, %hidpp_send_fap_command_sync.exit.i.i.i.k400_connect.exit.thread270_crit_edge, %if.then.i.i.k400_connect.exit.thread270_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i.i.i) #12
  br label %cleanup

hidpp_root_get_feature.exit.i.i:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %43, align 1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i.i.i) #12
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %hidpp_root_get_feature.exit.i.i, %if.end.i.if.end4.i.i_crit_edge
  %57 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %43, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i20.i.i) #12
  %59 = call ptr @memset(ptr %response.i20.i.i, i32 255, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %60 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i21.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i.i22.i.i = icmp eq ptr %call7.i.i.i.i21.i.i, null
  br i1 %tobool.not.i.i22.i.i, label %if.end4.i.i.k400_connect.exit.thread273_crit_edge, label %hidpp_send_fap_command_sync.exit.i27.i.i

if.end4.i.i.k400_connect.exit.thread273_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %k400_connect.exit.thread273

hidpp_send_fap_command_sync.exit.i27.i.i:         ; preds = %if.end4.i.i
  %61 = ptrtoint ptr %call7.i.i.i.i21.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 17, ptr %call7.i.i.i.i21.i.i, align 8
  %62 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i21.i.i, i32 0, i32 2
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %58, ptr %62, align 2
  %funcindex_clientid7.i.i23.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i21.i.i, i32 0, i32 2, i32 0, i32 1
  %64 = ptrtoint ptr %funcindex_clientid7.i.i23.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 16, ptr %funcindex_clientid7.i.i23.i.i, align 1
  %params8.i.i24.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i21.i.i, i32 0, i32 2, i32 0, i32 2
  %65 = ptrtoint ptr %params8.i.i24.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %params8.i.i24.i.i, align 4
  %call9.i.i25.i.i = call fastcc i32 @hidpp_send_message_sync(ptr noundef %40, ptr noundef nonnull %call7.i.i.i.i21.i.i, ptr noundef nonnull %response.i20.i.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i21.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i25.i.i)
  %cmp.i26.i.i = icmp sgt i32 %call9.i.i25.i.i, 0
  br i1 %cmp.i26.i.i, label %do.end.i.i.i, label %k400_connect.exit

do.end.i.i.i:                                     ; preds = %hidpp_send_fap_command_sync.exit.i27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %40, align 8
  %dev.i.i.i = getelementptr inbounds %struct.hid_device, ptr %67, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.96, i32 noundef %call9.i.i25.i.i) #15
  br label %k400_connect.exit.thread273

k400_connect.exit.thread273:                      ; preds = %do.end.i.i.i, %if.end4.i.i.k400_connect.exit.thread273_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i20.i.i) #12
  br label %cleanup

k400_connect.exit:                                ; preds = %hidpp_send_fap_command_sync.exit.i27.i.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i20.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i25.i.i)
  %tobool34.not = icmp eq i32 %call9.i.i25.i.i, 0
  br i1 %tobool34.not, label %k400_connect.exit.if.end39_crit_edge, label %k400_connect.exit.cleanup_crit_edge

k400_connect.exit.cleanup_crit_edge:              ; preds = %k400_connect.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

k400_connect.exit.if.end39_crit_edge:             ; preds = %k400_connect.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.end39:                                         ; preds = %k400_connect.exit.if.end39_crit_edge, %if.then31.if.end39_crit_edge, %if.else27.if.end39_crit_edge, %m560_send_config_command.exit.if.end39_crit_edge, %wtp_connect.exit.if.end39_crit_edge
  %68 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %quirks, align 4
  %and41 = and i32 %69, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.if.end48_crit_edge, label %if.then43

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.then43:                                        ; preds = %if.end39
  %call.i = call fastcc i32 @hidpp10_set_register(ptr noundef %hidpp, i8 noundef zeroext 0, i8 noundef zeroext 36, i8 noundef zeroext 36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool45.not = icmp eq i32 %call.i, 0
  br i1 %tobool45.not, label %if.then43.if.end48_crit_edge, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then43.if.end48_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.end48:                                         ; preds = %if.then43.if.end48_crit_edge, %if.end39.if.end48_crit_edge
  %70 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %quirks, align 4
  %and50 = and i32 %71, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end48.if.end57_crit_edge, label %if.then52

if.end48.if.end57_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then52:                                        ; preds = %if.end48
  %call.i234 = call fastcc i32 @hidpp10_set_register(ptr noundef %hidpp, i8 noundef zeroext 0, i8 noundef zeroext 8, i8 noundef zeroext 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234)
  %tobool54.not = icmp eq i32 %call.i234, 0
  br i1 %tobool54.not, label %if.end57thread-pre-split, label %if.then52.cleanup_crit_edge

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end57thread-pre-split:                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pr = load i32, ptr %quirks, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.end57thread-pre-split, %if.end48.if.end57_crit_edge
  %73 = phi i32 [ %.pr, %if.end57thread-pre-split ], [ %71, %if.end48.if.end57_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %tobool60.not = icmp sgt i32 %73, -1
  br i1 %tobool60.not, label %if.end57.if.end66_crit_edge, label %if.then61

if.end57.if.end66_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

if.then61:                                        ; preds = %if.end57
  %call.i235 = call fastcc i32 @hidpp10_set_register(ptr noundef %hidpp, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i235)
  %tobool63.not = icmp eq i32 %call.i235, 0
  br i1 %tobool63.not, label %if.then61.if.end66_crit_edge, label %if.then61.cleanup_crit_edge

if.then61.cleanup_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then61.if.end66_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

if.end66:                                         ; preds = %if.then61.if.end66_crit_edge, %if.end57.if.end66_crit_edge
  %protocol_major = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 8
  %74 = ptrtoint ptr %protocol_major to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %protocol_major, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool67.not = icmp eq i8 %75, 0
  br i1 %tobool67.not, label %if.then68, label %if.end66.if.end73_crit_edge

if.end66.if.end73_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

if.then68:                                        ; preds = %if.end66
  %call69 = call fastcc i32 @hidpp_root_get_protocol_version(ptr noundef %hidpp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then68.if.end73_crit_edge, label %do.end

if.then68.if.end73_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

do.end:                                           ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.89) #15
  br label %cleanup

if.end73:                                         ; preds = %if.then68.if.end73_crit_edge, %if.end66.if.end73_crit_edge
  %name74 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 4
  %76 = ptrtoint ptr %name74 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %name74, align 8
  %name75 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 39
  %cmp = icmp eq ptr %77, %name75
  br i1 %cmp, label %land.lhs.true, label %if.end73.if.end90_crit_edge

if.end73.if.end90_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

land.lhs.true:                                    ; preds = %if.end73
  %78 = ptrtoint ptr %protocol_major to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %protocol_major, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %79)
  %cmp77 = icmp ugt i8 %79, 1
  br i1 %cmp77, label %if.then79, label %land.lhs.true.if.end90_crit_edge

land.lhs.true.if.end90_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

if.then79:                                        ; preds = %land.lhs.true
  %call80 = call fastcc ptr @hidpp_get_device_name(ptr noundef %hidpp)
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %if.then79.if.end90_crit_edge, label %if.then82

if.then79.if.end90_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

if.then82:                                        ; preds = %if.then79
  %dev83 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  %call84 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev83, i32 noundef 3264, ptr noundef nonnull @.str.40, ptr noundef nonnull %call80) #12
  call void @kfree(ptr noundef nonnull %call80) #12
  %tobool85.not = icmp eq ptr %call84, null
  br i1 %tobool85.not, label %if.then82.cleanup_crit_edge, label %if.end87

if.then82.cleanup_crit_edge:                      ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end87:                                         ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %name74 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call84, ptr %name74, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.end87, %if.then79.if.end90_crit_edge, %land.lhs.true.if.end90_crit_edge, %if.end73.if.end90_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cfg.i) #12
  %81 = getelementptr inbounds %struct.power_supply_config, ptr %cfg.i, i32 0, i32 2
  %82 = call ptr @memset(ptr %cfg.i, i32 0, i32 24)
  %83 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %hidpp, ptr %81, align 4
  %desc1.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 3
  %ps.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 4
  %84 = ptrtoint ptr %ps.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ps.i, align 8
  %tobool.not.i238 = icmp eq ptr %85, null
  br i1 %tobool.not.i238, label %if.end.i239, label %if.end90.hidpp_initialize_battery.exit_crit_edge

if.end90.hidpp_initialize_battery.exit_crit_edge: ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_initialize_battery.exit

if.end.i239:                                      ; preds = %if.end90
  %battery.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18
  %86 = ptrtoint ptr %battery.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -1, ptr %battery.i, align 8
  %solar_feature_index.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 1
  %87 = ptrtoint ptr %solar_feature_index.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 -1, ptr %solar_feature_index.i, align 1
  %voltage_feature_index.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 2
  %88 = ptrtoint ptr %voltage_feature_index.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -1, ptr %voltage_feature_index.i, align 2
  %89 = ptrtoint ptr %protocol_major to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %protocol_major, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %90)
  %cmp.i = icmp ugt i8 %90, 1
  br i1 %cmp.i, label %if.then8.i, label %if.else24.i

if.then8.i:                                       ; preds = %if.end.i239
  %91 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %quirks, align 4
  %and.i = and i32 %92, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %if.else.i, label %if.then.i.i242

if.then.i.i242:                                   ; preds = %if.then8.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i.i237) #12
  %93 = call ptr @memset(ptr %response.i.i237, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i.i.i236) #12
  %94 = call ptr @memset(ptr %response.i.i.i236, i32 255, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %95 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i.i240 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %95, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i.i.i.i241 = icmp eq ptr %call7.i.i.i.i.i.i240, null
  br i1 %tobool.not.i.i.i.i241, label %if.then.i.i242.hidpp_root_get_feature.exit.thread.i.i253_crit_edge, label %hidpp_send_fap_command_sync.exit.i.i.i248

if.then.i.i242.hidpp_root_get_feature.exit.thread.i.i253_crit_edge: ; preds = %if.then.i.i242
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread.i.i253

hidpp_send_fap_command_sync.exit.i.i.i248:        ; preds = %if.then.i.i242
  %96 = ptrtoint ptr %call7.i.i.i.i.i.i240 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 17, ptr %call7.i.i.i.i.i.i240, align 8
  %97 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i.i240, i32 0, i32 2
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %97, align 2
  %funcindex_clientid7.i.i.i.i243 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i.i240, i32 0, i32 2, i32 0, i32 1
  %99 = ptrtoint ptr %funcindex_clientid7.i.i.i.i243 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %funcindex_clientid7.i.i.i.i243, align 1
  %params8.i.i.i.i244 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i.i240, i32 0, i32 2, i32 0, i32 2
  %100 = ptrtoint ptr %params8.i.i.i.i244 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 67, ptr %params8.i.i.i.i244, align 4
  %params.sroa.5.0.params8.i.sroa_idx.i.i.i245 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i.i240, i32 0, i32 2, i32 0, i32 2, i32 1
  %101 = ptrtoint ptr %params.sroa.5.0.params8.i.sroa_idx.i.i.i245 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %params.sroa.5.0.params8.i.sroa_idx.i.i.i245, align 1
  %call9.i.i.i.i246 = call fastcc i32 @hidpp_send_message_sync(ptr noundef %hidpp, ptr noundef nonnull %call7.i.i.i.i.i.i240, ptr noundef nonnull %response.i.i.i236) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i.i240) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i.i246)
  %tobool.not.i.i.i247 = icmp eq i32 %call9.i.i.i.i246, 0
  br i1 %tobool.not.i.i.i247, label %if.end.i.i.i251, label %hidpp_send_fap_command_sync.exit.i.i.i248.hidpp_root_get_feature.exit.thread.i.i253_crit_edge

hidpp_send_fap_command_sync.exit.i.i.i248.hidpp_root_get_feature.exit.thread.i.i253_crit_edge: ; preds = %hidpp_send_fap_command_sync.exit.i.i.i248
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread.i.i253

if.end.i.i.i251:                                  ; preds = %hidpp_send_fap_command_sync.exit.i.i.i248
  %params4.i.i.i249 = getelementptr inbounds %struct.hidpp_report, ptr %response.i.i.i236, i32 0, i32 2, i32 0, i32 2
  %102 = ptrtoint ptr %params4.i.i.i249 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %params4.i.i.i249, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %cmp.i.i.i250 = icmp eq i8 %103, 0
  br i1 %cmp.i.i.i250, label %if.end.i.i.i251.hidpp_root_get_feature.exit.thread.i.i253_crit_edge, label %if.end4.i.i255

if.end.i.i.i251.hidpp_root_get_feature.exit.thread.i.i253_crit_edge: ; preds = %if.end.i.i.i251
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread.i.i253

hidpp_root_get_feature.exit.thread.i.i253:        ; preds = %if.end.i.i.i251.hidpp_root_get_feature.exit.thread.i.i253_crit_edge, %hidpp_send_fap_command_sync.exit.i.i.i248.hidpp_root_get_feature.exit.thread.i.i253_crit_edge, %if.then.i.i242.hidpp_root_get_feature.exit.thread.i.i253_crit_edge
  %retval.0.i.ph.i.i252 = phi i32 [ -12, %if.then.i.i242.hidpp_root_get_feature.exit.thread.i.i253_crit_edge ], [ -2, %if.end.i.i.i251.hidpp_root_get_feature.exit.thread.i.i253_crit_edge ], [ %call9.i.i.i.i246, %hidpp_send_fap_command_sync.exit.i.i.i248.hidpp_root_get_feature.exit.thread.i.i253_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i.i.i236) #12
  br label %hidpp_solar_request_battery_event.exit.i

if.end4.i.i255:                                   ; preds = %if.end.i.i.i251
  %104 = ptrtoint ptr %solar_feature_index.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %solar_feature_index.i, align 1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i.i.i236) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %105 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i254 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %105, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i29.i.i = icmp eq ptr %call7.i.i.i.i.i254, null
  br i1 %tobool.not.i29.i.i, label %if.end4.i.i255.hidpp_solar_request_battery_event.exit.i_crit_edge, label %hidpp_send_fap_command_sync.exit.i.i

if.end4.i.i255.hidpp_solar_request_battery_event.exit.i_crit_edge: ; preds = %if.end4.i.i255
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_solar_request_battery_event.exit.i

hidpp_send_fap_command_sync.exit.i.i:             ; preds = %if.end4.i.i255
  %106 = ptrtoint ptr %call7.i.i.i.i.i254 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 17, ptr %call7.i.i.i.i.i254, align 8
  %107 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i254, i32 0, i32 2
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %103, ptr %107, align 2
  %funcindex_clientid7.i.i.i256 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i254, i32 0, i32 2, i32 0, i32 1
  %109 = ptrtoint ptr %funcindex_clientid7.i.i.i256 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %funcindex_clientid7.i.i.i256, align 1
  %params8.i.i.i257 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i254, i32 0, i32 2, i32 0, i32 2
  %110 = ptrtoint ptr %params8.i.i.i257 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 257, ptr %params8.i.i.i257, align 4
  %call9.i.i.i258 = call fastcc i32 @hidpp_send_message_sync(ptr noundef %hidpp, ptr noundef nonnull %call7.i.i.i.i.i254, ptr noundef nonnull %response.i.i237) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i254) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i258)
  %cmp8.i.i = icmp sgt i32 %call9.i.i.i258, 0
  br i1 %cmp8.i.i, label %do.end.i.i, label %if.end11.i.i

do.end.i.i:                                       ; preds = %hidpp_send_fap_command_sync.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %111 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hidpp, align 8
  %dev.i.i = getelementptr inbounds %struct.hid_device, ptr %112, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.98, i32 noundef %call9.i.i.i258) #15
  br label %hidpp_solar_request_battery_event.exit.i

if.end11.i.i:                                     ; preds = %hidpp_send_fap_command_sync.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i258)
  %tobool12.not.i.i = icmp eq i32 %call9.i.i.i258, 0
  br i1 %tobool12.not.i.i, label %if.end14.i.i, label %if.end11.i.i.hidpp_solar_request_battery_event.exit.i_crit_edge

if.end11.i.i.hidpp_solar_request_battery_event.exit.i_crit_edge: ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_solar_request_battery_event.exit.i

if.end14.i.i:                                     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %capabilities.i.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 16
  %113 = ptrtoint ptr %capabilities.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %capabilities.i.i, align 8
  %or.i.i = or i32 %114, 4
  store i32 %or.i.i, ptr %capabilities.i.i, align 8
  br label %hidpp_solar_request_battery_event.exit.i

hidpp_solar_request_battery_event.exit.i:         ; preds = %if.end14.i.i, %if.end11.i.i.hidpp_solar_request_battery_event.exit.i_crit_edge, %do.end.i.i, %if.end4.i.i255.hidpp_solar_request_battery_event.exit.i_crit_edge, %hidpp_root_get_feature.exit.thread.i.i253
  %retval.0.i.i259 = phi i32 [ -71, %do.end.i.i ], [ 0, %if.end14.i.i ], [ %call9.i.i.i258, %if.end11.i.i.hidpp_solar_request_battery_event.exit.i_crit_edge ], [ %retval.0.i.ph.i.i252, %hidpp_root_get_feature.exit.thread.i.i253 ], [ -12, %if.end4.i.i255.hidpp_solar_request_battery_event.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i.i237) #12
  br label %if.end20.i

if.else.i:                                        ; preds = %if.then8.i
  %call11.i = call fastcc i32 @hidpp20_query_battery_info_1000(ptr noundef %hidpp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.else.i.if.end40.i_crit_edge, label %if.then13.i

if.else.i.if.end40.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40.i

if.then13.i:                                      ; preds = %if.else.i
  %call14.i = call fastcc i32 @hidpp20_query_battery_info_1004(ptr noundef %hidpp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %phi.cmp.i = icmp eq i32 %call14.i, 0
  br i1 %phi.cmp.i, label %if.then13.i.if.end40.i_crit_edge, label %if.then17.i

if.then13.i.if.end40.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40.i

if.then17.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #14
  %call18.i = call fastcc i32 @hidpp20_query_battery_voltage_info(ptr noundef %hidpp) #12
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %hidpp_solar_request_battery_event.exit.i
  %ret.1.i = phi i32 [ %retval.0.i.i259, %hidpp_solar_request_battery_event.exit.i ], [ %call18.i, %if.then17.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool21.not.i = icmp eq i32 %ret.1.i, 0
  br i1 %tobool21.not.i, label %if.end20.i.if.end40.i_crit_edge, label %if.end20.i.hidpp_initialize_battery.exit_crit_edge

if.end20.i.hidpp_initialize_battery.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_initialize_battery.exit

if.end20.i.if.end40.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40.i

if.else24.i:                                      ; preds = %if.end.i239
  %call25.i = call fastcc i32 @hidpp10_query_battery_status(ptr noundef %hidpp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.else24.i.if.end37.i_crit_edge, label %if.then27.i

if.else24.i.if.end37.i_crit_edge:                 ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i

if.then27.i:                                      ; preds = %if.else24.i
  %call28.i = call fastcc i32 @hidpp10_query_battery_mileage(ptr noundef %hidpp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.then27.i.if.end37.i_crit_edge, label %if.then27.i.hidpp_initialize_battery.exit_crit_edge

if.then27.i.hidpp_initialize_battery.exit_crit_edge: ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_initialize_battery.exit

if.then27.i.if.end37.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then27.i.if.end37.i_crit_edge, %if.else24.i.if.end37.i_crit_edge
  %.sink5.i = phi i32 [ 4, %if.then27.i.if.end37.i_crit_edge ], [ 8, %if.else24.i.if.end37.i_crit_edge ]
  %capabilities35.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 16
  %115 = ptrtoint ptr %capabilities35.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %capabilities35.i, align 8
  %or36.i = or i32 %116, %.sink5.i
  store i32 %or36.i, ptr %capabilities35.i, align 8
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.end37.i, %if.end20.i.if.end40.i_crit_edge, %if.then13.i.if.end40.i_crit_edge, %if.else.i.if.end40.i_crit_edge
  %.sink7.i = phi i32 [ 1, %if.end37.i ], [ 2, %if.else.i.if.end40.i_crit_edge ], [ 2, %if.then13.i.if.end40.i_crit_edge ], [ 2, %if.end20.i.if.end40.i_crit_edge ]
  %capabilities38.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 16
  %117 = ptrtoint ptr %capabilities38.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %capabilities38.i, align 8
  %or39.i = or i32 %118, %.sink7.i
  store i32 %or39.i, ptr %capabilities38.i, align 8
  %119 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %hidpp, align 8
  %dev.i260 = getelementptr inbounds %struct.hid_device, ptr %120, i32 0, i32 18
  %call41.i = call ptr @devm_kmemdup(ptr noundef %dev.i260, ptr noundef nonnull @hidpp_battery_props, i32 noundef 36, i32 noundef 3264) #12
  %tobool42.not.i = icmp eq ptr %call41.i, null
  br i1 %tobool42.not.i, label %if.end40.i.hidpp_initialize_battery.exit_crit_edge, label %if.end44.i

if.end40.i.hidpp_initialize_battery.exit_crit_edge: ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_initialize_battery.exit

if.end44.i:                                       ; preds = %if.end40.i
  %121 = ptrtoint ptr %capabilities38.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %capabilities38.i, align 8
  %123 = and i32 %122, 52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %if.end44.i.if.end56.i_crit_edge, label %if.then55.i

if.end44.i.if.end56.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

if.then55.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr i32, ptr %call41.i, i32 6
  %125 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 47, ptr %arrayidx.i, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then55.i, %if.end44.i.if.end56.i_crit_edge
  %num_battery_props.0.i = phi i32 [ 7, %if.then55.i ], [ 6, %if.end44.i.if.end56.i_crit_edge ]
  %126 = ptrtoint ptr %capabilities38.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %capabilities38.i, align 8
  %and58.i = and i32 %127, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %if.end56.i.if.end63.i_crit_edge, label %if.then60.i

if.end56.i.if.end63.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63.i

if.then60.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc61.i = add nuw nsw i32 %num_battery_props.0.i, 1
  %arrayidx62.i = getelementptr i32, ptr %call41.i, i32 %num_battery_props.0.i
  %128 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 51, ptr %arrayidx62.i, align 4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then60.i, %if.end56.i.if.end63.i_crit_edge
  %num_battery_props.1.i = phi i32 [ %inc61.i, %if.then60.i ], [ %num_battery_props.0.i, %if.end56.i.if.end63.i_crit_edge ]
  %129 = ptrtoint ptr %capabilities38.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %capabilities38.i, align 8
  %and65.i = and i32 %130, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  br i1 %tobool66.not.i, label %if.end63.i.if.end70.i_crit_edge, label %if.then67.i

if.end63.i.if.end70.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.i

if.then67.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc68.i = add nuw nsw i32 %num_battery_props.1.i, 1
  %arrayidx69.i = getelementptr i32, ptr %call41.i, i32 %num_battery_props.1.i
  %131 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 12, ptr %arrayidx69.i, align 4
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then67.i, %if.end63.i.if.end70.i_crit_edge
  %num_battery_props.2.i = phi i32 [ %inc68.i, %if.then67.i ], [ %num_battery_props.1.i, %if.end63.i.if.end70.i_crit_edge ]
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @hidpp_initialize_battery.battery_no, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !455
  call void @llvm.prefetch.p0(ptr nonnull @hidpp_initialize_battery.battery_no, i32 1, i32 3, i32 1) #12
  %132 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @hidpp_initialize_battery.battery_no, ptr nonnull @hidpp_initialize_battery.battery_no, i32 1, ptr nonnull elementtype(i32) @hidpp_initialize_battery.battery_no) #12, !srcloc !456
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %132, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !457
  %sub.i = add i32 %asmresult.i.i.i.i.i, -1
  %properties.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 3, i32 4
  %133 = ptrtoint ptr %properties.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call41.i, ptr %properties.i, align 4
  %num_properties.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 3, i32 5
  %134 = ptrtoint ptr %num_properties.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %num_battery_props.2.i, ptr %num_properties.i, align 4
  %get_property.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 3, i32 6
  %135 = ptrtoint ptr %get_property.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @hidpp_battery_get_property, ptr %get_property.i, align 4
  %name.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 5
  %call73.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name.i, ptr noundef nonnull @.str.97, i32 noundef %sub.i) #12
  %136 = ptrtoint ptr %desc1.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %name.i, ptr %desc1.i, align 4
  %type.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 3, i32 1
  %137 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 1, ptr %type.i, align 4
  %use_for_apm.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 3, i32 12
  %138 = ptrtoint ptr %use_for_apm.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %use_for_apm.i, align 4
  %139 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %hidpp, align 8
  %dev78.i = getelementptr inbounds %struct.hid_device, ptr %140, i32 0, i32 18
  %call80.i = call ptr @devm_power_supply_register(ptr noundef %dev78.i, ptr noundef %desc1.i, ptr noundef nonnull %cfg.i) #12
  %141 = ptrtoint ptr %ps.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call80.i, ptr %ps.i, align 4
  %cmp.i2.i = icmp ugt ptr %call80.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i2.i, label %if.end70.i.hidpp_initialize_battery.exit_crit_edge, label %if.end87.i

if.end70.i.hidpp_initialize_battery.exit_crit_edge: ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_initialize_battery.exit

if.end87.i:                                       ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #14
  %142 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %hidpp, align 8
  %dev90.i = getelementptr inbounds %struct.hid_device, ptr %143, i32 0, i32 18
  %call91.i = call i32 @power_supply_powers(ptr noundef %call80.i, ptr noundef %dev90.i) #12
  br label %hidpp_initialize_battery.exit

hidpp_initialize_battery.exit:                    ; preds = %if.end87.i, %if.end70.i.hidpp_initialize_battery.exit_crit_edge, %if.end40.i.hidpp_initialize_battery.exit_crit_edge, %if.then27.i.hidpp_initialize_battery.exit_crit_edge, %if.end20.i.hidpp_initialize_battery.exit_crit_edge, %if.end90.hidpp_initialize_battery.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cfg.i) #12
  %capabilities = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 16
  %144 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %capabilities, align 8
  %and92 = and i32 %145, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.else104, label %if.then94

if.then94:                                        ; preds = %hidpp_initialize_battery.exit
  %146 = call fastcc i32 @hidpp10_set_register(ptr noundef %hidpp, i8 noundef zeroext 0, i8 noundef zeroext 16, i8 noundef zeroext 16) #12
  %147 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %capabilities, align 8
  %and97 = and i32 %148, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.else101, label %if.then99

if.then99:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  %call100 = call fastcc i32 @hidpp10_query_battery_mileage(ptr noundef %hidpp)
  br label %if.end125

if.else101:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  %call102 = call fastcc i32 @hidpp10_query_battery_status(ptr noundef %hidpp)
  br label %if.end125

if.else104:                                       ; preds = %hidpp_initialize_battery.exit
  %and106 = and i32 %145, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.else104.if.end125_crit_edge, label %if.then108

if.else104.if.end125_crit_edge:                   ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end125

if.then108:                                       ; preds = %if.else104
  %and110 = and i32 %145, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.else114, label %if.then112

if.then112:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #14
  %call113 = call fastcc i32 @hidpp20_query_battery_voltage_info(ptr noundef %hidpp)
  br label %if.end125

if.else114:                                       ; preds = %if.then108
  %and116 = and i32 %145, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.else120, label %if.then118

if.then118:                                       ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #14
  %call119 = call fastcc i32 @hidpp20_query_battery_info_1004(ptr noundef %hidpp)
  br label %if.end125

if.else120:                                       ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #14
  %call121 = call fastcc i32 @hidpp20_query_battery_info_1000(ptr noundef %hidpp)
  br label %if.end125

if.end125:                                        ; preds = %if.else120, %if.then118, %if.then112, %if.else104.if.end125_crit_edge, %if.else101, %if.then99
  %149 = ptrtoint ptr %ps.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ps.i, align 8
  %tobool128.not = icmp eq ptr %150, null
  br i1 %tobool128.not, label %if.end125.if.end132_crit_edge, label %if.then129

if.end125.if.end132_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

if.then129:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #14
  call void @power_supply_changed(ptr noundef nonnull %150) #12
  br label %if.end132

if.end132:                                        ; preds = %if.then129, %if.end125.if.end132_crit_edge
  %151 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %quirks, align 4
  %and134 = and i32 %152, 469762048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.end132.if.end138_crit_edge, label %if.then136

if.end132.if.end138_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138

if.then136:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @hi_res_scroll_enable(ptr noundef %hidpp)
  br label %if.end138

if.end138:                                        ; preds = %if.then136, %if.end132.if.end138_crit_edge
  %153 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %quirks, align 4
  %and140 = and i32 %154, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %if.end138.cleanup_crit_edge, label %lor.lhs.false

if.end138.cleanup_crit_edge:                      ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end138
  %delayed_input = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 14
  %155 = ptrtoint ptr %delayed_input to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %delayed_input, align 8
  %tobool142.not = icmp eq ptr %156, null
  br i1 %tobool142.not, label %if.end144, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end144:                                        ; preds = %lor.lhs.false
  %call145 = call fastcc ptr @hidpp_allocate_input(ptr noundef %1)
  %tobool146.not = icmp eq ptr %call145, null
  br i1 %tobool146.not, label %do.end150, label %if.end152

do.end150:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #14
  %dev151 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev151, ptr noundef nonnull @.str.92, i32 noundef 0) #15
  br label %cleanup

if.end152:                                        ; preds = %if.end144
  call fastcc void @hidpp_populate_input(ptr noundef %hidpp, ptr noundef nonnull %call145)
  %call153 = call i32 @input_register_device(ptr noundef nonnull %call145) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.end152.if.end156_crit_edge, label %if.then155

if.end152.if.end156_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end156

if.then155:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  call void @input_free_device(ptr noundef nonnull %call145) #12
  br label %if.end156

if.end156:                                        ; preds = %if.then155, %if.end152.if.end156_crit_edge
  %157 = ptrtoint ptr %delayed_input to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %call145, ptr %delayed_input, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end156, %do.end150, %lor.lhs.false.cleanup_crit_edge, %if.end138.cleanup_crit_edge, %if.then82.cleanup_crit_edge, %do.end, %if.then61.cleanup_crit_edge, %if.then52.cleanup_crit_edge, %if.then43.cleanup_crit_edge, %k400_connect.exit.cleanup_crit_edge, %k400_connect.exit.thread273, %k400_connect.exit.thread270, %m560_send_config_command.exit.cleanup_crit_edge, %m560_send_config_command.exit.thread, %wtp_connect.exit.cleanup_crit_edge, %wtp_connect.exit.thread263, %wtp_connect.exit.thread, %if.then4, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hidpp_send_message_sync(ptr noundef %hidpp, ptr noundef %message, ptr noundef %response) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %send_mutex = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %send_mutex, i32 noundef 0) #12
  %send_receive_buf = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 3
  %0 = ptrtoint ptr %send_receive_buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %response, ptr %send_receive_buf, align 4
  %answer_available = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 7
  %1 = ptrtoint ptr %answer_available to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %answer_available, align 4
  %2 = call ptr @memcpy(ptr %response, ptr %message, i32 64)
  %3 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hidpp, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %4, i32 0, i32 18, i32 8
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i, align 4
  %7 = ptrtoint ptr %message to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %message, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.212)
  switch i8 %8, label %entry.do.body_crit_edge [
    i8 16, label %entry.sw.epilog.i_crit_edge
    i8 17, label %sw.bb1.i
    i8 18, label %sw.bb2.i
  ]

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %very_long_report_length.i = getelementptr inbounds %struct.hidpp_device, ptr %6, i32 0, i32 6
  %10 = ptrtoint ptr %very_long_report_length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %very_long_report_length.i, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb1.i, %entry.sw.epilog.i_crit_edge
  %fields_count.0.i = phi i32 [ %11, %sw.bb2.i ], [ 20, %sw.bb1.i ], [ 7, %entry.sw.epilog.i_crit_edge ]
  %device_index.i = getelementptr inbounds %struct.hidpp_report, ptr %message, i32 0, i32 1
  %12 = ptrtoint ptr %device_index.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %device_index.i, align 1
  %quirks.i = getelementptr inbounds %struct.hidpp_device, ptr %6, i32 0, i32 15
  %13 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i = tail call i32 @hid_hw_output_report(ptr noundef %4, ptr noundef %message, i32 noundef %fields_count.0.i) #12
  br label %__hidpp_send_report.exit

if.else.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i = tail call i32 @hid_hw_raw_request(ptr noundef %4, i8 noundef zeroext %8, ptr noundef %message, i32 noundef %fields_count.0.i, i8 noundef zeroext 1, i32 noundef 9) #12
  br label %__hidpp_send_report.exit

__hidpp_send_report.exit:                         ; preds = %if.else.i, %if.then.i
  %ret.0.i = phi i32 [ %call3.i, %if.then.i ], [ %call5.i, %if.else.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0.i, i32 %fields_count.0.i)
  %cmp.i.not = icmp eq i32 %ret.0.i, %fields_count.0.i
  br i1 %cmp.i.not, label %if.end7, label %__hidpp_send_report.exit.do.body_crit_edge

__hidpp_send_report.exit.do.body_crit_edge:       ; preds = %__hidpp_send_report.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %__hidpp_send_report.exit.do.body_crit_edge, %entry.do.body_crit_edge
  %retval.0.i148 = phi i32 [ -1, %__hidpp_send_report.exit.do.body_crit_edge ], [ -19, %entry.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %15 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not = icmp eq i32 %15, 0
  br i1 %tobool1.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.4, i32 noundef %retval.0.i148) #15
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %16 = call ptr @memset(ptr %response, i32 0, i32 64)
  br label %exit

if.end7:                                          ; preds = %__hidpp_send_report.exit
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 300) #12
  %17 = ptrtoint ptr %answer_available to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %answer_available, align 4, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool15.not = icmp eq i8 %18, 0
  br i1 %tobool15.not, label %if.then24, label %if.end7.if.end64_crit_edge

if.end7.if.end64_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then24:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %19 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %wait = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 5
  %call26157 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %20 = ptrtoint ptr %answer_available to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %answer_available, align 4, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool29.not158.not = icmp eq i8 %21, 0
  br i1 %tobool29.not158.not, label %if.then24.cleanup_crit_edge, label %if.end49.thread

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  br label %cleanup

if.end49.thread:                                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end64

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then24.cleanup_crit_edge
  %__ret25.1160 = phi i32 [ %__ret25.1, %cleanup.cleanup_crit_edge ], [ 500, %if.then24.cleanup_crit_edge ]
  %call46 = call i32 @schedule_timeout(i32 noundef %__ret25.1160) #12
  %call26 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %22 = ptrtoint ptr %answer_available to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %answer_available, align 4, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool29.not = icmp eq i8 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool33.not = icmp eq i32 %call46, 0
  %spec.store.select114 = select i1 %tobool33.not, i32 1, i32 %call46
  %__ret25.1 = select i1 %tobool29.not, i32 %call46, i32 %spec.store.select114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret25.1)
  %tobool39.not = icmp eq i32 %__ret25.1, 0
  %not.tobool29.not = xor i1 %tobool29.not, true
  %24 = select i1 %not.tobool29.not, i1 true, i1 %tobool39.not
  br i1 %24, label %if.end49, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end49:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret25.1)
  %phi.cmp = icmp eq i32 %__ret25.1, 0
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br i1 %phi.cmp, label %do.body53, label %if.end49.if.end64_crit_edge

if.end49.if.end64_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

do.body53:                                        ; preds = %if.end49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %25 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool54.not = icmp eq i32 %25, 0
  br i1 %tobool54.not, label %do.body53.do.end63_crit_edge, label %do.end58

do.body53.do.end63_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end63

do.end58:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #14
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.45) #15
  br label %do.end63

do.end63:                                         ; preds = %do.end58, %do.body53.do.end63_crit_edge
  %26 = call ptr @memset(ptr %response, i32 0, i32 64)
  br label %if.end64

if.end64:                                         ; preds = %do.end63, %if.end49.if.end64_crit_edge, %if.end49.thread, %if.end7.if.end64_crit_edge
  %ret.0 = phi i32 [ 0, %if.end49.if.end64_crit_edge ], [ -110, %do.end63 ], [ 0, %if.end7.if.end64_crit_edge ], [ 0, %if.end49.thread ]
  %27 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %response, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %28)
  %cmp = icmp eq i8 %28, 16
  br i1 %cmp, label %land.lhs.true66, label %if.end83

land.lhs.true66:                                  ; preds = %if.end64
  %29 = getelementptr inbounds %struct.hidpp_report, ptr %response, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -113, i8 %31)
  %cmp68 = icmp eq i8 %31, -113
  br i1 %cmp68, label %if.then70, label %land.lhs.true66.exit_crit_edge

land.lhs.true66.exit_crit_edge:                   ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then70:                                        ; preds = %land.lhs.true66
  %arrayidx = getelementptr %struct.hidpp_report, ptr %response, i32 0, i32 2, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx, align 1
  %conv71 = zext i8 %33 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %34 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool73.not = icmp eq i32 %34, 0
  br i1 %tobool73.not, label %if.then70.exit_crit_edge, label %do.end77

if.then70.exit_crit_edge:                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

do.end77:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #14
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.45, i32 noundef %conv71) #15
  br label %exit

if.end83:                                         ; preds = %if.end64
  %.off = add i8 %28, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch145 = icmp ult i8 %.off, 2
  br i1 %switch145, label %land.lhs.true92, label %if.end83.exit_crit_edge

if.end83.exit_crit_edge:                          ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

land.lhs.true92:                                  ; preds = %if.end83
  %35 = getelementptr inbounds %struct.hidpp_report, ptr %response, i32 0, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %37)
  %cmp94 = icmp eq i8 %37, -1
  br i1 %cmp94, label %if.then96, label %land.lhs.true92.exit_crit_edge

land.lhs.true92.exit_crit_edge:                   ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then96:                                        ; preds = %land.lhs.true92
  %arrayidx98 = getelementptr %struct.hidpp_report, ptr %response, i32 0, i32 2, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %39 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %40 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool101.not = icmp eq i32 %40, 0
  br i1 %tobool101.not, label %if.then96.exit_crit_edge, label %do.end105

if.then96.exit_crit_edge:                         ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

do.end105:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #14
  %call107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.45, i32 noundef %conv99) #15
  br label %exit

exit:                                             ; preds = %do.end105, %if.then96.exit_crit_edge, %land.lhs.true92.exit_crit_edge, %if.end83.exit_crit_edge, %do.end77, %if.then70.exit_crit_edge, %land.lhs.true66.exit_crit_edge, %do.end6
  %ret.1 = phi i32 [ %retval.0.i148, %do.end6 ], [ %conv71, %do.end77 ], [ %conv71, %if.then70.exit_crit_edge ], [ %conv99, %do.end105 ], [ %conv99, %if.then96.exit_crit_edge ], [ %ret.0, %land.lhs.true92.exit_crit_edge ], [ %ret.0, %if.end83.exit_crit_edge ], [ %ret.0, %land.lhs.true66.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %send_mutex) #12
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_output_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_raw_request(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @hidpp_get_device_name(ptr noundef %hidpp) unnamed_addr #2 align 64 {
entry:
  %response.i46 = alloca %struct.hidpp_report, align 1
  %response.i35 = alloca %struct.hidpp_report, align 1
  %response.i = alloca %struct.hidpp_report, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i) #12
  %0 = call ptr @memset(ptr %response.i, i32 255, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.hidpp_root_get_feature.exit.thread_crit_edge, label %hidpp_send_fap_command_sync.exit.i

entry.hidpp_root_get_feature.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread

hidpp_send_fap_command_sync.exit.i:               ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 17, ptr %call7.i.i.i.i, align 8
  %3 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %3, align 2
  %funcindex_clientid7.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 1
  %5 = ptrtoint ptr %funcindex_clientid7.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %funcindex_clientid7.i.i, align 1
  %params8.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 2
  %6 = ptrtoint ptr %params8.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %params8.i.i, align 4
  %params.sroa.5.0.params8.i.sroa_idx.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %params.sroa.5.0.params8.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 5, ptr %params.sroa.5.0.params8.i.sroa_idx.i, align 1
  %call9.i.i = call fastcc i32 @hidpp_send_message_sync(ptr noundef %hidpp, ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull %response.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool.not.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %hidpp_send_fap_command_sync.exit.i.hidpp_root_get_feature.exit.thread_crit_edge

hidpp_send_fap_command_sync.exit.i.hidpp_root_get_feature.exit.thread_crit_edge: ; preds = %hidpp_send_fap_command_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread

if.end.i:                                         ; preds = %hidpp_send_fap_command_sync.exit.i
  %params4.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i, i32 0, i32 2, i32 0, i32 2
  %8 = ptrtoint ptr %params4.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %params4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.i = icmp eq i8 %9, 0
  br i1 %cmp.i, label %if.end.i.hidpp_root_get_feature.exit.thread_crit_edge, label %if.end

if.end.i.hidpp_root_get_feature.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread

hidpp_root_get_feature.exit.thread:               ; preds = %if.end.i.hidpp_root_get_feature.exit.thread_crit_edge, %hidpp_send_fap_command_sync.exit.i.hidpp_root_get_feature.exit.thread_crit_edge, %entry.hidpp_root_get_feature.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i35) #12
  %10 = call ptr @memset(ptr %response.i35, i32 255, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i36 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i.i37 = icmp eq ptr %call7.i.i.i.i36, null
  br i1 %tobool.not.i.i37, label %if.end.hidpp_devicenametype_get_count.exit.thread_crit_edge, label %hidpp_send_fap_command_sync.exit.i41

if.end.hidpp_devicenametype_get_count.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_devicenametype_get_count.exit.thread

hidpp_send_fap_command_sync.exit.i41:             ; preds = %if.end
  %12 = ptrtoint ptr %call7.i.i.i.i36 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 17, ptr %call7.i.i.i.i36, align 8
  %13 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i36, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %9, ptr %13, align 2
  %funcindex_clientid7.i.i38 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i36, i32 0, i32 2, i32 0, i32 1
  %15 = ptrtoint ptr %funcindex_clientid7.i.i38 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %funcindex_clientid7.i.i38, align 1
  %call9.i.i39 = call fastcc i32 @hidpp_send_message_sync(ptr noundef %hidpp, ptr noundef nonnull %call7.i.i.i.i36, ptr noundef nonnull %response.i35) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i39)
  %cmp.i40 = icmp sgt i32 %call9.i.i39, 0
  br i1 %cmp.i40, label %do.end.i, label %if.end.i43

do.end.i:                                         ; preds = %hidpp_send_fap_command_sync.exit.i41
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hidpp, align 8
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %17, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.71, i32 noundef %call9.i.i39) #15
  br label %hidpp_devicenametype_get_count.exit.thread

if.end.i43:                                       ; preds = %hidpp_send_fap_command_sync.exit.i41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i39)
  %tobool.not.i42 = icmp eq i32 %call9.i.i39, 0
  br i1 %tobool.not.i42, label %if.end4, label %if.end.i43.hidpp_devicenametype_get_count.exit.thread_crit_edge

if.end.i43.hidpp_devicenametype_get_count.exit.thread_crit_edge: ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_devicenametype_get_count.exit.thread

hidpp_devicenametype_get_count.exit.thread:       ; preds = %if.end.i43.hidpp_devicenametype_get_count.exit.thread_crit_edge, %do.end.i, %if.end.hidpp_devicenametype_get_count.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i35) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end.i43
  %params.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i35, i32 0, i32 2, i32 0, i32 2
  %18 = ptrtoint ptr %params.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %params.i, align 1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i35) #12
  %conv = zext i8 %19 to i32
  %add = add nuw nsw i32 %conv, 1
  %call9.i.i45 = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #17
  %tobool6.not = icmp eq ptr %call9.i.i45, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %while.cond.preheader

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp83.not = icmp eq i8 %19, 0
  br i1 %cmp83.not, label %while.cond.preheader.if.end.i61_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.end.i61_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i61

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %very_long_report_length.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 6
  %uglygep.i = getelementptr inbounds i8, ptr %response.i46, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %while.body.lr.ph
  %index.084 = phi i32 [ 0, %while.body.lr.ph ], [ %add18, %if.end17.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call9.i.i45, i32 %index.084
  %sub = sub i32 %conv, %index.084
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i46) #12
  %20 = call ptr @memset(ptr %response.i46, i32 255, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i47 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i.i48 = icmp eq ptr %call7.i.i.i.i47, null
  br i1 %tobool.not.i.i48, label %while.body.if.then16_crit_edge, label %hidpp_send_fap_command_sync.exit.i53

while.body.if.then16_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

hidpp_send_fap_command_sync.exit.i53:             ; preds = %while.body
  %conv11 = trunc i32 %index.084 to i8
  %22 = ptrtoint ptr %call7.i.i.i.i47 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 17, ptr %call7.i.i.i.i47, align 8
  %23 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i47, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %9, ptr %23, align 2
  %funcindex_clientid7.i.i49 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i47, i32 0, i32 2, i32 0, i32 1
  %25 = ptrtoint ptr %funcindex_clientid7.i.i49 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 17, ptr %funcindex_clientid7.i.i49, align 1
  %params8.i.i50 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i47, i32 0, i32 2, i32 0, i32 2
  %26 = ptrtoint ptr %params8.i.i50 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv11, ptr %params8.i.i50, align 4
  %call9.i.i51 = call fastcc i32 @hidpp_send_message_sync(ptr noundef %hidpp, ptr noundef nonnull %call7.i.i.i.i47, ptr noundef nonnull %response.i46) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i47) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i51)
  %cmp.i52 = icmp sgt i32 %call9.i.i51, 0
  br i1 %cmp.i52, label %do.end.i55, label %if.end.i57

do.end.i55:                                       ; preds = %hidpp_send_fap_command_sync.exit.i53
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hidpp, align 8
  %dev.i54 = getelementptr inbounds %struct.hid_device, ptr %28, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i54, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.72, i32 noundef %call9.i.i51) #15
  br label %if.then16

if.end.i57:                                       ; preds = %hidpp_send_fap_command_sync.exit.i53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i51)
  %tobool.not.i56 = icmp eq i32 %call9.i.i51, 0
  br i1 %tobool.not.i56, label %if.end2.i58, label %if.end.i57.if.then16_crit_edge

if.end.i57.if.then16_crit_edge:                   ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.end2.i58:                                      ; preds = %if.end.i57
  %29 = ptrtoint ptr %response.i46 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %response.i46, align 1
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.213)
  switch i8 %30, label %if.end2.i58.if.then16_crit_edge [
    i8 18, label %sw.bb.i
    i8 17, label %if.end2.i58.sw.epilog.i_crit_edge
    i8 16, label %sw.bb4.i
  ]

if.end2.i58.sw.epilog.i_crit_edge:                ; preds = %if.end2.i58
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.end2.i58.if.then16_crit_edge:                  ; preds = %if.end2.i58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

sw.bb.i:                                          ; preds = %if.end2.i58
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %very_long_report_length.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %very_long_report_length.i, align 8
  %sub.i = add i32 %33, -4
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end2.i58
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb4.i, %sw.bb.i, %if.end2.i58.sw.epilog.i_crit_edge
  %count.0.i = phi i32 [ 3, %sw.bb4.i ], [ %sub.i, %sw.bb.i ], [ 16, %if.end2.i58.sw.epilog.i_crit_edge ]
  %34 = call i32 @llvm.smin.i32(i32 %count.0.i, i32 %sub) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp931.i = icmp sgt i32 %34, 0
  br i1 %cmp931.i, label %if.end17, label %sw.epilog.i.if.then16_crit_edge

sw.epilog.i.if.then16_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.then16:                                        ; preds = %sw.epilog.i.if.then16_crit_edge, %if.end2.i58.if.then16_crit_edge, %if.end.i57.if.then16_crit_edge, %do.end.i55, %while.body.if.then16_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i46) #12
  call void @kfree(ptr noundef nonnull %call9.i.i45) #12
  br label %cleanup

if.end17:                                         ; preds = %sw.epilog.i
  %35 = call ptr @memcpy(ptr %add.ptr, ptr %uglygep.i, i32 %34)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i46) #12
  %add18 = add i32 %34, %index.084
  %cmp = icmp ult i32 %add18, %conv
  br i1 %cmp, label %if.end17.while.body_crit_edge, label %while.end

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %19)
  %cmp.i60 = icmp ugt i8 %19, 8
  br i1 %cmp.i60, label %land.lhs.true.i, label %while.end.if.end.i61_crit_edge

while.end.if.end.i61_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i61

land.lhs.true.i:                                  ; preds = %while.end
  %call.i = call i32 @strncmp(ptr noundef nonnull %call9.i.i45, ptr noundef nonnull dereferenceable(10) @.str.55, i32 noundef 9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end.i61_crit_edge

land.lhs.true.i.if.end.i61_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i61

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i61:                                       ; preds = %land.lhs.true.i.if.end.i61_crit_edge, %while.end.if.end.i61_crit_edge, %while.cond.preheader.if.end.i61_crit_edge
  %add.i = add nuw nsw i32 %conv, 10
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #17
  %tobool.not.i64 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i64, label %if.end.i61.cleanup_crit_edge, label %if.end4.i

if.end.i61.cleanup_crit_edge:                     ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call9.i.i.i, i32 noundef %add.i, ptr noundef nonnull @.str.56, ptr noundef nonnull %call9.i.i45) #12
  call void @kfree(ptr noundef nonnull %call9.i.i45) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i, %if.end.i61.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.then16, %if.end4.cleanup_crit_edge, %hidpp_devicenametype_get_count.exit.thread, %hidpp_root_get_feature.exit.thread
  %retval.0 = phi ptr [ null, %if.then16 ], [ null, %if.end4.cleanup_crit_edge ], [ null, %hidpp_root_get_feature.exit.thread ], [ null, %hidpp_devicenametype_get_count.exit.thread ], [ %call9.i.i45, %land.lhs.true.i.cleanup_crit_edge ], [ %call9.i.i45, %if.end.i61.cleanup_crit_edge ], [ %call9.i.i.i, %if.end4.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hidpp10_query_battery_mileage(ptr noundef %hidpp) unnamed_addr #2 align 64 {
entry:
  %response = alloca %struct.hidpp_report, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response) #12
  %0 = call ptr @memset(ptr %response, i32 255, i32 64)
  %supported_reports.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 17
  %1 = ptrtoint ptr %supported_reports.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %supported_reports.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 64) #16
  %tobool10.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool10.not.i, label %entry.cleanup_crit_edge, label %hidpp_send_rap_command_sync.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

hidpp_send_rap_command_sync.exit:                 ; preds = %entry
  %4 = and i8 %2, 1
  %5 = xor i8 %4, 17
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %call7.i.i.i, align 8
  %7 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -127, ptr %7, align 2
  %reg_address15.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %reg_address15.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 13, ptr %reg_address15.i, align 1
  %call17.i = call fastcc i32 @hidpp_send_message_sync(ptr noundef %hidpp, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %response) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool.not = icmp eq i32 %call17.i, 0
  br i1 %tobool.not, label %if.end, label %hidpp_send_rap_command_sync.exit.cleanup_crit_edge

hidpp_send_rap_command_sync.exit.cleanup_crit_edge: ; preds = %hidpp_send_rap_command_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %hidpp_send_rap_command_sync.exit
  %params = getelementptr inbounds %struct.hidpp_report, ptr %response, i32 0, i32 2, i32 0, i32 2
  %10 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %params, align 1
  %conv = zext i8 %11 to i32
  %capacity = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 7
  %12 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %capacity, align 8
  %arrayidx2 = getelementptr inbounds %struct.hidpp_report, ptr %response, i32 0, i32 2, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx2, align 1
  %15 = lshr i8 %14, 6
  %16 = zext i8 %15 to i32
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.214)
  switch i32 %16, label %sw.default.i [
    i32 0, label %if.end.hidpp10_battery_mileage_map_status.exit_crit_edge
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

if.end.hidpp10_battery_mileage_map_status.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp10_battery_mileage_map_status.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp10_battery_mileage_map_status.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp10_battery_mileage_map_status.exit

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp10_battery_mileage_map_status.exit

hidpp10_battery_mileage_map_status.exit:          ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %if.end.hidpp10_battery_mileage_map_status.exit_crit_edge
  %cmp = phi i1 [ true, %if.end.hidpp10_battery_mileage_map_status.exit_crit_edge ], [ false, %sw.bb1.i ], [ false, %sw.bb2.i ], [ false, %sw.default.i ]
  %cmp7 = phi i1 [ false, %if.end.hidpp10_battery_mileage_map_status.exit_crit_edge ], [ false, %sw.bb1.i ], [ true, %sw.bb2.i ], [ false, %sw.default.i ]
  %status.0.i = phi i32 [ 2, %if.end.hidpp10_battery_mileage_map_status.exit_crit_edge ], [ 1, %sw.bb1.i ], [ 4, %sw.bb2.i ], [ 3, %sw.default.i ]
  %status5 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 6
  %18 = ptrtoint ptr %status5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %status.0.i, ptr %status5, align 4
  %spec.select = or i1 %cmp, %cmp7
  %online = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 11
  %frombool = zext i1 %spec.select to i8
  %19 = ptrtoint ptr %online to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool, ptr %online, align 8
  br label %cleanup

cleanup:                                          ; preds = %hidpp10_battery_mileage_map_status.exit, %hidpp_send_rap_command_sync.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %hidpp10_battery_mileage_map_status.exit ], [ %call17.i, %hidpp_send_rap_command_sync.exit.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hidpp10_query_battery_status(ptr noundef %hidpp) unnamed_addr #2 align 64 {
entry:
  %response = alloca %struct.hidpp_report, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response) #12
  %0 = call ptr @memset(ptr %response, i32 255, i32 64)
  %supported_reports.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 17
  %1 = ptrtoint ptr %supported_reports.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %supported_reports.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 64) #16
  %tobool10.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool10.not.i, label %entry.cleanup_crit_edge, label %hidpp_send_rap_command_sync.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

hidpp_send_rap_command_sync.exit:                 ; preds = %entry
  %4 = and i8 %2, 1
  %5 = xor i8 %4, 17
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %call7.i.i.i, align 8
  %7 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -127, ptr %7, align 2
  %reg_address15.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %reg_address15.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 7, ptr %reg_address15.i, align 1
  %call17.i = call fastcc i32 @hidpp_send_message_sync(ptr noundef %hidpp, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %response) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool.not = icmp eq i32 %call17.i, 0
  br i1 %tobool.not, label %if.end, label %hidpp_send_rap_command_sync.exit.cleanup_crit_edge

hidpp_send_rap_command_sync.exit.cleanup_crit_edge: ; preds = %hidpp_send_rap_command_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %hidpp_send_rap_command_sync.exit
  %params = getelementptr inbounds %struct.hidpp_report, ptr %response, i32 0, i32 2, i32 0, i32 2
  %10 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %params, align 1
  %switch.tableidx = add i8 %11, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx)
  %12 = icmp ult i8 %switch.tableidx, 7
  br i1 %12, label %switch.lookup, label %if.end.hidpp10_battery_status_map_level.exit_crit_edge

if.end.hidpp10_battery_status_map_level.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp10_battery_status_map_level.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %13 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.hidpp10_query_battery_status, i32 0, i32 %13
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %hidpp10_battery_status_map_level.exit

hidpp10_battery_status_map_level.exit:            ; preds = %switch.lookup, %if.end.hidpp10_battery_status_map_level.exit_crit_edge
  %level.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end.hidpp10_battery_status_map_level.exit_crit_edge ]
  %level = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 8
  %15 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %level.0.i, ptr %level, align 4
  %arrayidx3 = getelementptr inbounds %struct.hidpp_report, ptr %response, i32 0, i32 2, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx3, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.215)
  switch i8 %17, label %sw.default.i20 [
    i8 0, label %hidpp10_battery_status_map_level.exit.hidpp10_battery_status_map_status.exit_crit_edge
    i8 33, label %hidpp10_battery_status_map_level.exit.sw.bb1.i17_crit_edge
    i8 36, label %hidpp10_battery_status_map_level.exit.sw.bb1.i17_crit_edge23
    i8 37, label %hidpp10_battery_status_map_level.exit.sw.bb1.i17_crit_edge24
    i8 38, label %hidpp10_battery_status_map_level.exit.sw.bb2.i18_crit_edge
    i8 34, label %hidpp10_battery_status_map_level.exit.sw.bb2.i18_crit_edge25
    i8 32, label %sw.bb3.i19
  ]

hidpp10_battery_status_map_level.exit.sw.bb2.i18_crit_edge25: ; preds = %hidpp10_battery_status_map_level.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i18

hidpp10_battery_status_map_level.exit.sw.bb2.i18_crit_edge: ; preds = %hidpp10_battery_status_map_level.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i18

hidpp10_battery_status_map_level.exit.sw.bb1.i17_crit_edge24: ; preds = %hidpp10_battery_status_map_level.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i17

hidpp10_battery_status_map_level.exit.sw.bb1.i17_crit_edge23: ; preds = %hidpp10_battery_status_map_level.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i17

hidpp10_battery_status_map_level.exit.sw.bb1.i17_crit_edge: ; preds = %hidpp10_battery_status_map_level.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i17

hidpp10_battery_status_map_level.exit.hidpp10_battery_status_map_status.exit_crit_edge: ; preds = %hidpp10_battery_status_map_level.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp10_battery_status_map_status.exit

sw.bb1.i17:                                       ; preds = %hidpp10_battery_status_map_level.exit.sw.bb1.i17_crit_edge, %hidpp10_battery_status_map_level.exit.sw.bb1.i17_crit_edge23, %hidpp10_battery_status_map_level.exit.sw.bb1.i17_crit_edge24
  br label %hidpp10_battery_status_map_status.exit

sw.bb2.i18:                                       ; preds = %hidpp10_battery_status_map_level.exit.sw.bb2.i18_crit_edge, %hidpp10_battery_status_map_level.exit.sw.bb2.i18_crit_edge25
  br label %hidpp10_battery_status_map_status.exit

sw.bb3.i19:                                       ; preds = %hidpp10_battery_status_map_level.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp10_battery_status_map_status.exit

sw.default.i20:                                   ; preds = %hidpp10_battery_status_map_level.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp10_battery_status_map_status.exit

hidpp10_battery_status_map_status.exit:           ; preds = %sw.default.i20, %sw.bb3.i19, %sw.bb2.i18, %sw.bb1.i17, %hidpp10_battery_status_map_level.exit.hidpp10_battery_status_map_status.exit_crit_edge
  %cmp = phi i1 [ true, %hidpp10_battery_status_map_level.exit.hidpp10_battery_status_map_status.exit_crit_edge ], [ false, %sw.bb1.i17 ], [ false, %sw.bb2.i18 ], [ false, %sw.bb3.i19 ], [ false, %sw.default.i20 ]
  %cmp7 = phi i1 [ false, %hidpp10_battery_status_map_level.exit.hidpp10_battery_status_map_status.exit_crit_edge ], [ false, %sw.bb1.i17 ], [ true, %sw.bb2.i18 ], [ false, %sw.bb3.i19 ], [ false, %sw.default.i20 ]
  %status.0.i = phi i32 [ 2, %hidpp10_battery_status_map_level.exit.hidpp10_battery_status_map_status.exit_crit_edge ], [ 1, %sw.bb1.i17 ], [ 4, %sw.bb2.i18 ], [ 0, %sw.bb3.i19 ], [ 3, %sw.default.i20 ]
  %status6 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 6
  %19 = ptrtoint ptr %status6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %status.0.i, ptr %status6, align 4
  %spec.select = or i1 %cmp, %cmp7
  %online = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 11
  %frombool = zext i1 %spec.select to i8
  %20 = ptrtoint ptr %online to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool, ptr %online, align 8
  br label %cleanup

cleanup:                                          ; preds = %hidpp10_battery_status_map_status.exit, %hidpp_send_rap_command_sync.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %hidpp10_battery_status_map_status.exit ], [ %call17.i, %hidpp_send_rap_command_sync.exit.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hidpp20_query_battery_voltage_info(ptr noundef %hidpp) unnamed_addr #2 align 64 {
entry:
  %flags.i.i = alloca i32, align 4
  %response.i44 = alloca %struct.hidpp_report, align 1
  %response.i = alloca %struct.hidpp_report, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %voltage_feature_index = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 2
  %0 = ptrtoint ptr %voltage_feature_index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %voltage_feature_index, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp = icmp eq i8 %1, -1
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i) #12
  %2 = call ptr @memset(ptr %response.i, i32 255, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.hidpp_root_get_feature.exit.thread_crit_edge, label %hidpp_send_fap_command_sync.exit.i

if.then.hidpp_root_get_feature.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread

hidpp_send_fap_command_sync.exit.i:               ; preds = %if.then
  %4 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 17, ptr %call7.i.i.i.i, align 8
  %5 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %5, align 2
  %funcindex_clientid7.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %funcindex_clientid7.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %funcindex_clientid7.i.i, align 1
  %params8.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 2
  %8 = ptrtoint ptr %params8.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 16, ptr %params8.i.i, align 4
  %params.sroa.5.0.params8.i.sroa_idx.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %params.sroa.5.0.params8.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %params.sroa.5.0.params8.i.sroa_idx.i, align 1
  %call9.i.i = call fastcc i32 @hidpp_send_message_sync(ptr noundef %hidpp, ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull %response.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool.not.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %hidpp_send_fap_command_sync.exit.i.hidpp_root_get_feature.exit.thread_crit_edge

hidpp_send_fap_command_sync.exit.i.hidpp_root_get_feature.exit.thread_crit_edge: ; preds = %hidpp_send_fap_command_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread

if.end.i:                                         ; preds = %hidpp_send_fap_command_sync.exit.i
  %params4.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i, i32 0, i32 2, i32 0, i32 2
  %10 = ptrtoint ptr %params4.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %params4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.i = icmp eq i8 %11, 0
  br i1 %cmp.i, label %if.end.i.hidpp_root_get_feature.exit.thread_crit_edge, label %hidpp_root_get_feature.exit

if.end.i.hidpp_root_get_feature.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread

hidpp_root_get_feature.exit.thread:               ; preds = %if.end.i.hidpp_root_get_feature.exit.thread_crit_edge, %hidpp_send_fap_command_sync.exit.i.hidpp_root_get_feature.exit.thread_crit_edge, %if.then.hidpp_root_get_feature.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.then.hidpp_root_get_feature.exit.thread_crit_edge ], [ -2, %if.end.i.hidpp_root_get_feature.exit.thread_crit_edge ], [ %call9.i.i, %hidpp_send_fap_command_sync.exit.i.hidpp_root_get_feature.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i) #12
  br label %cleanup

hidpp_root_get_feature.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %voltage_feature_index to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %voltage_feature_index, align 1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i) #12
  br label %if.end5

if.end5:                                          ; preds = %hidpp_root_get_feature.exit, %entry.if.end5_crit_edge
  %13 = ptrtoint ptr %voltage_feature_index to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %voltage_feature_index, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i44) #12
  %15 = call ptr @memset(ptr %response.i44, i32 255, i32 64)
  %params1.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i44, i32 0, i32 2, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i45 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i.i46 = icmp eq ptr %call7.i.i.i.i45, null
  br i1 %tobool.not.i.i46, label %if.end5.hidpp20_battery_get_battery_voltage.exit.thread_crit_edge, label %hidpp_send_fap_command_sync.exit.i50

if.end5.hidpp20_battery_get_battery_voltage.exit.thread_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_battery_get_battery_voltage.exit.thread

hidpp_send_fap_command_sync.exit.i50:             ; preds = %if.end5
  %17 = ptrtoint ptr %call7.i.i.i.i45 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 17, ptr %call7.i.i.i.i45, align 8
  %18 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i45, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %14, ptr %18, align 2
  %funcindex_clientid7.i.i47 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i45, i32 0, i32 2, i32 0, i32 1
  %20 = ptrtoint ptr %funcindex_clientid7.i.i47 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %funcindex_clientid7.i.i47, align 1
  %call9.i.i48 = call fastcc i32 @hidpp_send_message_sync(ptr noundef %hidpp, ptr noundef nonnull %call7.i.i.i.i45, ptr noundef nonnull %response.i44) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i45) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i48)
  %cmp.i49 = icmp sgt i32 %call9.i.i48, 0
  br i1 %cmp.i49, label %do.end.i, label %if.end.i52

do.end.i:                                         ; preds = %hidpp_send_fap_command_sync.exit.i50
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hidpp, align 8
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %22, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.100, i32 noundef %call9.i.i48) #15
  br label %hidpp20_battery_get_battery_voltage.exit.thread

if.end.i52:                                       ; preds = %hidpp_send_fap_command_sync.exit.i50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i48)
  %tobool.not.i51 = icmp eq i32 %call9.i.i48, 0
  br i1 %tobool.not.i51, label %if.end3.i, label %if.end.i52.hidpp20_battery_get_battery_voltage.exit.thread_crit_edge

if.end.i52.hidpp20_battery_get_battery_voltage.exit.thread_crit_edge: ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_battery_get_battery_voltage.exit.thread

if.end3.i:                                        ; preds = %if.end.i52
  %capabilities.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 16
  %23 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %capabilities.i, align 8
  %or.i = or i32 %24, 16
  store i32 %or.i, ptr %capabilities.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i.i)
  %arrayidx.i.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i44, i32 0, i32 2, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %26 to i32
  %27 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv.i.i, ptr %flags.i.i, align 4
  %and.i.i = and i32 %conv.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i12.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i12.i, label %if.end3.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end3.i.if.end.i.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end3.i
  %and1.i.i = and i32 %conv.i.i, 7
  %28 = zext i32 %and1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.216)
  switch i32 %and1.i.i, label %sw.default.i.i [
    i32 0, label %if.then.i.i.if.end.i.i_crit_edge
    i32 1, label %sw.bb2.i.i
    i32 2, label %sw.bb3.i.i
  ]

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

sw.bb2.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

sw.bb3.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

sw.default.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %sw.default.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %if.then.i.i.if.end.i.i_crit_edge, %if.end3.i.if.end.i.i_crit_edge
  %level.0 = phi i32 [ 0, %if.end3.i.if.end.i.i_crit_edge ], [ 0, %sw.default.i.i ], [ 0, %sw.bb3.i.i ], [ 5, %sw.bb2.i.i ], [ %and1.i.i, %if.then.i.i.if.end.i.i_crit_edge ]
  %cmp22 = phi i1 [ true, %if.end3.i.if.end.i.i_crit_edge ], [ true, %sw.default.i.i ], [ false, %sw.bb3.i.i ], [ true, %sw.bb2.i.i ], [ true, %if.then.i.i.if.end.i.i_crit_edge ]
  %status.0.i.i = phi i32 [ 2, %if.end3.i.if.end.i.i_crit_edge ], [ 0, %sw.default.i.i ], [ 3, %sw.bb3.i.i ], [ 4, %sw.bb2.i.i ], [ 1, %if.then.i.i.if.end.i.i_crit_edge ]
  %29 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %flags.i.i.0.flags.i.i.0.flags.i.0.flags.i.0.flags.0.flags.0..i.i = load volatile i32, ptr %flags.i.i, align 4
  %30 = and i32 %flags.i.i.0.flags.i.i.0.flags.i.0.flags.i.0.flags.0.flags.0..i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool4.not.i.i = icmp eq i32 %30, 0
  %spec.select = select i1 %tobool4.not.i.i, i32 4, i32 3
  %31 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %flags.i.i.0.flags.i.i.0.flags.i.0.flags.i.0.flags.0.flags.0.26.i.i = load volatile i32, ptr %flags.i.i, align 4
  %32 = and i32 %flags.i.i.0.flags.i.i.0.flags.i.0.flags.i.0.flags.0.flags.0.26.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool8.not.i.i = icmp eq i32 %32, 0
  %charge_type.1 = select i1 %tobool8.not.i.i, i32 %spec.select, i32 2
  %33 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %flags.i.i.0.flags.i.i.0.flags.i.0.flags.i.0.flags.0.flags.0.27.i.i = load volatile i32, ptr %flags.i.i, align 4
  %34 = and i32 %flags.i.i.0.flags.i.i.0.flags.i.0.flags.i.0.flags.0.flags.0.27.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool12.not.i.i = icmp eq i32 %34, 0
  %level.1 = select i1 %tobool12.not.i.i, i32 %level.0, i32 1
  %35 = ptrtoint ptr %params1.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %params1.i, align 1
  %conv16.i.i = zext i16 %36 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i.i)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i44) #12
  %status13 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 6
  %37 = ptrtoint ptr %status13 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %status.0.i.i, ptr %status13, align 4
  %voltage15 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 9
  %38 = ptrtoint ptr %voltage15 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv16.i.i, ptr %voltage15, align 8
  %39 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hidpp, align 8
  %41 = add nsw i32 %conv16.i.i, -5000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1500, i32 %41)
  %42 = icmp ult i32 %41, -1500
  br i1 %42, label %do.body3.i, label %if.end.i.i.for.body.i.preheader_crit_edge, !prof !458

if.end.i.i.for.body.i.preheader_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.preheader

hidpp20_battery_get_battery_voltage.exit.thread:  ; preds = %if.end.i52.hidpp20_battery_get_battery_voltage.exit.thread_crit_edge, %do.end.i, %if.end5.hidpp20_battery_get_battery_voltage.exit.thread_crit_edge
  %retval.0.i53.ph = phi i32 [ -12, %if.end5.hidpp20_battery_get_battery_voltage.exit.thread_crit_edge ], [ %call9.i.i48, %if.end.i52.hidpp20_battery_get_battery_voltage.exit.thread_crit_edge ], [ -71, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i44) #12
  br label %cleanup

do.body3.i:                                       ; preds = %if.end.i.i
  %.b21.i = load i1, ptr @hidpp20_map_battery_capacity.__print_once, align 1
  br i1 %.b21.i, label %do.body3.i.for.body.i.preheader_crit_edge, label %if.then5.i

do.body3.i.for.body.i.preheader_crit_edge:        ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.preheader

if.then5.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hidpp20_map_battery_capacity.__print_once, align 1
  %dev.i54 = getelementptr inbounds %struct.hid_device, ptr %40, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i54, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102) #15
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then5.i, %do.body3.i.for.body.i.preheader_crit_edge, %if.end.i.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.023.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr [100 x i32], ptr @hidpp20_map_battery_capacity.voltages, i32 0, i32 %i.023.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %conv16.i.i)
  %cmp13.not.i = icmp sgt i32 %44, %conv16.i.i
  br i1 %cmp13.not.i, label %for.inc.i, label %if.then14.i

if.then14.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = sub nuw nsw i32 100, %i.023.i
  br label %hidpp20_map_battery_capacity.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %for.inc.i.hidpp20_map_battery_capacity.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.hidpp20_map_battery_capacity.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_map_battery_capacity.exit

hidpp20_map_battery_capacity.exit:                ; preds = %for.inc.i.hidpp20_map_battery_capacity.exit_crit_edge, %if.then14.i
  %retval.0.i55 = phi i32 [ %sub.i, %if.then14.i ], [ 0, %for.inc.i.hidpp20_map_battery_capacity.exit_crit_edge ]
  %capacity = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 7
  %45 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %retval.0.i55, ptr %capacity, align 8
  %level19 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 8
  %46 = ptrtoint ptr %level19 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %level.1, ptr %level19, align 4
  %charge_type21 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 10
  %47 = ptrtoint ptr %charge_type21 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %charge_type.1, ptr %charge_type21, align 4
  %online = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 11
  %frombool = zext i1 %cmp22 to i8
  %48 = ptrtoint ptr %online to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %frombool, ptr %online, align 8
  br label %cleanup

cleanup:                                          ; preds = %hidpp20_map_battery_capacity.exit, %hidpp20_battery_get_battery_voltage.exit.thread, %hidpp_root_get_feature.exit.thread
  %retval.0 = phi i32 [ 0, %hidpp20_map_battery_capacity.exit ], [ %retval.0.i.ph, %hidpp_root_get_feature.exit.thread ], [ %retval.0.i53.ph, %hidpp20_battery_get_battery_voltage.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hidpp20_query_battery_info_1004(ptr noundef %hidpp) unnamed_addr #2 align 64 {
entry:
  %response.i54 = alloca %struct.hidpp_report, align 1
  %response.i45 = alloca %struct.hidpp_report, align 1
  %response.i = alloca %struct.hidpp_report, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %battery = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18
  %0 = ptrtoint ptr %battery to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %battery, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp = icmp eq i8 %1, -1
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i) #12
  %2 = call ptr @memset(ptr %response.i, i32 255, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.hidpp_root_get_feature.exit.thread_crit_edge, label %hidpp_send_fap_command_sync.exit.i

if.then.hidpp_root_get_feature.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread

hidpp_send_fap_command_sync.exit.i:               ; preds = %if.then
  %4 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 17, ptr %call7.i.i.i.i, align 8
  %5 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %5, align 2
  %funcindex_clientid7.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %funcindex_clientid7.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %funcindex_clientid7.i.i, align 1
  %params8.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 2
  %8 = ptrtoint ptr %params8.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 16, ptr %params8.i.i, align 4
  %params.sroa.5.0.params8.i.sroa_idx.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %params.sroa.5.0.params8.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %params.sroa.5.0.params8.i.sroa_idx.i, align 1
  %call9.i.i = call fastcc i32 @hidpp_send_message_sync(ptr noundef %hidpp, ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull %response.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool.not.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %hidpp_send_fap_command_sync.exit.i.hidpp_root_get_feature.exit.thread_crit_edge

hidpp_send_fap_command_sync.exit.i.hidpp_root_get_feature.exit.thread_crit_edge: ; preds = %hidpp_send_fap_command_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread

if.end.i:                                         ; preds = %hidpp_send_fap_command_sync.exit.i
  %params4.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i, i32 0, i32 2, i32 0, i32 2
  %10 = ptrtoint ptr %params4.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %params4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.i = icmp eq i8 %11, 0
  br i1 %cmp.i, label %if.end.i.hidpp_root_get_feature.exit.thread_crit_edge, label %hidpp_root_get_feature.exit

if.end.i.hidpp_root_get_feature.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread

hidpp_root_get_feature.exit.thread:               ; preds = %if.end.i.hidpp_root_get_feature.exit.thread_crit_edge, %hidpp_send_fap_command_sync.exit.i.hidpp_root_get_feature.exit.thread_crit_edge, %if.then.hidpp_root_get_feature.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.then.hidpp_root_get_feature.exit.thread_crit_edge ], [ -2, %if.end.i.hidpp_root_get_feature.exit.thread_crit_edge ], [ %call9.i.i, %hidpp_send_fap_command_sync.exit.i.hidpp_root_get_feature.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i) #12
  br label %cleanup

hidpp_root_get_feature.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %battery to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %battery, align 1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i) #12
  br label %if.end5

if.end5:                                          ; preds = %hidpp_root_get_feature.exit, %entry.if.end5_crit_edge
  %13 = ptrtoint ptr %battery to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %battery, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i45) #12
  %15 = call ptr @memset(ptr %response.i45, i32 255, i32 64)
  %params1.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i45, i32 0, i32 2, i32 0, i32 2
  %capabilities.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 16
  %16 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %capabilities.i, align 8
  %18 = and i32 %17, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %if.end.i48, label %if.end5.if.end11_crit_edge

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.end.i48:                                       ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i46 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i.i47 = icmp eq ptr %call7.i.i.i.i46, null
  br i1 %tobool.not.i.i47, label %if.end.i48.hidpp20_unifiedbattery_get_capabilities.exit.thread_crit_edge, label %hidpp_send_fap_command_sync.exit.i52

if.end.i48.hidpp20_unifiedbattery_get_capabilities.exit.thread_crit_edge: ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_unifiedbattery_get_capabilities.exit.thread

hidpp_send_fap_command_sync.exit.i52:             ; preds = %if.end.i48
  %21 = ptrtoint ptr %call7.i.i.i.i46 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 17, ptr %call7.i.i.i.i46, align 8
  %22 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i46, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %14, ptr %22, align 2
  %funcindex_clientid7.i.i49 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i46, i32 0, i32 2, i32 0, i32 1
  %24 = ptrtoint ptr %funcindex_clientid7.i.i49 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %funcindex_clientid7.i.i49, align 1
  %call9.i.i50 = call fastcc i32 @hidpp_send_message_sync(ptr noundef %hidpp, ptr noundef nonnull %call7.i.i.i.i46, ptr noundef nonnull %response.i45) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i46) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call9.i.i50)
  %cmp.i51 = icmp eq i32 %call9.i.i50, 9
  br i1 %cmp.i51, label %hidpp_send_fap_command_sync.exit.i52.hidpp20_unifiedbattery_get_capabilities.exit.thread_crit_edge, label %if.end6.i

hidpp_send_fap_command_sync.exit.i52.hidpp20_unifiedbattery_get_capabilities.exit.thread_crit_edge: ; preds = %hidpp_send_fap_command_sync.exit.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_unifiedbattery_get_capabilities.exit.thread

if.end6.i:                                        ; preds = %hidpp_send_fap_command_sync.exit.i52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i50)
  %cmp7.i = icmp sgt i32 %call9.i.i50, 0
  br i1 %cmp7.i, label %do.end.i, label %if.end9.i

do.end.i:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hidpp, align 8
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %26, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.103, i32 noundef %call9.i.i50) #15
  br label %hidpp20_unifiedbattery_get_capabilities.exit.thread

if.end9.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i50)
  %tobool10.not.i = icmp eq i32 %call9.i.i50, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end9.i.hidpp20_unifiedbattery_get_capabilities.exit.thread_crit_edge

if.end9.i.hidpp20_unifiedbattery_get_capabilities.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_unifiedbattery_get_capabilities.exit.thread

if.end12.i:                                       ; preds = %if.end9.i
  %arrayidx.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i45, i32 0, i32 2, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 1
  %29 = and i8 %28, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool14.not.i = icmp eq i8 %29, 0
  %30 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %capabilities.i, align 8
  br i1 %tobool14.not.i, label %if.else.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i = or i32 %31, 32
  %32 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or.i, ptr %capabilities.i, align 8
  br label %if.end11.sink.split

if.else.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %or18.i = or i32 %31, 8
  %33 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or18.i, ptr %capabilities.i, align 8
  %34 = ptrtoint ptr %params1.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %params1.i, align 1
  br label %if.end11.sink.split

hidpp20_unifiedbattery_get_capabilities.exit.thread: ; preds = %if.end9.i.hidpp20_unifiedbattery_get_capabilities.exit.thread_crit_edge, %do.end.i, %hidpp_send_fap_command_sync.exit.i52.hidpp20_unifiedbattery_get_capabilities.exit.thread_crit_edge, %if.end.i48.hidpp20_unifiedbattery_get_capabilities.exit.thread_crit_edge
  %retval.0.i53.ph = phi i32 [ -12, %if.end.i48.hidpp20_unifiedbattery_get_capabilities.exit.thread_crit_edge ], [ %call9.i.i50, %if.end9.i.hidpp20_unifiedbattery_get_capabilities.exit.thread_crit_edge ], [ -5, %hidpp_send_fap_command_sync.exit.i52.hidpp20_unifiedbattery_get_capabilities.exit.thread_crit_edge ], [ -71, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i45) #12
  br label %cleanup

if.end11.sink.split:                              ; preds = %if.else.i, %if.then15.i
  %.sink = phi i8 [ %35, %if.else.i ], [ 0, %if.then15.i ]
  %supported_levels_100421.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 12
  %36 = ptrtoint ptr %supported_levels_100421.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %.sink, ptr %supported_levels_100421.i, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %if.end5.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i45) #12
  %37 = ptrtoint ptr %battery to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %battery, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i54) #12
  %39 = call ptr @memset(ptr %response.i54, i32 255, i32 64)
  %params1.i55 = getelementptr inbounds %struct.hidpp_report, ptr %response.i54, i32 0, i32 2, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i56 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i.i57 = icmp eq ptr %call7.i.i.i.i56, null
  br i1 %tobool.not.i.i57, label %if.end11.hidpp20_unifiedbattery_get_status.exit.thread_crit_edge, label %hidpp_send_fap_command_sync.exit.i61

if.end11.hidpp20_unifiedbattery_get_status.exit.thread_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_unifiedbattery_get_status.exit.thread

hidpp_send_fap_command_sync.exit.i61:             ; preds = %if.end11
  %41 = ptrtoint ptr %call7.i.i.i.i56 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 17, ptr %call7.i.i.i.i56, align 8
  %42 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i56, i32 0, i32 2
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %38, ptr %42, align 2
  %funcindex_clientid7.i.i58 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i56, i32 0, i32 2, i32 0, i32 1
  %44 = ptrtoint ptr %funcindex_clientid7.i.i58 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 16, ptr %funcindex_clientid7.i.i58, align 1
  %call9.i.i59 = call fastcc i32 @hidpp_send_message_sync(ptr noundef %hidpp, ptr noundef nonnull %call7.i.i.i.i56, ptr noundef nonnull %response.i54) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i56) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call9.i.i59)
  %cmp.i60 = icmp eq i32 %call9.i.i59, 9
  br i1 %cmp.i60, label %hidpp_send_fap_command_sync.exit.i61.hidpp20_unifiedbattery_get_status.exit.thread_crit_edge, label %if.end.i62

hidpp_send_fap_command_sync.exit.i61.hidpp20_unifiedbattery_get_status.exit.thread_crit_edge: ; preds = %hidpp_send_fap_command_sync.exit.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_unifiedbattery_get_status.exit.thread

if.end.i62:                                       ; preds = %hidpp_send_fap_command_sync.exit.i61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i59)
  %cmp2.i = icmp sgt i32 %call9.i.i59, 0
  br i1 %cmp2.i, label %do.end.i64, label %if.end4.i

do.end.i64:                                       ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hidpp, align 8
  %dev.i63 = getelementptr inbounds %struct.hid_device, ptr %46, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i63, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.104, i32 noundef %call9.i.i59) #15
  br label %hidpp20_unifiedbattery_get_status.exit.thread

if.end4.i:                                        ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i59)
  %tobool.not.i65 = icmp eq i32 %call9.i.i59, 0
  br i1 %tobool.not.i65, label %if.end6.i66, label %if.end4.i.hidpp20_unifiedbattery_get_status.exit.thread_crit_edge

if.end4.i.hidpp20_unifiedbattery_get_status.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_unifiedbattery_get_status.exit.thread

if.end6.i66:                                      ; preds = %if.end4.i
  %47 = ptrtoint ptr %params1.i55 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %params1.i55, align 1
  %arrayidx7.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i54, i32 0, i32 2, i32 0, i32 2, i32 2
  %49 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx7.i, align 1
  %51 = zext i8 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.217)
  switch i8 %50, label %sw.default.i.i [
    i8 0, label %if.end6.i66.hidpp20_unifiedbattery_map_status.exit.i_crit_edge
    i8 1, label %if.end6.i66.sw.bb1.i.i_crit_edge
    i8 2, label %if.end6.i66.sw.bb1.i.i_crit_edge77
    i8 3, label %sw.bb2.i.i
    i8 4, label %sw.bb3.i.i
  ]

if.end6.i66.sw.bb1.i.i_crit_edge77:               ; preds = %if.end6.i66
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i.i

if.end6.i66.sw.bb1.i.i_crit_edge:                 ; preds = %if.end6.i66
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i.i

if.end6.i66.hidpp20_unifiedbattery_map_status.exit.i_crit_edge: ; preds = %if.end6.i66
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_unifiedbattery_map_status.exit.i

sw.bb1.i.i:                                       ; preds = %if.end6.i66.sw.bb1.i.i_crit_edge, %if.end6.i66.sw.bb1.i.i_crit_edge77
  br label %hidpp20_unifiedbattery_map_status.exit.i

sw.bb2.i.i:                                       ; preds = %if.end6.i66
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_unifiedbattery_map_status.exit.i

sw.bb3.i.i:                                       ; preds = %if.end6.i66
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hidpp, align 8
  %dev.i.i = getelementptr inbounds %struct.hid_device, ptr %53, i32 0, i32 18
  %name.i.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 4
  %54 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %name.i.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.105, ptr noundef %55) #15
  br label %hidpp20_unifiedbattery_map_status.exit.i

sw.default.i.i:                                   ; preds = %if.end6.i66
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_unifiedbattery_map_status.exit.i

hidpp20_unifiedbattery_map_status.exit.i:         ; preds = %sw.default.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.end6.i66.hidpp20_unifiedbattery_map_status.exit.i_crit_edge
  %status.0.i.i = phi i32 [ 3, %sw.default.i.i ], [ 3, %sw.bb3.i.i ], [ 4, %sw.bb2.i.i ], [ 1, %sw.bb1.i.i ], [ 2, %if.end6.i66.hidpp20_unifiedbattery_map_status.exit.i_crit_edge ]
  %arrayidx10.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i54, i32 0, i32 2, i32 0, i32 2, i32 1
  %56 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx10.i, align 1
  %supported_levels_1004.i.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 12
  %58 = ptrtoint ptr %supported_levels_1004.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %supported_levels_1004.i.i, align 1
  %and26.i.i = and i8 %59, %57
  %conv3.i.i = zext i8 %and26.i.i to i32
  %and4.i.i = and i32 %conv3.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool.not.i24.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool.not.i24.i, label %if.else.i.i, label %hidpp20_unifiedbattery_map_status.exit.i.if.end17_crit_edge

hidpp20_unifiedbattery_map_status.exit.i.if.end17_crit_edge: ; preds = %hidpp20_unifiedbattery_map_status.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.else.i.i:                                      ; preds = %hidpp20_unifiedbattery_map_status.exit.i
  %and6.i.i = and i32 %conv3.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.else9.i.i, label %if.else.i.i.if.end17_crit_edge

if.else.i.i.if.end17_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.else9.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and11.i.i = and i32 %conv3.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  %and16.i.i = and i32 %conv3.i.i, 1
  %spec.select.i.i = select i1 %tobool12.not.i.i, i32 %and16.i.i, i32 2
  br label %if.end17

hidpp20_unifiedbattery_get_status.exit.thread:    ; preds = %if.end4.i.hidpp20_unifiedbattery_get_status.exit.thread_crit_edge, %do.end.i64, %hidpp_send_fap_command_sync.exit.i61.hidpp20_unifiedbattery_get_status.exit.thread_crit_edge, %if.end11.hidpp20_unifiedbattery_get_status.exit.thread_crit_edge
  %retval.0.i67.ph = phi i32 [ -12, %if.end11.hidpp20_unifiedbattery_get_status.exit.thread_crit_edge ], [ %call9.i.i59, %if.end4.i.hidpp20_unifiedbattery_get_status.exit.thread_crit_edge ], [ -5, %hidpp_send_fap_command_sync.exit.i61.hidpp20_unifiedbattery_get_status.exit.thread_crit_edge ], [ -71, %do.end.i64 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i54) #12
  br label %cleanup

if.end17:                                         ; preds = %if.else9.i.i, %if.else.i.i.if.end17_crit_edge, %hidpp20_unifiedbattery_map_status.exit.i.if.end17_crit_edge
  %level.0 = phi i32 [ 5, %hidpp20_unifiedbattery_map_status.exit.i.if.end17_crit_edge ], [ 3, %if.else.i.i.if.end17_crit_edge ], [ %spec.select.i.i, %if.else9.i.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i54) #12
  %60 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %capabilities.i, align 8
  %or = or i32 %61, 64
  store i32 %or, ptr %capabilities.i, align 8
  %conv18 = zext i8 %48 to i32
  %capacity = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 7
  %62 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv18, ptr %capacity, align 8
  %status21 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 6
  %63 = ptrtoint ptr %status21 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %status.0.i.i, ptr %status21, align 4
  %level23 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 8
  %64 = ptrtoint ptr %level23 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %level.0, ptr %level23, align 4
  %online = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 11
  %65 = ptrtoint ptr %online to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %online, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %hidpp20_unifiedbattery_get_status.exit.thread, %hidpp20_unifiedbattery_get_capabilities.exit.thread, %hidpp_root_get_feature.exit.thread
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %retval.0.i.ph, %hidpp_root_get_feature.exit.thread ], [ %retval.0.i53.ph, %hidpp20_unifiedbattery_get_capabilities.exit.thread ], [ %retval.0.i67.ph, %hidpp20_unifiedbattery_get_status.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hidpp20_query_battery_info_1000(ptr noundef %hidpp) unnamed_addr #2 align 64 {
entry:
  %response.i59 = alloca %struct.hidpp_report, align 1
  %response.i49 = alloca %struct.hidpp_report, align 1
  %response.i = alloca %struct.hidpp_report, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %battery = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18
  %0 = ptrtoint ptr %battery to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %battery, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp = icmp eq i8 %1, -1
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i) #12
  %2 = call ptr @memset(ptr %response.i, i32 255, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.hidpp_root_get_feature.exit.thread_crit_edge, label %hidpp_send_fap_command_sync.exit.i

if.then.hidpp_root_get_feature.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread

hidpp_send_fap_command_sync.exit.i:               ; preds = %if.then
  %4 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 17, ptr %call7.i.i.i.i, align 8
  %5 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %5, align 2
  %funcindex_clientid7.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %funcindex_clientid7.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %funcindex_clientid7.i.i, align 1
  %params8.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 2
  %8 = ptrtoint ptr %params8.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 16, ptr %params8.i.i, align 4
  %params.sroa.5.0.params8.i.sroa_idx.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %params.sroa.5.0.params8.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %params.sroa.5.0.params8.i.sroa_idx.i, align 1
  %call9.i.i = call fastcc i32 @hidpp_send_message_sync(ptr noundef %hidpp, ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull %response.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool.not.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %hidpp_send_fap_command_sync.exit.i.hidpp_root_get_feature.exit.thread_crit_edge

hidpp_send_fap_command_sync.exit.i.hidpp_root_get_feature.exit.thread_crit_edge: ; preds = %hidpp_send_fap_command_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread

if.end.i:                                         ; preds = %hidpp_send_fap_command_sync.exit.i
  %params4.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i, i32 0, i32 2, i32 0, i32 2
  %10 = ptrtoint ptr %params4.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %params4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.i = icmp eq i8 %11, 0
  br i1 %cmp.i, label %if.end.i.hidpp_root_get_feature.exit.thread_crit_edge, label %hidpp_root_get_feature.exit

if.end.i.hidpp_root_get_feature.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread

hidpp_root_get_feature.exit.thread:               ; preds = %if.end.i.hidpp_root_get_feature.exit.thread_crit_edge, %hidpp_send_fap_command_sync.exit.i.hidpp_root_get_feature.exit.thread_crit_edge, %if.then.hidpp_root_get_feature.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.then.hidpp_root_get_feature.exit.thread_crit_edge ], [ -2, %if.end.i.hidpp_root_get_feature.exit.thread_crit_edge ], [ %call9.i.i, %hidpp_send_fap_command_sync.exit.i.hidpp_root_get_feature.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i) #12
  br label %cleanup

hidpp_root_get_feature.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %battery to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %battery, align 1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i) #12
  br label %if.end5

if.end5:                                          ; preds = %hidpp_root_get_feature.exit, %entry.if.end5_crit_edge
  %13 = ptrtoint ptr %battery to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %battery, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i49) #12
  %15 = call ptr @memset(ptr %response.i49, i32 255, i32 64)
  %params1.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i49, i32 0, i32 2, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i50 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i.i51 = icmp eq ptr %call7.i.i.i.i50, null
  br i1 %tobool.not.i.i51, label %if.end5.hidpp20_batterylevel_get_battery_capacity.exit_crit_edge, label %hidpp_send_fap_command_sync.exit.i55

if.end5.hidpp20_batterylevel_get_battery_capacity.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_batterylevel_get_battery_capacity.exit

hidpp_send_fap_command_sync.exit.i55:             ; preds = %if.end5
  %17 = ptrtoint ptr %call7.i.i.i.i50 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 17, ptr %call7.i.i.i.i50, align 8
  %18 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i50, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %14, ptr %18, align 2
  %funcindex_clientid7.i.i52 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i50, i32 0, i32 2, i32 0, i32 1
  %20 = ptrtoint ptr %funcindex_clientid7.i.i52 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %funcindex_clientid7.i.i52, align 1
  %call9.i.i53 = call fastcc i32 @hidpp_send_message_sync(ptr noundef %hidpp, ptr noundef nonnull %call7.i.i.i.i50, ptr noundef nonnull %response.i49) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call9.i.i53)
  %cmp.i54 = icmp eq i32 %call9.i.i53, 9
  br i1 %cmp.i54, label %hidpp_send_fap_command_sync.exit.i55.hidpp20_batterylevel_get_battery_capacity.exit_crit_edge, label %if.end.i56

hidpp_send_fap_command_sync.exit.i55.hidpp20_batterylevel_get_battery_capacity.exit_crit_edge: ; preds = %hidpp_send_fap_command_sync.exit.i55
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_batterylevel_get_battery_capacity.exit

if.end.i56:                                       ; preds = %hidpp_send_fap_command_sync.exit.i55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i53)
  %cmp2.i = icmp sgt i32 %call9.i.i53, 0
  br i1 %cmp2.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hidpp, align 8
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %22, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.107, i32 noundef %call9.i.i53) #15
  br label %hidpp20_batterylevel_get_battery_capacity.exit

if.end4.i:                                        ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i53)
  %tobool.not.i57 = icmp eq i32 %call9.i.i53, 0
  br i1 %tobool.not.i57, label %if.end6.i, label %if.end4.i.hidpp20_batterylevel_get_battery_capacity.exit_crit_edge

if.end4.i.hidpp20_batterylevel_get_battery_capacity.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_batterylevel_get_battery_capacity.exit

if.end6.i:                                        ; preds = %if.end4.i
  %23 = ptrtoint ptr %params1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %params1.i, align 1
  %arrayidx3.i.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i49, i32 0, i32 2, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx3.i.i, align 1
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.218)
  switch i8 %26, label %sw.default.i.i [
    i8 0, label %sw.bb.i.i
    i8 1, label %if.end6.i.if.end11_crit_edge
    i8 2, label %if.end6.i.if.end11_crit_edge89
    i8 3, label %sw.bb7.i.i
    i8 4, label %if.end6.i.if.end11_crit_edge90
  ]

if.end6.i.if.end11_crit_edge90:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.end6.i.if.end11_crit_edge89:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.end6.i.if.end11_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

sw.bb.i.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %24)
  %cmp.i.i.i = icmp ult i8 %24, 11
  br i1 %cmp.i.i.i, label %sw.bb.i.i.if.end11_crit_edge, label %if.else.i.i.i

sw.bb.i.i.if.end11_crit_edge:                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.else.i.i.i:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %24)
  %cmp1.i.i.i = icmp ult i8 %24, 30
  br i1 %cmp1.i.i.i, label %if.else.i.i.i.if.end11_crit_edge, label %if.else3.i.i.i

if.else.i.i.i.if.end11_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.else3.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 81, i8 %24)
  %cmp4.i.i.i = icmp ult i8 %24, 81
  %..i.i.i = select i1 %cmp4.i.i.i, i32 3, i32 5
  br label %if.end11

sw.bb7.i.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

sw.default.i.i:                                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

hidpp20_batterylevel_get_battery_capacity.exit:   ; preds = %if.end4.i.hidpp20_batterylevel_get_battery_capacity.exit_crit_edge, %do.end.i, %hidpp_send_fap_command_sync.exit.i55.hidpp20_batterylevel_get_battery_capacity.exit_crit_edge, %if.end5.hidpp20_batterylevel_get_battery_capacity.exit_crit_edge
  %retval.0.i58 = phi i32 [ -71, %do.end.i ], [ -5, %hidpp_send_fap_command_sync.exit.i55.hidpp20_batterylevel_get_battery_capacity.exit_crit_edge ], [ %call9.i.i53, %if.end4.i.hidpp20_batterylevel_get_battery_capacity.exit_crit_edge ], [ -12, %if.end5.hidpp20_batterylevel_get_battery_capacity.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i49) #12
  br label %cleanup

if.end11:                                         ; preds = %sw.default.i.i, %sw.bb7.i.i, %if.else3.i.i.i, %if.else.i.i.i.if.end11_crit_edge, %sw.bb.i.i.if.end11_crit_edge, %if.end6.i.if.end11_crit_edge, %if.end6.i.if.end11_crit_edge89, %if.end6.i.if.end11_crit_edge90
  %cmp24 = phi i1 [ true, %sw.bb.i.i.if.end11_crit_edge ], [ true, %if.else.i.i.i.if.end11_crit_edge ], [ true, %if.else3.i.i.i ], [ false, %sw.default.i.i ], [ false, %sw.bb7.i.i ], [ false, %if.end6.i.if.end11_crit_edge ], [ false, %if.end6.i.if.end11_crit_edge89 ], [ false, %if.end6.i.if.end11_crit_edge90 ]
  %cmp26 = phi i1 [ false, %sw.bb.i.i.if.end11_crit_edge ], [ false, %if.else.i.i.i.if.end11_crit_edge ], [ false, %if.else3.i.i.i ], [ false, %sw.default.i.i ], [ true, %sw.bb7.i.i ], [ false, %if.end6.i.if.end11_crit_edge ], [ false, %if.end6.i.if.end11_crit_edge89 ], [ false, %if.end6.i.if.end11_crit_edge90 ]
  %status.0.ph = phi i32 [ 2, %sw.bb.i.i.if.end11_crit_edge ], [ 2, %if.else.i.i.i.if.end11_crit_edge ], [ 2, %if.else3.i.i.i ], [ 3, %sw.default.i.i ], [ 4, %sw.bb7.i.i ], [ 1, %if.end6.i.if.end11_crit_edge ], [ 1, %if.end6.i.if.end11_crit_edge89 ], [ 1, %if.end6.i.if.end11_crit_edge90 ]
  %capacity.1.ph.shrunk = phi i8 [ %24, %sw.bb.i.i.if.end11_crit_edge ], [ %24, %if.else.i.i.i.if.end11_crit_edge ], [ %24, %if.else3.i.i.i ], [ %24, %sw.default.i.i ], [ 100, %sw.bb7.i.i ], [ %24, %if.end6.i.if.end11_crit_edge ], [ %24, %if.end6.i.if.end11_crit_edge89 ], [ %24, %if.end6.i.if.end11_crit_edge90 ]
  %level.1.ph = phi i32 [ 1, %sw.bb.i.i.if.end11_crit_edge ], [ 2, %if.else.i.i.i.if.end11_crit_edge ], [ %..i.i.i, %if.else3.i.i.i ], [ 0, %sw.default.i.i ], [ 5, %sw.bb7.i.i ], [ 0, %if.end6.i.if.end11_crit_edge ], [ 0, %if.end6.i.if.end11_crit_edge89 ], [ 0, %if.end6.i.if.end11_crit_edge90 ]
  %capacity.1.ph = zext i8 %capacity.1.ph.shrunk to i32
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i49) #12
  %28 = ptrtoint ptr %battery to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %battery, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i59) #12
  %30 = call ptr @memset(ptr %response.i59, i32 255, i32 64)
  %params1.i60 = getelementptr inbounds %struct.hidpp_report, ptr %response.i59, i32 0, i32 2, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i61 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i.i62 = icmp eq ptr %call7.i.i.i.i61, null
  br i1 %tobool.not.i.i62, label %if.end11.hidpp20_batterylevel_get_battery_info.exit.thread_crit_edge, label %hidpp_send_fap_command_sync.exit.i66

if.end11.hidpp20_batterylevel_get_battery_info.exit.thread_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_batterylevel_get_battery_info.exit.thread

hidpp_send_fap_command_sync.exit.i66:             ; preds = %if.end11
  %32 = ptrtoint ptr %call7.i.i.i.i61 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 17, ptr %call7.i.i.i.i61, align 8
  %33 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i61, i32 0, i32 2
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %29, ptr %33, align 2
  %funcindex_clientid7.i.i63 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i61, i32 0, i32 2, i32 0, i32 1
  %35 = ptrtoint ptr %funcindex_clientid7.i.i63 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 16, ptr %funcindex_clientid7.i.i63, align 1
  %call9.i.i64 = call fastcc i32 @hidpp_send_message_sync(ptr noundef %hidpp, ptr noundef nonnull %call7.i.i.i.i61, ptr noundef nonnull %response.i59) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i61) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i64)
  %cmp.i65 = icmp sgt i32 %call9.i.i64, 0
  br i1 %cmp.i65, label %do.end.i68, label %if.end.i70

do.end.i68:                                       ; preds = %hidpp_send_fap_command_sync.exit.i66
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hidpp, align 8
  %dev.i67 = getelementptr inbounds %struct.hid_device, ptr %37, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i67, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.108, i32 noundef %call9.i.i64) #15
  br label %hidpp20_batterylevel_get_battery_info.exit.thread

if.end.i70:                                       ; preds = %hidpp_send_fap_command_sync.exit.i66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i64)
  %tobool.not.i69 = icmp eq i32 %call9.i.i64, 0
  br i1 %tobool.not.i69, label %if.end3.i, label %if.end.i70.hidpp20_batterylevel_get_battery_info.exit.thread_crit_edge

if.end.i70.hidpp20_batterylevel_get_battery_info.exit.thread_crit_edge: ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_batterylevel_get_battery_info.exit.thread

if.end3.i:                                        ; preds = %if.end.i70
  %38 = ptrtoint ptr %params1.i60 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %params1.i60, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %39)
  %cmp6.i = icmp ult i8 %39, 10
  br i1 %cmp6.i, label %if.end3.i.if.end17_crit_edge, label %lor.lhs.false.i

if.end3.i.if.end17_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

lor.lhs.false.i:                                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx4.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i59, i32 0, i32 2, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx4.i, align 1
  %42 = and i8 %41, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool8.not.i = icmp eq i8 %42, 0
  %spec.select88 = select i1 %tobool8.not.i, i32 8, i32 4
  br label %if.end17

hidpp20_batterylevel_get_battery_info.exit.thread: ; preds = %if.end.i70.hidpp20_batterylevel_get_battery_info.exit.thread_crit_edge, %do.end.i68, %if.end11.hidpp20_batterylevel_get_battery_info.exit.thread_crit_edge
  %retval.0.i71.ph = phi i32 [ -12, %if.end11.hidpp20_batterylevel_get_battery_info.exit.thread_crit_edge ], [ %call9.i.i64, %if.end.i70.hidpp20_batterylevel_get_battery_info.exit.thread_crit_edge ], [ -71, %do.end.i68 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i59) #12
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false.i, %if.end3.i.if.end17_crit_edge
  %.sink86 = phi i32 [ 8, %if.end3.i.if.end17_crit_edge ], [ %spec.select88, %lor.lhs.false.i ]
  %capabilities10.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 16
  %43 = ptrtoint ptr %capabilities10.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %capabilities10.i, align 8
  %or11.i = or i32 %44, %.sink86
  store i32 %or11.i, ptr %capabilities10.i, align 8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i59) #12
  %status19 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 6
  %45 = ptrtoint ptr %status19 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %status.0.ph, ptr %status19, align 4
  %capacity21 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 7
  %46 = ptrtoint ptr %capacity21 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %capacity.1.ph, ptr %capacity21, align 8
  %level23 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 8
  %47 = ptrtoint ptr %level23 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %level.1.ph, ptr %level23, align 4
  %spec.select = or i1 %cmp24, %cmp26
  %online = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 11
  %frombool = zext i1 %spec.select to i8
  %48 = ptrtoint ptr %online to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %frombool, ptr %online, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %hidpp20_batterylevel_get_battery_info.exit.thread, %hidpp20_batterylevel_get_battery_capacity.exit, %hidpp_root_get_feature.exit.thread
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %retval.0.i58, %hidpp20_batterylevel_get_battery_capacity.exit ], [ %retval.0.i.ph, %hidpp_root_get_feature.exit.thread ], [ %retval.0.i71.ph, %hidpp20_batterylevel_get_battery_info.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hi_res_scroll_enable(ptr noundef %hidpp) unnamed_addr #2 align 64 {
entry:
  %response.i.i22 = alloca %struct.hidpp_report, align 1
  %response.i23 = alloca %struct.hidpp_report, align 1
  %response.i.i2 = alloca %struct.hidpp_report, align 1
  %response.i3 = alloca %struct.hidpp_report, align 1
  %response.i.i = alloca %struct.hidpp_report, align 1
  %response.i = alloca %struct.hidpp_report, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 15
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 4
  %and = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i) #12
  %2 = call ptr @memset(ptr %response.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i.i) #12
  %3 = call ptr @memset(ptr %response.i.i, i32 255, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.hidpp_root_get_feature.exit.thread.i_crit_edge, label %hidpp_send_fap_command_sync.exit.i.i

if.then.hidpp_root_get_feature.exit.thread.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread.i

hidpp_send_fap_command_sync.exit.i.i:             ; preds = %if.then
  %5 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 17, ptr %call7.i.i.i.i.i, align 8
  %6 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %6, align 2
  %funcindex_clientid7.i.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i, i32 0, i32 2, i32 0, i32 1
  %8 = ptrtoint ptr %funcindex_clientid7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %funcindex_clientid7.i.i.i, align 1
  %params8.i.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i, i32 0, i32 2, i32 0, i32 2
  %9 = ptrtoint ptr %params8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 33, ptr %params8.i.i.i, align 4
  %params.sroa.5.0.params8.i.sroa_idx.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i, i32 0, i32 2, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %params.sroa.5.0.params8.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 33, ptr %params.sroa.5.0.params8.i.sroa_idx.i.i, align 1
  %call9.i.i.i = call fastcc i32 @hidpp_send_message_sync(ptr noundef %hidpp, ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef nonnull %response.i.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call9.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %hidpp_send_fap_command_sync.exit.i.i.hidpp_root_get_feature.exit.thread.i_crit_edge

hidpp_send_fap_command_sync.exit.i.i.hidpp_root_get_feature.exit.thread.i_crit_edge: ; preds = %hidpp_send_fap_command_sync.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread.i

if.end.i.i:                                       ; preds = %hidpp_send_fap_command_sync.exit.i.i
  %params4.i.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i.i, i32 0, i32 2, i32 0, i32 2
  %11 = ptrtoint ptr %params4.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %params4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.i.i = icmp eq i8 %12, 0
  br i1 %cmp.i.i, label %if.end.i.i.hidpp_root_get_feature.exit.thread.i_crit_edge, label %if.end.i

if.end.i.i.hidpp_root_get_feature.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread.i

hidpp_root_get_feature.exit.thread.i:             ; preds = %if.end.i.i.hidpp_root_get_feature.exit.thread.i_crit_edge, %hidpp_send_fap_command_sync.exit.i.i.hidpp_root_get_feature.exit.thread.i_crit_edge, %if.then.hidpp_root_get_feature.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i.i) #12
  br label %hidpp_hrw_set_wheel_mode.exit.thread

if.end.i:                                         ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i1.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i1.i, label %if.end.i.hidpp_hrw_set_wheel_mode.exit.thread_crit_edge, label %hidpp_hrw_set_wheel_mode.exit

if.end.i.hidpp_hrw_set_wheel_mode.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_hrw_set_wheel_mode.exit.thread

hidpp_hrw_set_wheel_mode.exit.thread:             ; preds = %if.end.i.hidpp_hrw_set_wheel_mode.exit.thread_crit_edge, %hidpp_root_get_feature.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i) #12
  br label %cleanup

hidpp_hrw_set_wheel_mode.exit:                    ; preds = %if.end.i
  %14 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 17, ptr %call7.i.i.i.i, align 8
  %15 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %12, ptr %15, align 2
  %funcindex_clientid7.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 1
  %17 = ptrtoint ptr %funcindex_clientid7.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 32, ptr %funcindex_clientid7.i.i, align 1
  %params8.i.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0, i32 2
  %18 = ptrtoint ptr %params8.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %params8.i.i, align 4
  %call9.i.i = call fastcc i32 @hidpp_send_message_sync(ptr noundef %hidpp, ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull %response.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %cmp = icmp eq i32 %call9.i.i, 0
  br i1 %cmp, label %if.then1, label %hidpp_hrw_set_wheel_mode.exit.cleanup_crit_edge

hidpp_hrw_set_wheel_mode.exit.cleanup_crit_edge:  ; preds = %hidpp_hrw_set_wheel_mode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then1:                                         ; preds = %hidpp_hrw_set_wheel_mode.exit
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i3) #12
  %19 = call ptr @memset(ptr %response.i3, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i.i2) #12
  %20 = call ptr @memset(ptr %response.i.i2, i32 255, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i4 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i.i.i5 = icmp eq ptr %call7.i.i.i.i.i4, null
  br i1 %tobool.not.i.i.i5, label %if.then1.hidpp_root_get_feature.exit.thread.i16_crit_edge, label %hidpp_send_fap_command_sync.exit.i.i11

if.then1.hidpp_root_get_feature.exit.thread.i16_crit_edge: ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread.i16

hidpp_send_fap_command_sync.exit.i.i11:           ; preds = %if.then1
  %22 = ptrtoint ptr %call7.i.i.i.i.i4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 17, ptr %call7.i.i.i.i.i4, align 8
  %23 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i4, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %23, align 2
  %funcindex_clientid7.i.i.i6 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i4, i32 0, i32 2, i32 0, i32 1
  %25 = ptrtoint ptr %funcindex_clientid7.i.i.i6 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %funcindex_clientid7.i.i.i6, align 1
  %params8.i.i.i7 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i4, i32 0, i32 2, i32 0, i32 2
  %26 = ptrtoint ptr %params8.i.i.i7 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 33, ptr %params8.i.i.i7, align 4
  %params.sroa.5.0.params8.i.sroa_idx.i.i8 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i4, i32 0, i32 2, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %params.sroa.5.0.params8.i.sroa_idx.i.i8 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 33, ptr %params.sroa.5.0.params8.i.sroa_idx.i.i8, align 1
  %call9.i.i.i9 = call fastcc i32 @hidpp_send_message_sync(ptr noundef %hidpp, ptr noundef nonnull %call7.i.i.i.i.i4, ptr noundef nonnull %response.i.i2) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i9)
  %tobool.not.i.i10 = icmp eq i32 %call9.i.i.i9, 0
  br i1 %tobool.not.i.i10, label %if.end.i.i14, label %hidpp_send_fap_command_sync.exit.i.i11.hidpp_root_get_feature.exit.thread.i16_crit_edge

hidpp_send_fap_command_sync.exit.i.i11.hidpp_root_get_feature.exit.thread.i16_crit_edge: ; preds = %hidpp_send_fap_command_sync.exit.i.i11
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread.i16

if.end.i.i14:                                     ; preds = %hidpp_send_fap_command_sync.exit.i.i11
  %params4.i.i12 = getelementptr inbounds %struct.hidpp_report, ptr %response.i.i2, i32 0, i32 2, i32 0, i32 2
  %28 = ptrtoint ptr %params4.i.i12 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %params4.i.i12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp.i.i13 = icmp eq i8 %29, 0
  br i1 %cmp.i.i13, label %if.end.i.i14.hidpp_root_get_feature.exit.thread.i16_crit_edge, label %if.end.i18

if.end.i.i14.hidpp_root_get_feature.exit.thread.i16_crit_edge: ; preds = %if.end.i.i14
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread.i16

hidpp_root_get_feature.exit.thread.i16:           ; preds = %if.end.i.i14.hidpp_root_get_feature.exit.thread.i16_crit_edge, %hidpp_send_fap_command_sync.exit.i.i11.hidpp_root_get_feature.exit.thread.i16_crit_edge, %if.then1.hidpp_root_get_feature.exit.thread.i16_crit_edge
  %retval.0.i.ph.i15 = phi i32 [ -12, %if.then1.hidpp_root_get_feature.exit.thread.i16_crit_edge ], [ -2, %if.end.i.i14.hidpp_root_get_feature.exit.thread.i16_crit_edge ], [ %call9.i.i.i9, %hidpp_send_fap_command_sync.exit.i.i11.hidpp_root_get_feature.exit.thread.i16_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i.i2) #12
  br label %do.end.i

if.end.i18:                                       ; preds = %if.end.i.i14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i.i2) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i17 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i13.i = icmp eq ptr %call7.i.i.i.i17, null
  br i1 %tobool.not.i13.i, label %if.end.i18.do.end.i_crit_edge, label %hidpp_send_fap_command_sync.exit.i

if.end.i18.do.end.i_crit_edge:                    ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

hidpp_send_fap_command_sync.exit.i:               ; preds = %if.end.i18
  %31 = ptrtoint ptr %call7.i.i.i.i17 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 17, ptr %call7.i.i.i.i17, align 8
  %32 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i17, i32 0, i32 2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %29, ptr %32, align 2
  %funcindex_clientid7.i.i19 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i17, i32 0, i32 2, i32 0, i32 1
  %34 = ptrtoint ptr %funcindex_clientid7.i.i19 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %funcindex_clientid7.i.i19, align 1
  %call9.i.i20 = call fastcc i32 @hidpp_send_message_sync(ptr noundef %hidpp, ptr noundef nonnull %call7.i.i.i.i17, ptr noundef nonnull %response.i3) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i20)
  %tobool2.not.i = icmp eq i32 %call9.i.i20, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %hidpp_send_fap_command_sync.exit.i.do.end.i_crit_edge

hidpp_send_fap_command_sync.exit.i.do.end.i_crit_edge: ; preds = %hidpp_send_fap_command_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.end4.i:                                        ; preds = %hidpp_send_fap_command_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %params.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i3, i32 0, i32 2, i32 0, i32 2
  %35 = ptrtoint ptr %params.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %params.i, align 1
  br label %hidpp_hrw_get_wheel_capability.exit

do.end.i:                                         ; preds = %hidpp_send_fap_command_sync.exit.i.do.end.i_crit_edge, %if.end.i18.do.end.i_crit_edge, %hidpp_root_get_feature.exit.thread.i16
  %ret.0.i = phi i32 [ %call9.i.i20, %hidpp_send_fap_command_sync.exit.i.do.end.i_crit_edge ], [ %retval.0.i.ph.i15, %hidpp_root_get_feature.exit.thread.i16 ], [ -12, %if.end.i18.do.end.i_crit_edge ]
  %37 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hidpp, align 8
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %38, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.111, i32 noundef %ret.0.i) #15
  br label %hidpp_hrw_get_wheel_capability.exit

hidpp_hrw_get_wheel_capability.exit:              ; preds = %do.end.i, %if.end4.i
  %multiplier.0 = phi i8 [ 1, %do.end.i ], [ %36, %if.end4.i ]
  %retval.0.i21 = phi i32 [ %ret.0.i, %do.end.i ], [ 0, %if.end4.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i3) #12
  br label %if.end11

if.else:                                          ; preds = %entry
  %and4 = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end11.thread52, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i23) #12
  %39 = call ptr @memset(ptr %response.i23, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response.i.i22) #12
  %40 = call ptr @memset(ptr %response.i.i22, i32 255, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i.i.i25 = icmp eq ptr %call7.i.i.i.i.i24, null
  br i1 %tobool.not.i.i.i25, label %if.then6.hidpp_root_get_feature.exit.thread.i36_crit_edge, label %hidpp_send_fap_command_sync.exit.i.i31

if.then6.hidpp_root_get_feature.exit.thread.i36_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread.i36

hidpp_send_fap_command_sync.exit.i.i31:           ; preds = %if.then6
  %42 = ptrtoint ptr %call7.i.i.i.i.i24 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 17, ptr %call7.i.i.i.i.i24, align 8
  %43 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i24, i32 0, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %43, align 2
  %funcindex_clientid7.i.i.i26 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i24, i32 0, i32 2, i32 0, i32 1
  %45 = ptrtoint ptr %funcindex_clientid7.i.i.i26 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %funcindex_clientid7.i.i.i26, align 1
  %params8.i.i.i27 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i24, i32 0, i32 2, i32 0, i32 2
  %46 = ptrtoint ptr %params8.i.i.i27 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 33, ptr %params8.i.i.i27, align 4
  %params.sroa.5.0.params8.i.sroa_idx.i.i28 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i.i24, i32 0, i32 2, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %params.sroa.5.0.params8.i.sroa_idx.i.i28 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 32, ptr %params.sroa.5.0.params8.i.sroa_idx.i.i28, align 1
  %call9.i.i.i29 = call fastcc i32 @hidpp_send_message_sync(ptr noundef %hidpp, ptr noundef nonnull %call7.i.i.i.i.i24, ptr noundef nonnull %response.i.i22) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i29)
  %tobool.not.i.i30 = icmp eq i32 %call9.i.i.i29, 0
  br i1 %tobool.not.i.i30, label %if.end.i.i34, label %hidpp_send_fap_command_sync.exit.i.i31.hidpp_root_get_feature.exit.thread.i36_crit_edge

hidpp_send_fap_command_sync.exit.i.i31.hidpp_root_get_feature.exit.thread.i36_crit_edge: ; preds = %hidpp_send_fap_command_sync.exit.i.i31
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread.i36

if.end.i.i34:                                     ; preds = %hidpp_send_fap_command_sync.exit.i.i31
  %params4.i.i32 = getelementptr inbounds %struct.hidpp_report, ptr %response.i.i22, i32 0, i32 2, i32 0, i32 2
  %48 = ptrtoint ptr %params4.i.i32 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %params4.i.i32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp.i.i33 = icmp eq i8 %49, 0
  br i1 %cmp.i.i33, label %if.end.i.i34.hidpp_root_get_feature.exit.thread.i36_crit_edge, label %if.end.i39

if.end.i.i34.hidpp_root_get_feature.exit.thread.i36_crit_edge: ; preds = %if.end.i.i34
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_root_get_feature.exit.thread.i36

hidpp_root_get_feature.exit.thread.i36:           ; preds = %if.end.i.i34.hidpp_root_get_feature.exit.thread.i36_crit_edge, %hidpp_send_fap_command_sync.exit.i.i31.hidpp_root_get_feature.exit.thread.i36_crit_edge, %if.then6.hidpp_root_get_feature.exit.thread.i36_crit_edge
  %retval.0.i.ph.i35 = phi i32 [ -12, %if.then6.hidpp_root_get_feature.exit.thread.i36_crit_edge ], [ -2, %if.end.i.i34.hidpp_root_get_feature.exit.thread.i36_crit_edge ], [ %call9.i.i.i29, %hidpp_send_fap_command_sync.exit.i.i31.hidpp_root_get_feature.exit.thread.i36_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i.i22) #12
  br label %hidpp_hrs_set_highres_scrolling_mode.exit

if.end.i39:                                       ; preds = %if.end.i.i34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i.i22) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %50 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i37 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i1.i38 = icmp eq ptr %call7.i.i.i.i37, null
  br i1 %tobool.not.i1.i38, label %if.end.i39.hidpp_hrs_set_highres_scrolling_mode.exit_crit_edge, label %hidpp_send_fap_command_sync.exit.i43

if.end.i39.hidpp_hrs_set_highres_scrolling_mode.exit_crit_edge: ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_hrs_set_highres_scrolling_mode.exit

hidpp_send_fap_command_sync.exit.i43:             ; preds = %if.end.i39
  %51 = ptrtoint ptr %call7.i.i.i.i37 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 17, ptr %call7.i.i.i.i37, align 8
  %52 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i37, i32 0, i32 2
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %49, ptr %52, align 2
  %funcindex_clientid7.i.i40 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i37, i32 0, i32 2, i32 0, i32 1
  %54 = ptrtoint ptr %funcindex_clientid7.i.i40 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 16, ptr %funcindex_clientid7.i.i40, align 1
  %params8.i.i41 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i.i37, i32 0, i32 2, i32 0, i32 2
  %55 = ptrtoint ptr %params8.i.i41 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %params8.i.i41, align 4
  %call9.i.i42 = call fastcc i32 @hidpp_send_message_sync(ptr noundef %hidpp, ptr noundef nonnull %call7.i.i.i.i37, ptr noundef nonnull %response.i23) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i42)
  %tobool3.not.i = icmp eq i32 %call9.i.i42, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %hidpp_send_fap_command_sync.exit.i43.hidpp_hrs_set_highres_scrolling_mode.exit_crit_edge

hidpp_send_fap_command_sync.exit.i43.hidpp_hrs_set_highres_scrolling_mode.exit_crit_edge: ; preds = %hidpp_send_fap_command_sync.exit.i43
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_hrs_set_highres_scrolling_mode.exit

if.end5.i:                                        ; preds = %hidpp_send_fap_command_sync.exit.i43
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx7.i = getelementptr inbounds %struct.hidpp_report, ptr %response.i23, i32 0, i32 2, i32 0, i32 2, i32 1
  %56 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx7.i, align 1
  br label %hidpp_hrs_set_highres_scrolling_mode.exit

hidpp_hrs_set_highres_scrolling_mode.exit:        ; preds = %if.end5.i, %hidpp_send_fap_command_sync.exit.i43.hidpp_hrs_set_highres_scrolling_mode.exit_crit_edge, %if.end.i39.hidpp_hrs_set_highres_scrolling_mode.exit_crit_edge, %hidpp_root_get_feature.exit.thread.i36
  %multiplier.1 = phi i8 [ 1, %hidpp_root_get_feature.exit.thread.i36 ], [ 1, %if.end.i39.hidpp_hrs_set_highres_scrolling_mode.exit_crit_edge ], [ %57, %if.end5.i ], [ 1, %hidpp_send_fap_command_sync.exit.i43.hidpp_hrs_set_highres_scrolling_mode.exit_crit_edge ]
  %retval.0.i44 = phi i32 [ %retval.0.i.ph.i35, %hidpp_root_get_feature.exit.thread.i36 ], [ -12, %if.end.i39.hidpp_hrs_set_highres_scrolling_mode.exit_crit_edge ], [ 0, %if.end5.i ], [ %call9.i.i42, %hidpp_send_fap_command_sync.exit.i43.hidpp_hrs_set_highres_scrolling_mode.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response.i23) #12
  br label %if.end11

if.end11:                                         ; preds = %hidpp_hrs_set_highres_scrolling_mode.exit, %hidpp_hrw_get_wheel_capability.exit
  %multiplier.2 = phi i8 [ %multiplier.1, %hidpp_hrs_set_highres_scrolling_mode.exit ], [ %multiplier.0, %hidpp_hrw_get_wheel_capability.exit ]
  %ret.0 = phi i32 [ %retval.0.i44, %hidpp_hrs_set_highres_scrolling_mode.exit ], [ %retval.0.i21, %hidpp_hrw_get_wheel_capability.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool12.not = icmp eq i32 %ret.0, 0
  br i1 %tobool12.not, label %if.end14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11.thread52:                                ; preds = %if.else
  %call.i = tail call fastcc i32 @hidpp10_set_register(ptr noundef %hidpp, i8 noundef zeroext 1, i8 noundef zeroext 64, i8 noundef zeroext 64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not55 = icmp eq i32 %call.i, 0
  br i1 %tobool12.not55, label %if.end11.thread52.if.end18_crit_edge, label %if.end11.thread52.cleanup_crit_edge

if.end11.thread52.cleanup_crit_edge:              ; preds = %if.end11.thread52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11.thread52.if.end18_crit_edge:             ; preds = %if.end11.thread52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %multiplier.2)
  %cmp15 = icmp eq i8 %multiplier.2, 0
  %spec.select = select i1 %cmp15, i8 1, i8 %multiplier.2
  %phi.cast = zext i8 %spec.select to i32
  br label %if.end18

if.end18:                                         ; preds = %if.end14, %if.end11.thread52.if.end18_crit_edge
  %multiplier.3 = phi i32 [ 8, %if.end11.thread52.if.end18_crit_edge ], [ %phi.cast, %if.end14 ]
  %vertical_wheel_counter = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 19
  %58 = ptrtoint ptr %vertical_wheel_counter to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %multiplier.3, ptr %vertical_wheel_counter, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hi_res_scroll_enable.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hi_res_scroll_enable, %if.then24)) #12
          to label %cleanup [label %if.then24], !srcloc !459

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hidpp, align 8
  %dev = getelementptr inbounds %struct.hid_device, ptr %60, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hi_res_scroll_enable.__UNIQUE_ID_ddebug250, ptr noundef %dev, ptr noundef nonnull @.str.110, i32 noundef %multiplier.3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end18, %if.end11.thread52.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %hidpp_hrw_set_wheel_mode.exit.cleanup_crit_edge, %hidpp_hrw_set_wheel_mode.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @hidpp_allocate_input(ptr noundef %hdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i38 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 8
  %2 = ptrtoint ptr %driver_data.i.i38 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %hdev, ptr %driver_data.i.i38, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 31
  %3 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @hidpp_input_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 32
  %4 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @hidpp_input_close, ptr %close, align 4
  %name = getelementptr inbounds %struct.hidpp_device, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 8
  %7 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %call, align 8
  %phys = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 40
  %phys3 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %phys3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %phys, ptr %phys3, align 4
  %uniq = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 41
  %uniq5 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 2
  %9 = ptrtoint ptr %uniq5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %uniq, ptr %uniq5, align 8
  %bus = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 8
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bus, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3
  %12 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 10
  %13 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vendor, align 4
  %conv = trunc i32 %14 to i16
  %vendor7 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %vendor7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %vendor7, align 2
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %16 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %product, align 8
  %conv8 = trunc i32 %17 to i16
  %product10 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %product10 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv8, ptr %product10, align 4
  %version = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 12
  %19 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %version, align 4
  %conv11 = trunc i32 %20 to i16
  %version13 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %version13 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv11, ptr %version13, align 2
  %parent = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 1
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %parent, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hidpp_populate_input(ptr nocapture noundef %hidpp, ptr noundef %input) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %input1 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 1
  %0 = ptrtoint ptr %input1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %input, ptr %input1, align 4
  %quirks = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 15
  %1 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %quirks, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %private_data.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 10
  %3 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data.i, align 8
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 5
  %5 = ptrtoint ptr %evbit.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %evbit.i, align 4
  %or.i28.i = and i32 %6, -131087
  %and.i.i = or i32 %or.i28.i, 10
  store i32 %and.i.i, ptr %evbit.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %4, align 4
  %conv.i = zext i16 %8 to i32
  tail call void @input_set_abs_params(ptr noundef %input, i32 noundef 53, i32 noundef 0, i32 noundef %conv.i, i32 noundef 0, i32 noundef 0) #12
  %resolution.i = getelementptr inbounds %struct.wtp_data, ptr %4, i32 0, i32 7
  %9 = ptrtoint ptr %resolution.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %resolution.i, align 4
  tail call void @input_alloc_absinfo(ptr noundef %input) #12
  %absinfo.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 26
  %11 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.then.input_abs_set_res.exit.i_crit_edge, label %if.then.i.i

if.then.input_abs_set_res.exit.i_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %input_abs_set_res.exit.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %resolution.i.i = getelementptr %struct.input_absinfo, ptr %12, i32 53, i32 5
  %13 = ptrtoint ptr %resolution.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %resolution.i.i, align 4
  br label %input_abs_set_res.exit.i

input_abs_set_res.exit.i:                         ; preds = %if.then.i.i, %if.then.input_abs_set_res.exit.i_crit_edge
  %y_size.i = getelementptr inbounds %struct.wtp_data, ptr %4, i32 0, i32 1
  %14 = ptrtoint ptr %y_size.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %y_size.i, align 2
  %conv7.i = zext i16 %15 to i32
  tail call void @input_set_abs_params(ptr noundef %input, i32 noundef 54, i32 noundef 0, i32 noundef %conv7.i, i32 noundef 0, i32 noundef 0) #12
  %16 = ptrtoint ptr %resolution.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %resolution.i, align 4
  tail call void @input_alloc_absinfo(ptr noundef %input) #12
  %18 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i32.i = icmp eq ptr %19, null
  br i1 %tobool.not.i32.i, label %input_abs_set_res.exit.i.input_abs_set_res.exit35.i_crit_edge, label %if.then.i34.i

input_abs_set_res.exit.i.input_abs_set_res.exit35.i_crit_edge: ; preds = %input_abs_set_res.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %input_abs_set_res.exit35.i

if.then.i34.i:                                    ; preds = %input_abs_set_res.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %resolution.i33.i = getelementptr %struct.input_absinfo, ptr %19, i32 54, i32 5
  %20 = ptrtoint ptr %resolution.i33.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %resolution.i33.i, align 4
  br label %input_abs_set_res.exit35.i

input_abs_set_res.exit35.i:                       ; preds = %if.then.i34.i, %input_abs_set_res.exit.i.input_abs_set_res.exit35.i_crit_edge
  tail call void @input_set_abs_params(ptr noundef %input, i32 noundef 58, i32 noundef 0, i32 noundef 50, i32 noundef 0, i32 noundef 0) #12
  tail call void @input_set_capability(ptr noundef %input, i32 noundef 1, i32 noundef 272) #12
  %21 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %quirks, align 4
  %and.i = and i32 %22, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %input_abs_set_res.exit35.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @input_set_capability(ptr noundef %input, i32 noundef 1, i32 noundef 273) #12
  br label %wtp_populate_input.exit

if.else.i:                                        ; preds = %input_abs_set_res.exit35.i
  call void @__sanitizer_cov_trace_pc() #14
  %propbit.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 4
  %23 = ptrtoint ptr %propbit.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %propbit.i, align 4
  %or.i30.i = or i32 %24, 4
  store i32 %or.i30.i, ptr %propbit.i, align 4
  br label %wtp_populate_input.exit

wtp_populate_input.exit:                          ; preds = %if.else.i, %if.then.i
  %maxcontacts.i = getelementptr inbounds %struct.wtp_data, ptr %4, i32 0, i32 5
  %25 = ptrtoint ptr %maxcontacts.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %maxcontacts.i, align 1
  %conv10.i = zext i8 %26 to i32
  %call.i = tail call i32 @input_mt_init_slots(ptr noundef %input, i32 noundef %conv10.i, i32 noundef 5) #12
  br label %if.end6

if.else:                                          ; preds = %entry
  %and3 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else.if.end6_crit_edge, label %if.then5

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %evbit.i29 = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 5
  %27 = ptrtoint ptr %evbit.i29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %evbit.i29, align 4
  %add.ptr.i.i = getelementptr %struct.input_dev, ptr %input, i32 0, i32 6, i32 8
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i, align 4
  %or.i9.i = or i32 %30, 6750208
  store i32 %or.i9.i, ptr %add.ptr.i.i, align 4
  %or.i10.i = or i32 %28, 6
  store i32 %or.i10.i, ptr %evbit.i29, align 4
  %relbit.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 7
  %31 = ptrtoint ptr %relbit.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %relbit.i, align 4
  %or.i16.i = or i32 %32, 6467
  store i32 %or.i16.i, ptr %relbit.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.else.if.end6_crit_edge, %wtp_populate_input.exit
  %33 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %quirks, align 4
  %and8 = and i32 %34, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end6.if.end11_crit_edge, label %if.then10

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %evbit.i30 = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 5
  %35 = ptrtoint ptr %evbit.i30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %evbit.i30, align 4
  %or.i.i = or i32 %36, 4
  store i32 %or.i.i, ptr %evbit.i30, align 4
  %relbit.i31 = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 7
  %37 = ptrtoint ptr %relbit.i31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %relbit.i31, align 4
  %or.i4.i = or i32 %38, 6464
  store i32 %or.i4.i, ptr %relbit.i31, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end6.if.end11_crit_edge
  %39 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %quirks, align 4
  %and13 = and i32 %40, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end11.if.end16_crit_edge, label %if.then15

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i32 = getelementptr %struct.input_dev, ptr %input, i32 0, i32 6, i32 8
  %41 = ptrtoint ptr %add.ptr.i.i32 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i.i32, align 4
  %or.i14.i = or i32 %42, 255
  store i32 %or.i14.i, ptr %add.ptr.i.i32, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end11.if.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hidpp10_set_register(ptr noundef %hidpp_dev, i8 noundef zeroext %register_address, i8 noundef zeroext %mask, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  %response = alloca %struct.hidpp_report, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response) #12
  %0 = call ptr @memset(ptr %response, i32 255, i32 64)
  %supported_reports.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp_dev, i32 0, i32 17
  %1 = ptrtoint ptr %supported_reports.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %supported_reports.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 64) #16
  %tobool10.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool10.not.i, label %entry.cleanup_crit_edge, label %hidpp_send_rap_command_sync.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

hidpp_send_rap_command_sync.exit:                 ; preds = %entry
  %4 = and i8 %2, 1
  %5 = xor i8 %4, 17
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %call7.i.i.i, align 8
  %7 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -127, ptr %7, align 2
  %reg_address15.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %reg_address15.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %register_address, ptr %reg_address15.i, align 1
  %call17.i = call fastcc i32 @hidpp_send_message_sync(ptr noundef %hidpp_dev, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %response) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool.not = icmp eq i32 %call17.i, 0
  br i1 %tobool.not, label %if.end, label %hidpp_send_rap_command_sync.exit.cleanup_crit_edge

hidpp_send_rap_command_sync.exit.cleanup_crit_edge: ; preds = %hidpp_send_rap_command_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %hidpp_send_rap_command_sync.exit
  %params1 = getelementptr inbounds %struct.hidpp_report, ptr %response, i32 0, i32 2, i32 0, i32 2
  %10 = ptrtoint ptr %params1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %params.sroa.0.0.copyload = load i8, ptr %params1, align 1
  %params.sroa.7.0.params1.sroa_idx = getelementptr inbounds %struct.hidpp_report, ptr %response, i32 0, i32 2, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %params.sroa.7.0.params1.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %params.sroa.7.0.params1.sroa_idx, align 1
  %13 = ptrtoint ptr %supported_reports.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %supported_reports.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i4 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 64) #16
  %tobool10.not.i5 = icmp eq ptr %call7.i.i.i4, null
  br i1 %tobool10.not.i5, label %if.end.cleanup_crit_edge, label %if.end12.i9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12.i9:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %neg = xor i8 %mask, -1
  %and = and i8 %params.sroa.0.0.copyload, %neg
  %and71 = and i8 %value, %mask
  %or2 = or i8 %and, %and71
  %16 = and i8 %14, 1
  %17 = xor i8 %16, 17
  %18 = ptrtoint ptr %call7.i.i.i4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %call7.i.i.i4, align 8
  %19 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i4, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -128, ptr %19, align 2
  %reg_address15.i6 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i4, i32 0, i32 2, i32 0, i32 1
  %21 = ptrtoint ptr %reg_address15.i6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %register_address, ptr %reg_address15.i6, align 1
  %params16.i7 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i4, i32 0, i32 2, i32 0, i32 2
  %22 = ptrtoint ptr %params16.i7 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %or2, ptr %params16.i7, align 4
  %params.sroa.7.0.params16.i7.sroa_idx = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i4, i32 0, i32 2, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %params.sroa.7.0.params16.i7.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %12, ptr %params.sroa.7.0.params16.i7.sroa_idx, align 1
  %call17.i8 = call fastcc i32 @hidpp_send_message_sync(ptr noundef %hidpp_dev, ptr noundef nonnull %call7.i.i.i4, ptr noundef nonnull %response) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i4) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end12.i9, %if.end.cleanup_crit_edge, %hidpp_send_rap_command_sync.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17.i, %hidpp_send_rap_command_sync.exit.cleanup_crit_edge ], [ %call17.i8, %if.end12.i9 ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidpp_battery_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #12
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.219)
  switch i32 %psp, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 47, label %sw.bb1
    i32 51, label %sw.bb3
    i32 66, label %sw.bb5
    i32 4, label %sw.bb6
    i32 73, label %sw.bb8
    i32 74, label %sw.bb13
    i32 75, label %sw.bb14
    i32 12, label %sw.bb15
    i32 1, label %sw.bb17
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %status = getelementptr inbounds %struct.hidpp_device, ptr %call, i32 0, i32 18, i32 6
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %status, align 4
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %val, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %capacity = getelementptr inbounds %struct.hidpp_device, ptr %call, i32 0, i32 18, i32 7
  %4 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capacity, align 8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %val, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %level = getelementptr inbounds %struct.hidpp_device, ptr %call, i32 0, i32 18, i32 8
  %7 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %level, align 4
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %val, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %online = getelementptr inbounds %struct.hidpp_device, ptr %call, i32 0, i32 18, i32 11
  %11 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %online, align 8, !range !454
  %13 = zext i8 %12 to i32
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %val, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.hidpp_device, ptr %call, i32 0, i32 4
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 8
  %call9 = tail call i32 @strncmp(ptr noundef %16, ptr noundef nonnull dereferenceable(10) @.str.55, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %16, i32 9
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %val, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %val, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.99, ptr %val, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call, align 8
  %uniq = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 41
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %uniq, ptr %val, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %voltage = getelementptr inbounds %struct.hidpp_device, ptr %call, i32 0, i32 18, i32 9
  %23 = ptrtoint ptr %voltage to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %voltage, align 8
  %mul = mul i32 %24, 1000
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul, ptr %val, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %charge_type = getelementptr inbounds %struct.hidpp_device, ptr %call, i32 0, i32 18, i32 10
  %26 = ptrtoint ptr %charge_type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %charge_type, align 4
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb15, %sw.bb14, %sw.bb13, %if.else, %if.then, %sw.bb6, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb17 ], [ 0, %sw.bb15 ], [ 0, %sw.bb14 ], [ 0, %sw.bb13 ], [ 0, %if.else ], [ 0, %if.then ], [ 0, %sw.bb6 ], [ 0, %sw.bb5 ], [ 0, %sw.bb3 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_powers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidpp_input_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @hid_hw_open(ptr noundef %1) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hidpp_input_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @hid_hw_close(ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidpp_ff_upload_effect(ptr nocapture noundef readonly %dev, ptr noundef readonly %effect, ptr nocapture noundef readnone %old) #2 align 64 {
entry:
  %params = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ff = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ff, align 8
  %private = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %params) #12
  %4 = getelementptr inbounds [20 x i8], ptr %params, i32 0, i32 1
  %5 = getelementptr inbounds [20 x i8], ptr %params, i32 0, i32 2
  %6 = getelementptr inbounds [20 x i8], ptr %params, i32 0, i32 3
  %7 = getelementptr inbounds [20 x i8], ptr %params, i32 0, i32 4
  %8 = getelementptr inbounds [20 x i8], ptr %params, i32 0, i32 5
  %9 = getelementptr inbounds [20 x i8], ptr %params, i32 0, i32 6
  %10 = getelementptr inbounds [20 x i8], ptr %params, i32 0, i32 7
  %11 = getelementptr inbounds [20 x i8], ptr %params, i32 0, i32 8
  %12 = getelementptr inbounds [20 x i8], ptr %params, i32 0, i32 9
  %13 = getelementptr inbounds [20 x i8], ptr %params, i32 0, i32 10
  %14 = getelementptr inbounds [20 x i8], ptr %params, i32 0, i32 11
  %15 = getelementptr inbounds [20 x i8], ptr %params, i32 0, i32 12
  %16 = getelementptr inbounds [20 x i8], ptr %params, i32 0, i32 13
  %17 = getelementptr inbounds [20 x i8], ptr %params, i32 0, i32 14
  %18 = getelementptr inbounds [20 x i8], ptr %params, i32 0, i32 15
  %19 = getelementptr inbounds [20 x i8], ptr %params, i32 0, i32 16
  %20 = getelementptr inbounds [20 x i8], ptr %params, i32 0, i32 17
  %21 = getelementptr inbounds [20 x i8], ptr %params, i32 0, i32 18
  %22 = getelementptr inbounds [20 x i8], ptr %params, i32 0, i32 19
  %replay = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4
  %23 = call ptr @memset(ptr %params, i32 255, i32 20)
  %24 = ptrtoint ptr %replay to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %replay, align 2
  %26 = lshr i16 %25, 8
  %conv1 = trunc i16 %26 to i8
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv1, ptr %5, align 1
  %conv5 = trunc i16 %25 to i8
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv5, ptr %6, align 1
  %delay = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %delay to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %delay, align 2
  %31 = lshr i16 %30, 8
  %conv10 = trunc i16 %31 to i8
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv10, ptr %7, align 1
  %conv16 = trunc i16 %30 to i8
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv16, ptr %8, align 1
  %34 = ptrtoint ptr %effect to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %effect, align 4
  %36 = zext i16 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.220)
  switch i16 %35, label %do.end535 [
    i16 82, label %sw.bb
    i16 81, label %sw.bb105
    i16 87, label %sw.bb274
    i16 84, label %entry.sw.bb396_crit_edge
    i16 86, label %entry.sw.bb396_crit_edge697
    i16 83, label %entry.sw.bb396_crit_edge698
    i16 85, label %entry.sw.bb396_crit_edge699
  ]

entry.sw.bb396_crit_edge699:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb396

entry.sw.bb396_crit_edge698:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb396

entry.sw.bb396_crit_edge697:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb396

entry.sw.bb396_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb396

sw.bb:                                            ; preds = %entry
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %37 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %u, align 4
  %conv19 = sext i16 %38 to i32
  %direction = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %39 = ptrtoint ptr %direction to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %direction, align 4
  %conv20 = zext i16 %40 to i32
  %mul = mul nuw nsw i32 %conv20, 360
  %41 = lshr i32 %mul, 16
  %rem.i691.lhs.trunc = trunc i32 %41 to i16
  %rem.i691692 = urem i16 %rem.i691.lhs.trunc, 360
  %rem13.lhs.trunc.i = add nuw nsw i16 %rem.i691692, 360
  %rem134.i = urem i16 %rem13.lhs.trunc.i, 360
  %rem13.zext.i = zext i16 %rem134.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 180, i16 %rem134.i)
  %cmp.i.i = icmp ugt i16 %rem134.i, 180
  %sub.i.i = add nsw i32 %rem13.zext.i, -180
  %spec.select.i.i = select i1 %cmp.i.i, i32 %sub.i.i, i32 %rem13.zext.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %spec.select.i.i)
  %cmp1.i.i = icmp ugt i32 %spec.select.i.i, 90
  %sub3.i.i = sub nuw nsw i32 180, %spec.select.i.i
  %degrees.addr.1.i.i = select i1 %cmp1.i.i, i32 %sub3.i.i, i32 %spec.select.i.i
  %arrayidx.i.i = getelementptr [91 x i32], ptr @sin_table, i32 0, i32 %degrees.addr.1.i.i
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i, align 4
  %sub5.i.i = sub i32 0, %43
  %cond.i.i = select i1 %cmp.i.i, i32 %sub5.i.i, i32 %43
  %shr22 = ashr i32 %cond.i.i, 16
  %mul23 = mul nsw i32 %shr22, %conv19
  %shr24 = ashr i32 %mul23, 15
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %4, align 1
  %45 = lshr i32 %mul23, 23
  %conv27 = trunc i32 %45 to i8
  %46 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv27, ptr %9, align 1
  %conv30 = trunc i32 %shr24 to i8
  %47 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv30, ptr %10, align 1
  %envelope = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %attack_level = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 2
  %48 = ptrtoint ptr %attack_level to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %attack_level, align 2
  %50 = lshr i16 %49, 7
  %conv35 = trunc i16 %50 to i8
  %51 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv35, ptr %11, align 1
  %52 = ptrtoint ptr %envelope to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %envelope, align 2
  %54 = lshr i16 %53, 8
  %conv41 = trunc i16 %54 to i8
  %55 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv41, ptr %12, align 1
  %conv48 = trunc i16 %53 to i8
  %56 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv48, ptr %13, align 1
  %fade_level = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 4
  %57 = ptrtoint ptr %fade_level to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %fade_level, align 2
  %59 = lshr i16 %58, 7
  %conv54 = trunc i16 %59 to i8
  %60 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv54, ptr %14, align 1
  %fade_length = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 3
  %61 = ptrtoint ptr %fade_length to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %fade_length, align 2
  %63 = lshr i16 %62, 8
  %conv60 = trunc i16 %63 to i8
  %64 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv60, ptr %15, align 1
  %conv67 = trunc i16 %62 to i8
  %65 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv67, ptr %16, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %66 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not = icmp eq i32 %66, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog541_crit_edge, label %do.body78

sw.bb.sw.epilog541_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog541

do.body78:                                        ; preds = %sw.bb
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.4, i32 noundef %conv19, i32 noundef %conv20, i32 noundef %shr24) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %.pr = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool79.not = icmp eq i32 %.pr, 0
  br i1 %tobool79.not, label %do.body78.sw.epilog541_crit_edge, label %do.end83

do.body78.sw.epilog541_crit_edge:                 ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog541

do.end83:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %attack_level to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %attack_level, align 2
  %conv88 = zext i16 %68 to i32
  %69 = ptrtoint ptr %envelope to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %envelope, align 2
  %conv92 = zext i16 %70 to i32
  %71 = ptrtoint ptr %fade_level to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %fade_level, align 2
  %conv96 = zext i16 %72 to i32
  %73 = ptrtoint ptr %fade_length to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %fade_length, align 2
  %conv100 = zext i16 %74 to i32
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.4, i32 noundef %conv88, i32 noundef %conv92, i32 noundef %conv96, i32 noundef %conv100) #15
  br label %sw.epilog541

sw.bb105:                                         ; preds = %entry
  %u106 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %75 = ptrtoint ptr %u106 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %u106, align 4
  %switch.tableidx = add i16 %76, -88
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %switch.tableidx)
  %77 = icmp ult i16 %switch.tableidx, 5
  br i1 %77, label %switch.lookup, label %do.end120

do.end120:                                        ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #14
  %conv107 = zext i16 %76 to i32
  %78 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %3, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 8
  %dev121 = getelementptr inbounds %struct.hid_device, ptr %81, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev121, ptr noundef nonnull @.str.136, i32 noundef %conv107) #15
  br label %cleanup

switch.lookup:                                    ; preds = %sw.bb105
  %82 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.hidpp_ff_upload_effect, i32 0, i32 %82
  %83 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %83)
  %switch.load = load i8, ptr %switch.gep, align 1
  %84 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %switch.load, ptr %4, align 1
  %magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 2
  %direction127 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %85 = ptrtoint ptr %direction127 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %direction127, align 4
  %87 = ptrtoint ptr %magnitude to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %magnitude, align 4
  %89 = lshr i16 %88, 8
  %conv139 = trunc i16 %89 to i8
  %90 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv139, ptr %9, align 1
  %conv145 = trunc i16 %88 to i8
  %91 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv145, ptr %10, align 1
  %offset = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 3
  %92 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %offset, align 2
  %94 = lshr i16 %93, 8
  %conv150 = trunc i16 %94 to i8
  %95 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv150, ptr %11, align 1
  %conv156 = trunc i16 %93 to i8
  %96 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv156, ptr %12, align 1
  %period = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %97 = ptrtoint ptr %period to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %period, align 2
  %99 = lshr i16 %98, 8
  %conv161 = trunc i16 %99 to i8
  %100 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv161, ptr %13, align 1
  %conv167 = trunc i16 %98 to i8
  %101 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv167, ptr %14, align 1
  %phase = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 4
  %102 = ptrtoint ptr %phase to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %phase, align 4
  %104 = lshr i16 %103, 8
  %conv172 = trunc i16 %104 to i8
  %105 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv172, ptr %15, align 1
  %conv178 = trunc i16 %103 to i8
  %106 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv178, ptr %16, align 1
  %envelope181 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5
  %attack_level182 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 1
  %107 = ptrtoint ptr %attack_level182 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %attack_level182, align 2
  %109 = lshr i16 %108, 7
  %conv185 = trunc i16 %109 to i8
  %110 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv185, ptr %17, align 1
  %111 = ptrtoint ptr %envelope181 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %envelope181, align 2
  %113 = lshr i16 %112, 8
  %conv192 = trunc i16 %113 to i8
  %114 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv192, ptr %18, align 1
  %conv199 = trunc i16 %112 to i8
  %115 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv199, ptr %19, align 1
  %fade_level203 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 3
  %116 = ptrtoint ptr %fade_level203 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %fade_level203, align 2
  %118 = lshr i16 %117, 7
  %conv206 = trunc i16 %118 to i8
  %119 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv206, ptr %20, align 1
  %fade_length210 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5, i32 2
  %120 = ptrtoint ptr %fade_length210 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %fade_length210, align 2
  %122 = lshr i16 %121, 8
  %conv213 = trunc i16 %122 to i8
  %123 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv213, ptr %21, align 1
  %conv220 = trunc i16 %121 to i8
  %124 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv220, ptr %22, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %125 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool223.not = icmp eq i32 %125, 0
  br i1 %tobool223.not, label %switch.lookup.sw.epilog541_crit_edge, label %do.body247

switch.lookup.sw.epilog541_crit_edge:             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog541

do.body247:                                       ; preds = %switch.lookup
  %conv128 = zext i16 %86 to i32
  %conv231 = sext i16 %88 to i32
  %conv236 = sext i16 %93 to i32
  %conv239 = zext i16 %98 to i32
  %conv242 = zext i16 %103 to i32
  %call243 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.4, i32 noundef %conv231, i32 noundef %conv128, i32 noundef %conv236, i32 noundef %conv239, i32 noundef %conv242) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %.pr685 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr685)
  %tobool248.not = icmp eq i32 %.pr685, 0
  br i1 %tobool248.not, label %do.body247.sw.epilog541_crit_edge, label %do.end252

do.body247.sw.epilog541_crit_edge:                ; preds = %do.body247
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog541

do.end252:                                        ; preds = %do.body247
  call void @__sanitizer_cov_trace_pc() #14
  %126 = ptrtoint ptr %attack_level182 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %attack_level182, align 2
  %conv257 = zext i16 %127 to i32
  %128 = ptrtoint ptr %envelope181 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %envelope181, align 2
  %conv261 = zext i16 %129 to i32
  %130 = ptrtoint ptr %fade_level203 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %fade_level203, align 2
  %conv265 = zext i16 %131 to i32
  %132 = ptrtoint ptr %fade_length210 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %fade_length210, align 2
  %conv269 = zext i16 %133 to i32
  %call270 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.4, i32 noundef %conv257, i32 noundef %conv261, i32 noundef %conv265, i32 noundef %conv269) #15
  br label %sw.epilog541

sw.bb274:                                         ; preds = %entry
  %134 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 10, ptr %4, align 1
  %u276 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %135 = ptrtoint ptr %u276 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %u276, align 4
  %conv277 = sext i16 %136 to i32
  %direction278 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %137 = ptrtoint ptr %direction278 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %direction278, align 4
  %conv279 = zext i16 %138 to i32
  %mul280 = mul nuw nsw i32 %conv279, 360
  %139 = lshr i32 %mul280, 16
  %rem.i658695.lhs.trunc = trunc i32 %139 to i16
  %rem.i658695696 = urem i16 %rem.i658695.lhs.trunc, 360
  %rem13.lhs.trunc.i659 = add nuw nsw i16 %rem.i658695696, 360
  %rem134.i660 = urem i16 %rem13.lhs.trunc.i659, 360
  %rem13.zext.i661 = zext i16 %rem134.i660 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 180, i16 %rem134.i660)
  %cmp.i.i662 = icmp ugt i16 %rem134.i660, 180
  %sub.i.i663 = add nsw i32 %rem13.zext.i661, -180
  %spec.select.i.i664 = select i1 %cmp.i.i662, i32 %sub.i.i663, i32 %rem13.zext.i661
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %spec.select.i.i664)
  %cmp1.i.i665 = icmp ugt i32 %spec.select.i.i664, 90
  %sub3.i.i666 = sub nuw nsw i32 180, %spec.select.i.i664
  %degrees.addr.1.i.i667 = select i1 %cmp1.i.i665, i32 %sub3.i.i666, i32 %spec.select.i.i664
  %arrayidx.i.i668 = getelementptr [91 x i32], ptr @sin_table, i32 0, i32 %degrees.addr.1.i.i667
  %140 = ptrtoint ptr %arrayidx.i.i668 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx.i.i668, align 4
  %sub5.i.i669 = sub i32 0, %141
  %cond.i.i670 = select i1 %cmp.i.i662, i32 %sub5.i.i669, i32 %141
  %shr283 = ashr i32 %cond.i.i670, 16
  %mul284 = mul nsw i32 %shr283, %conv277
  %142 = lshr i32 %mul284, 15
  %143 = lshr i32 %mul284, 23
  %conv287 = trunc i32 %143 to i8
  %144 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %conv287, ptr %9, align 1
  %conv290 = trunc i32 %142 to i8
  %145 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv290, ptr %10, align 1
  %end_level = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %146 = ptrtoint ptr %end_level to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %end_level, align 2
  %conv293 = sext i16 %147 to i32
  %mul300 = mul nsw i32 %shr283, %conv293
  %shr301 = ashr i32 %mul300, 15
  %148 = lshr i32 %mul300, 23
  %conv303 = trunc i32 %148 to i8
  %149 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv303, ptr %11, align 1
  %conv306 = trunc i32 %shr301 to i8
  %150 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %conv306, ptr %12, align 1
  %envelope309 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 2
  %attack_level310 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 3
  %151 = ptrtoint ptr %attack_level310 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %attack_level310, align 2
  %153 = lshr i16 %152, 7
  %conv313 = trunc i16 %153 to i8
  %154 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %conv313, ptr %13, align 1
  %155 = ptrtoint ptr %envelope309 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %envelope309, align 4
  %157 = lshr i16 %156, 8
  %conv320 = trunc i16 %157 to i8
  %158 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %conv320, ptr %14, align 1
  %conv327 = trunc i16 %156 to i8
  %159 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %conv327, ptr %15, align 1
  %fade_level331 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5
  %160 = ptrtoint ptr %fade_level331 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %fade_level331, align 2
  %162 = lshr i16 %161, 7
  %conv334 = trunc i16 %162 to i8
  %163 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %conv334, ptr %16, align 1
  %fade_length338 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 4
  %164 = ptrtoint ptr %fade_length338 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %fade_length338, align 4
  %166 = lshr i16 %165, 8
  %conv341 = trunc i16 %166 to i8
  %167 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %conv341, ptr %17, align 1
  %conv348 = trunc i16 %165 to i8
  %168 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %conv348, ptr %18, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %169 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool351.not = icmp eq i32 %169, 0
  br i1 %tobool351.not, label %sw.bb274.sw.epilog541_crit_edge, label %do.body369

sw.bb274.sw.epilog541_crit_edge:                  ; preds = %sw.bb274
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog541

do.body369:                                       ; preds = %sw.bb274
  %call365 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.4, i32 noundef %conv277, i32 noundef %conv293, i32 noundef %conv279, i32 noundef %shr301) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %.pr687 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr687)
  %tobool370.not = icmp eq i32 %.pr687, 0
  br i1 %tobool370.not, label %do.body369.sw.epilog541_crit_edge, label %do.end374

do.body369.sw.epilog541_crit_edge:                ; preds = %do.body369
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog541

do.end374:                                        ; preds = %do.body369
  call void @__sanitizer_cov_trace_pc() #14
  %170 = ptrtoint ptr %attack_level310 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %attack_level310, align 2
  %conv379 = zext i16 %171 to i32
  %172 = ptrtoint ptr %envelope309 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %envelope309, align 4
  %conv383 = zext i16 %173 to i32
  %174 = ptrtoint ptr %fade_level331 to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %fade_level331, align 2
  %conv387 = zext i16 %175 to i32
  %176 = ptrtoint ptr %fade_length338 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %fade_length338, align 4
  %conv391 = zext i16 %177 to i32
  %call392 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.4, i32 noundef %conv379, i32 noundef %conv383, i32 noundef %conv387, i32 noundef %conv391) #15
  br label %sw.epilog541

sw.bb396:                                         ; preds = %entry.sw.bb396_crit_edge, %entry.sw.bb396_crit_edge697, %entry.sw.bb396_crit_edge698, %entry.sw.bb396_crit_edge699
  %conv398 = zext i16 %35 to i32
  %sub = add nsw i32 %conv398, -83
  %arrayidx399 = getelementptr [4 x i8], ptr @HIDPP_FF_CONDITION_CMDS, i32 0, i32 %sub
  %178 = ptrtoint ptr %arrayidx399 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx399, align 1
  %180 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %4, align 1
  %u401 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %left_saturation = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %181 = ptrtoint ptr %left_saturation to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %left_saturation, align 2
  %183 = lshr i16 %182, 9
  %conv405 = trunc i16 %183 to i8
  %184 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %conv405, ptr %9, align 1
  %185 = lshr i16 %182, 1
  %conv413 = trunc i16 %185 to i8
  %186 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %conv413, ptr %10, align 1
  %left_coeff = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 3
  %187 = ptrtoint ptr %left_coeff to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %left_coeff, align 2
  %189 = lshr i16 %188, 8
  %conv419 = trunc i16 %189 to i8
  %190 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %conv419, ptr %11, align 1
  %conv426 = trunc i16 %188 to i8
  %191 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %conv426, ptr %12, align 1
  %deadband = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 4
  %192 = ptrtoint ptr %deadband to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %deadband, align 4
  %194 = lshr i16 %193, 9
  %conv432 = trunc i16 %194 to i8
  %195 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %conv432, ptr %13, align 1
  %196 = lshr i16 %193, 1
  %conv440 = trunc i16 %196 to i8
  %197 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %conv440, ptr %14, align 1
  %center = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 5
  %198 = ptrtoint ptr %center to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %center, align 2
  %200 = lshr i16 %199, 8
  %conv446 = trunc i16 %200 to i8
  %201 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %conv446, ptr %15, align 1
  %conv453 = trunc i16 %199 to i8
  %202 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %conv453, ptr %16, align 1
  %right_coeff = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 2
  %203 = ptrtoint ptr %right_coeff to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %right_coeff, align 4
  %205 = lshr i16 %204, 8
  %conv459 = trunc i16 %205 to i8
  %206 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %conv459, ptr %17, align 1
  %conv466 = trunc i16 %204 to i8
  %207 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %conv466, ptr %18, align 1
  %208 = ptrtoint ptr %u401 to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %u401, align 4
  %210 = lshr i16 %209, 9
  %conv472 = trunc i16 %210 to i8
  %211 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %conv472, ptr %19, align 1
  %212 = lshr i16 %209, 1
  %conv480 = trunc i16 %212 to i8
  %213 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %conv480, ptr %20, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %214 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool483.not = icmp eq i32 %214, 0
  br i1 %tobool483.not, label %sw.bb396.sw.epilog541_crit_edge, label %do.body513

sw.bb396.sw.epilog541_crit_edge:                  ; preds = %sw.bb396
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog541

do.body513:                                       ; preds = %sw.bb396
  %arrayidx492 = getelementptr [4 x ptr], ptr @HIDPP_FF_CONDITION_NAMES, i32 0, i32 %sub
  %215 = ptrtoint ptr %arrayidx492 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %arrayidx492, align 4
  %conv496 = sext i16 %188 to i32
  %conv500 = zext i16 %182 to i32
  %conv504 = sext i16 %204 to i32
  %conv508 = zext i16 %209 to i32
  %call509 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.4, ptr noundef %216, i32 noundef %conv496, i32 noundef %conv500, i32 noundef %conv504, i32 noundef %conv508) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %.pr689 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr689)
  %tobool514.not = icmp eq i32 %.pr689, 0
  br i1 %tobool514.not, label %do.body513.sw.epilog541_crit_edge, label %do.end518

do.body513.sw.epilog541_crit_edge:                ; preds = %do.body513
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog541

do.end518:                                        ; preds = %do.body513
  call void @__sanitizer_cov_trace_pc() #14
  %217 = ptrtoint ptr %deadband to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %deadband, align 4
  %conv523 = zext i16 %218 to i32
  %219 = ptrtoint ptr %center to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %center, align 2
  %conv527 = sext i16 %220 to i32
  %call528 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.4, i32 noundef %conv523, i32 noundef %conv527) #15
  br label %sw.epilog541

do.end535:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv18 = zext i16 %35 to i32
  %221 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %3, align 4
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %222, align 8
  %dev538 = getelementptr inbounds %struct.hid_device, ptr %224, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev538, ptr noundef nonnull @.str.155, i32 noundef %conv18) #15
  br label %cleanup

sw.epilog541:                                     ; preds = %do.end518, %do.body513.sw.epilog541_crit_edge, %sw.bb396.sw.epilog541_crit_edge, %do.end374, %do.body369.sw.epilog541_crit_edge, %sw.bb274.sw.epilog541_crit_edge, %do.end252, %do.body247.sw.epilog541_crit_edge, %switch.lookup.sw.epilog541_crit_edge, %do.end83, %do.body78.sw.epilog541_crit_edge, %sw.bb.sw.epilog541_crit_edge
  %size.0 = phi i8 [ 18, %do.end518 ], [ 18, %do.body513.sw.epilog541_crit_edge ], [ 16, %do.end374 ], [ 16, %do.body369.sw.epilog541_crit_edge ], [ 20, %do.end252 ], [ 20, %do.body247.sw.epilog541_crit_edge ], [ 14, %do.end83 ], [ 14, %do.body78.sw.epilog541_crit_edge ], [ 14, %sw.bb.sw.epilog541_crit_edge ], [ 20, %switch.lookup.sw.epilog541_crit_edge ], [ 16, %sw.bb274.sw.epilog541_crit_edge ], [ 18, %sw.bb396.sw.epilog541_crit_edge ]
  %id = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 1
  %225 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %id, align 2
  %conv542 = sext i16 %226 to i32
  %call543 = call fastcc i32 @hidpp_ff_queue_work(ptr noundef %3, i32 noundef %conv542, i8 noundef zeroext 33, ptr noundef nonnull %params, i8 noundef zeroext %size.0)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog541, %do.end535, %do.end120
  %retval.0 = phi i32 [ -22, %do.end535 ], [ %call543, %sw.epilog541 ], [ -22, %do.end120 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %params) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidpp_ff_erase_effect(ptr nocapture noundef readonly %dev, i32 noundef %effect_id) #2 align 64 {
entry:
  %slot = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ff = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ff, align 8
  %private = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %slot) #12
  %4 = ptrtoint ptr %slot to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %slot, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %5 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.4, i32 noundef %effect_id) #15
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = call fastcc i32 @hidpp_ff_queue_work(ptr noundef %3, i32 noundef %effect_id, i8 noundef zeroext 65, ptr noundef nonnull %slot, i8 noundef zeroext 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %slot) #12
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidpp_ff_playback(ptr nocapture noundef readonly %dev, i32 noundef %effect_id, i32 noundef %value) #2 align 64 {
entry:
  %params = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ff = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ff, align 8
  %private = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %params) #12
  %4 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %params, align 1, !annotation !460
  %5 = getelementptr inbounds [2 x i8], ptr %params, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %conv = select i1 %tobool.not, i8 1, i8 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %5, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %7 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cond4 = select i1 %tobool.not, ptr @.str.171, ptr @.str.170
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.4, ptr noundef nonnull %cond4, i32 noundef %effect_id) #15
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %call7 = call fastcc i32 @hidpp_ff_queue_work(ptr noundef %3, i32 noundef %effect_id, i8 noundef zeroext 49, ptr noundef nonnull %params, i8 noundef zeroext 2)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %params) #12
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hidpp_ff_set_gain(ptr nocapture noundef readonly %dev, i16 noundef zeroext %gain) #2 align 64 {
entry:
  %params = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ff = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ff, align 8
  %private = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %params) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %4 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i16 %gain to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.4, i32 noundef %conv) #15
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %5 = getelementptr inbounds [4 x i8], ptr %params, i32 0, i32 3
  %6 = getelementptr inbounds [4 x i8], ptr %params, i32 0, i32 2
  %7 = getelementptr inbounds [4 x i8], ptr %params, i32 0, i32 1
  %8 = lshr i16 %gain, 8
  %conv5 = trunc i16 %8 to i8
  %9 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv5, ptr %params, align 1
  %conv7 = trunc i16 %gain to i8
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv7, ptr %7, align 1
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %6, align 1
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %5, align 1
  %call11 = call fastcc i32 @hidpp_ff_queue_work(ptr noundef %3, i32 noundef -1, i8 noundef zeroext -127, ptr noundef nonnull %params, i8 noundef zeroext 4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %params) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hidpp_ff_set_autocenter(ptr nocapture noundef readonly %dev, i16 noundef zeroext %magnitude) #2 align 64 {
entry:
  %params = alloca [18 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ff = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ff, align 8
  %private = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %params) #12
  %4 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %params, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %5 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i16 %magnitude to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.4, i32 noundef %conv) #15
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %6 = getelementptr inbounds [18 x i8], ptr %params, i32 0, i32 17
  %7 = getelementptr inbounds [18 x i8], ptr %params, i32 0, i32 16
  %8 = getelementptr inbounds [18 x i8], ptr %params, i32 0, i32 15
  %9 = getelementptr inbounds [18 x i8], ptr %params, i32 0, i32 14
  %10 = getelementptr inbounds [18 x i8], ptr %params, i32 0, i32 10
  %11 = getelementptr inbounds [18 x i8], ptr %params, i32 0, i32 9
  %12 = getelementptr inbounds [18 x i8], ptr %params, i32 0, i32 8
  %13 = getelementptr inbounds [18 x i8], ptr %params, i32 0, i32 7
  %14 = getelementptr inbounds [18 x i8], ptr %params, i32 0, i32 6
  %15 = getelementptr inbounds [18 x i8], ptr %params, i32 0, i32 2
  %16 = getelementptr inbounds [18 x i8], ptr %params, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -122, ptr %16, align 1
  %18 = lshr i16 %magnitude, 11
  %conv9 = trunc i16 %18 to i8
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 0, ptr %15, align 1
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv9, ptr %9, align 1
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv9, ptr %12, align 1
  %22 = lshr i16 %magnitude, 3
  %conv14 = trunc i16 %22 to i8
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv14, ptr %8, align 1
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv14, ptr %11, align 1
  %25 = lshr i16 %magnitude, 9
  %conv19 = trunc i16 %25 to i8
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv19, ptr %7, align 1
  %27 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv19, ptr %14, align 1
  %28 = lshr i16 %magnitude, 1
  %conv25 = trunc i16 %28 to i8
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv25, ptr %6, align 1
  %30 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv25, ptr %13, align 1
  %31 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 0, ptr %10, align 1
  %call32 = call fastcc i32 @hidpp_ff_queue_work(ptr noundef %3, i32 noundef -2, i8 noundef zeroext 33, ptr noundef nonnull %params, i8 noundef zeroext 18)
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %params) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hidpp_ff_destroy(ptr nocapture noundef readonly %ff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.ff_device, ptr %ff, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.hid_device, ptr %5, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.176) #15
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_range) #12
  %wq = getelementptr inbounds %struct.hidpp_ff_private_data, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %7) #12
  %effect_ids = getelementptr inbounds %struct.hidpp_ff_private_data, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %effect_ids to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %effect_ids, align 4
  tail call void @kfree(ptr noundef %9) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hidpp_ff_queue_work(ptr noundef %data, i32 noundef %effect_id, i8 noundef zeroext %command, ptr nocapture noundef readonly %params, i8 noundef zeroext %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 76) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #12
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.161, ptr noundef nonnull @hidpp_ff_queue_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry5 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry5, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @hidpp_ff_work_handler, ptr %func, align 4
  %data7 = getelementptr inbounds %struct.hidpp_ff_work_data, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %data7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data, ptr %data7, align 4
  %effect_id8 = getelementptr inbounds %struct.hidpp_ff_work_data, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %effect_id8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %effect_id, ptr %effect_id8, align 8
  %command9 = getelementptr inbounds %struct.hidpp_ff_work_data, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %command9 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %command, ptr %command9, align 4
  %size10 = getelementptr inbounds %struct.hidpp_ff_work_data, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %size10 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %size, ptr %size10, align 1
  %params11 = getelementptr inbounds %struct.hidpp_ff_work_data, ptr %call7.i.i, i32 0, i32 4
  %conv = zext i8 %size to i32
  %9 = call ptr @memcpy(ptr %params11, ptr %params, i32 %conv)
  %workqueue_size = getelementptr inbounds %struct.hidpp_ff_private_data, ptr %data, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %workqueue_size, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !455
  tail call void @llvm.prefetch.p0(ptr %workqueue_size, i32 1, i32 3, i32 1) #12
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %workqueue_size, ptr %workqueue_size, i32 1, ptr elementtype(i32) %workqueue_size) #12, !srcloc !456
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !457
  %wq = getelementptr inbounds %struct.hidpp_ff_private_data, ptr %data, i32 0, i32 8
  %11 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %asmresult.i.i.i.i)
  %cmp = icmp sgt i32 %asmresult.i.i.i.i, 19
  %rem = srem i32 %asmresult.i.i.i.i, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp16 = icmp eq i32 %rem, 0
  %or.cond = and i1 %cmp, %cmp16
  br i1 %or.cond, label %do.end21, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end21:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %dev = getelementptr inbounds %struct.hid_device, ptr %16, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.162, i32 noundef %asmresult.i.i.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end21 ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hidpp_ff_work_handler(ptr noundef %w) #2 align 64 {
entry:
  %response = alloca %struct.hidpp_report, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.hidpp_ff_work_data, ptr %w, i32 0, i32 1
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %response) #12
  %2 = call ptr @memset(ptr %response, i32 255, i32 64)
  %effect_id = getelementptr inbounds %struct.hidpp_ff_work_data, ptr %w, i32 0, i32 2
  %3 = ptrtoint ptr %effect_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %effect_id, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.221)
  switch i32 %4, label %sw.default [
    i32 -2, label %sw.bb
    i32 -1, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %slot_autocenter = getelementptr inbounds %struct.hidpp_ff_private_data, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %slot_autocenter to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %slot_autocenter, align 2
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %entry
  %num_effects.i = getelementptr inbounds %struct.hidpp_ff_private_data, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %num_effects.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_effects.i, align 1
  %conv.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp10.not.i = icmp eq i8 %9, 0
  br i1 %cmp10.not.i, label %sw.default.sw.epilog.sink.split_crit_edge, label %for.body.lr.ph.i

sw.default.sw.epilog.sink.split_crit_edge:        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

for.body.lr.ph.i:                                 ; preds = %sw.default
  %effect_ids.i = getelementptr inbounds %struct.hidpp_ff_private_data, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %effect_ids.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %effect_ids.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %11, i32 %i.011.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %4)
  %cmp2.i = icmp eq i32 %13, %4
  br i1 %cmp2.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = trunc i32 %i.011.i to i8
  %conv4.i = add i8 %14, 1
  br label %sw.epilog.sink.split

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.sw.epilog.sink.split_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.sw.epilog.sink.split_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %for.inc.i.sw.epilog.sink.split_crit_edge, %if.then.i, %sw.default.sw.epilog.sink.split_crit_edge, %sw.bb
  %retval.0.i.sink = phi i8 [ %7, %sw.bb ], [ %conv4.i, %if.then.i ], [ 0, %sw.default.sw.epilog.sink.split_crit_edge ], [ 0, %for.inc.i.sw.epilog.sink.split_crit_edge ]
  %params3 = getelementptr inbounds %struct.hidpp_ff_work_data, ptr %w, i32 0, i32 4
  %15 = ptrtoint ptr %params3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %retval.0.i.sink, ptr %params3, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %feature_index = getelementptr inbounds %struct.hidpp_ff_private_data, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %feature_index to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %feature_index, align 4
  %command = getelementptr inbounds %struct.hidpp_ff_work_data, ptr %w, i32 0, i32 3
  %20 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %command, align 4
  %params5 = getelementptr inbounds %struct.hidpp_ff_work_data, ptr %w, i32 0, i32 4
  %size = getelementptr inbounds %struct.hidpp_ff_work_data, ptr %w, i32 0, i32 5
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %size, align 1
  %conv = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %23)
  %cmp.i = icmp ugt i8 %23, 60
  br i1 %cmp.i, label %sw.epilog.do.end_crit_edge, label %if.end.i

sw.epilog.do.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end.i:                                         ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 64) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.do.end_crit_edge, label %hidpp_send_fap_command_sync.exit

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

hidpp_send_fap_command_sync.exit:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %23)
  %cmp3.i.inv = icmp ult i8 %23, 17
  %..i = select i1 %cmp3.i.inv, i8 17, i8 18
  %25 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %..i, ptr %call7.i.i.i, align 8
  %26 = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %19, ptr %26, align 2
  %funcindex_clientid7.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 1
  %28 = ptrtoint ptr %funcindex_clientid7.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %21, ptr %funcindex_clientid7.i, align 1
  %params8.i = getelementptr inbounds %struct.hidpp_report, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 2
  %29 = call ptr @memcpy(ptr %params8.i, ptr %params5, i32 %conv)
  %call9.i = call fastcc i32 @hidpp_send_message_sync(ptr noundef %17, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %response) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not = icmp eq i32 %call9.i, 0
  br i1 %tobool.not, label %if.end, label %hidpp_send_fap_command_sync.exit.do.end_crit_edge

hidpp_send_fap_command_sync.exit.do.end_crit_edge: ; preds = %hidpp_send_fap_command_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %hidpp_send_fap_command_sync.exit.do.end_crit_edge, %if.end.i.do.end_crit_edge, %sw.epilog.do.end_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %dev = getelementptr inbounds %struct.hid_device, ptr %33, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.164) #15
  br label %out

if.end:                                           ; preds = %hidpp_send_fap_command_sync.exit
  %34 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %command, align 4
  %conv9 = zext i8 %35 to i32
  %36 = add nsw i32 %conv9, -33
  %37 = call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 27)
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.222)
  switch i32 %37, label %if.end.out_crit_edge [
    i32 0, label %sw.bb10
    i32 1, label %sw.bb35
    i32 3, label %sw.bb54
    i32 2, label %sw.bb62
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.bb10:                                          ; preds = %if.end
  %params11 = getelementptr inbounds %struct.hidpp_report, ptr %response, i32 0, i32 2, i32 0, i32 2
  %39 = ptrtoint ptr %params11 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %params11, align 1
  %conv13 = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp.not = icmp eq i8 %40, 0
  br i1 %cmp.not, label %sw.bb10.out_crit_edge, label %land.lhs.true

sw.bb10.out_crit_edge:                            ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true:                                    ; preds = %sw.bb10
  %num_effects = getelementptr inbounds %struct.hidpp_ff_private_data, ptr %1, i32 0, i32 6
  %41 = ptrtoint ptr %num_effects to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num_effects, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %42)
  %cmp17.not = icmp ugt i8 %40, %42
  br i1 %cmp17.not, label %land.lhs.true.out_crit_edge, label %if.then19

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then19:                                        ; preds = %land.lhs.true
  %43 = ptrtoint ptr %effect_id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %effect_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp21 = icmp sgt i32 %44, -1
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %effect_ids = getelementptr inbounds %struct.hidpp_ff_private_data, ptr %1, i32 0, i32 7
  %45 = ptrtoint ptr %effect_ids to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %effect_ids, align 4
  %sub = add nsw i32 %conv13, -1
  %arrayidx26 = getelementptr i32, ptr %46, i32 %sub
  %47 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %44, ptr %arrayidx26, align 4
  br label %out

if.else:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %44)
  %cmp28 = icmp ugt i32 %44, -3
  br i1 %cmp28, label %if.then30, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %slot_autocenter31 = getelementptr inbounds %struct.hidpp_ff_private_data, ptr %1, i32 0, i32 5
  %48 = ptrtoint ptr %slot_autocenter31 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %40, ptr %slot_autocenter31, align 2
  br label %out

sw.bb35:                                          ; preds = %if.end
  %49 = ptrtoint ptr %effect_id to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %effect_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %cmp37 = icmp sgt i32 %50, -1
  br i1 %cmp37, label %if.then39, label %if.else46

if.then39:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #14
  %effect_ids40 = getelementptr inbounds %struct.hidpp_ff_private_data, ptr %1, i32 0, i32 7
  %51 = ptrtoint ptr %effect_ids40 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %effect_ids40, align 4
  %53 = ptrtoint ptr %params5 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %params5, align 1
  %conv43 = zext i8 %54 to i32
  %sub44 = add nsw i32 %conv43, -1
  %arrayidx45 = getelementptr i32, ptr %52, i32 %sub44
  %55 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %arrayidx45, align 4
  br label %out

if.else46:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %50)
  %cmp48 = icmp ugt i32 %50, -3
  br i1 %cmp48, label %if.then50, label %if.else46.out_crit_edge

if.else46.out_crit_edge:                          ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then50:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #14
  %slot_autocenter51 = getelementptr inbounds %struct.hidpp_ff_private_data, ptr %1, i32 0, i32 5
  %56 = ptrtoint ptr %slot_autocenter51 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %slot_autocenter51, align 2
  br label %out

sw.bb54:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %params5 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %params5, align 1
  %conv57 = zext i8 %58 to i16
  %shl = shl nuw i16 %conv57, 8
  %arrayidx59 = getelementptr %struct.hidpp_ff_work_data, ptr %w, i32 0, i32 4, i32 1
  %59 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %60 to i16
  %add = or i16 %shl, %conv60
  %gain = getelementptr inbounds %struct.hidpp_ff_private_data, ptr %1, i32 0, i32 3
  %61 = ptrtoint ptr %gain to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %add, ptr %gain, align 2
  br label %out

sw.bb62:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %params5 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %params5, align 1
  %conv65 = zext i8 %63 to i16
  %shl66 = shl nuw i16 %conv65, 8
  %arrayidx68 = getelementptr %struct.hidpp_ff_work_data, ptr %w, i32 0, i32 4, i32 1
  %64 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %65 to i16
  %add70 = or i16 %shl66, %conv69
  %range = getelementptr inbounds %struct.hidpp_ff_private_data, ptr %1, i32 0, i32 4
  %66 = ptrtoint ptr %range to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %add70, ptr %range, align 4
  br label %out

out:                                              ; preds = %sw.bb62, %sw.bb54, %if.then50, %if.else46.out_crit_edge, %if.then39, %if.then30, %if.else.out_crit_edge, %if.then23, %land.lhs.true.out_crit_edge, %sw.bb10.out_crit_edge, %if.end.out_crit_edge, %do.end
  %workqueue_size = getelementptr inbounds %struct.hidpp_ff_private_data, ptr %1, i32 0, i32 9
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %workqueue_size, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %workqueue_size, i32 1, i32 3, i32 1) #12
  %67 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %workqueue_size, ptr %workqueue_size, i32 1, ptr elementtype(i32) %workqueue_size) #12, !srcloc !461
  call void @kfree(ptr noundef %w) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %response) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidpp_ff_range_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %inputs = getelementptr i8, ptr %dev, i32 1088
  %0 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inputs, align 8
  %input = getelementptr inbounds %struct.hid_input, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %ff = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ff, align 8
  %private = getelementptr inbounds %struct.ff_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 4
  %range = getelementptr inbounds %struct.hidpp_ff_private_data, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %range to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %range, align 4
  %conv = sext i16 %9 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.179, i32 noundef %conv) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidpp_ff_range_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %count) #2 align 64 {
entry:
  %params = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %inputs = getelementptr i8, ptr %dev, i32 1088
  %0 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inputs, align 8
  %input = getelementptr inbounds %struct.hid_input, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %ff = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ff, align 8
  %private = getelementptr inbounds %struct.ff_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %params) #12
  %8 = getelementptr inbounds [2 x i8], ptr %params, i32 0, i32 1
  %call = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 10) #12
  %9 = tail call i32 @llvm.smax.i32(i32 %call, i32 180)
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 900)
  %11 = lshr i32 %10, 8
  %conv = trunc i32 %11 to i8
  %12 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %params, align 1
  %conv11 = trunc i32 %10 to i8
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv11, ptr %8, align 1
  %call13 = call fastcc i32 @hidpp_ff_queue_work(ptr noundef %7, i32 noundef -1, i8 noundef zeroext 97, ptr noundef nonnull %params, i8 noundef zeroext 2)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %params) #12
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hidpp_raw_hidpp_event(ptr noundef %hidpp, ptr noundef readonly %data, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  %consumer_report.i = alloca [5 x i8], align 1
  %flags.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %send_receive_buf = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 3
  %0 = ptrtoint ptr %send_receive_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %send_receive_buf, align 4
  %send_mutex = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %send_mutex) #12
  br i1 %call, label %if.then, label %entry.if.end6_crit_edge, !prof !458

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.hidpp_report, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %5 = getelementptr inbounds %struct.hidpp_report, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %7)
  %cmp.i = icmp eq i8 %4, %7
  br i1 %cmp.i, label %hidpp_match_answer.exit, label %if.then.lor.lhs.false_crit_edge

if.then.lor.lhs.false_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

hidpp_match_answer.exit:                          ; preds = %if.then
  %funcindex_clientid.i = getelementptr inbounds %struct.hidpp_report, ptr %data, i32 0, i32 2, i32 0, i32 1
  %8 = ptrtoint ptr %funcindex_clientid.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %funcindex_clientid.i, align 1
  %funcindex_clientid5.i = getelementptr inbounds %struct.hidpp_report, ptr %1, i32 0, i32 2, i32 0, i32 1
  %10 = ptrtoint ptr %funcindex_clientid5.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %funcindex_clientid5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp7.i = icmp eq i8 %9, %11
  br i1 %cmp7.i, label %hidpp_match_answer.exit.if.then5_crit_edge, label %hidpp_match_answer.exit.lor.lhs.false_crit_edge

hidpp_match_answer.exit.lor.lhs.false_crit_edge:  ; preds = %hidpp_match_answer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

hidpp_match_answer.exit.if.then5_crit_edge:       ; preds = %hidpp_match_answer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

lor.lhs.false:                                    ; preds = %hidpp_match_answer.exit.lor.lhs.false_crit_edge, %if.then.lor.lhs.false_crit_edge
  %12 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.223)
  switch i8 %4, label %lor.lhs.false.if.end6_crit_edge [
    i8 -113, label %lor.lhs.false.land.lhs.true.i_crit_edge
    i8 -1, label %lor.lhs.false.land.lhs.true.i_crit_edge313
  ]

lor.lhs.false.land.lhs.true.i_crit_edge313:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

lor.lhs.false.land.lhs.true.i_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

lor.lhs.false.if.end6_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true.i:                                  ; preds = %lor.lhs.false.land.lhs.true.i_crit_edge, %lor.lhs.false.land.lhs.true.i_crit_edge313
  %funcindex_clientid.i200 = getelementptr inbounds %struct.hidpp_report, ptr %data, i32 0, i32 2, i32 0, i32 1
  %13 = ptrtoint ptr %funcindex_clientid.i200 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %funcindex_clientid.i200, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %7)
  %cmp8.i = icmp eq i8 %14, %7
  br i1 %cmp8.i, label %hidpp_match_error.exit, label %land.lhs.true.i.if.end6_crit_edge

land.lhs.true.i.if.end6_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

hidpp_match_error.exit:                           ; preds = %land.lhs.true.i
  %params.i = getelementptr inbounds %struct.hidpp_report, ptr %data, i32 0, i32 2, i32 0, i32 2
  %15 = ptrtoint ptr %params.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %params.i, align 1
  %funcindex_clientid11.i = getelementptr inbounds %struct.hidpp_report, ptr %1, i32 0, i32 2, i32 0, i32 1
  %17 = ptrtoint ptr %funcindex_clientid11.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %funcindex_clientid11.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %18)
  %cmp13.i = icmp eq i8 %16, %18
  br i1 %cmp13.i, label %hidpp_match_error.exit.if.then5_crit_edge, label %hidpp_match_error.exit.if.end6_crit_edge

hidpp_match_error.exit.if.end6_crit_edge:         ; preds = %hidpp_match_error.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

hidpp_match_error.exit.if.then5_crit_edge:        ; preds = %hidpp_match_error.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then5:                                         ; preds = %hidpp_match_error.exit.if.then5_crit_edge, %hidpp_match_answer.exit.if.then5_crit_edge
  %19 = call ptr @memcpy(ptr %1, ptr %data, i32 64)
  %answer_available = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 7
  %20 = ptrtoint ptr %answer_available to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %answer_available, align 4
  %wait = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %cleanup

if.end6:                                          ; preds = %hidpp_match_error.exit.if.end6_crit_edge, %land.lhs.true.i.if.end6_crit_edge, %lor.lhs.false.if.end6_crit_edge, %entry.if.end6_crit_edge
  %wireless_feature_index.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 20
  %21 = ptrtoint ptr %wireless_feature_index.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %wireless_feature_index.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.end6.lor.rhs.i_crit_edge, label %land.lhs.true.i203

if.end6.lor.rhs.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i

land.lhs.true.i203:                               ; preds = %if.end6
  %23 = getelementptr inbounds %struct.hidpp_report, ptr %data, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %22)
  %cmp.i202 = icmp eq i8 %25, %22
  br i1 %cmp.i202, label %land.lhs.true.i203.if.then14_crit_edge, label %land.lhs.true.i203.lor.rhs.i_crit_edge, !prof !462

land.lhs.true.i203.lor.rhs.i_crit_edge:           ; preds = %land.lhs.true.i203
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i

land.lhs.true.i203.if.then14_crit_edge:           ; preds = %land.lhs.true.i203
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

lor.rhs.i:                                        ; preds = %land.lhs.true.i203.lor.rhs.i_crit_edge, %if.end6.lor.rhs.i_crit_edge
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %27)
  %cmp6.i = icmp eq i8 %27, 16
  br i1 %cmp6.i, label %hidpp_report_is_connect_event.exit, label %lor.rhs.i.if.end30_crit_edge

lor.rhs.i.if.end30_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

hidpp_report_is_connect_event.exit:               ; preds = %lor.rhs.i
  %28 = getelementptr inbounds %struct.hidpp_report, ptr %data, i32 0, i32 2
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %30)
  %cmp9.i = icmp eq i8 %30, 65
  br i1 %cmp9.i, label %hidpp_report_is_connect_event.exit.if.then14_crit_edge, label %hidpp_report_is_connect_event.exit.if.end30_crit_edge, !prof !458

hidpp_report_is_connect_event.exit.if.end30_crit_edge: ; preds = %hidpp_report_is_connect_event.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

hidpp_report_is_connect_event.exit.if.then14_crit_edge: ; preds = %hidpp_report_is_connect_event.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

if.then14:                                        ; preds = %hidpp_report_is_connect_event.exit.if.then14_crit_edge, %land.lhs.true.i203.if.then14_crit_edge
  %connected = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 13
  %params = getelementptr inbounds %struct.hidpp_report, ptr %data, i32 0, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %params, align 1
  %33 = lshr i8 %32, 6
  %.lobit = and i8 %33, 1
  %34 = xor i8 %.lobit, 1
  %35 = zext i8 %34 to i32
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %connected, i32 noundef 4) #12
  %36 = ptrtoint ptr %connected to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 %35, ptr %connected, align 4
  %work = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %37 = load ptr, ptr @system_wq, align 4
  %call.i.i205 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %37, ptr noundef %work) #12
  br i1 %call.i.i205, label %if.then14.cleanup_crit_edge, label %do.body

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %if.then14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %38 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool22.not = icmp eq i32 %38, 0
  br i1 %tobool22.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.187) #15
  br label %cleanup

if.end30:                                         ; preds = %hidpp_report_is_connect_event.exit.if.end30_crit_edge, %lor.rhs.i.if.end30_crit_edge
  %39 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hidpp, align 8
  %group = getelementptr inbounds %struct.hid_device, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %group to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %group, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 260, i16 %42)
  %cmp32 = icmp eq i16 %42, 260
  br i1 %cmp32, label %land.lhs.true, label %if.end30.if.end72_crit_edge

if.end30.if.end72_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

land.lhs.true:                                    ; preds = %if.end30
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %44)
  %cmp36 = icmp eq i8 %44, 16
  br i1 %cmp36, label %land.lhs.true38, label %land.lhs.true.if.end72_crit_edge

land.lhs.true.if.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

land.lhs.true38:                                  ; preds = %land.lhs.true
  %arrayidx39 = getelementptr i8, ptr %data, i32 2
  %45 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %46)
  %cmp41 = icmp eq i8 %46, 8
  br i1 %cmp41, label %land.lhs.true43, label %land.lhs.true38.if.end72_crit_edge

land.lhs.true38.if.end72_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

land.lhs.true43:                                  ; preds = %land.lhs.true38
  %arrayidx44 = getelementptr i8, ptr %data, i32 3
  %47 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx44, align 1
  %49 = and i8 %48, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool47.not = icmp eq i8 %49, 0
  br i1 %tobool47.not, label %land.lhs.true43.if.end72_crit_edge, label %do.body49

land.lhs.true43.if.end72_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

do.body49:                                        ; preds = %land.lhs.true43
  %call50 = tail call i32 @___ratelimit(ptr noundef nonnull @hidpp_raw_hidpp_event._rs, ptr noundef nonnull @.str.187) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %do.body49.do.body60_crit_edge, label %do.end55

do.body49.do.body60_crit_edge:                    ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body60

do.end55:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hidpp, align 8
  %dev = getelementptr inbounds %struct.hid_device, ptr %51, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.190) #15
  br label %do.body60

do.body60:                                        ; preds = %do.end55, %do.body49.do.body60_crit_edge
  %call61 = tail call i32 @___ratelimit(ptr noundef nonnull @hidpp_raw_hidpp_event._rs.192, ptr noundef nonnull @.str.187) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %do.body60.if.end72_crit_edge, label %do.end66

do.body60.if.end72_crit_edge:                     ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

do.end66:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hidpp, align 8
  %dev68 = getelementptr inbounds %struct.hid_device, ptr %53, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev68, ptr noundef nonnull @.str.194) #15
  br label %if.end72

if.end72:                                         ; preds = %do.end66, %do.body60.if.end72_crit_edge, %land.lhs.true43.if.end72_crit_edge, %land.lhs.true38.if.end72_crit_edge, %land.lhs.true.if.end72_crit_edge, %if.end30.if.end72_crit_edge
  %capabilities = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 16
  %54 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %capabilities, align 8
  %and73 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end72.if.end96_crit_edge, label %if.then75

if.end72.if.end96_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

if.then75:                                        ; preds = %if.end72
  %56 = getelementptr inbounds %struct.hidpp_report, ptr %data, i32 0, i32 2
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 1
  %battery.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18
  %59 = ptrtoint ptr %battery.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %battery.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %58, i8 %60)
  %cmp.not.i = icmp eq i8 %58, %60
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then75.hidpp20_battery_event_1000.exit_crit_edge

if.then75.hidpp20_battery_event_1000.exit_crit_edge: ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_battery_event_1000.exit

lor.lhs.false.i:                                  ; preds = %if.then75
  %funcindex_clientid.i206 = getelementptr inbounds %struct.hidpp_report, ptr %data, i32 0, i32 2, i32 0, i32 1
  %61 = ptrtoint ptr %funcindex_clientid.i206 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %funcindex_clientid.i206, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp5.not.i = icmp eq i8 %62, 0
  br i1 %cmp5.not.i, label %if.end.i, label %lor.lhs.false.i.hidpp20_battery_event_1000.exit_crit_edge

lor.lhs.false.i.hidpp20_battery_event_1000.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_battery_event_1000.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %params.i207 = getelementptr inbounds %struct.hidpp_report, ptr %data, i32 0, i32 2, i32 0, i32 2
  %63 = ptrtoint ptr %params.i207 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %params.i207, align 1
  %arrayidx3.i.i = getelementptr %struct.hidpp_report, ptr %data, i32 0, i32 2, i32 0, i32 2, i32 2
  %65 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx3.i.i, align 1
  %67 = zext i8 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.224)
  switch i8 %66, label %sw.default.i.i [
    i8 0, label %sw.bb.i.i
    i8 1, label %if.end.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge
    i8 2, label %if.end.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge314
    i8 3, label %sw.bb7.i.i
    i8 4, label %if.end.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge315
  ]

if.end.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge315: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_batterylevel_map_status_capacity.exit.i

if.end.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge314: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_batterylevel_map_status_capacity.exit.i

if.end.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_batterylevel_map_status_capacity.exit.i

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %64)
  %cmp.i.i.i = icmp ult i8 %64, 11
  br i1 %cmp.i.i.i, label %sw.bb.i.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge, label %if.else.i.i.i

sw.bb.i.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_batterylevel_map_status_capacity.exit.i

if.else.i.i.i:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %64)
  %cmp1.i.i.i = icmp ult i8 %64, 30
  br i1 %cmp1.i.i.i, label %if.else.i.i.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge, label %if.else3.i.i.i

if.else.i.i.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_batterylevel_map_status_capacity.exit.i

if.else3.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 81, i8 %64)
  %cmp4.i.i.i = icmp ult i8 %64, 81
  %..i.i.i = select i1 %cmp4.i.i.i, i32 3, i32 5
  br label %hidpp20_batterylevel_map_status_capacity.exit.i

sw.bb7.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_batterylevel_map_status_capacity.exit.i

sw.default.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_batterylevel_map_status_capacity.exit.i

hidpp20_batterylevel_map_status_capacity.exit.i:  ; preds = %sw.default.i.i, %sw.bb7.i.i, %if.else3.i.i.i, %if.else.i.i.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge, %sw.bb.i.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge, %if.end.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge, %if.end.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge314, %if.end.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge315
  %capacity.0.shrunk.i = phi i8 [ %64, %sw.default.i.i ], [ 100, %sw.bb7.i.i ], [ %64, %if.end.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge ], [ %64, %if.end.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge314 ], [ %64, %if.end.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge315 ], [ %64, %if.else3.i.i.i ], [ %64, %if.else.i.i.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge ], [ %64, %sw.bb.i.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge ]
  %level.0.i = phi i32 [ 0, %sw.default.i.i ], [ 5, %sw.bb7.i.i ], [ 0, %if.end.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge ], [ 0, %if.end.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge314 ], [ 0, %if.end.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge315 ], [ %..i.i.i, %if.else3.i.i.i ], [ 2, %if.else.i.i.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge ], [ 1, %sw.bb.i.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge ]
  %cmp7.i208 = phi i1 [ false, %sw.default.i.i ], [ false, %sw.bb7.i.i ], [ false, %if.end.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge ], [ false, %if.end.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge314 ], [ false, %if.end.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge315 ], [ true, %if.else3.i.i.i ], [ true, %if.else.i.i.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge ], [ true, %sw.bb.i.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge ]
  %cmp9.i209 = phi i1 [ false, %sw.default.i.i ], [ true, %sw.bb7.i.i ], [ false, %if.end.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge ], [ false, %if.end.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge314 ], [ false, %if.end.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge315 ], [ false, %if.else3.i.i.i ], [ false, %if.else.i.i.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge ], [ false, %sw.bb.i.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge ]
  %status.0.i.i = phi i32 [ 3, %sw.default.i.i ], [ 4, %sw.bb7.i.i ], [ 1, %if.end.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge ], [ 1, %if.end.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge314 ], [ 1, %if.end.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge315 ], [ 2, %if.else3.i.i.i ], [ 2, %if.else.i.i.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge ], [ 2, %sw.bb.i.i.hidpp20_batterylevel_map_status_capacity.exit.i_crit_edge ]
  %capacity.0.i = zext i8 %capacity.0.shrunk.i to i32
  %spec.select.i = or i1 %cmp7.i208, %cmp9.i209
  %online.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 11
  %frombool.i = zext i1 %spec.select.i to i8
  %68 = ptrtoint ptr %online.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %frombool.i, ptr %online.i, align 8
  %capacity13.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 7
  %69 = ptrtoint ptr %capacity13.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %capacity13.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %capacity.0.i)
  %cmp14.not.i = icmp eq i32 %70, %capacity.0.i
  br i1 %cmp14.not.i, label %lor.lhs.false16.i, label %hidpp20_batterylevel_map_status_capacity.exit.i.if.then28.i_crit_edge

hidpp20_batterylevel_map_status_capacity.exit.i.if.then28.i_crit_edge: ; preds = %hidpp20_batterylevel_map_status_capacity.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28.i

lor.lhs.false16.i:                                ; preds = %hidpp20_batterylevel_map_status_capacity.exit.i
  %level18.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 8
  %71 = ptrtoint ptr %level18.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %level18.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %level.0.i, i32 %72)
  %cmp19.not.i = icmp eq i32 %level.0.i, %72
  br i1 %cmp19.not.i, label %lor.rhs21.i, label %lor.lhs.false16.i.if.then28.i_crit_edge

lor.lhs.false16.i.if.then28.i_crit_edge:          ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28.i

lor.rhs21.i:                                      ; preds = %lor.lhs.false16.i
  %status23.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 6
  %73 = ptrtoint ptr %status23.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %status23.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %status.0.i.i, i32 %74)
  %cmp24.not.i = icmp eq i32 %status.0.i.i, %74
  br i1 %cmp24.not.i, label %lor.rhs21.i.hidpp20_battery_event_1000.exit_crit_edge, label %lor.rhs21.i.if.then28.i_crit_edge

lor.rhs21.i.if.then28.i_crit_edge:                ; preds = %lor.rhs21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28.i

lor.rhs21.i.hidpp20_battery_event_1000.exit_crit_edge: ; preds = %lor.rhs21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_battery_event_1000.exit

if.then28.i:                                      ; preds = %lor.rhs21.i.if.then28.i_crit_edge, %lor.lhs.false16.i.if.then28.i_crit_edge, %hidpp20_batterylevel_map_status_capacity.exit.i.if.then28.i_crit_edge
  %level30.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 8
  %75 = ptrtoint ptr %level30.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %level.0.i, ptr %level30.i, align 4
  %76 = ptrtoint ptr %capacity13.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %capacity.0.i, ptr %capacity13.i, align 8
  %status34.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 6
  %77 = ptrtoint ptr %status34.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %status.0.i.i, ptr %status34.i, align 4
  %ps.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 4
  %78 = ptrtoint ptr %ps.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ps.i, align 8
  %tobool36.not.i = icmp eq ptr %79, null
  br i1 %tobool36.not.i, label %if.then28.i.hidpp20_battery_event_1000.exit_crit_edge, label %if.then37.i

if.then28.i.hidpp20_battery_event_1000.exit_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_battery_event_1000.exit

if.then37.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @power_supply_changed(ptr noundef nonnull %79) #12
  br label %hidpp20_battery_event_1000.exit

hidpp20_battery_event_1000.exit:                  ; preds = %if.then37.i, %if.then28.i.hidpp20_battery_event_1000.exit_crit_edge, %lor.rhs21.i.hidpp20_battery_event_1000.exit_crit_edge, %lor.lhs.false.i.hidpp20_battery_event_1000.exit_crit_edge, %if.then75.hidpp20_battery_event_1000.exit_crit_edge
  %params1.i = getelementptr inbounds %struct.hidpp_report, ptr %data, i32 0, i32 2, i32 0, i32 2
  %80 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %56, align 1
  %82 = ptrtoint ptr %battery.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %battery.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %81, i8 %83)
  %cmp.not.i211 = icmp eq i8 %81, %83
  br i1 %cmp.not.i211, label %lor.lhs.false.i213, label %hidpp20_battery_event_1000.exit.hidpp20_battery_event_1004.exit_crit_edge

hidpp20_battery_event_1000.exit.hidpp20_battery_event_1004.exit_crit_edge: ; preds = %hidpp20_battery_event_1000.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_battery_event_1004.exit

lor.lhs.false.i213:                               ; preds = %hidpp20_battery_event_1000.exit
  %funcindex_clientid.i212 = getelementptr inbounds %struct.hidpp_report, ptr %data, i32 0, i32 2, i32 0, i32 1
  %84 = ptrtoint ptr %funcindex_clientid.i212 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %funcindex_clientid.i212, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %cmp6.not.i = icmp eq i8 %85, 0
  br i1 %cmp6.not.i, label %if.end.i214, label %lor.lhs.false.i213.hidpp20_battery_event_1004.exit_crit_edge

lor.lhs.false.i213.hidpp20_battery_event_1004.exit_crit_edge: ; preds = %lor.lhs.false.i213
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_battery_event_1004.exit

if.end.i214:                                      ; preds = %lor.lhs.false.i213
  %86 = ptrtoint ptr %params1.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %params1.i, align 1
  %conv8.i = zext i8 %87 to i32
  %arrayidx9.i = getelementptr %struct.hidpp_report, ptr %data, i32 0, i32 2, i32 0, i32 2, i32 2
  %88 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx9.i, align 1
  %90 = zext i8 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.225)
  switch i8 %89, label %sw.default.i.i215 [
    i8 0, label %if.end.i214.hidpp20_unifiedbattery_map_status.exit.i_crit_edge
    i8 1, label %if.end.i214.sw.bb1.i.i_crit_edge
    i8 2, label %if.end.i214.sw.bb1.i.i_crit_edge316
    i8 3, label %sw.bb2.i.i
    i8 4, label %sw.bb3.i.i
  ]

if.end.i214.sw.bb1.i.i_crit_edge316:              ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i.i

if.end.i214.sw.bb1.i.i_crit_edge:                 ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i.i

if.end.i214.hidpp20_unifiedbattery_map_status.exit.i_crit_edge: ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_unifiedbattery_map_status.exit.i

sw.bb1.i.i:                                       ; preds = %if.end.i214.sw.bb1.i.i_crit_edge, %if.end.i214.sw.bb1.i.i_crit_edge316
  br label %hidpp20_unifiedbattery_map_status.exit.i

sw.bb2.i.i:                                       ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_unifiedbattery_map_status.exit.i

sw.bb3.i.i:                                       ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hidpp, align 8
  %dev.i.i = getelementptr inbounds %struct.hid_device, ptr %92, i32 0, i32 18
  %name.i.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 4
  %93 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %name.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.105, ptr noundef %94) #15
  br label %hidpp20_unifiedbattery_map_status.exit.i

sw.default.i.i215:                                ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_unifiedbattery_map_status.exit.i

hidpp20_unifiedbattery_map_status.exit.i:         ; preds = %sw.default.i.i215, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.end.i214.hidpp20_unifiedbattery_map_status.exit.i_crit_edge
  %status.0.i.i216 = phi i32 [ 3, %sw.default.i.i215 ], [ 3, %sw.bb3.i.i ], [ 4, %sw.bb2.i.i ], [ 1, %sw.bb1.i.i ], [ 2, %if.end.i214.hidpp20_unifiedbattery_map_status.exit.i_crit_edge ]
  %arrayidx11.i = getelementptr %struct.hidpp_report, ptr %data, i32 0, i32 2, i32 0, i32 2, i32 1
  %95 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx11.i, align 1
  %supported_levels_1004.i.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 12
  %97 = ptrtoint ptr %supported_levels_1004.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %supported_levels_1004.i.i, align 1
  %and26.i.i = and i8 %98, %96
  %conv3.i.i = zext i8 %and26.i.i to i32
  %and4.i.i = and i32 %conv3.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %hidpp20_unifiedbattery_map_status.exit.i.hidpp20_unifiedbattery_map_level.exit.i_crit_edge

hidpp20_unifiedbattery_map_status.exit.i.hidpp20_unifiedbattery_map_level.exit.i_crit_edge: ; preds = %hidpp20_unifiedbattery_map_status.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_unifiedbattery_map_level.exit.i

if.else.i.i:                                      ; preds = %hidpp20_unifiedbattery_map_status.exit.i
  %and6.i.i = and i32 %conv3.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.else9.i.i, label %if.else.i.i.hidpp20_unifiedbattery_map_level.exit.i_crit_edge

if.else.i.i.hidpp20_unifiedbattery_map_level.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_unifiedbattery_map_level.exit.i

if.else9.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and11.i.i = and i32 %conv3.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  %and16.i.i = and i32 %conv3.i.i, 1
  %spec.select.i.i = select i1 %tobool12.not.i.i, i32 %and16.i.i, i32 2
  br label %hidpp20_unifiedbattery_map_level.exit.i

hidpp20_unifiedbattery_map_level.exit.i:          ; preds = %if.else9.i.i, %if.else.i.i.hidpp20_unifiedbattery_map_level.exit.i_crit_edge, %hidpp20_unifiedbattery_map_status.exit.i.hidpp20_unifiedbattery_map_level.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 5, %hidpp20_unifiedbattery_map_status.exit.i.hidpp20_unifiedbattery_map_level.exit.i_crit_edge ], [ 3, %if.else.i.i.hidpp20_unifiedbattery_map_level.exit.i_crit_edge ], [ %spec.select.i.i, %if.else9.i.i ]
  %status14.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 6
  %99 = ptrtoint ptr %status14.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %status14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %status.0.i.i216, i32 %100)
  %cmp15.not.i = icmp eq i32 %status.0.i.i216, %100
  br i1 %cmp15.not.i, label %lor.lhs.false17.i, label %hidpp20_unifiedbattery_map_level.exit.i.if.then29.i_crit_edge

hidpp20_unifiedbattery_map_level.exit.i.if.then29.i_crit_edge: ; preds = %hidpp20_unifiedbattery_map_level.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29.i

lor.lhs.false17.i:                                ; preds = %hidpp20_unifiedbattery_map_level.exit.i
  %capacity.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 7
  %101 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %capacity.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %conv8.i)
  %cmp19.not.i217 = icmp eq i32 %102, %conv8.i
  br i1 %cmp19.not.i217, label %lor.lhs.false17.i.lor.rhs.i220_crit_edge, label %land.lhs.true.i219

lor.lhs.false17.i.lor.rhs.i220_crit_edge:         ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i220

land.lhs.true.i219:                               ; preds = %lor.lhs.false17.i
  %103 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %capabilities, align 8
  %and.i = and i32 %104, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i218 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i218, label %land.lhs.true.i219.lor.rhs.i220_crit_edge, label %land.lhs.true.i219.if.then29.i_crit_edge

land.lhs.true.i219.if.then29.i_crit_edge:         ; preds = %land.lhs.true.i219
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29.i

land.lhs.true.i219.lor.rhs.i220_crit_edge:        ; preds = %land.lhs.true.i219
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i220

lor.rhs.i220:                                     ; preds = %land.lhs.true.i219.lor.rhs.i220_crit_edge, %lor.lhs.false17.i.lor.rhs.i220_crit_edge
  %level22.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 8
  %105 = ptrtoint ptr %level22.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %level22.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %106)
  %cmp23.not.i = icmp eq i32 %retval.0.i.i, %106
  br i1 %cmp23.not.i, label %lor.rhs.i220.hidpp20_battery_event_1004.exit_crit_edge, label %land.rhs.i221

lor.rhs.i220.hidpp20_battery_event_1004.exit_crit_edge: ; preds = %lor.rhs.i220
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_battery_event_1004.exit

land.rhs.i221:                                    ; preds = %lor.rhs.i220
  %107 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %capabilities, align 8
  %and26.i = and i32 %108, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %land.rhs.i221.hidpp20_battery_event_1004.exit_crit_edge, label %land.rhs.i221.if.then29.i_crit_edge

land.rhs.i221.if.then29.i_crit_edge:              ; preds = %land.rhs.i221
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29.i

land.rhs.i221.hidpp20_battery_event_1004.exit_crit_edge: ; preds = %land.rhs.i221
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_battery_event_1004.exit

if.then29.i:                                      ; preds = %land.rhs.i221.if.then29.i_crit_edge, %land.lhs.true.i219.if.then29.i_crit_edge, %hidpp20_unifiedbattery_map_level.exit.i.if.then29.i_crit_edge
  %capacity31.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 7
  %109 = ptrtoint ptr %capacity31.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %conv8.i, ptr %capacity31.i, align 8
  %110 = ptrtoint ptr %status14.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %status.0.i.i216, ptr %status14.i, align 4
  %level35.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 8
  %111 = ptrtoint ptr %level35.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %retval.0.i.i, ptr %level35.i, align 4
  %ps.i222 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 4
  %112 = ptrtoint ptr %ps.i222 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ps.i222, align 8
  %tobool37.not.i = icmp eq ptr %113, null
  br i1 %tobool37.not.i, label %if.then29.i.hidpp20_battery_event_1004.exit_crit_edge, label %if.then38.i

if.then29.i.hidpp20_battery_event_1004.exit_crit_edge: ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_battery_event_1004.exit

if.then38.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @power_supply_changed(ptr noundef nonnull %113) #12
  br label %hidpp20_battery_event_1004.exit

hidpp20_battery_event_1004.exit:                  ; preds = %if.then38.i, %if.then29.i.hidpp20_battery_event_1004.exit_crit_edge, %land.rhs.i221.hidpp20_battery_event_1004.exit_crit_edge, %lor.rhs.i220.hidpp20_battery_event_1004.exit_crit_edge, %lor.lhs.false.i213.hidpp20_battery_event_1004.exit_crit_edge, %hidpp20_battery_event_1000.exit.hidpp20_battery_event_1004.exit_crit_edge
  %114 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %56, align 1
  %solar_feature_index.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 1
  %116 = ptrtoint ptr %solar_feature_index.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %solar_feature_index.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %115, i8 %117)
  %cmp.not.i223 = icmp eq i8 %115, %117
  br i1 %cmp.not.i223, label %lor.lhs.false.i225, label %hidpp20_battery_event_1004.exit.hidpp_solar_battery_event.exit_crit_edge

hidpp20_battery_event_1004.exit.hidpp_solar_battery_event.exit_crit_edge: ; preds = %hidpp20_battery_event_1004.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_solar_battery_event.exit

lor.lhs.false.i225:                               ; preds = %hidpp20_battery_event_1004.exit
  %funcindex_clientid.i224 = getelementptr inbounds %struct.hidpp_report, ptr %data, i32 0, i32 2, i32 0, i32 1
  %118 = ptrtoint ptr %funcindex_clientid.i224 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %funcindex_clientid.i224, align 1
  %120 = zext i8 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.226)
  switch i8 %119, label %lor.lhs.false.i225.hidpp_solar_battery_event.exit_crit_edge [
    i8 0, label %lor.lhs.false.i225.if.end.i227_crit_edge
    i8 16, label %lor.lhs.false.i225.if.end.i227_crit_edge317
    i8 32, label %lor.lhs.false.i225.if.end.i227_crit_edge318
  ]

lor.lhs.false.i225.if.end.i227_crit_edge318:      ; preds = %lor.lhs.false.i225
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i227

lor.lhs.false.i225.if.end.i227_crit_edge317:      ; preds = %lor.lhs.false.i225
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i227

lor.lhs.false.i225.if.end.i227_crit_edge:         ; preds = %lor.lhs.false.i225
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i227

lor.lhs.false.i225.hidpp_solar_battery_event.exit_crit_edge: ; preds = %lor.lhs.false.i225
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_solar_battery_event.exit

if.end.i227:                                      ; preds = %lor.lhs.false.i225.if.end.i227_crit_edge, %lor.lhs.false.i225.if.end.i227_crit_edge317, %lor.lhs.false.i225.if.end.i227_crit_edge318
  %121 = ptrtoint ptr %params1.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %params1.i, align 1
  %conv14.i = zext i8 %122 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %119)
  %cond.i = icmp eq i8 %119, 16
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.end.i227
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx17.i = getelementptr %struct.hidpp_report, ptr %data, i32 0, i32 2, i32 0, i32 2, i32 1
  %123 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %124 to i32
  %shl.i = shl nuw nsw i32 %conv18.i, 8
  %arrayidx20.i = getelementptr %struct.hidpp_report, ptr %data, i32 0, i32 2, i32 0, i32 2, i32 2
  %125 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %126 to i32
  %or.i = or i32 %shl.i, %conv21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %or.i)
  %cmp22.i = icmp ugt i32 %or.i, 200
  %..i = select i1 %cmp22.i, i32 1, i32 2
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end.i227
  call void @__sanitizer_cov_trace_pc() #14
  %capacity28.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 7
  %127 = ptrtoint ptr %capacity28.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %capacity28.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %conv14.i)
  %cmp29.i = icmp sgt i32 %128, %conv14.i
  %.1.i = select i1 %cmp29.i, i32 2, i32 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb.i
  %status.0.i = phi i32 [ %..i, %sw.bb.i ], [ %.1.i, %sw.default.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %122)
  %cmp34.i = icmp eq i8 %122, 100
  %spec.select.i228 = select i1 %cmp34.i, i32 4, i32 %status.0.i
  %online.i229 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 11
  %129 = ptrtoint ptr %online.i229 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 1, ptr %online.i229, align 8
  %capacity40.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 7
  %130 = ptrtoint ptr %capacity40.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %capacity40.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %conv14.i)
  %cmp41.not.i = icmp eq i32 %131, %conv14.i
  br i1 %cmp41.not.i, label %lor.lhs.false43.i, label %sw.epilog.i.if.then48.i_crit_edge

sw.epilog.i.if.then48.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then48.i

lor.lhs.false43.i:                                ; preds = %sw.epilog.i
  %status45.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 6
  %132 = ptrtoint ptr %status45.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %status45.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i228, i32 %133)
  %cmp46.not.i = icmp eq i32 %spec.select.i228, %133
  br i1 %cmp46.not.i, label %lor.lhs.false43.i.hidpp_solar_battery_event.exit_crit_edge, label %lor.lhs.false43.i.if.then48.i_crit_edge

lor.lhs.false43.i.if.then48.i_crit_edge:          ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then48.i

lor.lhs.false43.i.hidpp_solar_battery_event.exit_crit_edge: ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_solar_battery_event.exit

if.then48.i:                                      ; preds = %lor.lhs.false43.i.if.then48.i_crit_edge, %sw.epilog.i.if.then48.i_crit_edge
  %134 = ptrtoint ptr %capacity40.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %conv14.i, ptr %capacity40.i, align 8
  %status52.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 6
  %135 = ptrtoint ptr %status52.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %spec.select.i228, ptr %status52.i, align 4
  %ps.i230 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 4
  %136 = ptrtoint ptr %ps.i230 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ps.i230, align 8
  %tobool.not.i231 = icmp eq ptr %137, null
  br i1 %tobool.not.i231, label %if.then48.i.hidpp_solar_battery_event.exit_crit_edge, label %if.then54.i

if.then48.i.hidpp_solar_battery_event.exit_crit_edge: ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp_solar_battery_event.exit

if.then54.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @power_supply_changed(ptr noundef nonnull %137) #12
  br label %hidpp_solar_battery_event.exit

hidpp_solar_battery_event.exit:                   ; preds = %if.then54.i, %if.then48.i.hidpp_solar_battery_event.exit_crit_edge, %lor.lhs.false43.i.hidpp_solar_battery_event.exit_crit_edge, %lor.lhs.false.i225.hidpp_solar_battery_event.exit_crit_edge, %hidpp20_battery_event_1004.exit.hidpp_solar_battery_event.exit_crit_edge
  %138 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %56, align 1
  %voltage_feature_index.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 2
  %140 = ptrtoint ptr %voltage_feature_index.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %voltage_feature_index.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %139, i8 %141)
  %cmp.not.i232 = icmp eq i8 %139, %141
  br i1 %cmp.not.i232, label %lor.lhs.false.i234, label %hidpp_solar_battery_event.exit.if.end96_crit_edge

hidpp_solar_battery_event.exit.if.end96_crit_edge: ; preds = %hidpp_solar_battery_event.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

lor.lhs.false.i234:                               ; preds = %hidpp_solar_battery_event.exit
  %funcindex_clientid.i233 = getelementptr inbounds %struct.hidpp_report, ptr %data, i32 0, i32 2, i32 0, i32 1
  %142 = ptrtoint ptr %funcindex_clientid.i233 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %funcindex_clientid.i233, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %cmp4.not.i = icmp eq i8 %143, 0
  br i1 %cmp4.not.i, label %if.end.i237, label %lor.lhs.false.i234.if.end96_crit_edge

lor.lhs.false.i234.if.end96_crit_edge:            ; preds = %lor.lhs.false.i234
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

if.end.i237:                                      ; preds = %lor.lhs.false.i234
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i.i)
  %arrayidx.i.i = getelementptr %struct.hidpp_report, ptr %data, i32 0, i32 2, i32 0, i32 2, i32 2
  %144 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %145 to i32
  %146 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %conv.i.i, ptr %flags.i.i, align 4
  %and.i.i = and i32 %conv.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i236 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i236, label %if.end.i237.if.end.i.i_crit_edge, label %if.then.i.i

if.end.i237.if.end.i.i_crit_edge:                 ; preds = %if.end.i237
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i237
  %and1.i.i = and i32 %conv.i.i, 7
  %147 = zext i32 %and1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %147, ptr @__sancov_gen_cov_switch_values.227)
  switch i32 %and1.i.i, label %sw.default.i.i240 [
    i32 0, label %if.then.i.i.if.end.i.i_crit_edge
    i32 1, label %sw.bb2.i.i238
    i32 2, label %sw.bb3.i.i239
  ]

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

sw.bb2.i.i238:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

sw.bb3.i.i239:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

sw.default.i.i240:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %sw.default.i.i240, %sw.bb3.i.i239, %sw.bb2.i.i238, %if.then.i.i.if.end.i.i_crit_edge, %if.end.i237.if.end.i.i_crit_edge
  %level.0.i241 = phi i32 [ 0, %if.end.i237.if.end.i.i_crit_edge ], [ 0, %sw.default.i.i240 ], [ 0, %sw.bb3.i.i239 ], [ 5, %sw.bb2.i.i238 ], [ %and1.i.i, %if.then.i.i.if.end.i.i_crit_edge ]
  %cmp6.i242 = phi i1 [ true, %if.end.i237.if.end.i.i_crit_edge ], [ true, %sw.default.i.i240 ], [ false, %sw.bb3.i.i239 ], [ true, %sw.bb2.i.i238 ], [ true, %if.then.i.i.if.end.i.i_crit_edge ]
  %status.0.i.i243 = phi i32 [ 2, %if.end.i237.if.end.i.i_crit_edge ], [ 0, %sw.default.i.i240 ], [ 3, %sw.bb3.i.i239 ], [ 4, %sw.bb2.i.i238 ], [ 1, %if.then.i.i.if.end.i.i_crit_edge ]
  %148 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %flags.i.i.0.flags.i.i.0.flags.i.0.flags.i.0.flags.0.flags.0..i.i = load volatile i32, ptr %flags.i.i, align 4
  %149 = and i32 %flags.i.i.0.flags.i.i.0.flags.i.0.flags.i.0.flags.0.flags.0..i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool4.not.i.i = icmp eq i32 %149, 0
  %spec.select.i244 = select i1 %tobool4.not.i.i, i32 4, i32 3
  %150 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %flags.i.i.0.flags.i.i.0.flags.i.0.flags.i.0.flags.0.flags.0.26.i.i = load volatile i32, ptr %flags.i.i, align 4
  %151 = and i32 %flags.i.i.0.flags.i.i.0.flags.i.0.flags.i.0.flags.0.flags.0.26.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool8.not.i.i = icmp eq i32 %151, 0
  %charge_type.1.i = select i1 %tobool8.not.i.i, i32 %spec.select.i244, i32 2
  %152 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %flags.i.i.0.flags.i.i.0.flags.i.0.flags.i.0.flags.0.flags.0.27.i.i = load volatile i32, ptr %flags.i.i, align 4
  %153 = and i32 %flags.i.i.0.flags.i.i.0.flags.i.0.flags.i.0.flags.0.flags.0.27.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool12.not.i.i245 = icmp eq i32 %153, 0
  %level.1.i = select i1 %tobool12.not.i.i245, i32 %level.0.i241, i32 1
  %154 = ptrtoint ptr %params1.i to i32
  call void @__asan_loadN_noabort(i32 %154, i32 2)
  %155 = load i16, ptr %params1.i, align 1
  %conv16.i.i = zext i16 %155 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i.i)
  %online.i246 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 11
  %frombool.i247 = zext i1 %cmp6.i242 to i8
  %156 = ptrtoint ptr %online.i246 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %frombool.i247, ptr %online.i246, align 8
  %voltage10.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 9
  %157 = ptrtoint ptr %voltage10.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %voltage10.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %158, i32 %conv16.i.i)
  %cmp11.not.i = icmp eq i32 %158, %conv16.i.i
  br i1 %cmp11.not.i, label %lor.lhs.false13.i, label %if.end.i.i.if.then18.i_crit_edge

if.end.i.i.if.then18.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18.i

lor.lhs.false13.i:                                ; preds = %if.end.i.i
  %status15.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 6
  %159 = ptrtoint ptr %status15.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %status15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %status.0.i.i243, i32 %160)
  %cmp16.not.i = icmp eq i32 %status.0.i.i243, %160
  br i1 %cmp16.not.i, label %lor.lhs.false13.i.if.end96_crit_edge, label %lor.lhs.false13.i.if.then18.i_crit_edge

lor.lhs.false13.i.if.then18.i_crit_edge:          ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18.i

lor.lhs.false13.i.if.end96_crit_edge:             ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

if.then18.i:                                      ; preds = %lor.lhs.false13.i.if.then18.i_crit_edge, %if.end.i.i.if.then18.i_crit_edge
  %161 = ptrtoint ptr %voltage10.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %conv16.i.i, ptr %voltage10.i, align 8
  %162 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %hidpp, align 8
  %164 = add nsw i32 %conv16.i.i, -5000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1500, i32 %164)
  %165 = icmp ult i32 %164, -1500
  br i1 %165, label %do.body3.i.i, label %if.then18.i.for.body.i.i.preheader_crit_edge, !prof !458

if.then18.i.for.body.i.i.preheader_crit_edge:     ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.preheader

do.body3.i.i:                                     ; preds = %if.then18.i
  %.b21.i.i = load i1, ptr @hidpp20_map_battery_capacity.__print_once, align 1
  br i1 %.b21.i.i, label %do.body3.i.i.for.body.i.i.preheader_crit_edge, label %if.then5.i1.i

do.body3.i.i.for.body.i.i.preheader_crit_edge:    ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.preheader

if.then5.i1.i:                                    ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hidpp20_map_battery_capacity.__print_once, align 1
  %dev.i.i248 = getelementptr inbounds %struct.hid_device, ptr %163, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i248, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102) #15
  br label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %if.then5.i1.i, %do.body3.i.i.for.body.i.i.preheader_crit_edge, %if.then18.i.for.body.i.i.preheader_crit_edge
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.023.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %arrayidx.i2.i = getelementptr [100 x i32], ptr @hidpp20_map_battery_capacity.voltages, i32 0, i32 %i.023.i.i
  %166 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx.i2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %167, i32 %conv16.i.i)
  %cmp13.not.i.i = icmp sgt i32 %167, %conv16.i.i
  br i1 %cmp13.not.i.i, label %for.inc.i.i, label %if.then14.i.i

if.then14.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub nuw nsw i32 100, %i.023.i.i
  br label %hidpp20_map_battery_capacity.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.023.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 100
  br i1 %exitcond.not.i.i, label %for.inc.i.i.hidpp20_map_battery_capacity.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.hidpp20_map_battery_capacity.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp20_map_battery_capacity.exit.i

hidpp20_map_battery_capacity.exit.i:              ; preds = %for.inc.i.i.hidpp20_map_battery_capacity.exit.i_crit_edge, %if.then14.i.i
  %retval.0.i.i249 = phi i32 [ %sub.i.i, %if.then14.i.i ], [ 0, %for.inc.i.i.hidpp20_map_battery_capacity.exit.i_crit_edge ]
  %capacity.i250 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 7
  %168 = ptrtoint ptr %capacity.i250 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %retval.0.i.i249, ptr %capacity.i250, align 8
  %status24.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 6
  %169 = ptrtoint ptr %status24.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %status.0.i.i243, ptr %status24.i, align 4
  %level26.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 8
  %170 = ptrtoint ptr %level26.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %level.1.i, ptr %level26.i, align 4
  %charge_type28.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 10
  %171 = ptrtoint ptr %charge_type28.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %charge_type.1.i, ptr %charge_type28.i, align 4
  %ps.i251 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 4
  %172 = ptrtoint ptr %ps.i251 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ps.i251, align 8
  %tobool.not.i252 = icmp eq ptr %173, null
  br i1 %tobool.not.i252, label %hidpp20_map_battery_capacity.exit.i.if.end96_crit_edge, label %if.then30.i

hidpp20_map_battery_capacity.exit.i.if.end96_crit_edge: ; preds = %hidpp20_map_battery_capacity.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

if.then30.i:                                      ; preds = %hidpp20_map_battery_capacity.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @power_supply_changed(ptr noundef nonnull %173) #12
  br label %if.end96

if.end96:                                         ; preds = %if.then30.i, %hidpp20_map_battery_capacity.exit.i.if.end96_crit_edge, %lor.lhs.false13.i.if.end96_crit_edge, %lor.lhs.false.i234.if.end96_crit_edge, %hidpp_solar_battery_event.exit.if.end96_crit_edge, %if.end72.if.end96_crit_edge
  %174 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %capabilities, align 8
  %and98 = and i32 %175, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.end96.if.end106_crit_edge, label %if.then100

if.end96.if.end106_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.then100:                                       ; preds = %if.end96
  %176 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %177)
  %cmp.not.i253 = icmp eq i8 %177, 16
  br i1 %cmp.not.i253, label %if.end.i254, label %if.then100.if.end106_crit_edge

if.then100.if.end106_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.end.i254:                                      ; preds = %if.then100
  %178 = getelementptr inbounds %struct.hidpp_report, ptr %data, i32 0, i32 2
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %178, align 1
  %181 = zext i8 %180 to i64
  call void @__sanitizer_cov_trace_switch(i64 %181, ptr @__sancov_gen_cov_switch_values.228)
  switch i8 %180, label %if.end.i254.if.end106_crit_edge [
    i8 7, label %sw.bb.i255
    i8 13, label %sw.bb6.i
  ]

if.end.i254.if.end106_crit_edge:                  ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

sw.bb.i255:                                       ; preds = %if.end.i254
  %capacity3.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 7
  %182 = ptrtoint ptr %capacity3.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %capacity3.i, align 8
  %arrayidx.i = getelementptr %struct.hidpp_report, ptr %data, i32 0, i32 2, i32 0, i32 1
  %184 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx.i, align 1
  %switch.tableidx = add i8 %185, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx)
  %186 = icmp ult i8 %switch.tableidx, 7
  br i1 %186, label %switch.lookup, label %sw.bb.i255.hidpp10_battery_status_map_level.exit.i_crit_edge

sw.bb.i255.hidpp10_battery_status_map_level.exit.i_crit_edge: ; preds = %sw.bb.i255
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp10_battery_status_map_level.exit.i

switch.lookup:                                    ; preds = %sw.bb.i255
  call void @__sanitizer_cov_trace_pc() #14
  %187 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.hidpp_raw_hidpp_event, i32 0, i32 %187
  %188 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %188)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %hidpp10_battery_status_map_level.exit.i

hidpp10_battery_status_map_level.exit.i:          ; preds = %switch.lookup, %sw.bb.i255.hidpp10_battery_status_map_level.exit.i_crit_edge
  %level.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %sw.bb.i255.hidpp10_battery_status_map_level.exit.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.hidpp_report, ptr %data, i32 0, i32 2, i32 0, i32 2
  %189 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx4.i, align 1
  %191 = zext i8 %190 to i64
  call void @__sanitizer_cov_trace_switch(i64 %191, ptr @__sancov_gen_cov_switch_values.229)
  switch i8 %190, label %sw.default.i10.i [
    i8 0, label %hidpp10_battery_status_map_level.exit.i.sw.epilog.i267_crit_edge
    i8 33, label %hidpp10_battery_status_map_level.exit.i.sw.bb1.i7.i_crit_edge
    i8 36, label %hidpp10_battery_status_map_level.exit.i.sw.bb1.i7.i_crit_edge319
    i8 37, label %hidpp10_battery_status_map_level.exit.i.sw.bb1.i7.i_crit_edge320
    i8 38, label %hidpp10_battery_status_map_level.exit.i.sw.bb2.i8.i_crit_edge
    i8 34, label %hidpp10_battery_status_map_level.exit.i.sw.bb2.i8.i_crit_edge321
    i8 32, label %sw.bb3.i9.i
  ]

hidpp10_battery_status_map_level.exit.i.sw.bb2.i8.i_crit_edge321: ; preds = %hidpp10_battery_status_map_level.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i8.i

hidpp10_battery_status_map_level.exit.i.sw.bb2.i8.i_crit_edge: ; preds = %hidpp10_battery_status_map_level.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i8.i

hidpp10_battery_status_map_level.exit.i.sw.bb1.i7.i_crit_edge320: ; preds = %hidpp10_battery_status_map_level.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i7.i

hidpp10_battery_status_map_level.exit.i.sw.bb1.i7.i_crit_edge319: ; preds = %hidpp10_battery_status_map_level.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i7.i

hidpp10_battery_status_map_level.exit.i.sw.bb1.i7.i_crit_edge: ; preds = %hidpp10_battery_status_map_level.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i7.i

hidpp10_battery_status_map_level.exit.i.sw.epilog.i267_crit_edge: ; preds = %hidpp10_battery_status_map_level.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i267

sw.bb1.i7.i:                                      ; preds = %hidpp10_battery_status_map_level.exit.i.sw.bb1.i7.i_crit_edge, %hidpp10_battery_status_map_level.exit.i.sw.bb1.i7.i_crit_edge319, %hidpp10_battery_status_map_level.exit.i.sw.bb1.i7.i_crit_edge320
  br label %sw.epilog.i267

sw.bb2.i8.i:                                      ; preds = %hidpp10_battery_status_map_level.exit.i.sw.bb2.i8.i_crit_edge, %hidpp10_battery_status_map_level.exit.i.sw.bb2.i8.i_crit_edge321
  br label %sw.epilog.i267

sw.bb3.i9.i:                                      ; preds = %hidpp10_battery_status_map_level.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i267

sw.default.i10.i:                                 ; preds = %hidpp10_battery_status_map_level.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i267

sw.bb6.i:                                         ; preds = %if.end.i254
  %params.i260 = getelementptr inbounds %struct.hidpp_report, ptr %data, i32 0, i32 2, i32 0, i32 2
  %192 = ptrtoint ptr %params.i260 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %params.i260, align 1
  %conv8.i261 = zext i8 %193 to i32
  %level10.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 8
  %194 = ptrtoint ptr %level10.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %level10.i, align 4
  %arrayidx11.i262 = getelementptr %struct.hidpp_report, ptr %data, i32 0, i32 2, i32 0, i32 2, i32 1
  %196 = ptrtoint ptr %arrayidx11.i262 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx11.i262, align 1
  %198 = lshr i8 %197, 6
  %199 = zext i8 %198 to i32
  %200 = zext i32 %199 to i64
  call void @__sanitizer_cov_trace_switch(i64 %200, ptr @__sancov_gen_cov_switch_values.230)
  switch i32 %199, label %sw.default.i13.i [
    i32 0, label %sw.bb6.i.sw.epilog.i267_crit_edge
    i32 1, label %sw.bb1.i11.i
    i32 2, label %sw.bb2.i12.i
  ]

sw.bb6.i.sw.epilog.i267_crit_edge:                ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i267

sw.bb1.i11.i:                                     ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i267

sw.bb2.i12.i:                                     ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i267

sw.default.i13.i:                                 ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i267

sw.epilog.i267:                                   ; preds = %sw.default.i13.i, %sw.bb2.i12.i, %sw.bb1.i11.i, %sw.bb6.i.sw.epilog.i267_crit_edge, %sw.default.i10.i, %sw.bb3.i9.i, %sw.bb2.i8.i, %sw.bb1.i7.i, %hidpp10_battery_status_map_level.exit.i.sw.epilog.i267_crit_edge
  %cmp25.c2.i = phi i1 [ false, %sw.default.i13.i ], [ false, %sw.bb2.i12.i ], [ false, %sw.bb1.i11.i ], [ true, %sw.bb6.i.sw.epilog.i267_crit_edge ], [ false, %sw.default.i10.i ], [ false, %sw.bb3.i9.i ], [ false, %sw.bb2.i8.i ], [ false, %sw.bb1.i7.i ], [ true, %hidpp10_battery_status_map_level.exit.i.sw.epilog.i267_crit_edge ]
  %cmp28.c3.i = phi i1 [ false, %sw.default.i13.i ], [ true, %sw.bb2.i12.i ], [ false, %sw.bb1.i11.i ], [ false, %sw.bb6.i.sw.epilog.i267_crit_edge ], [ false, %sw.default.i10.i ], [ false, %sw.bb3.i9.i ], [ true, %sw.bb2.i8.i ], [ false, %sw.bb1.i7.i ], [ false, %hidpp10_battery_status_map_level.exit.i.sw.epilog.i267_crit_edge ]
  %status.0.i263 = phi i32 [ 3, %sw.default.i13.i ], [ 4, %sw.bb2.i12.i ], [ 1, %sw.bb1.i11.i ], [ 2, %sw.bb6.i.sw.epilog.i267_crit_edge ], [ 3, %sw.default.i10.i ], [ 0, %sw.bb3.i9.i ], [ 4, %sw.bb2.i8.i ], [ 1, %sw.bb1.i7.i ], [ 2, %hidpp10_battery_status_map_level.exit.i.sw.epilog.i267_crit_edge ]
  %capacity.0.i264 = phi i32 [ %conv8.i261, %sw.default.i13.i ], [ %conv8.i261, %sw.bb2.i12.i ], [ %conv8.i261, %sw.bb1.i11.i ], [ %conv8.i261, %sw.bb6.i.sw.epilog.i267_crit_edge ], [ %183, %sw.default.i10.i ], [ %183, %sw.bb3.i9.i ], [ %183, %sw.bb2.i8.i ], [ %183, %sw.bb1.i7.i ], [ %183, %hidpp10_battery_status_map_level.exit.i.sw.epilog.i267_crit_edge ]
  %level.0.i265 = phi i32 [ %195, %sw.default.i13.i ], [ %195, %sw.bb2.i12.i ], [ %195, %sw.bb1.i11.i ], [ %195, %sw.bb6.i.sw.epilog.i267_crit_edge ], [ %level.0.i.i, %sw.default.i10.i ], [ %level.0.i.i, %sw.bb3.i9.i ], [ %level.0.i.i, %sw.bb2.i8.i ], [ %level.0.i.i, %sw.bb1.i7.i ], [ %level.0.i.i, %hidpp10_battery_status_map_level.exit.i.sw.epilog.i267_crit_edge ]
  %capacity14.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 7
  %201 = ptrtoint ptr %capacity14.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %capacity14.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %capacity.0.i264, i32 %202)
  %cmp15.not.i266 = icmp eq i32 %capacity.0.i264, %202
  br i1 %cmp15.not.i266, label %lor.lhs.false.i270, label %sw.epilog.i267.if.then33.sink.split.i_crit_edge

sw.epilog.i267.if.then33.sink.split.i_crit_edge:  ; preds = %sw.epilog.i267
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33.sink.split.i

lor.lhs.false.i270:                               ; preds = %sw.epilog.i267
  %level18.i268 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 8
  %203 = ptrtoint ptr %level18.i268 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %level18.i268, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %level.0.i265, i32 %204)
  %cmp19.not.i269 = icmp eq i32 %level.0.i265, %204
  br i1 %cmp19.not.i269, label %lor.rhs.i274, label %lor.lhs.false.i270.if.then33.sink.split.i_crit_edge

lor.lhs.false.i270.if.then33.sink.split.i_crit_edge: ; preds = %lor.lhs.false.i270
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33.sink.split.i

lor.rhs.i274:                                     ; preds = %lor.lhs.false.i270
  %status22.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 6
  %205 = ptrtoint ptr %status22.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %status22.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %status.0.i263, i32 %206)
  %cmp23.not.i271 = icmp eq i32 %status.0.i263, %206
  %spec.select.i272 = or i1 %cmp25.c2.i, %cmp28.c3.i
  %online.i273 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 11
  %frombool32.i = zext i1 %spec.select.i272 to i8
  %207 = ptrtoint ptr %online.i273 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %frombool32.i, ptr %online.i273, align 8
  br i1 %cmp23.not.i271, label %lor.rhs.i274.if.end106_crit_edge, label %lor.rhs.i274.if.then33.i_crit_edge

lor.rhs.i274.if.then33.i_crit_edge:               ; preds = %lor.rhs.i274
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33.i

lor.rhs.i274.if.end106_crit_edge:                 ; preds = %lor.rhs.i274
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.then33.sink.split.i:                           ; preds = %lor.lhs.false.i270.if.then33.sink.split.i_crit_edge, %sw.epilog.i267.if.then33.sink.split.i_crit_edge
  %spec.select.c4.i = or i1 %cmp25.c2.i, %cmp28.c3.i
  %online.c5.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 11
  %frombool32.c6.i = zext i1 %spec.select.c4.i to i8
  %208 = ptrtoint ptr %online.c5.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %frombool32.c6.i, ptr %online.c5.i, align 8
  br label %if.then33.i

if.then33.i:                                      ; preds = %if.then33.sink.split.i, %lor.rhs.i274.if.then33.i_crit_edge
  %level35.i275 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 8
  %209 = ptrtoint ptr %level35.i275 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %level.0.i265, ptr %level35.i275, align 4
  %status37.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 6
  %210 = ptrtoint ptr %status37.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %status.0.i263, ptr %status37.i, align 4
  %ps.i276 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 18, i32 4
  %211 = ptrtoint ptr %ps.i276 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %ps.i276, align 8
  %tobool39.not.i = icmp eq ptr %212, null
  br i1 %tobool39.not.i, label %if.then33.i.if.end106_crit_edge, label %if.then40.i

if.then33.i.if.end106_crit_edge:                  ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.then40.i:                                      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @power_supply_changed(ptr noundef nonnull %212) #12
  br label %if.end106

if.end106:                                        ; preds = %if.then40.i, %if.then33.i.if.end106_crit_edge, %lor.rhs.i274.if.end106_crit_edge, %if.end.i254.if.end106_crit_edge, %if.then100.if.end106_crit_edge, %if.end96.if.end106_crit_edge
  %quirks = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 15
  %213 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %quirks, align 4
  %and107 = and i32 %214, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.end106.if.end115_crit_edge, label %if.then109

if.end106.if.end115_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

if.then109:                                       ; preds = %if.end106
  %input.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 1
  %215 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %input.i, align 4
  %tobool.not.i277 = icmp eq ptr %216, null
  br i1 %tobool.not.i277, label %if.then109.cleanup_crit_edge, label %if.end.i279

if.then109.cleanup_crit_edge:                     ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i279:                                      ; preds = %if.then109
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp.i278 = icmp slt i32 %size, 7
  br i1 %cmp.i278, label %if.end.i279.if.end115_crit_edge, label %if.end2.i

if.end.i279.if.end115_crit_edge:                  ; preds = %if.end.i279
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

if.end2.i:                                        ; preds = %if.end.i279
  %217 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %218)
  %cmp3.not.i = icmp eq i8 %218, 16
  br i1 %cmp3.not.i, label %lor.lhs.false.i280, label %if.end2.i.if.end115_crit_edge

if.end2.i.if.end115_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

lor.lhs.false.i280:                               ; preds = %if.end2.i
  %arrayidx5.i = getelementptr i8, ptr %data, i32 2
  %219 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %220)
  %cmp7.not.i = icmp eq i8 %220, 5
  br i1 %cmp7.not.i, label %if.end10.i, label %lor.lhs.false.i280.if.end115_crit_edge

lor.lhs.false.i280.if.end115_crit_edge:           ; preds = %lor.lhs.false.i280
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

if.end10.i:                                       ; preds = %lor.lhs.false.i280
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx11.i281 = getelementptr i8, ptr %data, i32 3
  %221 = ptrtoint ptr %arrayidx11.i281 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx11.i281, align 1
  %arrayidx12.i = getelementptr i8, ptr %data, i32 4
  %223 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx12.i, align 1
  %conv14.i282 = sext i8 %222 to i32
  tail call void @input_event(ptr noundef nonnull %216, i32 noundef 2, i32 noundef 8, i32 noundef %conv14.i282) #12
  %225 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %input.i, align 4
  %mul.i = mul nsw i32 %conv14.i282, 120
  tail call void @input_event(ptr noundef %226, i32 noundef 2, i32 noundef 11, i32 noundef %mul.i) #12
  %227 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %input.i, align 4
  %conv18.i283 = sext i8 %224 to i32
  tail call void @input_event(ptr noundef %228, i32 noundef 2, i32 noundef 6, i32 noundef %conv18.i283) #12
  %229 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %input.i, align 4
  %mul21.i = mul nsw i32 %conv18.i283, 120
  tail call void @input_event(ptr noundef %230, i32 noundef 2, i32 noundef 12, i32 noundef %mul21.i) #12
  %231 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %input.i, align 4
  tail call void @input_event(ptr noundef %232, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  br label %cleanup

if.end115:                                        ; preds = %lor.lhs.false.i280.if.end115_crit_edge, %if.end2.i.if.end115_crit_edge, %if.end.i279.if.end115_crit_edge, %if.end106.if.end115_crit_edge
  %233 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %quirks, align 4
  %and117 = and i32 %234, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.end115.if.end125_crit_edge, label %if.then119

if.end115.if.end125_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end125

if.then119:                                       ; preds = %if.end115
  %input.i284 = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 1
  %235 = ptrtoint ptr %input.i284 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %input.i284, align 4
  %tobool.not.i285 = icmp eq ptr %236, null
  br i1 %tobool.not.i285, label %if.then119.cleanup_crit_edge, label %if.end.i287

if.then119.cleanup_crit_edge:                     ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i287:                                      ; preds = %if.then119
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp.i286 = icmp slt i32 %size, 7
  br i1 %cmp.i286, label %if.end.i287.hidpp10_extra_mouse_buttons_raw_event.exit.thread_crit_edge, label %if.end2.i289

if.end.i287.hidpp10_extra_mouse_buttons_raw_event.exit.thread_crit_edge: ; preds = %if.end.i287
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp10_extra_mouse_buttons_raw_event.exit.thread

if.end2.i289:                                     ; preds = %if.end.i287
  %237 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %238)
  %cmp3.not.i288 = icmp eq i8 %238, 16
  br i1 %cmp3.not.i288, label %lor.lhs.false.i292, label %if.end2.i289.hidpp10_extra_mouse_buttons_raw_event.exit.thread_crit_edge

if.end2.i289.hidpp10_extra_mouse_buttons_raw_event.exit.thread_crit_edge: ; preds = %if.end2.i289
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp10_extra_mouse_buttons_raw_event.exit.thread

lor.lhs.false.i292:                               ; preds = %if.end2.i289
  %arrayidx5.i290 = getelementptr i8, ptr %data, i32 2
  %239 = ptrtoint ptr %arrayidx5.i290 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %arrayidx5.i290, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %240)
  %cmp7.not.i291 = icmp eq i8 %240, 6
  br i1 %cmp7.not.i291, label %for.cond.preheader.i, label %lor.lhs.false.i292.hidpp10_extra_mouse_buttons_raw_event.exit.thread_crit_edge

lor.lhs.false.i292.hidpp10_extra_mouse_buttons_raw_event.exit.thread_crit_edge: ; preds = %lor.lhs.false.i292
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp10_extra_mouse_buttons_raw_event.exit.thread

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i292
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx14.i = getelementptr i8, ptr %data, i32 3
  %241 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx14.i, align 1
  %243 = and i8 %242, 1
  %244 = zext i8 %243 to i32
  tail call void @input_event(ptr noundef nonnull %236, i32 noundef 1, i32 noundef 272, i32 noundef %244) #12
  %245 = ptrtoint ptr %input.i284 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %input.i284, align 4
  %247 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %arrayidx14.i, align 1
  %249 = lshr i8 %248, 1
  %250 = and i8 %249, 1
  %251 = zext i8 %250 to i32
  tail call void @input_event(ptr noundef %246, i32 noundef 1, i32 noundef 273, i32 noundef %251) #12
  %252 = ptrtoint ptr %input.i284 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %input.i284, align 4
  %254 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %arrayidx14.i, align 1
  %256 = lshr i8 %255, 2
  %257 = and i8 %256, 1
  %258 = zext i8 %257 to i32
  tail call void @input_event(ptr noundef %253, i32 noundef 1, i32 noundef 274, i32 noundef %258) #12
  %259 = ptrtoint ptr %input.i284 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %input.i284, align 4
  %261 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %arrayidx14.i, align 1
  %263 = lshr i8 %262, 3
  %264 = and i8 %263, 1
  %265 = zext i8 %264 to i32
  tail call void @input_event(ptr noundef %260, i32 noundef 1, i32 noundef 275, i32 noundef %265) #12
  %266 = ptrtoint ptr %input.i284 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %input.i284, align 4
  %268 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %arrayidx14.i, align 1
  %270 = lshr i8 %269, 4
  %271 = and i8 %270, 1
  %272 = zext i8 %271 to i32
  tail call void @input_event(ptr noundef %267, i32 noundef 1, i32 noundef 276, i32 noundef %272) #12
  %273 = ptrtoint ptr %input.i284 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %input.i284, align 4
  %275 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %arrayidx14.i, align 1
  %277 = lshr i8 %276, 5
  %278 = and i8 %277, 1
  %279 = zext i8 %278 to i32
  tail call void @input_event(ptr noundef %274, i32 noundef 1, i32 noundef 277, i32 noundef %279) #12
  %280 = ptrtoint ptr %input.i284 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %input.i284, align 4
  %282 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %arrayidx14.i, align 1
  %284 = lshr i8 %283, 6
  %285 = and i8 %284, 1
  %286 = zext i8 %285 to i32
  tail call void @input_event(ptr noundef %281, i32 noundef 1, i32 noundef 278, i32 noundef %286) #12
  %287 = ptrtoint ptr %input.i284 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %input.i284, align 4
  %289 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %arrayidx14.i, align 1
  %291 = lshr i8 %290, 7
  %292 = zext i8 %291 to i32
  tail call void @input_event(ptr noundef %288, i32 noundef 1, i32 noundef 279, i32 noundef %292) #12
  %arrayidx22.i = getelementptr i8, ptr %data, i32 4
  %293 = ptrtoint ptr %input.i284 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %input.i284, align 4
  %295 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %arrayidx22.i, align 1
  %297 = and i8 %296, 1
  %298 = zext i8 %297 to i32
  tail call void @input_event(ptr noundef %294, i32 noundef 1, i32 noundef 256, i32 noundef %298) #12
  %299 = ptrtoint ptr %input.i284 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %input.i284, align 4
  %301 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %arrayidx22.i, align 1
  %303 = lshr i8 %302, 1
  %304 = and i8 %303, 1
  %305 = zext i8 %304 to i32
  tail call void @input_event(ptr noundef %300, i32 noundef 1, i32 noundef 257, i32 noundef %305) #12
  %306 = ptrtoint ptr %input.i284 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %input.i284, align 4
  %308 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %arrayidx22.i, align 1
  %310 = lshr i8 %309, 2
  %311 = and i8 %310, 1
  %312 = zext i8 %311 to i32
  tail call void @input_event(ptr noundef %307, i32 noundef 1, i32 noundef 258, i32 noundef %312) #12
  %313 = ptrtoint ptr %input.i284 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %input.i284, align 4
  %315 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %arrayidx22.i, align 1
  %317 = lshr i8 %316, 3
  %318 = and i8 %317, 1
  %319 = zext i8 %318 to i32
  tail call void @input_event(ptr noundef %314, i32 noundef 1, i32 noundef 259, i32 noundef %319) #12
  %320 = ptrtoint ptr %input.i284 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %input.i284, align 4
  %322 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx22.i, align 1
  %324 = lshr i8 %323, 4
  %325 = and i8 %324, 1
  %326 = zext i8 %325 to i32
  tail call void @input_event(ptr noundef %321, i32 noundef 1, i32 noundef 260, i32 noundef %326) #12
  %327 = ptrtoint ptr %input.i284 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %input.i284, align 4
  %329 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %arrayidx22.i, align 1
  %331 = lshr i8 %330, 5
  %332 = and i8 %331, 1
  %333 = zext i8 %332 to i32
  tail call void @input_event(ptr noundef %328, i32 noundef 1, i32 noundef 261, i32 noundef %333) #12
  %334 = ptrtoint ptr %input.i284 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %input.i284, align 4
  %336 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %arrayidx22.i, align 1
  %338 = lshr i8 %337, 6
  %339 = and i8 %338, 1
  %340 = zext i8 %339 to i32
  tail call void @input_event(ptr noundef %335, i32 noundef 1, i32 noundef 262, i32 noundef %340) #12
  %341 = ptrtoint ptr %input.i284 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %input.i284, align 4
  %343 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %arrayidx22.i, align 1
  %345 = lshr i8 %344, 7
  %346 = zext i8 %345 to i32
  tail call void @input_event(ptr noundef %342, i32 noundef 1, i32 noundef 263, i32 noundef %346) #12
  %347 = ptrtoint ptr %input.i284 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %input.i284, align 4
  tail call void @input_event(ptr noundef %348, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  br label %cleanup

hidpp10_extra_mouse_buttons_raw_event.exit.thread: ; preds = %lor.lhs.false.i292.hidpp10_extra_mouse_buttons_raw_event.exit.thread_crit_edge, %if.end2.i289.hidpp10_extra_mouse_buttons_raw_event.exit.thread_crit_edge, %if.end.i287.hidpp10_extra_mouse_buttons_raw_event.exit.thread_crit_edge
  %349 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %349)
  %.pr = load i32, ptr %quirks, align 4
  br label %if.end125

if.end125:                                        ; preds = %hidpp10_extra_mouse_buttons_raw_event.exit.thread, %if.end115.if.end125_crit_edge
  %350 = phi i32 [ %.pr, %hidpp10_extra_mouse_buttons_raw_event.exit.thread ], [ %234, %if.end115.if.end125_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %350)
  %tobool128.not = icmp sgt i32 %350, -1
  br i1 %tobool128.not, label %if.end125.cleanup_crit_edge, label %if.then129

if.end125.cleanup_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then129:                                       ; preds = %if.end125
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %consumer_report.i) #12
  %351 = getelementptr inbounds [5 x i8], ptr %consumer_report.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp.i294 = icmp slt i32 %size, 7
  br i1 %cmp.i294, label %if.then129.hidpp10_consumer_keys_raw_event.exit.thread_crit_edge, label %if.end.i295

if.then129.hidpp10_consumer_keys_raw_event.exit.thread_crit_edge: ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp10_consumer_keys_raw_event.exit.thread

if.end.i295:                                      ; preds = %if.then129
  %352 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %353)
  %cmp1.not.i = icmp eq i8 %353, 16
  br i1 %cmp1.not.i, label %lor.lhs.false.i297, label %if.end.i295.hidpp10_consumer_keys_raw_event.exit.thread_crit_edge

if.end.i295.hidpp10_consumer_keys_raw_event.exit.thread_crit_edge: ; preds = %if.end.i295
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp10_consumer_keys_raw_event.exit.thread

lor.lhs.false.i297:                               ; preds = %if.end.i295
  %arrayidx3.i = getelementptr i8, ptr %data, i32 2
  %354 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %355)
  %cmp5.not.i296 = icmp eq i8 %355, 3
  br i1 %cmp5.not.i296, label %hidpp10_consumer_keys_raw_event.exit, label %lor.lhs.false.i297.hidpp10_consumer_keys_raw_event.exit.thread_crit_edge

lor.lhs.false.i297.hidpp10_consumer_keys_raw_event.exit.thread_crit_edge: ; preds = %lor.lhs.false.i297
  call void @__sanitizer_cov_trace_pc() #14
  br label %hidpp10_consumer_keys_raw_event.exit.thread

hidpp10_consumer_keys_raw_event.exit.thread:      ; preds = %lor.lhs.false.i297.hidpp10_consumer_keys_raw_event.exit.thread_crit_edge, %if.end.i295.hidpp10_consumer_keys_raw_event.exit.thread_crit_edge, %if.then129.hidpp10_consumer_keys_raw_event.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %consumer_report.i) #12
  br label %cleanup

hidpp10_consumer_keys_raw_event.exit:             ; preds = %lor.lhs.false.i297
  call void @__sanitizer_cov_trace_pc() #14
  %356 = ptrtoint ptr %consumer_report.i to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 3, ptr %consumer_report.i, align 1
  %arrayidx11.i298 = getelementptr i8, ptr %data, i32 3
  %357 = ptrtoint ptr %arrayidx11.i298 to i32
  call void @__asan_loadN_noabort(i32 %357, i32 4)
  %358 = load i32, ptr %arrayidx11.i298, align 1
  %359 = ptrtoint ptr %351 to i32
  call void @__asan_storeN_noabort(i32 %359, i32 4)
  store i32 %358, ptr %351, align 1
  %360 = ptrtoint ptr %hidpp to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %hidpp, align 8
  %call.i = call i32 @hid_report_raw_event(ptr noundef %361, i32 noundef 0, ptr noundef nonnull %consumer_report.i, i32 noundef 5, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %consumer_report.i) #12
  br label %cleanup

cleanup:                                          ; preds = %hidpp10_consumer_keys_raw_event.exit, %hidpp10_consumer_keys_raw_event.exit.thread, %if.end125.cleanup_crit_edge, %for.cond.preheader.i, %if.then119.cleanup_crit_edge, %if.end10.i, %if.then109.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.then5
  %retval.0 = phi i32 [ 1, %if.then5 ], [ 1, %do.body.cleanup_crit_edge ], [ 1, %do.end ], [ 1, %if.then14.cleanup_crit_edge ], [ 1, %hidpp10_consumer_keys_raw_event.exit ], [ 1, %if.end10.i ], [ -22, %if.then109.cleanup_crit_edge ], [ 1, %for.cond.preheader.i ], [ -22, %if.then119.cleanup_crit_edge ], [ 0, %hidpp10_consumer_keys_raw_event.exit.thread ], [ 0, %if.end125.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_report_raw_event(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wtp_send_raw_xy_event(ptr nocapture noundef readonly %hidpp, ptr nocapture noundef readonly %raw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 10
  %input.i = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 1
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 8
  %finger_id.i = getelementptr %struct.hidpp_touchpad_raw_xy, ptr %raw, i32 0, i32 1, i32 0, i32 6
  %2 = ptrtoint ptr %finger_id.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %finger_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.wtp_touch_event.exit_crit_edge, label %lor.lhs.false.i

entry.wtp_touch_event.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %wtp_touch_event.exit

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx = getelementptr %struct.hidpp_touchpad_raw_xy, ptr %raw, i32 0, i32 1, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.wtp_touch_event.exit_crit_edge

lor.lhs.false.i.wtp_touch_event.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wtp_touch_event.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %6 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input.i, align 4
  %conv3.i = zext i8 %3 to i32
  %call.i = tail call i32 @input_mt_get_slot_by_key(ptr noundef %7, i32 noundef %conv3.i) #12
  %8 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input.i, align 4
  tail call void @input_event(ptr noundef %9, i32 noundef 3, i32 noundef 47, i32 noundef %call.i) #12
  %10 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %input.i, align 4
  %contact_status.i = getelementptr %struct.hidpp_touchpad_raw_xy, ptr %raw, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %contact_status.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %contact_status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.i = icmp ne i8 %13, 0
  %call7.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %11, i32 noundef 0, i1 noundef zeroext %tobool6.i) #12
  %14 = ptrtoint ptr %contact_status.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %contact_status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool9.not.i = icmp eq i8 %15, 0
  br i1 %tobool9.not.i, label %if.end.i.wtp_touch_event.exit_crit_edge, label %if.then10.i

if.end.i.wtp_touch_event.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wtp_touch_event.exit

if.then10.i:                                      ; preds = %if.end.i
  %16 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %input.i, align 4
  %x.i = getelementptr %struct.hidpp_touchpad_raw_xy, ptr %raw, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %x.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %x.i, align 2
  %conv12.i = zext i16 %19 to i32
  tail call void @input_event(ptr noundef %17, i32 noundef 3, i32 noundef 53, i32 noundef %conv12.i) #12
  %20 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %input.i, align 4
  %flip_y.i = getelementptr inbounds %struct.wtp_data, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %flip_y.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flip_y.i, align 4, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool14.not.i = icmp eq i8 %23, 0
  br i1 %tobool14.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  %y_size.i = getelementptr inbounds %struct.wtp_data, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %y_size.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %y_size.i, align 2
  %conv16.i = zext i16 %25 to i32
  %y.i = getelementptr %struct.hidpp_touchpad_raw_xy, ptr %raw, i32 0, i32 1, i32 0, i32 3
  %26 = ptrtoint ptr %y.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %y.i, align 2
  %conv17.i = zext i16 %27 to i32
  %sub.i = sub nsw i32 %conv16.i, %conv17.i
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  %y18.i = getelementptr %struct.hidpp_touchpad_raw_xy, ptr %raw, i32 0, i32 1, i32 0, i32 3
  %28 = ptrtoint ptr %y18.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %y18.i, align 2
  %conv19.i = zext i16 %29 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %sub.i, %cond.true.i ], [ %conv19.i, %cond.false.i ]
  tail call void @input_event(ptr noundef %21, i32 noundef 3, i32 noundef 54, i32 noundef %cond.i) #12
  %30 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %input.i, align 4
  %area.i = getelementptr %struct.hidpp_touchpad_raw_xy, ptr %raw, i32 0, i32 1, i32 0, i32 5
  %32 = ptrtoint ptr %area.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %area.i, align 1
  %conv21.i = zext i8 %33 to i32
  tail call void @input_event(ptr noundef %31, i32 noundef 3, i32 noundef 58, i32 noundef %conv21.i) #12
  br label %wtp_touch_event.exit

wtp_touch_event.exit:                             ; preds = %cond.end.i, %if.end.i.wtp_touch_event.exit_crit_edge, %lor.lhs.false.i.wtp_touch_event.exit_crit_edge, %entry.wtp_touch_event.exit_crit_edge
  %34 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %private_data.i, align 8
  %finger_id.i.1 = getelementptr %struct.hidpp_touchpad_raw_xy, ptr %raw, i32 0, i32 1, i32 1, i32 6
  %36 = ptrtoint ptr %finger_id.i.1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %finger_id.i.1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i.1 = icmp eq i8 %37, 0
  br i1 %tobool.not.i.1, label %wtp_touch_event.exit.wtp_touch_event.exit.1_crit_edge, label %lor.lhs.false.i.1

wtp_touch_event.exit.wtp_touch_event.exit.1_crit_edge: ; preds = %wtp_touch_event.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %wtp_touch_event.exit.1

lor.lhs.false.i.1:                                ; preds = %wtp_touch_event.exit
  %arrayidx.1 = getelementptr %struct.hidpp_touchpad_raw_xy, ptr %raw, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool1.not.i.1 = icmp eq i8 %39, 0
  br i1 %tobool1.not.i.1, label %if.end.i.1, label %lor.lhs.false.i.1.wtp_touch_event.exit.1_crit_edge

lor.lhs.false.i.1.wtp_touch_event.exit.1_crit_edge: ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %wtp_touch_event.exit.1

if.end.i.1:                                       ; preds = %lor.lhs.false.i.1
  %40 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %input.i, align 4
  %conv3.i.1 = zext i8 %37 to i32
  %call.i.1 = tail call i32 @input_mt_get_slot_by_key(ptr noundef %41, i32 noundef %conv3.i.1) #12
  %42 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %input.i, align 4
  tail call void @input_event(ptr noundef %43, i32 noundef 3, i32 noundef 47, i32 noundef %call.i.1) #12
  %44 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %input.i, align 4
  %contact_status.i.1 = getelementptr %struct.hidpp_touchpad_raw_xy, ptr %raw, i32 0, i32 1, i32 1, i32 1
  %46 = ptrtoint ptr %contact_status.i.1 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %contact_status.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool6.i.1 = icmp ne i8 %47, 0
  %call7.i.1 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %45, i32 noundef 0, i1 noundef zeroext %tobool6.i.1) #12
  %48 = ptrtoint ptr %contact_status.i.1 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %contact_status.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool9.not.i.1 = icmp eq i8 %49, 0
  br i1 %tobool9.not.i.1, label %if.end.i.1.wtp_touch_event.exit.1_crit_edge, label %if.then10.i.1

if.end.i.1.wtp_touch_event.exit.1_crit_edge:      ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %wtp_touch_event.exit.1

if.then10.i.1:                                    ; preds = %if.end.i.1
  %50 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %input.i, align 4
  %x.i.1 = getelementptr %struct.hidpp_touchpad_raw_xy, ptr %raw, i32 0, i32 1, i32 1, i32 2
  %52 = ptrtoint ptr %x.i.1 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %x.i.1, align 2
  %conv12.i.1 = zext i16 %53 to i32
  tail call void @input_event(ptr noundef %51, i32 noundef 3, i32 noundef 53, i32 noundef %conv12.i.1) #12
  %54 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %input.i, align 4
  %flip_y.i.1 = getelementptr inbounds %struct.wtp_data, ptr %35, i32 0, i32 6
  %56 = ptrtoint ptr %flip_y.i.1 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %flip_y.i.1, align 4, !range !454
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool14.not.i.1 = icmp eq i8 %57, 0
  br i1 %tobool14.not.i.1, label %cond.false.i.1, label %cond.true.i.1

cond.true.i.1:                                    ; preds = %if.then10.i.1
  call void @__sanitizer_cov_trace_pc() #14
  %y_size.i.1 = getelementptr inbounds %struct.wtp_data, ptr %35, i32 0, i32 1
  %58 = ptrtoint ptr %y_size.i.1 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %y_size.i.1, align 2
  %conv16.i.1 = zext i16 %59 to i32
  %y.i.1 = getelementptr %struct.hidpp_touchpad_raw_xy, ptr %raw, i32 0, i32 1, i32 1, i32 3
  %60 = ptrtoint ptr %y.i.1 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %y.i.1, align 2
  %conv17.i.1 = zext i16 %61 to i32
  %sub.i.1 = sub nsw i32 %conv16.i.1, %conv17.i.1
  br label %cond.end.i.1

cond.false.i.1:                                   ; preds = %if.then10.i.1
  call void @__sanitizer_cov_trace_pc() #14
  %y18.i.1 = getelementptr %struct.hidpp_touchpad_raw_xy, ptr %raw, i32 0, i32 1, i32 1, i32 3
  %62 = ptrtoint ptr %y18.i.1 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %y18.i.1, align 2
  %conv19.i.1 = zext i16 %63 to i32
  br label %cond.end.i.1

cond.end.i.1:                                     ; preds = %cond.false.i.1, %cond.true.i.1
  %cond.i.1 = phi i32 [ %sub.i.1, %cond.true.i.1 ], [ %conv19.i.1, %cond.false.i.1 ]
  tail call void @input_event(ptr noundef %55, i32 noundef 3, i32 noundef 54, i32 noundef %cond.i.1) #12
  %64 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %input.i, align 4
  %area.i.1 = getelementptr %struct.hidpp_touchpad_raw_xy, ptr %raw, i32 0, i32 1, i32 1, i32 5
  %66 = ptrtoint ptr %area.i.1 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %area.i.1, align 1
  %conv21.i.1 = zext i8 %67 to i32
  tail call void @input_event(ptr noundef %65, i32 noundef 3, i32 noundef 58, i32 noundef %conv21.i.1) #12
  br label %wtp_touch_event.exit.1

wtp_touch_event.exit.1:                           ; preds = %cond.end.i.1, %if.end.i.1.wtp_touch_event.exit.1_crit_edge, %lor.lhs.false.i.1.wtp_touch_event.exit.1_crit_edge, %wtp_touch_event.exit.wtp_touch_event.exit.1_crit_edge
  %end_of_frame = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw, i32 0, i32 3
  %68 = ptrtoint ptr %end_of_frame to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %end_of_frame, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not = icmp eq i8 %69, 0
  br i1 %tobool.not, label %wtp_touch_event.exit.1.lor.lhs.false_crit_edge, label %land.lhs.true

wtp_touch_event.exit.1.lor.lhs.false_crit_edge:   ; preds = %wtp_touch_event.exit.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %wtp_touch_event.exit.1
  %quirks = getelementptr inbounds %struct.hidpp_device, ptr %hidpp, i32 0, i32 15
  %70 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %quirks, align 4
  %and = and i32 %71, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %input.i, align 4
  %button = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw, i32 0, i32 5
  %74 = ptrtoint ptr %button to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %button, align 1
  %conv2 = zext i8 %75 to i32
  tail call void @input_event(ptr noundef %73, i32 noundef 1, i32 noundef 272, i32 noundef %conv2) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge
  %76 = ptrtoint ptr %end_of_frame to i32
  call void @__asan_load1_noabort(i32 %76)
  %.pr = load i8, ptr %end_of_frame, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool5.not = icmp eq i8 %.pr, 0
  br i1 %tobool5.not, label %if.end.lor.lhs.false_crit_edge, label %if.end.if.then9_crit_edge

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.lor.lhs.false_crit_edge, %wtp_touch_event.exit.1.lor.lhs.false_crit_edge
  %finger_count = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, ptr %raw, i32 0, i32 4
  %77 = ptrtoint ptr %finger_count to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %finger_count, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %78)
  %cmp7 = icmp ult i8 %78, 3
  br i1 %cmp7, label %lor.lhs.false.if.then9_crit_edge, label %lor.lhs.false.if.end12_crit_edge

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %79 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %input.i, align 4
  tail call void @input_mt_sync_frame(ptr noundef %80) #12
  %81 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %input.i, align 4
  tail call void @input_event(ptr noundef %82, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %lor.lhs.false.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_get_slot_by_key(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_snto32(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_field_extract(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnstr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 231)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 231)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !26, !27, !29, !31, !33, !35, !36, !37, !38, !39, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !84, !86, !87, !89, !90, !91, !92, !93, !95, !97, !98, !99, !100, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !183, !185, !186, !187, !189, !190, !191, !192, !194, !195, !196, !198, !199, !200, !201, !203, !205, !206, !207, !209, !211, !213, !214, !215, !217, !219, !221, !222, !223, !225, !227, !228, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !261, !263, !264, !265, !266, !268, !269, !270, !271, !273, !274, !275, !277, !278, !279, !281, !283, !284, !285, !287, !288, !289, !291, !293, !295, !296, !297, !298, !300, !301, !302, !304, !305, !306, !308, !309, !310, !312, !313, !315, !316, !317, !319, !320, !322, !323, !324, !326, !327, !328, !330, !331, !332, !334, !336, !338, !340, !342, !344, !346, !348, !349, !351, !352, !353, !354, !356, !357, !358, !359, !361, !362, !363, !364, !366, !367, !368, !369, !370, !371, !373, !374, !375, !376, !378, !379, !380, !381, !383, !384, !385, !386, !388, !389, !391, !393, !394, !395, !396, !398, !399, !401, !402, !404, !405, !406, !407, !409, !410, !411, !412, !413, !415, !416, !417, !418, !420, !421, !422, !423, !425, !426, !427, !428, !430, !431, !432, !434, !435, !437, !439, !441, !442, !443, !444}
!llvm.module.flags = !{!445, !446, !447, !448, !449, !450, !451, !452}
!llvm.ident = !{!453}

!0 = !{ptr @__UNIQUE_ID_file237, !1, !"__UNIQUE_ID_file237", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_license238, !1, !"__UNIQUE_ID_license238", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author239, !4, !"__UNIQUE_ID_author239", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 31, i32 1}
!5 = !{ptr @__UNIQUE_ID_author240, !6, !"__UNIQUE_ID_author240", i1 false, i1 false}
!6 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 32, i32 1}
!7 = !{ptr @__param_disable_raw_mode, !8, !"__param_disable_raw_mode", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 35, i32 1}
!9 = !{ptr @__UNIQUE_ID_disable_raw_modetype241, !8, !"__UNIQUE_ID_disable_raw_modetype241", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_disable_raw_mode242, !11, !"__UNIQUE_ID_disable_raw_mode242", i1 false, i1 false}
!11 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 36, i32 1}
!12 = !{ptr @__param_disable_tap_to_click, !13, !"__param_disable_tap_to_click", i1 false, i1 false}
!13 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 40, i32 1}
!14 = !{ptr @__UNIQUE_ID_disable_tap_to_clicktype243, !13, !"__UNIQUE_ID_disable_tap_to_clicktype243", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_disable_tap_to_click244, !16, !"__UNIQUE_ID_disable_tap_to_click244", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 41, i32 1}
!17 = !{ptr @__initcall__kmod_hid_logitech_hidpp__252_4374_hidpp_driver_init6, !18, !"__initcall__kmod_hid_logitech_hidpp__252_4374_hidpp_driver_init6", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 4374, i32 1}
!19 = !{ptr @__exitcall_hidpp_driver_exit, !18, !"__exitcall_hidpp_driver_exit", i1 false, i1 false}
!20 = !{ptr @disable_raw_mode, !21, !"disable_raw_mode", i1 false, i1 false}
!21 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 34, i32 13}
!22 = !{ptr @disable_tap_to_click, !23, !"disable_tap_to_click", i1 false, i1 false}
!23 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 39, i32 13}
!24 = !{ptr @__param_str_disable_raw_mode, !8, !"__param_str_disable_raw_mode", i1 false, i1 false}
!25 = !{ptr @__param_str_disable_tap_to_click, !13, !"__param_str_disable_tap_to_click", i1 false, i1 false}
!26 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 4361, i32 10}
!29 = !{ptr @hidpp_driver, !30, !"hidpp_driver", i1 false, i1 false}
!30 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 4360, i32 26}
!31 = !{ptr @hidpp_devices, !32, !"hidpp_devices", i1 false, i1 false}
!32 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 4230, i32 35}
!33 = !{ptr @.str.2, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 4065, i32 3}
!35 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @hidpp_probe._entry, !34, !"_entry", i1 false, i1 false}
!40 = !{ptr @hidpp_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @hidpp_probe.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 4107, i32 2}
!43 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @hidpp_probe.__key.8, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 4108, i32 2}
!46 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @hidpp_probe.__key.10, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 4109, i32 2}
!49 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 4114, i32 3}
!52 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @hidpp_probe._entry.12, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @hidpp_probe._entry_ptr.15, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 4123, i32 3}
!57 = !{ptr @hidpp_probe._entry.16, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @hidpp_probe._entry_ptr.18, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 4129, i32 3}
!61 = !{ptr @hidpp_probe._entry.19, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @hidpp_probe._entry_ptr.21, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 4145, i32 4}
!65 = !{ptr @hidpp_probe._entry.22, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @hidpp_probe._entry_ptr.24, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 4183, i32 3}
!69 = !{ptr @hidpp_probe._entry.25, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @hidpp_probe._entry_ptr.27, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 4190, i32 4}
!73 = !{ptr @hidpp_probe._entry.28, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @hidpp_probe._entry_ptr.30, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 4030, i32 2}
!77 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @hidpp_validate_device._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @hidpp_validate_device._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @ps_attribute_group, !81, !"ps_attribute_group", i1 false, i1 false}
!81 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 3975, i32 37}
!82 = !{ptr @sysfs_attrs, !83, !"sysfs_attrs", i1 false, i1 false}
!83 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 3970, i32 26}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 3968, i32 8}
!86 = !{ptr @dev_attr_builtin_power_supply, !85, !"dev_attr_builtin_power_supply", i1 false, i1 false}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../include/linux/hid.h", i32 963, i32 3}
!89 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @hid_device_io_start._entry, !88, !"_entry", i1 false, i1 false}
!92 = !{ptr @hid_device_io_start._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 837, i32 43}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 839, i32 2}
!97 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @hidpp_unifying_init._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @hidpp_unifying_init._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 845, i32 43}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 846, i32 2}
!104 = !{ptr @hidpp_unifying_init._entry.41, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @hidpp_unifying_init._entry_ptr.43, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 294, i32 3}
!108 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @hidpp_send_message_sync._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @hidpp_send_message_sync._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 301, i32 3}
!113 = !{ptr @hidpp_send_message_sync._entry.46, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @hidpp_send_message_sync._entry_ptr.48, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 309, i32 3}
!117 = !{ptr @hidpp_send_message_sync._entry.49, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @hidpp_send_message_sync._entry_ptr.51, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 317, i32 3}
!121 = !{ptr @hidpp_send_message_sync._entry.52, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @hidpp_send_message_sync._entry_ptr.54, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 439, i32 21}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 448, i32 33}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 909, i32 3}
!129 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @hidpp_root_get_protocol_version._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @hidpp_root_get_protocol_version._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 917, i32 3}
!134 = !{ptr @hidpp_root_get_protocol_version._entry.59, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @hidpp_root_get_protocol_version._entry_ptr.61, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 926, i32 2}
!138 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @hidpp_root_get_protocol_version._entry.62, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @hidpp_root_get_protocol_version._entry_ptr.65, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 3806, i32 3}
!143 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @hidpp_overwrite_name._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @hidpp_overwrite_name._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 3808, i32 3}
!148 = !{ptr @hidpp_overwrite_name._entry.68, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @hidpp_overwrite_name._entry_ptr.70, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 951, i32 3}
!152 = !{ptr @hidpp_devicenametype_get_count._entry, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @hidpp_devicenametype_get_count._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.72, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 975, i32 3}
!156 = !{ptr @hidpp_devicenametype_get_device_name._entry, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @hidpp_devicenametype_get_device_name._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2018, i32 3}
!160 = !{ptr @hidpp_touchpad_get_raw_info._entry, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @hidpp_touchpad_get_raw_info._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 3178, i32 3}
!164 = !{ptr @g920_get_config._entry, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @g920_get_config._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.76, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 3191, i32 3}
!168 = !{ptr @g920_get_config._entry.75, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @g920_get_config._entry_ptr.77, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.79, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 3198, i32 3}
!172 = !{ptr @g920_get_config._entry.78, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @g920_get_config._entry_ptr.80, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.82, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 3210, i32 3}
!176 = !{ptr @g920_get_config._entry.81, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @g920_get_config._entry_ptr.83, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.84, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 3142, i32 2}
!180 = !{ptr @.str.85, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @g920_ff_set_autocenter._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @g920_ff_set_autocenter._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.87, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 3148, i32 3}
!185 = !{ptr @g920_ff_set_autocenter._entry.86, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @g920_ff_set_autocenter._entry_ptr.88, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.89, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 3908, i32 4}
!189 = !{ptr @.str.90, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @hidpp_connect_event._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @hidpp_connect_event._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.92, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 3955, i32 3}
!194 = !{ptr @hidpp_connect_event._entry.91, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @hidpp_connect_event._entry_ptr.93, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.94, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2867, i32 4}
!198 = !{ptr @.str.95, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @wtp_connect._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @wtp_connect._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @m560_config_parameter, !202, !"m560_config_parameter", i1 false, i1 false}
!202 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2909, i32 17}
!203 = !{ptr @.str.96, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 1948, i32 3}
!205 = !{ptr @hidpp_touchpad_fw_items_set._entry, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @hidpp_touchpad_fw_items_set._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @hidpp_initialize_battery.battery_no, !208, !"battery_no", i1 false, i1 false}
!208 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 3704, i32 18}
!209 = !{ptr @.str.97, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 3779, i32 25}
!211 = !{ptr @.str.98, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 1855, i32 3}
!213 = !{ptr @hidpp_solar_request_battery_event._entry, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @hidpp_solar_request_battery_event._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @hidpp_battery_props, !216, !"hidpp_battery_props", i1 false, i1 false}
!216 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 1649, i32 35}
!217 = !{ptr @.str.99, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 1691, i32 18}
!219 = !{ptr @.str.100, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 1319, i32 3}
!221 = !{ptr @hidpp20_battery_get_battery_voltage._entry, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @hidpp20_battery_get_battery_voltage._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @hidpp20_map_battery_capacity.voltages, !224, !"voltages", i1 false, i1 false}
!224 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 1341, i32 19}
!225 = distinct !{null, !226, !"__print_once", i1 false, i1 false}
!226 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 1359, i32 3}
!227 = !{ptr @.str.101, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.102, !226, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @hidpp20_map_battery_capacity._entry, !226, !"_entry", i1 false, i1 false}
!230 = !{ptr @hidpp20_map_battery_capacity._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.103, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 1470, i32 3}
!233 = !{ptr @hidpp20_unifiedbattery_get_capabilities._entry, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @hidpp20_unifiedbattery_get_capabilities._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.104, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 1560, i32 3}
!237 = !{ptr @hidpp20_unifiedbattery_get_status._entry, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @hidpp20_unifiedbattery_get_status._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.105, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 1514, i32 4}
!241 = !{ptr @.str.106, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @hidpp20_unifiedbattery_map_status._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @hidpp20_unifiedbattery_map_status._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.107, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 1136, i32 3}
!246 = !{ptr @hidpp20_batterylevel_get_battery_capacity._entry, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @hidpp20_batterylevel_get_battery_capacity._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.108, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 1162, i32 3}
!250 = !{ptr @hidpp20_batterylevel_get_battery_info._entry, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @hidpp20_batterylevel_get_battery_info._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.109, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 3436, i32 2}
!254 = !{ptr @.str.110, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @hi_res_scroll_enable.__UNIQUE_ID_ddebug250, !253, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!256 = !{ptr @.str.111, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 1794, i32 2}
!258 = !{ptr @.str.112, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @hidpp_hrw_get_wheel_capability._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @hidpp_hrw_get_wheel_capability._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.113, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../include/linux/hid.h", i32 983, i32 3}
!263 = !{ptr @.str.114, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @hid_device_io_stop._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @hid_device_io_stop._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.115, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2555, i32 3}
!268 = !{ptr @.str.116, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @hidpp_ff_init._entry, !267, !"_entry", i1 false, i1 false}
!270 = !{ptr @hidpp_ff_init._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.118, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2562, i32 3}
!273 = !{ptr @hidpp_ff_init._entry.117, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @hidpp_ff_init._entry_ptr.119, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.121, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2579, i32 3}
!277 = !{ptr @hidpp_ff_init._entry.120, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @hidpp_ff_init._entry_ptr.122, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.123, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2594, i32 13}
!281 = !{ptr @.str.125, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2619, i32 3}
!283 = !{ptr @hidpp_ff_init._entry.124, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @hidpp_ff_init._entry_ptr.126, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.128, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2624, i32 2}
!287 = !{ptr @hidpp_ff_init._entry.127, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @hidpp_ff_init._entry_ptr.129, !286, !"_entry_ptr", i1 false, i1 false}
!289 = distinct !{null, !290, !"hidpp_ff_effects", i1 false, i1 false}
!290 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2152, i32 27}
!291 = distinct !{null, !292, !"hidpp_ff_effects_v2", i1 false, i1 false}
!292 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2167, i32 27}
!293 = !{ptr @.str.130, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2320, i32 3}
!295 = !{ptr @.str.131, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @hidpp_ff_upload_effect._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @hidpp_ff_upload_effect._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.133, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2323, i32 3}
!300 = !{ptr @hidpp_ff_upload_effect._entry.132, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @hidpp_ff_upload_effect._entry_ptr.134, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.136, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2348, i32 4}
!304 = !{ptr @hidpp_ff_upload_effect._entry.135, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @hidpp_ff_upload_effect._entry_ptr.137, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.139, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2367, i32 3}
!308 = !{ptr @hidpp_ff_upload_effect._entry.138, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @hidpp_ff_upload_effect._entry_ptr.140, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @hidpp_ff_upload_effect._entry.141, !311, !"_entry", i1 false, i1 false}
!311 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2372, i32 3}
!312 = !{ptr @hidpp_ff_upload_effect._entry_ptr.142, !311, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.144, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2394, i32 3}
!315 = !{ptr @hidpp_ff_upload_effect._entry.143, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @hidpp_ff_upload_effect._entry_ptr.145, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @hidpp_ff_upload_effect._entry.146, !318, !"_entry", i1 false, i1 false}
!318 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2398, i32 3}
!319 = !{ptr @hidpp_ff_upload_effect._entry_ptr.147, !318, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.149, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2422, i32 3}
!322 = !{ptr @hidpp_ff_upload_effect._entry.148, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @hidpp_ff_upload_effect._entry_ptr.150, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.152, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2428, i32 3}
!326 = !{ptr @hidpp_ff_upload_effect._entry.151, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @hidpp_ff_upload_effect._entry_ptr.153, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.155, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2433, i32 3}
!330 = !{ptr @hidpp_ff_upload_effect._entry.154, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @hidpp_ff_upload_effect._entry_ptr.156, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @sin_table, !333, !"sin_table", i1 false, i1 false}
!333 = !{!"../include/linux/fixp-arith.h", i32 22, i32 18}
!334 = !{ptr @HIDPP_FF_CONDITION_CMDS, !335, !"HIDPP_FF_CONDITION_CMDS", i1 false, i1 false}
!335 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2174, i32 17}
!336 = !{ptr @.str.157, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2182, i32 2}
!338 = !{ptr @.str.158, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2183, i32 2}
!340 = !{ptr @.str.159, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2184, i32 2}
!342 = !{ptr @.str.160, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2185, i32 2}
!344 = !{ptr @HIDPP_FF_CONDITION_NAMES, !345, !"HIDPP_FF_CONDITION_NAMES", i1 false, i1 false}
!345 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2181, i32 20}
!346 = !{ptr @hidpp_ff_queue_work.__key, !347, !"__key", i1 false, i1 false}
!347 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2276, i32 2}
!348 = !{ptr @.str.161, !347, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @.str.162, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2289, i32 3}
!351 = !{ptr @.str.163, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @hidpp_ff_queue_work._entry, !350, !"_entry", i1 false, i1 false}
!353 = !{ptr @hidpp_ff_queue_work._entry_ptr, !350, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.164, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2227, i32 3}
!356 = !{ptr @.str.165, !355, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @hidpp_ff_work_handler._entry, !355, !"_entry", i1 false, i1 false}
!358 = !{ptr @hidpp_ff_work_handler._entry_ptr, !355, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.166, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2457, i32 2}
!361 = !{ptr @.str.167, !360, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @hidpp_ff_erase_effect._entry, !360, !"_entry", i1 false, i1 false}
!363 = !{ptr @hidpp_ff_erase_effect._entry_ptr, !360, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.168, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2447, i32 2}
!366 = !{ptr @.str.169, !365, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @hidpp_ff_playback._entry, !365, !"_entry", i1 false, i1 false}
!368 = !{ptr @hidpp_ff_playback._entry_ptr, !365, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.170, !365, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @.str.171, !365, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @.str.172, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2489, i32 2}
!373 = !{ptr @.str.173, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @hidpp_ff_set_gain._entry, !372, !"_entry", i1 false, i1 false}
!375 = !{ptr @hidpp_ff_set_gain._entry_ptr, !372, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.174, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2467, i32 2}
!378 = !{ptr @.str.175, !377, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @hidpp_ff_set_autocenter._entry, !377, !"_entry", i1 false, i1 false}
!380 = !{ptr @hidpp_ff_set_autocenter._entry_ptr, !377, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.176, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2535, i32 2}
!383 = !{ptr @.str.177, !382, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @hidpp_ff_destroy._entry, !382, !"_entry", i1 false, i1 false}
!385 = !{ptr @hidpp_ff_destroy._entry_ptr, !382, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.178, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2528, i32 8}
!388 = !{ptr @dev_attr_range, !387, !"dev_attr_range", i1 false, i1 false}
!389 = !{ptr @.str.179, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2506, i32 35}
!391 = !{ptr @.str.180, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 3639, i32 4}
!393 = !{ptr @.str.181, !392, !"<string literal>", i1 false, i1 false}
!394 = !{ptr @hidpp_raw_event._entry, !392, !"_entry", i1 false, i1 false}
!395 = !{ptr @hidpp_raw_event._entry_ptr, !392, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @hidpp_raw_event._entry.182, !397, !"_entry", i1 false, i1 false}
!397 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 3647, i32 4}
!398 = !{ptr @hidpp_raw_event._entry_ptr.183, !397, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @hidpp_raw_event._entry.184, !400, !"_entry", i1 false, i1 false}
!400 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 3655, i32 4}
!401 = !{ptr @hidpp_raw_event._entry_ptr.185, !400, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @.str.186, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 3570, i32 4}
!404 = !{ptr @.str.187, !403, !"<string literal>", i1 false, i1 false}
!405 = !{ptr @hidpp_raw_hidpp_event._entry, !403, !"_entry", i1 false, i1 false}
!406 = !{ptr @hidpp_raw_hidpp_event._entry_ptr, !403, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @.str.188, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 3578, i32 3}
!409 = !{ptr @hidpp_raw_hidpp_event._rs, !408, !"_rs", i1 false, i1 false}
!410 = !{ptr @.str.190, !408, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @hidpp_raw_hidpp_event._entry.189, !408, !"_entry", i1 false, i1 false}
!412 = !{ptr @hidpp_raw_hidpp_event._entry_ptr.191, !408, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @hidpp_raw_hidpp_event._rs.192, !414, !"_rs", i1 false, i1 false}
!414 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 3580, i32 3}
!415 = !{ptr @.str.194, !414, !"<string literal>", i1 false, i1 false}
!416 = !{ptr @hidpp_raw_hidpp_event._entry.193, !414, !"_entry", i1 false, i1 false}
!417 = !{ptr @hidpp_raw_hidpp_event._entry_ptr.195, !414, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @.str.196, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2784, i32 4}
!420 = !{ptr @.str.197, !419, !"<string literal>", i1 false, i1 false}
!421 = !{ptr @wtp_raw_event._entry, !419, !"_entry", i1 false, i1 false}
!422 = !{ptr @wtp_raw_event._entry_ptr, !419, !"_entry_ptr", i1 false, i1 false}
!423 = !{ptr @.str.198, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2944, i32 3}
!425 = !{ptr @.str.199, !424, !"<string literal>", i1 false, i1 false}
!426 = !{ptr @m560_raw_event._entry, !424, !"_entry", i1 false, i1 false}
!427 = !{ptr @m560_raw_event._entry_ptr, !424, !"_entry_ptr", i1 false, i1 false}
!428 = !{ptr @.str.201, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2949, i32 3}
!430 = !{ptr @m560_raw_event._entry.200, !429, !"_entry", i1 false, i1 false}
!431 = !{ptr @m560_raw_event._entry_ptr.202, !429, !"_entry_ptr", i1 false, i1 false}
!432 = !{ptr @m560_raw_event._entry.203, !433, !"_entry", i1 false, i1 false}
!433 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 2984, i32 4}
!434 = !{ptr @m560_raw_event._entry_ptr.204, !433, !"_entry_ptr", i1 false, i1 false}
!435 = !{ptr @hidpp_usages, !436, !"hidpp_usages", i1 false, i1 false}
!436 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 4355, i32 34}
!437 = !{ptr @hidpp10_consumer_keys_report_fixup.consumer_rdesc_start, !438, !"consumer_rdesc_start", i1 false, i1 false}
!438 = !{!"../drivers/hid/hid-logitech-hidpp.c", i32 3353, i32 20}
!439 = distinct !{null, !440, !"_rs", i1 false, i1 false}
!440 = !{!"../include/linux/hid.h", i32 1036, i32 3}
!441 = !{ptr @__func__.hid_map_usage, !440, !"<string literal>", i1 false, i1 false}
!442 = !{ptr @.str.205, !440, !"<string literal>", i1 false, i1 false}
!443 = !{ptr @hid_map_usage._entry, !440, !"_entry", i1 false, i1 false}
!444 = !{ptr @hid_map_usage._entry_ptr, !440, !"_entry_ptr", i1 false, i1 false}
!445 = !{i32 1, !"wchar_size", i32 2}
!446 = !{i32 1, !"min_enum_size", i32 4}
!447 = !{i32 8, !"branch-target-enforcement", i32 0}
!448 = !{i32 8, !"sign-return-address", i32 0}
!449 = !{i32 8, !"sign-return-address-all", i32 0}
!450 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!451 = !{i32 7, !"uwtable", i32 1}
!452 = !{i32 7, !"frame-pointer", i32 2}
!453 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!454 = !{i8 0, i8 2}
!455 = !{i64 2148673631}
!456 = !{i64 2148588940, i64 2148588972, i64 2148589001, i64 2148589035, i64 2148589066, i64 2148589089}
!457 = !{i64 2148673860}
!458 = !{!"branch_weights", i32 1, i32 2000}
!459 = !{i64 2148401613, i64 2148401618, i64 2148401631, i64 2148401675, i64 2148401709, i64 2148401730}
!460 = !{!"auto-init"}
!461 = !{i64 2148590685, i64 2148590711, i64 2148590740, i64 2148590774, i64 2148590805, i64 2148590828}
!462 = !{!"branch_weights", i32 1073205, i32 2146410443}
