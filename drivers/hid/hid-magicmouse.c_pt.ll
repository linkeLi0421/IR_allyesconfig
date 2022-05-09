; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-magicmouse.c_pt.bc'
source_filename = "../drivers/hid/hid-magicmouse.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.magicmouse_sc = type { ptr, i32, i32, i32, i32, [16 x %struct.anon.69], [16 x i32], ptr, %struct.delayed_work, %struct.timer_list }
%struct.anon.69 = type { i16, i16, i16, i16, i16, i16, i8, i8, i8 }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }

@__param_str_emulate_3button = internal constant [31 x i8] c"hid_magicmouse.emulate_3button\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@emulate_3button = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_emulate_3button = internal constant %struct.kernel_param { ptr @__param_str_emulate_3button, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @emulate_3button } }, section "__param", align 4
@__UNIQUE_ID_emulate_3buttontype223 = internal constant [45 x i8] c"hid_magicmouse.parmtype=emulate_3button:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_emulate_3button224 = internal constant [60 x i8] c"hid_magicmouse.parm=emulate_3button:Emulate a middle button\00", section ".modinfo", align 1
@__param_str_emulate_scroll_wheel = internal constant [36 x i8] c"hid_magicmouse.emulate_scroll_wheel\00", align 1
@emulate_scroll_wheel = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_emulate_scroll_wheel = internal constant %struct.kernel_param { ptr @__param_str_emulate_scroll_wheel, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @emulate_scroll_wheel } }, section "__param", align 4
@__UNIQUE_ID_emulate_scroll_wheeltype225 = internal constant [50 x i8] c"hid_magicmouse.parmtype=emulate_scroll_wheel:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_emulate_scroll_wheel226 = internal constant [64 x i8] c"hid_magicmouse.parm=emulate_scroll_wheel:Emulate a scroll wheel\00", section ".modinfo", align 1
@__param_str_scroll_speed = internal constant [28 x i8] c"hid_magicmouse.scroll_speed\00", align 1
@__param_ops_scroll_speed = internal constant %struct.kernel_param_ops { i32 0, ptr @param_set_scroll_speed, ptr @param_get_uint, ptr null }, align 4
@scroll_speed = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_scroll_speed = internal constant %struct.kernel_param { ptr @__param_str_scroll_speed, ptr null, ptr @__param_ops_scroll_speed, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @scroll_speed } }, section "__param", align 4
@__UNIQUE_ID_scroll_speed227 = internal constant [80 x i8] c"hid_magicmouse.parm=scroll_speed:Scroll speed, value from 0 (slow) to 63 (fast)\00", section ".modinfo", align 1
@__param_str_scroll_acceleration = internal constant [35 x i8] c"hid_magicmouse.scroll_acceleration\00", align 1
@scroll_acceleration = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_scroll_acceleration = internal constant %struct.kernel_param { ptr @__param_str_scroll_acceleration, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @scroll_acceleration } }, section "__param", align 4
@__UNIQUE_ID_scroll_accelerationtype228 = internal constant [49 x i8] c"hid_magicmouse.parmtype=scroll_acceleration:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_scroll_acceleration229 = internal constant [76 x i8] c"hid_magicmouse.parm=scroll_acceleration:Accelerate sequential scroll events\00", section ".modinfo", align 1
@__param_str_report_undeciphered = internal constant [35 x i8] c"hid_magicmouse.report_undeciphered\00", align 1
@report_undeciphered = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_report_undeciphered = internal constant %struct.kernel_param { ptr @__param_str_report_undeciphered, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @report_undeciphered } }, section "__param", align 4
@__UNIQUE_ID_report_undecipheredtype230 = internal constant [49 x i8] c"hid_magicmouse.parmtype=report_undeciphered:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_report_undeciphered231 = internal constant [106 x i8] c"hid_magicmouse.parm=report_undeciphered:Report undeciphered multi-touch state field using a MSC_RAW event\00", section ".modinfo", align 1
@__initcall__kmod_hid_magicmouse__236_966_magicmouse_driver_init6 = internal global ptr @magicmouse_driver_init, section ".initcall6.init", align 4
@magicmouse_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @magic_mice, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @magicmouse_probe, ptr @magicmouse_remove, ptr null, ptr @magicmouse_raw_event, ptr null, ptr @magicmouse_event, ptr null, ptr @magicmouse_report_fixup, ptr @magicmouse_input_mapping, ptr null, ptr @magicmouse_input_configured, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_magicmouse_driver_exit = internal global ptr @magicmouse_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file237 = internal constant [47 x i8] c"hid_magicmouse.file=drivers/hid/hid-magicmouse\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [27 x i8] c"hid_magicmouse.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hid_magicmouse\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"magicmouse\00", [21 x i8] zeroinitializer }, align 32
@magic_mice = internal constant { [7 x %struct.hid_device_id], [48 x i8] } { [7 x %struct.hid_device_id] [%struct.hid_device_id { i16 5, i16 0, i32 1452, i32 781, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 76, i32 617, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 617, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 782, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 76, i32 613, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 613, i32 0 }, %struct.hid_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@magicmouse_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 805, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"can't alloc magicmouse descriptor\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"magicmouse_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/hid/hid-magicmouse.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@magicmouse_probe._entry_ptr = internal global ptr @magicmouse_probe._entry, section ".printk_index", align 4
@magicmouse_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&(&msc->work)->work)\00", [57 x i8] zeroinitializer }, align 32
@magicmouse_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&msc->work)->timer\00", [43 x i8] zeroinitializer }, align 32
@magicmouse_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 818, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"magicmouse hid parse failed\0A\00", [35 x i8] zeroinitializer }, align 32
@magicmouse_probe._entry_ptr.12 = internal global ptr @magicmouse_probe._entry.10, section ".printk_index", align 4
@magicmouse_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 824, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"magicmouse hw start failed\0A\00", [36 x i8] zeroinitializer }, align 32
@magicmouse_probe._entry_ptr.15 = internal global ptr @magicmouse_probe._entry.13, section ".printk_index", align 4
@magicmouse_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&msc->battery_timer)\00", [42 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@magicmouse_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 839, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"magicmouse input not registered\0A\00", [63 x i8] zeroinitializer }, align 32
@magicmouse_probe._entry_ptr.20 = internal global ptr @magicmouse_probe._entry.18, section ".printk_index", align 4
@magicmouse_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 865, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to register touch report\0A\00", [63 x i8] zeroinitializer }, align 32
@magicmouse_probe._entry_ptr.23 = internal global ptr @magicmouse_probe._entry.21, section ".printk_index", align 4
@magicmouse_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 881, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to request touch data (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@magicmouse_probe._entry_ptr.26 = internal global ptr @magicmouse_probe._entry.24, section ".printk_index", align 4
@magicmouse_enable_mt_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.27, ptr @.str.4, i32 755, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"magicmouse_enable_mt_work\00", [38 x i8] zeroinitializer }, align 32
@magicmouse_enable_mt_work._entry_ptr = internal global ptr @magicmouse_enable_mt_work._entry, section ".printk_index", align 4
@__const.magicmouse_enable_multitouch.feature_mt_trackpad2_bt = private unnamed_addr constant [3 x i8] c"\F1\02\01", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@magicmouse_raw_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 389, ptr @.str.30, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"invalid size value (%d) for TRACKPAD_REPORT_ID\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"magicmouse_raw_event\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@magicmouse_raw_event._entry_ptr = internal global ptr @magicmouse_raw_event._entry, section ".printk_index", align 4
@magicmouse_raw_event._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.4, i32 411, ptr @.str.30, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"invalid size value (%d) for TRACKPAD2_USB_REPORT_ID\0A\00", [43 x i8] zeroinitializer }, align 32
@magicmouse_raw_event._entry_ptr.33 = internal global ptr @magicmouse_raw_event._entry.31, section ".printk_index", align 4
@magicmouse_raw_event._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.29, ptr @.str.4, i32 427, ptr @.str.30, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"invalid size value (%d) for MOUSE_REPORT_ID\0A\00", [51 x i8] zeroinitializer }, align 32
@magicmouse_raw_event._entry_ptr.36 = internal global ptr @magicmouse_raw_event._entry.34, section ".printk_index", align 4
@magicmouse_raw_event._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.29, ptr @.str.4, i32 455, ptr @.str.30, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"invalid size value (%d) for MOUSE2_REPORT_ID\0A\00", [50 x i8] zeroinitializer }, align 32
@magicmouse_raw_event._entry_ptr.39 = internal global ptr @magicmouse_raw_event._entry.37, section ".printk_index", align 4
@magicmouse_report_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 923, ptr @.str.42, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"fixing up magicmouse battery report descriptor\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"magicmouse_report_fixup\00", [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@magicmouse_report_fixup._entry_ptr = internal global ptr @magicmouse_report_fixup._entry, section ".printk_index", align 4
@magicmouse_input_configured._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 701, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"magicmouse setup input failed (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"magicmouse_input_configured\00", [36 x i8] zeroinitializer }, align 32
@magicmouse_input_configured._entry_ptr = internal global ptr @magicmouse_input_configured._entry, section ".printk_index", align 4
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Apple Inc. Magic Trackpad\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Apple Inc. Magic Trackpad 2\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 613, i64 617]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 613, i64 617]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 613, i64 617, i64 781]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 613, i64 617]
@__sancov_gen_cov_switch_values.50 = internal global [8 x i64] [i64 6, i64 8, i64 2, i64 18, i64 40, i64 41, i64 49, i64 247]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 16, i64 613, i64 617, i64 781]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 613, i64 617]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 16, i64 613, i64 782]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 16, i64 613, i64 617, i64 781]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 16, i64 613, i64 617, i64 781]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 613, i64 617]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 613, i64 617]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 16, i64 613, i64 617, i64 781]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 64]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 16, i64 613, i64 617, i64 781]
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"emulate_3button\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 23, i32 13 }
@___asan_gen_.64 = private unnamed_addr constant [21 x i8] c"emulate_scroll_wheel\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 30, i32 13 }
@___asan_gen_.67 = private unnamed_addr constant [13 x i8] c"scroll_speed\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 34, i32 21 }
@___asan_gen_.70 = private unnamed_addr constant [20 x i8] c"scroll_acceleration\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 46, i32 13 }
@___asan_gen_.73 = private unnamed_addr constant [20 x i8] c"report_undeciphered\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 50, i32 13 }
@___asan_gen_.76 = private unnamed_addr constant [18 x i8] c"magicmouse_driver\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 955, i32 26 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 966, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 956, i32 10 }
@___asan_gen_.85 = private unnamed_addr constant [11 x i8] c"magic_mice\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 938, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 805, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 811, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 818, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 824, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 828, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 839, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 865, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 881, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 755, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 388, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 410, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 426, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 454, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 922, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 701, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 556, i32 19 }
@___asan_gen_.214 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.215 = private constant [32 x i8] c"../drivers/hid/hid-magicmouse.c\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 558, i32 19 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_emulate_3button224, ptr @__UNIQUE_ID_emulate_3buttontype223, ptr @__UNIQUE_ID_emulate_scroll_wheel226, ptr @__UNIQUE_ID_emulate_scroll_wheeltype225, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__UNIQUE_ID_report_undeciphered231, ptr @__UNIQUE_ID_report_undecipheredtype230, ptr @__UNIQUE_ID_scroll_acceleration229, ptr @__UNIQUE_ID_scroll_accelerationtype228, ptr @__UNIQUE_ID_scroll_speed227, ptr @__exitcall_magicmouse_driver_exit, ptr @__initcall__kmod_hid_magicmouse__236_966_magicmouse_driver_init6, ptr @__param_emulate_3button, ptr @__param_emulate_scroll_wheel, ptr @__param_report_undeciphered, ptr @__param_scroll_acceleration, ptr @__param_scroll_speed, ptr @magicmouse_driver_exit, ptr @magicmouse_enable_mt_work._entry, ptr @magicmouse_enable_mt_work._entry_ptr, ptr @magicmouse_input_configured._entry, ptr @magicmouse_input_configured._entry_ptr, ptr @magicmouse_probe._entry, ptr @magicmouse_probe._entry.10, ptr @magicmouse_probe._entry.13, ptr @magicmouse_probe._entry.18, ptr @magicmouse_probe._entry.21, ptr @magicmouse_probe._entry.24, ptr @magicmouse_probe._entry_ptr, ptr @magicmouse_probe._entry_ptr.12, ptr @magicmouse_probe._entry_ptr.15, ptr @magicmouse_probe._entry_ptr.20, ptr @magicmouse_probe._entry_ptr.23, ptr @magicmouse_probe._entry_ptr.26, ptr @magicmouse_raw_event._entry, ptr @magicmouse_raw_event._entry.31, ptr @magicmouse_raw_event._entry.34, ptr @magicmouse_raw_event._entry.37, ptr @magicmouse_raw_event._entry_ptr, ptr @magicmouse_raw_event._entry_ptr.33, ptr @magicmouse_raw_event._entry_ptr.36, ptr @magicmouse_raw_event._entry_ptr.39, ptr @magicmouse_report_fixup._entry, ptr @magicmouse_report_fixup._entry_ptr, ptr @emulate_3button, ptr @emulate_scroll_wheel, ptr @scroll_speed, ptr @scroll_acceleration, ptr @report_undeciphered, ptr @magicmouse_driver, ptr @.str, ptr @.str.1, ptr @magic_mice, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @magicmouse_probe.__key, ptr @.str.7, ptr @magicmouse_probe.__key.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @magicmouse_probe.__key.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emulate_3button to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emulate_scroll_wheel to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scroll_speed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scroll_acceleration to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_undeciphered to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magicmouse_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magic_mice to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magicmouse_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magicmouse_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magicmouse_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magicmouse_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magicmouse_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magicmouse_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magicmouse_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magicmouse_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magicmouse_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magicmouse_enable_mt_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magicmouse_raw_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magicmouse_raw_event._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magicmouse_raw_event._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magicmouse_raw_event._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magicmouse_report_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magicmouse_input_configured._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @magicmouse_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @magicmouse_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @magicmouse_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hid_unregister_driver(ptr noundef nonnull @magicmouse_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_scroll_speed(ptr noundef %val, ptr nocapture noundef readnone %kp) #2 align 64 {
entry:
  %speed = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed) #8
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %speed, align 4, !annotation !139
  %tobool.not = icmp eq ptr %val, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef nonnull %val, i32 noundef 0, ptr noundef nonnull %speed) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %1 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %2)
  %cmp = icmp ugt i32 %2, 63
  br i1 %cmp, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  store i32 %2, ptr @scroll_speed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_uint(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @magicmouse_probe(ptr noundef %hdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %feature_mt.i = alloca [2 x i8], align 2
  %feature_mt_mouse2.i = alloca [3 x i8], align 1
  %feature_mt_trackpad2_usb.i = alloca [2 x i8], align 2
  %feature_mt_trackpad2_bt.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 492, i32 noundef 3520) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %scroll_accel = getelementptr inbounds %struct.magicmouse_sc, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %scroll_accel to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 7, ptr %scroll_accel, align 4
  %hdev2 = getelementptr inbounds %struct.magicmouse_sc, ptr %call.i, i32 0, i32 7
  %1 = ptrtoint ptr %hdev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %hdev, ptr %hdev2, align 4
  %work = getelementptr inbounds %struct.magicmouse_sc, ptr %call.i, i32 0, i32 8
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #8
  %2 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.magicmouse_sc, ptr %call.i, i32 0, i32 8, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @magicmouse_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry12 = getelementptr inbounds %struct.magicmouse_sc, ptr %call.i, i32 0, i32 8, i32 0, i32 1
  %3 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.magicmouse_sc, ptr %call.i, i32 0, i32 8, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.magicmouse_sc, ptr %call.i, i32 0, i32 8, i32 0, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @magicmouse_enable_mt_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.magicmouse_sc, ptr %call.i, i32 0, i32 8, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef nonnull @.str.9, ptr noundef nonnull @magicmouse_probe.__key.8) #8
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 4
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data, align 4
  %quirks = getelementptr inbounds %struct.magicmouse_sc, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %quirks, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i168 = tail call i32 @hid_open_report(ptr noundef %hdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool.not = icmp eq i32 %call.i168, 0
  br i1 %tobool.not, label %if.end29, label %do.end27

do.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #11
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %call30 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %do.body38, label %do.end35

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #11
  br label %cleanup

do.body38:                                        ; preds = %if.end29
  %battery_timer = getelementptr inbounds %struct.magicmouse_sc, ptr %call.i, i32 0, i32 9
  tail call void @init_timer_key(ptr noundef %battery_timer, ptr noundef nonnull @magicmouse_battery_timer_tick, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @magicmouse_probe.__key.16) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %10, 6000
  %call43 = tail call i32 @mod_timer(ptr noundef %battery_timer, i32 noundef %add) #8
  %battery.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 23
  %11 = ptrtoint ptr %battery.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %battery.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %do.body38.magicmouse_fetch_battery.exit_crit_edge, label %lor.lhs.false.i

do.body38.magicmouse_fetch_battery.exit_crit_edge: ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  br label %magicmouse_fetch_battery.exit

lor.lhs.false.i:                                  ; preds = %do.body38
  %vendor.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 10
  %13 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1452, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 1452
  br i1 %cmp.not.i, label %lor.lhs.false1.i, label %lor.lhs.false.i.magicmouse_fetch_battery.exit_crit_edge

lor.lhs.false.i.magicmouse_fetch_battery.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %magicmouse_fetch_battery.exit

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %product.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %15 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %product.i, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %lor.lhs.false1.i.magicmouse_fetch_battery.exit_crit_edge [
    i32 617, label %lor.lhs.false1.i.if.end.i_crit_edge
    i32 613, label %lor.lhs.false1.i.if.end.i_crit_edge183
  ]

lor.lhs.false1.i.if.end.i_crit_edge183:           ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

lor.lhs.false1.i.if.end.i_crit_edge:              ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

lor.lhs.false1.i.magicmouse_fetch_battery.exit_crit_edge: ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %magicmouse_fetch_battery.exit

if.end.i:                                         ; preds = %lor.lhs.false1.i.if.end.i_crit_edge, %lor.lhs.false1.i.if.end.i_crit_edge183
  %battery_report_type.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 27
  %18 = ptrtoint ptr %battery_report_type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %battery_report_type.i, align 8
  %battery_report_id.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 28
  %20 = ptrtoint ptr %battery_report_id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %battery_report_id.i, align 4
  %arrayidx6.i = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 %19, i32 2, i32 %21
  %22 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.not.i = icmp eq ptr %23, null
  br i1 %tobool7.not.i, label %if.end.i.magicmouse_fetch_battery.exit_crit_edge, label %lor.lhs.false8.i

if.end.i.magicmouse_fetch_battery.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %magicmouse_fetch_battery.exit

lor.lhs.false8.i:                                 ; preds = %if.end.i
  %maxfield.i = getelementptr inbounds %struct.hid_report, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp9.i = icmp eq i32 %25, 0
  br i1 %cmp9.i, label %lor.lhs.false8.i.magicmouse_fetch_battery.exit_crit_edge, label %if.end11.i

lor.lhs.false8.i.magicmouse_fetch_battery.exit_crit_edge: ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %magicmouse_fetch_battery.exit

if.end11.i:                                       ; preds = %lor.lhs.false8.i
  %battery_capacity.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 24
  %26 = ptrtoint ptr %battery_capacity.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %battery_capacity.i, align 4
  %battery_max.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 26
  %28 = ptrtoint ptr %battery_max.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %battery_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp12.i = icmp eq i32 %27, %29
  br i1 %cmp12.i, label %if.end11.i.magicmouse_fetch_battery.exit_crit_edge, label %if.end14.i

if.end11.i.magicmouse_fetch_battery.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %magicmouse_fetch_battery.exit

if.end14.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hid_hw_request(ptr noundef %hdev, ptr noundef nonnull %23, i32 noundef 1) #8
  br label %magicmouse_fetch_battery.exit

magicmouse_fetch_battery.exit:                    ; preds = %if.end14.i, %if.end11.i.magicmouse_fetch_battery.exit_crit_edge, %lor.lhs.false8.i.magicmouse_fetch_battery.exit_crit_edge, %if.end.i.magicmouse_fetch_battery.exit_crit_edge, %lor.lhs.false1.i.magicmouse_fetch_battery.exit_crit_edge, %lor.lhs.false.i.magicmouse_fetch_battery.exit_crit_edge, %do.body38.magicmouse_fetch_battery.exit_crit_edge
  %vendor = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 2
  %30 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1452, i32 %31)
  %cmp45 = icmp eq i32 %31, 1452
  br i1 %cmp45, label %land.lhs.true, label %magicmouse_fetch_battery.exit.if.end52_crit_edge

magicmouse_fetch_battery.exit.if.end52_crit_edge: ; preds = %magicmouse_fetch_battery.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

land.lhs.true:                                    ; preds = %magicmouse_fetch_battery.exit
  %product = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 3
  %32 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %product, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %33, label %land.lhs.true.if.end52_crit_edge [
    i32 617, label %land.lhs.true.cleanup_crit_edge
    i32 613, label %land.lhs.true49
  ]

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

land.lhs.true49:                                  ; preds = %land.lhs.true
  %type = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 13
  %35 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp50.not = icmp eq i32 %36, 1
  br i1 %cmp50.not, label %land.lhs.true49.if.end52_crit_edge, label %land.lhs.true49.cleanup_crit_edge

land.lhs.true49.cleanup_crit_edge:                ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true49.if.end52_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.end52:                                         ; preds = %land.lhs.true49.if.end52_crit_edge, %land.lhs.true.if.end52_crit_edge, %magicmouse_fetch_battery.exit.if.end52_crit_edge
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  %tobool53.not = icmp eq ptr %38, null
  br i1 %tobool53.not, label %do.end57, label %if.end59

do.end57:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #11
  br label %err_stop_hw

if.end59:                                         ; preds = %if.end52
  %product60 = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 3
  %39 = ptrtoint ptr %product60 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %product60, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %40, label %if.else79 [
    i32 781, label %if.end59.if.end84_crit_edge
    i32 617, label %if.then66
    i32 613, label %if.then71
  ]

if.end59.if.end84_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then66:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then71:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 76, i32 %31)
  %cmp73 = icmp eq i32 %31, 76
  %. = select i1 %cmp73, i32 49, i32 2
  br label %if.end84

if.else79:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %call80 = tail call ptr @hid_register_report(ptr noundef %hdev, i32 noundef 0, i32 noundef 40, i32 noundef 0) #8
  br label %if.end84

if.end84:                                         ; preds = %if.else79, %if.then71, %if.then66, %if.end59.if.end84_crit_edge
  %.sink = phi i32 [ 18, %if.then66 ], [ 247, %if.else79 ], [ 41, %if.end59.if.end84_crit_edge ], [ %., %if.then71 ]
  %call67 = tail call ptr @hid_register_report(ptr noundef %hdev, i32 noundef 0, i32 noundef %.sink, i32 noundef 0) #8
  %tobool85.not = icmp eq ptr %call67, null
  br i1 %tobool85.not, label %do.end89, label %if.end91

do.end89:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #11
  br label %err_stop_hw

if.end91:                                         ; preds = %if.end84
  %size = getelementptr inbounds %struct.hid_report, ptr %call67, i32 0, i32 7
  %42 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 6, ptr %size, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %feature_mt.i) #8
  %43 = ptrtoint ptr %feature_mt.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 -10495, ptr %feature_mt.i, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %feature_mt_mouse2.i) #8
  %44 = call ptr @memcpy(ptr %feature_mt_mouse2.i, ptr @__const.magicmouse_enable_multitouch.feature_mt_trackpad2_bt, i32 3)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %feature_mt_trackpad2_usb.i) #8
  %45 = ptrtoint ptr %feature_mt_trackpad2_usb.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 513, ptr %feature_mt_trackpad2_usb.i, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %feature_mt_trackpad2_bt.i) #8
  %46 = call ptr @memcpy(ptr %feature_mt_trackpad2_bt.i, ptr @__const.magicmouse_enable_multitouch.feature_mt_trackpad2_bt, i32 3)
  %product.i169 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %47 = ptrtoint ptr %product.i169 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %product.i169, align 8
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %48, label %if.else9.i [
    i32 613, label %if.then.i
    i32 617, label %if.end91.if.end12.i_crit_edge
  ]

if.end91.if.end12.i_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then.i:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  %vendor.i170 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 10
  %50 = ptrtoint ptr %vendor.i170 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vendor.i170, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 76, i32 %51)
  %cmp1.i = icmp eq i32 %51, 76
  %feature_mt_trackpad2_bt.feature_mt_trackpad2_usb.i = select i1 %cmp1.i, ptr %feature_mt_trackpad2_bt.i, ptr %feature_mt_trackpad2_usb.i
  %..i = select i1 %cmp1.i, i32 3, i32 2
  br label %if.end12.i

if.else9.i:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else9.i, %if.then.i, %if.end91.if.end12.i_crit_edge
  %feature.0.i = phi ptr [ %feature_mt.i, %if.else9.i ], [ %feature_mt_trackpad2_bt.feature_mt_trackpad2_usb.i, %if.then.i ], [ %feature_mt_mouse2.i, %if.end91.if.end12.i_crit_edge ]
  %feature_size.0.i = phi i32 [ 2, %if.else9.i ], [ %..i, %if.then.i ], [ 3, %if.end91.if.end12.i_crit_edge ]
  %call.i171 = call ptr @kmemdup(ptr noundef nonnull %feature.0.i, i32 noundef %feature_size.0.i, i32 noundef 3264) #8
  %tobool.not.i172 = icmp eq ptr %call.i171, null
  br i1 %tobool.not.i172, label %magicmouse_enable_multitouch.exit.thread, label %magicmouse_enable_multitouch.exit

magicmouse_enable_multitouch.exit:                ; preds = %if.end12.i
  %52 = ptrtoint ptr %call.i171 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %call.i171, align 1
  %call15.i = call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %53, ptr noundef nonnull %call.i171, i32 noundef %feature_size.0.i, i8 noundef zeroext 2, i32 noundef 9) #8
  call void @kfree(ptr noundef nonnull %call.i171) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %feature_mt_trackpad2_bt.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %feature_mt_trackpad2_usb.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %feature_mt_mouse2.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %feature_mt.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call15.i)
  %cmp93.not = icmp ne i32 %call15.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp95 = icmp slt i32 %call15.i, 0
  %or.cond = and i1 %cmp93.not, %cmp95
  br i1 %or.cond, label %magicmouse_enable_multitouch.exit.do.end99_crit_edge, label %if.end101

magicmouse_enable_multitouch.exit.do.end99_crit_edge: ; preds = %magicmouse_enable_multitouch.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end99

magicmouse_enable_multitouch.exit.thread:         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %feature_mt_trackpad2_bt.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %feature_mt_trackpad2_usb.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %feature_mt_mouse2.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %feature_mt.i) #8
  br label %do.end99

do.end99:                                         ; preds = %magicmouse_enable_multitouch.exit.thread, %magicmouse_enable_multitouch.exit.do.end99_crit_edge
  %retval.0.i174179 = phi i32 [ -12, %magicmouse_enable_multitouch.exit.thread ], [ %call15.i, %magicmouse_enable_multitouch.exit.do.end99_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %retval.0.i174179) #11
  br label %err_stop_hw

if.end101:                                        ; preds = %magicmouse_enable_multitouch.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call15.i)
  %cmp102 = icmp eq i32 %call15.i, -5
  br i1 %cmp102, label %land.lhs.true103, label %if.end101.cleanup_crit_edge

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true103:                                 ; preds = %if.end101
  %54 = ptrtoint ptr %product60 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %product60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 617, i32 %55)
  %cmp105 = icmp eq i32 %55, 617
  br i1 %cmp105, label %if.then106, label %land.lhs.true103.cleanup_crit_edge

land.lhs.true103.cleanup_crit_edge:               ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then106:                                       ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %56 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %56, ptr noundef %work, i32 noundef 50) #8
  br label %cleanup

err_stop_hw:                                      ; preds = %do.end99, %do.end89, %do.end57
  %ret.0 = phi i32 [ %retval.0.i174179, %do.end99 ], [ -12, %do.end89 ], [ -12, %do.end57 ]
  %call112 = call i32 @del_timer_sync(ptr noundef %battery_timer) #8
  call void @hid_hw_stop(ptr noundef %hdev) #8
  br label %cleanup

cleanup:                                          ; preds = %err_stop_hw, %if.then106, %land.lhs.true103.cleanup_crit_edge, %if.end101.cleanup_crit_edge, %land.lhs.true49.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.end35, %do.end27, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call.i168, %do.end27 ], [ %call30, %do.end35 ], [ %ret.0, %err_stop_hw ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true49.cleanup_crit_edge ], [ 0, %if.then106 ], [ 0, %land.lhs.true103.cleanup_crit_edge ], [ 0, %if.end101.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @magicmouse_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %work = getelementptr inbounds %struct.magicmouse_sc, ptr %1, i32 0, i32 8
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #8
  %battery_timer = getelementptr inbounds %struct.magicmouse_sc, ptr %1, i32 0, i32 9
  %call2 = tail call i32 @del_timer_sync(ptr noundef %battery_timer) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @hid_hw_stop(ptr noundef %hdev) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @magicmouse_raw_event(ptr noundef %hdev, ptr noundef %report, ptr noundef %data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %5, label %entry.cleanup_crit_edge [
    i8 40, label %entry.sw.bb_crit_edge
    i8 49, label %entry.sw.bb_crit_edge305
    i8 2, label %sw.bb15
    i8 41, label %sw.bb48
    i8 18, label %sw.bb95
    i8 -9, label %sw.bb146
  ]

entry.sw.bb_crit_edge305:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge305
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp = icmp slt i32 %size, 4
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %lor.lhs.false

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb
  %sub = add nsw i32 %size, -4
  %sub.frozen = freeze i32 %sub
  %div282 = udiv i32 %sub.frozen, 9
  %7 = mul i32 %div282, 9
  %rem281.decomposed = sub i32 %sub.frozen, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem281.decomposed)
  %cmp3.not = icmp eq i32 %rem281.decomposed, 0
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 143, i32 %sub)
  %cmp6 = icmp ugt i32 %sub, 143
  br i1 %cmp6, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %size) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %ntouches = getelementptr inbounds %struct.magicmouse_sc, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %ntouches to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ntouches, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub)
  %9 = icmp ult i32 %sub, 9
  br i1 %9, label %if.end9.for.end_crit_edge, label %for.body.preheader

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %if.end9
  %add.ptr = getelementptr i8, ptr %data, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %ii.0298 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul = mul nuw i32 %ii.0298, 9
  %add.ptr12 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call fastcc void @magicmouse_emit_touch(ptr noundef %1, i32 noundef %ii.0298, ptr noundef %add.ptr12)
  %inc = add nuw nsw i32 %ii.0298, 1
  %exitcond301.not = icmp eq i32 %inc, %div282
  br i1 %exitcond301.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end9.for.end_crit_edge
  %arrayidx13 = getelementptr i8, ptr %data, i32 1
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %11 to i32
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %size)
  %cmp16 = icmp slt i32 %size, 12
  br i1 %cmp16, label %sw.bb15.cleanup_crit_edge, label %lor.lhs.false18

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false18:                                  ; preds = %sw.bb15
  %sub19 = add nsw i32 %size, -12
  %sub19.frozen = freeze i32 %sub19
  %div26284 = udiv i32 %sub19.frozen, 9
  %12 = mul i32 %div26284, 9
  %rem20283.decomposed = sub i32 %sub19.frozen, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem20283.decomposed)
  %cmp21.not = icmp eq i32 %rem20283.decomposed, 0
  br i1 %cmp21.not, label %if.end24, label %lor.lhs.false18.cleanup_crit_edge

lor.lhs.false18.cleanup_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_const_cmp4(i32 143, i32 %sub19)
  %cmp27 = icmp ugt i32 %sub19, 143
  br i1 %cmp27, label %do.end32, label %if.end34

do.end32:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %dev33 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev33, ptr noundef nonnull @.str.32, i32 noundef %size) #11
  br label %cleanup

if.end34:                                         ; preds = %if.end24
  %ntouches35 = getelementptr inbounds %struct.magicmouse_sc, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %ntouches35 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %ntouches35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub19)
  %14 = icmp ult i32 %sub19, 9
  br i1 %14, label %if.end34.for.end45_crit_edge, label %for.body39.preheader

if.end34.for.end45_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end45

for.body39.preheader:                             ; preds = %if.end34
  %add.ptr41 = getelementptr i8, ptr %data, i32 12
  br label %for.body39

for.body39:                                       ; preds = %for.body39.for.body39_crit_edge, %for.body39.preheader
  %ii.1296 = phi i32 [ %inc44, %for.body39.for.body39_crit_edge ], [ 0, %for.body39.preheader ]
  %mul40 = mul nuw i32 %ii.1296, 9
  %add.ptr42 = getelementptr i8, ptr %add.ptr41, i32 %mul40
  tail call fastcc void @magicmouse_emit_touch(ptr noundef %1, i32 noundef %ii.1296, ptr noundef %add.ptr42)
  %inc44 = add nuw nsw i32 %ii.1296, 1
  %exitcond300.not = icmp eq i32 %inc44, %div26284
  br i1 %exitcond300.not, label %for.body39.for.end45_crit_edge, label %for.body39.for.body39_crit_edge

for.body39.for.body39_crit_edge:                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body39

for.body39.for.end45_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end45

for.end45:                                        ; preds = %for.body39.for.end45_crit_edge, %if.end34.for.end45_crit_edge
  %arrayidx46 = getelementptr i8, ptr %data, i32 1
  %15 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %16 to i32
  br label %sw.epilog

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %size)
  %cmp49 = icmp slt i32 %size, 6
  br i1 %cmp49, label %sw.bb48.cleanup_crit_edge, label %lor.lhs.false51

sw.bb48.cleanup_crit_edge:                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false51:                                  ; preds = %sw.bb48
  %sub52 = add nsw i32 %size, -6
  %17 = and i32 %sub52, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp54.not = icmp eq i32 %17, 0
  br i1 %cmp54.not, label %if.end57, label %lor.lhs.false51.cleanup_crit_edge

lor.lhs.false51.cleanup_crit_edge:                ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end57:                                         ; preds = %lor.lhs.false51
  %div59285290 = lshr i32 %sub52, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %sub52)
  %cmp60 = icmp ugt i32 %sub52, 127
  br i1 %cmp60, label %do.end65, label %if.end67

do.end65:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %dev66 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev66, ptr noundef nonnull @.str.35, i32 noundef %size) #11
  br label %cleanup

if.end67:                                         ; preds = %if.end57
  %ntouches68 = getelementptr inbounds %struct.magicmouse_sc, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %ntouches68 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %ntouches68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub52)
  %cmp70293.not = icmp ult i32 %sub52, 8
  br i1 %cmp70293.not, label %if.end67.for.end78_crit_edge, label %for.body72.preheader

if.end67.for.end78_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end78

for.body72.preheader:                             ; preds = %if.end67
  %umax = call i32 @llvm.umax.i32(i32 %div59285290, i32 1)
  %add.ptr74 = getelementptr i8, ptr %data, i32 6
  br label %for.body72

for.body72:                                       ; preds = %for.body72.for.body72_crit_edge, %for.body72.preheader
  %ii.2294 = phi i32 [ %inc77, %for.body72.for.body72_crit_edge ], [ 0, %for.body72.preheader ]
  %mul73 = shl i32 %ii.2294, 3
  %add.ptr75 = getelementptr i8, ptr %add.ptr74, i32 %mul73
  tail call fastcc void @magicmouse_emit_touch(ptr noundef %1, i32 noundef %ii.2294, ptr noundef %add.ptr75)
  %inc77 = add nuw nsw i32 %ii.2294, 1
  %exitcond299.not = icmp eq i32 %inc77, %umax
  br i1 %exitcond299.not, label %for.body72.for.end78_crit_edge, label %for.body72.for.body72_crit_edge

for.body72.for.body72_crit_edge:                  ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body72

for.body72.for.end78_crit_edge:                   ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end78

for.end78:                                        ; preds = %for.body72.for.end78_crit_edge, %if.end67.for.end78_crit_edge
  %arrayidx79 = getelementptr i8, ptr %data, i32 3
  %19 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %20 to i32
  %and = shl i32 %conv80, 28
  %shl = and i32 %and, -1073741824
  %arrayidx81 = getelementptr i8, ptr %data, i32 1
  %21 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %22 to i32
  %shl83 = shl nuw nsw i32 %conv82, 22
  %or = or i32 %shl, %shl83
  %shr = ashr exact i32 %or, 22
  %and86 = shl i32 %conv80, 26
  %shl87 = and i32 %and86, -1073741824
  %arrayidx88 = getelementptr i8, ptr %data, i32 2
  %23 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %24 to i32
  %shl90 = shl nuw nsw i32 %conv89, 22
  %or91 = or i32 %shl90, %shl87
  %shr92 = ashr exact i32 %or91, 22
  br label %sw.epilog

sw.bb95:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp96.not = icmp eq i32 %size, 8
  br i1 %cmp96.not, label %if.end116.thread, label %land.lhs.true

if.end116.thread:                                 ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #10
  %ntouches117303 = getelementptr inbounds %struct.magicmouse_sc, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %ntouches117303 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %ntouches117303, align 4
  br label %for.end127

land.lhs.true:                                    ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %size)
  %cmp98 = icmp slt i32 %size, 14
  br i1 %cmp98, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false100

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false100:                                 ; preds = %land.lhs.true
  %sub101 = add nuw i32 %size, 2
  %26 = and i32 %sub101, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp103.not = icmp eq i32 %26, 0
  br i1 %cmp103.not, label %if.end106, label %lor.lhs.false100.cleanup_crit_edge

lor.lhs.false100.cleanup_crit_edge:               ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end106:                                        ; preds = %lor.lhs.false100
  %sub107 = add nsw i32 %size, -14
  %div108288289 = lshr i32 %sub107, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %sub107)
  %cmp109 = icmp ugt i32 %sub107, 127
  br i1 %cmp109, label %do.end114, label %if.end116

do.end114:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  %dev115 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev115, ptr noundef nonnull @.str.38, i32 noundef %size) #11
  br label %cleanup

if.end116:                                        ; preds = %if.end106
  %ntouches117 = getelementptr inbounds %struct.magicmouse_sc, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %ntouches117 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %ntouches117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub107)
  %cmp119291.not = icmp ult i32 %sub107, 8
  br i1 %cmp119291.not, label %if.end116.for.end127_crit_edge, label %for.body121.preheader

if.end116.for.end127_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end127

for.body121.preheader:                            ; preds = %if.end116
  %add.ptr123 = getelementptr i8, ptr %data, i32 14
  br label %for.body121

for.body121:                                      ; preds = %for.body121.for.body121_crit_edge, %for.body121.preheader
  %ii.3292 = phi i32 [ %inc126, %for.body121.for.body121_crit_edge ], [ 0, %for.body121.preheader ]
  %mul122 = shl i32 %ii.3292, 3
  %add.ptr124 = getelementptr i8, ptr %add.ptr123, i32 %mul122
  tail call fastcc void @magicmouse_emit_touch(ptr noundef %1, i32 noundef %ii.3292, ptr noundef %add.ptr124)
  %inc126 = add nuw nsw i32 %ii.3292, 1
  %exitcond.not = icmp eq i32 %inc126, %div108288289
  br i1 %exitcond.not, label %for.body121.for.end127_crit_edge, label %for.body121.for.body121_crit_edge

for.body121.for.body121_crit_edge:                ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body121

for.body121.for.end127_crit_edge:                 ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end127

for.end127:                                       ; preds = %for.body121.for.end127_crit_edge, %if.end116.for.end127_crit_edge, %if.end116.thread
  %arrayidx128 = getelementptr i8, ptr %data, i32 3
  %28 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx128, align 1
  %conv129 = zext i8 %29 to i32
  %shl130 = shl nuw i32 %conv129, 24
  %arrayidx131 = getelementptr i8, ptr %data, i32 2
  %30 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx131, align 1
  %conv132 = zext i8 %31 to i32
  %shl133 = shl nuw nsw i32 %conv132, 16
  %or134 = or i32 %shl133, %shl130
  %shr135 = ashr exact i32 %or134, 16
  %arrayidx136 = getelementptr i8, ptr %data, i32 5
  %32 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx136, align 1
  %conv137 = zext i8 %33 to i32
  %shl138 = shl nuw i32 %conv137, 24
  %arrayidx139 = getelementptr i8, ptr %data, i32 4
  %34 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx139, align 1
  %conv140 = zext i8 %35 to i32
  %shl141 = shl nuw nsw i32 %conv140, 16
  %or142 = or i32 %shl141, %shl138
  %shr143 = ashr exact i32 %or142, 16
  %arrayidx144 = getelementptr i8, ptr %data, i32 1
  %36 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx144, align 1
  %conv145 = zext i8 %37 to i32
  br label %sw.epilog

sw.bb146:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr147 = getelementptr i8, ptr %data, i32 2
  %arrayidx148 = getelementptr i8, ptr %data, i32 1
  %38 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx148, align 1
  %conv149 = zext i8 %39 to i32
  %call150 = tail call i32 @magicmouse_raw_event(ptr noundef %hdev, ptr noundef %report, ptr noundef %add.ptr147, i32 noundef %conv149)
  %40 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx148, align 1
  %conv153 = zext i8 %41 to i32
  %add.ptr154 = getelementptr i8, ptr %add.ptr147, i32 %conv153
  %sub155 = add i32 %size, -2
  %sub158 = sub i32 %sub155, %conv153
  %call159 = tail call i32 @magicmouse_raw_event(ptr noundef %hdev, ptr noundef %report, ptr noundef %add.ptr154, i32 noundef %sub158)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb146, %for.end127, %for.end78, %for.end45, %for.end
  %x.0 = phi i32 [ 0, %sw.bb146 ], [ %shr135, %for.end127 ], [ %shr, %for.end78 ], [ 0, %for.end45 ], [ 0, %for.end ]
  %y.0 = phi i32 [ 0, %sw.bb146 ], [ %shr143, %for.end127 ], [ %shr92, %for.end78 ], [ 0, %for.end45 ], [ 0, %for.end ]
  %clicks.0 = phi i32 [ 0, %sw.bb146 ], [ %conv145, %for.end127 ], [ %conv80, %for.end78 ], [ %conv47, %for.end45 ], [ %conv14, %for.end ]
  %product = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %product, align 4
  %44 = zext i16 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.51)
  switch i16 %43, label %if.else178 [
    i16 781, label %sw.epilog.if.then169_crit_edge
    i16 617, label %sw.epilog.if.then169_crit_edge306
    i16 613, label %if.then176
  ]

sw.epilog.if.then169_crit_edge306:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then169

sw.epilog.if.then169_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then169

if.then169:                                       ; preds = %sw.epilog.if.then169_crit_edge, %sw.epilog.if.then169_crit_edge306
  %and170 = and i32 %clicks.0, 3
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %arrayidx.i.i = getelementptr %struct.input_dev, ptr %46, i32 0, i32 27, i32 8
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %arrayidx.i.i, align 4
  %shr.i.i = lshr i32 %48, 16
  %and1.i.i = and i32 %shr.i.i, 1
  %49 = load volatile i32, ptr %arrayidx.i.i, align 4
  %50 = lshr i32 %49, 16
  %shl5.i = and i32 %50, 2
  %or.i = or i32 %shl5.i, %and1.i.i
  %51 = load volatile i32, ptr %arrayidx.i.i, align 4
  %52 = lshr i32 %51, 16
  %shl10.i = and i32 %52, 4
  %or11.i = or i32 %or.i, %shl10.i
  %53 = load i8, ptr @emulate_3button, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i, label %if.then169.if.end33.i_crit_edge, label %if.then.i

if.then169.if.end33.i_crit_edge:                  ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.then.i:                                        ; preds = %if.then169
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %cmp.i = icmp eq i32 %and170, 0
  br i1 %cmp.i, label %if.then.i.if.end31.i_crit_edge, label %if.else.i

if.then.i.if.end31.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or11.i)
  %cmp13.not.i = icmp eq i32 %or11.i, 0
  br i1 %cmp13.not.i, label %if.else15.i, label %if.else.i.if.end31.i_crit_edge

if.else.i.if.end31.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.else15.i:                                      ; preds = %if.else.i
  %ntouches.i.i = getelementptr inbounds %struct.magicmouse_sc, ptr %1, i32 0, i32 2
  %54 = ptrtoint ptr %ntouches.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ntouches.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp21.i.i = icmp sgt i32 %55, 0
  br i1 %cmp21.i.i, label %if.else15.i.for.body.i.i_crit_edge, label %if.else15.i.if.end31.i_crit_edge

if.else15.i.if.end31.i_crit_edge:                 ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.else15.i.for.body.i.i_crit_edge:               ; preds = %if.else15.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.else15.i.for.body.i.i_crit_edge
  %ii.023.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.else15.i.for.body.i.i_crit_edge ]
  %touch.022.i.i = phi i32 [ %touch.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ -1, %if.else15.i.for.body.i.i_crit_edge ]
  %arrayidx.i63.i = getelementptr %struct.magicmouse_sc, ptr %1, i32 0, i32 6, i32 %ii.023.i.i
  %56 = ptrtoint ptr %arrayidx.i63.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i63.i, align 4
  %size.i.i = getelementptr %struct.magicmouse_sc, ptr %1, i32 0, i32 5, i32 %57, i32 6
  %58 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %59)
  %cmp2.i.i = icmp ult i8 %59, 8
  br i1 %cmp2.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.else.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %touch.022.i.i)
  %cmp4.i.i = icmp sgt i32 %touch.022.i.i, -1
  br i1 %cmp4.i.i, label %if.else.i.i.if.end31.i_crit_edge, label %if.else.i.i.for.inc.i.i_crit_edge

if.else.i.i.for.inc.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.else.i.i.if.end31.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

for.inc.i.i:                                      ; preds = %if.else.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %touch.1.i.i = phi i32 [ %touch.022.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %57, %if.else.i.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %ii.023.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %55
  br i1 %exitcond.not.i.i, label %magicmouse_firm_touch.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

magicmouse_firm_touch.exit.i:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %touch.1.i.i)
  %cmp17.i = icmp sgt i32 %touch.1.i.i, -1
  br i1 %cmp17.i, label %if.then18.i, label %magicmouse_firm_touch.exit.i.if.end31.i_crit_edge

magicmouse_firm_touch.exit.i.if.end31.i_crit_edge: ; preds = %magicmouse_firm_touch.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.then18.i:                                      ; preds = %magicmouse_firm_touch.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.magicmouse_sc, ptr %1, i32 0, i32 5, i32 %touch.1.i.i
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -350, i16 %61)
  %cmp20.i = icmp slt i16 %61, -350
  call void @__sanitizer_cov_trace_const_cmp2(i16 350, i16 %61)
  %cmp24.i = icmp sgt i16 %61, 350
  %..i = select i1 %cmp24.i, i32 2, i32 4
  %state.addr.0.i = select i1 %cmp20.i, i32 1, i32 %..i
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then18.i, %magicmouse_firm_touch.exit.i.if.end31.i_crit_edge, %if.else.i.i.if.end31.i_crit_edge, %if.else15.i.if.end31.i_crit_edge, %if.else.i.if.end31.i_crit_edge, %if.then.i.if.end31.i_crit_edge
  %state.addr.1.i = phi i32 [ 0, %if.then.i.if.end31.i_crit_edge ], [ %state.addr.0.i, %if.then18.i ], [ %and170, %magicmouse_firm_touch.exit.i.if.end31.i_crit_edge ], [ %or11.i, %if.else.i.if.end31.i_crit_edge ], [ %and170, %if.else15.i.if.end31.i_crit_edge ], [ %and170, %if.else.i.i.if.end31.i_crit_edge ]
  %and.i = lshr i32 %state.addr.1.i, 2
  %and.lobit.i = and i32 %and.i, 1
  tail call void @input_event(ptr noundef %46, i32 noundef 1, i32 noundef 274, i32 noundef %and.lobit.i) #8
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end31.i, %if.then169.if.end33.i_crit_edge
  %state.addr.2.i = phi i32 [ %state.addr.1.i, %if.end31.i ], [ %and170, %if.then169.if.end33.i_crit_edge ]
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %and35.i = and i32 %state.addr.2.i, 1
  tail call void @input_event(ptr noundef %63, i32 noundef 1, i32 noundef 272, i32 noundef %and35.i) #8
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %and37.i = lshr i32 %state.addr.2.i, 1
  %and37.lobit.i = and i32 %and37.i, 1
  tail call void @input_event(ptr noundef %65, i32 noundef 1, i32 noundef 273, i32 noundef %and37.lobit.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %state.addr.2.i, i32 %or11.i)
  %cmp38.not.i = icmp eq i32 %state.addr.2.i, %or11.i
  br i1 %cmp38.not.i, label %if.end33.i.magicmouse_emit_buttons.exit_crit_edge, label %if.then40.i

if.end33.i.magicmouse_emit_buttons.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %magicmouse_emit_buttons.exit

if.then40.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %scroll_accel.i = getelementptr inbounds %struct.magicmouse_sc, ptr %1, i32 0, i32 3
  %66 = ptrtoint ptr %scroll_accel.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 7, ptr %scroll_accel.i, align 4
  br label %magicmouse_emit_buttons.exit

magicmouse_emit_buttons.exit:                     ; preds = %if.then40.i, %if.end33.i.magicmouse_emit_buttons.exit_crit_edge
  tail call void @input_event(ptr noundef %3, i32 noundef 2, i32 noundef 0, i32 noundef %x.0) #8
  tail call void @input_event(ptr noundef %3, i32 noundef 2, i32 noundef 1, i32 noundef %y.0) #8
  br label %if.end181

if.then176:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_mt_sync_frame(ptr noundef %3) #8
  %and177 = and i32 %clicks.0, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 272, i32 noundef %and177) #8
  br label %if.end181

if.else178:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %and179 = and i32 %clicks.0, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 272, i32 noundef %and179) #8
  tail call void @input_mt_report_pointer_emulation(ptr noundef %3, i1 noundef zeroext true) #8
  br label %if.end181

if.end181:                                        ; preds = %if.else178, %if.then176, %magicmouse_emit_buttons.exit
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end181, %do.end114, %lor.lhs.false100.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.end65, %lor.lhs.false51.cleanup_crit_edge, %sw.bb48.cleanup_crit_edge, %do.end32, %lor.lhs.false18.cleanup_crit_edge, %sw.bb15.cleanup_crit_edge, %do.end, %lor.lhs.false.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end181 ], [ 0, %do.end114 ], [ 0, %do.end65 ], [ 0, %do.end32 ], [ 0, %do.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %lor.lhs.false18.cleanup_crit_edge ], [ 0, %sw.bb15.cleanup_crit_edge ], [ 0, %lor.lhs.false51.cleanup_crit_edge ], [ 0, %sw.bb48.cleanup_crit_edge ], [ 0, %lor.lhs.false100.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @magicmouse_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %field, ptr nocapture noundef readnone %usage, i32 noundef %value) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %product = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 617, i16 %5)
  %cmp = icmp eq i16 %5, 617
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %report = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 17
  %6 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %report, align 4
  %id2 = getelementptr inbounds %struct.hid_report, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %id2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %9)
  %cmp3 = icmp eq i32 %9, 18
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @magicmouse_report_fixup(ptr noundef %hdev, ptr noundef %rdesc, ptr nocapture noundef %rsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 10
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1452, i32 %1)
  %cmp = icmp eq i32 %1, 1452
  br i1 %cmp, label %land.lhs.true, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true:                                    ; preds = %entry
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %2 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %product, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %3, label %land.lhs.true.return_crit_edge [
    i32 617, label %land.lhs.true.land.lhs.true4_crit_edge
    i32 613, label %land.lhs.true.land.lhs.true4_crit_edge34
  ]

land.lhs.true.land.lhs.true4_crit_edge34:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true4

land.lhs.true.land.lhs.true4_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true4

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true4:                                   ; preds = %land.lhs.true.land.lhs.true4_crit_edge, %land.lhs.true.land.lhs.true4_crit_edge34
  %5 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83, i32 %6)
  %cmp5 = icmp eq i32 %6, 83
  br i1 %cmp5, label %land.lhs.true6, label %land.lhs.true4.return_crit_edge

land.lhs.true4.return_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %arrayidx = getelementptr i8, ptr %rdesc, i32 46
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %8)
  %cmp7 = icmp eq i8 %8, -124
  br i1 %cmp7, label %land.lhs.true9, label %land.lhs.true6.return_crit_edge

land.lhs.true6.return_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %arrayidx10 = getelementptr i8, ptr %rdesc, i32 58
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -123, i8 %10)
  %cmp12 = icmp eq i8 %10, -123
  br i1 %cmp12, label %do.end, label %land.lhs.true9.return_crit_edge

land.lhs.true9.return_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end:                                           ; preds = %land.lhs.true9
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.40) #11
  %11 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rsize, align 4
  %sub = add i32 %12, -1
  store i32 %sub, ptr %rsize, align 4
  %add.ptr = getelementptr i8, ptr %rdesc, i32 1
  %call = tail call ptr @kmemdup(ptr noundef %add.ptr, i32 noundef %sub, i32 noundef 3264) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end.return_crit_edge, label %if.end

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 5, ptr %call, align 1
  %arrayidx16 = getelementptr i8, ptr %call, i32 1
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %arrayidx16, align 1
  %arrayidx17 = getelementptr i8, ptr %call, i32 2
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 9, ptr %arrayidx17, align 1
  %arrayidx18 = getelementptr i8, ptr %call, i32 3
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %arrayidx18, align 1
  br label %return

return:                                           ; preds = %if.end, %do.end.return_crit_edge, %land.lhs.true9.return_crit_edge, %land.lhs.true6.return_crit_edge, %land.lhs.true4.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %do.end.return_crit_edge ], [ %call, %if.end ], [ %rdesc, %land.lhs.true9.return_crit_edge ], [ %rdesc, %land.lhs.true6.return_crit_edge ], [ %rdesc, %land.lhs.true4.return_crit_edge ], [ %rdesc, %entry.return_crit_edge ], [ %rdesc, %land.lhs.true.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @magicmouse_input_mapping(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %hi, ptr nocapture noundef readonly %field, ptr nocapture noundef readnone %usage, ptr nocapture noundef readnone %bit, ptr nocapture noundef readnone %max) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %input1 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %4 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input1, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %input3 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %7 = ptrtoint ptr %input3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %input3, align 4
  %product = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %product, align 4
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.53)
  switch i16 %10, label %if.end.if.end13_crit_edge [
    i16 782, label %if.end.land.lhs.true_crit_edge
    i16 613, label %if.end.land.lhs.true_crit_edge17
  ]

if.end.land.lhs.true_crit_edge17:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge17
  %flags = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 5
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @magicmouse_input_configured(ptr noundef %hdev, ptr nocapture noundef readnone %hi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %evbit.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %evbit.i, align 4
  %or.i.i = or i32 %5, 2
  store i32 %or.i.i, ptr %evbit.i, align 4
  %product.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %product.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %product.i, align 4
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %7, label %if.else64.i [
    i16 781, label %entry.if.then.i_crit_edge
    i16 617, label %entry.if.then.i_crit_edge9
    i16 613, label %if.then34.i
  ]

entry.if.then.i_crit_edge9:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge9
  %add.ptr.i.i = getelementptr %struct.input_dev, ptr %3, i32 0, i32 6, i32 8
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i, align 4
  %or.i207.i = or i32 %10, 196608
  store i32 %or.i207.i, ptr %add.ptr.i.i, align 4
  %11 = load i8, ptr @emulate_3button, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then10.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then10.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i209.i = or i32 %10, 458752
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i209.i, ptr %add.ptr.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then10.i, %if.then.i.if.end.i_crit_edge
  %or.i210.i = or i32 %5, 6
  %13 = ptrtoint ptr %evbit.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i210.i, ptr %evbit.i, align 4
  %relbit.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %relbit.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %relbit.i, align 4
  %or.i212.i = or i32 %15, 3
  store i32 %or.i212.i, ptr %relbit.i, align 4
  %16 = load i8, ptr @emulate_scroll_wheel, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool18.not.i = icmp eq i8 %16, 0
  br i1 %tobool18.not.i, label %if.end.i.if.end88.i_crit_edge, label %if.then19.i

if.end.i.if.end88.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88.i

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i216.i = or i32 %15, 6467
  %17 = ptrtoint ptr %relbit.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i216.i, ptr %relbit.i, align 4
  br label %if.end88.i

if.then34.i:                                      ; preds = %entry
  %vendor.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 10
  %18 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 76, i32 %19)
  %cmp35.i = icmp eq i32 %19, 76
  br i1 %cmp35.i, label %if.then37.i, label %if.else46.i

if.then37.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #10
  %version.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %version.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %21)
  %cmp40.i = icmp eq i16 %21, 272
  %.str.45..str.46.i = select i1 %cmp40.i, ptr @.str.45, ptr @.str.46
  br label %if.end50.i

if.else46.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #10
  %name47.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 39
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.else46.i, %if.then37.i
  %.str.45.sink.i = phi ptr [ %name47.i, %if.else46.i ], [ %.str.45..str.46.i, %if.then37.i ]
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %.str.45.sink.i, ptr %3, align 8
  %and.i.i = and i32 %or.i.i, -17
  %23 = ptrtoint ptr %evbit.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and.i.i, ptr %evbit.i, align 4
  %add.ptr.i217.i = getelementptr %struct.input_dev, ptr %3, i32 0, i32 6, i32 8
  %24 = ptrtoint ptr %add.ptr.i217.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i217.i, align 4
  %and.i222.i = and i32 %25, -458754
  %or.i224.i = or i32 %and.i222.i, 65536
  store i32 %or.i224.i, ptr %add.ptr.i217.i, align 4
  %propbit.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 4
  %26 = ptrtoint ptr %propbit.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %propbit.i, align 4
  %or.i225.i = or i32 %27, 4
  store i32 %or.i225.i, ptr %propbit.i, align 4
  %add.ptr.i226.i = getelementptr %struct.input_dev, ptr %3, i32 0, i32 6, i32 10
  %28 = ptrtoint ptr %add.ptr.i226.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i226.i, align 4
  %or.i227.i = or i32 %29, 32
  store i32 %or.i227.i, ptr %add.ptr.i226.i, align 4
  br label %if.end88.i

if.else64.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i228.i = getelementptr %struct.input_dev, ptr %3, i32 0, i32 6, i32 8
  %30 = ptrtoint ptr %add.ptr.i228.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i228.i, align 4
  %and.i231.i = and i32 %31, -458753
  %or.i233.i = or i32 %and.i231.i, 65536
  store i32 %or.i233.i, ptr %add.ptr.i228.i, align 4
  %add.ptr.i234.i = getelementptr %struct.input_dev, ptr %3, i32 0, i32 6, i32 10
  %32 = ptrtoint ptr %add.ptr.i234.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i234.i, align 4
  %or.i245.i = or i32 %33, 58656
  store i32 %or.i245.i, ptr %add.ptr.i234.i, align 4
  %propbit83.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 4
  %34 = ptrtoint ptr %propbit83.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %propbit83.i, align 4
  %or.i247.i = or i32 %35, 5
  store i32 %or.i247.i, ptr %propbit83.i, align 4
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.else64.i, %if.end50.i, %if.then19.i, %if.end.i.if.end88.i_crit_edge
  %mt_flags.0.i = phi i32 [ 0, %if.then19.i ], [ 0, %if.end.i.if.end88.i_crit_edge ], [ 13, %if.end50.i ], [ 0, %if.else64.i ]
  %36 = ptrtoint ptr %evbit.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %evbit.i, align 4
  %or.i248.i = or i32 %37, 8
  store i32 %or.i248.i, ptr %evbit.i, align 4
  %call.i = tail call i32 @input_mt_init_slots(ptr noundef %3, i32 noundef 16, i32 noundef %mt_flags.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool91.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool91.not.i, label %if.end93.i, label %do.end

if.end93.i:                                       ; preds = %if.end88.i
  tail call void @input_set_abs_params(ptr noundef %3, i32 noundef 48, i32 noundef 0, i32 noundef 1020, i32 noundef 4, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef %3, i32 noundef 49, i32 noundef 0, i32 noundef 1020, i32 noundef 4, i32 noundef 0) #8
  %38 = ptrtoint ptr %product.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %product.i, align 4
  %40 = zext i16 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.55)
  switch i16 %39, label %if.else113.i [
    i16 781, label %if.end93.i.if.then105.i_crit_edge
    i16 617, label %if.end93.i.if.then105.i_crit_edge10
    i16 613, label %if.then112.i
  ]

if.end93.i.if.then105.i_crit_edge10:              ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then105.i

if.end93.i.if.then105.i_crit_edge:                ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then105.i

if.then105.i:                                     ; preds = %if.end93.i.if.then105.i_crit_edge, %if.end93.i.if.then105.i_crit_edge10
  tail call void @input_set_abs_params(ptr noundef %3, i32 noundef 52, i32 noundef -31, i32 noundef 32, i32 noundef 1, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef %3, i32 noundef 53, i32 noundef -1100, i32 noundef 1258, i32 noundef 4, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef %3, i32 noundef 54, i32 noundef -1589, i32 noundef 2047, i32 noundef 4, i32 noundef 0) #8
  tail call void @input_alloc_absinfo(ptr noundef %3) #8
  %absinfo.i.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 26
  %41 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.then105.i.input_abs_set_res.exit.i_crit_edge, label %if.then.i.i

if.then105.i.input_abs_set_res.exit.i_crit_edge:  ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %input_abs_set_res.exit.i

if.then.i.i:                                      ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #10
  %resolution.i.i = getelementptr %struct.input_absinfo, ptr %42, i32 53, i32 5
  %43 = ptrtoint ptr %resolution.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 26, ptr %resolution.i.i, align 4
  br label %input_abs_set_res.exit.i

input_abs_set_res.exit.i:                         ; preds = %if.then.i.i, %if.then105.i.input_abs_set_res.exit.i_crit_edge
  tail call void @input_alloc_absinfo(ptr noundef %3) #8
  %44 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i253.i = icmp eq ptr %45, null
  br i1 %tobool.not.i253.i, label %input_abs_set_res.exit.i.if.end115.i_crit_edge, label %input_abs_set_res.exit.i.if.end115.sink.split.i_crit_edge

input_abs_set_res.exit.i.if.end115.sink.split.i_crit_edge: ; preds = %input_abs_set_res.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115.sink.split.i

input_abs_set_res.exit.i.if.end115.i_crit_edge:   ; preds = %input_abs_set_res.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115.i

if.then112.i:                                     ; preds = %if.end93.i
  tail call void @input_set_abs_params(ptr noundef %3, i32 noundef 58, i32 noundef 0, i32 noundef 253, i32 noundef 0, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef %3, i32 noundef 24, i32 noundef 0, i32 noundef 253, i32 noundef 0, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef %3, i32 noundef 52, i32 noundef -3, i32 noundef 4, i32 noundef 0, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef %3, i32 noundef 0, i32 noundef -3678, i32 noundef 3934, i32 noundef 0, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef %3, i32 noundef 1, i32 noundef -2478, i32 noundef 2587, i32 noundef 0, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef %3, i32 noundef 53, i32 noundef -3678, i32 noundef 3934, i32 noundef 0, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef %3, i32 noundef 54, i32 noundef -2478, i32 noundef 2587, i32 noundef 0, i32 noundef 0) #8
  tail call void @input_alloc_absinfo(ptr noundef %3) #8
  %absinfo.i257.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 26
  %46 = ptrtoint ptr %absinfo.i257.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %absinfo.i257.i, align 8
  %tobool.not.i258.i = icmp eq ptr %47, null
  br i1 %tobool.not.i258.i, label %if.then112.i.input_abs_set_res.exit261.i_crit_edge, label %if.then.i260.i

if.then112.i.input_abs_set_res.exit261.i_crit_edge: ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %input_abs_set_res.exit261.i

if.then.i260.i:                                   ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #10
  %resolution.i259.i = getelementptr %struct.input_absinfo, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %resolution.i259.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 47, ptr %resolution.i259.i, align 4
  br label %input_abs_set_res.exit261.i

input_abs_set_res.exit261.i:                      ; preds = %if.then.i260.i, %if.then112.i.input_abs_set_res.exit261.i_crit_edge
  tail call void @input_alloc_absinfo(ptr noundef %3) #8
  %49 = ptrtoint ptr %absinfo.i257.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %absinfo.i257.i, align 8
  %tobool.not.i263.i = icmp eq ptr %50, null
  br i1 %tobool.not.i263.i, label %input_abs_set_res.exit261.i.input_abs_set_res.exit266.i_crit_edge, label %if.then.i265.i

input_abs_set_res.exit261.i.input_abs_set_res.exit266.i_crit_edge: ; preds = %input_abs_set_res.exit261.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %input_abs_set_res.exit266.i

if.then.i265.i:                                   ; preds = %input_abs_set_res.exit261.i
  call void @__sanitizer_cov_trace_pc() #10
  %resolution.i264.i = getelementptr %struct.input_absinfo, ptr %50, i32 1, i32 5
  %51 = ptrtoint ptr %resolution.i264.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 44, ptr %resolution.i264.i, align 4
  br label %input_abs_set_res.exit266.i

input_abs_set_res.exit266.i:                      ; preds = %if.then.i265.i, %input_abs_set_res.exit261.i.input_abs_set_res.exit266.i_crit_edge
  tail call void @input_alloc_absinfo(ptr noundef %3) #8
  %52 = ptrtoint ptr %absinfo.i257.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %absinfo.i257.i, align 8
  %tobool.not.i268.i = icmp eq ptr %53, null
  br i1 %tobool.not.i268.i, label %input_abs_set_res.exit266.i.input_abs_set_res.exit271.i_crit_edge, label %if.then.i270.i

input_abs_set_res.exit266.i.input_abs_set_res.exit271.i_crit_edge: ; preds = %input_abs_set_res.exit266.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %input_abs_set_res.exit271.i

if.then.i270.i:                                   ; preds = %input_abs_set_res.exit266.i
  call void @__sanitizer_cov_trace_pc() #10
  %resolution.i269.i = getelementptr %struct.input_absinfo, ptr %53, i32 53, i32 5
  %54 = ptrtoint ptr %resolution.i269.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 47, ptr %resolution.i269.i, align 4
  br label %input_abs_set_res.exit271.i

input_abs_set_res.exit271.i:                      ; preds = %if.then.i270.i, %input_abs_set_res.exit266.i.input_abs_set_res.exit271.i_crit_edge
  tail call void @input_alloc_absinfo(ptr noundef %3) #8
  %55 = ptrtoint ptr %absinfo.i257.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %absinfo.i257.i, align 8
  %tobool.not.i273.i = icmp eq ptr %56, null
  br i1 %tobool.not.i273.i, label %input_abs_set_res.exit271.i.if.end115.i_crit_edge, label %input_abs_set_res.exit271.i.if.end115.sink.split.i_crit_edge

input_abs_set_res.exit271.i.if.end115.sink.split.i_crit_edge: ; preds = %input_abs_set_res.exit271.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115.sink.split.i

input_abs_set_res.exit271.i.if.end115.i_crit_edge: ; preds = %input_abs_set_res.exit271.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115.i

if.else113.i:                                     ; preds = %if.end93.i
  tail call void @input_set_abs_params(ptr noundef %3, i32 noundef 52, i32 noundef -31, i32 noundef 32, i32 noundef 1, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef %3, i32 noundef 0, i32 noundef -2909, i32 noundef 3167, i32 noundef 4, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef %3, i32 noundef 1, i32 noundef -2456, i32 noundef 2565, i32 noundef 4, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef %3, i32 noundef 53, i32 noundef -2909, i32 noundef 3167, i32 noundef 4, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef %3, i32 noundef 54, i32 noundef -2456, i32 noundef 2565, i32 noundef 4, i32 noundef 0) #8
  tail call void @input_alloc_absinfo(ptr noundef %3) #8
  %absinfo.i277.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 26
  %57 = ptrtoint ptr %absinfo.i277.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %absinfo.i277.i, align 8
  %tobool.not.i278.i = icmp eq ptr %58, null
  br i1 %tobool.not.i278.i, label %if.else113.i.input_abs_set_res.exit281.i_crit_edge, label %if.then.i280.i

if.else113.i.input_abs_set_res.exit281.i_crit_edge: ; preds = %if.else113.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %input_abs_set_res.exit281.i

if.then.i280.i:                                   ; preds = %if.else113.i
  call void @__sanitizer_cov_trace_pc() #10
  %resolution.i279.i = getelementptr %struct.input_absinfo, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %resolution.i279.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 46, ptr %resolution.i279.i, align 4
  br label %input_abs_set_res.exit281.i

input_abs_set_res.exit281.i:                      ; preds = %if.then.i280.i, %if.else113.i.input_abs_set_res.exit281.i_crit_edge
  tail call void @input_alloc_absinfo(ptr noundef %3) #8
  %60 = ptrtoint ptr %absinfo.i277.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %absinfo.i277.i, align 8
  %tobool.not.i283.i = icmp eq ptr %61, null
  br i1 %tobool.not.i283.i, label %input_abs_set_res.exit281.i.input_abs_set_res.exit286.i_crit_edge, label %if.then.i285.i

input_abs_set_res.exit281.i.input_abs_set_res.exit286.i_crit_edge: ; preds = %input_abs_set_res.exit281.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %input_abs_set_res.exit286.i

if.then.i285.i:                                   ; preds = %input_abs_set_res.exit281.i
  call void @__sanitizer_cov_trace_pc() #10
  %resolution.i284.i = getelementptr %struct.input_absinfo, ptr %61, i32 1, i32 5
  %62 = ptrtoint ptr %resolution.i284.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 45, ptr %resolution.i284.i, align 4
  br label %input_abs_set_res.exit286.i

input_abs_set_res.exit286.i:                      ; preds = %if.then.i285.i, %input_abs_set_res.exit281.i.input_abs_set_res.exit286.i_crit_edge
  tail call void @input_alloc_absinfo(ptr noundef %3) #8
  %63 = ptrtoint ptr %absinfo.i277.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %absinfo.i277.i, align 8
  %tobool.not.i288.i = icmp eq ptr %64, null
  br i1 %tobool.not.i288.i, label %input_abs_set_res.exit286.i.input_abs_set_res.exit291.i_crit_edge, label %if.then.i290.i

input_abs_set_res.exit286.i.input_abs_set_res.exit291.i_crit_edge: ; preds = %input_abs_set_res.exit286.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %input_abs_set_res.exit291.i

if.then.i290.i:                                   ; preds = %input_abs_set_res.exit286.i
  call void @__sanitizer_cov_trace_pc() #10
  %resolution.i289.i = getelementptr %struct.input_absinfo, ptr %64, i32 53, i32 5
  %65 = ptrtoint ptr %resolution.i289.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 46, ptr %resolution.i289.i, align 4
  br label %input_abs_set_res.exit291.i

input_abs_set_res.exit291.i:                      ; preds = %if.then.i290.i, %input_abs_set_res.exit286.i.input_abs_set_res.exit291.i_crit_edge
  tail call void @input_alloc_absinfo(ptr noundef %3) #8
  %66 = ptrtoint ptr %absinfo.i277.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %absinfo.i277.i, align 8
  %tobool.not.i293.i = icmp eq ptr %67, null
  br i1 %tobool.not.i293.i, label %input_abs_set_res.exit291.i.if.end115.i_crit_edge, label %input_abs_set_res.exit291.i.if.end115.sink.split.i_crit_edge

input_abs_set_res.exit291.i.if.end115.sink.split.i_crit_edge: ; preds = %input_abs_set_res.exit291.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115.sink.split.i

input_abs_set_res.exit291.i.if.end115.i_crit_edge: ; preds = %input_abs_set_res.exit291.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115.i

if.end115.sink.split.i:                           ; preds = %input_abs_set_res.exit291.i.if.end115.sink.split.i_crit_edge, %input_abs_set_res.exit271.i.if.end115.sink.split.i_crit_edge, %input_abs_set_res.exit.i.if.end115.sink.split.i_crit_edge
  %.sink297.i = phi ptr [ %45, %input_abs_set_res.exit.i.if.end115.sink.split.i_crit_edge ], [ %56, %input_abs_set_res.exit271.i.if.end115.sink.split.i_crit_edge ], [ %67, %input_abs_set_res.exit291.i.if.end115.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 70, %input_abs_set_res.exit.i.if.end115.sink.split.i_crit_edge ], [ 44, %input_abs_set_res.exit271.i.if.end115.sink.split.i_crit_edge ], [ 45, %input_abs_set_res.exit291.i.if.end115.sink.split.i_crit_edge ]
  %resolution.i294.i = getelementptr %struct.input_absinfo, ptr %.sink297.i, i32 54, i32 5
  %68 = ptrtoint ptr %resolution.i294.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %.sink.i, ptr %resolution.i294.i, align 4
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.end115.sink.split.i, %input_abs_set_res.exit291.i.if.end115.i_crit_edge, %input_abs_set_res.exit271.i.if.end115.i_crit_edge, %input_abs_set_res.exit.i.if.end115.i_crit_edge
  %hint_events_per_packet.i.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 14
  %69 = ptrtoint ptr %hint_events_per_packet.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 60, ptr %hint_events_per_packet.i.i, align 8
  %70 = load i8, ptr @report_undeciphered, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool116.not.i = icmp eq i8 %70, 0
  br i1 %tobool116.not.i, label %if.end115.i.magicmouse_setup_input.exit.thread_crit_edge, label %land.lhs.true.i

if.end115.i.magicmouse_setup_input.exit.thread_crit_edge: ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %magicmouse_setup_input.exit.thread

land.lhs.true.i:                                  ; preds = %if.end115.i
  %71 = ptrtoint ptr %product.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %product.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 613, i16 %72)
  %cmp121.not.i = icmp eq i16 %72, 613
  br i1 %cmp121.not.i, label %land.lhs.true.i.magicmouse_setup_input.exit.thread_crit_edge, label %if.then123.i

land.lhs.true.i.magicmouse_setup_input.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %magicmouse_setup_input.exit.thread

if.then123.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %evbit.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %evbit.i, align 4
  %or.i249.i = or i32 %74, 16
  store i32 %or.i249.i, ptr %evbit.i, align 4
  %mscbit.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 9
  %75 = ptrtoint ptr %mscbit.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mscbit.i, align 4
  %or.i250.i = or i32 %76, 8
  store i32 %or.i250.i, ptr %mscbit.i, align 4
  br label %magicmouse_setup_input.exit.thread

magicmouse_setup_input.exit.thread:               ; preds = %if.then123.i, %land.lhs.true.i.magicmouse_setup_input.exit.thread_crit_edge, %if.end115.i.magicmouse_setup_input.exit.thread_crit_edge
  %77 = ptrtoint ptr %evbit.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %evbit.i, align 4
  %and.i251.i = and i32 %78, -1048577
  store i32 %and.i251.i, ptr %evbit.i, align 4
  br label %cleanup

do.end:                                           ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %call.i) #11
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %magicmouse_setup_input.exit.thread
  ret i32 %call.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @magicmouse_enable_mt_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  %feature_mt.i = alloca [2 x i8], align 2
  %feature_mt_mouse2.i = alloca [3 x i8], align 1
  %feature_mt_trackpad2_usb.i = alloca [2 x i8], align 2
  %feature_mt_trackpad2_bt.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %feature_mt.i) #8
  %2 = ptrtoint ptr %feature_mt.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -10495, ptr %feature_mt.i, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %feature_mt_mouse2.i) #8
  %3 = call ptr @memcpy(ptr %feature_mt_mouse2.i, ptr @__const.magicmouse_enable_multitouch.feature_mt_trackpad2_bt, i32 3)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %feature_mt_trackpad2_usb.i) #8
  %4 = ptrtoint ptr %feature_mt_trackpad2_usb.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 513, ptr %feature_mt_trackpad2_usb.i, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %feature_mt_trackpad2_bt.i) #8
  %5 = call ptr @memcpy(ptr %feature_mt_trackpad2_bt.i, ptr @__const.magicmouse_enable_multitouch.feature_mt_trackpad2_bt, i32 3)
  %product.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %product.i, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %7, label %if.else9.i [
    i32 613, label %if.then.i
    i32 617, label %entry.if.end12.i_crit_edge
  ]

entry.if.end12.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vendor.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 76, i32 %10)
  %cmp1.i = icmp eq i32 %10, 76
  %feature_mt_trackpad2_bt.feature_mt_trackpad2_usb.i = select i1 %cmp1.i, ptr %feature_mt_trackpad2_bt.i, ptr %feature_mt_trackpad2_usb.i
  %..i = select i1 %cmp1.i, i32 3, i32 2
  br label %if.end12.i

if.else9.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else9.i, %if.then.i, %entry.if.end12.i_crit_edge
  %feature.0.i = phi ptr [ %feature_mt.i, %if.else9.i ], [ %feature_mt_trackpad2_bt.feature_mt_trackpad2_usb.i, %if.then.i ], [ %feature_mt_mouse2.i, %entry.if.end12.i_crit_edge ]
  %feature_size.0.i = phi i32 [ 2, %if.else9.i ], [ %..i, %if.then.i ], [ 3, %entry.if.end12.i_crit_edge ]
  %call.i = call ptr @kmemdup(ptr noundef nonnull %feature.0.i, i32 noundef %feature_size.0.i, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %magicmouse_enable_multitouch.exit.thread, label %magicmouse_enable_multitouch.exit

magicmouse_enable_multitouch.exit.thread:         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %feature_mt_trackpad2_bt.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %feature_mt_trackpad2_usb.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %feature_mt_mouse2.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %feature_mt.i) #8
  br label %do.end

magicmouse_enable_multitouch.exit:                ; preds = %if.end12.i
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call.i, align 1
  %call15.i = call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext %12, ptr noundef nonnull %call.i, i32 noundef %feature_size.0.i, i8 noundef zeroext 2, i32 noundef 9) #8
  call void @kfree(ptr noundef nonnull %call.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %feature_mt_trackpad2_bt.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %feature_mt_trackpad2_usb.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %feature_mt_mouse2.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %feature_mt.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp = icmp slt i32 %call15.i, 0
  br i1 %cmp, label %magicmouse_enable_multitouch.exit.do.end_crit_edge, label %magicmouse_enable_multitouch.exit.if.end_crit_edge

magicmouse_enable_multitouch.exit.if.end_crit_edge: ; preds = %magicmouse_enable_multitouch.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

magicmouse_enable_multitouch.exit.do.end_crit_edge: ; preds = %magicmouse_enable_multitouch.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %magicmouse_enable_multitouch.exit.do.end_crit_edge, %magicmouse_enable_multitouch.exit.thread
  %retval.0.i6 = phi i32 [ -12, %magicmouse_enable_multitouch.exit.thread ], [ %call15.i, %magicmouse_enable_multitouch.exit.do.end_crit_edge ]
  %13 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hdev, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %14, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %retval.0.i6) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %magicmouse_enable_multitouch.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @magicmouse_battery_timer_tick(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr i8, ptr %t, i32 -104
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %battery.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %battery.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %battery.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %vendor.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1452, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 1452
  br i1 %cmp.not.i, label %lor.lhs.false1.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %product.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %product.i, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %7, label %lor.lhs.false1.i.if.end_crit_edge [
    i32 617, label %lor.lhs.false1.i.if.end.i_crit_edge
    i32 613, label %lor.lhs.false1.i.if.end.i_crit_edge7
  ]

lor.lhs.false1.i.if.end.i_crit_edge7:             ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

lor.lhs.false1.i.if.end.i_crit_edge:              ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

lor.lhs.false1.i.if.end_crit_edge:                ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false1.i.if.end.i_crit_edge, %lor.lhs.false1.i.if.end.i_crit_edge7
  %battery_report_type.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 27
  %9 = ptrtoint ptr %battery_report_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %battery_report_type.i, align 8
  %battery_report_id.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 28
  %11 = ptrtoint ptr %battery_report_id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %battery_report_id.i, align 4
  %arrayidx6.i = getelementptr %struct.hid_device, ptr %1, i32 0, i32 15, i32 %10, i32 2, i32 %12
  %13 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.not.i = icmp eq ptr %14, null
  br i1 %tobool7.not.i, label %if.end.i.if.end_crit_edge, label %lor.lhs.false8.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false8.i:                                 ; preds = %if.end.i
  %maxfield.i = getelementptr inbounds %struct.hid_report, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp9.i = icmp eq i32 %16, 0
  br i1 %cmp9.i, label %lor.lhs.false8.i.if.end_crit_edge, label %if.end11.i

lor.lhs.false8.i.if.end_crit_edge:                ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end11.i:                                       ; preds = %lor.lhs.false8.i
  %battery_capacity.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 24
  %17 = ptrtoint ptr %battery_capacity.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %battery_capacity.i, align 4
  %battery_max.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 26
  %19 = ptrtoint ptr %battery_max.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %battery_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp12.i = icmp eq i32 %18, %20
  br i1 %cmp12.i, label %if.end11.i.if.end_crit_edge, label %if.then

if.end11.i.if.end_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef nonnull %14, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %21, 6000
  %call3 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end11.i.if.end_crit_edge, %lor.lhs.false8.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %lor.lhs.false1.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hid_register_report(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_raw_request(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @magicmouse_emit_touch(ptr nocapture noundef %msc, i32 noundef %raw_id, ptr noundef readonly %tdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msc, align 4
  %product = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %product, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.58)
  switch i16 %3, label %if.else91 [
    i16 781, label %entry.if.then_crit_edge
    i16 617, label %entry.if.then_crit_edge561
    i16 613, label %if.then49
  ]

entry.if.then_crit_edge561:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge561
  %arrayidx = getelementptr i8, ptr %tdata, i32 6
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv9 = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv9, 2
  %arrayidx10 = getelementptr i8, ptr %tdata, i32 5
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx10, align 1
  %9 = lshr i8 %8, 6
  %10 = zext i8 %9 to i32
  %shl.masked = and i32 %shl, 12
  %and = or i32 %shl.masked, %10
  %arrayidx12 = getelementptr i8, ptr %tdata, i32 1
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %12 to i32
  %shl14 = shl i32 %conv13, 28
  %13 = ptrtoint ptr %tdata to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tdata, align 1
  %conv16 = zext i8 %14 to i32
  %shl17 = shl nuw nsw i32 %conv16, 20
  %or18 = or i32 %shl17, %shl14
  %shr19 = ashr exact i32 %or18, 20
  %arrayidx20 = getelementptr i8, ptr %tdata, i32 2
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %16 to i32
  %shl22 = shl nuw i32 %conv21, 24
  %shl25 = shl nuw nsw i32 %conv13, 16
  %or26 = or i32 %shl22, %shl25
  %shr27 = ashr i32 %or26, 20
  %and30 = and i8 %8, 63
  %17 = lshr i32 %conv9, 2
  %sub34.neg = sub nsw i32 32, %17
  %arrayidx35 = getelementptr i8, ptr %tdata, i32 3
  %arrayidx37 = getelementptr i8, ptr %tdata, i32 4
  %arrayidx39 = getelementptr i8, ptr %tdata, i32 7
  %18 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx39, align 1
  %20 = and i8 %19, -16
  %and41 = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp42 = icmp ne i8 %20, 0
  br label %if.end137

if.then49:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx50 = getelementptr i8, ptr %tdata, i32 8
  %21 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %22 to i32
  %and52 = and i32 %conv51, 15
  %arrayidx53 = getelementptr i8, ptr %tdata, i32 1
  %23 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %24 to i32
  %shl55 = shl i32 %conv54, 27
  %25 = ptrtoint ptr %tdata to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tdata, align 1
  %conv57 = zext i8 %26 to i32
  %shl58 = shl nuw nsw i32 %conv57, 19
  %or59 = or i32 %shl58, %shl55
  %shr60 = ashr exact i32 %or59, 19
  %arrayidx61 = getelementptr i8, ptr %tdata, i32 3
  %27 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %28 to i32
  %shl63 = shl i32 %conv62, 30
  %arrayidx64 = getelementptr i8, ptr %tdata, i32 2
  %29 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %30 to i32
  %shl66 = shl nuw nsw i32 %conv65, 22
  %shl70 = shl nuw nsw i32 %conv54, 14
  %or67 = or i32 %shl63, %shl70
  %or71 = or i32 %or67, %shl66
  %shr72 = ashr i32 %or71, 19
  %arrayidx74 = getelementptr i8, ptr %tdata, i32 6
  %31 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx74, align 1
  %33 = lshr i32 %conv51, 5
  %sub79.neg = sub nsw i32 4, %33
  %arrayidx80 = getelementptr i8, ptr %tdata, i32 4
  %arrayidx82 = getelementptr i8, ptr %tdata, i32 5
  %arrayidx84 = getelementptr i8, ptr %tdata, i32 7
  %34 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %35 to i32
  %and88 = and i32 %conv62, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and88)
  %cmp89 = icmp eq i32 %and88, 128
  br label %if.end137

if.else91:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx92 = getelementptr i8, ptr %tdata, i32 7
  %36 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %37 to i32
  %shl94 = shl nuw nsw i32 %conv93, 2
  %arrayidx95 = getelementptr i8, ptr %tdata, i32 6
  %38 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx95, align 1
  %40 = lshr i8 %39, 6
  %41 = zext i8 %40 to i32
  %shl94.masked = and i32 %shl94, 12
  %and99 = or i32 %shl94.masked, %41
  %arrayidx100 = getelementptr i8, ptr %tdata, i32 1
  %42 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx100, align 1
  %conv101 = zext i8 %43 to i32
  %shl102 = shl i32 %conv101, 27
  %44 = ptrtoint ptr %tdata to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %tdata, align 1
  %conv104 = zext i8 %45 to i32
  %shl105 = shl nuw nsw i32 %conv104, 19
  %or106 = or i32 %shl105, %shl102
  %shr107 = ashr exact i32 %or106, 19
  %arrayidx108 = getelementptr i8, ptr %tdata, i32 3
  %46 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx108, align 1
  %conv109 = zext i8 %47 to i32
  %shl110 = shl i32 %conv109, 30
  %arrayidx111 = getelementptr i8, ptr %tdata, i32 2
  %48 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %49 to i32
  %shl113 = shl nuw nsw i32 %conv112, 22
  %shl117 = shl nuw nsw i32 %conv101, 14
  %or114 = or i32 %shl110, %shl117
  %or118 = or i32 %or114, %shl113
  %shr119 = ashr i32 %or118, 19
  %and123 = and i8 %39, 63
  %50 = lshr i32 %conv93, 2
  %sub127.neg = sub nsw i32 32, %50
  %arrayidx128 = getelementptr i8, ptr %tdata, i32 4
  %arrayidx130 = getelementptr i8, ptr %tdata, i32 5
  %arrayidx132 = getelementptr i8, ptr %tdata, i32 8
  %51 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx132, align 1
  %53 = and i8 %52, -16
  %and134 = zext i8 %53 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp135 = icmp ne i8 %53, 0
  br label %if.end137

if.end137:                                        ; preds = %if.else91, %if.then49, %if.then
  %size.0 = phi i8 [ %and30, %if.then ], [ %32, %if.then49 ], [ %and123, %if.else91 ]
  %orientation.0.neg = phi i32 [ %sub34.neg, %if.then ], [ %sub79.neg, %if.then49 ], [ %sub127.neg, %if.else91 ]
  %touch_major.0.in.in = phi ptr [ %arrayidx35, %if.then ], [ %arrayidx80, %if.then49 ], [ %arrayidx128, %if.else91 ]
  %touch_minor.0.in.in = phi ptr [ %arrayidx37, %if.then ], [ %arrayidx82, %if.then49 ], [ %arrayidx130, %if.else91 ]
  %state.0 = phi i32 [ %and41, %if.then ], [ %and88, %if.then49 ], [ %and134, %if.else91 ]
  %down.0.in = phi i1 [ %cmp42, %if.then ], [ %cmp89, %if.then49 ], [ %cmp135, %if.else91 ]
  %pressure.0 = phi i32 [ 0, %if.then ], [ %conv85, %if.then49 ], [ 0, %if.else91 ]
  %shr27.pn = phi i32 [ %shr27, %if.then ], [ %shr72, %if.then49 ], [ %shr119, %if.else91 ]
  %x.0 = phi i32 [ %shr19, %if.then ], [ %shr60, %if.then49 ], [ %shr107, %if.else91 ]
  %id.0 = phi i32 [ %and, %if.then ], [ %and52, %if.then49 ], [ %and99, %if.else91 ]
  %y.0 = sub nsw i32 0, %shr27.pn
  %54 = ptrtoint ptr %touch_minor.0.in.in to i32
  call void @__asan_load1_noabort(i32 %54)
  %touch_minor.0.in = load i8, ptr %touch_minor.0.in.in, align 1
  %touch_minor.0 = zext i8 %touch_minor.0.in to i32
  %55 = ptrtoint ptr %touch_major.0.in.in to i32
  call void @__asan_load1_noabort(i32 %55)
  %touch_major.0.in = load i8, ptr %touch_major.0.in.in, align 1
  %touch_major.0 = zext i8 %touch_major.0.in to i32
  %arrayidx138 = getelementptr %struct.magicmouse_sc, ptr %msc, i32 0, i32 6, i32 %raw_id
  %56 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %id.0, ptr %arrayidx138, align 4
  %conv139 = trunc i32 %x.0 to i16
  %arrayidx140 = getelementptr %struct.magicmouse_sc, ptr %msc, i32 0, i32 5, i32 %id.0
  %57 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv139, ptr %arrayidx140, align 4
  %conv142 = trunc i32 %y.0 to i16
  %y145 = getelementptr %struct.magicmouse_sc, ptr %msc, i32 0, i32 5, i32 %id.0, i32 1
  %58 = ptrtoint ptr %y145 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv142, ptr %y145, align 2
  %size149 = getelementptr %struct.magicmouse_sc, ptr %msc, i32 0, i32 5, i32 %id.0, i32 6
  %59 = ptrtoint ptr %size149 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %size.0, ptr %size149, align 4
  %60 = load i8, ptr @emulate_scroll_wheel, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not = icmp eq i8 %60, 0
  br i1 %tobool.not, label %if.end137.if.end344_crit_edge, label %land.lhs.true

if.end137.if.end344_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end344

land.lhs.true:                                    ; preds = %if.end137
  %61 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 613, i16 %62)
  %cmp154.not = icmp eq i16 %62, 613
  br i1 %cmp154.not, label %land.lhs.true.if.end344_crit_edge, label %if.then156

land.lhs.true.if.end344_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end344

if.then156:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %scroll_x = getelementptr %struct.magicmouse_sc, ptr %msc, i32 0, i32 5, i32 %id.0, i32 2
  %64 = ptrtoint ptr %scroll_x to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %scroll_x, align 4
  %scroll_y = getelementptr %struct.magicmouse_sc, ptr %msc, i32 0, i32 5, i32 %id.0, i32 3
  %66 = ptrtoint ptr %scroll_y to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %scroll_y, align 2
  %conv163 = sext i16 %67 to i32
  %sub164 = add nsw i32 %shr27.pn, %conv163
  %68 = load i32, ptr @scroll_speed, align 4
  %sub165 = sub i32 64, %68
  %scroll_accel = getelementptr inbounds %struct.magicmouse_sc, ptr %msc, i32 0, i32 3
  %69 = ptrtoint ptr %scroll_accel to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %scroll_accel, align 4
  %mul = mul i32 %sub165, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %mul)
  %cmp166 = icmp sgt i32 %mul, 19
  %div = sdiv i32 %mul, 10
  %cond = select i1 %cmp166, i32 %div, i32 1
  %scroll_x_hr = getelementptr %struct.magicmouse_sc, ptr %msc, i32 0, i32 5, i32 %id.0, i32 4
  %71 = ptrtoint ptr %scroll_x_hr to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %scroll_x_hr, align 4
  %conv170 = sext i16 %72 to i32
  %sub171 = sub nsw i32 %conv170, %x.0
  %scroll_y_hr = getelementptr %struct.magicmouse_sc, ptr %msc, i32 0, i32 5, i32 %id.0, i32 5
  %73 = ptrtoint ptr %scroll_y_hr to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %scroll_y_hr, align 2
  %conv174 = sext i16 %74 to i32
  %sub175 = add nsw i32 %shr27.pn, %conv174
  %trunc = trunc i32 %state.0 to i8
  %75 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %trunc, label %if.then156.if.end344_crit_edge [
    i8 48, label %sw.bb
    i8 64, label %sw.bb216
  ]

if.then156.if.end344_crit_edge:                   ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end344

sw.bb:                                            ; preds = %if.then156
  %76 = ptrtoint ptr %scroll_x to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv139, ptr %scroll_x, align 4
  %77 = ptrtoint ptr %scroll_y to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv142, ptr %scroll_y, align 2
  %78 = ptrtoint ptr %scroll_x_hr to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv139, ptr %scroll_x_hr, align 4
  %79 = ptrtoint ptr %scroll_y_hr to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv142, ptr %scroll_y_hr, align 2
  %scroll_x_active = getelementptr %struct.magicmouse_sc, ptr %msc, i32 0, i32 5, i32 %id.0, i32 7
  %80 = ptrtoint ptr %scroll_x_active to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %scroll_x_active, align 1
  %scroll_y_active = getelementptr %struct.magicmouse_sc, ptr %msc, i32 0, i32 5, i32 %id.0, i32 8
  %81 = ptrtoint ptr %scroll_y_active to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %scroll_y_active, align 2
  %82 = load i8, ptr @scroll_acceleration, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool196.not = icmp eq i8 %82, 0
  br i1 %tobool196.not, label %sw.bb.if.else213_crit_edge, label %land.lhs.true198

sw.bb.if.else213_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else213

land.lhs.true198:                                 ; preds = %sw.bb
  %scroll_jiffies = getelementptr inbounds %struct.magicmouse_sc, ptr %msc, i32 0, i32 4
  %83 = ptrtoint ptr %scroll_jiffies to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %scroll_jiffies, align 4
  %add.neg = add i32 %63, -50
  %sub199 = sub i32 %add.neg, %84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub199)
  %cmp200 = icmp slt i32 %sub199, 0
  br i1 %cmp200, label %if.then202, label %land.lhs.true198.if.else213_crit_edge

land.lhs.true198.if.else213_crit_edge:            ; preds = %land.lhs.true198
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else213

if.then202:                                       ; preds = %land.lhs.true198
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %scroll_accel to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %scroll_accel, align 4
  %sub204 = add i32 %86, -1
  %87 = tail call i32 @llvm.smax.i32(i32 %sub204, i32 1)
  %88 = ptrtoint ptr %scroll_accel to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %scroll_accel, align 4
  br label %if.end344

if.else213:                                       ; preds = %land.lhs.true198.if.else213_crit_edge, %sw.bb.if.else213_crit_edge
  %89 = ptrtoint ptr %scroll_accel to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 7, ptr %scroll_accel, align 4
  br label %if.end344

sw.bb216:                                         ; preds = %if.then156
  %conv159 = sext i16 %65 to i32
  %sub160 = sub nsw i32 %conv159, %x.0
  %div220 = sdiv i32 %sub160, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div220)
  %cmp221.not = icmp eq i32 %div220, 0
  br i1 %cmp221.not, label %sw.bb216.if.end236_crit_edge, label %if.then223

sw.bb216.if.end236_crit_edge:                     ; preds = %sw.bb216
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end236

if.then223:                                       ; preds = %sw.bb216
  call void @__sanitizer_cov_trace_pc() #10
  %mul227 = mul i32 %mul, %div220
  %90 = trunc i32 %mul227 to i16
  %conv233 = sub i16 %65, %90
  %91 = ptrtoint ptr %scroll_x to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv233, ptr %scroll_x, align 4
  %scroll_jiffies234 = getelementptr inbounds %struct.magicmouse_sc, ptr %msc, i32 0, i32 4
  %92 = ptrtoint ptr %scroll_jiffies234 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %63, ptr %scroll_jiffies234, align 4
  %sub235 = sub nsw i32 0, %div220
  tail call void @input_event(ptr noundef %1, i32 noundef 2, i32 noundef 6, i32 noundef %sub235) #8
  br label %if.end236

if.end236:                                        ; preds = %if.then223, %sw.bb216.if.end236_crit_edge
  %93 = load i32, ptr @scroll_speed, align 4
  %sub237 = sub i32 64, %93
  %94 = ptrtoint ptr %scroll_accel to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %scroll_accel, align 4
  %mul239 = mul i32 %sub237, %95
  %div240 = sdiv i32 %sub164, %mul239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div240)
  %cmp241.not = icmp eq i32 %div240, 0
  br i1 %cmp241.not, label %if.end236.if.end255_crit_edge, label %if.then243

if.end236.if.end255_crit_edge:                    ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end255

if.then243:                                       ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #10
  %mul247 = mul i32 %mul239, %div240
  %96 = ptrtoint ptr %scroll_y to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %scroll_y, align 2
  %98 = trunc i32 %mul247 to i16
  %conv253 = sub i16 %97, %98
  store i16 %conv253, ptr %scroll_y, align 2
  %scroll_jiffies254 = getelementptr inbounds %struct.magicmouse_sc, ptr %msc, i32 0, i32 4
  %99 = ptrtoint ptr %scroll_jiffies254 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %63, ptr %scroll_jiffies254, align 4
  tail call void @input_event(ptr noundef %1, i32 noundef 2, i32 noundef 8, i32 noundef %div240) #8
  br label %if.end255

if.end255:                                        ; preds = %if.then243, %if.end236.if.end255_crit_edge
  %scroll_x_active258 = getelementptr %struct.magicmouse_sc, ptr %msc, i32 0, i32 5, i32 %id.0, i32 7
  %100 = ptrtoint ptr %scroll_x_active258 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %scroll_x_active258, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool259.not = icmp eq i8 %101, 0
  %102 = tail call i32 @llvm.abs.i32(i32 %sub171, i1 true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %102)
  %cmp269 = icmp ugt i32 %102, 90
  %or.cond = select i1 %tobool259.not, i1 %cmp269, i1 false
  br i1 %or.cond, label %if.then271, label %if.end255.if.end279_crit_edge

if.end255.if.end279_crit_edge:                    ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end279

if.then271:                                       ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %scroll_x_active258 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %scroll_x_active258, align 1
  %104 = ptrtoint ptr %scroll_x_hr to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv139, ptr %scroll_x_hr, align 4
  br label %if.end279

if.end279:                                        ; preds = %if.then271, %if.end255.if.end279_crit_edge
  %step_x_hr.0 = phi i32 [ %sub171, %if.end255.if.end279_crit_edge ], [ 0, %if.then271 ]
  %div280 = sdiv i32 %step_x_hr.0, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div280)
  %cmp281.not = icmp eq i32 %div280, 0
  br i1 %cmp281.not, label %if.end279.if.end299_crit_edge, label %land.lhs.true283

if.end279.if.end299_crit_edge:                    ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end299

land.lhs.true283:                                 ; preds = %if.end279
  %105 = ptrtoint ptr %scroll_x_active258 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %scroll_x_active258, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool287.not = icmp eq i8 %106, 0
  br i1 %tobool287.not, label %land.lhs.true283.if.end299_crit_edge, label %if.then289

land.lhs.true283.if.end299_crit_edge:             ; preds = %land.lhs.true283
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end299

if.then289:                                       ; preds = %land.lhs.true283
  call void @__sanitizer_cov_trace_pc() #10
  %mul290 = mul i32 %div280, %cond
  %107 = ptrtoint ptr %scroll_x_hr to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %scroll_x_hr, align 4
  %109 = trunc i32 %mul290 to i16
  %conv296 = sub i16 %108, %109
  store i16 %conv296, ptr %scroll_x_hr, align 4
  %mul298 = mul nsw i32 %div280, -12
  tail call void @input_event(ptr noundef %1, i32 noundef 2, i32 noundef 12, i32 noundef %mul298) #8
  br label %if.end299

if.end299:                                        ; preds = %if.then289, %land.lhs.true283.if.end299_crit_edge, %if.end279.if.end299_crit_edge
  %scroll_y_active302 = getelementptr %struct.magicmouse_sc, ptr %msc, i32 0, i32 5, i32 %id.0, i32 8
  %110 = ptrtoint ptr %scroll_y_active302 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %scroll_y_active302, align 2, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool303.not = icmp eq i8 %111, 0
  %112 = tail call i32 @llvm.abs.i32(i32 %sub175, i1 true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %112)
  %cmp314 = icmp ugt i32 %112, 90
  %or.cond560 = select i1 %tobool303.not, i1 %cmp314, i1 false
  br i1 %or.cond560, label %if.then316, label %if.end299.if.end324_crit_edge

if.end299.if.end324_crit_edge:                    ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end324

if.then316:                                       ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %scroll_y_active302 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %scroll_y_active302, align 2
  %114 = ptrtoint ptr %scroll_y_hr to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv142, ptr %scroll_y_hr, align 2
  br label %if.end324

if.end324:                                        ; preds = %if.then316, %if.end299.if.end324_crit_edge
  %step_y_hr.0 = phi i32 [ %sub175, %if.end299.if.end324_crit_edge ], [ 0, %if.then316 ]
  %div325 = sdiv i32 %step_y_hr.0, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div325)
  %cmp326.not = icmp eq i32 %div325, 0
  br i1 %cmp326.not, label %if.end324.if.end344_crit_edge, label %land.lhs.true328

if.end324.if.end344_crit_edge:                    ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end344

land.lhs.true328:                                 ; preds = %if.end324
  %115 = ptrtoint ptr %scroll_y_active302 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %scroll_y_active302, align 2, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool332.not = icmp eq i8 %116, 0
  br i1 %tobool332.not, label %land.lhs.true328.if.end344_crit_edge, label %if.then334

land.lhs.true328.if.end344_crit_edge:             ; preds = %land.lhs.true328
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end344

if.then334:                                       ; preds = %land.lhs.true328
  call void @__sanitizer_cov_trace_pc() #10
  %mul335 = mul i32 %div325, %cond
  %117 = ptrtoint ptr %scroll_y_hr to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %scroll_y_hr, align 2
  %119 = trunc i32 %mul335 to i16
  %conv341 = sub i16 %118, %119
  store i16 %conv341, ptr %scroll_y_hr, align 2
  %mul342 = mul nsw i32 %div325, 12
  tail call void @input_event(ptr noundef %1, i32 noundef 2, i32 noundef 11, i32 noundef %mul342) #8
  br label %if.end344

if.end344:                                        ; preds = %if.then334, %land.lhs.true328.if.end344_crit_edge, %if.end324.if.end344_crit_edge, %if.else213, %if.then202, %if.then156.if.end344_crit_edge, %land.lhs.true.if.end344_crit_edge, %if.end137.if.end344_crit_edge
  br i1 %down.0.in, label %if.then346, label %if.end389.critedge

if.then346:                                       ; preds = %if.end344
  %ntouches = getelementptr inbounds %struct.magicmouse_sc, ptr %msc, i32 0, i32 2
  %120 = ptrtoint ptr %ntouches to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ntouches, align 4
  %inc = add i32 %121, 1
  store i32 %inc, ptr %ntouches, align 4
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 47, i32 noundef %id.0) #8
  %call.c = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %1, i32 noundef 0, i1 noundef zeroext true) #8
  %shl351 = shl nuw nsw i32 %touch_major.0, 2
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 48, i32 noundef %shl351) #8
  %shl352 = shl nuw nsw i32 %touch_minor.0, 2
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 49, i32 noundef %shl352) #8
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 52, i32 noundef %orientation.0.neg) #8
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 53, i32 noundef %x.0) #8
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 54, i32 noundef %y.0) #8
  %122 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 613, i16 %123)
  %cmp357 = icmp eq i16 %123, 613
  br i1 %cmp357, label %if.then359, label %if.then346.if.end360_crit_edge

if.then346.if.end360_crit_edge:                   ; preds = %if.then346
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end360

if.then359:                                       ; preds = %if.then346
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 58, i32 noundef %pressure.0) #8
  br label %if.end360

if.end360:                                        ; preds = %if.then359, %if.then346.if.end360_crit_edge
  %124 = load i8, ptr @report_undeciphered, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool361.not = icmp eq i8 %124, 0
  br i1 %tobool361.not, label %if.end360.if.end389_crit_edge, label %if.then362

if.end360.if.end389_crit_edge:                    ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end389

if.then362:                                       ; preds = %if.end360
  %125 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %product, align 4
  %127 = zext i16 %126 to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.60)
  switch i16 %126, label %if.then383 [
    i16 781, label %if.then362.if.then374_crit_edge
    i16 617, label %if.then362.if.then374_crit_edge562
    i16 613, label %if.then362.if.end389_crit_edge
  ]

if.then362.if.end389_crit_edge:                   ; preds = %if.then362
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end389

if.then362.if.then374_crit_edge562:               ; preds = %if.then362
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then374

if.then362.if.then374_crit_edge:                  ; preds = %if.then362
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then374

if.then374:                                       ; preds = %if.then362.if.then374_crit_edge, %if.then362.if.then374_crit_edge562
  %arrayidx375 = getelementptr i8, ptr %tdata, i32 7
  %128 = ptrtoint ptr %arrayidx375 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx375, align 1
  %conv376 = zext i8 %129 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 4, i32 noundef 3, i32 noundef %conv376) #8
  br label %if.end389

if.then383:                                       ; preds = %if.then362
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx384 = getelementptr i8, ptr %tdata, i32 8
  %130 = ptrtoint ptr %arrayidx384 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx384, align 1
  %conv385 = zext i8 %131 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 4, i32 noundef 3, i32 noundef %conv385) #8
  br label %if.end389

if.end389.critedge:                               ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 47, i32 noundef %id.0) #8
  %call.c559 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %1, i32 noundef 0, i1 noundef zeroext false) #8
  br label %if.end389

if.end389:                                        ; preds = %if.end389.critedge, %if.then383, %if.then374, %if.then362.if.end389_crit_edge, %if.end360.if.end389_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_report_pointer_emulation(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !21, !22, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !40, !42, !43, !45, !46, !47, !49, !51, !53, !55, !56, !57, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !115, !117, !118, !119, !120, !121, !123, !124, !125, !126, !128}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @__param_emulate_3button, !1, !"__param_emulate_3button", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-magicmouse.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_emulate_3buttontype223, !1, !"__UNIQUE_ID_emulate_3buttontype223", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_emulate_3button224, !4, !"__UNIQUE_ID_emulate_3button224", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-magicmouse.c", i32 25, i32 1}
!5 = !{ptr @__param_emulate_scroll_wheel, !6, !"__param_emulate_scroll_wheel", i1 false, i1 false}
!6 = !{!"../drivers/hid/hid-magicmouse.c", i32 31, i32 1}
!7 = !{ptr @__UNIQUE_ID_emulate_scroll_wheeltype225, !6, !"__UNIQUE_ID_emulate_scroll_wheeltype225", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_emulate_scroll_wheel226, !9, !"__UNIQUE_ID_emulate_scroll_wheel226", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-magicmouse.c", i32 32, i32 1}
!10 = !{ptr @__param_scroll_speed, !11, !"__param_scroll_speed", i1 false, i1 false}
!11 = !{!"../drivers/hid/hid-magicmouse.c", i32 43, i32 1}
!12 = !{ptr @__UNIQUE_ID_scroll_speed227, !13, !"__UNIQUE_ID_scroll_speed227", i1 false, i1 false}
!13 = !{!"../drivers/hid/hid-magicmouse.c", i32 44, i32 1}
!14 = !{ptr @__param_scroll_acceleration, !15, !"__param_scroll_acceleration", i1 false, i1 false}
!15 = !{!"../drivers/hid/hid-magicmouse.c", i32 47, i32 1}
!16 = !{ptr @__UNIQUE_ID_scroll_accelerationtype228, !15, !"__UNIQUE_ID_scroll_accelerationtype228", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_scroll_acceleration229, !18, !"__UNIQUE_ID_scroll_acceleration229", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-magicmouse.c", i32 48, i32 1}
!19 = !{ptr @__param_report_undeciphered, !20, !"__param_report_undeciphered", i1 false, i1 false}
!20 = !{!"../drivers/hid/hid-magicmouse.c", i32 51, i32 1}
!21 = !{ptr @__UNIQUE_ID_report_undecipheredtype230, !20, !"__UNIQUE_ID_report_undecipheredtype230", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_report_undeciphered231, !23, !"__UNIQUE_ID_report_undeciphered231", i1 false, i1 false}
!23 = !{!"../drivers/hid/hid-magicmouse.c", i32 52, i32 1}
!24 = !{ptr @__initcall__kmod_hid_magicmouse__236_966_magicmouse_driver_init6, !25, !"__initcall__kmod_hid_magicmouse__236_966_magicmouse_driver_init6", i1 false, i1 false}
!25 = !{!"../drivers/hid/hid-magicmouse.c", i32 966, i32 1}
!26 = !{ptr @__exitcall_magicmouse_driver_exit, !25, !"__exitcall_magicmouse_driver_exit", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_file237, !28, !"__UNIQUE_ID_file237", i1 false, i1 false}
!28 = !{!"../drivers/hid/hid-magicmouse.c", i32 968, i32 1}
!29 = !{ptr @__UNIQUE_ID_license238, !28, !"__UNIQUE_ID_license238", i1 false, i1 false}
!30 = !{ptr @report_undeciphered, !31, !"report_undeciphered", i1 false, i1 false}
!31 = !{!"../drivers/hid/hid-magicmouse.c", i32 50, i32 13}
!32 = !{ptr @__param_str_emulate_3button, !1, !"__param_str_emulate_3button", i1 false, i1 false}
!33 = !{ptr @emulate_3button, !34, !"emulate_3button", i1 false, i1 false}
!34 = !{!"../drivers/hid/hid-magicmouse.c", i32 23, i32 13}
!35 = !{ptr @__param_str_emulate_scroll_wheel, !6, !"__param_str_emulate_scroll_wheel", i1 false, i1 false}
!36 = !{ptr @emulate_scroll_wheel, !37, !"emulate_scroll_wheel", i1 false, i1 false}
!37 = !{!"../drivers/hid/hid-magicmouse.c", i32 30, i32 13}
!38 = !{ptr @__param_str_scroll_speed, !11, !"__param_str_scroll_speed", i1 false, i1 false}
!39 = !{ptr @__param_ops_scroll_speed, !11, !"__param_ops_scroll_speed", i1 false, i1 false}
!40 = !{ptr @scroll_speed, !41, !"scroll_speed", i1 false, i1 false}
!41 = !{!"../drivers/hid/hid-magicmouse.c", i32 34, i32 21}
!42 = !{ptr @__param_str_scroll_acceleration, !15, !"__param_str_scroll_acceleration", i1 false, i1 false}
!43 = !{ptr @scroll_acceleration, !44, !"scroll_acceleration", i1 false, i1 false}
!44 = !{!"../drivers/hid/hid-magicmouse.c", i32 46, i32 13}
!45 = !{ptr @__param_str_report_undeciphered, !20, !"__param_str_report_undeciphered", i1 false, i1 false}
!46 = !{ptr @.str, !25, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.1, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hid/hid-magicmouse.c", i32 956, i32 10}
!49 = !{ptr @magicmouse_driver, !50, !"magicmouse_driver", i1 false, i1 false}
!50 = !{!"../drivers/hid/hid-magicmouse.c", i32 955, i32 26}
!51 = !{ptr @magic_mice, !52, !"magic_mice", i1 false, i1 false}
!52 = !{!"../drivers/hid/hid-magicmouse.c", i32 938, i32 35}
!53 = !{ptr @.str.2, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hid/hid-magicmouse.c", i32 805, i32 3}
!55 = !{ptr @.str.3, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.4, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.5, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.6, !54, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @magicmouse_probe._entry, !54, !"_entry", i1 false, i1 false}
!60 = !{ptr @magicmouse_probe._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @magicmouse_probe.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/hid/hid-magicmouse.c", i32 811, i32 2}
!63 = !{ptr @.str.7, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @magicmouse_probe.__key.8, !62, !"__key", i1 false, i1 false}
!65 = !{ptr @.str.9, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.11, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hid/hid-magicmouse.c", i32 818, i32 3}
!68 = !{ptr @magicmouse_probe._entry.10, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @magicmouse_probe._entry_ptr.12, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.14, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hid/hid-magicmouse.c", i32 824, i32 3}
!72 = !{ptr @magicmouse_probe._entry.13, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @magicmouse_probe._entry_ptr.15, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @magicmouse_probe.__key.16, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/hid/hid-magicmouse.c", i32 828, i32 2}
!76 = !{ptr @.str.17, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.19, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hid/hid-magicmouse.c", i32 839, i32 3}
!79 = !{ptr @magicmouse_probe._entry.18, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @magicmouse_probe._entry_ptr.20, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.22, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hid/hid-magicmouse.c", i32 865, i32 3}
!83 = !{ptr @magicmouse_probe._entry.21, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @magicmouse_probe._entry_ptr.23, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hid/hid-magicmouse.c", i32 881, i32 3}
!87 = !{ptr @magicmouse_probe._entry.24, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @magicmouse_probe._entry_ptr.26, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.27, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hid/hid-magicmouse.c", i32 755, i32 3}
!91 = !{ptr @magicmouse_enable_mt_work._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @magicmouse_enable_mt_work._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.28, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hid/hid-magicmouse.c", i32 388, i32 4}
!95 = !{ptr @.str.29, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.30, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @magicmouse_raw_event._entry, !94, !"_entry", i1 false, i1 false}
!98 = !{ptr @magicmouse_raw_event._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.32, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hid/hid-magicmouse.c", i32 410, i32 4}
!101 = !{ptr @magicmouse_raw_event._entry.31, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @magicmouse_raw_event._entry_ptr.33, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.35, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hid/hid-magicmouse.c", i32 426, i32 4}
!105 = !{ptr @magicmouse_raw_event._entry.34, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @magicmouse_raw_event._entry_ptr.36, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.38, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hid/hid-magicmouse.c", i32 454, i32 4}
!109 = !{ptr @magicmouse_raw_event._entry.37, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @magicmouse_raw_event._entry_ptr.39, !108, !"_entry_ptr", i1 false, i1 false}
!111 = distinct !{null, !112, !"middle_button_start", i1 false, i1 false}
!112 = !{!"../drivers/hid/hid-magicmouse.c", i32 27, i32 12}
!113 = distinct !{null, !114, !"middle_button_stop", i1 false, i1 false}
!114 = !{!"../drivers/hid/hid-magicmouse.c", i32 28, i32 12}
!115 = !{ptr @.str.40, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hid/hid-magicmouse.c", i32 922, i32 3}
!117 = !{ptr @.str.41, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.42, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @magicmouse_report_fixup._entry, !116, !"_entry", i1 false, i1 false}
!120 = !{ptr @magicmouse_report_fixup._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.43, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hid/hid-magicmouse.c", i32 701, i32 3}
!123 = !{ptr @.str.44, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @magicmouse_input_configured._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @magicmouse_input_configured._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.45, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hid/hid-magicmouse.c", i32 556, i32 19}
!128 = !{ptr @.str.46, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hid/hid-magicmouse.c", i32 558, i32 19}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!139 = !{!"auto-init"}
!140 = !{i8 0, i8 2}
