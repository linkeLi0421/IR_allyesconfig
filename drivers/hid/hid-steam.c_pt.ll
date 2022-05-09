; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-steam.c_pt.bc'
source_filename = "../drivers/hid/hid-steam.c"
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.steam_device = type { %struct.list_head, %struct.spinlock, ptr, ptr, %struct.mutex, i8, ptr, i32, %struct.work_struct, i8, [11 x i8], %struct.power_supply_desc, ptr, i8, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.__va_list = type { ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
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
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_file223 = internal constant [37 x i8] c"hid_steam.file=drivers/hid/hid-steam\00", section ".modinfo", align 1
@__UNIQUE_ID_license224 = internal constant [22 x i8] c"hid_steam.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author225 = internal constant [67 x i8] c"hid_steam.author=Rodrigo Rivas Costa <rodrigorivascosta@gmail.com>\00", section ".modinfo", align 1
@__param_str_lizard_mode = internal constant [22 x i8] c"hid_steam.lizard_mode\00", align 1
@steam_lizard_mode_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @steam_param_set_lizard_mode, ptr @param_get_bool, ptr null }, [16 x i8] zeroinitializer }, align 32
@lizard_mode = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_lizard_mode = internal constant %struct.kernel_param { ptr @__param_str_lizard_mode, ptr null, ptr @steam_lizard_mode_ops, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @lizard_mode } }, section "__param", align 4
@__UNIQUE_ID_lizard_mode248 = internal constant [108 x i8] c"hid_steam.parm=lizard_mode:Enable mouse and keyboard emulation (lizard mode) when the gamepad is not in use\00", section ".modinfo", align 1
@__initcall__kmod_hid_steam__249_1147_steam_controller_driver_init6 = internal global ptr @steam_controller_driver_init, section ".initcall6.init", align 4
@steam_controller_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.8, ptr @steam_controllers, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @steam_probe, ptr @steam_remove, ptr null, ptr @steam_raw_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_steam_controller_driver_exit = internal global ptr @steam_controller_driver_exit, section ".exitcall.exit", align 4
@steam_devices_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @steam_devices_lock, i64 52), ptr getelementptr (i8, ptr @steam_devices_lock, i64 52) }, ptr @steam_devices_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@steam_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @steam_devices, ptr @steam_devices }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"steam_devices_lock.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"steam_devices_lock\00", [45 x i8] zeroinitializer }, align 32
@steam_send_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 196, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: error %d (%*ph)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"steam_send_report\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hid/hid-steam.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@steam_send_report._entry_ptr = internal global ptr @steam_send_report._entry, section ".printk_index", align 4
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hid_steam\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hid-steam\00", [22 x i8] zeroinitializer }, align 32
@steam_controllers = internal constant { [3 x %struct.hid_device_id], [48 x i8] } { [3 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 10462, i32 4354, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 10462, i32 4418, i32 1 }, %struct.hid_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@steam_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 714, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:parse of hid interface failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"steam_probe\00", [20 x i8] zeroinitializer }, align 32
@steam_probe._entry_ptr = internal global ptr @steam_probe._entry, section ".printk_index", align 4
@steam_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&steam->lock\00", [19 x i8] zeroinitializer }, align 32
@steam_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&steam->mutex\00", [18 x i8] zeroinitializer }, align 32
@steam_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&steam->work_connect)\00", [56 x i8] zeroinitializer }, align 32
@steam_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.10, ptr @.str.4, i32 767, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s:hid_hw_open\0A\00", [16 x i8] zeroinitializer }, align 32
@steam_probe._entry_ptr.18 = internal global ptr @steam_probe._entry.16, section ".printk_index", align 4
@steam_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.10, ptr @.str.4, i32 772, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Steam wireless receiver connected\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@steam_probe._entry_ptr.22 = internal global ptr @steam_probe._entry.19, section ".printk_index", align 4
@steam_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.10, ptr @.str.4, i32 783, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s:steam_register failed with error %d\0A\00", [56 x i8] zeroinitializer }, align 32
@steam_probe._entry_ptr.25 = internal global ptr @steam_probe._entry.23, section ".printk_index", align 4
@steam_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.10, ptr @.str.4, i32 800, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: failed with error %d\0A\00", [38 x i8] zeroinitializer }, align 32
@steam_probe._entry_ptr.28 = internal global ptr @steam_probe._entry.26, section ".printk_index", align 4
@steam_work_connect_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.29, ptr @.str.4, i32 579, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"steam_work_connect_cb\00", [42 x i8] zeroinitializer }, align 32
@steam_work_connect_cb._entry_ptr = internal global ptr @steam_work_connect_cb._entry, section ".printk_index", align 4
@steam_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 554, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Steam Controller '%s' disconnected\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"steam_unregister\00", [47 x i8] zeroinitializer }, align 32
@steam_unregister._entry_ptr = internal global ptr @steam_unregister._entry, section ".printk_index", align 4
@steam_battery_unregister.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@steam_input_unregister.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@steam_client_ll_driver = internal global { %struct.hid_ll_driver, [48 x i8] } { %struct.hid_ll_driver { ptr @steam_client_ll_start, ptr @steam_client_ll_stop, ptr @steam_client_ll_open, ptr @steam_client_ll_close, ptr null, ptr @steam_client_ll_parse, ptr null, ptr null, ptr @steam_client_ll_raw_request, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@steam_input_register.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hid_debug = external dso_local local_unnamed_addr global i32, align 4
@steam_input_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: %s: already connected\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"steam_input_register\00", [43 x i8] zeroinitializer }, align 32
@steam_input_register._entry_ptr = internal global ptr @steam_input_register._entry, section ".printk_index", align 4
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Wireless Steam Controller\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Steam Controller\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"XXXXXXXXXX\00", [21 x i8] zeroinitializer }, align 32
@steam_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 522, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Steam Controller '%s' connected\00", [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"steam_register\00", [17 x i8] zeroinitializer }, align 32
@steam_register._entry_ptr = internal global ptr @steam_register._entry, section ".printk_index", align 4
@__const.steam_get_serial.cmd = private unnamed_addr constant [3 x i8] c"\AE\15\01", align 1
@steam_battery_props = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 66, i32 12, i32 47], [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"steam-controller-%s-battery\00", [36 x i8] zeroinitializer }, align 32
@steam_battery_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 375, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s:power_supply_register failed with error %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"steam_battery_register\00", [41 x i8] zeroinitializer }, align 32
@steam_battery_register._entry_ptr = internal global ptr @steam_battery_register._entry, section ".printk_index", align 4
@steam_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 817, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Steam wireless receiver disconnected\00", [59 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"steam_remove\00", [19 x i8] zeroinitializer }, align 32
@steam_remove._entry_ptr = internal global ptr @steam_remove._entry, section ".printk_index", align 4
@steam_raw_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@steam_raw_event.__warned.48 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@steam_raw_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 1084, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: %s: battery data without connect event\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"steam_raw_event\00", [16 x i8] zeroinitializer }, align 32
@steam_raw_event._entry_ptr = internal global ptr @steam_raw_event._entry, section ".printk_index", align 4
@steam_do_connect_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.4, i32 836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: %s: connected=%d event already queued\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"steam_do_connect_event\00", [41 x i8] zeroinitializer }, align 32
@steam_do_connect_event._entry_ptr = internal global ptr @steam_do_connect_event._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@steam_do_battery_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 12, i64 47, i64 66]
@___asan_gen_.55 = private unnamed_addr constant [22 x i8] c"steam_lizard_mode_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1115, i32 38 }
@___asan_gen_.58 = private unnamed_addr constant [12 x i8] c"lizard_mode\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 50, i32 13 }
@___asan_gen_.61 = private unnamed_addr constant [24 x i8] c"steam_controller_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1139, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant [19 x i8] c"steam_devices_lock\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [14 x i8] c"steam_devices\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 53, i32 8 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 52, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 195, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1147, i32 1 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1140, i32 10 }
@___asan_gen_.100 = private unnamed_addr constant [18 x i8] c"steam_controllers\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1124, i32 35 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 713, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 738, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 739, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 741, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 765, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 772, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 781, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 799, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 577, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 553, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 489, i32 12 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 695, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 723, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant [23 x i8] c"steam_client_ll_driver\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 667, i32 29 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 393, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 407, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 408, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 517, i32 30 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 521, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant [20 x i8] c"steam_battery_props\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 304, i32 35 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 358, i32 16 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 373, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 817, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1082, i32 5 }
@___asan_gen_.247 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.254 = private constant [27 x i8] c"../drivers/hid/hid-steam.c\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 835, i32 3 }
@llvm.compiler.used = appending global [89 x ptr] [ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_file223, ptr @__UNIQUE_ID_license224, ptr @__UNIQUE_ID_lizard_mode248, ptr @__exitcall_steam_controller_driver_exit, ptr @__initcall__kmod_hid_steam__249_1147_steam_controller_driver_init6, ptr @__param_lizard_mode, ptr @steam_battery_register._entry, ptr @steam_battery_register._entry_ptr, ptr @steam_controller_driver_exit, ptr @steam_do_connect_event._entry, ptr @steam_do_connect_event._entry_ptr, ptr @steam_input_register._entry, ptr @steam_input_register._entry_ptr, ptr @steam_probe._entry, ptr @steam_probe._entry.16, ptr @steam_probe._entry.19, ptr @steam_probe._entry.23, ptr @steam_probe._entry.26, ptr @steam_probe._entry_ptr, ptr @steam_probe._entry_ptr.18, ptr @steam_probe._entry_ptr.22, ptr @steam_probe._entry_ptr.25, ptr @steam_probe._entry_ptr.28, ptr @steam_raw_event._entry, ptr @steam_raw_event._entry_ptr, ptr @steam_register._entry, ptr @steam_register._entry_ptr, ptr @steam_remove._entry, ptr @steam_remove._entry_ptr, ptr @steam_send_report._entry, ptr @steam_send_report._entry_ptr, ptr @steam_unregister._entry, ptr @steam_unregister._entry_ptr, ptr @steam_work_connect_cb._entry, ptr @steam_work_connect_cb._entry_ptr, ptr @steam_lizard_mode_ops, ptr @lizard_mode, ptr @steam_controller_driver, ptr @steam_devices_lock, ptr @steam_devices, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @steam_controllers, ptr @.str.9, ptr @.str.10, ptr @steam_probe.__key, ptr @.str.11, ptr @steam_probe.__key.12, ptr @.str.13, ptr @steam_probe.__key.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @steam_client_ll_driver, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @steam_battery_props, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steam_lizard_mode_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lizard_mode to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steam_controller_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steam_devices_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steam_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steam_send_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steam_controllers to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steam_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steam_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steam_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steam_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steam_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steam_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steam_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steam_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steam_work_connect_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steam_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steam_client_ll_driver to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steam_input_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steam_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steam_battery_props to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steam_battery_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steam_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steam_raw_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @steam_do_connect_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @steam_controller_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @steam_controller_driver, ptr noundef null, ptr noundef nonnull @.str.7) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @steam_controller_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @hid_unregister_driver(ptr noundef nonnull @steam_controller_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @steam_param_set_lizard_mode(ptr noundef %val, ptr noundef %kp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @param_set_bool(ptr noundef %val, ptr noundef %kp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @steam_devices_lock, i32 noundef 0) #11
  %steam.017 = load ptr, ptr @steam_devices, align 4
  %cmp.not18 = icmp eq ptr %steam.017, @steam_devices
  br i1 %cmp.not18, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %if.end4.for.body_crit_edge, %if.end.for.body_crit_edge
  %steam.019 = phi ptr [ %steam.0, %if.end4.for.body_crit_edge ], [ %steam.017, %if.end.for.body_crit_edge ]
  %mutex = getelementptr inbounds %struct.steam_device, ptr %steam.019, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %client_opened = getelementptr inbounds %struct.steam_device, ptr %steam.019, i32 0, i32 5
  %0 = ptrtoint ptr %client_opened to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %client_opened, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.then2, label %for.body.if.end4_crit_edge

for.body.if.end4_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %2 = load i8, ptr @lizard_mode, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool3 = icmp ne i8 %2, 0
  tail call fastcc void @steam_set_lizard_mode(ptr noundef %steam.019, i1 noundef zeroext %tobool3)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %for.body.if.end4_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  %3 = ptrtoint ptr %steam.019 to i32
  call void @__asan_load4_noabort(i32 %3)
  %steam.0 = load ptr, ptr %steam.019, align 4
  %cmp.not = icmp eq ptr %steam.0, @steam_devices
  br i1 %cmp.not, label %if.end4.for.end_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end4.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @steam_devices_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_bool(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_bool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @steam_set_lizard_mode(ptr nocapture noundef readonly %steam, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  %cmd.addr.i11 = alloca i8, align 1
  %cmd.addr.i9 = alloca i8, align 1
  %cmd.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i)
  %0 = ptrtoint ptr %cmd.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -123, ptr %cmd.addr.i, align 1
  %call.i = call fastcc i32 @steam_send_report(ptr noundef %steam, ptr noundef nonnull %cmd.addr.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i9)
  %1 = ptrtoint ptr %cmd.addr.i9 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -114, ptr %cmd.addr.i9, align 1
  %call.i10 = call fastcc i32 @steam_send_report(ptr noundef %steam, ptr noundef nonnull %cmd.addr.i9, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i9)
  call void (ptr, ...) @steam_write_registers(ptr noundef %steam, i32 noundef 24, i32 noundef 1, i32 noundef 0)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i11)
  %2 = ptrtoint ptr %cmd.addr.i11 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -127, ptr %cmd.addr.i11, align 1
  %call.i12 = call fastcc i32 @steam_send_report(ptr noundef %steam, ptr noundef nonnull %cmd.addr.i11, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i11)
  call void (ptr, ...) @steam_write_registers(ptr noundef %steam, i32 noundef 8, i32 noundef 7, i32 noundef 24, i32 noundef 0, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @steam_write_registers(ptr nocapture noundef readonly %steam, ...) unnamed_addr #2 align 64 {
entry:
  %cmd = alloca [64 x i8], align 1
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #11
  %0 = getelementptr inbounds i8, ptr %cmd, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 63)
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -121, ptr %cmd, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #11
  %3 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !151
  call void @llvm.va_start(ptr nonnull %args)
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %argp.cur1 = load ptr, ptr %args, align 4
  %argp.next2 = getelementptr inbounds i8, ptr %argp.cur1, i32 4
  store ptr %argp.next2, ptr %args, align 4
  %5 = ptrtoint ptr %argp.cur1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %argp.cur1, align 4
  %conv13 = and i32 %6, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv13)
  %cmp4 = icmp eq i32 %conv13, 0
  br i1 %cmp4, label %entry.for.end_crit_edge, label %if.end.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.lr.ph:                                     ; preds = %entry
  %arrayidx = getelementptr inbounds [64 x i8], ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %arrayidx.promoted = load i8, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.end.if.end_crit_edge, %if.end.lr.ph
  %8 = phi i8 [ %arrayidx.promoted, %if.end.lr.ph ], [ %add22, %if.end.if.end_crit_edge ]
  %9 = phi i32 [ %6, %if.end.lr.ph ], [ %16, %if.end.if.end_crit_edge ]
  %argp.next6 = phi ptr [ %argp.next2, %if.end.lr.ph ], [ %argp.next, %if.end.if.end_crit_edge ]
  %argp.cur5 = phi ptr [ %argp.cur1, %if.end.lr.ph ], [ %argp.next4, %if.end.if.end_crit_edge ]
  %conv = trunc i32 %9 to i8
  %argp.next4 = getelementptr inbounds i8, ptr %argp.cur5, i32 8
  %10 = ptrtoint ptr %argp.next6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %argp.next6, align 4
  %conv6 = zext i8 %8 to i32
  %add = add nuw nsw i32 %conv6, 2
  %arrayidx7 = getelementptr [64 x i8], ptr %cmd, i32 0, i32 %add
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %arrayidx7, align 1
  %conv9 = trunc i32 %11 to i8
  %add12 = add nuw nsw i32 %conv6, 3
  %arrayidx13 = getelementptr [64 x i8], ptr %cmd, i32 0, i32 %add12
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv9, ptr %arrayidx13, align 1
  %conv8 = lshr i32 %11, 8
  %conv15 = trunc i32 %conv8 to i8
  %add18 = add nuw nsw i32 %conv6, 4
  %arrayidx19 = getelementptr [64 x i8], ptr %cmd, i32 0, i32 %add18
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv15, ptr %arrayidx19, align 1
  %add22 = add i8 %8, 3
  %argp.next = getelementptr inbounds i8, ptr %argp.cur5, i32 12
  %15 = ptrtoint ptr %argp.next4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %argp.next4, align 4
  %conv1 = and i32 %16, 255
  %cmp = icmp eq i32 %conv1, 0
  br i1 %cmp, label %for.end.loopexit, label %if.end.if.end_crit_edge

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.end.loopexit:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %add22, ptr %arrayidx, align 1
  %18 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %argp.next, ptr %args, align 4
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  call void @llvm.va_end(ptr nonnull %args)
  %arrayidx24 = getelementptr inbounds [64 x i8], ptr %cmd, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %20 to i32
  %add26 = add nuw nsw i32 %conv25, 2
  %call = call fastcc i32 @steam_send_report(ptr noundef %steam, ptr noundef nonnull %cmd, i32 noundef %add26)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @steam_send_report(ptr nocapture noundef readonly %steam, ptr noundef %cmd, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 2
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  %report_id_hash = getelementptr %struct.hid_device, ptr %1, i32 0, i32 15, i32 2, i32 2
  %2 = ptrtoint ptr %report_id_hash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %report_id_hash, align 4
  %size.i = getelementptr inbounds %struct.hid_report, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i, align 4
  %sub.i = add i32 %5, 7
  %div3.i = lshr i32 %sub.i, 3
  %id.i = getelementptr inbounds %struct.hid_report, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp ne i32 %7, 0
  %conv.i = zext i1 %cmp.i to i32
  %add1.i = add nuw nsw i32 %div3.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add1.i)
  %cmp = icmp ult i32 %add1.i, 64
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @hid_alloc_report_buf(ptr noundef %3, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %call2, i32 1
  %8 = call ptr @memcpy(ptr %add.ptr, ptr %cmd, i32 %size)
  %add = add i32 %size, 1
  br label %do.body

do.body:                                          ; preds = %if.end9.do.body_crit_edge, %if.end4
  %retries.0 = phi i32 [ 50, %if.end4 ], [ %dec, %if.end9.do.body_crit_edge ]
  %9 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdev, align 4
  %call6 = tail call i32 @hid_hw_raw_request(ptr noundef %10, i8 noundef zeroext 0, ptr noundef nonnull %call2, i32 noundef %add, i8 noundef zeroext 2, i32 noundef 9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, -32
  br i1 %cmp7.not, label %if.end9, label %do.end

if.end9:                                          ; preds = %do.body
  tail call void @msleep(i32 noundef 20) #11
  %dec = add nsw i32 %retries.0, -1
  %tobool10.not = icmp eq i32 %dec, 0
  br i1 %tobool10.not, label %do.end.thread, label %if.end9.do.body_crit_edge

if.end9.do.body_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end.thread:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call2) #11
  br label %do.end15

do.end:                                           ; preds = %do.body
  tail call void @kfree(ptr noundef nonnull %call2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp11 = icmp slt i32 %call6, 0
  br i1 %cmp11, label %do.end.do.end15_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.do.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15

do.end15:                                         ; preds = %do.end.do.end15_crit_edge, %do.end.thread
  %11 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdev, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %12, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %call6, i32 noundef %size, ptr noundef %cmd) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call6, %do.end15 ], [ %call6, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hid_alloc_report_buf(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_raw_request(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @steam_probe(ptr noundef %hdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %cmd.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %group = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 9
  %0 = ptrtoint ptr %group to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %group, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 259, i16 %1)
  %cmp = icmp eq i16 %1, 259
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 4) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %report_list.i = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 2, i32 1
  %2 = ptrtoint ptr %report_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %report_list.i, align 4
  %cmp.i.i.not = icmp eq ptr %3, %report_list.i
  br i1 %cmp.i.i.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 45) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %dev9 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i130 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev9, i32 noundef 280, i32 noundef 3520) #11
  %tobool11.not = icmp eq ptr %call.i130, null
  br i1 %tobool11.not, label %if.end8.do.end79_crit_edge, label %if.end13

if.end8.do.end79_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end79

if.end13:                                         ; preds = %if.end8
  %hdev14 = getelementptr inbounds %struct.steam_device, ptr %call.i130, i32 0, i32 2
  %4 = ptrtoint ptr %hdev14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hdev, ptr %hdev14, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i130, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.steam_device, ptr %call.i130, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @steam_probe.__key, i16 noundef signext 3) #11
  %mutex = getelementptr inbounds %struct.steam_device, ptr %call.i130, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.13, ptr noundef nonnull @steam_probe.__key.12) #11
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 4
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data, align 4
  %quirks = getelementptr inbounds %struct.steam_device, ptr %call.i130, i32 0, i32 7
  %8 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %quirks, align 4
  %work_connect = getelementptr inbounds %struct.steam_device, ptr %call.i130, i32 0, i32 8
  tail call void @__init_work(ptr noundef %work_connect, i32 noundef 0) #11
  %9 = ptrtoint ptr %work_connect to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %work_connect, align 4
  %lockdep_map = getelementptr inbounds %struct.steam_device, ptr %call.i130, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.15, ptr noundef nonnull @steam_probe.__key.14, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry26 = getelementptr inbounds %struct.steam_device, ptr %call.i130, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %entry26 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry26, ptr %entry26, align 4
  %prev.i = getelementptr inbounds %struct.steam_device, ptr %call.i130, i32 0, i32 8, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry26, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.steam_device, ptr %call.i130, i32 0, i32 8, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @steam_work_connect_cb, ptr %func, align 4
  %13 = ptrtoint ptr %call.i130 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call.i130, ptr %call.i130, align 4
  %prev.i131 = getelementptr inbounds %struct.list_head, ptr %call.i130, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i131 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i130, ptr %prev.i131, align 4
  %call.i132 = tail call ptr @hid_allocate_device() #11
  %cmp.i.i133 = icmp ugt ptr %call.i132, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i133, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %client_hdev134 = getelementptr inbounds %struct.steam_device, ptr %call.i130, i32 0, i32 3
  %15 = ptrtoint ptr %client_hdev134 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i132, ptr %client_hdev134, align 4
  %16 = ptrtoint ptr %call.i132 to i32
  br label %client_hdev_fail

if.end36:                                         ; preds = %if.end13
  %ll_driver.i = getelementptr inbounds %struct.hid_device, ptr %call.i132, i32 0, i32 20
  %17 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @steam_client_ll_driver, ptr %ll_driver.i, align 4
  %parent.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent.i, align 8
  %parent3.i = getelementptr inbounds %struct.hid_device, ptr %call.i132, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %parent3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %parent3.i, align 8
  %bus.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 8
  %21 = ptrtoint ptr %bus.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %bus.i, align 8
  %bus4.i = getelementptr inbounds %struct.hid_device, ptr %call.i132, i32 0, i32 8
  %23 = ptrtoint ptr %bus4.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %bus4.i, align 8
  %vendor.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 10
  %24 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vendor.i, align 4
  %vendor5.i = getelementptr inbounds %struct.hid_device, ptr %call.i132, i32 0, i32 10
  %26 = ptrtoint ptr %vendor5.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %vendor5.i, align 4
  %product.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %27 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %product.i, align 8
  %product6.i = getelementptr inbounds %struct.hid_device, ptr %call.i132, i32 0, i32 11
  %29 = ptrtoint ptr %product6.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %product6.i, align 8
  %version.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 12
  %30 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %version.i, align 4
  %version7.i = getelementptr inbounds %struct.hid_device, ptr %call.i132, i32 0, i32 12
  %32 = ptrtoint ptr %version7.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %version7.i, align 4
  %type.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 13
  %33 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %type.i, align 8
  %type8.i = getelementptr inbounds %struct.hid_device, ptr %call.i132, i32 0, i32 13
  %35 = ptrtoint ptr %type8.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %type8.i, align 8
  %country.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 14
  %36 = ptrtoint ptr %country.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %country.i, align 4
  %country9.i = getelementptr inbounds %struct.hid_device, ptr %call.i132, i32 0, i32 14
  %38 = ptrtoint ptr %country9.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %country9.i, align 4
  %name.i = getelementptr inbounds %struct.hid_device, ptr %call.i132, i32 0, i32 39
  %name10.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 39
  %call12.i = tail call i32 @strlcpy(ptr noundef %name.i, ptr noundef %name10.i, i32 noundef 128) #11
  %phys.i = getelementptr inbounds %struct.hid_device, ptr %call.i132, i32 0, i32 40
  %phys14.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 40
  %call16.i = tail call i32 @strlcpy(ptr noundef %phys.i, ptr noundef %phys14.i, i32 noundef 64) #11
  %group.i = getelementptr inbounds %struct.hid_device, ptr %call.i132, i32 0, i32 9
  %39 = ptrtoint ptr %group.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 259, ptr %group.i, align 2
  %client_hdev = getelementptr inbounds %struct.steam_device, ptr %call.i130, i32 0, i32 3
  %40 = ptrtoint ptr %client_hdev to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i132, ptr %client_hdev, align 4
  %driver_data38 = getelementptr inbounds %struct.hid_device, ptr %call.i132, i32 0, i32 42
  %41 = ptrtoint ptr %driver_data38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i130, ptr %driver_data38, align 8
  %call39 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 41) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end36.hid_hw_start_fail_crit_edge

if.end36.hid_hw_start_fail_crit_edge:             ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %hid_hw_start_fail

if.end42:                                         ; preds = %if.end36
  %42 = ptrtoint ptr %client_hdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %client_hdev, align 4
  %call44 = tail call i32 @hid_add_device(ptr noundef %43) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end42.client_hdev_add_fail_crit_edge

if.end42.client_hdev_add_fail_crit_edge:          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %client_hdev_add_fail

if.end47:                                         ; preds = %if.end42
  %call48 = tail call i32 @hid_hw_open(ptr noundef %hdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end55, label %do.end53

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.10) #14
  br label %client_hdev_add_fail

if.end55:                                         ; preds = %if.end47
  %44 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %quirks, align 4
  %and = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool57.not = icmp eq i32 %and, 0
  br i1 %tobool57.not, label %if.else, label %do.end61

do.end61:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9, ptr noundef nonnull @.str.20) #14
  %connected = getelementptr inbounds %struct.steam_device, ptr %call.i130, i32 0, i32 9
  %46 = ptrtoint ptr %connected to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %connected, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #11
  %47 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -76, ptr %cmd.addr.i.i, align 1
  %call.i.i = call fastcc i32 @steam_send_report(ptr noundef nonnull %call.i130, ptr noundef nonnull %cmd.addr.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #11
  br label %cleanup

if.else:                                          ; preds = %if.end55
  %connected64 = getelementptr inbounds %struct.steam_device, ptr %call.i130, i32 0, i32 9
  %48 = ptrtoint ptr %connected64 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %connected64, align 4
  %call65 = tail call fastcc i32 @steam_register(ptr noundef nonnull %call.i130)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.else.cleanup_crit_edge, label %do.end70

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end70:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.10, i32 noundef %call65) #14
  br label %client_hdev_add_fail

client_hdev_add_fail:                             ; preds = %do.end70, %do.end53, %if.end42.client_hdev_add_fail_crit_edge
  %ret.0 = phi i32 [ %call44, %if.end42.client_hdev_add_fail_crit_edge ], [ %call48, %do.end53 ], [ %call65, %do.end70 ]
  tail call void @hid_hw_stop(ptr noundef %hdev) #11
  br label %hid_hw_start_fail

hid_hw_start_fail:                                ; preds = %client_hdev_add_fail, %if.end36.hid_hw_start_fail_crit_edge
  %ret.1 = phi i32 [ %call39, %if.end36.hid_hw_start_fail_crit_edge ], [ %ret.0, %client_hdev_add_fail ]
  %49 = ptrtoint ptr %client_hdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %client_hdev, align 4
  tail call void @hid_destroy_device(ptr noundef %50) #11
  br label %client_hdev_fail

client_hdev_fail:                                 ; preds = %hid_hw_start_fail, %if.then33
  %ret.2 = phi i32 [ %16, %if.then33 ], [ %ret.1, %hid_hw_start_fail ]
  %call76 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work_connect) #11
  br label %do.end79

do.end79:                                         ; preds = %client_hdev_fail, %if.end8.do.end79_crit_edge
  %ret.3 = phi i32 [ %ret.2, %client_hdev_fail ], [ -12, %if.end8.do.end79_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.10, i32 noundef %ret.3) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end79, %if.else.cleanup_crit_edge, %do.end61, %if.then6, %if.then2, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call3, %if.then2 ], [ %ret.3, %do.end79 ], [ %call7, %if.then6 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %do.end61 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @steam_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %group = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 9
  %2 = ptrtoint ptr %group to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %group, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 259, i16 %3)
  %cmp = icmp eq i16 %3, 259
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @hid_hw_stop(ptr noundef %hdev) #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %client_hdev = getelementptr inbounds %struct.steam_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %client_hdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client_hdev, align 4
  tail call void @hid_destroy_device(ptr noundef %5) #11
  %client_opened = getelementptr inbounds %struct.steam_device, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %client_opened to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %client_opened, align 4
  %work_connect = getelementptr inbounds %struct.steam_device, ptr %1, i32 0, i32 8
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work_connect) #11
  %quirks = getelementptr inbounds %struct.steam_device, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %quirks, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %do.end

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.46) #14
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge
  tail call void @hid_hw_close(ptr noundef %hdev) #11
  tail call void @hid_hw_stop(ptr noundef %hdev) #11
  tail call fastcc void @steam_unregister(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @steam_raw_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readnone %report, ptr noundef %data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %client_opened = getelementptr inbounds %struct.steam_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %client_opened to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %client_opened, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %client_hdev = getelementptr inbounds %struct.steam_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %client_hdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client_hdev, align 4
  %call3 = tail call i32 @hid_input_report(ptr noundef %5, i32 noundef 2, ptr noundef %data, i32 noundef %size, i32 noundef 0) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %size)
  %cmp.not = icmp eq i32 %size, 64
  br i1 %cmp.not, label %lor.lhs.false, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp5.not = icmp eq i8 %7, 1
  br i1 %cmp5.not, label %lor.lhs.false7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %arrayidx8 = getelementptr i8, ptr %data, i32 1
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp10.not = icmp eq i8 %9, 0
  br i1 %cmp10.not, label %if.end13, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false7
  %arrayidx14 = getelementptr i8, ptr %data, i32 2
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx14, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %if.end13.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 3, label %sw.bb38
    i8 4, label %sw.bb43
  ]

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end13
  %13 = ptrtoint ptr %client_opened to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %client_opened, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool17.not = icmp eq i8 %14, 0
  br i1 %tobool17.not, label %if.end19, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19:                                         ; preds = %sw.bb
  %15 = tail call i32 @llvm.read_register.i32(metadata !140) #11
  %and.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !152
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end19.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end19.rcu_read_lock.exit_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end19
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end19.rcu_read_lock.exit_crit_edge
  %input20 = getelementptr inbounds %struct.steam_device, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %input20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %input20, align 4
  %call22 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end31_crit_edge

rcu_read_lock.exit.do.end31_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call24 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true.do.end31_crit_edge, label %land.lhs.true26

land.lhs.true.do.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31

land.lhs.true26:                                  ; preds = %land.lhs.true
  %.b111 = load i1, ptr @steam_raw_event.__warned, align 1
  br i1 %.b111, label %land.lhs.true26.do.end31_crit_edge, label %if.then28

land.lhs.true26.do.end31_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31

if.then28:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @steam_raw_event.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1055, ptr noundef nonnull @.str.32) #11
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %land.lhs.true26.do.end31_crit_edge, %land.lhs.true.do.end31_crit_edge, %rcu_read_lock.exit.do.end31_crit_edge
  %tobool33.not = icmp eq ptr %20, null
  br i1 %tobool33.not, label %do.end31.if.end37_crit_edge, label %if.then36, !prof !153

do.end31.if.end37_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then36:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @steam_do_input_event(ptr noundef nonnull %20, ptr noundef %data)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %do.end31.if.end37_crit_edge
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup

sw.bb38:                                          ; preds = %if.end13
  %arrayidx39 = getelementptr i8, ptr %data, i32 4
  %21 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx39, align 1
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %22, label %sw.bb38.cleanup_crit_edge [
    i8 1, label %sw.bb41
    i8 2, label %sw.bb42
  ]

sw.bb38.cleanup_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb41:                                          ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @steam_do_connect_event(ptr noundef nonnull %1, i1 noundef zeroext false)
  br label %cleanup

sw.bb42:                                          ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @steam_do_connect_event(ptr noundef nonnull %1, i1 noundef zeroext true)
  br label %cleanup

sw.bb43:                                          ; preds = %if.end13
  %quirks = getelementptr inbounds %struct.steam_device, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %quirks, align 4
  %and = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %sw.bb43.cleanup_crit_edge, label %if.then45

sw.bb43.cleanup_crit_edge:                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then45:                                        ; preds = %sw.bb43
  %26 = tail call i32 @llvm.read_register.i32(metadata !140) #11
  %and.i.i.i.i.i112 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i112 to ptr
  %preempt_count.i.i.i.i113 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i113, align 4
  %add.i.i.i114 = add i32 %29, 1
  store volatile i32 %add.i.i.i114, ptr %preempt_count.i.i.i.i113, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !152
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i115 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i115, label %if.then45.rcu_read_lock.exit122_crit_edge, label %land.lhs.true.i118

if.then45.rcu_read_lock.exit122_crit_edge:        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit122

land.lhs.true.i118:                               ; preds = %if.then45
  %call1.i116 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i116)
  %tobool.not.i117 = icmp eq i32 %call1.i116, 0
  br i1 %tobool.not.i117, label %land.lhs.true.i118.rcu_read_lock.exit122_crit_edge, label %land.lhs.true2.i120

land.lhs.true.i118.rcu_read_lock.exit122_crit_edge: ; preds = %land.lhs.true.i118
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit122

land.lhs.true2.i120:                              ; preds = %land.lhs.true.i118
  %.b4.i119 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i119, label %land.lhs.true2.i120.rcu_read_lock.exit122_crit_edge, label %if.then.i121

land.lhs.true2.i120.rcu_read_lock.exit122_crit_edge: ; preds = %land.lhs.true2.i120
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit122

if.then.i121:                                     ; preds = %land.lhs.true2.i120
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #11
  br label %rcu_read_lock.exit122

rcu_read_lock.exit122:                            ; preds = %if.then.i121, %land.lhs.true2.i120.rcu_read_lock.exit122_crit_edge, %land.lhs.true.i118.rcu_read_lock.exit122_crit_edge, %if.then45.rcu_read_lock.exit122_crit_edge
  %battery50 = getelementptr inbounds %struct.steam_device, ptr %1, i32 0, i32 12
  %30 = ptrtoint ptr %battery50 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %battery50, align 4
  %call52 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %land.lhs.true54, label %rcu_read_lock.exit122.do.end62_crit_edge

rcu_read_lock.exit122.do.end62_crit_edge:         ; preds = %rcu_read_lock.exit122
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end62

land.lhs.true54:                                  ; preds = %rcu_read_lock.exit122
  %call55 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.lhs.true54.do.end62_crit_edge, label %land.lhs.true57

land.lhs.true54.do.end62_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end62

land.lhs.true57:                                  ; preds = %land.lhs.true54
  %.b109110 = load i1, ptr @steam_raw_event.__warned.48, align 1
  br i1 %.b109110, label %land.lhs.true57.do.end62_crit_edge, label %if.then59

land.lhs.true57.do.end62_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end62

if.then59:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @steam_raw_event.__warned.48, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1078, ptr noundef nonnull @.str.32) #11
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %land.lhs.true57.do.end62_crit_edge, %land.lhs.true54.do.end62_crit_edge, %rcu_read_lock.exit122.do.end62_crit_edge
  %tobool64.not = icmp eq ptr %31, null
  br i1 %tobool64.not, label %do.body72, label %if.then71, !prof !153

if.then71:                                        ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @steam_do_battery_event(ptr noundef nonnull %1, ptr noundef %data)
  br label %if.end83

do.body72:                                        ; preds = %do.end62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %32 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool73.not = icmp eq i32 %32, 0
  br i1 %tobool73.not, label %do.body72.do.end82_crit_edge, label %do.end77

do.body72.do.end82_crit_edge:                     ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end82

do.end77:                                         ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #13
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.50) #14
  br label %do.end82

do.end82:                                         ; preds = %do.end77, %do.body72.do.end82_crit_edge
  tail call fastcc void @steam_do_connect_event(ptr noundef nonnull %1, i1 noundef zeroext true)
  br label %if.end83

if.end83:                                         ; preds = %do.end82, %if.then71
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %sw.bb43.cleanup_crit_edge, %sw.bb42, %sw.bb41, %sw.bb38.cleanup_crit_edge, %if.end37, %sw.bb.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @steam_work_connect_cb(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -164
  %lock = getelementptr i8, ptr %work, i32 -156
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %connected6 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %connected6 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %connected6, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call9 = tail call fastcc i32 @steam_register(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then.if.end15_crit_edge, label %do.end14

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

do.end14:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %hdev = getelementptr i8, ptr %work, i32 -112
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.29, i32 noundef %call9) #14
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @steam_unregister(ptr noundef %add.ptr)
  br label %if.end15

if.end15:                                         ; preds = %if.else, %do.end14, %if.then.if.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_add_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @steam_register(ptr noundef %steam) unnamed_addr #2 align 64 {
entry:
  %battery_cfg.i = alloca %struct.power_supply_config, align 4
  %cmd.i = alloca [3 x i8], align 1
  %reply.i = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %serial_no = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 10
  %0 = ptrtoint ptr %serial_no to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %serial_no, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then:                                          ; preds = %entry
  %mutex = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %cmd.i) #11
  %2 = call ptr @memcpy(ptr %cmd.i, ptr @__const.steam_get_serial.cmd, i32 3)
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %reply.i) #11
  %3 = getelementptr inbounds [14 x i8], ptr %reply.i, i32 0, i32 1
  %4 = getelementptr inbounds [14 x i8], ptr %reply.i, i32 0, i32 2
  %5 = getelementptr inbounds [14 x i8], ptr %reply.i, i32 0, i32 3
  %6 = getelementptr inbounds [14 x i8], ptr %reply.i, i32 0, i32 13
  %7 = call ptr @memset(ptr %reply.i, i32 255, i32 14)
  %call.i = call fastcc i32 @steam_send_report(ptr noundef %steam, ptr noundef nonnull %cmd.i, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.if.then1_crit_edge, label %if.end.i

if.then.if.then1_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then1

if.end.i:                                         ; preds = %if.then
  %hdev.i.i = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 2
  %8 = ptrtoint ptr %hdev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev.i.i, align 4
  %report_id_hash.i.i = getelementptr %struct.hid_device, ptr %9, i32 0, i32 15, i32 2, i32 2
  %10 = ptrtoint ptr %report_id_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %report_id_hash.i.i, align 4
  %size.i.i.i = getelementptr inbounds %struct.hid_report, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i.i.i, align 4
  %sub.i.i.i = add i32 %13, 7
  %div3.i.i.i = lshr i32 %sub.i.i.i, 3
  %id.i.i.i = getelementptr inbounds %struct.hid_report, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.i.i = icmp ne i32 %15, 0
  %conv.i.i.i = zext i1 %cmp.i.i.i to i32
  %add1.i.i.i = add nuw nsw i32 %div3.i.i.i, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add1.i.i.i)
  %cmp.i.i = icmp ult i32 %add1.i.i.i, 64
  br i1 %cmp.i.i, label %if.end.i.if.then1_crit_edge, label %if.end.i.i

if.end.i.if.then1_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then1

if.end.i.i:                                       ; preds = %if.end.i
  %call2.i.i = call ptr @hid_alloc_report_buf(ptr noundef %11, i32 noundef 3264) #11
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.then1_crit_edge, label %if.end4.i.i

if.end.i.i.if.then1_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then1

if.end4.i.i:                                      ; preds = %if.end.i.i
  %16 = ptrtoint ptr %hdev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdev.i.i, align 4
  %18 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i.i.i, align 4
  %sub.i2.i.i = add i32 %19, 7
  %div3.i3.i.i = lshr i32 %sub.i2.i.i, 3
  %20 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i5.i.i = icmp ne i32 %21, 0
  %conv.i6.i.i = zext i1 %cmp.i5.i.i to i32
  %add1.i7.i.i = add nuw nsw i32 %div3.i3.i.i, 1
  %add.i.i = add nuw nsw i32 %add1.i7.i.i, %conv.i6.i.i
  %call7.i.i = call i32 @hid_hw_raw_request(ptr noundef %17, i8 noundef zeroext 0, ptr noundef nonnull %call2.i.i, i32 noundef %add.i.i, i8 noundef zeroext 2, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp8.i.i = icmp sgt i32 %call7.i.i, 0
  br i1 %cmp8.i.i, label %steam_recv_report.exit.thread32.i, label %steam_recv_report.exit.i

steam_recv_report.exit.thread32.i:                ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr i8, ptr %call2.i.i, i32 1
  %sub.i.i = add nsw i32 %call7.i.i, -1
  %22 = call i32 @llvm.umin.i32(i32 %sub.i.i, i32 14) #11
  %23 = call ptr @memcpy(ptr %reply.i, ptr %add.ptr.i.i, i32 %22)
  call void @kfree(ptr noundef nonnull %call2.i.i) #11
  br label %if.end5.i

steam_recv_report.exit.i:                         ; preds = %if.end4.i.i
  call void @kfree(ptr noundef nonnull %call2.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp3.i = icmp slt i32 %call7.i.i, 0
  br i1 %cmp3.i, label %steam_recv_report.exit.i.if.then1_crit_edge, label %steam_recv_report.exit.i.if.end5.i_crit_edge

steam_recv_report.exit.i.if.end5.i_crit_edge:     ; preds = %steam_recv_report.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

steam_recv_report.exit.i.if.then1_crit_edge:      ; preds = %steam_recv_report.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then1

if.end5.i:                                        ; preds = %steam_recv_report.exit.i.if.end5.i_crit_edge, %steam_recv_report.exit.thread32.i
  %24 = ptrtoint ptr %reply.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %reply.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -82, i8 %25)
  %cmp6.not.i = icmp eq i8 %25, -82
  br i1 %cmp6.not.i, label %lor.lhs.false.i, label %if.end5.i.if.then1_crit_edge

if.end5.i.if.then1_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then1

lor.lhs.false.i:                                  ; preds = %if.end5.i
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %27)
  %cmp10.not.i = icmp eq i8 %27, 21
  br i1 %cmp10.not.i, label %lor.lhs.false12.i, label %lor.lhs.false.i.if.then1_crit_edge

lor.lhs.false.i.if.then1_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then1

lor.lhs.false12.i:                                ; preds = %lor.lhs.false.i
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp15.not.i = icmp eq i8 %29, 1
  br i1 %cmp15.not.i, label %steam_get_serial.exit, label %lor.lhs.false12.i.if.then1_crit_edge

lor.lhs.false12.i.if.then1_crit_edge:             ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then1

steam_get_serial.exit:                            ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %6, align 1
  %call22.i = call i32 @strlcpy(ptr noundef %serial_no, ptr noundef %5, i32 noundef 11) #11
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %reply.i) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %cmd.i) #11
  br label %if.end

if.then1:                                         ; preds = %lor.lhs.false12.i.if.then1_crit_edge, %lor.lhs.false.i.if.then1_crit_edge, %if.end5.i.if.then1_crit_edge, %steam_recv_report.exit.i.if.then1_crit_edge, %if.end.i.i.if.then1_crit_edge, %if.end.i.if.then1_crit_edge, %if.then.if.then1_crit_edge
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %reply.i) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %cmd.i) #11
  %call3 = call i32 @strlcpy(ptr noundef %serial_no, ptr noundef nonnull @.str.40, i32 noundef 11) #11
  br label %if.end

if.end:                                           ; preds = %if.then1, %steam_get_serial.exit
  call void @mutex_unlock(ptr noundef %mutex) #11
  %hdev = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 2
  %31 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hdev, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %32, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef %serial_no) #14
  %quirks = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 7
  %33 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %quirks, align 4
  %and = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %battery_cfg.i) #11
  %35 = getelementptr inbounds %struct.power_supply_config, ptr %battery_cfg.i, i32 0, i32 2
  %36 = call ptr @memset(ptr %battery_cfg.i, i32 0, i32 24)
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %steam, ptr %35, align 4
  %battery_desc.i = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 11
  %type.i = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 11, i32 1
  %38 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %type.i, align 4
  %properties.i = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 11, i32 4
  %39 = ptrtoint ptr %properties.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @steam_battery_props, ptr %properties.i, align 4
  %num_properties.i = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 11, i32 5
  %40 = ptrtoint ptr %num_properties.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 4, ptr %num_properties.i, align 4
  %get_property.i = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 11, i32 6
  %41 = ptrtoint ptr %get_property.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @steam_battery_get_property, ptr %get_property.i, align 4
  %42 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hdev, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %43, i32 0, i32 18
  %call.i46 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev.i, i32 noundef 3264, ptr noundef nonnull @.str.43, ptr noundef %serial_no) #11
  %44 = ptrtoint ptr %battery_desc.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i46, ptr %battery_desc.i, align 4
  %tobool.not.i = icmp eq ptr %call.i46, null
  br i1 %tobool.not.i, label %if.then8.steam_battery_register.exit_crit_edge, label %do.body7.i

if.then8.steam_battery_register.exit_crit_edge:   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %steam_battery_register.exit

do.body7.i:                                       ; preds = %if.then8
  %lock.i = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 1
  %call9.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %voltage.i = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 14
  %45 = ptrtoint ptr %voltage.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 3000, ptr %voltage.i, align 2
  %battery_charge.i = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 13
  %46 = ptrtoint ptr %battery_charge.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 100, ptr %battery_charge.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call9.i) #11
  %47 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hdev, align 4
  %dev14.i = getelementptr inbounds %struct.hid_device, ptr %48, i32 0, i32 18
  %call16.i = call ptr @power_supply_register(ptr noundef %dev14.i, ptr noundef %battery_desc.i, ptr noundef nonnull %battery_cfg.i) #11
  %cmp.i.i47 = icmp ugt ptr %call16.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i47, label %if.then18.i, label %do.body26.i

if.then18.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %call16.i to i32
  %50 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hdev, align 4
  %dev24.i = getelementptr inbounds %struct.hid_device, ptr %51, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef %49) #14
  br label %steam_battery_register.exit

do.body26.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !154
  %battery53.i = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 12
  %52 = ptrtoint ptr %battery53.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %call16.i, ptr %battery53.i, align 4
  %53 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hdev, align 4
  %dev66.i = getelementptr inbounds %struct.hid_device, ptr %54, i32 0, i32 18
  %call67.i = call i32 @power_supply_powers(ptr noundef %call16.i, ptr noundef %dev66.i) #11
  br label %steam_battery_register.exit

steam_battery_register.exit:                      ; preds = %do.body26.i, %if.then18.i, %if.then8.steam_battery_register.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %battery_cfg.i) #11
  br label %if.end10

if.end10:                                         ; preds = %steam_battery_register.exit, %if.end.if.end10_crit_edge
  call void @mutex_lock_nested(ptr noundef nonnull @steam_devices_lock, i32 noundef 0) #11
  %55 = ptrtoint ptr %steam to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %steam, align 4
  %cmp.i48.not = icmp eq ptr %56, %steam
  br i1 %cmp.i48.not, label %if.then13, label %if.end10.if.end15_crit_edge

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  %57 = load ptr, ptr @steam_devices, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %steam, ptr noundef nonnull @steam_devices, ptr noundef %57) #11
  br i1 %call.i.i, label %if.end.i.i49, label %if.then13.if.end15_crit_edge

if.then13.if.end15_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end.i.i49:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %steam, ptr %prev1.i.i, align 4
  %59 = ptrtoint ptr %steam to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %57, ptr %steam, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %steam, i32 0, i32 1
  %60 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @steam_devices, ptr %prev3.i.i, align 4
  store volatile ptr %steam, ptr @steam_devices, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end.i.i49, %if.then13.if.end15_crit_edge, %if.end10.if.end15_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @steam_devices_lock) #11
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %entry.if.end16_crit_edge
  %mutex17 = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %mutex17, i32 noundef 0) #11
  %client_opened18 = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 5
  %61 = ptrtoint ptr %client_opened18 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %client_opened18, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool19.not = icmp eq i8 %62, 0
  br i1 %tobool19.not, label %if.then21, label %if.else.critedge

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %63 = load i8, ptr @lizard_mode, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool22 = icmp ne i8 %63, 0
  call fastcc void @steam_set_lizard_mode(ptr noundef %steam, i1 noundef zeroext %tobool22)
  call void @mutex_unlock(ptr noundef %mutex17) #11
  %call27 = call fastcc i32 @steam_input_register(ptr noundef %steam)
  br label %if.end28

if.else.critedge:                                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_unlock(ptr noundef %mutex17) #11
  br label %if.end28

if.end28:                                         ; preds = %if.else.critedge, %if.then21
  %ret.0 = phi i32 [ 0, %if.else.critedge ], [ %call27, %if.then21 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_destroy_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @steam_unregister(ptr noundef %steam) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !140) #11
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !152
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %battery1.i = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 12
  %4 = ptrtoint ptr %battery1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %battery1.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end8.i_crit_edge

rcu_read_lock.exit.i.do.end8.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b28.i = load i1, ptr @steam_battery_unregister.__warned, align 1
  br i1 %.b28.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @steam_battery_unregister.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 489, ptr noundef nonnull @.str.32) #11
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %rcu_read_lock.exit.i.do.end8.i_crit_edge
  %call.i29.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i29.i, label %do.end8.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i32.i

do.end8.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true.i32.i:                              ; preds = %do.end8.i
  %call1.i30.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30.i)
  %tobool.not.i31.i = icmp eq i32 %call1.i30.i, 0
  br i1 %tobool.not.i31.i, label %land.lhs.true.i32.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i34.i

land.lhs.true.i32.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i34.i:                             ; preds = %land.lhs.true.i32.i
  %.b4.i33.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33.i, label %land.lhs.true2.i34.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i35.i

land.lhs.true2.i34.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

if.then.i35.i:                                    ; preds = %land.lhs.true2.i34.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #11
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i35.i, %land.lhs.true2.i34.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i32.i.rcu_read_unlock.exit.i_crit_edge, %do.end8.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !155
  %6 = tail call i32 @llvm.read_register.i32(metadata !140) #11
  %and.i.i.i.i.i36.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i36.i to ptr
  %preempt_count.i.i.i.i37.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i37.i, align 4
  %sub.i.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i37.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %tobool10.not.i = icmp eq ptr %5, null
  br i1 %tobool10.not.i, label %rcu_read_unlock.exit.i.steam_battery_unregister.exit_crit_edge, label %do.body18.i

rcu_read_unlock.exit.i.steam_battery_unregister.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %steam_battery_unregister.exit

do.body18.i:                                      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %battery1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr null, ptr %battery1.i, align 4
  tail call void @synchronize_rcu() #11
  tail call void @power_supply_unregister(ptr noundef nonnull %5) #11
  br label %steam_battery_unregister.exit

steam_battery_unregister.exit:                    ; preds = %do.body18.i, %rcu_read_unlock.exit.i.steam_battery_unregister.exit_crit_edge
  tail call fastcc void @steam_input_unregister(ptr noundef %steam)
  %serial_no = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 10
  %11 = ptrtoint ptr %serial_no to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %serial_no, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %steam_battery_unregister.exit.if.end_crit_edge, label %do.end

steam_battery_unregister.exit.if.end_crit_edge:   ; preds = %steam_battery_unregister.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %steam_battery_unregister.exit
  %hdev = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 2
  %13 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hdev, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %14, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef %serial_no) #14
  tail call void @mutex_lock_nested(ptr noundef nonnull @steam_devices_lock, i32 noundef 0) #11
  %call.i.i10 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %steam) #11
  br i1 %call.i.i10, label %if.end.i.i, label %do.end.list_del_init.exit_crit_edge

do.end.list_del_init.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %steam, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %steam to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %steam, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end.list_del_init.exit_crit_edge
  %21 = ptrtoint ptr %steam to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %steam, ptr %steam, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %steam, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %steam, ptr %prev.i3.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @steam_devices_lock) #11
  %23 = ptrtoint ptr %serial_no to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %serial_no, align 1
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %steam_battery_unregister.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @steam_input_unregister(ptr noundef %steam) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !140) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !152
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %input1 = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 6
  %4 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %input1, align 4
  %call = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b28 = load i1, ptr @steam_input_unregister.__warned, align 1
  br i1 %.b28, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @steam_input_unregister.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 475, ptr noundef nonnull @.str.32) #11
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %call.i29 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i29, label %do.end8.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i32

do.end8.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i32:                                ; preds = %do.end8
  %call1.i30 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i34

land.lhs.true.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i34:                               ; preds = %land.lhs.true.i32
  %.b4.i33 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33, label %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, label %if.then.i35

land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i35:                                      ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i35, %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, %do.end8.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !155
  %6 = tail call i32 @llvm.read_register.i32(metadata !140) #11
  %and.i.i.i.i.i36 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i37, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i37, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %rcu_read_unlock.exit.cleanup_crit_edge, label %do.body18

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body18:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %input1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr null, ptr %input1, align 4
  tail call void @synchronize_rcu() #11
  tail call void @input_unregister_device(ptr noundef nonnull %5) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body18, %rcu_read_unlock.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !155
  %0 = tail call i32 @llvm.read_register.i32(metadata !140) #11
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hid_allocate_device() local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @steam_client_ll_start(ptr nocapture noundef readnone %hdev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @steam_client_ll_stop(ptr nocapture noundef %hdev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @steam_client_ll_open(ptr nocapture noundef readonly %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %mutex = getelementptr inbounds %struct.steam_device, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %client_opened = getelementptr inbounds %struct.steam_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %client_opened to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %client_opened, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  tail call fastcc void @steam_input_unregister(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @steam_client_ll_close(ptr nocapture noundef readonly %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %lock = getelementptr inbounds %struct.steam_device, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %connected5 = getelementptr inbounds %struct.steam_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %connected5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %connected5, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #11
  %mutex = getelementptr inbounds %struct.steam_device, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %client_opened = getelementptr inbounds %struct.steam_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %client_opened to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %client_opened, align 4
  br i1 %tobool.not, label %if.end13.critedge, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = load i8, ptr @lizard_mode, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool8 = icmp ne i8 %5, 0
  tail call fastcc void @steam_set_lizard_mode(ptr noundef %1, i1 noundef zeroext %tobool8)
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  %call12 = tail call fastcc i32 @steam_input_register(ptr noundef %1)
  br label %if.end13

if.end13.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  br label %if.end13

if.end13:                                         ; preds = %if.end13.critedge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @steam_client_ll_parse(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %hdev1 = getelementptr inbounds %struct.steam_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev_rsize = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %dev_rsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_rsize, align 4
  %call = tail call i32 @hid_parse_report(ptr noundef %hdev, ptr noundef %5, i32 noundef %7) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @steam_client_ll_raw_request(ptr nocapture noundef readonly %hdev, i8 noundef zeroext %reportnum, ptr noundef %buf, i32 noundef %count, i8 noundef zeroext %report_type, i32 noundef %reqtype) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %hdev1 = getelementptr inbounds %struct.steam_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev1, align 4
  %call = tail call i32 @hid_hw_raw_request(ptr noundef %3, i8 noundef zeroext %reportnum, ptr noundef %buf, i32 noundef %count, i8 noundef zeroext %report_type, i32 noundef %reqtype) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @steam_input_register(ptr noundef %steam) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 2
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !140) #11
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !152
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %input2 = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 6
  %6 = ptrtoint ptr %input2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %input2, align 4
  %call = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b149 = load i1, ptr @steam_input_register.__warned, align 1
  br i1 %.b149, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @steam_input_register.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 390, ptr noundef nonnull @.str.32) #11
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %call.i150 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i150, label %do.end9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i153

do.end9.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i153:                               ; preds = %do.end9
  %call1.i151 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i151)
  %tobool.not.i152 = icmp eq i32 %call1.i151, 0
  br i1 %tobool.not.i152, label %land.lhs.true.i153.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i155

land.lhs.true.i153.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i153
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i155:                              ; preds = %land.lhs.true.i153
  %.b4.i154 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i154, label %land.lhs.true2.i155.rcu_read_unlock.exit_crit_edge, label %if.then.i156

land.lhs.true2.i155.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i155
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i156:                                     ; preds = %land.lhs.true2.i155
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i156, %land.lhs.true2.i155.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i153.rcu_read_unlock.exit_crit_edge, %do.end9.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !155
  %8 = tail call i32 @llvm.read_register.i32(metadata !140) #11
  %and.i.i.i.i.i157 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i157 to ptr
  %preempt_count.i.i.i.i158 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i158 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i158, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i158, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %if.end24, label %do.body13

do.body13:                                        ; preds = %rcu_read_unlock.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %12 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool14.not = icmp eq i32 %12, 0
  br i1 %tobool14.not, label %do.body13.cleanup_crit_edge, label %do.end18

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end18:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.37) #14
  br label %cleanup

if.end24:                                         ; preds = %rcu_read_unlock.exit
  %call25 = tail call ptr @input_allocate_device() #11
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call25, i32 0, i32 40, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %steam, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  %parent = getelementptr inbounds %struct.input_dev, ptr %call25, i32 0, i32 40, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %parent, align 8
  %open = getelementptr inbounds %struct.input_dev, ptr %call25, i32 0, i32 31
  %15 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @steam_input_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call25, i32 0, i32 32
  %16 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @steam_input_close, ptr %close, align 4
  %quirks = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 7
  %17 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %quirks, align 4
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool30.not, ptr @.str.39, ptr @.str.38
  %19 = ptrtoint ptr %call25 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %cond, ptr %call25, align 8
  %phys = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 40
  %phys31 = getelementptr inbounds %struct.input_dev, ptr %call25, i32 0, i32 1
  %20 = ptrtoint ptr %phys31 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %phys, ptr %phys31, align 4
  %serial_no = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 10
  %uniq = getelementptr inbounds %struct.input_dev, ptr %call25, i32 0, i32 2
  %21 = ptrtoint ptr %uniq to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %serial_no, ptr %uniq, align 8
  %bus = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %bus, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call25, i32 0, i32 3
  %24 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 10
  %25 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vendor, align 4
  %conv = trunc i32 %26 to i16
  %vendor34 = getelementptr inbounds %struct.input_dev, ptr %call25, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %vendor34 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv, ptr %vendor34, align 2
  %product = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %product, align 8
  %conv35 = trunc i32 %29 to i16
  %product37 = getelementptr inbounds %struct.input_dev, ptr %call25, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %product37 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv35, ptr %product37, align 4
  %version = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 12
  %31 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %version, align 4
  %conv38 = trunc i32 %32 to i16
  %version40 = getelementptr inbounds %struct.input_dev, ptr %call25, i32 0, i32 3, i32 3
  %33 = ptrtoint ptr %version40 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv38, ptr %version40, align 2
  tail call void @input_set_capability(ptr noundef nonnull %call25, i32 noundef 1, i32 noundef 313) #11
  tail call void @input_set_capability(ptr noundef nonnull %call25, i32 noundef 1, i32 noundef 312) #11
  tail call void @input_set_capability(ptr noundef nonnull %call25, i32 noundef 1, i32 noundef 311) #11
  tail call void @input_set_capability(ptr noundef nonnull %call25, i32 noundef 1, i32 noundef 310) #11
  tail call void @input_set_capability(ptr noundef nonnull %call25, i32 noundef 1, i32 noundef 308) #11
  tail call void @input_set_capability(ptr noundef nonnull %call25, i32 noundef 1, i32 noundef 305) #11
  tail call void @input_set_capability(ptr noundef nonnull %call25, i32 noundef 1, i32 noundef 307) #11
  tail call void @input_set_capability(ptr noundef nonnull %call25, i32 noundef 1, i32 noundef 304) #11
  tail call void @input_set_capability(ptr noundef nonnull %call25, i32 noundef 1, i32 noundef 544) #11
  tail call void @input_set_capability(ptr noundef nonnull %call25, i32 noundef 1, i32 noundef 547) #11
  tail call void @input_set_capability(ptr noundef nonnull %call25, i32 noundef 1, i32 noundef 546) #11
  tail call void @input_set_capability(ptr noundef nonnull %call25, i32 noundef 1, i32 noundef 545) #11
  tail call void @input_set_capability(ptr noundef nonnull %call25, i32 noundef 1, i32 noundef 314) #11
  tail call void @input_set_capability(ptr noundef nonnull %call25, i32 noundef 1, i32 noundef 316) #11
  tail call void @input_set_capability(ptr noundef nonnull %call25, i32 noundef 1, i32 noundef 315) #11
  tail call void @input_set_capability(ptr noundef nonnull %call25, i32 noundef 1, i32 noundef 336) #11
  tail call void @input_set_capability(ptr noundef nonnull %call25, i32 noundef 1, i32 noundef 337) #11
  tail call void @input_set_capability(ptr noundef nonnull %call25, i32 noundef 1, i32 noundef 318) #11
  tail call void @input_set_capability(ptr noundef nonnull %call25, i32 noundef 1, i32 noundef 317) #11
  tail call void @input_set_capability(ptr noundef nonnull %call25, i32 noundef 1, i32 noundef 289) #11
  tail call void @input_set_capability(ptr noundef nonnull %call25, i32 noundef 1, i32 noundef 290) #11
  tail call void @input_set_abs_params(ptr noundef nonnull %call25, i32 noundef 21, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef nonnull %call25, i32 noundef 20, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef nonnull %call25, i32 noundef 0, i32 noundef -32767, i32 noundef 32767, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef nonnull %call25, i32 noundef 1, i32 noundef -32767, i32 noundef 32767, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef nonnull %call25, i32 noundef 3, i32 noundef -32767, i32 noundef 32767, i32 noundef 256, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef nonnull %call25, i32 noundef 4, i32 noundef -32767, i32 noundef 32767, i32 noundef 256, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef nonnull %call25, i32 noundef 16, i32 noundef -32767, i32 noundef 32767, i32 noundef 256, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef nonnull %call25, i32 noundef 17, i32 noundef -32767, i32 noundef 32767, i32 noundef 256, i32 noundef 0) #11
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call25) #11
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %call25, i32 0, i32 26
  %34 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i159 = icmp eq ptr %35, null
  br i1 %tobool.not.i159, label %if.end28.input_abs_set_res.exit_crit_edge, label %if.then.i160

if.end28.input_abs_set_res.exit_crit_edge:        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %input_abs_set_res.exit

if.then.i160:                                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %resolution.i = getelementptr %struct.input_absinfo, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %resolution.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 51, ptr %resolution.i, align 4
  br label %input_abs_set_res.exit

input_abs_set_res.exit:                           ; preds = %if.then.i160, %if.end28.input_abs_set_res.exit_crit_edge
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call25) #11
  %37 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i162 = icmp eq ptr %38, null
  br i1 %tobool.not.i162, label %input_abs_set_res.exit.input_abs_set_res.exit165_crit_edge, label %if.then.i164

input_abs_set_res.exit.input_abs_set_res.exit165_crit_edge: ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %input_abs_set_res.exit165

if.then.i164:                                     ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #13
  %resolution.i163 = getelementptr %struct.input_absinfo, ptr %38, i32 1, i32 5
  %39 = ptrtoint ptr %resolution.i163 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 51, ptr %resolution.i163, align 4
  br label %input_abs_set_res.exit165

input_abs_set_res.exit165:                        ; preds = %if.then.i164, %input_abs_set_res.exit.input_abs_set_res.exit165_crit_edge
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call25) #11
  %40 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i167 = icmp eq ptr %41, null
  br i1 %tobool.not.i167, label %input_abs_set_res.exit165.input_abs_set_res.exit170_crit_edge, label %if.then.i169

input_abs_set_res.exit165.input_abs_set_res.exit170_crit_edge: ; preds = %input_abs_set_res.exit165
  call void @__sanitizer_cov_trace_pc() #13
  br label %input_abs_set_res.exit170

if.then.i169:                                     ; preds = %input_abs_set_res.exit165
  call void @__sanitizer_cov_trace_pc() #13
  %resolution.i168 = getelementptr %struct.input_absinfo, ptr %41, i32 3, i32 5
  %42 = ptrtoint ptr %resolution.i168 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1638, ptr %resolution.i168, align 4
  br label %input_abs_set_res.exit170

input_abs_set_res.exit170:                        ; preds = %if.then.i169, %input_abs_set_res.exit165.input_abs_set_res.exit170_crit_edge
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call25) #11
  %43 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i172 = icmp eq ptr %44, null
  br i1 %tobool.not.i172, label %input_abs_set_res.exit170.input_abs_set_res.exit175_crit_edge, label %if.then.i174

input_abs_set_res.exit170.input_abs_set_res.exit175_crit_edge: ; preds = %input_abs_set_res.exit170
  call void @__sanitizer_cov_trace_pc() #13
  br label %input_abs_set_res.exit175

if.then.i174:                                     ; preds = %input_abs_set_res.exit170
  call void @__sanitizer_cov_trace_pc() #13
  %resolution.i173 = getelementptr %struct.input_absinfo, ptr %44, i32 4, i32 5
  %45 = ptrtoint ptr %resolution.i173 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1638, ptr %resolution.i173, align 4
  br label %input_abs_set_res.exit175

input_abs_set_res.exit175:                        ; preds = %if.then.i174, %input_abs_set_res.exit170.input_abs_set_res.exit175_crit_edge
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call25) #11
  %46 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i177 = icmp eq ptr %47, null
  br i1 %tobool.not.i177, label %input_abs_set_res.exit175.input_abs_set_res.exit180_crit_edge, label %if.then.i179

input_abs_set_res.exit175.input_abs_set_res.exit180_crit_edge: ; preds = %input_abs_set_res.exit175
  call void @__sanitizer_cov_trace_pc() #13
  br label %input_abs_set_res.exit180

if.then.i179:                                     ; preds = %input_abs_set_res.exit175
  call void @__sanitizer_cov_trace_pc() #13
  %resolution.i178 = getelementptr %struct.input_absinfo, ptr %47, i32 16, i32 5
  %48 = ptrtoint ptr %resolution.i178 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1638, ptr %resolution.i178, align 4
  br label %input_abs_set_res.exit180

input_abs_set_res.exit180:                        ; preds = %if.then.i179, %input_abs_set_res.exit175.input_abs_set_res.exit180_crit_edge
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call25) #11
  %49 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i182 = icmp eq ptr %50, null
  br i1 %tobool.not.i182, label %input_abs_set_res.exit180.input_abs_set_res.exit185_crit_edge, label %if.then.i184

input_abs_set_res.exit180.input_abs_set_res.exit185_crit_edge: ; preds = %input_abs_set_res.exit180
  call void @__sanitizer_cov_trace_pc() #13
  br label %input_abs_set_res.exit185

if.then.i184:                                     ; preds = %input_abs_set_res.exit180
  call void @__sanitizer_cov_trace_pc() #13
  %resolution.i183 = getelementptr %struct.input_absinfo, ptr %50, i32 17, i32 5
  %51 = ptrtoint ptr %resolution.i183 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1638, ptr %resolution.i183, align 4
  br label %input_abs_set_res.exit185

input_abs_set_res.exit185:                        ; preds = %if.then.i184, %input_abs_set_res.exit180.input_abs_set_res.exit185_crit_edge
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call25) #11
  %52 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i187 = icmp eq ptr %53, null
  br i1 %tobool.not.i187, label %input_abs_set_res.exit185.input_abs_set_res.exit190_crit_edge, label %if.then.i189

input_abs_set_res.exit185.input_abs_set_res.exit190_crit_edge: ; preds = %input_abs_set_res.exit185
  call void @__sanitizer_cov_trace_pc() #13
  br label %input_abs_set_res.exit190

if.then.i189:                                     ; preds = %input_abs_set_res.exit185
  call void @__sanitizer_cov_trace_pc() #13
  %resolution.i188 = getelementptr %struct.input_absinfo, ptr %53, i32 21, i32 5
  %54 = ptrtoint ptr %resolution.i188 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 51, ptr %resolution.i188, align 4
  br label %input_abs_set_res.exit190

input_abs_set_res.exit190:                        ; preds = %if.then.i189, %input_abs_set_res.exit185.input_abs_set_res.exit190_crit_edge
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call25) #11
  %55 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i192 = icmp eq ptr %56, null
  br i1 %tobool.not.i192, label %input_abs_set_res.exit190.input_abs_set_res.exit195_crit_edge, label %if.then.i194

input_abs_set_res.exit190.input_abs_set_res.exit195_crit_edge: ; preds = %input_abs_set_res.exit190
  call void @__sanitizer_cov_trace_pc() #13
  br label %input_abs_set_res.exit195

if.then.i194:                                     ; preds = %input_abs_set_res.exit190
  call void @__sanitizer_cov_trace_pc() #13
  %resolution.i193 = getelementptr %struct.input_absinfo, ptr %56, i32 20, i32 5
  %57 = ptrtoint ptr %resolution.i193 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 51, ptr %resolution.i193, align 4
  br label %input_abs_set_res.exit195

input_abs_set_res.exit195:                        ; preds = %if.then.i194, %input_abs_set_res.exit190.input_abs_set_res.exit195_crit_edge
  %call41 = tail call i32 @input_register_device(ptr noundef nonnull %call25) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %do.body45, label %input_register_fail

do.body45:                                        ; preds = %input_abs_set_res.exit195
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !156
  %58 = ptrtoint ptr %input2 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %call25, ptr %input2, align 4
  br label %cleanup

input_register_fail:                              ; preds = %input_abs_set_res.exit195
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_free_device(ptr noundef nonnull %call25) #11
  br label %cleanup

cleanup:                                          ; preds = %input_register_fail, %do.body45, %if.end24.cleanup_crit_edge, %do.end18, %do.body13.cleanup_crit_edge
  %retval.0 = phi i32 [ %call41, %input_register_fail ], [ 0, %do.body45 ], [ 0, %do.end18 ], [ 0, %do.body13.cleanup_crit_edge ], [ -12, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @steam_input_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %cmd.addr.i11.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.steam_device, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %client_opened = getelementptr inbounds %struct.steam_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %client_opened to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %client_opened, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i8, ptr @lizard_mode, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i11.i) #11
  %5 = ptrtoint ptr %cmd.addr.i11.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -127, ptr %cmd.addr.i11.i, align 1
  %call.i12.i = call fastcc i32 @steam_send_report(ptr noundef %1, ptr noundef nonnull %cmd.addr.i11.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i11.i) #11
  call void (ptr, ...) @steam_write_registers(ptr noundef %1, i32 noundef 8, i32 noundef 7, i32 noundef 24, i32 noundef 0, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @steam_input_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %cmd.addr.i9.i = alloca i8, align 1
  %cmd.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.steam_device, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %client_opened = getelementptr inbounds %struct.steam_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %client_opened to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %client_opened, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i8, ptr @lizard_mode, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #11
  %5 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -123, ptr %cmd.addr.i.i, align 1
  %call.i.i = call fastcc i32 @steam_send_report(ptr noundef %1, ptr noundef nonnull %cmd.addr.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i9.i) #11
  %6 = ptrtoint ptr %cmd.addr.i9.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -114, ptr %cmd.addr.i9.i, align 1
  %call.i10.i = call fastcc i32 @steam_send_report(ptr noundef %1, ptr noundef nonnull %cmd.addr.i9.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i9.i) #11
  call void (ptr, ...) @steam_write_registers(ptr noundef %1, i32 noundef 24, i32 noundef 1, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_parse_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @steam_battery_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #11
  %lock = getelementptr inbounds %struct.steam_device, ptr %call, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %voltage = getelementptr inbounds %struct.steam_device, ptr %call, i32 0, i32 14
  %0 = ptrtoint ptr %voltage to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %voltage, align 2
  %battery_charge = getelementptr inbounds %struct.steam_device, ptr %call, i32 0, i32 13
  %2 = ptrtoint ptr %battery_charge to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %battery_charge, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  %4 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %psp, label %entry.sw.epilog_crit_edge [
    i32 3, label %entry.sw.epilog.sink.split_crit_edge
    i32 66, label %sw.bb7
    i32 12, label %sw.bb8
    i32 47, label %sw.bb10
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv9 = sext i16 %1 to i32
  %mul = mul nsw i32 %conv9, 1000
  br label %sw.epilog.sink.split

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv11 = zext i8 %3 to i32
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb10, %sw.bb8, %sw.bb7, %entry.sw.epilog.sink.split_crit_edge
  %conv11.sink = phi i32 [ %conv11, %sw.bb10 ], [ %mul, %sw.bb8 ], [ 2, %sw.bb7 ], [ 1, %entry.sw.epilog.sink.split_crit_edge ]
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv11.sink, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_powers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_input_report(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @steam_do_input_event(ptr noundef %input, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %data, i32 8
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %arrayidx1 = getelementptr i8, ptr %data, i32 9
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr i8, ptr %data, i32 10
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  %arrayidx3 = getelementptr i8, ptr %data, i32 11
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  %conv = zext i8 %7 to i32
  tail call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 21, i32 noundef %conv) #11
  %arrayidx4 = getelementptr i8, ptr %data, i32 12
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %9 to i32
  tail call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 20, i32 noundef %conv5) #11
  %conv6 = zext i8 %5 to i32
  %and = and i32 %conv6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and8 = and i32 %conv6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp ne i32 %and8, 0
  %add.ptr = getelementptr i8, ptr %data, i32 16
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %11)
  %cmp.i = icmp eq i16 %11, 128
  %spec.select.i = select i1 %cmp.i, i16 -32767, i16 %12
  %add.ptr11 = getelementptr i8, ptr %data, i32 18
  %13 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr11, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %14)
  %cmp.i3 = icmp eq i16 %14, 128
  %spec.select.i4 = select i1 %cmp.i3, i16 -32767, i16 %15
  %sub = sub i16 0, %spec.select.i4
  %16 = shl nuw nsw i32 %and, 1
  %conv17 = sext i16 %spec.select.i to i32
  tail call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef %16, i32 noundef %conv17) #11
  %cond20 = select i1 %tobool.not, i32 1, i32 17
  %conv21 = sext i16 %sub to i32
  tail call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef %cond20, i32 noundef %conv21) #11
  %17 = and i32 %conv6, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %17)
  %.not = icmp eq i32 %17, 8
  br i1 %.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 1, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge2 = select i1 %tobool.not.not, i1 true, i1 %tobool9.not
  br i1 %brmerge2, label %if.end.if.end30_crit_edge, label %if.then29

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 16, i32 noundef 0) #11
  tail call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 17, i32 noundef 0) #11
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end.if.end30_crit_edge
  %add.ptr31 = getelementptr i8, ptr %data, i32 20
  %18 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr31, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %19)
  %cmp.i5 = icmp eq i16 %19, 128
  %spec.select.i6 = select i1 %cmp.i5, i16 -32767, i16 %20
  %conv33 = sext i16 %spec.select.i6 to i32
  tail call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 3, i32 noundef %conv33) #11
  %add.ptr34 = getelementptr i8, ptr %data, i32 22
  %21 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr34, align 2
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %22)
  %cmp.i7 = icmp eq i16 %22, 128
  %spec.select.i8 = select i1 %cmp.i7, i16 -32767, i16 %23
  %conv36 = sext i16 %spec.select.i8 to i32
  %sub37 = sub nsw i32 0, %conv36
  tail call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 4, i32 noundef %sub37) #11
  %conv38 = zext i8 %1 to i32
  %and39 = and i32 %conv38, 1
  tail call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 313, i32 noundef %and39) #11
  %and43 = lshr i32 %conv38, 1
  %and43.lobit = and i32 %and43, 1
  tail call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 312, i32 noundef %and43.lobit) #11
  %and50 = lshr i32 %conv38, 2
  %and50.lobit = and i32 %and50, 1
  tail call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 311, i32 noundef %and50.lobit) #11
  %and57 = lshr i32 %conv38, 3
  %and57.lobit = and i32 %and57, 1
  tail call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 310, i32 noundef %and57.lobit) #11
  %and64 = lshr i32 %conv38, 4
  %and64.lobit = and i32 %and64, 1
  tail call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 308, i32 noundef %and64.lobit) #11
  %and71 = lshr i32 %conv38, 5
  %and71.lobit = and i32 %and71, 1
  tail call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 305, i32 noundef %and71.lobit) #11
  %and78 = lshr i32 %conv38, 6
  %and78.lobit = and i32 %and78, 1
  tail call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 307, i32 noundef %and78.lobit) #11
  %and85.lobit = lshr i32 %conv38, 7
  tail call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 304, i32 noundef %and85.lobit) #11
  %conv91 = zext i8 %3 to i32
  %and92 = lshr i32 %conv91, 4
  %and92.lobit = and i32 %and92, 1
  tail call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 314, i32 noundef %and92.lobit) #11
  %and99 = lshr i32 %conv91, 5
  %and99.lobit = and i32 %and99, 1
  tail call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 316, i32 noundef %and99.lobit) #11
  %and106 = lshr i32 %conv91, 6
  %and106.lobit = and i32 %and106, 1
  tail call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 315, i32 noundef %and106.lobit) #11
  %and113.lobit = lshr i32 %conv91, 7
  tail call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 336, i32 noundef %and113.lobit) #11
  %and120 = and i32 %conv6, 1
  tail call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 337, i32 noundef %and120) #11
  %and127 = lshr i32 %conv6, 2
  %and127.lobit = and i32 %and127, 1
  tail call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 318, i32 noundef %and127.lobit) #11
  %and134 = lshr i32 %conv6, 6
  %and134.lobit = and i32 %and134, 1
  tail call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 317, i32 noundef %and134.lobit) #11
  %and8.lobit = lshr i32 %conv6, 7
  %spec.select = select i1 %tobool.not, i32 %and8.lobit, i32 1
  tail call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 289, i32 noundef %spec.select) #11
  %and145 = lshr i32 %conv6, 4
  %and145.lobit = and i32 %and145, 1
  tail call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 290, i32 noundef %and145.lobit) #11
  %and152 = and i32 %conv91, 1
  tail call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 544, i32 noundef %and152) #11
  %and159 = lshr i32 %conv91, 1
  %and159.lobit = and i32 %and159, 1
  tail call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 547, i32 noundef %and159.lobit) #11
  %and166 = lshr i32 %conv91, 2
  %and166.lobit = and i32 %and166, 1
  tail call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 546, i32 noundef %and166.lobit) #11
  %and173 = lshr i32 %conv91, 3
  %and173.lobit = and i32 %and173, 1
  tail call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 545, i32 noundef %and173.lobit) #11
  tail call void @input_event(ptr noundef %input, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @steam_do_connect_event(ptr noundef %steam, i1 noundef zeroext %connected) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %connected to i8
  %lock = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %connected5 = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 9
  %0 = ptrtoint ptr %connected5 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %connected5, align 4, !range !150
  %conv8 = zext i1 %connected to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %frombool)
  %cmp9.not = icmp eq i8 %1, %frombool
  %2 = ptrtoint ptr %connected5 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %connected5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #11
  br i1 %cmp9.not, label %entry.if.end34_crit_edge, label %land.lhs.true

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

land.lhs.true:                                    ; preds = %entry
  %work_connect = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %work_connect) #11
  br i1 %call.i.i, label %land.lhs.true.if.end34_crit_edge, label %do.body22

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

do.body22:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %4 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool23.not = icmp eq i32 %4, 0
  br i1 %tobool23.not, label %do.body22.if.end34_crit_edge, label %do.end27

do.body22.if.end34_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

do.end27:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #13
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.52, i32 noundef %conv8) #14
  br label %if.end34

if.end34:                                         ; preds = %do.end27, %do.body22.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge, %entry.if.end34_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @steam_do_battery_event(ptr noundef %steam, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %data, i32 12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %add.ptr, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %1)
  %cmp.i = icmp eq i16 %1, 128
  %spec.select.i = select i1 %cmp.i, i16 -32767, i16 %2
  %arrayidx = getelementptr i8, ptr %data, i32 14
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = tail call i32 @llvm.read_register.i32(metadata !140) #11
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !152
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %battery1 = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 12
  %9 = ptrtoint ptr %battery1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %battery1, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b1 = load i1, ptr @steam_do_battery_event.__warned, align 1
  br i1 %.b1, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @steam_do_battery_event.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1006, ptr noundef nonnull @.str.32) #11
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %do.end9.if.end25_crit_edge, label %do.body16, !prof !153

do.end9.if.end25_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

do.body16:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  %lock = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 1
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %voltage = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 14
  %11 = ptrtoint ptr %voltage to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %spec.select.i, ptr %voltage, align 2
  %battery_charge = getelementptr inbounds %struct.steam_device, ptr %steam, i32 0, i32 13
  %12 = ptrtoint ptr %battery_charge to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %4, ptr %battery_charge, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call19) #11
  tail call void @power_supply_changed(ptr noundef nonnull %10) #11
  br label %if.end25

if.end25:                                         ; preds = %do.body16, %do.end9.if.end25_crit_edge
  %call.i2 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i2, label %if.end25.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

if.end25.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %if.end25
  %call1.i3 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %if.end25.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !155
  %13 = tail call i32 @llvm.read_register.i32(metadata !140) #11
  %and.i.i.i.i.i9 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !15, !17, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !34, !36, !38, !40, !41, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !83, !84, !85, !87, !88, !90, !92, !94, !96, !97, !98, !99, !101, !103, !105, !107, !108, !109, !110, !112, !114, !115, !116, !117, !119, !121, !122, !123, !124, !126, !128, !130, !131, !132, !133, !135, !136, !137, !138}
!llvm.named.register.sp = !{!140}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146, !147, !148}
!llvm.ident = !{!149}

!0 = !{ptr @__UNIQUE_ID_file223, !1, !"__UNIQUE_ID_file223", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-steam.c", i32 47, i32 1}
!2 = !{ptr @__UNIQUE_ID_license224, !1, !"__UNIQUE_ID_license224", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author225, !4, !"__UNIQUE_ID_author225", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-steam.c", i32 48, i32 1}
!5 = !{ptr @__param_lizard_mode, !6, !"__param_lizard_mode", i1 false, i1 false}
!6 = !{!"../drivers/hid/hid-steam.c", i32 1120, i32 1}
!7 = !{ptr @__UNIQUE_ID_lizard_mode248, !8, !"__UNIQUE_ID_lizard_mode248", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-steam.c", i32 1121, i32 1}
!9 = !{ptr @__initcall__kmod_hid_steam__249_1147_steam_controller_driver_init6, !10, !"__initcall__kmod_hid_steam__249_1147_steam_controller_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-steam.c", i32 1147, i32 1}
!11 = !{ptr @__exitcall_steam_controller_driver_exit, !10, !"__exitcall_steam_controller_driver_exit", i1 false, i1 false}
!12 = !{ptr @__param_str_lizard_mode, !6, !"__param_str_lizard_mode", i1 false, i1 false}
!13 = !{ptr @steam_lizard_mode_ops, !14, !"steam_lizard_mode_ops", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-steam.c", i32 1115, i32 38}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-steam.c", i32 52, i32 8}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @steam_devices_lock, !16, !"steam_devices_lock", i1 false, i1 false}
!19 = !{ptr @steam_devices, !20, !"steam_devices", i1 false, i1 false}
!20 = !{!"../drivers/hid/hid-steam.c", i32 53, i32 8}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-steam.c", i32 195, i32 3}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @steam_send_report._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @steam_send_report._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @lizard_mode, !30, !"lizard_mode", i1 false, i1 false}
!30 = !{!"../drivers/hid/hid-steam.c", i32 50, i32 13}
!31 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hid/hid-steam.c", i32 1140, i32 10}
!34 = !{ptr @steam_controller_driver, !35, !"steam_controller_driver", i1 false, i1 false}
!35 = !{!"../drivers/hid/hid-steam.c", i32 1139, i32 26}
!36 = !{ptr @steam_controllers, !37, !"steam_controllers", i1 false, i1 false}
!37 = !{!"../drivers/hid/hid-steam.c", i32 1124, i32 35}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hid/hid-steam.c", i32 713, i32 3}
!40 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @steam_probe._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @steam_probe._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @steam_probe.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/hid/hid-steam.c", i32 738, i32 2}
!45 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @steam_probe.__key.12, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/hid/hid-steam.c", i32 739, i32 2}
!48 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @steam_probe.__key.14, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/hid/hid-steam.c", i32 741, i32 2}
!51 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hid/hid-steam.c", i32 765, i32 3}
!54 = !{ptr @steam_probe._entry.16, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @steam_probe._entry_ptr.18, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hid/hid-steam.c", i32 772, i32 3}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @steam_probe._entry.19, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @steam_probe._entry_ptr.22, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hid/hid-steam.c", i32 781, i32 4}
!63 = !{ptr @steam_probe._entry.23, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @steam_probe._entry_ptr.25, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hid/hid-steam.c", i32 799, i32 2}
!67 = !{ptr @steam_probe._entry.26, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @steam_probe._entry_ptr.28, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hid/hid-steam.c", i32 577, i32 4}
!71 = !{ptr @steam_work_connect_cb._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @steam_work_connect_cb._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hid/hid-steam.c", i32 553, i32 3}
!75 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @steam_unregister._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @steam_unregister._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../drivers/hid/hid-steam.c", i32 489, i32 12}
!80 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!83 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!87 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../drivers/hid/hid-steam.c", i32 475, i32 10}
!90 = !{ptr @steam_client_ll_driver, !91, !"steam_client_ll_driver", i1 false, i1 false}
!91 = !{!"../drivers/hid/hid-steam.c", i32 667, i32 29}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../drivers/hid/hid-steam.c", i32 390, i32 10}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hid/hid-steam.c", i32 393, i32 3}
!96 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @steam_input_register._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @steam_input_register._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hid/hid-steam.c", i32 407, i32 3}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hid/hid-steam.c", i32 408, i32 3}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hid/hid-steam.c", i32 517, i32 30}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/hid/hid-steam.c", i32 521, i32 3}
!107 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @steam_register._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @steam_register._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hid/hid-steam.c", i32 358, i32 16}
!112 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/hid/hid-steam.c", i32 373, i32 3}
!114 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @steam_battery_register._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @steam_battery_register._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @steam_battery_props, !118, !"steam_battery_props", i1 false, i1 false}
!118 = !{!"../drivers/hid/hid-steam.c", i32 304, i32 35}
!119 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hid/hid-steam.c", i32 817, i32 3}
!121 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @steam_remove._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @steam_remove._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = distinct !{null, !125, !"__warned", i1 false, i1 false}
!125 = !{!"../drivers/hid/hid-steam.c", i32 1055, i32 11}
!126 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!127 = !{!"../drivers/hid/hid-steam.c", i32 1078, i32 14}
!128 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hid/hid-steam.c", i32 1082, i32 5}
!130 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @steam_raw_event._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @steam_raw_event._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/hid/hid-steam.c", i32 835, i32 3}
!135 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @steam_do_connect_event._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @steam_do_connect_event._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = distinct !{null, !139, !"__warned", i1 false, i1 false}
!139 = !{!"../drivers/hid/hid-steam.c", i32 1006, i32 12}
!140 = !{!"sp"}
!141 = !{i32 1, !"wchar_size", i32 2}
!142 = !{i32 1, !"min_enum_size", i32 4}
!143 = !{i32 8, !"branch-target-enforcement", i32 0}
!144 = !{i32 8, !"sign-return-address", i32 0}
!145 = !{i32 8, !"sign-return-address-all", i32 0}
!146 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!147 = !{i32 7, !"uwtable", i32 1}
!148 = !{i32 7, !"frame-pointer", i32 2}
!149 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!150 = !{i8 0, i8 2}
!151 = !{!"auto-init"}
!152 = !{i64 2149322342}
!153 = !{!"branch_weights", i32 1, i32 2000}
!154 = !{i64 2153686680}
!155 = !{i64 2149322608}
!156 = !{i64 2153700439}
