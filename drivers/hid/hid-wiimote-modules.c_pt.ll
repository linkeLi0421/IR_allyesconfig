; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-wiimote-modules.c_pt.bc'
source_filename = "../drivers/hid/hid-wiimote-modules.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.wiimod_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.wiimote_data = type { ptr, ptr, %struct.work_struct, [4 x ptr], ptr, ptr, ptr, %struct.power_supply_desc, ptr, %struct.timer_list, ptr, %union.anon.69, %struct.wiimote_queue, %struct.wiimote_state, %struct.work_struct }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.69 = type { ptr }
%struct.wiimote_queue = type { %struct.spinlock, %struct.work_struct, i8, i8, [32 x %struct.wiimote_buf] }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wiimote_buf = type { [16384 x i8], i32 }
%struct.wiimote_state = type { %struct.spinlock, i32, [2 x i8], i8, i8, i8, i8, %struct.mutex, %struct.completion, i32, i32, i8, i8, ptr, i8, [4 x [3 x i16]], [4 x i16], [7 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@wiimod_mp = dso_local constant { %struct.wiimod_ops, [60 x i8] } { %struct.wiimod_ops { i16 0, i32 0, ptr @wiimod_mp_probe, ptr @wiimod_mp_remove, ptr null, ptr null, ptr null, ptr @wiimod_mp_in_mp, ptr null }, [60 x i8] zeroinitializer }, align 32
@wiimod_keys = internal constant { %struct.wiimod_ops, [60 x i8] } { %struct.wiimod_ops { i16 1, i32 0, ptr @wiimod_keys_probe, ptr null, ptr @wiimod_keys_in_keys, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@wiimod_rumble = internal constant { %struct.wiimod_ops, [60 x i8] } { %struct.wiimod_ops { i16 1, i32 0, ptr @wiimod_rumble_probe, ptr @wiimod_rumble_remove, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@wiimod_battery = internal constant { %struct.wiimod_ops, [60 x i8] } { %struct.wiimod_ops { i16 0, i32 0, ptr @wiimod_battery_probe, ptr @wiimod_battery_remove, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@wiimod_leds = internal constant { [4 x %struct.wiimod_ops], [48 x i8] } { [4 x %struct.wiimod_ops] [%struct.wiimod_ops { i16 0, i32 0, ptr @wiimod_led_probe, ptr @wiimod_led_remove, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.wiimod_ops { i16 0, i32 1, ptr @wiimod_led_probe, ptr @wiimod_led_remove, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.wiimod_ops { i16 0, i32 2, ptr @wiimod_led_probe, ptr @wiimod_led_remove, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.wiimod_ops { i16 0, i32 3, ptr @wiimod_led_probe, ptr @wiimod_led_remove, ptr null, ptr null, ptr null, ptr null, ptr null }], [48 x i8] zeroinitializer }, align 32
@wiimod_accel = internal constant { %struct.wiimod_ops, [60 x i8] } { %struct.wiimod_ops { i16 0, i32 0, ptr @wiimod_accel_probe, ptr @wiimod_accel_remove, ptr null, ptr @wiimod_accel_in_accel, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@wiimod_ir = internal constant { %struct.wiimod_ops, [60 x i8] } { %struct.wiimod_ops { i16 0, i32 0, ptr @wiimod_ir_probe, ptr @wiimod_ir_remove, ptr null, ptr null, ptr @wiimod_ir_in_ir, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@wiimod_builtin_mp = internal constant { %struct.wiimod_ops, [60 x i8] } { %struct.wiimod_ops { i16 0, i32 0, ptr @wiimod_builtin_mp_probe, ptr @wiimod_builtin_mp_remove, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@wiimod_no_mp = internal constant { %struct.wiimod_ops, [60 x i8] } { %struct.wiimod_ops { i16 0, i32 0, ptr @wiimod_no_mp_probe, ptr @wiimod_no_mp_remove, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@wiimod_table = dso_local global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @wiimod_keys, ptr @wiimod_rumble, ptr @wiimod_battery, ptr @wiimod_leds, ptr getelementptr (i8, ptr @wiimod_leds, i64 36), ptr getelementptr (i8, ptr @wiimod_leds, i64 72), ptr getelementptr (i8, ptr @wiimod_leds, i64 108), ptr @wiimod_accel, ptr @wiimod_ir, ptr @wiimod_builtin_mp, ptr @wiimod_no_mp], [52 x i8] zeroinitializer }, align 32
@wiimod_dummy = internal constant { %struct.wiimod_ops, [60 x i8] } zeroinitializer, align 32
@wiimod_nunchuk = internal constant { %struct.wiimod_ops, [60 x i8] } { %struct.wiimod_ops { i16 0, i32 0, ptr @wiimod_nunchuk_probe, ptr @wiimod_nunchuk_remove, ptr null, ptr null, ptr null, ptr null, ptr @wiimod_nunchuk_in_ext }, [60 x i8] zeroinitializer }, align 32
@wiimod_classic = internal constant { %struct.wiimod_ops, [60 x i8] } { %struct.wiimod_ops { i16 0, i32 0, ptr @wiimod_classic_probe, ptr @wiimod_classic_remove, ptr null, ptr null, ptr null, ptr null, ptr @wiimod_classic_in_ext }, [60 x i8] zeroinitializer }, align 32
@wiimod_bboard = internal constant { %struct.wiimod_ops, [60 x i8] } { %struct.wiimod_ops { i16 2, i32 0, ptr @wiimod_bboard_probe, ptr @wiimod_bboard_remove, ptr @wiimod_bboard_in_keys, ptr null, ptr null, ptr null, ptr @wiimod_bboard_in_ext }, [60 x i8] zeroinitializer }, align 32
@wiimod_pro = internal constant { %struct.wiimod_ops, [60 x i8] } { %struct.wiimod_ops { i16 4, i32 0, ptr @wiimod_pro_probe, ptr @wiimod_pro_remove, ptr null, ptr null, ptr null, ptr null, ptr @wiimod_pro_in_ext }, [60 x i8] zeroinitializer }, align 32
@wiimod_drums = internal constant { %struct.wiimod_ops, [60 x i8] } { %struct.wiimod_ops { i16 0, i32 0, ptr @wiimod_drums_probe, ptr @wiimod_drums_remove, ptr null, ptr null, ptr null, ptr null, ptr @wiimod_drums_in_ext }, [60 x i8] zeroinitializer }, align 32
@wiimod_guitar = internal constant { %struct.wiimod_ops, [60 x i8] } { %struct.wiimod_ops { i16 0, i32 0, ptr @wiimod_guitar_probe, ptr @wiimod_guitar_remove, ptr null, ptr null, ptr null, ptr null, ptr @wiimod_guitar_in_ext }, [60 x i8] zeroinitializer }, align 32
@wiimod_ext_table = dso_local global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @wiimod_dummy, ptr @wiimod_dummy, ptr @wiimod_nunchuk, ptr @wiimod_classic, ptr @wiimod_bboard, ptr @wiimod_pro, ptr @wiimod_drums, ptr @wiimod_guitar], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Nintendo Wii Remote Motion Plus\00", [32 x i8] zeroinitializer }, align 32
@wiimod_rumble_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&wdata->rumble_worker)\00", [55 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@wiimod_battery_props = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 47, i32 66], [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wiimote_battery_%s\00", [45 x i8] zeroinitializer }, align 32
@wiimod_battery_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 254, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cannot register battery device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wiimod_battery_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/hid/hid-wiimote-modules.c\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wiimod_battery_probe._entry_ptr = internal global ptr @wiimod_battery_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s:blue:p%lu\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Nintendo Wii Remote Accelerometer\00", [62 x i8] zeroinitializer }, align 32
@wiimod_accel_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 510, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot register input device\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wiimod_accel_probe\00", [45 x i8] zeroinitializer }, align 32
@wiimod_accel_probe._entry_ptr = internal global ptr @wiimod_accel_probe._entry, section ".printk_index", align 4
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Nintendo Wii Remote IR\00", [41 x i8] zeroinitializer }, align 32
@wiimod_ir_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.13, ptr @.str.5, i32 772, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wiimod_ir_probe\00", [16 x i8] zeroinitializer }, align 32
@wiimod_ir_probe._entry_ptr = internal global ptr @wiimod_ir_probe._entry, section ".printk_index", align 4
@wiimod_ir_change.data_enable = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\01", [31 x i8] zeroinitializer }, align 32
@wiimod_ir_change.data_sens1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\02\00\00q\01\00\AA\00d", [23 x i8] zeroinitializer }, align 32
@wiimod_ir_change.data_sens2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"c\03", [30 x i8] zeroinitializer }, align 32
@wiimod_ir_change.data_fin = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\08", [31 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Nintendo Wii Remote Nunchuk\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Nintendo Wii Remote Classic Controller\00", [57 x i8] zeroinitializer }, align 32
@wiimod_classic_in_ext.digital_to_analog = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" \00\E0", [29 x i8] zeroinitializer }, align 32
@wiimote_dpad_as_analog = external dso_local local_unnamed_addr global i8, align 1
@dev_attr_bboard_calib = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wiimod_bboard_calib_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@wiimod_bboard_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 1505, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot create sysfs attribute\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wiimod_bboard_probe\00", [44 x i8] zeroinitializer }, align 32
@wiimod_bboard_probe._entry_ptr = internal global ptr @wiimod_bboard_probe._entry, section ".printk_index", align 4
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Nintendo Wii Remote Balance Board\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bboard_calib\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%04x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%04x:\00", [26 x i8] zeroinitializer }, align 32
@wiimod_pro_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@dev_attr_pro_calib = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wiimod_pro_calib_show, ptr @wiimod_pro_calib_store }, [36 x i8] zeroinitializer }, align 32
@wiimod_pro_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.22, ptr @.str.5, i32 1894, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wiimod_pro_probe\00", [47 x i8] zeroinitializer }, align 32
@wiimod_pro_probe._entry_ptr = internal global ptr @wiimod_pro_probe._entry, section ".printk_index", align 4
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Nintendo Wii Remote Pro Controller\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pro_calib\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%+06hd:\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%+06hd \00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%+06hd\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"scan\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%hd:%hd %hd:%hd\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Nintendo Wii Remote Drums\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Nintendo Wii Remote Guitar\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 47, i64 66]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 16, i64 64, i64 128, i64 192]
@___asan_gen_.34 = private unnamed_addr constant [10 x i8] c"wiimod_mp\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 2625, i32 25 }
@___asan_gen_.37 = private unnamed_addr constant [12 x i8] c"wiimod_keys\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 101, i32 32 }
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"wiimod_rumble\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 179, i32 32 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"wiimod_battery\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 279, i32 32 }
@___asan_gen_.46 = private unnamed_addr constant [12 x i8] c"wiimod_leds\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 391, i32 32 }
@___asan_gen_.49 = private unnamed_addr constant [13 x i8] c"wiimod_accel\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 532, i32 32 }
@___asan_gen_.52 = private unnamed_addr constant [10 x i8] c"wiimod_ir\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 794, i32 32 }
@___asan_gen_.55 = private unnamed_addr constant [18 x i8] c"wiimod_builtin_mp\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 2435, i32 32 }
@___asan_gen_.58 = private unnamed_addr constant [13 x i8] c"wiimod_no_mp\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 2471, i32 32 }
@___asan_gen_.61 = private unnamed_addr constant [13 x i8] c"wiimod_table\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 2637, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant [13 x i8] c"wiimod_dummy\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 2635, i32 32 }
@___asan_gen_.67 = private unnamed_addr constant [15 x i8] c"wiimod_nunchuk\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 991, i32 32 }
@___asan_gen_.70 = private unnamed_addr constant [15 x i8] c"wiimod_classic\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1288, i32 32 }
@___asan_gen_.73 = private unnamed_addr constant [14 x i8] c"wiimod_bboard\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1563, i32 32 }
@___asan_gen_.76 = private unnamed_addr constant [11 x i8] c"wiimod_pro\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1960, i32 32 }
@___asan_gen_.79 = private unnamed_addr constant [13 x i8] c"wiimod_drums\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 2182, i32 32 }
@___asan_gen_.82 = private unnamed_addr constant [14 x i8] c"wiimod_guitar\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 2398, i32 32 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"wiimod_ext_table\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 2651, i32 26 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 2590, i32 20 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 158, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [21 x i8] c"wiimod_battery_props\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 194, i32 35 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 245, i32 51 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 254, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 353, i32 25 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 498, i32 23 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 510, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 750, i32 20 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 772, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [12 x i8] c"data_enable\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 612, i32 20 }
@___asan_gen_.148 = private unnamed_addr constant [11 x i8] c"data_sens1\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 613, i32 20 }
@___asan_gen_.151 = private unnamed_addr constant [11 x i8] c"data_sens2\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 615, i32 20 }
@___asan_gen_.154 = private unnamed_addr constant [9 x i8] c"data_fin\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 616, i32 20 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 945, i32 33 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1239, i32 33 }
@___asan_gen_.163 = private unnamed_addr constant [18 x i8] c"digital_to_analog\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1091, i32 18 }
@___asan_gen_.166 = private unnamed_addr constant [22 x i8] c"dev_attr_bboard_calib\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1505, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1517, i32 33 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1465, i32 8 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1456, i32 31 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1458, i32 31 }
@___asan_gen_.190 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1868, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [19 x i8] c"dev_attr_pro_calib\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1894, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1905, i32 33 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1859, i32 8 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1821, i32 24 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1822, i32 24 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1824, i32 24 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1837, i32 20 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1842, i32 19 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 2125, i32 33 }
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.227 = private constant [37 x i8] c"../drivers/hid/hid-wiimote-modules.c\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 2355, i32 33 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @wiimod_accel_probe._entry, ptr @wiimod_accel_probe._entry_ptr, ptr @wiimod_battery_probe._entry, ptr @wiimod_battery_probe._entry_ptr, ptr @wiimod_bboard_probe._entry, ptr @wiimod_bboard_probe._entry_ptr, ptr @wiimod_ir_probe._entry, ptr @wiimod_ir_probe._entry_ptr, ptr @wiimod_pro_probe._entry, ptr @wiimod_pro_probe._entry_ptr, ptr @wiimod_mp, ptr @wiimod_keys, ptr @wiimod_rumble, ptr @wiimod_battery, ptr @wiimod_leds, ptr @wiimod_accel, ptr @wiimod_ir, ptr @wiimod_builtin_mp, ptr @wiimod_no_mp, ptr @wiimod_table, ptr @wiimod_dummy, ptr @wiimod_nunchuk, ptr @wiimod_classic, ptr @wiimod_bboard, ptr @wiimod_pro, ptr @wiimod_drums, ptr @wiimod_guitar, ptr @wiimod_ext_table, ptr @.str, ptr @wiimod_rumble_probe.__key, ptr @.str.1, ptr @wiimod_battery_props, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @wiimod_ir_change.data_enable, ptr @wiimod_ir_change.data_sens1, ptr @wiimod_ir_change.data_sens2, ptr @wiimod_ir_change.data_fin, ptr @.str.14, ptr @.str.15, ptr @wiimod_classic_in_ext.digital_to_analog, ptr @dev_attr_bboard_calib, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @wiimod_pro_probe.__key, ptr @dev_attr_pro_calib, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_mp to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_keys to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_rumble to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_battery to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_leds to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_accel to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_ir to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_builtin_mp to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_no_mp to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_table to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_dummy to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_nunchuk to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_classic to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_bboard to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_pro to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_drums to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_guitar to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_ext_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_rumble_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_battery_props to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_battery_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_accel_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_ir_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_ir_change.data_enable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_ir_change.data_sens1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_ir_change.data_sens2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_ir_change.data_fin to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_classic_in_ext.digital_to_analog to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bboard_calib to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_bboard_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_pro_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pro_calib to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimod_pro_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_mp_probe(ptr nocapture noundef readnone %ops, ptr noundef %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @input_allocate_device() #8
  %mp = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 8
  %0 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %mp, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %wdata, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mp, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @wiimod_mp_open, ptr %open, align 8
  %5 = load ptr, ptr %mp, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @wiimod_mp_close, ptr %close, align 4
  %7 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wdata, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %8, i32 0, i32 18
  %9 = load ptr, ptr %mp, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 40, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %parent, align 8
  %11 = load ptr, ptr %wdata, align 4
  %bus = getelementptr inbounds %struct.hid_device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bus, align 8
  %14 = load ptr, ptr %mp, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %13, ptr %id, align 4
  %16 = load ptr, ptr %wdata, align 4
  %vendor = getelementptr inbounds %struct.hid_device, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vendor, align 4
  %conv = trunc i32 %18 to i16
  %19 = load ptr, ptr %mp, align 4
  %vendor12 = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %vendor12 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv, ptr %vendor12, align 2
  %21 = load ptr, ptr %wdata, align 4
  %product = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %product, align 8
  %conv14 = trunc i32 %23 to i16
  %24 = load ptr, ptr %mp, align 4
  %product17 = getelementptr inbounds %struct.input_dev, ptr %24, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %product17 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv14, ptr %product17, align 4
  %26 = load ptr, ptr %wdata, align 4
  %version = getelementptr inbounds %struct.hid_device, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %version, align 4
  %conv19 = trunc i32 %28 to i16
  %29 = load ptr, ptr %mp, align 4
  %version22 = getelementptr inbounds %struct.input_dev, ptr %29, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %version22 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv19, ptr %version22, align 2
  %31 = load ptr, ptr %mp, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str, ptr %31, align 8
  %33 = load ptr, ptr %mp, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %evbit) #8
  %34 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mp, align 4
  %absbit = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 3, ptr noundef %absbit) #8
  %36 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mp, align 4
  %absbit28 = getelementptr inbounds %struct.input_dev, ptr %37, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 4, ptr noundef %absbit28) #8
  %38 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mp, align 4
  %absbit31 = getelementptr inbounds %struct.input_dev, ptr %39, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 5, ptr noundef %absbit31) #8
  %40 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mp, align 4
  tail call void @input_set_abs_params(ptr noundef %41, i32 noundef 3, i32 noundef -16000, i32 noundef 16000, i32 noundef 4, i32 noundef 8) #8
  %42 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mp, align 4
  tail call void @input_set_abs_params(ptr noundef %43, i32 noundef 4, i32 noundef -16000, i32 noundef 16000, i32 noundef 4, i32 noundef 8) #8
  %44 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mp, align 4
  tail call void @input_set_abs_params(ptr noundef %45, i32 noundef 5, i32 noundef -16000, i32 noundef 16000, i32 noundef 4, i32 noundef 8) #8
  %46 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mp, align 4
  %call37 = tail call i32 @input_register_device(ptr noundef %47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end.cleanup_crit_edge, label %err_free

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_free:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mp, align 4
  tail call void @input_free_device(ptr noundef %49) #8
  %50 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %mp, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %err_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_mp_remove(ptr nocapture noundef readnone %ops, ptr nocapture noundef %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mp = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 8
  %0 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_unregister_device(ptr noundef nonnull %1) #8
  %2 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %mp, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_mp_in_mp(ptr nocapture noundef readonly %wdata, ptr nocapture noundef readonly %ext) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ext, align 1
  %conv = zext i8 %1 to i32
  %arrayidx1 = getelementptr i8, ptr %ext, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %arrayidx3 = getelementptr i8, ptr %ext, i32 2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %arrayidx5 = getelementptr i8, ptr %ext, i32 3
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 1
  %conv7 = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv7, 6
  %and = and i32 %shl, 16128
  %or = or i32 %and, %conv
  %arrayidx8 = getelementptr i8, ptr %ext, i32 4
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  %conv10 = zext i8 %9 to i32
  %shl11 = shl nuw nsw i32 %conv10, 6
  %and12 = and i32 %shl11, 16128
  %or13 = or i32 %and12, %conv2
  %arrayidx14 = getelementptr i8, ptr %ext, i32 5
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx14, align 1
  %conv16 = zext i8 %11 to i32
  %shl17 = shl nuw nsw i32 %conv16, 6
  %and18 = and i32 %shl17, 16128
  %or19 = or i32 %and18, %conv4
  %sub = add nsw i32 %or, -8192
  %sub20 = add nsw i32 %or13, -8192
  %sub21 = add nsw i32 %or19, -8192
  %12 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  %mul26 = mul nsw i32 %sub, 9
  %mul25 = mul nsw i32 %sub, 18000
  %div = sdiv i32 %mul25, 440
  %x.0 = select i1 %tobool.not, i32 %div, i32 %mul26
  %13 = and i8 %9, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool30.not = icmp eq i8 %13, 0
  %mul36 = mul nsw i32 %sub20, 9
  %mul33 = mul nsw i32 %sub20, 18000
  %div34 = sdiv i32 %mul33, 440
  %y.0 = select i1 %tobool30.not, i32 %div34, i32 %mul36
  %14 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool41.not = icmp eq i8 %14, 0
  %mul47 = mul nsw i32 %sub21, 9
  %mul44 = mul nsw i32 %sub21, 18000
  %div45 = sdiv i32 %mul44, 440
  %z.0 = select i1 %tobool41.not, i32 %div45, i32 %mul47
  %mp = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 8
  %15 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mp, align 4
  tail call void @input_event(ptr noundef %16, i32 noundef 3, i32 noundef 3, i32 noundef %x.0) #8
  %17 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mp, align 4
  tail call void @input_event(ptr noundef %18, i32 noundef 3, i32 noundef 4, i32 noundef %y.0) #8
  %19 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mp, align 4
  tail call void @input_event(ptr noundef %20, i32 noundef 3, i32 noundef 5, i32 noundef %z.0) #8
  %21 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mp, align 4
  tail call void @input_event(ptr noundef %22, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_mp_open(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %flags7 = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags7, align 4
  %or = or i32 %3, 4096
  store i32 %or, ptr %flags7, align 4
  tail call void @wiiproto_req_drm(ptr noundef %1, i8 noundef zeroext 0) #8
  tail call void @__wiimote_schedule(ptr noundef %1) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_mp_close(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %flags7 = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags7, align 4
  %and = and i32 %3, -4097
  store i32 %and, ptr %flags7, align 4
  tail call void @wiiproto_req_drm(ptr noundef %1, i8 noundef zeroext 0) #8
  tail call void @__wiimote_schedule(ptr noundef %1) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiiproto_req_drm(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wiimote_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_keys_probe(ptr nocapture noundef readnone %ops, ptr nocapture noundef readonly %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %input = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 1
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %evbit) #8
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 105, ptr noundef %keybit) #8
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  %keybit.1 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 106, ptr noundef %keybit.1) #8
  %6 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input, align 4
  %keybit.2 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 103, ptr noundef %keybit.2) #8
  %8 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input, align 4
  %keybit.3 = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 108, ptr noundef %keybit.3) #8
  %10 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %input, align 4
  %keybit.4 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 407, ptr noundef %keybit.4) #8
  %12 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %input, align 4
  %keybit.5 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 412, ptr noundef %keybit.5) #8
  %14 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %input, align 4
  %keybit.6 = getelementptr inbounds %struct.input_dev, ptr %15, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 257, ptr noundef %keybit.6) #8
  %16 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %input, align 4
  %keybit.7 = getelementptr inbounds %struct.input_dev, ptr %17, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 258, ptr noundef %keybit.7) #8
  %18 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %input, align 4
  %keybit.8 = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 304, ptr noundef %keybit.8) #8
  %20 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %input, align 4
  %keybit.9 = getelementptr inbounds %struct.input_dev, ptr %21, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 305, ptr noundef %keybit.9) #8
  %22 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %input, align 4
  %keybit.10 = getelementptr inbounds %struct.input_dev, ptr %23, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 316, ptr noundef %keybit.10) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_keys_in_keys(ptr nocapture noundef readonly %wdata, ptr nocapture noundef readonly %keys) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %input = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 1
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input, align 4
  %2 = ptrtoint ptr %keys to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %keys, align 1
  %4 = and i8 %3, 1
  %5 = zext i8 %4 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 105, i32 noundef %5) #8
  %6 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input, align 4
  %8 = ptrtoint ptr %keys to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %keys, align 1
  %10 = lshr i8 %9, 1
  %.lobit = and i8 %10, 1
  %11 = zext i8 %.lobit to i32
  tail call void @input_event(ptr noundef %7, i32 noundef 1, i32 noundef 106, i32 noundef %11) #8
  %12 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %input, align 4
  %14 = ptrtoint ptr %keys to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %keys, align 1
  %16 = lshr i8 %15, 2
  %.lobit153 = and i8 %16, 1
  %17 = zext i8 %.lobit153 to i32
  tail call void @input_event(ptr noundef %13, i32 noundef 1, i32 noundef 108, i32 noundef %17) #8
  %18 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %input, align 4
  %20 = ptrtoint ptr %keys to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %keys, align 1
  %22 = lshr i8 %21, 3
  %.lobit154 = and i8 %22, 1
  %23 = zext i8 %.lobit154 to i32
  tail call void @input_event(ptr noundef %19, i32 noundef 1, i32 noundef 103, i32 noundef %23) #8
  %24 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %input, align 4
  %26 = ptrtoint ptr %keys to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %keys, align 1
  %28 = lshr i8 %27, 4
  %.lobit155 = and i8 %28, 1
  %29 = zext i8 %.lobit155 to i32
  tail call void @input_event(ptr noundef %25, i32 noundef 1, i32 noundef 407, i32 noundef %29) #8
  %30 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %input, align 4
  %arrayidx45 = getelementptr i8, ptr %keys, i32 1
  %32 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx45, align 1
  %34 = and i8 %33, 1
  %35 = zext i8 %34 to i32
  tail call void @input_event(ptr noundef %31, i32 noundef 1, i32 noundef 258, i32 noundef %35) #8
  %36 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %input, align 4
  %38 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx45, align 1
  %40 = lshr i8 %39, 1
  %.lobit156 = and i8 %40, 1
  %41 = zext i8 %.lobit156 to i32
  tail call void @input_event(ptr noundef %37, i32 noundef 1, i32 noundef 257, i32 noundef %41) #8
  %42 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %input, align 4
  %44 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx45, align 1
  %46 = lshr i8 %45, 2
  %.lobit157 = and i8 %46, 1
  %47 = zext i8 %.lobit157 to i32
  tail call void @input_event(ptr noundef %43, i32 noundef 1, i32 noundef 305, i32 noundef %47) #8
  %48 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %input, align 4
  %50 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx45, align 1
  %52 = lshr i8 %51, 3
  %.lobit158 = and i8 %52, 1
  %53 = zext i8 %.lobit158 to i32
  tail call void @input_event(ptr noundef %49, i32 noundef 1, i32 noundef 304, i32 noundef %53) #8
  %54 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %input, align 4
  %56 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx45, align 1
  %58 = lshr i8 %57, 4
  %.lobit159 = and i8 %58, 1
  %59 = zext i8 %.lobit159 to i32
  tail call void @input_event(ptr noundef %55, i32 noundef 1, i32 noundef 412, i32 noundef %59) #8
  %60 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %input, align 4
  %62 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx45, align 1
  %.lobit160 = lshr i8 %63, 7
  %64 = zext i8 %.lobit160 to i32
  tail call void @input_event(ptr noundef %61, i32 noundef 1, i32 noundef 316, i32 noundef %64) #8
  %65 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %66, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_rumble_probe(ptr nocapture noundef readnone %ops, ptr noundef %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rumble_worker = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 2
  tail call void @__init_work(ptr noundef %rumble_worker, i32 noundef 0) #8
  %0 = ptrtoint ptr %rumble_worker to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %rumble_worker, align 4
  %lockdep_map = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @wiimod_rumble_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry4 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 2, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @wiimod_rumble_worker, ptr %func, align 4
  %input = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 1
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  %ffbit = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 80, ptr noundef %ffbit) #8
  %6 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input, align 4
  %call = tail call i32 @input_ff_create_memless(ptr noundef %7, ptr noundef null, ptr noundef nonnull @wiimod_rumble_play) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 0, i32 -12
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_rumble_remove(ptr nocapture noundef readnone %ops, ptr noundef %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rumble_worker = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 2
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %rumble_worker) #8
  %state = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  tail call void @wiiproto_req_rumble(ptr noundef %wdata, i8 noundef zeroext 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_rumble_worker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %state = getelementptr i8, ptr %work, i32 524692
  tail call void @_raw_spin_lock_irq(ptr noundef %state) #8
  %cache_rumble = getelementptr i8, ptr %work, i32 524953
  %0 = ptrtoint ptr %cache_rumble to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cache_rumble, align 1
  tail call void @wiiproto_req_rumble(ptr noundef %add.ptr, i8 noundef zeroext %1) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %state) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_rumble_play(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %eff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %u = getelementptr inbounds %struct.ff_effect, ptr %eff, i32 0, i32 5
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %eff, i32 0, i32 5, i32 0, i32 1
  %4 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %weak_magnitude, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool3.not = icmp ne i16 %5, 0
  %spec.select = zext i1 %tobool3.not to i8
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %entry.if.end_crit_edge
  %value.0 = phi i8 [ 1, %entry.if.end_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %cache_rumble = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 18
  %6 = ptrtoint ptr %cache_rumble to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %value.0, ptr %cache_rumble, align 1
  %rumble_worker = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %rumble_worker) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiiproto_req_rumble(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_battery_probe(ptr nocapture noundef readnone %ops, ptr noundef %wdata) #0 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #8
  %0 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %1 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %wdata, ptr %0, align 4
  %battery_desc = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 7
  %properties = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 7, i32 4
  %3 = ptrtoint ptr %properties to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @wiimod_battery_props, ptr %properties, align 4
  %num_properties = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 7, i32 5
  %4 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %num_properties, align 4
  %get_property = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 7, i32 6
  %5 = ptrtoint ptr %get_property to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @wiimod_battery_get_property, ptr %get_property, align 4
  %type = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %type, align 4
  %use_for_apm = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 7, i32 12
  %7 = ptrtoint ptr %use_for_apm to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %use_for_apm, align 4
  %8 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wdata, align 4
  %uniq = getelementptr inbounds %struct.hid_device, ptr %9, i32 0, i32 41
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.2, ptr noundef %uniq) #8
  %10 = ptrtoint ptr %battery_desc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %battery_desc, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wdata, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %12, i32 0, i32 18
  %call10 = call ptr @power_supply_register(ptr noundef %dev, ptr noundef %battery_desc, ptr noundef nonnull %psy_cfg) #8
  %battery = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 6
  %13 = ptrtoint ptr %battery to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call10, ptr %battery, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  %14 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wdata, align 4
  %dev15 = getelementptr inbounds %struct.hid_device, ptr %15, i32 0, i32 18
  br i1 %cmp.i, label %do.end, label %if.end18

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.3) #11
  %16 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %battery, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = ptrtoint ptr %battery_desc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %battery_desc, align 4
  call void @kfree(ptr noundef %20) #8
  %21 = ptrtoint ptr %battery_desc to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %battery_desc, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = call i32 @power_supply_powers(ptr noundef %call10, ptr noundef %dev15) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %do.end ], [ 0, %if.end18 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_battery_remove(ptr nocapture noundef readnone %ops, ptr nocapture noundef %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %battery_desc = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 7
  %0 = ptrtoint ptr %battery_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %battery_desc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %battery = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 6
  %2 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %battery, align 4
  tail call void @power_supply_unregister(ptr noundef %3) #8
  %4 = ptrtoint ptr %battery_desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %battery_desc, align 4
  tail call void @kfree(ptr noundef %5) #8
  %6 = ptrtoint ptr %battery_desc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %battery_desc, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_battery_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #8
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 66, label %entry.cleanup.sink.split_crit_edge
    i32 47, label %if.end3
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %entry
  %sync.i = getelementptr inbounds %struct.wiimote_data, ptr %call, i32 0, i32 13, i32 7
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %sync.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %state9 = getelementptr inbounds %struct.wiimote_data, ptr %call, i32 0, i32 13
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state9) #8
  %ready.i = getelementptr inbounds %struct.wiimote_data, ptr %call, i32 0, i32 13, i32 8
  %1 = ptrtoint ptr %ready.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ready.i, align 4
  %cmd2.i = getelementptr inbounds %struct.wiimote_data, ptr %call, i32 0, i32 13, i32 9
  %2 = ptrtoint ptr %cmd2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 21, ptr %cmd2.i, align 4
  %opt4.i = getelementptr inbounds %struct.wiimote_data, ptr %call, i32 0, i32 13, i32 10
  %3 = ptrtoint ptr %opt4.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %opt4.i, align 4
  tail call void @wiiproto_req_status(ptr noundef %call) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state9, i32 noundef %call11) #8
  %call.i54 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %ready.i, i32 noundef 100) #8
  tail call void @mutex_unlock(ptr noundef %sync.i) #8
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state9) #8
  %cmd_battery = getelementptr inbounds %struct.wiimote_data, ptr %call, i32 0, i32 13, i32 11
  %4 = ptrtoint ptr %cmd_battery to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cmd_battery, align 4
  %conv33 = zext i8 %5 to i16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state9, i32 noundef %call27) #8
  %mul = mul nuw nsw i16 %conv33, 100
  %div56 = udiv i16 %mul, 255
  %div.zext = zext i16 %div56 to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body7, %entry.cleanup.sink.split_crit_edge
  %div.zext.sink = phi i32 [ %div.zext, %do.body7 ], [ 2, %entry.cleanup.sink.split_crit_edge ]
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div.zext.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -512, %if.end3.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_powers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiiproto_req_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_led_probe(ptr nocapture noundef readonly %ops, ptr noundef %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdata, align 4
  %dev1 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  %init_name.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %call2 = tail call i32 @strlen(ptr noundef %retval.0.i) #12
  %add3 = add i32 %call2, 409
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add3, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %dev_name.exit.cleanup_crit_edge, label %if.end

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %add = add i32 %call2, 9
  %arrayidx = getelementptr %struct.led_classdev, ptr %call9.i.i, i32 1
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i56 = icmp eq ptr %7, null
  br i1 %tobool.not.i56, label %if.end.i57, label %if.end.dev_name.exit59_crit_edge

if.end.dev_name.exit59_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit59

if.end.i57:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit59

dev_name.exit59:                                  ; preds = %if.end.i57, %if.end.dev_name.exit59_crit_edge
  %retval.0.i58 = phi ptr [ %9, %if.end.i57 ], [ %7, %if.end.dev_name.exit59_crit_edge ]
  %arg = getelementptr inbounds %struct.wiimod_ops, ptr %ops, i32 0, i32 1
  %10 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arg, align 4
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx, i32 noundef %add, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i58, i32 noundef %11)
  %12 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx, ptr %call9.i.i, align 128
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %call9.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %brightness, align 4
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %call9.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %max_brightness, align 8
  %brightness_get = getelementptr inbounds %struct.led_classdev, ptr %call9.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %brightness_get to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @wiimod_led_get, ptr %brightness_get, align 4
  %brightness_set = getelementptr inbounds %struct.led_classdev, ptr %call9.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @wiimod_led_set, ptr %brightness_set, align 4
  %17 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arg, align 4
  %arrayidx9 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 3, i32 %18
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9.i.i, ptr %arrayidx9, align 4
  %call.i = tail call i32 @led_classdev_register_ext(ptr noundef %dev1, ptr noundef nonnull %call9.i.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  %20 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arg, align 4
  br i1 %tobool11.not, label %if.end13, label %err_free

if.end13:                                         ; preds = %dev_name.exit59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %do.body16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  tail call void @wiiproto_req_leds(ptr noundef %wdata, i32 noundef 1) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call19) #8
  br label %cleanup

err_free:                                         ; preds = %dev_name.exit59
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx27 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 3, i32 %21
  %22 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx27, align 4
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free, %do.body16, %if.end13.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %err_free ], [ -12, %dev_name.exit.cleanup_crit_edge ], [ 0, %do.body16 ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_led_remove(ptr nocapture noundef readonly %ops, ptr nocapture noundef %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arg = getelementptr inbounds %struct.wiimod_ops, ptr %ops, i32 0, i32 1
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 4
  %arrayidx = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 3, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @led_classdev_unregister(ptr noundef nonnull %3) #8
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arg, align 4
  %arrayidx6 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 3, i32 %5
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6, align 4
  tail call void @kfree(ptr noundef %7) #8
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arg, align 4
  %arrayidx9 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 3, i32 %9
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx9, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_led_get(ptr noundef readonly %led_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.led_classdev, ptr %led_dev, i32 0, i32 11
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr i8, ptr %3, i32 164
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.wiimote_data, ptr %5, i32 0, i32 3, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %7, %led_dev
  br i1 %cmp2, label %entry.do.body3_crit_edge, label %for.inc

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3

do.body3:                                         ; preds = %for.inc.2.do.body3_crit_edge, %for.inc.1.do.body3_crit_edge, %for.inc.do.body3_crit_edge, %entry.do.body3_crit_edge
  %i.024.lcssa = phi i32 [ 0, %entry.do.body3_crit_edge ], [ 1, %for.inc.do.body3_crit_edge ], [ 2, %for.inc.1.do.body3_crit_edge ], [ 3, %for.inc.2.do.body3_crit_edge ]
  %state = getelementptr inbounds %struct.wiimote_data, ptr %5, i32 0, i32 13
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %flags11 = getelementptr inbounds %struct.wiimote_data, ptr %5, i32 0, i32 13, i32 1
  %8 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags11, align 4
  %shl = shl nuw nsw i32 1, %i.024.lcssa
  %and = and i32 %9, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call7) #8
  %phi.sel = select i1 %tobool.not, i32 0, i32 255
  br label %for.end

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.wiimote_data, ptr %5, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %cmp2.1 = icmp eq ptr %11, %led_dev
  br i1 %cmp2.1, label %for.inc.do.body3_crit_edge, label %for.inc.1

for.inc.do.body3_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.wiimote_data, ptr %5, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2, align 4
  %cmp2.2 = icmp eq ptr %13, %led_dev
  br i1 %cmp2.2, label %for.inc.1.do.body3_crit_edge, label %for.inc.2

for.inc.1.do.body3_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.wiimote_data, ptr %5, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.3, align 4
  %cmp2.3 = icmp eq ptr %15, %led_dev
  br i1 %cmp2.3, label %for.inc.2.do.body3_crit_edge, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.2.do.body3_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3

for.end:                                          ; preds = %for.inc.2.for.end_crit_edge, %do.body3
  %value.0.off0 = phi i32 [ %phi.sel, %do.body3 ], [ 0, %for.inc.2.for.end_crit_edge ]
  ret i32 %value.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_led_set(ptr noundef readonly %led_dev, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.led_classdev, ptr %led_dev, i32 0, i32 11
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr i8, ptr %3, i32 164
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.wiimote_data, ptr %5, i32 0, i32 3, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %7, %led_dev
  br i1 %cmp2, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.038.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.038.lcssa
  %state7 = getelementptr inbounds %struct.wiimote_data, ptr %5, i32 0, i32 13
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state7) #8
  %flags13 = getelementptr inbounds %struct.wiimote_data, ptr %5, i32 0, i32 13, i32 1
  %8 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp15 = icmp eq i32 %value, 0
  %.masked = and i32 %9, 255
  %or = or i32 %.masked, %shl
  %conv18 = xor i32 %shl, 255
  %and = and i32 %conv18, %9
  %or.sink = select i1 %cmp15, i32 %and, i32 %or
  tail call void @wiiproto_req_leds(ptr noundef %5, i32 noundef %or.sink) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state7, i32 noundef %call9) #8
  br label %for.end

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.wiimote_data, ptr %5, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %cmp2.1 = icmp eq ptr %11, %led_dev
  br i1 %cmp2.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.wiimote_data, ptr %5, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2, align 4
  %cmp2.2 = icmp eq ptr %13, %led_dev
  br i1 %cmp2.2, label %for.inc.1.if.then_crit_edge, label %for.inc.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.wiimote_data, ptr %5, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.3, align 4
  %cmp2.3 = icmp eq ptr %15, %led_dev
  br i1 %cmp2.3, label %for.inc.2.if.then_crit_edge, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.end:                                          ; preds = %for.inc.2.for.end_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiiproto_req_leds(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_accel_probe(ptr nocapture noundef readnone %ops, ptr noundef %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @input_allocate_device() #8
  %accel = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 4
  %0 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %accel, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %wdata, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %accel, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @wiimod_accel_open, ptr %open, align 8
  %5 = load ptr, ptr %accel, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @wiimod_accel_close, ptr %close, align 4
  %7 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wdata, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %8, i32 0, i32 18
  %9 = load ptr, ptr %accel, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 40, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %parent, align 8
  %11 = load ptr, ptr %wdata, align 4
  %bus = getelementptr inbounds %struct.hid_device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bus, align 8
  %14 = load ptr, ptr %accel, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %13, ptr %id, align 4
  %16 = load ptr, ptr %wdata, align 4
  %vendor = getelementptr inbounds %struct.hid_device, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vendor, align 4
  %conv = trunc i32 %18 to i16
  %19 = load ptr, ptr %accel, align 4
  %vendor12 = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %vendor12 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv, ptr %vendor12, align 2
  %21 = load ptr, ptr %wdata, align 4
  %product = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %product, align 8
  %conv14 = trunc i32 %23 to i16
  %24 = load ptr, ptr %accel, align 4
  %product17 = getelementptr inbounds %struct.input_dev, ptr %24, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %product17 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv14, ptr %product17, align 4
  %26 = load ptr, ptr %wdata, align 4
  %version = getelementptr inbounds %struct.hid_device, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %version, align 4
  %conv19 = trunc i32 %28 to i16
  %29 = load ptr, ptr %accel, align 4
  %version22 = getelementptr inbounds %struct.input_dev, ptr %29, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %version22 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv19, ptr %version22, align 2
  %31 = load ptr, ptr %accel, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.9, ptr %31, align 8
  %33 = load ptr, ptr %accel, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %evbit) #8
  %34 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %accel, align 4
  %absbit = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 3, ptr noundef %absbit) #8
  %36 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %accel, align 4
  %absbit28 = getelementptr inbounds %struct.input_dev, ptr %37, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 4, ptr noundef %absbit28) #8
  %38 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %accel, align 4
  %absbit31 = getelementptr inbounds %struct.input_dev, ptr %39, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 5, ptr noundef %absbit31) #8
  %40 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %accel, align 4
  tail call void @input_set_abs_params(ptr noundef %41, i32 noundef 3, i32 noundef -500, i32 noundef 500, i32 noundef 2, i32 noundef 4) #8
  %42 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %accel, align 4
  tail call void @input_set_abs_params(ptr noundef %43, i32 noundef 4, i32 noundef -500, i32 noundef 500, i32 noundef 2, i32 noundef 4) #8
  %44 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %accel, align 4
  tail call void @input_set_abs_params(ptr noundef %45, i32 noundef 5, i32 noundef -500, i32 noundef 500, i32 noundef 2, i32 noundef 4) #8
  %46 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %accel, align 4
  %call37 = tail call i32 @input_register_device(ptr noundef %47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wdata, align 4
  %dev41 = getelementptr inbounds %struct.hid_device, ptr %49, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41, ptr noundef nonnull @.str.10) #11
  %50 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %accel, align 4
  tail call void @input_free_device(ptr noundef %51) #8
  %52 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %accel, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_accel_remove(ptr nocapture noundef readnone %ops, ptr nocapture noundef %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %accel = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 4
  %0 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %accel, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_unregister_device(ptr noundef nonnull %1) #8
  %2 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %accel, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_accel_in_accel(ptr nocapture noundef readonly %wdata, ptr nocapture noundef readonly %accel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i8, ptr %accel, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 2
  %arrayidx2 = getelementptr i8, ptr %accel, i32 3
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %5 to i32
  %shl4 = shl nuw nsw i32 %conv3, 2
  %arrayidx6 = getelementptr i8, ptr %accel, i32 4
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %7 to i32
  %shl8 = shl nuw nsw i32 %conv7, 2
  %8 = ptrtoint ptr %accel to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %accel, align 1
  %10 = lshr i8 %9, 5
  %11 = and i8 %10, 3
  %and12 = zext i8 %11 to i32
  %arrayidx15 = getelementptr i8, ptr %accel, i32 1
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %13 to i32
  %14 = lshr i32 %conv16, 4
  %and18 = and i32 %14, 2
  %15 = lshr i32 %conv16, 5
  %and25 = and i32 %15, 2
  %accel29 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 4
  %16 = ptrtoint ptr %accel29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %accel29, align 4
  %or = add nsw i32 %shl, -512
  %sub = or i32 %or, %and12
  tail call void @input_event(ptr noundef %17, i32 noundef 3, i32 noundef 3, i32 noundef %sub) #8
  %18 = ptrtoint ptr %accel29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %accel29, align 4
  %or20 = add nsw i32 %shl4, -512
  %sub33 = or i32 %or20, %and18
  tail call void @input_event(ptr noundef %19, i32 noundef 3, i32 noundef 4, i32 noundef %sub33) #8
  %20 = ptrtoint ptr %accel29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %accel29, align 4
  %or27 = add nsw i32 %shl8, -512
  %sub36 = or i32 %or27, %and25
  tail call void @input_event(ptr noundef %21, i32 noundef 3, i32 noundef 5, i32 noundef %sub36) #8
  %22 = ptrtoint ptr %accel29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %accel29, align 4
  tail call void @input_event(ptr noundef %23, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_accel_open(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  tail call void @wiiproto_req_accel(ptr noundef %1, i8 noundef zeroext 1) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_accel_close(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  tail call void @wiiproto_req_accel(ptr noundef %1, i8 noundef zeroext 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiiproto_req_accel(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_ir_probe(ptr nocapture noundef readnone %ops, ptr noundef %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @input_allocate_device() #8
  %ir = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 5
  %0 = ptrtoint ptr %ir to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %ir, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %wdata, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ir, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @wiimod_ir_open, ptr %open, align 8
  %5 = load ptr, ptr %ir, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @wiimod_ir_close, ptr %close, align 4
  %7 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wdata, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %8, i32 0, i32 18
  %9 = load ptr, ptr %ir, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 40, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %parent, align 8
  %11 = load ptr, ptr %wdata, align 4
  %bus = getelementptr inbounds %struct.hid_device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bus, align 8
  %14 = load ptr, ptr %ir, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %13, ptr %id, align 4
  %16 = load ptr, ptr %wdata, align 4
  %vendor = getelementptr inbounds %struct.hid_device, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vendor, align 4
  %conv = trunc i32 %18 to i16
  %19 = load ptr, ptr %ir, align 4
  %vendor12 = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %vendor12 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv, ptr %vendor12, align 2
  %21 = load ptr, ptr %wdata, align 4
  %product = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %product, align 8
  %conv14 = trunc i32 %23 to i16
  %24 = load ptr, ptr %ir, align 4
  %product17 = getelementptr inbounds %struct.input_dev, ptr %24, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %product17 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv14, ptr %product17, align 4
  %26 = load ptr, ptr %wdata, align 4
  %version = getelementptr inbounds %struct.hid_device, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %version, align 4
  %conv19 = trunc i32 %28 to i16
  %29 = load ptr, ptr %ir, align 4
  %version22 = getelementptr inbounds %struct.input_dev, ptr %29, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %version22 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv19, ptr %version22, align 2
  %31 = load ptr, ptr %ir, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.12, ptr %31, align 8
  %33 = load ptr, ptr %ir, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %evbit) #8
  %34 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ir, align 4
  %absbit = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 16, ptr noundef %absbit) #8
  %36 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ir, align 4
  %absbit28 = getelementptr inbounds %struct.input_dev, ptr %37, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 17, ptr noundef %absbit28) #8
  %38 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ir, align 4
  %absbit31 = getelementptr inbounds %struct.input_dev, ptr %39, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 18, ptr noundef %absbit31) #8
  %40 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ir, align 4
  %absbit34 = getelementptr inbounds %struct.input_dev, ptr %41, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 19, ptr noundef %absbit34) #8
  %42 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ir, align 4
  %absbit37 = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 20, ptr noundef %absbit37) #8
  %44 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ir, align 4
  %absbit40 = getelementptr inbounds %struct.input_dev, ptr %45, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 21, ptr noundef %absbit40) #8
  %46 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ir, align 4
  %absbit43 = getelementptr inbounds %struct.input_dev, ptr %47, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 22, ptr noundef %absbit43) #8
  %48 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ir, align 4
  %absbit46 = getelementptr inbounds %struct.input_dev, ptr %49, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 23, ptr noundef %absbit46) #8
  %50 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ir, align 4
  tail call void @input_set_abs_params(ptr noundef %51, i32 noundef 16, i32 noundef 0, i32 noundef 1023, i32 noundef 2, i32 noundef 4) #8
  %52 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ir, align 4
  tail call void @input_set_abs_params(ptr noundef %53, i32 noundef 17, i32 noundef 0, i32 noundef 767, i32 noundef 2, i32 noundef 4) #8
  %54 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ir, align 4
  tail call void @input_set_abs_params(ptr noundef %55, i32 noundef 18, i32 noundef 0, i32 noundef 1023, i32 noundef 2, i32 noundef 4) #8
  %56 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ir, align 4
  tail call void @input_set_abs_params(ptr noundef %57, i32 noundef 19, i32 noundef 0, i32 noundef 767, i32 noundef 2, i32 noundef 4) #8
  %58 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ir, align 4
  tail call void @input_set_abs_params(ptr noundef %59, i32 noundef 20, i32 noundef 0, i32 noundef 1023, i32 noundef 2, i32 noundef 4) #8
  %60 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ir, align 4
  tail call void @input_set_abs_params(ptr noundef %61, i32 noundef 21, i32 noundef 0, i32 noundef 767, i32 noundef 2, i32 noundef 4) #8
  %62 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ir, align 4
  tail call void @input_set_abs_params(ptr noundef %63, i32 noundef 22, i32 noundef 0, i32 noundef 1023, i32 noundef 2, i32 noundef 4) #8
  %64 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ir, align 4
  tail call void @input_set_abs_params(ptr noundef %65, i32 noundef 23, i32 noundef 0, i32 noundef 767, i32 noundef 2, i32 noundef 4) #8
  %66 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ir, align 4
  %call57 = tail call i32 @input_register_device(ptr noundef %67) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wdata, align 4
  %dev61 = getelementptr inbounds %struct.hid_device, ptr %69, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev61, ptr noundef nonnull @.str.10) #11
  %70 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ir, align 4
  tail call void @input_free_device(ptr noundef %71) #8
  %72 = ptrtoint ptr %ir to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %ir, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call57, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_ir_remove(ptr nocapture noundef readnone %ops, ptr nocapture noundef %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ir = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 5
  %0 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_unregister_device(ptr noundef nonnull %1) #8
  %2 = ptrtoint ptr %ir to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ir, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_ir_in_ir(ptr nocapture noundef readonly %wdata, ptr nocapture noundef readonly %ir, i1 noundef zeroext %packed, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %id, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %if.end.sw.epilog_crit_edge
  %xid.0 = phi i32 [ 22, %sw.bb3 ], [ 20, %sw.bb2 ], [ 18, %sw.bb1 ], [ 16, %if.end.sw.epilog_crit_edge ]
  %yid.0 = phi i32 [ 23, %sw.bb3 ], [ 21, %sw.bb2 ], [ 19, %sw.bb1 ], [ 17, %if.end.sw.epilog_crit_edge ]
  %sync.0.off0 = phi i1 [ true, %sw.bb3 ], [ false, %sw.bb2 ], [ false, %sw.bb1 ], [ false, %if.end.sw.epilog_crit_edge ]
  br i1 %packed, label %if.then5, label %if.else

if.then5:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i8, ptr %ir, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = ptrtoint ptr %ir to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ir, align 1
  %conv7 = zext i8 %6 to i32
  %and8 = shl nuw nsw i32 %conv7, 8
  %shl = and i32 %and8, 768
  %or = or i32 %shl, %conv
  %arrayidx10 = getelementptr i8, ptr %ir, i32 2
  %and14 = shl nuw nsw i32 %conv7, 6
  br label %if.end34

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %ir to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ir, align 1
  %conv19 = zext i8 %8 to i32
  %arrayidx20 = getelementptr i8, ptr %ir, i32 2
  %9 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %10 to i32
  %and22 = shl nuw nsw i32 %conv21, 4
  %shl23 = and i32 %and22, 768
  %or24 = or i32 %shl23, %conv19
  %arrayidx26 = getelementptr i8, ptr %ir, i32 1
  %and30 = shl nuw nsw i32 %conv21, 2
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then5
  %and30.sink = phi i32 [ %and30, %if.else ], [ %and14, %if.then5 ]
  %conv27.sink.in.in = phi ptr [ %arrayidx26, %if.else ], [ %arrayidx10, %if.then5 ]
  %x.0.in = phi i32 [ %or24, %if.else ], [ %or, %if.then5 ]
  %11 = ptrtoint ptr %conv27.sink.in.in to i32
  call void @__asan_load1_noabort(i32 %11)
  %conv27.sink.in = load i8, ptr %conv27.sink.in.in, align 1
  %conv27.sink = zext i8 %conv27.sink.in to i32
  %shl31 = and i32 %and30.sink, 768
  %or32 = or i32 %shl31, %conv27.sink
  %ir35 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 5
  %12 = ptrtoint ptr %ir35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ir35, align 4
  %conv37 = and i32 %x.0.in, 65535
  tail call void @input_event(ptr noundef %13, i32 noundef 3, i32 noundef %xid.0, i32 noundef %conv37) #8
  %14 = ptrtoint ptr %ir35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ir35, align 4
  tail call void @input_event(ptr noundef %15, i32 noundef 3, i32 noundef %yid.0, i32 noundef %or32) #8
  br i1 %sync.0.off0, label %if.then42, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then42:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %ir35 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ir35, align 4
  tail call void @input_event(ptr noundef %17, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end34.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_ir_open(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @wiimod_ir_change(ptr noundef %1, i16 noundef zeroext 64)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_ir_close(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @wiimod_ir_change(ptr noundef %1, i16 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wiimod_ir_change(ptr noundef %wdata, i16 noundef zeroext %mode) unnamed_addr #0 align 64 {
entry:
  %format = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %format) #8
  %0 = ptrtoint ptr %format to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %format, align 1
  %state = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %conv5 = zext i16 %mode to i32
  %flags7 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %1 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags7, align 4
  %and = and i32 %2, 192
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv5)
  %cmp8 = icmp eq i32 %and, %conv5
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call2) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %mode)
  %cmp13 = icmp eq i16 %mode, 0
  br i1 %cmp13, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and18 = and i32 %2, -193
  %3 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and18, ptr %flags7, align 4
  tail call void @wiiproto_req_ir1(ptr noundef %wdata, i8 noundef zeroext 0) #8
  tail call void @wiiproto_req_ir2(ptr noundef %wdata, i8 noundef zeroext 0) #8
  tail call void @wiiproto_req_drm(ptr noundef %wdata, i8 noundef zeroext 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call2) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call2) #8
  %sync.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 7
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %sync.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body28, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body28:                                        ; preds = %if.end21
  %call37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %ready.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 8
  %4 = ptrtoint ptr %ready.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ready.i, align 4
  %cmd2.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 9
  %5 = ptrtoint ptr %cmd2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 19, ptr %cmd2.i, align 4
  %opt4.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 10
  %6 = ptrtoint ptr %opt4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %opt4.i, align 4
  tail call void @wiiproto_req_ir1(ptr noundef %wdata, i8 noundef zeroext 6) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call37) #8
  %call.i177 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %ready.i, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %cmp.i = icmp slt i32 %call.i177, 0
  br i1 %cmp.i, label %do.body28.unlock_crit_edge, label %if.else.i

do.body28.unlock_crit_edge:                       ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.else.i:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %cmp1.i = icmp eq i32 %call.i177, 0
  br i1 %cmp1.i, label %if.else.i.unlock_crit_edge, label %if.else3.i

if.else.i.unlock_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.else3.i:                                       ; preds = %if.else.i
  %7 = ptrtoint ptr %cmd2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmd2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5.not.i = icmp eq i32 %8, 0
  br i1 %cmp5.not.i, label %if.end47, label %if.else3.i.unlock_crit_edge

if.else3.i.unlock_crit_edge:                      ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end47:                                         ; preds = %if.else3.i
  %cmd_err = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 12
  %9 = ptrtoint ptr %cmd_err to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cmd_err, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool49.not = icmp eq i8 %10, 0
  br i1 %tobool49.not, label %do.body53, label %if.end47.unlock_crit_edge

if.end47.unlock_crit_edge:                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

do.body53:                                        ; preds = %if.end47
  %call62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %11 = ptrtoint ptr %ready.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ready.i, align 4
  %12 = ptrtoint ptr %cmd2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 26, ptr %cmd2.i, align 4
  %13 = ptrtoint ptr %opt4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %opt4.i, align 4
  tail call void @wiiproto_req_ir2(ptr noundef %wdata, i8 noundef zeroext 6) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call62) #8
  %call.i182 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %ready.i, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %cmp.i183 = icmp slt i32 %call.i182, 0
  br i1 %cmp.i183, label %do.body53.unlock_crit_edge, label %if.else.i185

do.body53.unlock_crit_edge:                       ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.else.i185:                                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %cmp1.i184 = icmp eq i32 %call.i182, 0
  br i1 %cmp1.i184, label %if.else.i185.unlock_crit_edge, label %if.else3.i189

if.else.i185.unlock_crit_edge:                    ; preds = %if.else.i185
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.else3.i189:                                    ; preds = %if.else.i185
  %14 = ptrtoint ptr %cmd2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cmd2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp5.not.i187 = icmp eq i32 %15, 0
  br i1 %cmp5.not.i187, label %if.end72, label %if.else3.i189.unlock_crit_edge

if.else3.i189.unlock_crit_edge:                   ; preds = %if.else3.i189
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end72:                                         ; preds = %if.else3.i189
  %16 = ptrtoint ptr %cmd_err to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cmd_err, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool75.not = icmp eq i8 %17, 0
  br i1 %tobool75.not, label %if.end77, label %if.end72.unlock_crit_edge

if.end72.unlock_crit_edge:                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end77:                                         ; preds = %if.end72
  %call78 = tail call i32 @wiimote_cmd_write(ptr noundef %wdata, i32 noundef 11534384, ptr noundef nonnull @wiimod_ir_change.data_enable, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end77.unlock_crit_edge

if.end77.unlock_crit_edge:                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end81:                                         ; preds = %if.end77
  %call82 = tail call i32 @wiimote_cmd_write(ptr noundef %wdata, i32 noundef 11534336, ptr noundef nonnull @wiimod_ir_change.data_sens1, i8 noundef zeroext 9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.end81.unlock_crit_edge

if.end81.unlock_crit_edge:                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end85:                                         ; preds = %if.end81
  %call86 = tail call i32 @wiimote_cmd_write(ptr noundef %wdata, i32 noundef 11534362, ptr noundef nonnull @wiimod_ir_change.data_sens2, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.end85.unlock_crit_edge

if.end85.unlock_crit_edge:                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end89:                                         ; preds = %if.end85
  %18 = zext i16 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.33)
  switch i16 %mode, label %if.end89.sw.epilog_crit_edge [
    i16 192, label %sw.bb
    i16 128, label %sw.bb91
    i16 64, label %sw.bb92
  ]

if.end89.sw.epilog_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %format to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 5, ptr %format, align 1
  br label %sw.epilog

sw.bb91:                                          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %format to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %format, align 1
  br label %sw.epilog

sw.bb92:                                          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %format to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %format, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb92, %sw.bb91, %sw.bb, %if.end89.sw.epilog_crit_edge
  %call93 = call i32 @wiimote_cmd_write(ptr noundef %wdata, i32 noundef 11534387, ptr noundef nonnull %format, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %sw.epilog.unlock_crit_edge

sw.epilog.unlock_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end96:                                         ; preds = %sw.epilog
  %call97 = call i32 @wiimote_cmd_write(ptr noundef %wdata, i32 noundef 11534384, ptr noundef nonnull @wiimod_ir_change.data_fin, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %do.body102, label %if.end96.unlock_crit_edge

if.end96.unlock_crit_edge:                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

do.body102:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  %call111 = call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %22 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags7, align 4
  %and118 = and i32 %23, -193
  %and120 = and i32 %conv5, 192
  %or = or i32 %and118, %and120
  store i32 %or, ptr %flags7, align 4
  call void @wiiproto_req_drm(ptr noundef %wdata, i8 noundef zeroext 0) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call111) #8
  br label %unlock

unlock:                                           ; preds = %do.body102, %if.end96.unlock_crit_edge, %sw.epilog.unlock_crit_edge, %if.end85.unlock_crit_edge, %if.end81.unlock_crit_edge, %if.end77.unlock_crit_edge, %if.end72.unlock_crit_edge, %if.else3.i189.unlock_crit_edge, %if.else.i185.unlock_crit_edge, %do.body53.unlock_crit_edge, %if.end47.unlock_crit_edge, %if.else3.i.unlock_crit_edge, %if.else.i.unlock_crit_edge, %do.body28.unlock_crit_edge
  %ret.0 = phi i32 [ %call78, %if.end77.unlock_crit_edge ], [ %call82, %if.end81.unlock_crit_edge ], [ %call86, %if.end85.unlock_crit_edge ], [ %call93, %sw.epilog.unlock_crit_edge ], [ %call97, %if.end96.unlock_crit_edge ], [ 0, %do.body102 ], [ -5, %if.end47.unlock_crit_edge ], [ -5, %if.end72.unlock_crit_edge ], [ -5, %if.else3.i.unlock_crit_edge ], [ -5, %if.else.i.unlock_crit_edge ], [ -512, %do.body28.unlock_crit_edge ], [ -5, %if.else3.i189.unlock_crit_edge ], [ -5, %if.else.i185.unlock_crit_edge ], [ -512, %do.body53.unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %sync.i) #8
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.end21.cleanup_crit_edge, %if.then15, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then15 ], [ %ret.0, %unlock ], [ -512, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %format) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiiproto_req_ir1(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiiproto_req_ir2(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wiimote_cmd_write(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_builtin_mp_probe(ptr nocapture noundef readnone %ops, ptr noundef %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %flags6 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags6, align 4
  %or = or i32 %1, 65536
  store i32 %or, ptr %flags6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call2) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_builtin_mp_remove(ptr nocapture noundef readnone %ops, ptr noundef %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %flags6 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags6, align 4
  %or = or i32 %1, 65536
  store i32 %or, ptr %flags6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_no_mp_probe(ptr nocapture noundef readnone %ops, ptr noundef %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %flags6 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags6, align 4
  %or = or i32 %1, 131072
  store i32 %or, ptr %flags6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call2) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_no_mp_remove(ptr nocapture noundef readnone %ops, ptr noundef %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %flags6 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags6, align 4
  %or = or i32 %1, 131072
  store i32 %or, ptr %flags6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_nunchuk_probe(ptr nocapture noundef readnone %ops, ptr noundef %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @input_allocate_device() #8
  %extension = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 11
  %0 = ptrtoint ptr %extension to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %extension, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %wdata, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extension, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @wiimod_nunchuk_open, ptr %open, align 8
  %5 = load ptr, ptr %extension, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @wiimod_nunchuk_close, ptr %close, align 4
  %7 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wdata, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %8, i32 0, i32 18
  %9 = load ptr, ptr %extension, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 40, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %parent, align 8
  %11 = load ptr, ptr %wdata, align 4
  %bus = getelementptr inbounds %struct.hid_device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bus, align 8
  %14 = load ptr, ptr %extension, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %13, ptr %id, align 4
  %16 = load ptr, ptr %wdata, align 4
  %vendor = getelementptr inbounds %struct.hid_device, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vendor, align 4
  %conv = trunc i32 %18 to i16
  %19 = load ptr, ptr %extension, align 4
  %vendor12 = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %vendor12 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv, ptr %vendor12, align 2
  %21 = load ptr, ptr %wdata, align 4
  %product = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %product, align 8
  %conv14 = trunc i32 %23 to i16
  %24 = load ptr, ptr %extension, align 4
  %product17 = getelementptr inbounds %struct.input_dev, ptr %24, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %product17 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv14, ptr %product17, align 4
  %26 = load ptr, ptr %wdata, align 4
  %version = getelementptr inbounds %struct.hid_device, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %version, align 4
  %conv19 = trunc i32 %28 to i16
  %29 = load ptr, ptr %extension, align 4
  %version22 = getelementptr inbounds %struct.input_dev, ptr %29, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %version22 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv19, ptr %version22, align 2
  %31 = load ptr, ptr %extension, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.14, ptr %31, align 8
  %33 = load ptr, ptr %extension, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %evbit) #8
  %34 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %extension, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 306, ptr noundef %keybit) #8
  %36 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %extension, align 4
  %keybit.1 = getelementptr inbounds %struct.input_dev, ptr %37, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 309, ptr noundef %keybit.1) #8
  %38 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %extension, align 4
  %evbit30 = getelementptr inbounds %struct.input_dev, ptr %39, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %evbit30) #8
  %40 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %extension, align 4
  %absbit = getelementptr inbounds %struct.input_dev, ptr %41, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 16, ptr noundef %absbit) #8
  %42 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %extension, align 4
  %absbit35 = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 17, ptr noundef %absbit35) #8
  %44 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %45, i32 noundef 16, i32 noundef -120, i32 noundef 120, i32 noundef 2, i32 noundef 4) #8
  %46 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %47, i32 noundef 17, i32 noundef -120, i32 noundef 120, i32 noundef 2, i32 noundef 4) #8
  %48 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %extension, align 4
  %absbit40 = getelementptr inbounds %struct.input_dev, ptr %49, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 3, ptr noundef %absbit40) #8
  %50 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %extension, align 4
  %absbit43 = getelementptr inbounds %struct.input_dev, ptr %51, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 4, ptr noundef %absbit43) #8
  %52 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %extension, align 4
  %absbit46 = getelementptr inbounds %struct.input_dev, ptr %53, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 5, ptr noundef %absbit46) #8
  %54 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %55, i32 noundef 3, i32 noundef -500, i32 noundef 500, i32 noundef 2, i32 noundef 4) #8
  %56 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %57, i32 noundef 4, i32 noundef -500, i32 noundef 500, i32 noundef 2, i32 noundef 4) #8
  %58 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %59, i32 noundef 5, i32 noundef -500, i32 noundef 500, i32 noundef 2, i32 noundef 4) #8
  %60 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %extension, align 4
  %call52 = tail call i32 @input_register_device(ptr noundef %61) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end.cleanup_crit_edge, label %err_free

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_free:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %extension, align 4
  tail call void @input_free_device(ptr noundef %63) #8
  %64 = ptrtoint ptr %extension to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %extension, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call52, %err_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_nunchuk_remove(ptr nocapture noundef readnone %ops, ptr nocapture noundef %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %extension = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 11
  %0 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extension, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_unregister_device(ptr noundef nonnull %1) #8
  %2 = ptrtoint ptr %extension to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %extension, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_nunchuk_in_ext(ptr nocapture noundef readonly %wdata, ptr nocapture noundef readonly %ext) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ext, align 1
  %arrayidx1 = getelementptr i8, ptr %ext, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %arrayidx8 = getelementptr i8, ptr %ext, i32 2
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx8, align 1
  %arrayidx11 = getelementptr i8, ptr %ext, i32 3
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx11, align 1
  %arrayidx15 = getelementptr i8, ptr %ext, i32 4
  %8 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %9 to i16
  %shl17 = shl nuw nsw i16 %conv16, 2
  %flags = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %arrayidx41 = getelementptr i8, ptr %ext, i32 5
  %12 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx41, align 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %14 = lshr i8 %13, 3
  %15 = and i8 %14, 2
  %16 = lshr i8 %13, 4
  %17 = and i8 %16, 2
  %18 = and i16 %shl17, 1016
  %19 = lshr i8 %13, 5
  %20 = and i8 %19, 6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %21 = lshr i8 %13, 2
  %22 = and i8 %21, 3
  %23 = lshr i8 %13, 4
  %24 = and i8 %23, 3
  %25 = lshr i8 %13, 6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink167 = phi i8 [ %25, %if.else ], [ %20, %if.then ]
  %shl17.sink = phi i16 [ %shl17, %if.else ], [ %18, %if.then ]
  %.pn.in = phi i8 [ %22, %if.else ], [ %15, %if.then ]
  %.pn158.in = phi i8 [ %24, %if.else ], [ %17, %if.then ]
  %conv12 = zext i8 %7 to i16
  %shl13 = shl nuw nsw i16 %conv12, 2
  %conv9 = zext i8 %5 to i16
  %shl = shl nuw nsw i16 %conv9, 2
  %26 = zext i8 %3 to i32
  %sub6 = add nsw i32 %26, -128
  %27 = zext i8 %1 to i32
  %sub = add nsw i32 %27, -128
  %28 = zext i8 %.sink167 to i16
  %or60 = or i16 %shl17.sink, %28
  %.pn158 = zext i8 %.pn158.in to i16
  %.pn = zext i8 %.pn.in to i16
  %x.0 = add nsw i16 %shl, -512
  %narrow = or i16 %x.0, %.pn
  %y.0 = add nsw i16 %shl13, -512
  %narrow155 = or i16 %y.0, %.pn158
  %sub69 = add nsw i16 %or60, -512
  %extension = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 11
  %29 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %extension, align 4
  tail call void @input_event(ptr noundef %30, i32 noundef 3, i32 noundef 16, i32 noundef %sub) #8
  %31 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %extension, align 4
  tail call void @input_event(ptr noundef %32, i32 noundef 3, i32 noundef 17, i32 noundef %sub6) #8
  %33 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %extension, align 4
  %conv75 = sext i16 %narrow to i32
  tail call void @input_event(ptr noundef %34, i32 noundef 3, i32 noundef 3, i32 noundef %conv75) #8
  %35 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %extension, align 4
  %conv77 = sext i16 %narrow155 to i32
  tail call void @input_event(ptr noundef %36, i32 noundef 3, i32 noundef 4, i32 noundef %conv77) #8
  %37 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %extension, align 4
  %conv79 = sext i16 %sub69 to i32
  tail call void @input_event(ptr noundef %38, i32 noundef 3, i32 noundef 5, i32 noundef %conv79) #8
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  %and82 = and i32 %40, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  %41 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %extension, align 4
  %arrayidx102 = getelementptr i8, ptr %ext, i32 5
  %43 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx102, align 1
  %45 = lshr i8 %44, 2
  %spec.select = select i1 %tobool83.not, i8 %44, i8 %45
  %spec.select177 = select i1 %tobool83.not, i8 1, i8 3
  %46 = and i8 %spec.select, 1
  %47 = xor i8 %46, 1
  %48 = zext i8 %47 to i32
  tail call void @input_event(ptr noundef %42, i32 noundef 1, i32 noundef 309, i32 noundef %48) #8
  %49 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %extension, align 4
  %51 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx102, align 1
  %53 = lshr i8 %52, %spec.select177
  %.lobit = and i8 %53, 1
  %54 = xor i8 %.lobit, 1
  %55 = zext i8 %54 to i32
  tail call void @input_event(ptr noundef %50, i32 noundef 1, i32 noundef 306, i32 noundef %55) #8
  %56 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %extension, align 4
  tail call void @input_event(ptr noundef %57, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_nunchuk_open(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %flags7 = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags7, align 4
  %or = or i32 %3, 512
  store i32 %or, ptr %flags7, align 4
  tail call void @wiiproto_req_drm(ptr noundef %1, i8 noundef zeroext 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_nunchuk_close(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %flags7 = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags7, align 4
  %and = and i32 %3, -513
  store i32 %and, ptr %flags7, align 4
  tail call void @wiiproto_req_drm(ptr noundef %1, i8 noundef zeroext 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_classic_probe(ptr nocapture noundef readnone %ops, ptr noundef %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @input_allocate_device() #8
  %extension = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 11
  %0 = ptrtoint ptr %extension to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %extension, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %wdata, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extension, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @wiimod_classic_open, ptr %open, align 8
  %5 = load ptr, ptr %extension, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @wiimod_classic_close, ptr %close, align 4
  %7 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wdata, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %8, i32 0, i32 18
  %9 = load ptr, ptr %extension, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 40, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %parent, align 8
  %11 = load ptr, ptr %wdata, align 4
  %bus = getelementptr inbounds %struct.hid_device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bus, align 8
  %14 = load ptr, ptr %extension, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %13, ptr %id, align 4
  %16 = load ptr, ptr %wdata, align 4
  %vendor = getelementptr inbounds %struct.hid_device, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vendor, align 4
  %conv = trunc i32 %18 to i16
  %19 = load ptr, ptr %extension, align 4
  %vendor12 = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %vendor12 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv, ptr %vendor12, align 2
  %21 = load ptr, ptr %wdata, align 4
  %product = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %product, align 8
  %conv14 = trunc i32 %23 to i16
  %24 = load ptr, ptr %extension, align 4
  %product17 = getelementptr inbounds %struct.input_dev, ptr %24, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %product17 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv14, ptr %product17, align 4
  %26 = load ptr, ptr %wdata, align 4
  %version = getelementptr inbounds %struct.hid_device, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %version, align 4
  %conv19 = trunc i32 %28 to i16
  %29 = load ptr, ptr %extension, align 4
  %version22 = getelementptr inbounds %struct.input_dev, ptr %29, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %version22 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv19, ptr %version22, align 2
  %31 = load ptr, ptr %extension, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.15, ptr %31, align 8
  %33 = load ptr, ptr %extension, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %evbit) #8
  %34 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %extension, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 304, ptr noundef %keybit) #8
  %36 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %extension, align 4
  %keybit.1 = getelementptr inbounds %struct.input_dev, ptr %37, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 305, ptr noundef %keybit.1) #8
  %38 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %extension, align 4
  %keybit.2 = getelementptr inbounds %struct.input_dev, ptr %39, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 307, ptr noundef %keybit.2) #8
  %40 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %extension, align 4
  %keybit.3 = getelementptr inbounds %struct.input_dev, ptr %41, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 308, ptr noundef %keybit.3) #8
  %42 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %extension, align 4
  %keybit.4 = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 312, ptr noundef %keybit.4) #8
  %44 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %extension, align 4
  %keybit.5 = getelementptr inbounds %struct.input_dev, ptr %45, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 313, ptr noundef %keybit.5) #8
  %46 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %extension, align 4
  %keybit.6 = getelementptr inbounds %struct.input_dev, ptr %47, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 407, ptr noundef %keybit.6) #8
  %48 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %extension, align 4
  %keybit.7 = getelementptr inbounds %struct.input_dev, ptr %49, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 412, ptr noundef %keybit.7) #8
  %50 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %extension, align 4
  %keybit.8 = getelementptr inbounds %struct.input_dev, ptr %51, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 316, ptr noundef %keybit.8) #8
  %52 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %extension, align 4
  %keybit.9 = getelementptr inbounds %struct.input_dev, ptr %53, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 105, ptr noundef %keybit.9) #8
  %54 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %extension, align 4
  %keybit.10 = getelementptr inbounds %struct.input_dev, ptr %55, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 106, ptr noundef %keybit.10) #8
  %56 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %extension, align 4
  %keybit.11 = getelementptr inbounds %struct.input_dev, ptr %57, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 103, ptr noundef %keybit.11) #8
  %58 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %extension, align 4
  %keybit.12 = getelementptr inbounds %struct.input_dev, ptr %59, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 108, ptr noundef %keybit.12) #8
  %60 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %extension, align 4
  %keybit.13 = getelementptr inbounds %struct.input_dev, ptr %61, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 310, ptr noundef %keybit.13) #8
  %62 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %extension, align 4
  %keybit.14 = getelementptr inbounds %struct.input_dev, ptr %63, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 311, ptr noundef %keybit.14) #8
  %64 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %extension, align 4
  %evbit30 = getelementptr inbounds %struct.input_dev, ptr %65, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %evbit30) #8
  %66 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %extension, align 4
  %absbit = getelementptr inbounds %struct.input_dev, ptr %67, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 18, ptr noundef %absbit) #8
  %68 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %extension, align 4
  %absbit35 = getelementptr inbounds %struct.input_dev, ptr %69, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 19, ptr noundef %absbit35) #8
  %70 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %extension, align 4
  %absbit38 = getelementptr inbounds %struct.input_dev, ptr %71, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 20, ptr noundef %absbit38) #8
  %72 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %extension, align 4
  %absbit41 = getelementptr inbounds %struct.input_dev, ptr %73, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 21, ptr noundef %absbit41) #8
  %74 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %extension, align 4
  %absbit44 = getelementptr inbounds %struct.input_dev, ptr %75, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 22, ptr noundef %absbit44) #8
  %76 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %extension, align 4
  %absbit47 = getelementptr inbounds %struct.input_dev, ptr %77, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 23, ptr noundef %absbit47) #8
  %78 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %79, i32 noundef 18, i32 noundef -30, i32 noundef 30, i32 noundef 1, i32 noundef 1) #8
  %80 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %81, i32 noundef 19, i32 noundef -30, i32 noundef 30, i32 noundef 1, i32 noundef 1) #8
  %82 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %83, i32 noundef 20, i32 noundef -30, i32 noundef 30, i32 noundef 1, i32 noundef 1) #8
  %84 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %85, i32 noundef 21, i32 noundef -30, i32 noundef 30, i32 noundef 1, i32 noundef 1) #8
  %86 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %87, i32 noundef 22, i32 noundef -30, i32 noundef 30, i32 noundef 1, i32 noundef 1) #8
  %88 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %89, i32 noundef 23, i32 noundef -30, i32 noundef 30, i32 noundef 1, i32 noundef 1) #8
  %90 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %extension, align 4
  %call56 = tail call i32 @input_register_device(ptr noundef %91) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end.cleanup_crit_edge, label %err_free

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_free:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %extension, align 4
  tail call void @input_free_device(ptr noundef %93) #8
  %94 = ptrtoint ptr %extension to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %extension, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call56, %err_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_classic_remove(ptr nocapture noundef readnone %ops, ptr nocapture noundef %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %extension = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 11
  %0 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extension, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_unregister_device(ptr noundef nonnull %1) #8
  %2 = ptrtoint ptr %extension to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %extension, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_classic_in_ext(ptr noundef readonly %wdata, ptr nocapture noundef readonly %ext) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @wiimote_dpad_as_analog to i32))
  %2 = load i8, ptr @wiimote_dpad_as_analog, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool38.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else37, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool38.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i8, ptr %ext, i32 4
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %and3.lobit = lshr i32 %conv, 7
  %arrayidx5 = getelementptr i8, ptr %ext, i32 1
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx5, align 1
  %7 = and i8 %6, 1
  %8 = xor i8 %7, 1
  %9 = zext i8 %8 to i32
  %add = add nuw nsw i32 %and3.lobit, %9
  %arrayidx11 = getelementptr [3 x i8], ptr @wiimod_classic_in_ext.digital_to_analog, i32 0, i32 %add
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx11, align 1
  %and14 = lshr i32 %conv, 6
  %12 = and i32 %and14, 1
  %13 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ext, align 1
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = zext i8 %16 to i32
  %add25 = add nuw nsw i32 %12, %17
  %arrayidx26 = getelementptr [3 x i8], ptr @wiimod_classic_in_ext.digital_to_analog, i32 0, i32 %add25
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx26, align 1
  br label %if.end82

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ext, align 1
  %22 = and i8 %21, 62
  %sub30 = add nsw i8 %22, -32
  %arrayidx32 = getelementptr i8, ptr %ext, i32 1
  %23 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx32, align 1
  %25 = and i8 %24, 62
  %sub35 = add nsw i8 %25, -32
  br label %if.end82

if.else37:                                        ; preds = %entry
  br i1 %tobool38.not, label %if.else70, label %if.then39

if.then39:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx40 = getelementptr i8, ptr %ext, i32 4
  %26 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %27 to i32
  %and42.lobit = lshr i32 %conv41, 7
  %arrayidx47 = getelementptr i8, ptr %ext, i32 5
  %28 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %29 to i32
  %and49 = lshr i32 %conv48, 1
  %and49.lobit = and i32 %and49, 1
  %30 = xor i32 %and49.lobit, 1
  %add53 = add nuw nsw i32 %30, %and42.lobit
  %arrayidx54 = getelementptr [3 x i8], ptr @wiimod_classic_in_ext.digital_to_analog, i32 0, i32 %add53
  %31 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx54, align 1
  %and57 = lshr i32 %conv41, 6
  %33 = and i32 %and57, 1
  %and64 = and i32 %conv48, 1
  %34 = xor i32 %and64, 1
  %add68 = add nuw nsw i32 %34, %33
  %arrayidx69 = getelementptr [3 x i8], ptr @wiimod_classic_in_ext.digital_to_analog, i32 0, i32 %add68
  %35 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx69, align 1
  br label %if.end82

if.else70:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ext, align 1
  %39 = and i8 %38, 63
  %sub74 = add nsw i8 %39, -32
  %arrayidx76 = getelementptr i8, ptr %ext, i32 1
  %40 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx76, align 1
  %42 = and i8 %41, 63
  %sub79 = add nsw i8 %42, -32
  br label %if.end82

if.end82:                                         ; preds = %if.else70, %if.then39, %if.else, %if.then2
  %lx.0 = phi i8 [ %11, %if.then2 ], [ %sub30, %if.else ], [ %32, %if.then39 ], [ %sub74, %if.else70 ]
  %ly.0 = phi i8 [ %19, %if.then2 ], [ %sub35, %if.else ], [ %36, %if.then39 ], [ %sub79, %if.else70 ]
  %43 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ext, align 1
  %45 = lshr i8 %44, 3
  %46 = and i8 %45, 24
  %arrayidx87 = getelementptr i8, ptr %ext, i32 1
  %47 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx87, align 1
  %49 = lshr i8 %48, 5
  %50 = and i8 %49, 6
  %or358 = or i8 %46, %50
  %arrayidx93 = getelementptr i8, ptr %ext, i32 2
  %51 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx93, align 1
  %53 = lshr i8 %52, 7
  %or98 = or i8 %or358, %53
  %arrayidx104 = getelementptr i8, ptr %ext, i32 3
  %54 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx104, align 1
  %56 = lshr i8 %52, 2
  %57 = and i8 %56, 24
  %58 = lshr i8 %55, 5
  %or118359 = or i8 %57, %58
  %59 = shl nuw nsw i8 %or98, 1
  %and102 = shl i8 %52, 1
  %60 = and i8 %and102, 62
  %and106 = shl i8 %55, 1
  %61 = and i8 %and106, 62
  %62 = shl nuw nsw i8 %or118359, 1
  %extension = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 11
  %63 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %extension, align 4
  %conv131 = sext i8 %lx.0 to i32
  tail call void @input_event(ptr noundef %64, i32 noundef 3, i32 noundef 18, i32 noundef %conv131) #8
  %65 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %extension, align 4
  %conv133 = sext i8 %ly.0 to i32
  tail call void @input_event(ptr noundef %66, i32 noundef 3, i32 noundef 19, i32 noundef %conv133) #8
  %67 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %extension, align 4
  %conv135 = zext i8 %59 to i32
  %sub136 = add nsw i32 %conv135, -32
  tail call void @input_event(ptr noundef %68, i32 noundef 3, i32 noundef 20, i32 noundef %sub136) #8
  %69 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %extension, align 4
  %71 = zext i8 %60 to i32
  %sub139 = add nsw i32 %71, -32
  tail call void @input_event(ptr noundef %70, i32 noundef 3, i32 noundef 21, i32 noundef %sub139) #8
  %72 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %extension, align 4
  %74 = zext i8 %61 to i32
  tail call void @input_event(ptr noundef %73, i32 noundef 3, i32 noundef 22, i32 noundef %74) #8
  %75 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %extension, align 4
  %conv143 = zext i8 %62 to i32
  tail call void @input_event(ptr noundef %76, i32 noundef 3, i32 noundef 23, i32 noundef %conv143) #8
  %77 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %extension, align 4
  %arrayidx146 = getelementptr i8, ptr %ext, i32 4
  %79 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx146, align 1
  %81 = lshr i8 %80, 5
  %.lobit = and i8 %81, 1
  %82 = xor i8 %.lobit, 1
  %83 = zext i8 %82 to i32
  tail call void @input_event(ptr noundef %78, i32 noundef 1, i32 noundef 310, i32 noundef %83) #8
  %84 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %extension, align 4
  %86 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx146, align 1
  %88 = lshr i8 %87, 4
  %.lobit406 = and i8 %88, 1
  %89 = xor i8 %.lobit406, 1
  %90 = zext i8 %89 to i32
  tail call void @input_event(ptr noundef %85, i32 noundef 1, i32 noundef 412, i32 noundef %90) #8
  %91 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %extension, align 4
  %93 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx146, align 1
  %95 = lshr i8 %94, 3
  %.lobit407 = and i8 %95, 1
  %96 = xor i8 %.lobit407, 1
  %97 = zext i8 %96 to i32
  tail call void @input_event(ptr noundef %92, i32 noundef 1, i32 noundef 316, i32 noundef %97) #8
  %98 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %extension, align 4
  %100 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx146, align 1
  %102 = lshr i8 %101, 2
  %.lobit408 = and i8 %102, 1
  %103 = xor i8 %.lobit408, 1
  %104 = zext i8 %103 to i32
  tail call void @input_event(ptr noundef %99, i32 noundef 1, i32 noundef 407, i32 noundef %104) #8
  %105 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %extension, align 4
  %107 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx146, align 1
  %109 = lshr i8 %108, 1
  %.lobit409 = and i8 %109, 1
  %110 = xor i8 %.lobit409, 1
  %111 = zext i8 %110 to i32
  tail call void @input_event(ptr noundef %106, i32 noundef 1, i32 noundef 311, i32 noundef %111) #8
  %112 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %extension, align 4
  %arrayidx186 = getelementptr i8, ptr %ext, i32 5
  %114 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx186, align 1
  %116 = xor i8 %115, -1
  %117 = lshr i8 %116, 7
  %.not = zext i8 %117 to i32
  tail call void @input_event(ptr noundef %113, i32 noundef 1, i32 noundef 312, i32 noundef %.not) #8
  %118 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %extension, align 4
  %120 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx186, align 1
  %122 = lshr i8 %121, 6
  %.lobit411 = and i8 %122, 1
  %123 = xor i8 %.lobit411, 1
  %124 = zext i8 %123 to i32
  tail call void @input_event(ptr noundef %119, i32 noundef 1, i32 noundef 305, i32 noundef %124) #8
  %125 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %extension, align 4
  %127 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx186, align 1
  %129 = lshr i8 %128, 5
  %.lobit412 = and i8 %129, 1
  %130 = xor i8 %.lobit412, 1
  %131 = zext i8 %130 to i32
  tail call void @input_event(ptr noundef %126, i32 noundef 1, i32 noundef 308, i32 noundef %131) #8
  %132 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %extension, align 4
  %134 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx186, align 1
  %136 = lshr i8 %135, 4
  %.lobit413 = and i8 %136, 1
  %137 = xor i8 %.lobit413, 1
  %138 = zext i8 %137 to i32
  tail call void @input_event(ptr noundef %133, i32 noundef 1, i32 noundef 304, i32 noundef %138) #8
  %139 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %extension, align 4
  %141 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx186, align 1
  %143 = lshr i8 %142, 3
  %.lobit414 = and i8 %143, 1
  %144 = xor i8 %.lobit414, 1
  %145 = zext i8 %144 to i32
  tail call void @input_event(ptr noundef %140, i32 noundef 1, i32 noundef 307, i32 noundef %145) #8
  %146 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %extension, align 4
  %148 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx186, align 1
  %150 = lshr i8 %149, 2
  %.lobit415 = and i8 %150, 1
  %151 = xor i8 %.lobit415, 1
  %152 = zext i8 %151 to i32
  tail call void @input_event(ptr noundef %147, i32 noundef 1, i32 noundef 313, i32 noundef %152) #8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @wiimote_dpad_as_analog to i32))
  %153 = load i8, ptr @wiimote_dpad_as_analog, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool232.not = icmp eq i8 %153, 0
  br i1 %tobool232.not, label %if.then233, label %if.end82.if.end289_crit_edge

if.end82.if.end289_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end289

if.then233:                                       ; preds = %if.end82
  %154 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %extension, align 4
  %156 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx146, align 1
  %158 = xor i8 %157, -1
  %159 = lshr i8 %158, 7
  %.not417 = zext i8 %159 to i32
  tail call void @input_event(ptr noundef %155, i32 noundef 1, i32 noundef 106, i32 noundef %.not417) #8
  %160 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %extension, align 4
  %162 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx146, align 1
  %164 = lshr i8 %163, 6
  %.lobit418 = and i8 %164, 1
  %165 = xor i8 %.lobit418, 1
  %166 = zext i8 %165 to i32
  tail call void @input_event(ptr noundef %161, i32 noundef 1, i32 noundef 108, i32 noundef %166) #8
  %167 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %flags, align 4
  %and252 = and i32 %168, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and252)
  %tobool253.not = icmp eq i32 %and252, 0
  %169 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %extension, align 4
  br i1 %tobool253.not, label %if.else271, label %if.then254

if.then254:                                       ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #10
  %171 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx87, align 1
  br label %if.end289.sink.split

if.else271:                                       ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #10
  %173 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx186, align 1
  %175 = lshr i8 %174, 1
  br label %if.end289.sink.split

if.end289.sink.split:                             ; preds = %if.else271, %if.then254
  %.sink425 = phi i8 [ %172, %if.then254 ], [ %175, %if.else271 ]
  %ext.sink = phi ptr [ %ext, %if.then254 ], [ %arrayidx186, %if.else271 ]
  %176 = and i8 %.sink425, 1
  %177 = xor i8 %176, 1
  %178 = zext i8 %177 to i32
  tail call void @input_event(ptr noundef %170, i32 noundef 1, i32 noundef 105, i32 noundef %178) #8
  %179 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %extension, align 4
  %181 = ptrtoint ptr %ext.sink to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %ext.sink, align 1
  %183 = and i8 %182, 1
  %184 = xor i8 %183, 1
  %185 = zext i8 %184 to i32
  tail call void @input_event(ptr noundef %180, i32 noundef 1, i32 noundef 103, i32 noundef %185) #8
  br label %if.end289

if.end289:                                        ; preds = %if.end289.sink.split, %if.end82.if.end289_crit_edge
  %186 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %extension, align 4
  tail call void @input_event(ptr noundef %187, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_classic_open(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %flags7 = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags7, align 4
  %or = or i32 %3, 512
  store i32 %or, ptr %flags7, align 4
  tail call void @wiiproto_req_drm(ptr noundef %1, i8 noundef zeroext 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_classic_close(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %flags7 = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags7, align 4
  %and = and i32 %3, -513
  store i32 %and, ptr %flags7, align 4
  tail call void @wiiproto_req_drm(ptr noundef %1, i8 noundef zeroext 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_bboard_probe(ptr nocapture noundef readnone %ops, ptr noundef %wdata) #0 align 64 {
entry:
  %buf = alloca [24 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf) #8
  %0 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 6
  %6 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 7
  %7 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 8
  %8 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 9
  %9 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 10
  %10 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 11
  %11 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 12
  %12 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 13
  %13 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 14
  %14 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 15
  %15 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 16
  %16 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 17
  %17 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 18
  %18 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 19
  %19 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 20
  %20 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 21
  %21 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 22
  %22 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 23
  %sync.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 7
  %23 = call ptr @memset(ptr %buf, i32 255, i32 24)
  tail call void @mutex_lock_nested(ptr noundef %sync.i, i32 noundef 0) #8
  %call = call i32 @wiimote_cmd_read(ptr noundef %wdata, i32 noundef 10747940, ptr noundef nonnull %buf, i8 noundef zeroext 12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call)
  %cmp.not = icmp eq i32 %call, 12
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %sync.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp1, i32 %call, i32 -5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @wiimote_cmd_read(ptr noundef %wdata, i32 noundef 10747952, ptr noundef %11, i8 noundef zeroext 12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 12
  call void @mutex_unlock(ptr noundef %sync.i) #8
  br i1 %cmp4.not, label %if.end11, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp6 = icmp slt i32 %call3, 0
  %spec.select169 = select i1 %cmp6, i32 %call3, i32 -5
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %buf, align 1
  %arrayidx17 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 15, i32 0, i32 0
  %conv22 = zext i8 %25 to i16
  %shl = shl nuw i16 %conv22, 8
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %0, align 1
  %conv26 = zext i8 %27 to i16
  %or = or i16 %shl, %conv26
  %28 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %or, ptr %arrayidx17, align 2
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %1, align 1
  %arrayidx17.1 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 15, i32 1, i32 0
  %conv22.1 = zext i8 %30 to i16
  %shl.1 = shl nuw i16 %conv22.1, 8
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %2, align 1
  %conv26.1 = zext i8 %32 to i16
  %or.1 = or i16 %shl.1, %conv26.1
  %33 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %or.1, ptr %arrayidx17.1, align 2
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %3, align 1
  %arrayidx17.2 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 15, i32 2, i32 0
  %conv22.2 = zext i8 %35 to i16
  %shl.2 = shl nuw i16 %conv22.2, 8
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %4, align 1
  %conv26.2 = zext i8 %37 to i16
  %or.2 = or i16 %shl.2, %conv26.2
  %38 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %or.2, ptr %arrayidx17.2, align 2
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %5, align 1
  %arrayidx17.3 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 15, i32 3, i32 0
  %conv22.3 = zext i8 %40 to i16
  %shl.3 = shl nuw i16 %conv22.3, 8
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %6, align 1
  %conv26.3 = zext i8 %42 to i16
  %or.3 = or i16 %shl.3, %conv26.3
  %43 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %or.3, ptr %arrayidx17.3, align 2
  %44 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %7, align 1
  %arrayidx17.1181 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 15, i32 0, i32 1
  %conv22.1182 = zext i8 %45 to i16
  %shl.1183 = shl nuw i16 %conv22.1182, 8
  %46 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %8, align 1
  %conv26.1186 = zext i8 %47 to i16
  %or.1187 = or i16 %shl.1183, %conv26.1186
  %48 = ptrtoint ptr %arrayidx17.1181 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %or.1187, ptr %arrayidx17.1181, align 2
  %49 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %9, align 1
  %arrayidx17.1.1 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 15, i32 1, i32 1
  %conv22.1.1 = zext i8 %50 to i16
  %shl.1.1 = shl nuw i16 %conv22.1.1, 8
  %51 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %10, align 1
  %conv26.1.1 = zext i8 %52 to i16
  %or.1.1 = or i16 %shl.1.1, %conv26.1.1
  %53 = ptrtoint ptr %arrayidx17.1.1 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %or.1.1, ptr %arrayidx17.1.1, align 2
  %54 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %11, align 1
  %arrayidx17.2.1 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 15, i32 2, i32 1
  %conv22.2.1 = zext i8 %55 to i16
  %shl.2.1 = shl nuw i16 %conv22.2.1, 8
  %56 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %12, align 1
  %conv26.2.1 = zext i8 %57 to i16
  %or.2.1 = or i16 %shl.2.1, %conv26.2.1
  %58 = ptrtoint ptr %arrayidx17.2.1 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %or.2.1, ptr %arrayidx17.2.1, align 2
  %59 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %13, align 1
  %arrayidx17.3.1 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 15, i32 3, i32 1
  %conv22.3.1 = zext i8 %60 to i16
  %shl.3.1 = shl nuw i16 %conv22.3.1, 8
  %61 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %14, align 1
  %conv26.3.1 = zext i8 %62 to i16
  %or.3.1 = or i16 %shl.3.1, %conv26.3.1
  %63 = ptrtoint ptr %arrayidx17.3.1 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %or.3.1, ptr %arrayidx17.3.1, align 2
  %64 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %15, align 1
  %arrayidx17.2189 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 15, i32 0, i32 2
  %conv22.2190 = zext i8 %65 to i16
  %shl.2191 = shl nuw i16 %conv22.2190, 8
  %66 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %16, align 1
  %conv26.2194 = zext i8 %67 to i16
  %or.2195 = or i16 %shl.2191, %conv26.2194
  %68 = ptrtoint ptr %arrayidx17.2189 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %or.2195, ptr %arrayidx17.2189, align 2
  %69 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %17, align 1
  %arrayidx17.1.2 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 15, i32 1, i32 2
  %conv22.1.2 = zext i8 %70 to i16
  %shl.1.2 = shl nuw i16 %conv22.1.2, 8
  %71 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %18, align 1
  %conv26.1.2 = zext i8 %72 to i16
  %or.1.2 = or i16 %shl.1.2, %conv26.1.2
  %73 = ptrtoint ptr %arrayidx17.1.2 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %or.1.2, ptr %arrayidx17.1.2, align 2
  %74 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %19, align 1
  %arrayidx17.2.2 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 15, i32 2, i32 2
  %conv22.2.2 = zext i8 %75 to i16
  %shl.2.2 = shl nuw i16 %conv22.2.2, 8
  %76 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %20, align 1
  %conv26.2.2 = zext i8 %77 to i16
  %or.2.2 = or i16 %shl.2.2, %conv26.2.2
  %78 = ptrtoint ptr %arrayidx17.2.2 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %or.2.2, ptr %arrayidx17.2.2, align 2
  %79 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %21, align 1
  %arrayidx17.3.2 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 15, i32 3, i32 2
  %conv22.3.2 = zext i8 %80 to i16
  %shl.3.2 = shl nuw i16 %conv22.3.2, 8
  %81 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %22, align 1
  %conv26.3.2 = zext i8 %82 to i16
  %or.3.2 = or i16 %shl.3.2, %conv26.3.2
  %83 = ptrtoint ptr %arrayidx17.3.2 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %or.3.2, ptr %arrayidx17.3.2, align 2
  %call39 = call ptr @input_allocate_device() #8
  %extension = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 11
  %84 = ptrtoint ptr %extension to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call39, ptr %extension, align 4
  %tobool.not = icmp eq ptr %call39, null
  br i1 %tobool.not, label %if.end11.cleanup_crit_edge, label %if.end42

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end42:                                         ; preds = %if.end11
  %85 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %wdata, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %86, i32 0, i32 18
  %call43 = call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_bboard_calib) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end48, label %do.end

do.end:                                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %wdata, align 4
  %dev47 = getelementptr inbounds %struct.hid_device, ptr %88, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.16) #11
  br label %err_free

if.end48:                                         ; preds = %if.end42
  %89 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %extension, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %90, i32 0, i32 40, i32 8
  %91 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %wdata, ptr %driver_data.i.i, align 4
  %92 = load ptr, ptr %extension, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %92, i32 0, i32 31
  %93 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @wiimod_bboard_open, ptr %open, align 8
  %94 = load ptr, ptr %extension, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %94, i32 0, i32 32
  %95 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @wiimod_bboard_close, ptr %close, align 4
  %96 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %wdata, align 4
  %dev53 = getelementptr inbounds %struct.hid_device, ptr %97, i32 0, i32 18
  %98 = load ptr, ptr %extension, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %98, i32 0, i32 40, i32 1
  %99 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %dev53, ptr %parent, align 8
  %100 = load ptr, ptr %wdata, align 4
  %bus = getelementptr inbounds %struct.hid_device, ptr %100, i32 0, i32 8
  %101 = ptrtoint ptr %bus to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %bus, align 8
  %103 = load ptr, ptr %extension, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %102, ptr %id, align 4
  %105 = load ptr, ptr %wdata, align 4
  %vendor = getelementptr inbounds %struct.hid_device, ptr %105, i32 0, i32 10
  %106 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %vendor, align 4
  %conv59 = trunc i32 %107 to i16
  %108 = load ptr, ptr %extension, align 4
  %vendor62 = getelementptr inbounds %struct.input_dev, ptr %108, i32 0, i32 3, i32 1
  %109 = ptrtoint ptr %vendor62 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %conv59, ptr %vendor62, align 2
  %110 = load ptr, ptr %wdata, align 4
  %product = getelementptr inbounds %struct.hid_device, ptr %110, i32 0, i32 11
  %111 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %product, align 8
  %conv64 = trunc i32 %112 to i16
  %113 = load ptr, ptr %extension, align 4
  %product67 = getelementptr inbounds %struct.input_dev, ptr %113, i32 0, i32 3, i32 2
  %114 = ptrtoint ptr %product67 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv64, ptr %product67, align 4
  %115 = load ptr, ptr %wdata, align 4
  %version = getelementptr inbounds %struct.hid_device, ptr %115, i32 0, i32 12
  %116 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %version, align 4
  %conv69 = trunc i32 %117 to i16
  %118 = load ptr, ptr %extension, align 4
  %version72 = getelementptr inbounds %struct.input_dev, ptr %118, i32 0, i32 3, i32 3
  %119 = ptrtoint ptr %version72 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv69, ptr %version72, align 2
  %120 = load ptr, ptr %extension, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @.str.18, ptr %120, align 8
  %122 = load ptr, ptr %extension, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %122, i32 0, i32 5
  call void @_set_bit(i32 noundef 1, ptr noundef %evbit) #8
  %123 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %extension, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %124, i32 0, i32 6
  call void @_set_bit(i32 noundef 304, ptr noundef %keybit) #8
  %125 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %extension, align 4
  %evbit79 = getelementptr inbounds %struct.input_dev, ptr %126, i32 0, i32 5
  call void @_set_bit(i32 noundef 3, ptr noundef %evbit79) #8
  %127 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %extension, align 4
  %absbit = getelementptr inbounds %struct.input_dev, ptr %128, i32 0, i32 8
  call void @_set_bit(i32 noundef 16, ptr noundef %absbit) #8
  %129 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %extension, align 4
  %absbit84 = getelementptr inbounds %struct.input_dev, ptr %130, i32 0, i32 8
  call void @_set_bit(i32 noundef 17, ptr noundef %absbit84) #8
  %131 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %extension, align 4
  %absbit87 = getelementptr inbounds %struct.input_dev, ptr %132, i32 0, i32 8
  call void @_set_bit(i32 noundef 18, ptr noundef %absbit87) #8
  %133 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %extension, align 4
  %absbit90 = getelementptr inbounds %struct.input_dev, ptr %134, i32 0, i32 8
  call void @_set_bit(i32 noundef 19, ptr noundef %absbit90) #8
  %135 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %extension, align 4
  call void @input_set_abs_params(ptr noundef %136, i32 noundef 16, i32 noundef 0, i32 noundef 65535, i32 noundef 2, i32 noundef 4) #8
  %137 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %extension, align 4
  call void @input_set_abs_params(ptr noundef %138, i32 noundef 17, i32 noundef 0, i32 noundef 65535, i32 noundef 2, i32 noundef 4) #8
  %139 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %extension, align 4
  call void @input_set_abs_params(ptr noundef %140, i32 noundef 18, i32 noundef 0, i32 noundef 65535, i32 noundef 2, i32 noundef 4) #8
  %141 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %extension, align 4
  call void @input_set_abs_params(ptr noundef %142, i32 noundef 19, i32 noundef 0, i32 noundef 65535, i32 noundef 2, i32 noundef 4) #8
  %143 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %extension, align 4
  %call97 = call i32 @input_register_device(ptr noundef %144) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end48.cleanup_crit_edge, label %err_file

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_file:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %145 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %wdata, align 4
  %dev102 = getelementptr inbounds %struct.hid_device, ptr %146, i32 0, i32 18
  call void @device_remove_file(ptr noundef %dev102, ptr noundef nonnull @dev_attr_bboard_calib) #8
  br label %err_free

err_free:                                         ; preds = %err_file, %do.end
  %ret.0 = phi i32 [ %call43, %do.end ], [ %call97, %err_file ]
  %147 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %extension, align 4
  call void @input_free_device(ptr noundef %148) #8
  %149 = ptrtoint ptr %extension to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %extension, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end48.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then5, %if.then
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ %spec.select169, %if.then5 ], [ %ret.0, %err_free ], [ -12, %if.end11.cleanup_crit_edge ], [ 0, %if.end48.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_bboard_remove(ptr nocapture noundef readnone %ops, ptr nocapture noundef %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %extension = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 11
  %0 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extension, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_unregister_device(ptr noundef nonnull %1) #8
  %2 = ptrtoint ptr %extension to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %extension, align 4
  %3 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wdata, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %4, i32 0, i32 18
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_bboard_calib) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_bboard_in_keys(ptr nocapture noundef readonly %wdata, ptr nocapture noundef readonly %keys) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %extension = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 11
  %0 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extension, align 4
  %arrayidx = getelementptr i8, ptr %keys, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 3
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 304, i32 noundef %5) #8
  %6 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extension, align 4
  tail call void @input_event(ptr noundef %7, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_bboard_in_ext(ptr nocapture noundef readonly %wdata, ptr nocapture noundef readonly %ext) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ext, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx3 = getelementptr i8, ptr %ext, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %3 to i32
  %or = or i32 %shl, %conv4
  %arrayidx6 = getelementptr i8, ptr %ext, i32 2
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %5 to i32
  %shl10 = shl nuw nsw i32 %conv7, 8
  %arrayidx11 = getelementptr i8, ptr %ext, i32 3
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %7 to i32
  %or14 = or i32 %shl10, %conv12
  %arrayidx15 = getelementptr i8, ptr %ext, i32 4
  %8 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %9 to i32
  %shl19 = shl nuw nsw i32 %conv16, 8
  %arrayidx20 = getelementptr i8, ptr %ext, i32 5
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %11 to i32
  %or23 = or i32 %shl19, %conv21
  %arrayidx24 = getelementptr i8, ptr %ext, i32 6
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %13 to i32
  %shl28 = shl nuw nsw i32 %conv25, 8
  %arrayidx29 = getelementptr i8, ptr %ext, i32 7
  %14 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %15 to i32
  %or32 = or i32 %shl28, %conv30
  %arrayidx35 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 15, i32 0
  %16 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx35, align 2
  %conv37 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv37)
  %cmp38.not = icmp ugt i32 %or, %conv37
  br i1 %cmp38.not, label %if.else, label %entry.if.end86_crit_edge

entry.if.end86_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.else:                                          ; preds = %entry
  %arrayidx43 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 15, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx43, align 2
  %conv44 = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv44)
  %cmp45 = icmp ult i32 %or, %conv44
  br i1 %cmp45, label %if.then47, label %if.else63

if.then47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub nsw i32 %or, %conv37
  %mul = mul nsw i32 %sub, 1700
  %sub61 = sub nsw i32 %conv44, %conv37
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %17)
  %tobool.not = icmp eq i16 %19, %17
  %spec.select = select i1 %tobool.not, i32 1, i32 %sub61
  %div62 = sdiv i32 %mul, %spec.select
  br label %if.end86

if.else63:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %sub69 = sub nsw i32 %or, %conv44
  %mul70 = mul nsw i32 %sub69, 1700
  %arrayidx73 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 15, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx73, align 2
  %conv74 = zext i16 %21 to i32
  %sub79 = sub nsw i32 %conv74, %conv44
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %19)
  %tobool80.not = icmp eq i16 %21, %19
  %spec.select137 = select i1 %tobool80.not, i32 1, i32 %sub79
  %div85 = sdiv i32 %mul70, %spec.select137
  %add = add i32 %div85, 1700
  br label %if.end86

if.end86:                                         ; preds = %if.else63, %if.then47, %entry.if.end86_crit_edge
  %tmp.0 = phi i32 [ %div62, %if.then47 ], [ %add, %if.else63 ], [ 0, %entry.if.end86_crit_edge ]
  %arrayidx35.1 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 15, i32 1
  %22 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx35.1, align 2
  %conv37.1 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or14, i32 %conv37.1)
  %cmp38.not.1 = icmp ugt i32 %or14, %conv37.1
  br i1 %cmp38.not.1, label %if.else.1, label %if.end86.if.end86.1_crit_edge

if.end86.if.end86.1_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86.1

if.else.1:                                        ; preds = %if.end86
  %arrayidx43.1 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 15, i32 1, i32 1
  %24 = ptrtoint ptr %arrayidx43.1 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx43.1, align 2
  %conv44.1 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or14, i32 %conv44.1)
  %cmp45.1 = icmp ult i32 %or14, %conv44.1
  br i1 %cmp45.1, label %if.then47.1, label %if.else63.1

if.else63.1:                                      ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #10
  %sub69.1 = sub nsw i32 %or14, %conv44.1
  %mul70.1 = mul nsw i32 %sub69.1, 1700
  %arrayidx73.1 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 15, i32 1, i32 2
  %26 = ptrtoint ptr %arrayidx73.1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx73.1, align 2
  %conv74.1 = zext i16 %27 to i32
  %sub79.1 = sub nsw i32 %conv74.1, %conv44.1
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %25)
  %tobool80.not.1 = icmp eq i16 %27, %25
  %spec.select137.1 = select i1 %tobool80.not.1, i32 1, i32 %sub79.1
  %div85.1 = sdiv i32 %mul70.1, %spec.select137.1
  %add.1 = add i32 %div85.1, 1700
  br label %if.end86.1

if.then47.1:                                      ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #10
  %sub.1 = sub nsw i32 %or14, %conv37.1
  %mul.1 = mul nsw i32 %sub.1, 1700
  %sub61.1 = sub nsw i32 %conv44.1, %conv37.1
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %23)
  %tobool.not.1 = icmp eq i16 %25, %23
  %spec.select.1 = select i1 %tobool.not.1, i32 1, i32 %sub61.1
  %div62.1 = sdiv i32 %mul.1, %spec.select.1
  br label %if.end86.1

if.end86.1:                                       ; preds = %if.then47.1, %if.else63.1, %if.end86.if.end86.1_crit_edge
  %tmp.0.1 = phi i32 [ %div62.1, %if.then47.1 ], [ %add.1, %if.else63.1 ], [ 0, %if.end86.if.end86.1_crit_edge ]
  %arrayidx35.2 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 15, i32 2
  %28 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx35.2, align 2
  %conv37.2 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or23, i32 %conv37.2)
  %cmp38.not.2 = icmp ugt i32 %or23, %conv37.2
  br i1 %cmp38.not.2, label %if.else.2, label %if.end86.1.if.end86.2_crit_edge

if.end86.1.if.end86.2_crit_edge:                  ; preds = %if.end86.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86.2

if.else.2:                                        ; preds = %if.end86.1
  %arrayidx43.2 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 15, i32 2, i32 1
  %30 = ptrtoint ptr %arrayidx43.2 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx43.2, align 2
  %conv44.2 = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or23, i32 %conv44.2)
  %cmp45.2 = icmp ult i32 %or23, %conv44.2
  br i1 %cmp45.2, label %if.then47.2, label %if.else63.2

if.else63.2:                                      ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #10
  %sub69.2 = sub nsw i32 %or23, %conv44.2
  %mul70.2 = mul nsw i32 %sub69.2, 1700
  %arrayidx73.2 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 15, i32 2, i32 2
  %32 = ptrtoint ptr %arrayidx73.2 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx73.2, align 2
  %conv74.2 = zext i16 %33 to i32
  %sub79.2 = sub nsw i32 %conv74.2, %conv44.2
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %31)
  %tobool80.not.2 = icmp eq i16 %33, %31
  %spec.select137.2 = select i1 %tobool80.not.2, i32 1, i32 %sub79.2
  %div85.2 = sdiv i32 %mul70.2, %spec.select137.2
  %add.2 = add i32 %div85.2, 1700
  br label %if.end86.2

if.then47.2:                                      ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #10
  %sub.2 = sub nsw i32 %or23, %conv37.2
  %mul.2 = mul nsw i32 %sub.2, 1700
  %sub61.2 = sub nsw i32 %conv44.2, %conv37.2
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %29)
  %tobool.not.2 = icmp eq i16 %31, %29
  %spec.select.2 = select i1 %tobool.not.2, i32 1, i32 %sub61.2
  %div62.2 = sdiv i32 %mul.2, %spec.select.2
  br label %if.end86.2

if.end86.2:                                       ; preds = %if.then47.2, %if.else63.2, %if.end86.1.if.end86.2_crit_edge
  %tmp.0.2 = phi i32 [ %div62.2, %if.then47.2 ], [ %add.2, %if.else63.2 ], [ 0, %if.end86.1.if.end86.2_crit_edge ]
  %arrayidx35.3 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 15, i32 3
  %34 = ptrtoint ptr %arrayidx35.3 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx35.3, align 2
  %conv37.3 = zext i16 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or32, i32 %conv37.3)
  %cmp38.not.3 = icmp ugt i32 %or32, %conv37.3
  br i1 %cmp38.not.3, label %if.else.3, label %if.end86.2.if.end86.3_crit_edge

if.end86.2.if.end86.3_crit_edge:                  ; preds = %if.end86.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86.3

if.else.3:                                        ; preds = %if.end86.2
  %arrayidx43.3 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 15, i32 3, i32 1
  %36 = ptrtoint ptr %arrayidx43.3 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx43.3, align 2
  %conv44.3 = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or32, i32 %conv44.3)
  %cmp45.3 = icmp ult i32 %or32, %conv44.3
  br i1 %cmp45.3, label %if.then47.3, label %if.else63.3

if.else63.3:                                      ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #10
  %sub69.3 = sub nsw i32 %or32, %conv44.3
  %mul70.3 = mul nsw i32 %sub69.3, 1700
  %arrayidx73.3 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 15, i32 3, i32 2
  %38 = ptrtoint ptr %arrayidx73.3 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx73.3, align 2
  %conv74.3 = zext i16 %39 to i32
  %sub79.3 = sub nsw i32 %conv74.3, %conv44.3
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %37)
  %tobool80.not.3 = icmp eq i16 %39, %37
  %spec.select137.3 = select i1 %tobool80.not.3, i32 1, i32 %sub79.3
  %div85.3 = sdiv i32 %mul70.3, %spec.select137.3
  %add.3 = add i32 %div85.3, 1700
  br label %if.end86.3

if.then47.3:                                      ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #10
  %sub.3 = sub nsw i32 %or32, %conv37.3
  %mul.3 = mul nsw i32 %sub.3, 1700
  %sub61.3 = sub nsw i32 %conv44.3, %conv37.3
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %35)
  %tobool.not.3 = icmp eq i16 %37, %35
  %spec.select.3 = select i1 %tobool.not.3, i32 1, i32 %sub61.3
  %div62.3 = sdiv i32 %mul.3, %spec.select.3
  br label %if.end86.3

if.end86.3:                                       ; preds = %if.then47.3, %if.else63.3, %if.end86.2.if.end86.3_crit_edge
  %tmp.0.3 = phi i32 [ %div62.3, %if.then47.3 ], [ %add.3, %if.else63.3 ], [ 0, %if.end86.2.if.end86.3_crit_edge ]
  %extension = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 11
  %40 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %extension, align 4
  tail call void @input_event(ptr noundef %41, i32 noundef 3, i32 noundef 16, i32 noundef %tmp.0) #8
  %42 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %extension, align 4
  tail call void @input_event(ptr noundef %43, i32 noundef 3, i32 noundef 17, i32 noundef %tmp.0.1) #8
  %44 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %extension, align 4
  tail call void @input_event(ptr noundef %45, i32 noundef 3, i32 noundef 18, i32 noundef %tmp.0.2) #8
  %46 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %extension, align 4
  tail call void @input_event(ptr noundef %47, i32 noundef 3, i32 noundef 19, i32 noundef %tmp.0.3) #8
  %48 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %extension, align 4
  tail call void @input_event(ptr noundef %49, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wiimote_cmd_read(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_bboard_open(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %flags7 = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags7, align 4
  %or = or i32 %3, 512
  store i32 %or, ptr %flags7, align 4
  tail call void @wiiproto_req_drm(ptr noundef %1, i8 noundef zeroext 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_bboard_close(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %flags7 = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags7, align 4
  %and = and i32 %3, -513
  store i32 %and, ptr %flags7, align 4
  tail call void @wiiproto_req_drm(ptr noundef %1, i8 noundef zeroext 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_bboard_calib_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %out) #0 align 64 {
entry:
  %buf = alloca [24 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf) #8
  %2 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 6
  %8 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 7
  %9 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 8
  %10 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 9
  %11 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 10
  %12 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 11
  %13 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 12
  %14 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 13
  %15 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 14
  %16 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 15
  %17 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 16
  %18 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 17
  %19 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 18
  %20 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 19
  %21 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 20
  %22 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 21
  %23 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 22
  %24 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 23
  %sync.i = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 7
  %25 = call ptr @memset(ptr %buf, i32 255, i32 24)
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %sync.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @wiimote_cmd_read(ptr noundef %1, i32 noundef 10747940, ptr noundef nonnull %buf, i8 noundef zeroext 12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 12
  br i1 %cmp.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %sync.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp4 = icmp slt i32 %call2, 0
  %spec.select = select i1 %cmp4, i32 %call2, i32 -5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call8 = call i32 @wiimote_cmd_read(ptr noundef %1, i32 noundef 10747952, ptr noundef %13, i8 noundef zeroext 12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 12
  call void @mutex_unlock(ptr noundef %sync.i) #8
  br i1 %cmp9.not, label %if.end16, label %if.then10

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp11 = icmp slt i32 %call8, 0
  %spec.select128 = select i1 %cmp11, i32 %call8, i32 -5
  br label %cleanup

if.end16:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13
  call void @_raw_spin_lock_irq(ptr noundef %state) #8
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %buf, align 1
  %arrayidx23 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 15, i32 0, i32 0
  %conv28 = zext i8 %27 to i16
  %shl = shl nuw i16 %conv28, 8
  %28 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %shl, ptr %arrayidx23, align 2
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %2, align 1
  %conv32 = zext i8 %30 to i16
  %or = or i16 %shl, %conv32
  store i16 %or, ptr %arrayidx23, align 2
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %3, align 1
  %arrayidx23.1 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 15, i32 1, i32 0
  %conv28.1 = zext i8 %32 to i16
  %shl.1 = shl nuw i16 %conv28.1, 8
  %33 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %shl.1, ptr %arrayidx23.1, align 2
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %4, align 1
  %conv32.1 = zext i8 %35 to i16
  %or.1 = or i16 %shl.1, %conv32.1
  store i16 %or.1, ptr %arrayidx23.1, align 2
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %5, align 1
  %arrayidx23.2 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 15, i32 2, i32 0
  %conv28.2 = zext i8 %37 to i16
  %shl.2 = shl nuw i16 %conv28.2, 8
  %38 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %shl.2, ptr %arrayidx23.2, align 2
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %6, align 1
  %conv32.2 = zext i8 %40 to i16
  %or.2 = or i16 %shl.2, %conv32.2
  store i16 %or.2, ptr %arrayidx23.2, align 2
  %41 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %7, align 1
  %arrayidx23.3 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 15, i32 3, i32 0
  %conv28.3 = zext i8 %42 to i16
  %shl.3 = shl nuw i16 %conv28.3, 8
  %43 = ptrtoint ptr %arrayidx23.3 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %shl.3, ptr %arrayidx23.3, align 2
  %44 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %8, align 1
  %conv32.3 = zext i8 %45 to i16
  %or.3 = or i16 %shl.3, %conv32.3
  store i16 %or.3, ptr %arrayidx23.3, align 2
  %46 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %9, align 1
  %arrayidx23.1144 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 15, i32 0, i32 1
  %conv28.1145 = zext i8 %47 to i16
  %shl.1146 = shl nuw i16 %conv28.1145, 8
  %48 = ptrtoint ptr %arrayidx23.1144 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %shl.1146, ptr %arrayidx23.1144, align 2
  %49 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %10, align 1
  %conv32.1149 = zext i8 %50 to i16
  %or.1150 = or i16 %shl.1146, %conv32.1149
  store i16 %or.1150, ptr %arrayidx23.1144, align 2
  %51 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %11, align 1
  %arrayidx23.1.1 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 15, i32 1, i32 1
  %conv28.1.1 = zext i8 %52 to i16
  %shl.1.1 = shl nuw i16 %conv28.1.1, 8
  %53 = ptrtoint ptr %arrayidx23.1.1 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %shl.1.1, ptr %arrayidx23.1.1, align 2
  %54 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %12, align 1
  %conv32.1.1 = zext i8 %55 to i16
  %or.1.1 = or i16 %shl.1.1, %conv32.1.1
  store i16 %or.1.1, ptr %arrayidx23.1.1, align 2
  %56 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %13, align 1
  %arrayidx23.2.1 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 15, i32 2, i32 1
  %conv28.2.1 = zext i8 %57 to i16
  %shl.2.1 = shl nuw i16 %conv28.2.1, 8
  %58 = ptrtoint ptr %arrayidx23.2.1 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %shl.2.1, ptr %arrayidx23.2.1, align 2
  %59 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %14, align 1
  %conv32.2.1 = zext i8 %60 to i16
  %or.2.1 = or i16 %shl.2.1, %conv32.2.1
  store i16 %or.2.1, ptr %arrayidx23.2.1, align 2
  %61 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %15, align 1
  %arrayidx23.3.1 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 15, i32 3, i32 1
  %conv28.3.1 = zext i8 %62 to i16
  %shl.3.1 = shl nuw i16 %conv28.3.1, 8
  %63 = ptrtoint ptr %arrayidx23.3.1 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %shl.3.1, ptr %arrayidx23.3.1, align 2
  %64 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %16, align 1
  %conv32.3.1 = zext i8 %65 to i16
  %or.3.1 = or i16 %shl.3.1, %conv32.3.1
  store i16 %or.3.1, ptr %arrayidx23.3.1, align 2
  %66 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %17, align 1
  %arrayidx23.2152 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 15, i32 0, i32 2
  %conv28.2153 = zext i8 %67 to i16
  %shl.2154 = shl nuw i16 %conv28.2153, 8
  %68 = ptrtoint ptr %arrayidx23.2152 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %shl.2154, ptr %arrayidx23.2152, align 2
  %69 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %18, align 1
  %conv32.2157 = zext i8 %70 to i16
  %or.2158 = or i16 %shl.2154, %conv32.2157
  store i16 %or.2158, ptr %arrayidx23.2152, align 2
  %71 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %19, align 1
  %arrayidx23.1.2 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 15, i32 1, i32 2
  %conv28.1.2 = zext i8 %72 to i16
  %shl.1.2 = shl nuw i16 %conv28.1.2, 8
  %73 = ptrtoint ptr %arrayidx23.1.2 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %shl.1.2, ptr %arrayidx23.1.2, align 2
  %74 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %20, align 1
  %conv32.1.2 = zext i8 %75 to i16
  %or.1.2 = or i16 %shl.1.2, %conv32.1.2
  store i16 %or.1.2, ptr %arrayidx23.1.2, align 2
  %76 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %21, align 1
  %arrayidx23.2.2 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 15, i32 2, i32 2
  %conv28.2.2 = zext i8 %77 to i16
  %shl.2.2 = shl nuw i16 %conv28.2.2, 8
  %78 = ptrtoint ptr %arrayidx23.2.2 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %shl.2.2, ptr %arrayidx23.2.2, align 2
  %79 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %22, align 1
  %conv32.2.2 = zext i8 %80 to i16
  %or.2.2 = or i16 %shl.2.2, %conv32.2.2
  store i16 %or.2.2, ptr %arrayidx23.2.2, align 2
  %81 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %23, align 1
  %arrayidx23.3.2 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 15, i32 3, i32 2
  %conv28.3.2 = zext i8 %82 to i16
  %shl.3.2 = shl nuw i16 %conv28.3.2, 8
  %83 = ptrtoint ptr %arrayidx23.3.2 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %shl.3.2, ptr %arrayidx23.3.2, align 2
  %84 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %24, align 1
  %conv32.3.2 = zext i8 %85 to i16
  %or.3.2 = or i16 %shl.3.2, %conv32.3.2
  store i16 %or.3.2, ptr %arrayidx23.3.2, align 2
  call void @_raw_spin_unlock_irq(ptr noundef %state) #8
  %arrayidx58 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 15, i32 0, i32 0
  %86 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx58, align 2
  %conv69 = zext i16 %87 to i32
  %call70 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %out, ptr noundef nonnull @.str.21, i32 noundef %conv69)
  %arrayidx58.1 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 15, i32 1, i32 0
  %88 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx58.1, align 2
  %arrayidx68.1 = getelementptr i8, ptr %out, i32 %call70
  %conv69.1 = zext i16 %89 to i32
  %call70.1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx68.1, ptr noundef nonnull @.str.21, i32 noundef %conv69.1)
  %ret.2.1 = add i32 %call70.1, %call70
  %arrayidx58.2 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 15, i32 2, i32 0
  %90 = ptrtoint ptr %arrayidx58.2 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx58.2, align 2
  %arrayidx68.2 = getelementptr i8, ptr %out, i32 %ret.2.1
  %conv69.2 = zext i16 %91 to i32
  %call70.2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx68.2, ptr noundef nonnull @.str.21, i32 noundef %conv69.2)
  %arrayidx58.3 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 15, i32 3, i32 0
  %92 = ptrtoint ptr %arrayidx58.3 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx58.3, align 2
  %conv65.3 = zext i16 %93 to i32
  %ret.2.2 = add i32 %call70.2, %ret.2.1
  %arrayidx64.3 = getelementptr i8, ptr %out, i32 %ret.2.2
  %call70.3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx64.3, ptr noundef nonnull @.str.21, i32 noundef %conv65.3)
  %ret.2.3 = add i32 %call70.3, %ret.2.2
  %arrayidx58.1164 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 15, i32 0, i32 1
  %94 = ptrtoint ptr %arrayidx58.1164 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx58.1164, align 2
  %arrayidx68.1165 = getelementptr i8, ptr %out, i32 %ret.2.3
  %conv69.1166 = zext i16 %95 to i32
  %call70.1167 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx68.1165, ptr noundef nonnull @.str.21, i32 noundef %conv69.1166)
  %ret.2.1168 = add i32 %call70.1167, %ret.2.3
  %arrayidx58.1.1 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 15, i32 1, i32 1
  %96 = ptrtoint ptr %arrayidx58.1.1 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %arrayidx58.1.1, align 2
  %arrayidx68.1.1 = getelementptr i8, ptr %out, i32 %ret.2.1168
  %conv69.1.1 = zext i16 %97 to i32
  %call70.1.1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx68.1.1, ptr noundef nonnull @.str.21, i32 noundef %conv69.1.1)
  %ret.2.1.1 = add i32 %call70.1.1, %ret.2.1168
  %arrayidx58.2.1 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 15, i32 2, i32 1
  %98 = ptrtoint ptr %arrayidx58.2.1 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %arrayidx58.2.1, align 2
  %arrayidx68.2.1 = getelementptr i8, ptr %out, i32 %ret.2.1.1
  %conv69.2.1 = zext i16 %99 to i32
  %call70.2.1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx68.2.1, ptr noundef nonnull @.str.21, i32 noundef %conv69.2.1)
  %arrayidx58.3.1 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 15, i32 3, i32 1
  %100 = ptrtoint ptr %arrayidx58.3.1 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx58.3.1, align 2
  %conv65.3.1 = zext i16 %101 to i32
  %ret.2.2.1 = add i32 %call70.2.1, %ret.2.1.1
  %arrayidx64.3.1 = getelementptr i8, ptr %out, i32 %ret.2.2.1
  %call70.3.1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx64.3.1, ptr noundef nonnull @.str.21, i32 noundef %conv65.3.1)
  %ret.2.3.1 = add i32 %call70.3.1, %ret.2.2.1
  %arrayidx58.2169 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 15, i32 0, i32 2
  %102 = ptrtoint ptr %arrayidx58.2169 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %arrayidx58.2169, align 2
  %arrayidx68.2170 = getelementptr i8, ptr %out, i32 %ret.2.3.1
  %conv69.2171 = zext i16 %103 to i32
  %call70.2172 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx68.2170, ptr noundef nonnull @.str.21, i32 noundef %conv69.2171)
  %ret.2.2173 = add i32 %call70.2172, %ret.2.3.1
  %arrayidx58.1.2 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 15, i32 1, i32 2
  %104 = ptrtoint ptr %arrayidx58.1.2 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %arrayidx58.1.2, align 2
  %arrayidx68.1.2 = getelementptr i8, ptr %out, i32 %ret.2.2173
  %conv69.1.2 = zext i16 %105 to i32
  %call70.1.2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx68.1.2, ptr noundef nonnull @.str.21, i32 noundef %conv69.1.2)
  %ret.2.1.2 = add i32 %call70.1.2, %ret.2.2173
  %arrayidx58.2.2 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 15, i32 2, i32 2
  %106 = ptrtoint ptr %arrayidx58.2.2 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %arrayidx58.2.2, align 2
  %arrayidx68.2.2 = getelementptr i8, ptr %out, i32 %ret.2.1.2
  %conv69.2.2 = zext i16 %107 to i32
  %call70.2.2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx68.2.2, ptr noundef nonnull @.str.21, i32 noundef %conv69.2.2)
  %arrayidx58.3.2 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 15, i32 3, i32 2
  %108 = ptrtoint ptr %arrayidx58.3.2 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx58.3.2, align 2
  %conv65.3.2 = zext i16 %109 to i32
  %ret.2.2.2 = add i32 %call70.2.2, %ret.2.1.2
  %arrayidx64.3.2 = getelementptr i8, ptr %out, i32 %ret.2.2.2
  %call66.3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx64.3.2, ptr noundef nonnull @.str.20, i32 noundef %conv65.3.2)
  %ret.2.3160 = add i32 %call66.3, %ret.2.2.2
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then10, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then3 ], [ %spec.select128, %if.then10 ], [ -512, %entry.cleanup_crit_edge ], [ %ret.2.3160, %if.end16 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_pro_probe(ptr nocapture noundef readnone %ops, ptr noundef %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rumble_worker = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 2
  tail call void @__init_work(ptr noundef %rumble_worker, i32 noundef 0) #8
  %0 = ptrtoint ptr %rumble_worker to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %rumble_worker, align 4
  %lockdep_map = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @wiimod_pro_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry4 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 2, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @wiimod_rumble_worker, ptr %func, align 4
  %state = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13
  %calib_pro_sticks = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 16
  %4 = ptrtoint ptr %calib_pro_sticks to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %calib_pro_sticks, align 2
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %flags24 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %5 = ptrtoint ptr %flags24 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags24, align 4
  %and = and i32 %6, -262145
  store i32 %and, ptr %flags24, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call18) #8
  %call27 = tail call ptr @input_allocate_device() #8
  %extension = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 11
  %7 = ptrtoint ptr %extension to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call27, ptr %extension, align 4
  %tobool.not = icmp eq ptr %call27, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ffbit = getelementptr inbounds %struct.input_dev, ptr %call27, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 80, ptr noundef %ffbit) #8
  %8 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %extension, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 40, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %wdata, ptr %driver_data.i.i, align 4
  %11 = load ptr, ptr %extension, align 4
  %call32 = tail call i32 @input_ff_create_memless(ptr noundef %11, ptr noundef null, ptr noundef nonnull @wiimod_pro_play) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end.err_free_crit_edge

if.end.err_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free

if.end35:                                         ; preds = %if.end
  %12 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wdata, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %13, i32 0, i32 18
  %call36 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_pro_calib) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end44, label %do.end41

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wdata, align 4
  %dev43 = getelementptr inbounds %struct.hid_device, ptr %15, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43, ptr noundef nonnull @.str.16) #11
  br label %err_free

if.end44:                                         ; preds = %if.end35
  %16 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %extension, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %17, i32 0, i32 31
  %18 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @wiimod_pro_open, ptr %open, align 8
  %19 = load ptr, ptr %extension, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 32
  %20 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @wiimod_pro_close, ptr %close, align 4
  %21 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wdata, align 4
  %dev48 = getelementptr inbounds %struct.hid_device, ptr %22, i32 0, i32 18
  %23 = load ptr, ptr %extension, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %23, i32 0, i32 40, i32 1
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev48, ptr %parent, align 8
  %25 = load ptr, ptr %wdata, align 4
  %bus = getelementptr inbounds %struct.hid_device, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %bus to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %bus, align 8
  %28 = load ptr, ptr %extension, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %27, ptr %id, align 4
  %30 = load ptr, ptr %wdata, align 4
  %vendor = getelementptr inbounds %struct.hid_device, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vendor, align 4
  %conv54 = trunc i32 %32 to i16
  %33 = load ptr, ptr %extension, align 4
  %vendor57 = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %vendor57 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv54, ptr %vendor57, align 2
  %35 = load ptr, ptr %wdata, align 4
  %product = getelementptr inbounds %struct.hid_device, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %product, align 8
  %conv59 = trunc i32 %37 to i16
  %38 = load ptr, ptr %extension, align 4
  %product62 = getelementptr inbounds %struct.input_dev, ptr %38, i32 0, i32 3, i32 2
  %39 = ptrtoint ptr %product62 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv59, ptr %product62, align 4
  %40 = load ptr, ptr %wdata, align 4
  %version = getelementptr inbounds %struct.hid_device, ptr %40, i32 0, i32 12
  %41 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %version, align 4
  %conv64 = trunc i32 %42 to i16
  %43 = load ptr, ptr %extension, align 4
  %version67 = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 3, i32 3
  %44 = ptrtoint ptr %version67 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv64, ptr %version67, align 2
  %45 = load ptr, ptr %extension, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.23, ptr %45, align 8
  %47 = load ptr, ptr %extension, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %47, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %evbit) #8
  %48 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %extension, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %49, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 305, ptr noundef %keybit) #8
  %50 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %extension, align 4
  %keybit.1 = getelementptr inbounds %struct.input_dev, ptr %51, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 304, ptr noundef %keybit.1) #8
  %52 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %extension, align 4
  %keybit.2 = getelementptr inbounds %struct.input_dev, ptr %53, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 307, ptr noundef %keybit.2) #8
  %54 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %extension, align 4
  %keybit.3 = getelementptr inbounds %struct.input_dev, ptr %55, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 308, ptr noundef %keybit.3) #8
  %56 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %extension, align 4
  %keybit.4 = getelementptr inbounds %struct.input_dev, ptr %57, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 315, ptr noundef %keybit.4) #8
  %58 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %extension, align 4
  %keybit.5 = getelementptr inbounds %struct.input_dev, ptr %59, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 314, ptr noundef %keybit.5) #8
  %60 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %extension, align 4
  %keybit.6 = getelementptr inbounds %struct.input_dev, ptr %61, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 316, ptr noundef %keybit.6) #8
  %62 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %extension, align 4
  %keybit.7 = getelementptr inbounds %struct.input_dev, ptr %63, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 546, ptr noundef %keybit.7) #8
  %64 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %extension, align 4
  %keybit.8 = getelementptr inbounds %struct.input_dev, ptr %65, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 547, ptr noundef %keybit.8) #8
  %66 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %extension, align 4
  %keybit.9 = getelementptr inbounds %struct.input_dev, ptr %67, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 544, ptr noundef %keybit.9) #8
  %68 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %extension, align 4
  %keybit.10 = getelementptr inbounds %struct.input_dev, ptr %69, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 545, ptr noundef %keybit.10) #8
  %70 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %extension, align 4
  %keybit.11 = getelementptr inbounds %struct.input_dev, ptr %71, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 310, ptr noundef %keybit.11) #8
  %72 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %extension, align 4
  %keybit.12 = getelementptr inbounds %struct.input_dev, ptr %73, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 311, ptr noundef %keybit.12) #8
  %74 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %extension, align 4
  %keybit.13 = getelementptr inbounds %struct.input_dev, ptr %75, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 312, ptr noundef %keybit.13) #8
  %76 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %extension, align 4
  %keybit.14 = getelementptr inbounds %struct.input_dev, ptr %77, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 313, ptr noundef %keybit.14) #8
  %78 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %extension, align 4
  %keybit.15 = getelementptr inbounds %struct.input_dev, ptr %79, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 317, ptr noundef %keybit.15) #8
  %80 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %extension, align 4
  %keybit.16 = getelementptr inbounds %struct.input_dev, ptr %81, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 318, ptr noundef %keybit.16) #8
  %82 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %extension, align 4
  %evbit78 = getelementptr inbounds %struct.input_dev, ptr %83, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %evbit78) #8
  %84 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %extension, align 4
  %absbit = getelementptr inbounds %struct.input_dev, ptr %85, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %absbit) #8
  %86 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %extension, align 4
  %absbit83 = getelementptr inbounds %struct.input_dev, ptr %87, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %absbit83) #8
  %88 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %extension, align 4
  %absbit86 = getelementptr inbounds %struct.input_dev, ptr %89, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 3, ptr noundef %absbit86) #8
  %90 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %extension, align 4
  %absbit89 = getelementptr inbounds %struct.input_dev, ptr %91, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 4, ptr noundef %absbit89) #8
  %92 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %93, i32 noundef 0, i32 noundef -1024, i32 noundef 1024, i32 noundef 4, i32 noundef 100) #8
  %94 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %95, i32 noundef 1, i32 noundef -1024, i32 noundef 1024, i32 noundef 4, i32 noundef 100) #8
  %96 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %97, i32 noundef 3, i32 noundef -1024, i32 noundef 1024, i32 noundef 4, i32 noundef 100) #8
  %98 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %99, i32 noundef 4, i32 noundef -1024, i32 noundef 1024, i32 noundef 4, i32 noundef 100) #8
  %100 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %extension, align 4
  %call96 = tail call i32 @input_register_device(ptr noundef %101) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end44.cleanup_crit_edge, label %err_file

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_file:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %wdata, align 4
  %dev101 = getelementptr inbounds %struct.hid_device, ptr %103, i32 0, i32 18
  tail call void @device_remove_file(ptr noundef %dev101, ptr noundef nonnull @dev_attr_pro_calib) #8
  br label %err_free

err_free:                                         ; preds = %err_file, %do.end41, %if.end.err_free_crit_edge
  %ret.0 = phi i32 [ %call36, %do.end41 ], [ %call96, %err_file ], [ -12, %if.end.err_free_crit_edge ]
  %104 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %extension, align 4
  tail call void @input_free_device(ptr noundef %105) #8
  %106 = ptrtoint ptr %extension to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %extension, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end44.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_pro_remove(ptr nocapture noundef readnone %ops, ptr noundef %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %extension = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 11
  %0 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extension, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_unregister_device(ptr noundef nonnull %1) #8
  %2 = ptrtoint ptr %extension to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %extension, align 4
  %rumble_worker = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 2
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %rumble_worker) #8
  %3 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wdata, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %4, i32 0, i32 18
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_pro_calib) #8
  %state = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  tail call void @wiiproto_req_rumble(ptr noundef %wdata, i8 noundef zeroext 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_pro_in_ext(ptr noundef %wdata, ptr nocapture noundef readonly %ext) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ext, align 1
  %conv = zext i8 %1 to i16
  %arrayidx1 = getelementptr i8, ptr %ext, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %4 = and i8 %3, 15
  %and3 = zext i8 %4 to i16
  %shl = shl nuw nsw i16 %and3, 8
  %or = or i16 %shl, %conv
  %arrayidx5 = getelementptr i8, ptr %ext, i32 2
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %6 to i16
  %arrayidx8 = getelementptr i8, ptr %ext, i32 3
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx8, align 1
  %9 = and i8 %8, 15
  %and10 = zext i8 %9 to i16
  %shl11 = shl nuw nsw i16 %and10, 8
  %or12 = or i16 %shl11, %conv6
  %arrayidx14 = getelementptr i8, ptr %ext, i32 4
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %11 to i16
  %arrayidx17 = getelementptr i8, ptr %ext, i32 5
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx17, align 1
  %14 = and i8 %13, 15
  %and19 = zext i8 %14 to i16
  %shl20 = shl nuw nsw i16 %and19, 8
  %or21 = or i16 %shl20, %conv15
  %arrayidx23 = getelementptr i8, ptr %ext, i32 6
  %15 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %16 to i16
  %arrayidx26 = getelementptr i8, ptr %ext, i32 7
  %17 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx26, align 1
  %19 = and i8 %18, 15
  %and28 = zext i8 %19 to i16
  %shl29 = shl nuw nsw i16 %and28, 8
  %or30 = or i16 %shl29, %conv24
  %sub = add nsw i16 %or, -2048
  %sub35.neg = add nsw i16 %or21, -2048
  %sub35 = sub nsw i16 2048, %or21
  %sub38 = add nsw i16 %or12, -2048
  %sub41.neg = add nsw i16 %or30, -2048
  %sub41 = sub nsw i16 2048, %or30
  %flags = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %and43 = and i32 %21, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool.not = icmp eq i32 %and43, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end126_crit_edge

entry.if.end126_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126

if.then:                                          ; preds = %entry
  %or46 = or i32 %21, 262144
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or46, ptr %flags, align 4
  %conv47 = sext i16 %sub to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %or)
  %cmp = icmp ult i16 %or, 2048
  %sub50 = sub nsw i32 0, %conv47
  %cond = select i1 %cmp, i32 %sub50, i32 %conv47
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %cond)
  %cmp52 = icmp slt i32 %cond, 500
  br i1 %cmp52, label %if.then54, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then54:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub56 = sub nsw i16 2048, %or
  %calib_pro_sticks = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 16
  %23 = ptrtoint ptr %calib_pro_sticks to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %sub56, ptr %calib_pro_sticks, align 2
  br label %if.end

if.end:                                           ; preds = %if.then54, %if.then.if.end_crit_edge
  %conv62 = sext i16 %sub35 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %or21)
  %cmp63 = icmp ugt i16 %or21, 2048
  %sub67 = sub nsw i32 0, %conv62
  %cond71 = select i1 %cmp63, i32 %sub67, i32 %conv62
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %cond71)
  %cmp72 = icmp slt i32 %cond71, 500
  br i1 %cmp72, label %if.then74, label %if.end.if.end81_crit_edge

if.end.if.end81_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then74:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx80 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 16, i32 1
  %24 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %sub35.neg, ptr %arrayidx80, align 2
  br label %if.end81

if.end81:                                         ; preds = %if.then74, %if.end.if.end81_crit_edge
  %conv84 = sext i16 %sub38 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %or12)
  %cmp85 = icmp ult i16 %or12, 2048
  %sub89 = sub nsw i32 0, %conv84
  %cond93 = select i1 %cmp85, i32 %sub89, i32 %conv84
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %cond93)
  %cmp94 = icmp slt i32 %cond93, 500
  br i1 %cmp94, label %if.then96, label %if.end81.if.end103_crit_edge

if.end81.if.end103_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then96:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %sub98 = sub nsw i16 2048, %or12
  %arrayidx102 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 16, i32 2
  %25 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %sub98, ptr %arrayidx102, align 2
  br label %if.end103

if.end103:                                        ; preds = %if.then96, %if.end81.if.end103_crit_edge
  %conv106 = sext i16 %sub41 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %or30)
  %cmp107 = icmp ugt i16 %or30, 2048
  %sub111 = sub nsw i32 0, %conv106
  %cond115 = select i1 %cmp107, i32 %sub111, i32 %conv106
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %cond115)
  %cmp116 = icmp slt i32 %cond115, 500
  br i1 %cmp116, label %if.then118, label %if.end103.if.end126_crit_edge

if.end103.if.end126_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126

if.then118:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx124 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 16, i32 3
  %26 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %sub41.neg, ptr %arrayidx124, align 2
  br label %if.end126

if.end126:                                        ; preds = %if.then118, %if.end103.if.end126_crit_edge, %entry.if.end126_crit_edge
  %calib_pro_sticks128 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 16
  %27 = ptrtoint ptr %calib_pro_sticks128 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %calib_pro_sticks128, align 2
  %add = add i16 %28, %sub
  %arrayidx135 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 16, i32 1
  %29 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx135, align 2
  %add138 = add i16 %30, %sub35
  %arrayidx142 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 16, i32 2
  %31 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx142, align 2
  %add145 = add i16 %32, %sub38
  %arrayidx149 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 16, i32 3
  %33 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx149, align 2
  %add152 = add i16 %34, %sub41
  %extension = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 11
  %35 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %extension, align 4
  %conv154 = sext i16 %add to i32
  tail call void @input_event(ptr noundef %36, i32 noundef 3, i32 noundef 0, i32 noundef %conv154) #8
  %37 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %extension, align 4
  %conv156 = sext i16 %add138 to i32
  tail call void @input_event(ptr noundef %38, i32 noundef 3, i32 noundef 1, i32 noundef %conv156) #8
  %39 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %extension, align 4
  %conv158 = sext i16 %add145 to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 3, i32 noundef 3, i32 noundef %conv158) #8
  %41 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %extension, align 4
  %conv160 = sext i16 %add152 to i32
  tail call void @input_event(ptr noundef %42, i32 noundef 3, i32 noundef 4, i32 noundef %conv160) #8
  %43 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %extension, align 4
  %arrayidx163 = getelementptr i8, ptr %ext, i32 8
  %45 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx163, align 1
  %47 = xor i8 %46, -1
  %48 = lshr i8 %47, 7
  %.not = zext i8 %48 to i32
  tail call void @input_event(ptr noundef %44, i32 noundef 1, i32 noundef 547, i32 noundef %.not) #8
  %49 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %extension, align 4
  %51 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx163, align 1
  %53 = lshr i8 %52, 6
  %.lobit = and i8 %53, 1
  %54 = xor i8 %.lobit, 1
  %55 = zext i8 %54 to i32
  tail call void @input_event(ptr noundef %50, i32 noundef 1, i32 noundef 545, i32 noundef %55) #8
  %56 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %extension, align 4
  %58 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx163, align 1
  %60 = lshr i8 %59, 5
  %.lobit422 = and i8 %60, 1
  %61 = xor i8 %.lobit422, 1
  %62 = zext i8 %61 to i32
  tail call void @input_event(ptr noundef %57, i32 noundef 1, i32 noundef 310, i32 noundef %62) #8
  %63 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %extension, align 4
  %65 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx163, align 1
  %67 = lshr i8 %66, 4
  %.lobit423 = and i8 %67, 1
  %68 = xor i8 %.lobit423, 1
  %69 = zext i8 %68 to i32
  tail call void @input_event(ptr noundef %64, i32 noundef 1, i32 noundef 314, i32 noundef %69) #8
  %70 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %extension, align 4
  %72 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx163, align 1
  %74 = lshr i8 %73, 3
  %.lobit424 = and i8 %74, 1
  %75 = xor i8 %.lobit424, 1
  %76 = zext i8 %75 to i32
  tail call void @input_event(ptr noundef %71, i32 noundef 1, i32 noundef 316, i32 noundef %76) #8
  %77 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %extension, align 4
  %79 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx163, align 1
  %81 = lshr i8 %80, 2
  %.lobit425 = and i8 %81, 1
  %82 = xor i8 %.lobit425, 1
  %83 = zext i8 %82 to i32
  tail call void @input_event(ptr noundef %78, i32 noundef 1, i32 noundef 315, i32 noundef %83) #8
  %84 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %extension, align 4
  %86 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx163, align 1
  %88 = lshr i8 %87, 1
  %.lobit426 = and i8 %88, 1
  %89 = xor i8 %.lobit426, 1
  %90 = zext i8 %89 to i32
  tail call void @input_event(ptr noundef %85, i32 noundef 1, i32 noundef 311, i32 noundef %90) #8
  %91 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %extension, align 4
  %arrayidx217 = getelementptr i8, ptr %ext, i32 9
  %93 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx217, align 1
  %95 = xor i8 %94, -1
  %96 = lshr i8 %95, 7
  %.not428 = zext i8 %96 to i32
  tail call void @input_event(ptr noundef %92, i32 noundef 1, i32 noundef 312, i32 noundef %.not428) #8
  %97 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %extension, align 4
  %99 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx217, align 1
  %101 = lshr i8 %100, 6
  %.lobit429 = and i8 %101, 1
  %102 = xor i8 %.lobit429, 1
  %103 = zext i8 %102 to i32
  tail call void @input_event(ptr noundef %98, i32 noundef 1, i32 noundef 304, i32 noundef %103) #8
  %104 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %extension, align 4
  %106 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx217, align 1
  %108 = lshr i8 %107, 5
  %.lobit430 = and i8 %108, 1
  %109 = xor i8 %.lobit430, 1
  %110 = zext i8 %109 to i32
  tail call void @input_event(ptr noundef %105, i32 noundef 1, i32 noundef 308, i32 noundef %110) #8
  %111 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %extension, align 4
  %113 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx217, align 1
  %115 = lshr i8 %114, 4
  %.lobit431 = and i8 %115, 1
  %116 = xor i8 %.lobit431, 1
  %117 = zext i8 %116 to i32
  tail call void @input_event(ptr noundef %112, i32 noundef 1, i32 noundef 305, i32 noundef %117) #8
  %118 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %extension, align 4
  %120 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx217, align 1
  %122 = lshr i8 %121, 3
  %.lobit432 = and i8 %122, 1
  %123 = xor i8 %.lobit432, 1
  %124 = zext i8 %123 to i32
  tail call void @input_event(ptr noundef %119, i32 noundef 1, i32 noundef 307, i32 noundef %124) #8
  %125 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %extension, align 4
  %127 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx217, align 1
  %129 = lshr i8 %128, 2
  %.lobit433 = and i8 %129, 1
  %130 = xor i8 %.lobit433, 1
  %131 = zext i8 %130 to i32
  tail call void @input_event(ptr noundef %126, i32 noundef 1, i32 noundef 313, i32 noundef %131) #8
  %132 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %extension, align 4
  %134 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx217, align 1
  %136 = lshr i8 %135, 1
  %.lobit434 = and i8 %136, 1
  %137 = xor i8 %.lobit434, 1
  %138 = zext i8 %137 to i32
  tail call void @input_event(ptr noundef %133, i32 noundef 1, i32 noundef 546, i32 noundef %138) #8
  %139 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %extension, align 4
  %141 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx217, align 1
  %143 = and i8 %142, 1
  %144 = xor i8 %143, 1
  %145 = zext i8 %144 to i32
  tail call void @input_event(ptr noundef %140, i32 noundef 1, i32 noundef 544, i32 noundef %145) #8
  %146 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %extension, align 4
  %arrayidx281 = getelementptr i8, ptr %ext, i32 10
  %148 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx281, align 1
  %150 = lshr i8 %149, 1
  %.lobit435 = and i8 %150, 1
  %151 = xor i8 %.lobit435, 1
  %152 = zext i8 %151 to i32
  tail call void @input_event(ptr noundef %147, i32 noundef 1, i32 noundef 317, i32 noundef %152) #8
  %153 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %extension, align 4
  %155 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx281, align 1
  %157 = and i8 %156, 1
  %158 = xor i8 %157, 1
  %159 = zext i8 %158 to i32
  tail call void @input_event(ptr noundef %154, i32 noundef 1, i32 noundef 318, i32 noundef %159) #8
  %160 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %extension, align 4
  tail call void @input_event(ptr noundef %161, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_pro_play(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %eff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %u = getelementptr inbounds %struct.ff_effect, ptr %eff, i32 0, i32 5
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %eff, i32 0, i32 5, i32 0, i32 1
  %4 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %weak_magnitude, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool3.not = icmp ne i16 %5, 0
  %spec.select = zext i1 %tobool3.not to i8
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %entry.if.end_crit_edge
  %value.0 = phi i8 [ 1, %entry.if.end_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %cache_rumble = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 18
  %6 = ptrtoint ptr %cache_rumble to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %value.0, ptr %cache_rumble, align 1
  %rumble_worker = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %rumble_worker) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_pro_open(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %flags7 = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags7, align 4
  %or = or i32 %3, 512
  store i32 %or, ptr %flags7, align 4
  tail call void @wiiproto_req_drm(ptr noundef %1, i8 noundef zeroext 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_pro_close(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %flags7 = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags7, align 4
  %and = and i32 %3, -513
  store i32 %and, ptr %flags7, align 4
  tail call void @wiiproto_req_drm(ptr noundef %1, i8 noundef zeroext 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_pro_calib_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %out) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %calib_pro_sticks = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 16
  %2 = ptrtoint ptr %calib_pro_sticks to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %calib_pro_sticks, align 2
  %conv = sext i16 %3 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %out, ptr noundef nonnull @.str.25, i32 noundef %conv)
  %arrayidx3 = getelementptr i8, ptr %out, i32 %call2
  %arrayidx6 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 16, i32 1
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx6, align 2
  %conv7 = sext i16 %5 to i32
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx3, ptr noundef nonnull @.str.26, i32 noundef %conv7)
  %add9 = add i32 %call8, %call2
  %arrayidx10 = getelementptr i8, ptr %out, i32 %add9
  %arrayidx13 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 16, i32 2
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx13, align 2
  %conv14 = sext i16 %7 to i32
  %call15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx10, ptr noundef nonnull @.str.25, i32 noundef %conv14)
  %add16 = add i32 %call15, %add9
  %arrayidx17 = getelementptr i8, ptr %out, i32 %add16
  %arrayidx20 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 16, i32 3
  %8 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx20, align 2
  %conv21 = sext i16 %9 to i32
  %call22 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx17, ptr noundef nonnull @.str.27, i32 noundef %conv21)
  %add23 = add i32 %call22, %add16
  ret i32 %add23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_pro_calib_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %x1 = alloca i16, align 2
  %y1 = alloca i16, align 2
  %x2 = alloca i16, align 2
  %y2 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x1) #8
  %2 = ptrtoint ptr %x1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %x1, align 2, !annotation !143
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %y1) #8
  %3 = ptrtoint ptr %y1 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %y1, align 2, !annotation !143
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %x2) #8
  %4 = ptrtoint ptr %x2 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %x2, align 2, !annotation !143
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %y2) #8
  %5 = ptrtoint ptr %y2 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %y2, align 2, !annotation !143
  %call1 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(6) @.str.28, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock_irq(ptr noundef %state) #8
  %flags = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, -262145
  store i32 %and, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %state) #8
  br label %if.end23

if.else:                                          ; preds = %entry
  %call5 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.29, ptr noundef nonnull %x1, ptr noundef nonnull %y1, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 4
  br i1 %cmp.not, label %if.end, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %state7 = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13
  call void @_raw_spin_lock_irq(ptr noundef %state7) #8
  %flags10 = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 1
  %8 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags10, align 4
  %or = or i32 %9, 262144
  store i32 %or, ptr %flags10, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %state7) #8
  %10 = ptrtoint ptr %x1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %x1, align 2
  %calib_pro_sticks = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 16
  %12 = ptrtoint ptr %calib_pro_sticks to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %calib_pro_sticks, align 2
  %13 = ptrtoint ptr %y1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %y1, align 2
  %arrayidx16 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 16, i32 1
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayidx16, align 2
  %16 = ptrtoint ptr %x2 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %x2, align 2
  %arrayidx19 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 16, i32 2
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %arrayidx19, align 2
  %19 = ptrtoint ptr %y2 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %y2, align 2
  %arrayidx22 = getelementptr %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 16, i32 3
  %21 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %arrayidx22, align 2
  br label %if.end23

if.end23:                                         ; preds = %if.end, %if.then
  %call24 = call i32 @strnlen(ptr noundef %buf, i32 noundef 4096) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.end23 ], [ -22, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %y2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %y1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %x1) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_drums_probe(ptr nocapture noundef readnone %ops, ptr noundef %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @input_allocate_device() #8
  %extension = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 11
  %0 = ptrtoint ptr %extension to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %extension, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %wdata, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extension, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @wiimod_drums_open, ptr %open, align 8
  %5 = load ptr, ptr %extension, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @wiimod_drums_close, ptr %close, align 4
  %7 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wdata, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %8, i32 0, i32 18
  %9 = load ptr, ptr %extension, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 40, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %parent, align 8
  %11 = load ptr, ptr %wdata, align 4
  %bus = getelementptr inbounds %struct.hid_device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bus, align 8
  %14 = load ptr, ptr %extension, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %13, ptr %id, align 4
  %16 = load ptr, ptr %wdata, align 4
  %vendor = getelementptr inbounds %struct.hid_device, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vendor, align 4
  %conv = trunc i32 %18 to i16
  %19 = load ptr, ptr %extension, align 4
  %vendor12 = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %vendor12 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv, ptr %vendor12, align 2
  %21 = load ptr, ptr %wdata, align 4
  %product = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %product, align 8
  %conv14 = trunc i32 %23 to i16
  %24 = load ptr, ptr %extension, align 4
  %product17 = getelementptr inbounds %struct.input_dev, ptr %24, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %product17 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv14, ptr %product17, align 4
  %26 = load ptr, ptr %wdata, align 4
  %version = getelementptr inbounds %struct.hid_device, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %version, align 4
  %conv19 = trunc i32 %28 to i16
  %29 = load ptr, ptr %extension, align 4
  %version22 = getelementptr inbounds %struct.input_dev, ptr %29, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %version22 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv19, ptr %version22, align 2
  %31 = load ptr, ptr %extension, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.30, ptr %31, align 8
  %33 = load ptr, ptr %extension, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %evbit) #8
  %34 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %extension, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 315, ptr noundef %keybit) #8
  %36 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %extension, align 4
  %keybit28 = getelementptr inbounds %struct.input_dev, ptr %37, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 314, ptr noundef %keybit28) #8
  %38 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %extension, align 4
  %evbit31 = getelementptr inbounds %struct.input_dev, ptr %39, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %evbit31) #8
  %40 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %extension, align 4
  %absbit = getelementptr inbounds %struct.input_dev, ptr %41, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %absbit) #8
  %42 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %extension, align 4
  %absbit36 = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %absbit36) #8
  %44 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %extension, align 4
  %absbit39 = getelementptr inbounds %struct.input_dev, ptr %45, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 16, ptr noundef %absbit39) #8
  %46 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %extension, align 4
  %absbit42 = getelementptr inbounds %struct.input_dev, ptr %47, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 17, ptr noundef %absbit42) #8
  %48 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %extension, align 4
  %absbit45 = getelementptr inbounds %struct.input_dev, ptr %49, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 18, ptr noundef %absbit45) #8
  %50 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %extension, align 4
  %absbit48 = getelementptr inbounds %struct.input_dev, ptr %51, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 20, ptr noundef %absbit48) #8
  %52 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %extension, align 4
  %absbit51 = getelementptr inbounds %struct.input_dev, ptr %53, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 21, ptr noundef %absbit51) #8
  %54 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %extension, align 4
  %absbit54 = getelementptr inbounds %struct.input_dev, ptr %55, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 22, ptr noundef %absbit54) #8
  %56 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %extension, align 4
  %absbit57 = getelementptr inbounds %struct.input_dev, ptr %57, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 23, ptr noundef %absbit57) #8
  %58 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %59, i32 noundef 0, i32 noundef -32, i32 noundef 31, i32 noundef 1, i32 noundef 1) #8
  %60 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %61, i32 noundef 1, i32 noundef -32, i32 noundef 31, i32 noundef 1, i32 noundef 1) #8
  %62 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %63, i32 noundef 16, i32 noundef 0, i32 noundef 7, i32 noundef 0, i32 noundef 0) #8
  %64 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %65, i32 noundef 17, i32 noundef 0, i32 noundef 7, i32 noundef 0, i32 noundef 0) #8
  %66 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %67, i32 noundef 18, i32 noundef 0, i32 noundef 7, i32 noundef 0, i32 noundef 0) #8
  %68 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %69, i32 noundef 20, i32 noundef 0, i32 noundef 7, i32 noundef 0, i32 noundef 0) #8
  %70 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %71, i32 noundef 21, i32 noundef 0, i32 noundef 7, i32 noundef 0, i32 noundef 0) #8
  %72 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %73, i32 noundef 22, i32 noundef 0, i32 noundef 7, i32 noundef 0, i32 noundef 0) #8
  %74 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %75, i32 noundef 23, i32 noundef 0, i32 noundef 7, i32 noundef 0, i32 noundef 0) #8
  %76 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %extension, align 4
  %call69 = tail call i32 @input_register_device(ptr noundef %77) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end.cleanup_crit_edge, label %err_free

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_free:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %extension, align 4
  tail call void @input_free_device(ptr noundef %79) #8
  %80 = ptrtoint ptr %extension to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %extension, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call69, %err_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_drums_remove(ptr nocapture noundef readnone %ops, ptr nocapture noundef %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %extension = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 11
  %0 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extension, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_unregister_device(ptr noundef nonnull %1) #8
  %2 = ptrtoint ptr %extension to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %extension, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_drums_in_ext(ptr nocapture noundef %wdata, ptr nocapture noundef readonly %ext) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %ext, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = xor i8 %1, -1
  %3 = lshr i8 %2, 5
  %arrayidx2 = getelementptr i8, ptr %ext, i32 2
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  %6 = lshr i8 %5, 1
  %and = and i8 %6, 31
  %7 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ext, align 1
  %arrayidx22 = getelementptr i8, ptr %ext, i32 1
  %9 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx22, align 1
  %arrayidx26 = getelementptr i8, ptr %ext, i32 5
  %11 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx26, align 1
  %and35 = lshr i8 %12, 6
  %and35.lobit = and i8 %and35, 1
  %13 = xor i8 %and35.lobit, 1
  %and42 = lshr i8 %12, 5
  %and42.lobit = and i8 %and42, 1
  %14 = xor i8 %and42.lobit, 1
  %and49 = lshr i8 %12, 4
  %and49.lobit = and i8 %and49, 1
  %15 = xor i8 %and49.lobit, 1
  %and56 = lshr i8 %12, 3
  %and56.lobit = and i8 %and56, 1
  %16 = xor i8 %and56.lobit, 1
  %17 = lshr i8 %12, 2
  %.lobit = and i8 %17, 1
  %18 = xor i8 %.lobit, 1
  %arrayidx68 = getelementptr i8, ptr %ext, i32 4
  %19 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx68, align 1
  %flags = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %pressure_drums = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 17
  %23 = and i8 %5, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %and)
  %cmp.i = icmp eq i8 %and, 14
  %or.cond.i = and i1 %tobool.not.i, %cmp.i
  br i1 %or.cond.i, label %entry.if.end17.sink.split.i_crit_edge, label %if.else.i

entry.if.end17.sink.split.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.sink.split.i

if.else.i:                                        ; preds = %entry
  %24 = xor i8 %12, -1
  %25 = lshr i8 %24, 7
  %26 = ptrtoint ptr %pressure_drums to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pressure_drums, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool6.i = icmp ne i8 %27, 0
  %28 = zext i1 %tobool6.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %28)
  %cmp8.not.i = icmp eq i8 %25, %28
  br i1 %cmp8.not.i, label %if.else.i.wiimod_drums_report_pressure.exit_crit_edge, label %if.then10.i

if.else.i.wiimod_drums_report_pressure.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiimod_drums_report_pressure.exit

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool12.not.i = icmp slt i8 %12, 0
  %conv13.i = select i1 %tobool12.not.i, i8 0, i8 3
  br label %if.end17.sink.split.i

if.end17.sink.split.i:                            ; preds = %if.then10.i, %entry.if.end17.sink.split.i_crit_edge
  %conv13.sink25.i = phi i8 [ %conv13.i, %if.then10.i ], [ %3, %entry.if.end17.sink.split.i_crit_edge ]
  %29 = ptrtoint ptr %pressure_drums to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv13.sink25.i, ptr %pressure_drums, align 1
  %extension14.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 11
  %30 = ptrtoint ptr %extension14.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %extension14.i, align 4
  %conv16.i = zext i8 %conv13.sink25.i to i32
  tail call void @input_event(ptr noundef %31, i32 noundef 3, i32 noundef 21, i32 noundef %conv16.i) #8
  br label %wiimod_drums_report_pressure.exit

wiimod_drums_report_pressure.exit:                ; preds = %if.end17.sink.split.i, %if.else.i.wiimod_drums_report_pressure.exit_crit_edge
  %arrayidx94 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 17, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %and)
  %cmp.i187 = icmp eq i8 %and, 25
  %or.cond.i188 = and i1 %tobool.not.i, %cmp.i187
  br i1 %or.cond.i188, label %wiimod_drums_report_pressure.exit.if.end17.sink.split.i198_crit_edge, label %if.else.i191

wiimod_drums_report_pressure.exit.if.end17.sink.split.i198_crit_edge: ; preds = %wiimod_drums_report_pressure.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.sink.split.i198

if.else.i191:                                     ; preds = %wiimod_drums_report_pressure.exit
  %32 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx94, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool6.i189 = icmp ne i8 %33, 0
  %34 = zext i1 %tobool6.i189 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %34)
  %cmp8.not.i190 = icmp eq i8 %13, %34
  br i1 %cmp8.not.i190, label %if.else.i191.wiimod_drums_report_pressure.exit199_crit_edge, label %if.then10.i194

if.else.i191.wiimod_drums_report_pressure.exit199_crit_edge: ; preds = %if.else.i191
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiimod_drums_report_pressure.exit199

if.then10.i194:                                   ; preds = %if.else.i191
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not.i192 = icmp eq i8 %13, 0
  %conv13.i193 = select i1 %tobool12.not.i192, i8 0, i8 3
  br label %if.end17.sink.split.i198

if.end17.sink.split.i198:                         ; preds = %if.then10.i194, %wiimod_drums_report_pressure.exit.if.end17.sink.split.i198_crit_edge
  %conv13.sink25.i195 = phi i8 [ %conv13.i193, %if.then10.i194 ], [ %3, %wiimod_drums_report_pressure.exit.if.end17.sink.split.i198_crit_edge ]
  %35 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv13.sink25.i195, ptr %arrayidx94, align 1
  %extension14.i196 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 11
  %36 = ptrtoint ptr %extension14.i196 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %extension14.i196, align 4
  %conv16.i197 = zext i8 %conv13.sink25.i195 to i32
  tail call void @input_event(ptr noundef %37, i32 noundef 3, i32 noundef 16, i32 noundef %conv16.i197) #8
  br label %wiimod_drums_report_pressure.exit199

wiimod_drums_report_pressure.exit199:             ; preds = %if.end17.sink.split.i198, %if.else.i191.wiimod_drums_report_pressure.exit199_crit_edge
  %arrayidx97 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 17, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %and)
  %cmp.i201 = icmp eq i8 %and, 17
  %or.cond.i202 = and i1 %tobool.not.i, %cmp.i201
  br i1 %or.cond.i202, label %wiimod_drums_report_pressure.exit199.if.end17.sink.split.i212_crit_edge, label %if.else.i205

wiimod_drums_report_pressure.exit199.if.end17.sink.split.i212_crit_edge: ; preds = %wiimod_drums_report_pressure.exit199
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.sink.split.i212

if.else.i205:                                     ; preds = %wiimod_drums_report_pressure.exit199
  %38 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx97, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool6.i203 = icmp ne i8 %39, 0
  %40 = zext i1 %tobool6.i203 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %40)
  %cmp8.not.i204 = icmp eq i8 %14, %40
  br i1 %cmp8.not.i204, label %if.else.i205.wiimod_drums_report_pressure.exit213_crit_edge, label %if.then10.i208

if.else.i205.wiimod_drums_report_pressure.exit213_crit_edge: ; preds = %if.else.i205
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiimod_drums_report_pressure.exit213

if.then10.i208:                                   ; preds = %if.else.i205
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool12.not.i206 = icmp eq i8 %14, 0
  %conv13.i207 = select i1 %tobool12.not.i206, i8 0, i8 3
  br label %if.end17.sink.split.i212

if.end17.sink.split.i212:                         ; preds = %if.then10.i208, %wiimod_drums_report_pressure.exit199.if.end17.sink.split.i212_crit_edge
  %conv13.sink25.i209 = phi i8 [ %conv13.i207, %if.then10.i208 ], [ %3, %wiimod_drums_report_pressure.exit199.if.end17.sink.split.i212_crit_edge ]
  %41 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv13.sink25.i209, ptr %arrayidx97, align 1
  %extension14.i210 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 11
  %42 = ptrtoint ptr %extension14.i210 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %extension14.i210, align 4
  %conv16.i211 = zext i8 %conv13.sink25.i209 to i32
  tail call void @input_event(ptr noundef %43, i32 noundef 3, i32 noundef 20, i32 noundef %conv16.i211) #8
  br label %wiimod_drums_report_pressure.exit213

wiimod_drums_report_pressure.exit213:             ; preds = %if.end17.sink.split.i212, %if.else.i205.wiimod_drums_report_pressure.exit213_crit_edge
  %arrayidx100 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 17, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %and)
  %cmp.i215 = icmp eq i8 %and, 18
  %or.cond.i216 = and i1 %tobool.not.i, %cmp.i215
  br i1 %or.cond.i216, label %wiimod_drums_report_pressure.exit213.if.end17.sink.split.i226_crit_edge, label %if.else.i219

wiimod_drums_report_pressure.exit213.if.end17.sink.split.i226_crit_edge: ; preds = %wiimod_drums_report_pressure.exit213
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.sink.split.i226

if.else.i219:                                     ; preds = %wiimod_drums_report_pressure.exit213
  %44 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx100, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool6.i217 = icmp ne i8 %45, 0
  %46 = zext i1 %tobool6.i217 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %46)
  %cmp8.not.i218 = icmp eq i8 %15, %46
  br i1 %cmp8.not.i218, label %if.else.i219.wiimod_drums_report_pressure.exit227_crit_edge, label %if.then10.i222

if.else.i219.wiimod_drums_report_pressure.exit227_crit_edge: ; preds = %if.else.i219
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiimod_drums_report_pressure.exit227

if.then10.i222:                                   ; preds = %if.else.i219
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool12.not.i220 = icmp eq i8 %15, 0
  %conv13.i221 = select i1 %tobool12.not.i220, i8 0, i8 3
  br label %if.end17.sink.split.i226

if.end17.sink.split.i226:                         ; preds = %if.then10.i222, %wiimod_drums_report_pressure.exit213.if.end17.sink.split.i226_crit_edge
  %conv13.sink25.i223 = phi i8 [ %conv13.i221, %if.then10.i222 ], [ %3, %wiimod_drums_report_pressure.exit213.if.end17.sink.split.i226_crit_edge ]
  %47 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv13.sink25.i223, ptr %arrayidx100, align 1
  %extension14.i224 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 11
  %48 = ptrtoint ptr %extension14.i224 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %extension14.i224, align 4
  %conv16.i225 = zext i8 %conv13.sink25.i223 to i32
  tail call void @input_event(ptr noundef %49, i32 noundef 3, i32 noundef 18, i32 noundef %conv16.i225) #8
  br label %wiimod_drums_report_pressure.exit227

wiimod_drums_report_pressure.exit227:             ; preds = %if.end17.sink.split.i226, %if.else.i219.wiimod_drums_report_pressure.exit227_crit_edge
  %arrayidx103 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 17, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %and)
  %cmp.i229 = icmp eq i8 %and, 15
  %or.cond.i230 = and i1 %tobool.not.i, %cmp.i229
  br i1 %or.cond.i230, label %wiimod_drums_report_pressure.exit227.if.end17.sink.split.i240_crit_edge, label %if.else.i233

wiimod_drums_report_pressure.exit227.if.end17.sink.split.i240_crit_edge: ; preds = %wiimod_drums_report_pressure.exit227
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.sink.split.i240

if.else.i233:                                     ; preds = %wiimod_drums_report_pressure.exit227
  %50 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx103, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool6.i231 = icmp ne i8 %51, 0
  %52 = zext i1 %tobool6.i231 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %52)
  %cmp8.not.i232 = icmp eq i8 %16, %52
  br i1 %cmp8.not.i232, label %if.else.i233.wiimod_drums_report_pressure.exit241_crit_edge, label %if.then10.i236

if.else.i233.wiimod_drums_report_pressure.exit241_crit_edge: ; preds = %if.else.i233
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiimod_drums_report_pressure.exit241

if.then10.i236:                                   ; preds = %if.else.i233
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool12.not.i234 = icmp eq i8 %16, 0
  %conv13.i235 = select i1 %tobool12.not.i234, i8 0, i8 3
  br label %if.end17.sink.split.i240

if.end17.sink.split.i240:                         ; preds = %if.then10.i236, %wiimod_drums_report_pressure.exit227.if.end17.sink.split.i240_crit_edge
  %conv13.sink25.i237 = phi i8 [ %conv13.i235, %if.then10.i236 ], [ %3, %wiimod_drums_report_pressure.exit227.if.end17.sink.split.i240_crit_edge ]
  %53 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv13.sink25.i237, ptr %arrayidx103, align 1
  %extension14.i238 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 11
  %54 = ptrtoint ptr %extension14.i238 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %extension14.i238, align 4
  %conv16.i239 = zext i8 %conv13.sink25.i237 to i32
  tail call void @input_event(ptr noundef %55, i32 noundef 3, i32 noundef 17, i32 noundef %conv16.i239) #8
  br label %wiimod_drums_report_pressure.exit241

wiimod_drums_report_pressure.exit241:             ; preds = %if.end17.sink.split.i240, %if.else.i233.wiimod_drums_report_pressure.exit241_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool105.not = icmp slt i8 %5, 0
  %arrayidx110 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 17, i32 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %and)
  %cmp.i243270 = icmp eq i8 %and, 27
  %cmp.i243 = select i1 %tobool105.not, i1 %cmp.i243270, i1 false
  %or.cond.i244 = and i1 %tobool.not.i, %cmp.i243
  br i1 %or.cond.i244, label %wiimod_drums_report_pressure.exit241.if.end17.sink.split.i254_crit_edge, label %if.else.i247

wiimod_drums_report_pressure.exit241.if.end17.sink.split.i254_crit_edge: ; preds = %wiimod_drums_report_pressure.exit241
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.sink.split.i254

if.else.i247:                                     ; preds = %wiimod_drums_report_pressure.exit241
  %56 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx110, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool6.i245 = icmp ne i8 %57, 0
  %58 = zext i1 %tobool6.i245 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %58)
  %cmp8.not.i246 = icmp eq i8 %18, %58
  br i1 %cmp8.not.i246, label %if.else.i247.wiimod_drums_report_pressure.exit255_crit_edge, label %if.then10.i250

if.else.i247.wiimod_drums_report_pressure.exit255_crit_edge: ; preds = %if.else.i247
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiimod_drums_report_pressure.exit255

if.then10.i250:                                   ; preds = %if.else.i247
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool12.not.i248 = icmp eq i8 %18, 0
  %conv13.i249 = select i1 %tobool12.not.i248, i8 0, i8 3
  br label %if.end17.sink.split.i254

if.end17.sink.split.i254:                         ; preds = %if.then10.i250, %wiimod_drums_report_pressure.exit241.if.end17.sink.split.i254_crit_edge
  %conv13.sink25.i251 = phi i8 [ %conv13.i249, %if.then10.i250 ], [ %3, %wiimod_drums_report_pressure.exit241.if.end17.sink.split.i254_crit_edge ]
  %59 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv13.sink25.i251, ptr %arrayidx110, align 1
  %extension14.i252 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 11
  %60 = ptrtoint ptr %extension14.i252 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %extension14.i252, align 4
  %conv16.i253 = zext i8 %conv13.sink25.i251 to i32
  tail call void @input_event(ptr noundef %61, i32 noundef 3, i32 noundef 22, i32 noundef %conv16.i253) #8
  br label %wiimod_drums_report_pressure.exit255

wiimod_drums_report_pressure.exit255:             ; preds = %if.end17.sink.split.i254, %if.else.i247.wiimod_drums_report_pressure.exit255_crit_edge
  %arrayidx121 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 17, i32 6
  %not.tobool105.not = xor i1 %tobool105.not, true
  %cmp.i257 = select i1 %not.tobool105.not, i1 %cmp.i, i1 false
  %or.cond.i258 = and i1 %tobool.not.i, %cmp.i257
  br i1 %or.cond.i258, label %wiimod_drums_report_pressure.exit255.if.end17.sink.split.i266_crit_edge, label %if.else.i261

wiimod_drums_report_pressure.exit255.if.end17.sink.split.i266_crit_edge: ; preds = %wiimod_drums_report_pressure.exit255
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.sink.split.i266

if.else.i261:                                     ; preds = %wiimod_drums_report_pressure.exit255
  %62 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx121, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool6.i259.not = icmp eq i8 %63, 0
  br i1 %tobool6.i259.not, label %if.else.i261.wiimod_drums_report_pressure.exit267_crit_edge, label %if.else.i261.if.end17.sink.split.i266_crit_edge

if.else.i261.if.end17.sink.split.i266_crit_edge:  ; preds = %if.else.i261
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.sink.split.i266

if.else.i261.wiimod_drums_report_pressure.exit267_crit_edge: ; preds = %if.else.i261
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiimod_drums_report_pressure.exit267

if.end17.sink.split.i266:                         ; preds = %if.else.i261.if.end17.sink.split.i266_crit_edge, %wiimod_drums_report_pressure.exit255.if.end17.sink.split.i266_crit_edge
  %conv13.sink25.i263 = phi i8 [ %3, %wiimod_drums_report_pressure.exit255.if.end17.sink.split.i266_crit_edge ], [ 0, %if.else.i261.if.end17.sink.split.i266_crit_edge ]
  %64 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv13.sink25.i263, ptr %arrayidx121, align 1
  %extension14.i264 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 11
  %65 = ptrtoint ptr %extension14.i264 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %extension14.i264, align 4
  %conv16.i265 = zext i8 %conv13.sink25.i263 to i32
  tail call void @input_event(ptr noundef %66, i32 noundef 3, i32 noundef 23, i32 noundef %conv16.i265) #8
  br label %wiimod_drums_report_pressure.exit267

wiimod_drums_report_pressure.exit267:             ; preds = %if.end17.sink.split.i266, %if.else.i261.wiimod_drums_report_pressure.exit267_crit_edge
  %and82 = and i32 %22, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  %sy.0.v = select i1 %tobool83.not, i8 63, i8 62
  %sy.0 = and i8 %sy.0.v, %10
  %sx.0 = and i8 %sy.0.v, %8
  %extension = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 11
  %67 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %extension, align 4
  %conv122 = zext i8 %sx.0 to i32
  %sub123 = add nsw i32 %conv122, -32
  tail call void @input_event(ptr noundef %68, i32 noundef 3, i32 noundef 0, i32 noundef %sub123) #8
  %69 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %extension, align 4
  %conv125 = zext i8 %sy.0 to i32
  %sub126 = add nsw i32 %conv125, -32
  tail call void @input_event(ptr noundef %70, i32 noundef 3, i32 noundef 1, i32 noundef %sub126) #8
  %71 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %extension, align 4
  %73 = lshr i8 %20, 2
  %.lobit272 = and i8 %73, 1
  %74 = xor i8 %.lobit272, 1
  %75 = zext i8 %74 to i32
  tail call void @input_event(ptr noundef %72, i32 noundef 1, i32 noundef 315, i32 noundef %75) #8
  %76 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %extension, align 4
  %78 = lshr i8 %20, 4
  %.lobit273 = and i8 %78, 1
  %79 = xor i8 %.lobit273, 1
  %80 = zext i8 %79 to i32
  tail call void @input_event(ptr noundef %77, i32 noundef 1, i32 noundef 314, i32 noundef %80) #8
  %81 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %extension, align 4
  tail call void @input_event(ptr noundef %82, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_drums_open(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %flags7 = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags7, align 4
  %or = or i32 %3, 512
  store i32 %or, ptr %flags7, align 4
  tail call void @wiiproto_req_drm(ptr noundef %1, i8 noundef zeroext 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_drums_close(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %flags7 = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags7, align 4
  %and = and i32 %3, -513
  store i32 %and, ptr %flags7, align 4
  tail call void @wiiproto_req_drm(ptr noundef %1, i8 noundef zeroext 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_guitar_probe(ptr nocapture noundef readnone %ops, ptr noundef %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @input_allocate_device() #8
  %extension = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 11
  %0 = ptrtoint ptr %extension to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %extension, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %wdata, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extension, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @wiimod_guitar_open, ptr %open, align 8
  %5 = load ptr, ptr %extension, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @wiimod_guitar_close, ptr %close, align 4
  %7 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wdata, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %8, i32 0, i32 18
  %9 = load ptr, ptr %extension, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 40, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %parent, align 8
  %11 = load ptr, ptr %wdata, align 4
  %bus = getelementptr inbounds %struct.hid_device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bus, align 8
  %14 = load ptr, ptr %extension, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %13, ptr %id, align 4
  %16 = load ptr, ptr %wdata, align 4
  %vendor = getelementptr inbounds %struct.hid_device, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vendor, align 4
  %conv = trunc i32 %18 to i16
  %19 = load ptr, ptr %extension, align 4
  %vendor12 = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %vendor12 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv, ptr %vendor12, align 2
  %21 = load ptr, ptr %wdata, align 4
  %product = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %product, align 8
  %conv14 = trunc i32 %23 to i16
  %24 = load ptr, ptr %extension, align 4
  %product17 = getelementptr inbounds %struct.input_dev, ptr %24, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %product17 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv14, ptr %product17, align 4
  %26 = load ptr, ptr %wdata, align 4
  %version = getelementptr inbounds %struct.hid_device, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %version, align 4
  %conv19 = trunc i32 %28 to i16
  %29 = load ptr, ptr %extension, align 4
  %version22 = getelementptr inbounds %struct.input_dev, ptr %29, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %version22 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv19, ptr %version22, align 2
  %31 = load ptr, ptr %extension, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.31, ptr %31, align 8
  %33 = load ptr, ptr %extension, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %evbit) #8
  %34 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %extension, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 257, ptr noundef %keybit) #8
  %36 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %extension, align 4
  %keybit.1 = getelementptr inbounds %struct.input_dev, ptr %37, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 258, ptr noundef %keybit.1) #8
  %38 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %extension, align 4
  %keybit.2 = getelementptr inbounds %struct.input_dev, ptr %39, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 259, ptr noundef %keybit.2) #8
  %40 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %extension, align 4
  %keybit.3 = getelementptr inbounds %struct.input_dev, ptr %41, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 260, ptr noundef %keybit.3) #8
  %42 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %extension, align 4
  %keybit.4 = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 261, ptr noundef %keybit.4) #8
  %44 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %extension, align 4
  %keybit.5 = getelementptr inbounds %struct.input_dev, ptr %45, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 544, ptr noundef %keybit.5) #8
  %46 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %extension, align 4
  %keybit.6 = getelementptr inbounds %struct.input_dev, ptr %47, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 545, ptr noundef %keybit.6) #8
  %48 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %extension, align 4
  %keybit.7 = getelementptr inbounds %struct.input_dev, ptr %49, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 315, ptr noundef %keybit.7) #8
  %50 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %extension, align 4
  %keybit.8 = getelementptr inbounds %struct.input_dev, ptr %51, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 314, ptr noundef %keybit.8) #8
  %52 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %extension, align 4
  %evbit30 = getelementptr inbounds %struct.input_dev, ptr %53, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %evbit30) #8
  %54 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %extension, align 4
  %absbit = getelementptr inbounds %struct.input_dev, ptr %55, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %absbit) #8
  %56 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %extension, align 4
  %absbit35 = getelementptr inbounds %struct.input_dev, ptr %57, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %absbit35) #8
  %58 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %extension, align 4
  %absbit38 = getelementptr inbounds %struct.input_dev, ptr %59, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 16, ptr noundef %absbit38) #8
  %60 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %extension, align 4
  %absbit41 = getelementptr inbounds %struct.input_dev, ptr %61, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 18, ptr noundef %absbit41) #8
  %62 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %63, i32 noundef 0, i32 noundef -32, i32 noundef 31, i32 noundef 1, i32 noundef 1) #8
  %64 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %65, i32 noundef 1, i32 noundef -32, i32 noundef 31, i32 noundef 1, i32 noundef 1) #8
  %66 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %67, i32 noundef 16, i32 noundef 0, i32 noundef 31, i32 noundef 1, i32 noundef 1) #8
  %68 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %extension, align 4
  tail call void @input_set_abs_params(ptr noundef %69, i32 noundef 18, i32 noundef 0, i32 noundef 15, i32 noundef 1, i32 noundef 1) #8
  %70 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %extension, align 4
  %call48 = tail call i32 @input_register_device(ptr noundef %71) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end.cleanup_crit_edge, label %err_free

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_free:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %extension, align 4
  tail call void @input_free_device(ptr noundef %73) #8
  %74 = ptrtoint ptr %extension to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %extension, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call48, %err_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_guitar_remove(ptr nocapture noundef readnone %ops, ptr nocapture noundef %wdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %extension = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 11
  %0 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extension, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_unregister_device(ptr noundef nonnull %1) #8
  %2 = ptrtoint ptr %extension to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %extension, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_guitar_in_ext(ptr nocapture noundef readonly %wdata, ptr nocapture noundef readonly %ext) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ext, align 1
  %arrayidx2 = getelementptr i8, ptr %ext, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  %arrayidx6 = getelementptr i8, ptr %ext, i32 2
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx6, align 1
  %arrayidx10 = getelementptr i8, ptr %ext, i32 3
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx10, align 1
  %arrayidx14 = getelementptr i8, ptr %ext, i32 4
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx14, align 1
  %arrayidx32 = getelementptr i8, ptr %ext, i32 5
  %10 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx32, align 1
  %flags = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and74 = and i32 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  %sx.0.v = select i1 %tobool75.not, i8 63, i8 62
  %sx.0 = and i8 %sx.0.v, %1
  %sy.0 = and i8 %sx.0.v, %3
  %bu.0.in.in = select i1 %tobool75.not, i8 %11, i8 %1
  %bu.0.in = and i8 %bu.0.in.in, 1
  %14 = and i8 %7, 31
  %15 = and i8 %5, 31
  %extension = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 11
  %16 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %extension, align 4
  %conv89 = zext i8 %sx.0 to i32
  %sub = add nsw i32 %conv89, -32
  tail call void @input_event(ptr noundef %17, i32 noundef 3, i32 noundef 0, i32 noundef %sub) #8
  %18 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %extension, align 4
  %conv91 = zext i8 %sy.0 to i32
  %sub92 = add nsw i32 %conv91, -32
  tail call void @input_event(ptr noundef %19, i32 noundef 3, i32 noundef 1, i32 noundef %sub92) #8
  %20 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %extension, align 4
  %conv94 = zext i8 %15 to i32
  tail call void @input_event(ptr noundef %21, i32 noundef 3, i32 noundef 16, i32 noundef %conv94) #8
  %22 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %extension, align 4
  %conv96 = zext i8 %14 to i32
  %sub97 = add nsw i32 %conv96, -16
  tail call void @input_event(ptr noundef %23, i32 noundef 3, i32 noundef 18, i32 noundef %sub97) #8
  %24 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %extension, align 4
  %26 = lshr i8 %11, 4
  %.lobit171 = and i8 %26, 1
  %27 = xor i8 %.lobit171, 1
  %28 = zext i8 %27 to i32
  tail call void @input_event(ptr noundef %25, i32 noundef 1, i32 noundef 257, i32 noundef %28) #8
  %29 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %extension, align 4
  %31 = lshr i8 %11, 6
  %.lobit172 = and i8 %31, 1
  %32 = xor i8 %.lobit172, 1
  %33 = zext i8 %32 to i32
  tail call void @input_event(ptr noundef %30, i32 noundef 1, i32 noundef 258, i32 noundef %33) #8
  %34 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %extension, align 4
  %36 = lshr i8 %11, 3
  %.lobit173 = and i8 %36, 1
  %37 = xor i8 %.lobit173, 1
  %38 = zext i8 %37 to i32
  tail call void @input_event(ptr noundef %35, i32 noundef 1, i32 noundef 259, i32 noundef %38) #8
  %39 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %extension, align 4
  %41 = lshr i8 %11, 5
  %.lobit174 = and i8 %41, 1
  %42 = xor i8 %.lobit174, 1
  %43 = zext i8 %42 to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 1, i32 noundef 260, i32 noundef %43) #8
  %44 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %extension, align 4
  %46 = xor i8 %11, -1
  %47 = lshr i8 %46, 7
  %.not = zext i8 %47 to i32
  tail call void @input_event(ptr noundef %45, i32 noundef 1, i32 noundef 261, i32 noundef %.not) #8
  %48 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %extension, align 4
  %50 = xor i8 %bu.0.in, 1
  %51 = zext i8 %50 to i32
  tail call void @input_event(ptr noundef %49, i32 noundef 1, i32 noundef 544, i32 noundef %51) #8
  %52 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %extension, align 4
  %54 = lshr i8 %9, 6
  %.lobit176 = and i8 %54, 1
  %55 = xor i8 %.lobit176, 1
  %56 = zext i8 %55 to i32
  tail call void @input_event(ptr noundef %53, i32 noundef 1, i32 noundef 545, i32 noundef %56) #8
  %57 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %extension, align 4
  %59 = lshr i8 %9, 2
  %.lobit = and i8 %59, 1
  %60 = xor i8 %.lobit, 1
  %61 = zext i8 %60 to i32
  tail call void @input_event(ptr noundef %58, i32 noundef 1, i32 noundef 315, i32 noundef %61) #8
  %62 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %extension, align 4
  %64 = lshr i8 %9, 4
  %.lobit177 = and i8 %64, 1
  %65 = xor i8 %.lobit177, 1
  %66 = zext i8 %65 to i32
  tail call void @input_event(ptr noundef %63, i32 noundef 1, i32 noundef 314, i32 noundef %66) #8
  %67 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %extension, align 4
  tail call void @input_event(ptr noundef %68, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimod_guitar_open(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %flags7 = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags7, align 4
  %or = or i32 %3, 512
  store i32 %or, ptr %flags7, align 4
  tail call void @wiiproto_req_drm(ptr noundef %1, i8 noundef zeroext 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimod_guitar_close(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %flags7 = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags7, align 4
  %and = and i32 %3, -513
  store i32 %and, ptr %flags7, align 4
  tail call void @wiiproto_req_drm(ptr noundef %1, i8 noundef zeroext 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !48, !50, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !86, !87, !89, !91, !92, !94, !96, !98, !100, !102, !103, !104, !106, !108, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !{ptr @wiimod_mp, !1, !"wiimod_mp", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 2625, i32 25}
!2 = !{ptr @wiimod_table, !3, !"wiimod_table", i1 false, i1 false}
!3 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 2637, i32 26}
!4 = !{ptr @wiimod_ext_table, !5, !"wiimod_ext_table", i1 false, i1 false}
!5 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 2651, i32 26}
!6 = !{ptr @wiimod_dummy, !7, !"wiimod_dummy", i1 false, i1 false}
!7 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 2635, i32 32}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 2590, i32 20}
!10 = !{ptr @wiimod_keys, !11, !"wiimod_keys", i1 false, i1 false}
!11 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 101, i32 32}
!12 = distinct !{null, !13, !"wiimod_keys_map", i1 false, i1 false}
!13 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 48, i32 20}
!14 = !{ptr @wiimod_rumble, !15, !"wiimod_rumble", i1 false, i1 false}
!15 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 179, i32 32}
!16 = !{ptr @wiimod_rumble_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 158, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @wiimod_battery, !20, !"wiimod_battery", i1 false, i1 false}
!20 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 279, i32 32}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 245, i32 51}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 254, i32 3}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @wiimod_battery_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @wiimod_battery_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @wiimod_battery_props, !32, !"wiimod_battery_props", i1 false, i1 false}
!32 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 194, i32 35}
!33 = !{ptr @wiimod_leds, !34, !"wiimod_leds", i1 false, i1 false}
!34 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 391, i32 32}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 353, i32 25}
!37 = !{ptr @wiimod_accel, !38, !"wiimod_accel", i1 false, i1 false}
!38 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 532, i32 32}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 498, i32 23}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 510, i32 3}
!43 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @wiimod_accel_probe._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @wiimod_accel_probe._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @wiimod_ir, !47, !"wiimod_ir", i1 false, i1 false}
!47 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 794, i32 32}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 750, i32 20}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 772, i32 3}
!52 = !{ptr @wiimod_ir_probe._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @wiimod_ir_probe._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @wiimod_ir_change.data_enable, !55, !"data_enable", i1 false, i1 false}
!55 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 612, i32 20}
!56 = !{ptr @wiimod_ir_change.data_sens1, !57, !"data_sens1", i1 false, i1 false}
!57 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 613, i32 20}
!58 = !{ptr @wiimod_ir_change.data_sens2, !59, !"data_sens2", i1 false, i1 false}
!59 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 615, i32 20}
!60 = !{ptr @wiimod_ir_change.data_fin, !61, !"data_fin", i1 false, i1 false}
!61 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 616, i32 20}
!62 = !{ptr @wiimod_builtin_mp, !63, !"wiimod_builtin_mp", i1 false, i1 false}
!63 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 2435, i32 32}
!64 = !{ptr @wiimod_no_mp, !65, !"wiimod_no_mp", i1 false, i1 false}
!65 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 2471, i32 32}
!66 = !{ptr @wiimod_nunchuk, !67, !"wiimod_nunchuk", i1 false, i1 false}
!67 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 991, i32 32}
!68 = !{ptr @.str.14, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 945, i32 33}
!70 = distinct !{null, !71, !"wiimod_nunchuk_map", i1 false, i1 false}
!71 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 815, i32 20}
!72 = !{ptr @wiimod_classic, !73, !"wiimod_classic", i1 false, i1 false}
!73 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 1288, i32 32}
!74 = !{ptr @.str.15, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 1239, i32 33}
!76 = distinct !{null, !77, !"wiimod_classic_map", i1 false, i1 false}
!77 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 1026, i32 20}
!78 = !{ptr @wiimod_classic_in_ext.digital_to_analog, !79, !"digital_to_analog", i1 false, i1 false}
!79 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 1091, i32 18}
!80 = !{ptr @wiimod_bboard, !81, !"wiimod_bboard", i1 false, i1 false}
!81 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 1563, i32 32}
!82 = !{ptr @.str.16, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 1505, i32 3}
!84 = !{ptr @.str.17, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @wiimod_bboard_probe._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @wiimod_bboard_probe._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.18, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 1517, i32 33}
!89 = !{ptr @.str.19, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 1465, i32 8}
!91 = !{ptr @dev_attr_bboard_calib, !90, !"dev_attr_bboard_calib", i1 false, i1 false}
!92 = !{ptr @.str.20, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 1456, i32 31}
!94 = !{ptr @.str.21, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 1458, i32 31}
!96 = !{ptr @wiimod_pro, !97, !"wiimod_pro", i1 false, i1 false}
!97 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 1960, i32 32}
!98 = !{ptr @wiimod_pro_probe.__key, !99, !"__key", i1 false, i1 false}
!99 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 1868, i32 2}
!100 = !{ptr @.str.22, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 1894, i32 3}
!102 = !{ptr @wiimod_pro_probe._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @wiimod_pro_probe._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.23, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 1905, i32 33}
!106 = !{ptr @.str.24, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 1859, i32 8}
!108 = !{ptr @dev_attr_pro_calib, !107, !"dev_attr_pro_calib", i1 false, i1 false}
!109 = !{ptr @.str.25, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 1821, i32 24}
!111 = !{ptr @.str.26, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 1822, i32 24}
!113 = !{ptr @.str.27, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 1824, i32 24}
!115 = !{ptr @.str.28, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 1837, i32 20}
!117 = !{ptr @.str.29, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 1842, i32 19}
!119 = distinct !{null, !120, !"wiimod_pro_map", i1 false, i1 false}
!120 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 1603, i32 20}
!121 = !{ptr @wiimod_drums, !122, !"wiimod_drums", i1 false, i1 false}
!122 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 2182, i32 32}
!123 = !{ptr @.str.30, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 2125, i32 33}
!125 = distinct !{null, !126, !"default_pressure", i1 false, i1 false}
!126 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 1983, i32 20}
!127 = !{ptr @wiimod_guitar, !128, !"wiimod_guitar", i1 false, i1 false}
!128 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 2398, i32 32}
!129 = !{ptr @.str.31, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 2355, i32 33}
!131 = distinct !{null, !132, !"wiimod_guitar_map", i1 false, i1 false}
!132 = !{!"../drivers/hid/hid-wiimote-modules.c", i32 2211, i32 20}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = !{i8 0, i8 2}
!143 = !{!"auto-init"}
