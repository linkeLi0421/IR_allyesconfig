; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-nintendo.c_pt.bc'
source_filename = "../drivers/hid/hid-nintendo.c"
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
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.joycon_rumble_freq_data = type { i16, i8, i16 }
%struct.joycon_rumble_amp_data = type { i8, i16, i16 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.joycon_subcmd_request = type { i8, i8, [8 x i8], i8, [0 x i8] }
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
%struct.joycon_ctlr = type { ptr, ptr, [4 x %struct.led_classdev], %struct.led_classdev, i32, %struct.spinlock, [6 x i8], ptr, i32, i32, i8, %struct.mutex, [84 x i8], %struct.wait_queue_head, i8, i8, i8, i8, i32, %struct.joycon_stick_cal, %struct.joycon_stick_cal, %struct.joycon_stick_cal, %struct.joycon_stick_cal, %struct.joycon_imu_cal, %struct.joycon_imu_cal, [3 x i32], [3 x i32], ptr, %struct.power_supply_desc, i8, i8, i8, [8 x [8 x i8]], i32, i32, ptr, %struct.work_struct, i32, i16, i16, i16, i16, i16, ptr, i8, i32, i32, i32, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.joycon_stick_cal = type { i32, i32, i32 }
%struct.joycon_imu_cal = type { [3 x i16], [3 x i16] }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.joycon_input_report = type { i8, i8, i8, [3 x i8], [3 x i8], [3 x i8], i8, %union.anon.70 }
%union.anon.70 = type { [36 x i8] }
%struct.joycon_rumble_output = type { i8, i8, [8 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.2 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.2 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.joycon_imu_data = type { i16, i16, i16, i16, i16, i16 }

@__initcall__kmod_hid_nintendo__269_2323_nintendo_hid_driver_init6 = internal global ptr @nintendo_hid_driver_init, section ".initcall6.init", align 4
@nintendo_hid_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @nintendo_hid_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @nintendo_hid_probe, ptr @nintendo_hid_remove, ptr null, ptr @nintendo_hid_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_nintendo_hid_driver_exit = internal global ptr @nintendo_hid_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file270 = internal constant [43 x i8] c"hid_nintendo.file=drivers/hid/hid-nintendo\00", section ".modinfo", align 1
@__UNIQUE_ID_license271 = internal constant [25 x i8] c"hid_nintendo.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author272 = internal constant [64 x i8] c"hid_nintendo.author=Daniel J. Ogorchock <djogorchock@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description273 = internal constant [64 x i8] c"hid_nintendo.description=Driver for Nintendo Switch Controllers\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hid_nintendo\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nintendo\00", [23 x i8] zeroinitializer }, align 32
@nintendo_hid_devices = internal constant { [6 x %struct.hid_device_id], [32 x i8] } { [6 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1406, i32 8201, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1406, i32 8201, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1406, i32 8206, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1406, i32 8198, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1406, i32 8199, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@nintendo_hid_probe.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 2, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nintendo_hid_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/hid/hid-nintendo.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"probe - start\0A\00", [17 x i8] zeroinitializer }, align 32
@nintendo_hid_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ctlr->output_mutex\00", [44 x i8] zeroinitializer }, align 32
@nintendo_hid_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ctlr->wait\00", [20 x i8] zeroinitializer }, align 32
@nintendo_hid_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ctlr->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hid-nintendo-rumble_wq\00", [41 x i8] zeroinitializer }, align 32
@nintendo_hid_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&ctlr->rumble_worker)\00", [56 x i8] zeroinitializer }, align 32
@nintendo_hid_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 2139, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HID parse failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nintendo_hid_probe._entry_ptr = internal global ptr @nintendo_hid_probe._entry, section ".printk_index", align 4
@nintendo_hid_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 2154, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HW start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@nintendo_hid_probe._entry_ptr.18 = internal global ptr @nintendo_hid_probe._entry.16, section ".printk_index", align 4
@nintendo_hid_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 2160, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot start hardware I/O\0A\00", [37 x i8] zeroinitializer }, align 32
@nintendo_hid_probe._entry_ptr.21 = internal global ptr @nintendo_hid_probe._entry.19, section ".printk_index", align 4
@nintendo_hid_probe.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.22, i8 2, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"detected USB controller\0A\00", [39 x i8] zeroinitializer }, align 32
@nintendo_hid_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 2175, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set baudrate; ret=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@nintendo_hid_probe._entry_ptr.25 = internal global ptr @nintendo_hid_probe._entry.23, section ".printk_index", align 4
@nintendo_hid_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 2181, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed handshake; ret=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@nintendo_hid_probe._entry_ptr.28 = internal global ptr @nintendo_hid_probe._entry.26, section ".printk_index", align 4
@nintendo_hid_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 2190, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed charging grip handshake\0A\00", [32 x i8] zeroinitializer }, align 32
@nintendo_hid_probe._entry_ptr.31 = internal global ptr @nintendo_hid_probe._entry.29, section ".printk_index", align 4
@nintendo_hid_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 2202, ptr @.str.34, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Analog stick positions may be inaccurate\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nintendo_hid_probe._entry_ptr.35 = internal global ptr @nintendo_hid_probe._entry.32, section ".printk_index", align 4
@nintendo_hid_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.2, ptr @.str.3, i32 2212, ptr @.str.34, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to read IMU calibration data\0A\00", [59 x i8] zeroinitializer }, align 32
@nintendo_hid_probe._entry_ptr.38 = internal global ptr @nintendo_hid_probe._entry.36, section ".printk_index", align 4
@nintendo_hid_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.2, ptr @.str.3, i32 2218, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to set report mode; ret=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@nintendo_hid_probe._entry_ptr.41 = internal global ptr @nintendo_hid_probe._entry.39, section ".printk_index", align 4
@nintendo_hid_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.2, ptr @.str.3, i32 2225, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable rumble; ret=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@nintendo_hid_probe._entry_ptr.44 = internal global ptr @nintendo_hid_probe._entry.42, section ".printk_index", align 4
@nintendo_hid_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.2, ptr @.str.3, i32 2232, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to enable the IMU; ret=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@nintendo_hid_probe._entry_ptr.47 = internal global ptr @nintendo_hid_probe._entry.45, section ".printk_index", align 4
@nintendo_hid_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.2, ptr @.str.3, i32 2239, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to retrieve controller info; ret=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@nintendo_hid_probe._entry_ptr.50 = internal global ptr @nintendo_hid_probe._entry.48, section ".printk_index", align 4
@nintendo_hid_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.2, ptr @.str.3, i32 2248, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to create leds; ret=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@nintendo_hid_probe._entry_ptr.53 = internal global ptr @nintendo_hid_probe._entry.51, section ".printk_index", align 4
@nintendo_hid_probe._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.2, ptr @.str.3, i32 2255, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to create power_supply; ret=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@nintendo_hid_probe._entry_ptr.56 = internal global ptr @nintendo_hid_probe._entry.54, section ".printk_index", align 4
@nintendo_hid_probe._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.2, ptr @.str.3, i32 2261, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to create input device; ret=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@nintendo_hid_probe._entry_ptr.59 = internal global ptr @nintendo_hid_probe._entry.57, section ".printk_index", align 4
@nintendo_hid_probe.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.60, i8 2, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"probe - success\0A\00", [47 x i8] zeroinitializer }, align 32
@nintendo_hid_probe._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.2, ptr @.str.3, i32 2279, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"probe - fail = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@nintendo_hid_probe._entry_ptr.63 = internal global ptr @nintendo_hid_probe._entry.61, section ".printk_index", align 4
@joycon_rumble_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 1428, ptr @.str.34, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set rumble; e=%d\00", [37 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"joycon_rumble_worker\00", [43 x i8] zeroinitializer }, align 32
@joycon_rumble_worker._entry_ptr = internal global ptr @joycon_rumble_worker._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@joycon_wait_for_input_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 539, ptr @.str.34, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"timeout waiting for input report\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"joycon_wait_for_input_report\00", [35 x i8] zeroinitializer }, align 32
@joycon_wait_for_input_report._entry_ptr = internal global ptr @joycon_wait_for_input_report._entry, section ".printk_index", align 4
@__joycon_hid_send.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.3, ptr @.str.69, i8 0, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__joycon_hid_send\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to send output report ret=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@hid_device_io_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.72, i32 963, ptr @.str.34, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"io already started\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hid_device_io_start\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@hid_device_io_start._entry_ptr = internal global ptr @hid_device_io_start._entry, section ".printk_index", align 4
@joycon_send_usb.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.3, ptr @.str.74, i8 0, i8 -103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"joycon_send_usb\00", [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"send usb command failed; ret=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@joycon_hid_send_sync.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.76, i8 0, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"joycon_hid_send_sync\00", [43 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"synchronous send/receive timed out\0A\00", [60 x i8] zeroinitializer }, align 32
@joycon_hid_send_sync.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.77, i8 0, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"retrying sync send after timeout\0A\00", [62 x i8] zeroinitializer }, align 32
@joycon_request_calibration.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.3, ptr @.str.79, i8 0, i8 -62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"joycon_request_calibration\00", [37 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"requesting cal data\0A\00", [43 x i8] zeroinitializer }, align 32
@joycon_request_calibration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.3, i32 781, ptr @.str.81, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"using user cal for left stick\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@joycon_request_calibration._entry_ptr = internal global ptr @joycon_request_calibration._entry, section ".printk_index", align 4
@joycon_request_calibration._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.3, i32 783, ptr @.str.81, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"using factory cal for left stick\0A\00", [62 x i8] zeroinitializer }, align 32
@joycon_request_calibration._entry_ptr.84 = internal global ptr @joycon_request_calibration._entry.82, section ".printk_index", align 4
@joycon_request_calibration._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.78, ptr @.str.3, i32 787, ptr @.str.81, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"using user cal for right stick\0A\00", [32 x i8] zeroinitializer }, align 32
@joycon_request_calibration._entry_ptr.87 = internal global ptr @joycon_request_calibration._entry.85, section ".printk_index", align 4
@joycon_request_calibration._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.78, ptr @.str.3, i32 789, ptr @.str.81, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"using factory cal for right stick\0A\00", [61 x i8] zeroinitializer }, align 32
@joycon_request_calibration._entry_ptr.90 = internal global ptr @joycon_request_calibration._entry.88, section ".printk_index", align 4
@joycon_request_calibration._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.78, ptr @.str.3, i32 800, ptr @.str.34, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to read left stick cal, using dflts; e=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@joycon_request_calibration._entry_ptr.93 = internal global ptr @joycon_request_calibration._entry.91, section ".printk_index", align 4
@joycon_request_calibration._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.78, ptr @.str.3, i32 819, ptr @.str.34, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed to read right stick cal, using dflts; e=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@joycon_request_calibration._entry_ptr.96 = internal global ptr @joycon_request_calibration._entry.94, section ".printk_index", align 4
@joycon_request_calibration.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.3, ptr @.str.97, i8 0, i8 -45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [138 x i8], [54 x i8] } { [138 x i8] c"calibration:\0Al_x_c=%d l_x_max=%d l_x_min=%d\0Al_y_c=%d l_y_max=%d l_y_min=%d\0Ar_x_c=%d r_x_max=%d r_x_min=%d\0Ar_y_c=%d r_y_max=%d r_y_min=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@joycon_request_spi_flash_read.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.98, ptr @.str.3, ptr @.str.99, i8 0, i8 -85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"joycon_request_spi_flash_read\00", [34 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"requesting SPI flash data\0A\00", [37 x i8] zeroinitializer }, align 32
@joycon_request_spi_flash_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.3, i32 687, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed reading SPI flash; ret=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@joycon_request_spi_flash_read._entry_ptr = internal global ptr @joycon_request_spi_flash_read._entry, section ".printk_index", align 4
@joycon_send_subcmd.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.3, ptr @.str.102, i8 0, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"joycon_send_subcmd\00", [45 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"send subcommand failed; ret=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@joycon_request_imu_calibration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.3, i32 882, ptr @.str.81, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"using user cal for IMU\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"joycon_request_imu_calibration\00", [33 x i8] zeroinitializer }, align 32
@joycon_request_imu_calibration._entry_ptr = internal global ptr @joycon_request_imu_calibration._entry, section ".printk_index", align 4
@joycon_request_imu_calibration._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.3, i32 884, ptr @.str.81, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"using factory cal for IMU\0A\00", [37 x i8] zeroinitializer }, align 32
@joycon_request_imu_calibration._entry_ptr.107 = internal global ptr @joycon_request_imu_calibration._entry.105, section ".printk_index", align 4
@joycon_request_imu_calibration.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.3, ptr @.str.108, i8 0, i8 -34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"requesting IMU cal data\0A\00", [39 x i8] zeroinitializer }, align 32
@joycon_request_imu_calibration._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.104, ptr @.str.3, i32 894, ptr @.str.34, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to read IMU cal, using defaults; ret=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@joycon_request_imu_calibration._entry_ptr.111 = internal global ptr @joycon_request_imu_calibration._entry.109, section ".printk_index", align 4
@joycon_request_imu_calibration.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.3, ptr @.str.112, i8 0, i8 -23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [138 x i8], [54 x i8] } { [138 x i8] c"IMU calibration:\0Aa_o[0]=%d a_o[1]=%d a_o[2]=%d\0Aa_s[0]=%d a_s[1]=%d a_s[2]=%d\0Ag_o[0]=%d g_o[1]=%d g_o[2]=%d\0Ag_s[0]=%d g_s[1]=%d g_s[2]=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@joycon_set_report_mode.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.3, ptr @.str.114, i8 0, i8 -19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"joycon_set_report_mode\00", [41 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"setting controller report mode\0A\00", [32 x i8] zeroinitializer }, align 32
@joycon_enable_rumble.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.115, ptr @.str.3, ptr @.str.116, i8 0, i8 -16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"joycon_enable_rumble\00", [43 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"enabling rumble\0A\00", [47 x i8] zeroinitializer }, align 32
@joycon_enable_imu.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.117, ptr @.str.3, ptr @.str.118, i8 0, i8 -13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"joycon_enable_imu\00", [46 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"enabling IMU\0A\00", [18 x i8] zeroinitializer }, align 32
@joycon_read_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.3, i32 2008, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get joycon info; ret=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"joycon_read_info\00", [47 x i8] zeroinitializer }, align 32
@joycon_read_info._entry_ptr = internal global ptr @joycon_read_info._entry, section ".printk_index", align 4
@.str.121 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%02X:%02X:%02X:%02X:%02X:%02X\00", [34 x i8] zeroinitializer }, align 32
@joycon_read_info._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.120, ptr @.str.3, i32 2027, ptr @.str.81, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"controller MAC = %s\0A\00", [43 x i8] zeroinitializer }, align 32
@joycon_read_info._entry_ptr.124 = internal global ptr @joycon_read_info._entry.122, section ".printk_index", align 4
@joycon_leds_create.input_num = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@joycon_input_num_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.140, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @joycon_input_num_mutex, i64 52), ptr getelementptr (i8, ptr @joycon_input_num_mutex, i64 52) }, ptr @joycon_input_num_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.141, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@joycon_leds_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.3, i32 1846, ptr @.str.34, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to set leds; ret=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"joycon_leds_create\00", [45 x i8] zeroinitializer }, align 32
@joycon_leds_create._entry_ptr = internal global ptr @joycon_leds_create._entry, section ".printk_index", align 4
@.str.127 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s:%s:%s\00", [23 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"green\00", [26 x i8] zeroinitializer }, align 32
@joycon_leds_create._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.126, ptr @.str.3, i32 1870, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed registering %s LED\0A\00", [37 x i8] zeroinitializer }, align 32
@joycon_leds_create._entry_ptr.131 = internal global ptr @joycon_leds_create._entry.129, section ".printk_index", align 4
@.str.132 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"blue\00", [27 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"player-5\00", [23 x i8] zeroinitializer }, align 32
@joycon_leds_create._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.126, ptr @.str.3, i32 1897, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed registering home led\0A\00", [35 x i8] zeroinitializer }, align 32
@joycon_leds_create._entry_ptr.136 = internal global ptr @joycon_leds_create._entry.134, section ".printk_index", align 4
@joycon_leds_create._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.126, ptr @.str.3, i32 1904, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to set home LED dflt; ret=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@joycon_leds_create._entry_ptr.139 = internal global ptr @joycon_leds_create._entry.137, section ".printk_index", align 4
@.str.140 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"joycon_input_num_mutex.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"joycon_input_num_mutex\00", [41 x i8] zeroinitializer }, align 32
@joycon_set_player_leds.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.142, ptr @.str.3, ptr @.str.143, i8 0, i8 -91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"joycon_set_player_leds\00", [41 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"setting player leds\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"player-1\00", [23 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"player-2\00", [23 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"player-3\00", [23 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"player-4\00", [23 x i8] zeroinitializer }, align 32
@joycon_player_led_brightness_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.3, i32 1770, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No controller data\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"joycon_player_led_brightness_set\00", [63 x i8] zeroinitializer }, align 32
@joycon_player_led_brightness_set._entry_ptr = internal global ptr @joycon_player_led_brightness_set._entry, section ".printk_index", align 4
@joycon_home_led_brightness_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.150, ptr @.str.3, i32 1808, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"joycon_home_led_brightness_set\00", [33 x i8] zeroinitializer }, align 32
@joycon_home_led_brightness_set._entry_ptr = internal global ptr @joycon_home_led_brightness_set._entry, section ".printk_index", align 4
@joycon_home_led_brightness_set.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.150, ptr @.str.3, ptr @.str.151, i8 1, i8 -57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"setting home led brightness\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"nintendo_switch_controller_battery_%s\00", [58 x i8] zeroinitializer }, align 32
@joycon_battery_props = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 51, i32 66, i32 0], [16 x i8] zeroinitializer }, align 32
@joycon_power_supply_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.3, i32 1990, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register battery; ret=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"joycon_power_supply_create\00", [37 x i8] zeroinitializer }, align 32
@joycon_power_supply_create._entry_ptr = internal global ptr @joycon_power_supply_create._entry, section ".printk_index", align 4
@.str.155 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Nintendo Switch Pro Controller\00", [33 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Nintendo Switch Pro Controller IMU\00", [61 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Nintendo Switch Left Joy-Con (Grip)\00", [60 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Nintendo Switch Left Joy-Con IMU (Grip)\00", [56 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Nintendo Switch Right Joy-Con (Grip)\00", [59 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Nintendo Switch Right Joy-Con IMU (Grip)\00", [55 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Nintendo Switch Left Joy-Con\00", [35 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Nintendo Switch Left Joy-Con IMU\00", [63 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Nintendo Switch Right Joy-Con\00", [34 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Nintendo Switch Right Joy-Con IMU\00", [62 x i8] zeroinitializer }, align 32
@joycon_input_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.166, ptr @.str.3, i32 1624, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid hid product\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"joycon_input_create\00", [44 x i8] zeroinitializer }, align 32
@joycon_input_create._entry_ptr = internal global ptr @joycon_input_create._entry, section ".printk_index", align 4
@joycon_dpad_inputs_jc = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 544, i32 545, i32 546, i32 547], [16 x i8] zeroinitializer }, align 32
@joycon_rumble_frequencies = internal constant { [159 x %struct.joycon_rumble_freq_data], [230 x i8] } { [159 x %struct.joycon_rumble_freq_data] [%struct.joycon_rumble_freq_data { i16 0, i8 1, i16 41 }, %struct.joycon_rumble_freq_data { i16 0, i8 2, i16 42 }, %struct.joycon_rumble_freq_data { i16 0, i8 3, i16 43 }, %struct.joycon_rumble_freq_data { i16 0, i8 4, i16 44 }, %struct.joycon_rumble_freq_data { i16 0, i8 5, i16 45 }, %struct.joycon_rumble_freq_data { i16 0, i8 6, i16 46 }, %struct.joycon_rumble_freq_data { i16 0, i8 7, i16 47 }, %struct.joycon_rumble_freq_data { i16 0, i8 8, i16 48 }, %struct.joycon_rumble_freq_data { i16 0, i8 9, i16 49 }, %struct.joycon_rumble_freq_data { i16 0, i8 10, i16 50 }, %struct.joycon_rumble_freq_data { i16 0, i8 11, i16 51 }, %struct.joycon_rumble_freq_data { i16 0, i8 12, i16 52 }, %struct.joycon_rumble_freq_data { i16 0, i8 13, i16 53 }, %struct.joycon_rumble_freq_data { i16 0, i8 14, i16 54 }, %struct.joycon_rumble_freq_data { i16 0, i8 15, i16 55 }, %struct.joycon_rumble_freq_data { i16 0, i8 16, i16 57 }, %struct.joycon_rumble_freq_data { i16 0, i8 17, i16 58 }, %struct.joycon_rumble_freq_data { i16 0, i8 18, i16 59 }, %struct.joycon_rumble_freq_data { i16 0, i8 19, i16 60 }, %struct.joycon_rumble_freq_data { i16 0, i8 20, i16 62 }, %struct.joycon_rumble_freq_data { i16 0, i8 21, i16 63 }, %struct.joycon_rumble_freq_data { i16 0, i8 22, i16 64 }, %struct.joycon_rumble_freq_data { i16 0, i8 23, i16 66 }, %struct.joycon_rumble_freq_data { i16 0, i8 24, i16 67 }, %struct.joycon_rumble_freq_data { i16 0, i8 25, i16 69 }, %struct.joycon_rumble_freq_data { i16 0, i8 26, i16 70 }, %struct.joycon_rumble_freq_data { i16 0, i8 27, i16 72 }, %struct.joycon_rumble_freq_data { i16 0, i8 28, i16 73 }, %struct.joycon_rumble_freq_data { i16 0, i8 29, i16 75 }, %struct.joycon_rumble_freq_data { i16 0, i8 30, i16 77 }, %struct.joycon_rumble_freq_data { i16 0, i8 31, i16 78 }, %struct.joycon_rumble_freq_data { i16 0, i8 32, i16 80 }, %struct.joycon_rumble_freq_data { i16 1024, i8 33, i16 82 }, %struct.joycon_rumble_freq_data { i16 2048, i8 34, i16 84 }, %struct.joycon_rumble_freq_data { i16 3072, i8 35, i16 85 }, %struct.joycon_rumble_freq_data { i16 4096, i8 36, i16 87 }, %struct.joycon_rumble_freq_data { i16 5120, i8 37, i16 89 }, %struct.joycon_rumble_freq_data { i16 6144, i8 38, i16 91 }, %struct.joycon_rumble_freq_data { i16 7168, i8 39, i16 93 }, %struct.joycon_rumble_freq_data { i16 8192, i8 40, i16 95 }, %struct.joycon_rumble_freq_data { i16 9216, i8 41, i16 97 }, %struct.joycon_rumble_freq_data { i16 10240, i8 42, i16 99 }, %struct.joycon_rumble_freq_data { i16 11264, i8 43, i16 102 }, %struct.joycon_rumble_freq_data { i16 12288, i8 44, i16 104 }, %struct.joycon_rumble_freq_data { i16 13312, i8 45, i16 106 }, %struct.joycon_rumble_freq_data { i16 14336, i8 46, i16 108 }, %struct.joycon_rumble_freq_data { i16 15360, i8 47, i16 111 }, %struct.joycon_rumble_freq_data { i16 16384, i8 48, i16 113 }, %struct.joycon_rumble_freq_data { i16 17408, i8 49, i16 116 }, %struct.joycon_rumble_freq_data { i16 18432, i8 50, i16 118 }, %struct.joycon_rumble_freq_data { i16 19456, i8 51, i16 121 }, %struct.joycon_rumble_freq_data { i16 20480, i8 52, i16 123 }, %struct.joycon_rumble_freq_data { i16 21504, i8 53, i16 126 }, %struct.joycon_rumble_freq_data { i16 22528, i8 54, i16 129 }, %struct.joycon_rumble_freq_data { i16 23552, i8 55, i16 132 }, %struct.joycon_rumble_freq_data { i16 24576, i8 56, i16 135 }, %struct.joycon_rumble_freq_data { i16 25600, i8 57, i16 137 }, %struct.joycon_rumble_freq_data { i16 26624, i8 58, i16 141 }, %struct.joycon_rumble_freq_data { i16 27648, i8 59, i16 144 }, %struct.joycon_rumble_freq_data { i16 28672, i8 60, i16 147 }, %struct.joycon_rumble_freq_data { i16 29696, i8 61, i16 150 }, %struct.joycon_rumble_freq_data { i16 30720, i8 62, i16 153 }, %struct.joycon_rumble_freq_data { i16 31744, i8 63, i16 157 }, %struct.joycon_rumble_freq_data { i16 -32768, i8 64, i16 160 }, %struct.joycon_rumble_freq_data { i16 -31744, i8 65, i16 164 }, %struct.joycon_rumble_freq_data { i16 -30720, i8 66, i16 167 }, %struct.joycon_rumble_freq_data { i16 -29696, i8 67, i16 171 }, %struct.joycon_rumble_freq_data { i16 -28672, i8 68, i16 174 }, %struct.joycon_rumble_freq_data { i16 -27648, i8 69, i16 178 }, %struct.joycon_rumble_freq_data { i16 -26624, i8 70, i16 182 }, %struct.joycon_rumble_freq_data { i16 -25600, i8 71, i16 186 }, %struct.joycon_rumble_freq_data { i16 -24576, i8 72, i16 190 }, %struct.joycon_rumble_freq_data { i16 -23552, i8 73, i16 194 }, %struct.joycon_rumble_freq_data { i16 -22528, i8 74, i16 199 }, %struct.joycon_rumble_freq_data { i16 -21504, i8 75, i16 203 }, %struct.joycon_rumble_freq_data { i16 -20480, i8 76, i16 207 }, %struct.joycon_rumble_freq_data { i16 -19456, i8 77, i16 212 }, %struct.joycon_rumble_freq_data { i16 -18432, i8 78, i16 217 }, %struct.joycon_rumble_freq_data { i16 -17408, i8 79, i16 221 }, %struct.joycon_rumble_freq_data { i16 -16384, i8 80, i16 226 }, %struct.joycon_rumble_freq_data { i16 -15360, i8 81, i16 231 }, %struct.joycon_rumble_freq_data { i16 -14336, i8 82, i16 236 }, %struct.joycon_rumble_freq_data { i16 -13312, i8 83, i16 241 }, %struct.joycon_rumble_freq_data { i16 -12288, i8 84, i16 247 }, %struct.joycon_rumble_freq_data { i16 -11264, i8 85, i16 252 }, %struct.joycon_rumble_freq_data { i16 -10240, i8 86, i16 258 }, %struct.joycon_rumble_freq_data { i16 -9216, i8 87, i16 263 }, %struct.joycon_rumble_freq_data { i16 -8192, i8 88, i16 269 }, %struct.joycon_rumble_freq_data { i16 -7168, i8 89, i16 275 }, %struct.joycon_rumble_freq_data { i16 -6144, i8 90, i16 281 }, %struct.joycon_rumble_freq_data { i16 -5120, i8 91, i16 287 }, %struct.joycon_rumble_freq_data { i16 -4096, i8 92, i16 293 }, %struct.joycon_rumble_freq_data { i16 -3072, i8 93, i16 300 }, %struct.joycon_rumble_freq_data { i16 -2048, i8 94, i16 306 }, %struct.joycon_rumble_freq_data { i16 -1024, i8 95, i16 313 }, %struct.joycon_rumble_freq_data { i16 1, i8 96, i16 320 }, %struct.joycon_rumble_freq_data { i16 1025, i8 97, i16 327 }, %struct.joycon_rumble_freq_data { i16 2049, i8 98, i16 334 }, %struct.joycon_rumble_freq_data { i16 3073, i8 99, i16 341 }, %struct.joycon_rumble_freq_data { i16 4097, i8 100, i16 349 }, %struct.joycon_rumble_freq_data { i16 5121, i8 101, i16 357 }, %struct.joycon_rumble_freq_data { i16 6145, i8 102, i16 364 }, %struct.joycon_rumble_freq_data { i16 7169, i8 103, i16 372 }, %struct.joycon_rumble_freq_data { i16 8193, i8 104, i16 381 }, %struct.joycon_rumble_freq_data { i16 9217, i8 105, i16 389 }, %struct.joycon_rumble_freq_data { i16 10241, i8 106, i16 397 }, %struct.joycon_rumble_freq_data { i16 11265, i8 107, i16 406 }, %struct.joycon_rumble_freq_data { i16 12289, i8 108, i16 415 }, %struct.joycon_rumble_freq_data { i16 13313, i8 109, i16 424 }, %struct.joycon_rumble_freq_data { i16 14337, i8 110, i16 433 }, %struct.joycon_rumble_freq_data { i16 15361, i8 111, i16 443 }, %struct.joycon_rumble_freq_data { i16 16385, i8 112, i16 453 }, %struct.joycon_rumble_freq_data { i16 17409, i8 113, i16 462 }, %struct.joycon_rumble_freq_data { i16 18433, i8 114, i16 473 }, %struct.joycon_rumble_freq_data { i16 19457, i8 115, i16 483 }, %struct.joycon_rumble_freq_data { i16 20481, i8 116, i16 494 }, %struct.joycon_rumble_freq_data { i16 21505, i8 117, i16 504 }, %struct.joycon_rumble_freq_data { i16 22529, i8 118, i16 515 }, %struct.joycon_rumble_freq_data { i16 23553, i8 119, i16 527 }, %struct.joycon_rumble_freq_data { i16 24577, i8 120, i16 538 }, %struct.joycon_rumble_freq_data { i16 25601, i8 121, i16 550 }, %struct.joycon_rumble_freq_data { i16 26625, i8 122, i16 562 }, %struct.joycon_rumble_freq_data { i16 27649, i8 123, i16 574 }, %struct.joycon_rumble_freq_data { i16 28673, i8 124, i16 587 }, %struct.joycon_rumble_freq_data { i16 29697, i8 125, i16 600 }, %struct.joycon_rumble_freq_data { i16 30721, i8 126, i16 613 }, %struct.joycon_rumble_freq_data { i16 31745, i8 127, i16 626 }, %struct.joycon_rumble_freq_data { i16 -32767, i8 0, i16 640 }, %struct.joycon_rumble_freq_data { i16 -31743, i8 0, i16 654 }, %struct.joycon_rumble_freq_data { i16 -30719, i8 0, i16 668 }, %struct.joycon_rumble_freq_data { i16 -29695, i8 0, i16 683 }, %struct.joycon_rumble_freq_data { i16 -28671, i8 0, i16 698 }, %struct.joycon_rumble_freq_data { i16 -27647, i8 0, i16 713 }, %struct.joycon_rumble_freq_data { i16 -26623, i8 0, i16 729 }, %struct.joycon_rumble_freq_data { i16 -25599, i8 0, i16 745 }, %struct.joycon_rumble_freq_data { i16 -24575, i8 0, i16 761 }, %struct.joycon_rumble_freq_data { i16 -23551, i8 0, i16 778 }, %struct.joycon_rumble_freq_data { i16 -22527, i8 0, i16 795 }, %struct.joycon_rumble_freq_data { i16 -21503, i8 0, i16 812 }, %struct.joycon_rumble_freq_data { i16 -20479, i8 0, i16 830 }, %struct.joycon_rumble_freq_data { i16 -19455, i8 0, i16 848 }, %struct.joycon_rumble_freq_data { i16 -18431, i8 0, i16 867 }, %struct.joycon_rumble_freq_data { i16 -17407, i8 0, i16 886 }, %struct.joycon_rumble_freq_data { i16 -16383, i8 0, i16 905 }, %struct.joycon_rumble_freq_data { i16 -15359, i8 0, i16 925 }, %struct.joycon_rumble_freq_data { i16 -14335, i8 0, i16 945 }, %struct.joycon_rumble_freq_data { i16 -13311, i8 0, i16 966 }, %struct.joycon_rumble_freq_data { i16 -12287, i8 0, i16 987 }, %struct.joycon_rumble_freq_data { i16 -11263, i8 0, i16 1009 }, %struct.joycon_rumble_freq_data { i16 -10239, i8 0, i16 1031 }, %struct.joycon_rumble_freq_data { i16 -9215, i8 0, i16 1053 }, %struct.joycon_rumble_freq_data { i16 -8191, i8 0, i16 1076 }, %struct.joycon_rumble_freq_data { i16 -7167, i8 0, i16 1100 }, %struct.joycon_rumble_freq_data { i16 -6143, i8 0, i16 1124 }, %struct.joycon_rumble_freq_data { i16 -5119, i8 0, i16 1149 }, %struct.joycon_rumble_freq_data { i16 -4095, i8 0, i16 1174 }, %struct.joycon_rumble_freq_data { i16 -3071, i8 0, i16 1199 }, %struct.joycon_rumble_freq_data { i16 -2047, i8 0, i16 1226 }, %struct.joycon_rumble_freq_data { i16 -1023, i8 0, i16 1253 }], [230 x i8] zeroinitializer }, align 32
@joycon_rumble_amplitudes = internal constant { [101 x %struct.joycon_rumble_amp_data], [130 x i8] } { [101 x %struct.joycon_rumble_amp_data] [%struct.joycon_rumble_amp_data { i8 0, i16 64, i16 0 }, %struct.joycon_rumble_amp_data { i8 2, i16 -32704, i16 10 }, %struct.joycon_rumble_amp_data { i8 4, i16 65, i16 12 }, %struct.joycon_rumble_amp_data { i8 6, i16 -32703, i16 14 }, %struct.joycon_rumble_amp_data { i8 8, i16 66, i16 17 }, %struct.joycon_rumble_amp_data { i8 10, i16 -32702, i16 20 }, %struct.joycon_rumble_amp_data { i8 12, i16 67, i16 24 }, %struct.joycon_rumble_amp_data { i8 14, i16 -32701, i16 28 }, %struct.joycon_rumble_amp_data { i8 16, i16 68, i16 33 }, %struct.joycon_rumble_amp_data { i8 18, i16 -32700, i16 40 }, %struct.joycon_rumble_amp_data { i8 20, i16 69, i16 47 }, %struct.joycon_rumble_amp_data { i8 22, i16 -32699, i16 56 }, %struct.joycon_rumble_amp_data { i8 24, i16 70, i16 67 }, %struct.joycon_rumble_amp_data { i8 26, i16 -32698, i16 80 }, %struct.joycon_rumble_amp_data { i8 28, i16 71, i16 95 }, %struct.joycon_rumble_amp_data { i8 30, i16 -32697, i16 112 }, %struct.joycon_rumble_amp_data { i8 32, i16 72, i16 117 }, %struct.joycon_rumble_amp_data { i8 34, i16 -32696, i16 123 }, %struct.joycon_rumble_amp_data { i8 36, i16 73, i16 128 }, %struct.joycon_rumble_amp_data { i8 38, i16 -32695, i16 134 }, %struct.joycon_rumble_amp_data { i8 40, i16 74, i16 140 }, %struct.joycon_rumble_amp_data { i8 42, i16 -32694, i16 146 }, %struct.joycon_rumble_amp_data { i8 44, i16 75, i16 152 }, %struct.joycon_rumble_amp_data { i8 46, i16 -32693, i16 159 }, %struct.joycon_rumble_amp_data { i8 48, i16 76, i16 166 }, %struct.joycon_rumble_amp_data { i8 50, i16 -32692, i16 173 }, %struct.joycon_rumble_amp_data { i8 52, i16 77, i16 181 }, %struct.joycon_rumble_amp_data { i8 54, i16 -32691, i16 189 }, %struct.joycon_rumble_amp_data { i8 56, i16 78, i16 198 }, %struct.joycon_rumble_amp_data { i8 58, i16 -32690, i16 206 }, %struct.joycon_rumble_amp_data { i8 60, i16 79, i16 215 }, %struct.joycon_rumble_amp_data { i8 62, i16 -32689, i16 225 }, %struct.joycon_rumble_amp_data { i8 64, i16 80, i16 230 }, %struct.joycon_rumble_amp_data { i8 66, i16 -32688, i16 235 }, %struct.joycon_rumble_amp_data { i8 68, i16 81, i16 240 }, %struct.joycon_rumble_amp_data { i8 70, i16 -32687, i16 245 }, %struct.joycon_rumble_amp_data { i8 72, i16 82, i16 251 }, %struct.joycon_rumble_amp_data { i8 74, i16 -32686, i16 256 }, %struct.joycon_rumble_amp_data { i8 76, i16 83, i16 262 }, %struct.joycon_rumble_amp_data { i8 78, i16 -32685, i16 268 }, %struct.joycon_rumble_amp_data { i8 80, i16 84, i16 273 }, %struct.joycon_rumble_amp_data { i8 82, i16 -32684, i16 279 }, %struct.joycon_rumble_amp_data { i8 84, i16 85, i16 286 }, %struct.joycon_rumble_amp_data { i8 86, i16 -32683, i16 292 }, %struct.joycon_rumble_amp_data { i8 88, i16 86, i16 298 }, %struct.joycon_rumble_amp_data { i8 90, i16 -32682, i16 305 }, %struct.joycon_rumble_amp_data { i8 92, i16 87, i16 311 }, %struct.joycon_rumble_amp_data { i8 94, i16 -32681, i16 318 }, %struct.joycon_rumble_amp_data { i8 96, i16 88, i16 325 }, %struct.joycon_rumble_amp_data { i8 98, i16 -32680, i16 332 }, %struct.joycon_rumble_amp_data { i8 100, i16 89, i16 340 }, %struct.joycon_rumble_amp_data { i8 102, i16 -32679, i16 347 }, %struct.joycon_rumble_amp_data { i8 104, i16 90, i16 355 }, %struct.joycon_rumble_amp_data { i8 106, i16 -32678, i16 362 }, %struct.joycon_rumble_amp_data { i8 108, i16 91, i16 370 }, %struct.joycon_rumble_amp_data { i8 110, i16 -32677, i16 378 }, %struct.joycon_rumble_amp_data { i8 112, i16 92, i16 387 }, %struct.joycon_rumble_amp_data { i8 114, i16 -32676, i16 395 }, %struct.joycon_rumble_amp_data { i8 116, i16 93, i16 404 }, %struct.joycon_rumble_amp_data { i8 118, i16 -32675, i16 413 }, %struct.joycon_rumble_amp_data { i8 120, i16 94, i16 422 }, %struct.joycon_rumble_amp_data { i8 122, i16 -32674, i16 431 }, %struct.joycon_rumble_amp_data { i8 124, i16 95, i16 440 }, %struct.joycon_rumble_amp_data { i8 126, i16 -32673, i16 450 }, %struct.joycon_rumble_amp_data { i8 -128, i16 96, i16 460 }, %struct.joycon_rumble_amp_data { i8 -126, i16 -32672, i16 470 }, %struct.joycon_rumble_amp_data { i8 -124, i16 97, i16 480 }, %struct.joycon_rumble_amp_data { i8 -122, i16 -32671, i16 491 }, %struct.joycon_rumble_amp_data { i8 -120, i16 98, i16 501 }, %struct.joycon_rumble_amp_data { i8 -118, i16 -32670, i16 512 }, %struct.joycon_rumble_amp_data { i8 -116, i16 99, i16 524 }, %struct.joycon_rumble_amp_data { i8 -114, i16 -32669, i16 535 }, %struct.joycon_rumble_amp_data { i8 -112, i16 100, i16 547 }, %struct.joycon_rumble_amp_data { i8 -110, i16 -32668, i16 559 }, %struct.joycon_rumble_amp_data { i8 -108, i16 101, i16 571 }, %struct.joycon_rumble_amp_data { i8 -106, i16 -32667, i16 584 }, %struct.joycon_rumble_amp_data { i8 -104, i16 102, i16 596 }, %struct.joycon_rumble_amp_data { i8 -102, i16 -32666, i16 609 }, %struct.joycon_rumble_amp_data { i8 -100, i16 103, i16 623 }, %struct.joycon_rumble_amp_data { i8 -98, i16 -32665, i16 636 }, %struct.joycon_rumble_amp_data { i8 -96, i16 104, i16 650 }, %struct.joycon_rumble_amp_data { i8 -94, i16 -32664, i16 665 }, %struct.joycon_rumble_amp_data { i8 -92, i16 105, i16 679 }, %struct.joycon_rumble_amp_data { i8 -90, i16 -32663, i16 694 }, %struct.joycon_rumble_amp_data { i8 -88, i16 106, i16 709 }, %struct.joycon_rumble_amp_data { i8 -86, i16 -32662, i16 725 }, %struct.joycon_rumble_amp_data { i8 -84, i16 107, i16 741 }, %struct.joycon_rumble_amp_data { i8 -82, i16 -32661, i16 757 }, %struct.joycon_rumble_amp_data { i8 -80, i16 108, i16 773 }, %struct.joycon_rumble_amp_data { i8 -78, i16 -32660, i16 790 }, %struct.joycon_rumble_amp_data { i8 -76, i16 109, i16 808 }, %struct.joycon_rumble_amp_data { i8 -74, i16 -32659, i16 825 }, %struct.joycon_rumble_amp_data { i8 -72, i16 110, i16 843 }, %struct.joycon_rumble_amp_data { i8 -70, i16 -32658, i16 862 }, %struct.joycon_rumble_amp_data { i8 -68, i16 111, i16 881 }, %struct.joycon_rumble_amp_data { i8 -66, i16 -32657, i16 900 }, %struct.joycon_rumble_amp_data { i8 -64, i16 112, i16 920 }, %struct.joycon_rumble_amp_data { i8 -62, i16 -32656, i16 940 }, %struct.joycon_rumble_amp_data { i8 -60, i16 113, i16 960 }, %struct.joycon_rumble_amp_data { i8 -58, i16 -32655, i16 981 }, %struct.joycon_rumble_amp_data { i8 -56, i16 114, i16 1003 }], [130 x i8] zeroinitializer }, align 32
@nintendo_hid_remove.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.167, ptr @.str.3, ptr @.str.168, i8 2, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.167 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nintendo_hid_remove\00", [44 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"remove\0A\00", [24 x i8] zeroinitializer }, align 32
@joycon_parse_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str.3, i32 1262, ptr @.str.34, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid battery status\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"joycon_parse_report\00", [44 x i8] zeroinitializer }, align 32
@joycon_parse_report._entry_ptr = internal global ptr @joycon_parse_report._entry, section ".printk_index", align 4
@joycon_parse_imu_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.172, ptr @.str.3, i32 1098, ptr @.str.34, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"calculated avg imu delta of 0\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"joycon_parse_imu_report\00", [40 x i8] zeroinitializer }, align 32
@joycon_parse_imu_report._entry_ptr = internal global ptr @joycon_parse_imu_report._entry, section ".printk_index", align 4
@joycon_parse_imu_report.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.172, ptr @.str.3, ptr @.str.173, i8 1, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.173 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"imu_report: ms=%u last_ms=%u delta=%u avg_delta=%u\0A\00", [44 x i8] zeroinitializer }, align 32
@joycon_parse_imu_report._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.172, ptr @.str.3, i32 1117, ptr @.str.34, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"compensating for %u dropped IMU reports\0A\00", [55 x i8] zeroinitializer }, align 32
@joycon_parse_imu_report._entry_ptr.176 = internal global ptr @joycon_parse_imu_report._entry.174, section ".printk_index", align 4
@joycon_parse_imu_report._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.172, ptr @.str.3, i32 1120, ptr @.str.34, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"delta=%u avg_delta=%u\0A\00", [41 x i8] zeroinitializer }, align 32
@joycon_parse_imu_report._entry_ptr.179 = internal global ptr @joycon_parse_imu_report._entry.177, section ".printk_index", align 4
@joycon_parse_imu_report.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.172, ptr @.str.3, ptr @.str.180, i8 1, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.180 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"raw_gyro: g_x=%d g_y=%d g_z=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@joycon_parse_imu_report.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.172, ptr @.str.3, ptr @.str.181, i8 1, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.181 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"raw_accel: a_x=%d a_y=%d a_z=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8201, i64 8206]
@__sancov_gen_cov_switch_values.182 = internal global [6 x i64] [i64 4, i64 32, i64 8198, i64 8199, i64 8201, i64 8206]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.184 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.185 = internal global [4 x i64] [i64 2, i64 32, i64 8198, i64 8199]
@__sancov_gen_cov_switch_values.186 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.187 = internal global [5 x i64] [i64 3, i64 8, i64 33, i64 48, i64 49]
@__sancov_gen_cov_switch_values.188 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.189 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.190 = internal global [5 x i64] [i64 3, i64 32, i64 8198, i64 8199, i64 8206]
@__sancov_gen_cov_switch_values.191 = internal global [5 x i64] [i64 3, i64 32, i64 8198, i64 8199, i64 8206]
@__sancov_gen_cov_switch_values.192 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 51, i64 66]
@__sancov_gen_cov_switch_values.193 = internal global [5 x i64] [i64 3, i64 32, i64 8198, i64 8199, i64 8206]
@___asan_gen_.194 = private unnamed_addr constant [20 x i8] c"nintendo_hid_driver\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2316, i32 26 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2323, i32 1 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2317, i32 11 }
@___asan_gen_.203 = private unnamed_addr constant [21 x i8] c"nintendo_hid_devices\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2301, i32 35 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2113, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2126, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2127, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2128, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2129, i32 39 }
@___asan_gen_.236 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2135, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2139, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2154, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2160, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2171, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2175, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2181, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2190, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2202, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2212, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2218, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2225, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2232, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2238, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2248, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2255, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2261, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2267, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2279, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1428, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 538, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 514, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 963, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 612, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 584, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 587, i32 5 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 776, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 781, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 783, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 787, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 789, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 798, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 817, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 830, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 684, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 687, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 646, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 882, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 884, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 888, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 892, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 918, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 948, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 961, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 974, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2008, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2018, i32 10 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2027, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant [10 x i8] c"input_num\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1839, i32 13 }
@___asan_gen_.536 = private unnamed_addr constant [23 x i8] c"joycon_input_num_mutex\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1846, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1851, i32 42 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1853, i32 11 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1870, i32 4 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1884, i32 11 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1885, i32 11 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1897, i32 4 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1903, i32 4 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1829, i32 8 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 662, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 408, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 409, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 410, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 411, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1770, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1808, i32 3 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1821, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1966, i32 32 }
@___asan_gen_.623 = private unnamed_addr constant [21 x i8] c"joycon_battery_props\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1955, i32 35 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1990, i32 3 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1603, i32 10 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1604, i32 14 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1608, i32 11 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1609, i32 15 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1611, i32 11 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1612, i32 15 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1616, i32 10 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1617, i32 14 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1620, i32 10 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1621, i32 14 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1624, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant [22 x i8] c"joycon_dpad_inputs_jc\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1587, i32 27 }
@___asan_gen_.677 = private unnamed_addr constant [26 x i8] c"joycon_rumble_frequencies\00", align 1
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 197, i32 45 }
@___asan_gen_.680 = private unnamed_addr constant [25 x i8] c"joycon_rumble_amplitudes\00", align 1
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 255, i32 44 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 2288, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1262, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1097, i32 5 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1105, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1115, i32 4 }
@___asan_gen_.716 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1118, i32 4 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1174, i32 3 }
@___asan_gen_.725 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.726 = private constant [30 x i8] c"../drivers/hid/hid-nintendo.c\00", align 1
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.726, i32 1177, i32 3 }
@llvm.compiler.used = appending global [228 x ptr] [ptr @__UNIQUE_ID_author272, ptr @__UNIQUE_ID_description273, ptr @__UNIQUE_ID_file270, ptr @__UNIQUE_ID_license271, ptr @__exitcall_nintendo_hid_driver_exit, ptr @__initcall__kmod_hid_nintendo__269_2323_nintendo_hid_driver_init6, ptr @hid_device_io_start._entry, ptr @hid_device_io_start._entry_ptr, ptr @joycon_home_led_brightness_set._entry, ptr @joycon_home_led_brightness_set._entry_ptr, ptr @joycon_input_create._entry, ptr @joycon_input_create._entry_ptr, ptr @joycon_leds_create._entry, ptr @joycon_leds_create._entry.129, ptr @joycon_leds_create._entry.134, ptr @joycon_leds_create._entry.137, ptr @joycon_leds_create._entry_ptr, ptr @joycon_leds_create._entry_ptr.131, ptr @joycon_leds_create._entry_ptr.136, ptr @joycon_leds_create._entry_ptr.139, ptr @joycon_parse_imu_report._entry, ptr @joycon_parse_imu_report._entry.174, ptr @joycon_parse_imu_report._entry.177, ptr @joycon_parse_imu_report._entry_ptr, ptr @joycon_parse_imu_report._entry_ptr.176, ptr @joycon_parse_imu_report._entry_ptr.179, ptr @joycon_parse_report._entry, ptr @joycon_parse_report._entry_ptr, ptr @joycon_player_led_brightness_set._entry, ptr @joycon_player_led_brightness_set._entry_ptr, ptr @joycon_power_supply_create._entry, ptr @joycon_power_supply_create._entry_ptr, ptr @joycon_read_info._entry, ptr @joycon_read_info._entry.122, ptr @joycon_read_info._entry_ptr, ptr @joycon_read_info._entry_ptr.124, ptr @joycon_request_calibration._entry, ptr @joycon_request_calibration._entry.82, ptr @joycon_request_calibration._entry.85, ptr @joycon_request_calibration._entry.88, ptr @joycon_request_calibration._entry.91, ptr @joycon_request_calibration._entry.94, ptr @joycon_request_calibration._entry_ptr, ptr @joycon_request_calibration._entry_ptr.84, ptr @joycon_request_calibration._entry_ptr.87, ptr @joycon_request_calibration._entry_ptr.90, ptr @joycon_request_calibration._entry_ptr.93, ptr @joycon_request_calibration._entry_ptr.96, ptr @joycon_request_imu_calibration._entry, ptr @joycon_request_imu_calibration._entry.105, ptr @joycon_request_imu_calibration._entry.109, ptr @joycon_request_imu_calibration._entry_ptr, ptr @joycon_request_imu_calibration._entry_ptr.107, ptr @joycon_request_imu_calibration._entry_ptr.111, ptr @joycon_request_spi_flash_read._entry, ptr @joycon_request_spi_flash_read._entry_ptr, ptr @joycon_rumble_worker._entry, ptr @joycon_rumble_worker._entry_ptr, ptr @joycon_wait_for_input_report._entry, ptr @joycon_wait_for_input_report._entry_ptr, ptr @nintendo_hid_driver_exit, ptr @nintendo_hid_probe._entry, ptr @nintendo_hid_probe._entry.16, ptr @nintendo_hid_probe._entry.19, ptr @nintendo_hid_probe._entry.23, ptr @nintendo_hid_probe._entry.26, ptr @nintendo_hid_probe._entry.29, ptr @nintendo_hid_probe._entry.32, ptr @nintendo_hid_probe._entry.36, ptr @nintendo_hid_probe._entry.39, ptr @nintendo_hid_probe._entry.42, ptr @nintendo_hid_probe._entry.45, ptr @nintendo_hid_probe._entry.48, ptr @nintendo_hid_probe._entry.51, ptr @nintendo_hid_probe._entry.54, ptr @nintendo_hid_probe._entry.57, ptr @nintendo_hid_probe._entry.61, ptr @nintendo_hid_probe._entry_ptr, ptr @nintendo_hid_probe._entry_ptr.18, ptr @nintendo_hid_probe._entry_ptr.21, ptr @nintendo_hid_probe._entry_ptr.25, ptr @nintendo_hid_probe._entry_ptr.28, ptr @nintendo_hid_probe._entry_ptr.31, ptr @nintendo_hid_probe._entry_ptr.35, ptr @nintendo_hid_probe._entry_ptr.38, ptr @nintendo_hid_probe._entry_ptr.41, ptr @nintendo_hid_probe._entry_ptr.44, ptr @nintendo_hid_probe._entry_ptr.47, ptr @nintendo_hid_probe._entry_ptr.50, ptr @nintendo_hid_probe._entry_ptr.53, ptr @nintendo_hid_probe._entry_ptr.56, ptr @nintendo_hid_probe._entry_ptr.59, ptr @nintendo_hid_probe._entry_ptr.63, ptr @nintendo_hid_driver, ptr @.str, ptr @.str.1, ptr @nintendo_hid_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @nintendo_hid_probe.__key, ptr @.str.5, ptr @nintendo_hid_probe.__key.6, ptr @.str.7, ptr @nintendo_hid_probe.__key.8, ptr @.str.9, ptr @.str.10, ptr @nintendo_hid_probe.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @joycon_leds_create.input_num, ptr @joycon_input_num_mutex, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.132, ptr @.str.133, ptr @.str.135, ptr @.str.138, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @joycon_battery_props, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @joycon_dpad_inputs_jc, ptr @joycon_rumble_frequencies, ptr @joycon_rumble_amplitudes, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.175, ptr @.str.178, ptr @.str.180, ptr @.str.181], section "llvm.metadata"
@0 = internal global [178 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nintendo_hid_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nintendo_hid_devices to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nintendo_hid_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nintendo_hid_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nintendo_hid_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nintendo_hid_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nintendo_hid_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nintendo_hid_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nintendo_hid_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nintendo_hid_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nintendo_hid_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nintendo_hid_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nintendo_hid_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nintendo_hid_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nintendo_hid_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nintendo_hid_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nintendo_hid_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nintendo_hid_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nintendo_hid_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nintendo_hid_probe._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nintendo_hid_probe._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nintendo_hid_probe._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_rumble_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_wait_for_input_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_device_io_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_request_calibration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_request_calibration._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_request_calibration._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_request_calibration._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_request_calibration._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_request_calibration._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 138, i32 192, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_request_spi_flash_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_request_imu_calibration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_request_imu_calibration._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_request_imu_calibration._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 138, i32 192, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_read_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_read_info._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_leds_create.input_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_input_num_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_leds_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_leds_create._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_leds_create._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_leds_create._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_player_led_brightness_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_home_led_brightness_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_battery_props to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_power_supply_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_input_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_dpad_inputs_jc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_rumble_frequencies to i32), i32 954, i32 1184, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_rumble_amplitudes to i32), i32 606, i32 736, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_parse_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_parse_imu_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_parse_imu_report._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joycon_parse_imu_report._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nintendo_hid_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @nintendo_hid_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nintendo_hid_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hid_unregister_driver(ptr noundef nonnull @nintendo_hid_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nintendo_hid_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %supply_config.i = alloca %struct.power_supply_config, align 4
  %req.i = alloca %struct.joycon_subcmd_request, align 1
  %buffer.i343 = alloca [12 x i8], align 1
  %buffer.i336 = alloca [12 x i8], align 1
  %buffer.i = alloca [12 x i8], align 1
  %buf.i324 = alloca [2 x i8], align 2
  %buf.i314 = alloca [2 x i8], align 2
  %buf.i304 = alloca [2 x i8], align 2
  %buf.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nintendo_hid_probe.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nintendo_hid_probe, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !373

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nintendo_hid_probe.__UNIQUE_ID_ddebug265, ptr noundef %dev, ptr noundef nonnull @.str.4) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev3 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev3, i32 noundef 2636, i32 noundef 3520) #6
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %do.end.do.end203_crit_edge, label %if.end7

do.end.do.end203_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end203

if.end7:                                          ; preds = %do.end
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %hdev, ptr %call.i, align 4
  %ctlr_state = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %ctlr_state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ctlr_state, align 4
  %rumble_queue_head = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 33
  %2 = ptrtoint ptr %rumble_queue_head to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 7, ptr %rumble_queue_head, align 4
  %rumble_queue_tail = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 34
  %3 = ptrtoint ptr %rumble_queue_tail to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %rumble_queue_tail, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %output_mutex = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %output_mutex, ptr noundef nonnull @.str.5, ptr noundef nonnull @nintendo_hid_probe.__key) #6
  %wait = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 13
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.7, ptr noundef nonnull @nintendo_hid_probe.__key.6) #6
  %lock = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @nintendo_hid_probe.__key.8, i16 noundef signext 3) #6
  %call19 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.10, i32 noundef 12, i32 noundef 0) #6
  %rumble_queue = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 35
  %5 = ptrtoint ptr %rumble_queue to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call19, ptr %rumble_queue, align 4
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %if.end7.do.end203_crit_edge, label %do.body24

if.end7.do.end203_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end203

do.body24:                                        ; preds = %if.end7
  %rumble_worker = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 36
  tail call void @__init_work(ptr noundef %rumble_worker, i32 noundef 0) #6
  %6 = ptrtoint ptr %rumble_worker to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %rumble_worker, align 4
  %lockdep_map = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 36, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @nintendo_hid_probe.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry28 = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 36, i32 1
  %7 = ptrtoint ptr %entry28 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry28, ptr %entry28, align 4
  %prev.i = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 36, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry28, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 36, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @joycon_rumble_worker, ptr %func, align 4
  %call.i300 = tail call i32 @hid_open_report(ptr noundef %hdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i300)
  %tobool33.not = icmp eq i32 %call.i300, 0
  br i1 %tobool33.not, label %if.end39, label %do.end37

do.end37:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.13) #9
  br label %err_wq

if.end39:                                         ; preds = %do.body24
  %version = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 12
  %10 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %version, align 4
  %or = or i32 %11, 32768
  store i32 %or, ptr %version, align 4
  %call40 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end47, label %do.end45

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.17) #9
  br label %err_wq

if.end47:                                         ; preds = %if.end39
  %call48 = tail call i32 @hid_hw_open(ptr noundef %hdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end55, label %do.end53

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.20) #9
  br label %err_stop

if.end55:                                         ; preds = %if.end47
  %io_started.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 35
  %12 = ptrtoint ptr %io_started.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %io_started.i, align 4, !range !374
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.70) #9
  br label %hid_device_io_start.exit

if.end.i:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %io_started.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %io_started.i, align 4
  %driver_input_lock.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 17
  tail call void @up(ptr noundef %driver_input_lock.i) #6
  br label %hid_device_io_start.exit

hid_device_io_start.exit:                         ; preds = %if.end.i, %do.end.i
  tail call void @mutex_lock_nested(ptr noundef %output_mutex, i32 noundef 0) #6
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  %product = getelementptr inbounds %struct.hid_device, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %product, align 8
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %hid_device_io_start.exit.if.else_crit_edge [
    i32 8201, label %hid_device_io_start.exit.land.lhs.true_crit_edge
    i32 8206, label %hid_device_io_start.exit.land.lhs.true_crit_edge381
  ]

hid_device_io_start.exit.land.lhs.true_crit_edge381: ; preds = %hid_device_io_start.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

hid_device_io_start.exit.land.lhs.true_crit_edge: ; preds = %hid_device_io_start.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

hid_device_io_start.exit.if.else_crit_edge:       ; preds = %hid_device_io_start.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %hid_device_io_start.exit.land.lhs.true_crit_edge, %hid_device_io_start.exit.land.lhs.true_crit_edge381
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %20 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -32766, ptr %buf.i, align 2
  %usb_ack_match.i = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 15
  %21 = ptrtoint ptr %usb_ack_match.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %usb_ack_match.i, align 1
  %msg_type.i = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 9
  %22 = ptrtoint ptr %msg_type.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %msg_type.i, align 4
  %call.i301 = call fastcc i32 @joycon_hid_send_sync(ptr noundef nonnull %call.i, ptr noundef nonnull %buf.i, i32 noundef 2, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i301)
  %tobool.not.i302 = icmp eq i32 %call.i301, 0
  br i1 %tobool.not.i302, label %do.body64, label %do.body.i

do.body.i:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @joycon_send_usb.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nintendo_hid_probe, %if.then5.i)) #6
          to label %joycon_send_usb.exit [label %if.then5.i], !srcloc !373

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %dev.i303 = getelementptr inbounds %struct.hid_device, ptr %24, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @joycon_send_usb.__UNIQUE_ID_ddebug226, ptr noundef %dev.i303, ptr noundef nonnull @.str.74, i32 noundef %call.i301) #6
  br label %joycon_send_usb.exit

joycon_send_usb.exit:                             ; preds = %if.then5.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %if.else

do.body64:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nintendo_hid_probe.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nintendo_hid_probe, %if.then76)) #6
          to label %do.end80 [label %if.then76], !srcloc !373

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nintendo_hid_probe.__UNIQUE_ID_ddebug266, ptr noundef %dev3, ptr noundef nonnull @.str.22) #6
  br label %do.end80

do.end80:                                         ; preds = %if.then76, %do.body64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i304) #6
  %25 = ptrtoint ptr %buf.i304 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -32765, ptr %buf.i304, align 2
  %26 = ptrtoint ptr %usb_ack_match.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 3, ptr %usb_ack_match.i, align 1
  %27 = ptrtoint ptr %msg_type.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %msg_type.i, align 4
  %call.i308 = call fastcc i32 @joycon_hid_send_sync(ptr noundef nonnull %call.i, ptr noundef nonnull %buf.i304, i32 noundef 2, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i308)
  %tobool.not.i309 = icmp eq i32 %call.i308, 0
  br i1 %tobool.not.i309, label %if.end88, label %do.body.i310

do.body.i310:                                     ; preds = %do.end80
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @joycon_send_usb.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nintendo_hid_probe, %if.then5.i312)) #6
          to label %do.end86 [label %if.then5.i312], !srcloc !373

if.then5.i312:                                    ; preds = %do.body.i310
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %dev.i311 = getelementptr inbounds %struct.hid_device, ptr %29, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @joycon_send_usb.__UNIQUE_ID_ddebug226, ptr noundef %dev.i311, ptr noundef nonnull @.str.74, i32 noundef %call.i308) #6
  br label %do.end86

do.end86:                                         ; preds = %if.then5.i312, %do.body.i310
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i304) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.24, i32 noundef %call.i308) #9
  br label %err_mutex

if.end88:                                         ; preds = %do.end80
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i304) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i314) #6
  %30 = ptrtoint ptr %buf.i314 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -32766, ptr %buf.i314, align 2
  %31 = ptrtoint ptr %usb_ack_match.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 2, ptr %usb_ack_match.i, align 1
  %32 = ptrtoint ptr %msg_type.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %msg_type.i, align 4
  %call.i318 = call fastcc i32 @joycon_hid_send_sync(ptr noundef nonnull %call.i, ptr noundef nonnull %buf.i314, i32 noundef 2, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i318)
  %tobool.not.i319 = icmp eq i32 %call.i318, 0
  br i1 %tobool.not.i319, label %if.end96, label %do.body.i320

do.body.i320:                                     ; preds = %if.end88
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @joycon_send_usb.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nintendo_hid_probe, %if.then5.i322)) #6
          to label %do.end94 [label %if.then5.i322], !srcloc !373

if.then5.i322:                                    ; preds = %do.body.i320
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  %dev.i321 = getelementptr inbounds %struct.hid_device, ptr %34, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @joycon_send_usb.__UNIQUE_ID_ddebug226, ptr noundef %dev.i321, ptr noundef nonnull @.str.74, i32 noundef %call.i318) #6
  br label %do.end94

do.end94:                                         ; preds = %if.then5.i322, %do.body.i320
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i314) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.27, i32 noundef %call.i318) #9
  br label %err_mutex

if.end96:                                         ; preds = %if.end88
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i314) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i324) #6
  %35 = ptrtoint ptr %buf.i324 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 -32764, ptr %buf.i324, align 2
  %36 = ptrtoint ptr %usb_ack_match.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 4, ptr %usb_ack_match.i, align 1
  %37 = ptrtoint ptr %msg_type.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %msg_type.i, align 4
  %call.i328 = call fastcc i32 @joycon_hid_send_sync(ptr noundef nonnull %call.i, ptr noundef nonnull %buf.i324, i32 noundef 2, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i328)
  %tobool.not.i329 = icmp eq i32 %call.i328, 0
  br i1 %tobool.not.i329, label %if.end96.joycon_send_usb.exit333_crit_edge, label %do.body.i330

if.end96.joycon_send_usb.exit333_crit_edge:       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %joycon_send_usb.exit333

do.body.i330:                                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @joycon_send_usb.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nintendo_hid_probe, %if.then5.i332)) #6
          to label %joycon_send_usb.exit333 [label %if.then5.i332], !srcloc !373

if.then5.i332:                                    ; preds = %do.body.i330
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  %dev.i331 = getelementptr inbounds %struct.hid_device, ptr %39, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @joycon_send_usb.__UNIQUE_ID_ddebug226, ptr noundef %dev.i331, ptr noundef nonnull @.str.74, i32 noundef %call.i328) #6
  br label %joycon_send_usb.exit333

joycon_send_usb.exit333:                          ; preds = %if.then5.i332, %do.body.i330, %if.end96.joycon_send_usb.exit333_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i324) #6
  br label %if.end107

if.else:                                          ; preds = %joycon_send_usb.exit, %hid_device_io_start.exit.if.else_crit_edge
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i, align 4
  %product99 = getelementptr inbounds %struct.hid_device, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %product99 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %product99, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8206, i32 %43)
  %cmp100 = icmp eq i32 %43, 8206
  br i1 %cmp100, label %do.end104, label %if.else.if.end107_crit_edge

if.else.if.end107_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

do.end104:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.30) #9
  br label %err_mutex

if.end107:                                        ; preds = %if.else.if.end107_crit_edge, %joycon_send_usb.exit333
  call fastcc void @joycon_request_calibration(ptr noundef nonnull %call.i)
  %call116 = call fastcc i32 @joycon_request_imu_calibration(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end107.if.end123_crit_edge, label %do.end121

if.end107.if.end123_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

do.end121:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.37) #9
  br label %if.end123

if.end123:                                        ; preds = %do.end121, %if.end107.if.end123_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buffer.i) #6
  %44 = call ptr @memset(ptr %buffer.i, i32 0, i32 10)
  %subcmd_id.i = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer.i, i32 0, i32 3
  %45 = ptrtoint ptr %subcmd_id.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 3, ptr %subcmd_id.i, align 1
  %data.i = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer.i, i32 0, i32 4
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 48, ptr %data.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @joycon_set_report_mode.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nintendo_hid_probe, %if.then.i)) #6
          to label %joycon_set_report_mode.exit [label %if.then.i], !srcloc !373

if.then.i:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 4
  %dev.i334 = getelementptr inbounds %struct.hid_device, ptr %48, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @joycon_set_report_mode.__UNIQUE_ID_ddebug234, ptr noundef %dev.i334, ptr noundef nonnull @.str.114) #6
  br label %joycon_set_report_mode.exit

joycon_set_report_mode.exit:                      ; preds = %if.then.i, %if.end123
  %call3.i = call fastcc i32 @joycon_send_subcmd(ptr noundef nonnull %call.i, ptr noundef nonnull %buffer.i, i32 noundef 1, i32 noundef 100) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buffer.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool125.not = icmp eq i32 %call3.i, 0
  br i1 %tobool125.not, label %if.end131, label %do.end129

do.end129:                                        ; preds = %joycon_set_report_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.40, i32 noundef %call3.i) #9
  br label %err_mutex

if.end131:                                        ; preds = %joycon_set_report_mode.exit
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buffer.i336) #6
  %49 = call ptr @memset(ptr %buffer.i336, i32 0, i32 10)
  %subcmd_id.i337 = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer.i336, i32 0, i32 3
  %50 = ptrtoint ptr %subcmd_id.i337 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 72, ptr %subcmd_id.i337, align 1
  %data.i338 = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer.i336, i32 0, i32 4
  %51 = ptrtoint ptr %data.i338 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %data.i338, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @joycon_enable_rumble.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nintendo_hid_probe, %if.then.i340)) #6
          to label %joycon_enable_rumble.exit [label %if.then.i340], !srcloc !373

if.then.i340:                                     ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 4
  %dev.i339 = getelementptr inbounds %struct.hid_device, ptr %53, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @joycon_enable_rumble.__UNIQUE_ID_ddebug235, ptr noundef %dev.i339, ptr noundef nonnull @.str.116) #6
  br label %joycon_enable_rumble.exit

joycon_enable_rumble.exit:                        ; preds = %if.then.i340, %if.end131
  %call3.i341 = call fastcc i32 @joycon_send_subcmd(ptr noundef nonnull %call.i, ptr noundef nonnull %buffer.i336, i32 noundef 1, i32 noundef 25) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buffer.i336) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i341)
  %tobool133.not = icmp eq i32 %call3.i341, 0
  br i1 %tobool133.not, label %if.end139, label %do.end137

do.end137:                                        ; preds = %joycon_enable_rumble.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.43, i32 noundef %call3.i341) #9
  br label %err_mutex

if.end139:                                        ; preds = %joycon_enable_rumble.exit
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buffer.i343) #6
  %54 = call ptr @memset(ptr %buffer.i343, i32 0, i32 10)
  %subcmd_id.i344 = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer.i343, i32 0, i32 3
  %55 = ptrtoint ptr %subcmd_id.i344 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 64, ptr %subcmd_id.i344, align 1
  %data.i345 = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer.i343, i32 0, i32 4
  %56 = ptrtoint ptr %data.i345 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %data.i345, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @joycon_enable_imu.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nintendo_hid_probe, %if.then.i347)) #6
          to label %joycon_enable_imu.exit [label %if.then.i347], !srcloc !373

if.then.i347:                                     ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call.i, align 4
  %dev.i346 = getelementptr inbounds %struct.hid_device, ptr %58, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @joycon_enable_imu.__UNIQUE_ID_ddebug236, ptr noundef %dev.i346, ptr noundef nonnull @.str.118) #6
  br label %joycon_enable_imu.exit

joycon_enable_imu.exit:                           ; preds = %if.then.i347, %if.end139
  %call3.i348 = call fastcc i32 @joycon_send_subcmd(ptr noundef nonnull %call.i, ptr noundef nonnull %buffer.i343, i32 noundef 1, i32 noundef 100) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buffer.i343) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i348)
  %tobool141.not = icmp eq i32 %call3.i348, 0
  br i1 %tobool141.not, label %if.end147, label %do.end145

do.end145:                                        ; preds = %joycon_enable_imu.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.46, i32 noundef %call3.i348) #9
  br label %err_mutex

if.end147:                                        ; preds = %joycon_enable_imu.exit
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %req.i) #6
  %59 = call ptr @memset(ptr %req.i, i32 0, i32 10)
  %subcmd_id.i350 = getelementptr inbounds %struct.joycon_subcmd_request, ptr %req.i, i32 0, i32 3
  %60 = ptrtoint ptr %subcmd_id.i350 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 2, ptr %subcmd_id.i350, align 1
  %call.i351 = call fastcc i32 @joycon_send_subcmd(ptr noundef nonnull %call.i, ptr noundef nonnull %req.i, i32 noundef 0, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i351)
  %tobool.not.i352 = icmp eq i32 %call.i351, 0
  br i1 %tobool.not.i352, label %for.cond.preheader.i, label %do.end.i354

for.cond.preheader.i:                             ; preds = %if.end147
  %uglygep.i = getelementptr i8, ptr %call.i, i32 2056
  %uglygep63.i = getelementptr i8, ptr %call.i, i32 2191
  %61 = call ptr @memcpy(ptr %uglygep.i, ptr %uglygep63.i, i32 6)
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i, align 4
  %dev4.i = getelementptr inbounds %struct.hid_device, ptr %63, i32 0, i32 18
  %64 = ptrtoint ptr %uglygep.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %uglygep.i, align 4
  %conv.i = zext i8 %65 to i32
  %arrayidx8.i = getelementptr %struct.joycon_ctlr, ptr %call.i, i32 0, i32 6, i32 1
  %66 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %67 to i32
  %arrayidx11.i = getelementptr %struct.joycon_ctlr, ptr %call.i, i32 0, i32 6, i32 2
  %68 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx11.i, align 2
  %conv12.i = zext i8 %69 to i32
  %arrayidx14.i = getelementptr %struct.joycon_ctlr, ptr %call.i, i32 0, i32 6, i32 3
  %70 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %71 to i32
  %arrayidx17.i = getelementptr %struct.joycon_ctlr, ptr %call.i, i32 0, i32 6, i32 4
  %72 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx17.i, align 4
  %conv18.i = zext i8 %73 to i32
  %arrayidx20.i = getelementptr %struct.joycon_ctlr, ptr %call.i, i32 0, i32 6, i32 5
  %74 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %75 to i32
  %call22.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev4.i, i32 noundef 3264, ptr noundef nonnull @.str.121, i32 noundef %conv.i, i32 noundef %conv9.i, i32 noundef %conv12.i, i32 noundef %conv15.i, i32 noundef %conv18.i, i32 noundef %conv21.i) #6
  %mac_addr_str.i = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 7
  %76 = ptrtoint ptr %mac_addr_str.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call22.i, ptr %mac_addr_str.i, align 4
  %tobool24.not.i = icmp eq ptr %call22.i, null
  br i1 %tobool24.not.i, label %for.cond.preheader.i.do.end153_crit_edge, label %if.end155

for.cond.preheader.i.do.end153_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end153

do.end.i354:                                      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call.i, align 4
  %dev.i353 = getelementptr inbounds %struct.hid_device, ptr %78, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i353, ptr noundef nonnull @.str.119, i32 noundef %call.i351) #9
  br label %do.end153

do.end153:                                        ; preds = %do.end.i354, %for.cond.preheader.i.do.end153_crit_edge
  %retval.0.i355.ph = phi i32 [ -12, %for.cond.preheader.i.do.end153_crit_edge ], [ %call.i351, %do.end.i354 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %req.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.49, i32 noundef %retval.0.i355.ph) #9
  br label %err_mutex

if.end155:                                        ; preds = %for.cond.preheader.i
  %79 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call.i, align 4
  %dev31.i = getelementptr inbounds %struct.hid_device, ptr %80, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev31.i, ptr noundef nonnull @.str.123, ptr noundef nonnull %call22.i) #9
  %arrayidx34.i = getelementptr %struct.joycon_ctlr, ptr %call.i, i32 0, i32 12, i32 17
  %81 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = zext i8 %82 to i32
  %ctlr_type.i = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 8
  %83 = ptrtoint ptr %ctlr_type.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv35.i, ptr %ctlr_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %req.i) #6
  call void @mutex_unlock(ptr noundef %output_mutex) #6
  %call157 = call fastcc i32 @joycon_leds_create(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.end164, label %do.end162

do.end162:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.52, i32 noundef %call157) #9
  br label %err_close

if.end164:                                        ; preds = %if.end155
  %84 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %supply_config.i) #6
  %86 = getelementptr inbounds %struct.power_supply_config, ptr %supply_config.i, i32 0, i32 2
  %87 = call ptr @memset(ptr %supply_config.i, i32 0, i32 24)
  %88 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call.i, ptr %86, align 4
  %battery_capacity.i = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 29
  %89 = ptrtoint ptr %battery_capacity.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %battery_capacity.i, align 4
  %battery_desc.i = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 28
  %properties.i = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 28, i32 4
  %90 = ptrtoint ptr %properties.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @joycon_battery_props, ptr %properties.i, align 4
  %num_properties.i = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 28, i32 5
  %91 = ptrtoint ptr %num_properties.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 4, ptr %num_properties.i, align 4
  %get_property.i = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 28, i32 6
  %92 = ptrtoint ptr %get_property.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @joycon_battery_get_property, ptr %get_property.i, align 4
  %type.i = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 28, i32 1
  %93 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %type.i, align 4
  %use_for_apm.i = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 28, i32 12
  %94 = ptrtoint ptr %use_for_apm.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %use_for_apm.i, align 4
  %dev.i356 = getelementptr inbounds %struct.hid_device, ptr %85, i32 0, i32 18
  %init_name.i.i = getelementptr inbounds %struct.hid_device, ptr %85, i32 0, i32 18, i32 3
  %95 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %96, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end164.dev_name.exit.i_crit_edge

if.end164.dev_name.exit.i_crit_edge:              ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %dev.i356 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev.i356, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end164.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %98, %if.end.i.i ], [ %96, %if.end164.dev_name.exit.i_crit_edge ]
  %call7.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev.i356, i32 noundef 3264, ptr noundef nonnull @.str.152, ptr noundef %retval.0.i.i) #6
  %99 = ptrtoint ptr %battery_desc.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call7.i, ptr %battery_desc.i, align 4
  %tobool.not.i357 = icmp eq ptr %call7.i, null
  br i1 %tobool.not.i357, label %joycon_power_supply_create.exit.thread, label %if.end.i358

joycon_power_supply_create.exit.thread:           ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %supply_config.i) #6
  br label %do.end170

if.end.i358:                                      ; preds = %dev_name.exit.i
  %call13.i = call ptr @devm_power_supply_register(ptr noundef %dev.i356, ptr noundef %battery_desc.i, ptr noundef nonnull %supply_config.i) #6
  %battery.i = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 27
  %100 = ptrtoint ptr %battery.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call13.i, ptr %battery.i, align 4
  %cmp.i.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then16.i, label %if.end20.i

if.then16.i:                                      ; preds = %if.end.i358
  call void @__sanitizer_cov_trace_pc() #8
  %101 = ptrtoint ptr %call13.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i356, ptr noundef nonnull @.str.153, i32 noundef %101) #9
  br label %joycon_power_supply_create.exit

if.end20.i:                                       ; preds = %if.end.i358
  call void @__sanitizer_cov_trace_pc() #8
  %call23.i = call i32 @power_supply_powers(ptr noundef %call13.i, ptr noundef %dev.i356) #6
  br label %joycon_power_supply_create.exit

joycon_power_supply_create.exit:                  ; preds = %if.end20.i, %if.then16.i
  %retval.0.i359 = phi i32 [ %101, %if.then16.i ], [ %call23.i, %if.end20.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %supply_config.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i359)
  %tobool166.not = icmp eq i32 %retval.0.i359, 0
  br i1 %tobool166.not, label %if.end172, label %joycon_power_supply_create.exit.do.end170_crit_edge

joycon_power_supply_create.exit.do.end170_crit_edge: ; preds = %joycon_power_supply_create.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end170

do.end170:                                        ; preds = %joycon_power_supply_create.exit.do.end170_crit_edge, %joycon_power_supply_create.exit.thread
  %retval.0.i359376 = phi i32 [ -12, %joycon_power_supply_create.exit.thread ], [ %retval.0.i359, %joycon_power_supply_create.exit.do.end170_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.55, i32 noundef %retval.0.i359376) #9
  br label %err_close

if.end172:                                        ; preds = %joycon_power_supply_create.exit
  %102 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %call.i, align 4
  %product.i = getelementptr inbounds %struct.hid_device, ptr %103, i32 0, i32 11
  %104 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %product.i, align 8
  %106 = zext i32 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %105, label %do.end.i362 [
    i32 8201, label %if.end172.sw.epilog.i_crit_edge
    i32 8206, label %sw.bb2.i
    i32 8198, label %sw.bb5.i
    i32 8199, label %sw.bb6.i
  ]

if.end172.sw.epilog.i_crit_edge:                  ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end172
  %107 = ptrtoint ptr %ctlr_type.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ctlr_type.i, align 4
  %109 = zext i32 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %108, label %if.else.i [
    i32 1, label %sw.bb2.i.sw.epilog.i_crit_edge
    i32 3, label %sw.bb2.i.sw.epilog.i_crit_edge382
  ]

sw.bb2.i.sw.epilog.i_crit_edge382:                ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb2.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

do.end.i362:                                      ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i361 = getelementptr inbounds %struct.hid_device, ptr %103, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i361, ptr noundef nonnull @.str.165) #9
  br label %do.end178

sw.epilog.i:                                      ; preds = %sw.bb6.i, %sw.bb5.i, %if.else.i, %sw.bb2.i.sw.epilog.i_crit_edge, %sw.bb2.i.sw.epilog.i_crit_edge382, %if.end172.sw.epilog.i_crit_edge
  %name.0.i = phi ptr [ @.str.163, %sw.bb6.i ], [ @.str.161, %sw.bb5.i ], [ @.str.159, %if.else.i ], [ @.str.155, %if.end172.sw.epilog.i_crit_edge ], [ @.str.157, %sw.bb2.i.sw.epilog.i_crit_edge ], [ @.str.157, %sw.bb2.i.sw.epilog.i_crit_edge382 ]
  %imu_name.0.i = phi ptr [ @.str.164, %sw.bb6.i ], [ @.str.162, %sw.bb5.i ], [ @.str.160, %if.else.i ], [ @.str.156, %if.end172.sw.epilog.i_crit_edge ], [ @.str.158, %sw.bb2.i.sw.epilog.i_crit_edge ], [ @.str.158, %sw.bb2.i.sw.epilog.i_crit_edge382 ]
  %dev7.i = getelementptr inbounds %struct.hid_device, ptr %103, i32 0, i32 18
  %call.i363 = call ptr @devm_input_allocate_device(ptr noundef %dev7.i) #6
  %input.i = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 1
  %110 = ptrtoint ptr %input.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call.i363, ptr %input.i, align 4
  %tobool.not.i364 = icmp eq ptr %call.i363, null
  br i1 %tobool.not.i364, label %sw.epilog.i.do.end178_crit_edge, label %if.end10.i

sw.epilog.i.do.end178_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end178

if.end10.i:                                       ; preds = %sw.epilog.i
  %bus.i = getelementptr inbounds %struct.hid_device, ptr %103, i32 0, i32 8
  %111 = ptrtoint ptr %bus.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %bus.i, align 8
  %id.i = getelementptr inbounds %struct.input_dev, ptr %call.i363, i32 0, i32 3
  %113 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %112, ptr %id.i, align 4
  %vendor.i = getelementptr inbounds %struct.hid_device, ptr %103, i32 0, i32 10
  %114 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %vendor.i, align 4
  %conv.i365 = trunc i32 %115 to i16
  %116 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %input.i, align 4
  %vendor14.i = getelementptr inbounds %struct.input_dev, ptr %117, i32 0, i32 3, i32 1
  %118 = ptrtoint ptr %vendor14.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %conv.i365, ptr %vendor14.i, align 2
  %119 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %product.i, align 8
  %conv16.i = trunc i32 %120 to i16
  %121 = load ptr, ptr %input.i, align 4
  %product19.i = getelementptr inbounds %struct.input_dev, ptr %121, i32 0, i32 3, i32 2
  %122 = ptrtoint ptr %product19.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %conv16.i, ptr %product19.i, align 4
  %version.i = getelementptr inbounds %struct.hid_device, ptr %103, i32 0, i32 12
  %123 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %version.i, align 4
  %conv20.i = trunc i32 %124 to i16
  %125 = load ptr, ptr %input.i, align 4
  %version23.i = getelementptr inbounds %struct.input_dev, ptr %125, i32 0, i32 3, i32 3
  %126 = ptrtoint ptr %version23.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv20.i, ptr %version23.i, align 2
  %127 = ptrtoint ptr %mac_addr_str.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mac_addr_str.i, align 4
  %129 = load ptr, ptr %input.i, align 4
  %uniq.i = getelementptr inbounds %struct.input_dev, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %uniq.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %128, ptr %uniq.i, align 8
  %131 = load ptr, ptr %input.i, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %name.0.i, ptr %131, align 8
  %133 = load ptr, ptr %input.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %133, i32 0, i32 40, i32 8
  %134 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call.i, ptr %driver_data.i.i.i, align 4
  %135 = ptrtoint ptr %ctlr_type.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %ctlr_type.i, align 4
  %137 = zext i32 %136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %136, label %if.end10.i.if.end60.i_crit_edge [
    i32 1, label %if.end10.i.if.then35.i_crit_edge
    i32 3, label %if.end10.i.if.then35.i_crit_edge383
  ]

if.end10.i.if.then35.i_crit_edge383:              ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then35.i

if.end10.i.if.then35.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then35.i

if.end10.i.if.end60.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60.i

if.then35.i:                                      ; preds = %if.end10.i.if.then35.i_crit_edge, %if.end10.i.if.then35.i_crit_edge383
  %138 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %input.i, align 4
  call void @input_set_abs_params(ptr noundef %139, i32 noundef 0, i32 noundef -32767, i32 noundef 32767, i32 noundef 250, i32 noundef 500) #6
  %140 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %input.i, align 4
  call void @input_set_abs_params(ptr noundef %141, i32 noundef 1, i32 noundef -32767, i32 noundef 32767, i32 noundef 250, i32 noundef 500) #6
  %142 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %input.i, align 4
  call void @input_set_capability(ptr noundef %143, i32 noundef 1, i32 noundef 314) #6
  %144 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %input.i, align 4
  call void @input_set_capability(ptr noundef %145, i32 noundef 1, i32 noundef 309) #6
  %146 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %input.i, align 4
  call void @input_set_capability(ptr noundef %147, i32 noundef 1, i32 noundef 317) #6
  %148 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %input.i, align 4
  call void @input_set_capability(ptr noundef %149, i32 noundef 1, i32 noundef 310) #6
  %150 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %input.i, align 4
  call void @input_set_capability(ptr noundef %151, i32 noundef 1, i32 noundef 312) #6
  %152 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %product.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8201, i32 %153)
  %cmp43.not.i = icmp eq i32 %153, 8201
  br i1 %cmp43.not.i, label %if.else56.i, label %if.then35.i.for.cond46.i_crit_edge

if.then35.i.for.cond46.i_crit_edge:               ; preds = %if.then35.i
  br label %for.cond46.i

for.cond46.i:                                     ; preds = %for.cond46.i, %if.then35.i.for.cond46.i_crit_edge
  %i.1.i = phi i32 [ %inc54.i, %for.cond46.i ], [ 0, %if.then35.i.for.cond46.i_crit_edge ]
  %arrayidx47.i = getelementptr [4 x i32], ptr @joycon_dpad_inputs_jc, i32 0, i32 %i.1.i
  %154 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx47.i, align 4
  %156 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %input.i, align 4
  call void @input_set_capability(ptr noundef %157, i32 noundef 1, i32 noundef %155) #6
  %inc54.i = add i32 %i.1.i, 1
  br label %for.cond46.i

if.else56.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #8
  %158 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %input.i, align 4
  call void @input_set_abs_params(ptr noundef %159, i32 noundef 16, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %160 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %input.i, align 4
  call void @input_set_abs_params(ptr noundef %161, i32 noundef 17, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.else56.i, %if.end10.i.if.end60.i_crit_edge
  %162 = ptrtoint ptr %ctlr_type.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %ctlr_type.i, align 4
  %164 = and i32 %163, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %164)
  %switch.i = icmp eq i32 %164, 2
  br i1 %switch.i, label %if.then68.i, label %if.end60.i.if.end81.i_crit_edge

if.end60.i.if.end81.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81.i

if.then68.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  %165 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %input.i, align 4
  call void @input_set_abs_params(ptr noundef %166, i32 noundef 3, i32 noundef -32767, i32 noundef 32767, i32 noundef 250, i32 noundef 500) #6
  %167 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %input.i, align 4
  call void @input_set_abs_params(ptr noundef %168, i32 noundef 4, i32 noundef -32767, i32 noundef 32767, i32 noundef 250, i32 noundef 500) #6
  %169 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %input.i, align 4
  call void @input_set_capability(ptr noundef %170, i32 noundef 1, i32 noundef 315) #6
  %171 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %input.i, align 4
  call void @input_set_capability(ptr noundef %172, i32 noundef 1, i32 noundef 316) #6
  %173 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %input.i, align 4
  call void @input_set_capability(ptr noundef %174, i32 noundef 1, i32 noundef 318) #6
  %175 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %input.i, align 4
  call void @input_set_capability(ptr noundef %176, i32 noundef 1, i32 noundef 304) #6
  %177 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %input.i, align 4
  call void @input_set_capability(ptr noundef %178, i32 noundef 1, i32 noundef 305) #6
  %179 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %input.i, align 4
  call void @input_set_capability(ptr noundef %180, i32 noundef 1, i32 noundef 307) #6
  %181 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %input.i, align 4
  call void @input_set_capability(ptr noundef %182, i32 noundef 1, i32 noundef 308) #6
  %183 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %input.i, align 4
  call void @input_set_capability(ptr noundef %184, i32 noundef 1, i32 noundef 311) #6
  %185 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %input.i, align 4
  call void @input_set_capability(ptr noundef %186, i32 noundef 1, i32 noundef 313) #6
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then68.i, %if.end60.i.if.end81.i_crit_edge
  %187 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %product.i, align 8
  %189 = zext i32 %188 to i64
  call void @__sanitizer_cov_trace_switch(i64 %189, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %188, label %if.end81.i.if.end96.i_crit_edge [
    i32 8198, label %if.end81.i.if.end96.sink.split.i_crit_edge
    i32 8199, label %if.then92.i
  ]

if.end81.i.if.end96.sink.split.i_crit_edge:       ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96.sink.split.i

if.end81.i.if.end96.i_crit_edge:                  ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96.i

if.then92.i:                                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96.sink.split.i

if.end96.sink.split.i:                            ; preds = %if.then92.i, %if.end81.i.if.end96.sink.split.i_crit_edge
  %.sink293.i = phi i32 [ 310, %if.then92.i ], [ 311, %if.end81.i.if.end96.sink.split.i_crit_edge ]
  %.sink292.i = phi i32 [ 312, %if.then92.i ], [ 313, %if.end81.i.if.end96.sink.split.i_crit_edge ]
  %190 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %input.i, align 4
  call void @input_set_capability(ptr noundef %191, i32 noundef 1, i32 noundef %.sink293.i) #6
  %192 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %input.i, align 4
  call void @input_set_capability(ptr noundef %193, i32 noundef 1, i32 noundef %.sink292.i) #6
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.end96.sink.split.i, %if.end81.i.if.end96.i_crit_edge
  %194 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %input.i, align 4
  call void @input_set_capability(ptr noundef %195, i32 noundef 21, i32 noundef 80) #6
  %196 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %input.i, align 4
  %call99.i = call i32 @input_ff_create_memless(ptr noundef %197, ptr noundef null, ptr noundef nonnull @joycon_play_effect) #6
  %rumble_ll_freq.i = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 38
  %198 = ptrtoint ptr %rumble_ll_freq.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 160, ptr %rumble_ll_freq.i, align 4
  %rumble_lh_freq.i = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 39
  %199 = ptrtoint ptr %rumble_lh_freq.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 320, ptr %rumble_lh_freq.i, align 2
  %rumble_rl_freq.i = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 40
  %200 = ptrtoint ptr %rumble_rl_freq.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 160, ptr %rumble_rl_freq.i, align 4
  %rumble_rh_freq.i = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 41
  %201 = ptrtoint ptr %rumble_rh_freq.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 320, ptr %rumble_rh_freq.i, align 2
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %202 = ptrtoint ptr %rumble_ll_freq.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %rumble_ll_freq.i, align 4
  %204 = call i16 @llvm.umax.i16(i16 %203, i16 41) #6
  %205 = call i16 @llvm.umin.i16(i16 %204, i16 626) #6
  %206 = ptrtoint ptr %rumble_ll_freq.i to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 %205, ptr %rumble_ll_freq.i, align 4
  %207 = ptrtoint ptr %rumble_lh_freq.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %rumble_lh_freq.i, align 2
  %209 = call i16 @llvm.umax.i16(i16 %208, i16 82) #6
  %210 = call i16 @llvm.umin.i16(i16 %209, i16 1253) #6
  %211 = ptrtoint ptr %rumble_lh_freq.i to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 %210, ptr %rumble_lh_freq.i, align 2
  %212 = ptrtoint ptr %rumble_rl_freq.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %rumble_rl_freq.i, align 4
  %214 = call i16 @llvm.umax.i16(i16 %213, i16 41) #6
  %215 = call i16 @llvm.umin.i16(i16 %214, i16 626) #6
  %216 = ptrtoint ptr %rumble_rl_freq.i to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 %215, ptr %rumble_rl_freq.i, align 4
  %217 = ptrtoint ptr %rumble_rh_freq.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %rumble_rh_freq.i, align 2
  %219 = call i16 @llvm.umax.i16(i16 %218, i16 82) #6
  %220 = call i16 @llvm.umin.i16(i16 %219, i16 1253) #6
  %221 = ptrtoint ptr %rumble_rh_freq.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 %220, ptr %rumble_rh_freq.i, align 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i.i) #6
  call fastcc void @joycon_set_rumble(ptr noundef nonnull %call.i, i16 noundef zeroext 0, i16 noundef zeroext 0, i1 noundef zeroext false) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %222 = load volatile i32, ptr @jiffies, align 128
  %call101.i = call i32 @jiffies_to_msecs(i32 noundef %222) #6
  %rumble_msecs.i = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 37
  %223 = ptrtoint ptr %rumble_msecs.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %call101.i, ptr %rumble_msecs.i, align 4
  %224 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %input.i, align 4
  %call103.i = call i32 @input_register_device(ptr noundef %225) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103.i)
  %tobool104.not.i = icmp eq i32 %call103.i, 0
  br i1 %tobool104.not.i, label %if.end106.i, label %if.end96.i.do.end178_crit_edge

if.end96.i.do.end178_crit_edge:                   ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end178

if.end106.i:                                      ; preds = %if.end96.i
  %call108.i = call ptr @devm_input_allocate_device(ptr noundef %dev7.i) #6
  %imu_input.i = getelementptr inbounds %struct.joycon_ctlr, ptr %call.i, i32 0, i32 43
  %226 = ptrtoint ptr %imu_input.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %call108.i, ptr %imu_input.i, align 4
  %tobool110.not.i = icmp eq ptr %call108.i, null
  br i1 %tobool110.not.i, label %if.end106.i.do.end178_crit_edge, label %if.end112.i

if.end106.i.do.end178_crit_edge:                  ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end178

if.end112.i:                                      ; preds = %if.end106.i
  %227 = ptrtoint ptr %bus.i to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %bus.i, align 8
  %id115.i = getelementptr inbounds %struct.input_dev, ptr %call108.i, i32 0, i32 3
  %229 = ptrtoint ptr %id115.i to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 %228, ptr %id115.i, align 4
  %230 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %vendor.i, align 4
  %conv118.i = trunc i32 %231 to i16
  %232 = ptrtoint ptr %imu_input.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %imu_input.i, align 4
  %vendor121.i = getelementptr inbounds %struct.input_dev, ptr %233, i32 0, i32 3, i32 1
  %234 = ptrtoint ptr %vendor121.i to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 %conv118.i, ptr %vendor121.i, align 2
  %235 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %product.i, align 8
  %conv123.i = trunc i32 %236 to i16
  %237 = load ptr, ptr %imu_input.i, align 4
  %product126.i = getelementptr inbounds %struct.input_dev, ptr %237, i32 0, i32 3, i32 2
  %238 = ptrtoint ptr %product126.i to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 %conv123.i, ptr %product126.i, align 4
  %239 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %version.i, align 4
  %conv128.i = trunc i32 %240 to i16
  %241 = load ptr, ptr %imu_input.i, align 4
  %version131.i = getelementptr inbounds %struct.input_dev, ptr %241, i32 0, i32 3, i32 3
  %242 = ptrtoint ptr %version131.i to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 %conv128.i, ptr %version131.i, align 2
  %243 = ptrtoint ptr %mac_addr_str.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %mac_addr_str.i, align 4
  %245 = load ptr, ptr %imu_input.i, align 4
  %uniq134.i = getelementptr inbounds %struct.input_dev, ptr %245, i32 0, i32 2
  %246 = ptrtoint ptr %uniq134.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %244, ptr %uniq134.i, align 8
  %247 = load ptr, ptr %imu_input.i, align 4
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %imu_name.0.i, ptr %247, align 8
  %249 = load ptr, ptr %imu_input.i, align 4
  %driver_data.i.i264.i = getelementptr inbounds %struct.input_dev, ptr %249, i32 0, i32 40, i32 8
  %250 = ptrtoint ptr %driver_data.i.i264.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr %call.i, ptr %driver_data.i.i264.i, align 4
  %251 = load ptr, ptr %imu_input.i, align 4
  call void @input_set_abs_params(ptr noundef %251, i32 noundef 0, i32 noundef -32767, i32 noundef 32767, i32 noundef 10, i32 noundef 0) #6
  %252 = ptrtoint ptr %imu_input.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %imu_input.i, align 4
  call void @input_set_abs_params(ptr noundef %253, i32 noundef 1, i32 noundef -32767, i32 noundef 32767, i32 noundef 10, i32 noundef 0) #6
  %254 = ptrtoint ptr %imu_input.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %imu_input.i, align 4
  call void @input_set_abs_params(ptr noundef %255, i32 noundef 2, i32 noundef -32767, i32 noundef 32767, i32 noundef 10, i32 noundef 0) #6
  %256 = ptrtoint ptr %imu_input.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %imu_input.i, align 4
  call void @input_alloc_absinfo(ptr noundef %257) #6
  %absinfo.i.i = getelementptr inbounds %struct.input_dev, ptr %257, i32 0, i32 26
  %258 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i.i367 = icmp eq ptr %259, null
  br i1 %tobool.not.i.i367, label %if.end112.i.input_abs_set_res.exit.i_crit_edge, label %if.then.i.i

if.end112.i.input_abs_set_res.exit.i_crit_edge:   ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %input_abs_set_res.exit.i

if.then.i.i:                                      ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #8
  %resolution.i.i = getelementptr %struct.input_absinfo, ptr %259, i32 0, i32 5
  %260 = ptrtoint ptr %resolution.i.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 4096, ptr %resolution.i.i, align 4
  br label %input_abs_set_res.exit.i

input_abs_set_res.exit.i:                         ; preds = %if.then.i.i, %if.end112.i.input_abs_set_res.exit.i_crit_edge
  %261 = ptrtoint ptr %imu_input.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %imu_input.i, align 4
  call void @input_alloc_absinfo(ptr noundef %262) #6
  %absinfo.i265.i = getelementptr inbounds %struct.input_dev, ptr %262, i32 0, i32 26
  %263 = ptrtoint ptr %absinfo.i265.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %absinfo.i265.i, align 8
  %tobool.not.i266.i = icmp eq ptr %264, null
  br i1 %tobool.not.i266.i, label %input_abs_set_res.exit.i.input_abs_set_res.exit269.i_crit_edge, label %if.then.i268.i

input_abs_set_res.exit.i.input_abs_set_res.exit269.i_crit_edge: ; preds = %input_abs_set_res.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %input_abs_set_res.exit269.i

if.then.i268.i:                                   ; preds = %input_abs_set_res.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %resolution.i267.i = getelementptr %struct.input_absinfo, ptr %264, i32 1, i32 5
  %265 = ptrtoint ptr %resolution.i267.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 4096, ptr %resolution.i267.i, align 4
  br label %input_abs_set_res.exit269.i

input_abs_set_res.exit269.i:                      ; preds = %if.then.i268.i, %input_abs_set_res.exit.i.input_abs_set_res.exit269.i_crit_edge
  %266 = ptrtoint ptr %imu_input.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %imu_input.i, align 4
  call void @input_alloc_absinfo(ptr noundef %267) #6
  %absinfo.i270.i = getelementptr inbounds %struct.input_dev, ptr %267, i32 0, i32 26
  %268 = ptrtoint ptr %absinfo.i270.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %absinfo.i270.i, align 8
  %tobool.not.i271.i = icmp eq ptr %269, null
  br i1 %tobool.not.i271.i, label %input_abs_set_res.exit269.i.input_abs_set_res.exit274.i_crit_edge, label %if.then.i273.i

input_abs_set_res.exit269.i.input_abs_set_res.exit274.i_crit_edge: ; preds = %input_abs_set_res.exit269.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %input_abs_set_res.exit274.i

if.then.i273.i:                                   ; preds = %input_abs_set_res.exit269.i
  call void @__sanitizer_cov_trace_pc() #8
  %resolution.i272.i = getelementptr %struct.input_absinfo, ptr %269, i32 2, i32 5
  %270 = ptrtoint ptr %resolution.i272.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 4096, ptr %resolution.i272.i, align 4
  br label %input_abs_set_res.exit274.i

input_abs_set_res.exit274.i:                      ; preds = %if.then.i273.i, %input_abs_set_res.exit269.i.input_abs_set_res.exit274.i_crit_edge
  %271 = ptrtoint ptr %imu_input.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %imu_input.i, align 4
  call void @input_set_abs_params(ptr noundef %272, i32 noundef 3, i32 noundef -32767000, i32 noundef 32767000, i32 noundef 10, i32 noundef 0) #6
  %273 = ptrtoint ptr %imu_input.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %imu_input.i, align 4
  call void @input_set_abs_params(ptr noundef %274, i32 noundef 4, i32 noundef -32767000, i32 noundef 32767000, i32 noundef 10, i32 noundef 0) #6
  %275 = ptrtoint ptr %imu_input.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %imu_input.i, align 4
  call void @input_set_abs_params(ptr noundef %276, i32 noundef 5, i32 noundef -32767000, i32 noundef 32767000, i32 noundef 10, i32 noundef 0) #6
  %277 = ptrtoint ptr %imu_input.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %imu_input.i, align 4
  call void @input_alloc_absinfo(ptr noundef %278) #6
  %absinfo.i275.i = getelementptr inbounds %struct.input_dev, ptr %278, i32 0, i32 26
  %279 = ptrtoint ptr %absinfo.i275.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %absinfo.i275.i, align 8
  %tobool.not.i276.i = icmp eq ptr %280, null
  br i1 %tobool.not.i276.i, label %input_abs_set_res.exit274.i.input_abs_set_res.exit279.i_crit_edge, label %if.then.i278.i

input_abs_set_res.exit274.i.input_abs_set_res.exit279.i_crit_edge: ; preds = %input_abs_set_res.exit274.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %input_abs_set_res.exit279.i

if.then.i278.i:                                   ; preds = %input_abs_set_res.exit274.i
  call void @__sanitizer_cov_trace_pc() #8
  %resolution.i277.i = getelementptr %struct.input_absinfo, ptr %280, i32 3, i32 5
  %281 = ptrtoint ptr %resolution.i277.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 14247, ptr %resolution.i277.i, align 4
  br label %input_abs_set_res.exit279.i

input_abs_set_res.exit279.i:                      ; preds = %if.then.i278.i, %input_abs_set_res.exit274.i.input_abs_set_res.exit279.i_crit_edge
  %282 = ptrtoint ptr %imu_input.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %imu_input.i, align 4
  call void @input_alloc_absinfo(ptr noundef %283) #6
  %absinfo.i280.i = getelementptr inbounds %struct.input_dev, ptr %283, i32 0, i32 26
  %284 = ptrtoint ptr %absinfo.i280.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %absinfo.i280.i, align 8
  %tobool.not.i281.i = icmp eq ptr %285, null
  br i1 %tobool.not.i281.i, label %input_abs_set_res.exit279.i.input_abs_set_res.exit284.i_crit_edge, label %if.then.i283.i

input_abs_set_res.exit279.i.input_abs_set_res.exit284.i_crit_edge: ; preds = %input_abs_set_res.exit279.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %input_abs_set_res.exit284.i

if.then.i283.i:                                   ; preds = %input_abs_set_res.exit279.i
  call void @__sanitizer_cov_trace_pc() #8
  %resolution.i282.i = getelementptr %struct.input_absinfo, ptr %285, i32 4, i32 5
  %286 = ptrtoint ptr %resolution.i282.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 14247, ptr %resolution.i282.i, align 4
  br label %input_abs_set_res.exit284.i

input_abs_set_res.exit284.i:                      ; preds = %if.then.i283.i, %input_abs_set_res.exit279.i.input_abs_set_res.exit284.i_crit_edge
  %287 = ptrtoint ptr %imu_input.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %imu_input.i, align 4
  call void @input_alloc_absinfo(ptr noundef %288) #6
  %absinfo.i285.i = getelementptr inbounds %struct.input_dev, ptr %288, i32 0, i32 26
  %289 = ptrtoint ptr %absinfo.i285.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %absinfo.i285.i, align 8
  %tobool.not.i286.i = icmp eq ptr %290, null
  br i1 %tobool.not.i286.i, label %input_abs_set_res.exit284.i.joycon_input_create.exit_crit_edge, label %if.then.i288.i

input_abs_set_res.exit284.i.joycon_input_create.exit_crit_edge: ; preds = %input_abs_set_res.exit284.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %joycon_input_create.exit

if.then.i288.i:                                   ; preds = %input_abs_set_res.exit284.i
  call void @__sanitizer_cov_trace_pc() #8
  %resolution.i287.i = getelementptr %struct.input_absinfo, ptr %290, i32 5, i32 5
  %291 = ptrtoint ptr %resolution.i287.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 14247, ptr %resolution.i287.i, align 4
  br label %joycon_input_create.exit

joycon_input_create.exit:                         ; preds = %if.then.i288.i, %input_abs_set_res.exit284.i.joycon_input_create.exit_crit_edge
  %292 = ptrtoint ptr %imu_input.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %imu_input.i, align 4
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %293, i32 0, i32 5
  %294 = ptrtoint ptr %evbit.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %evbit.i, align 4
  %or.i.i = or i32 %295, 16
  store i32 %or.i.i, ptr %evbit.i, align 4
  %296 = load ptr, ptr %imu_input.i, align 4
  %mscbit.i = getelementptr inbounds %struct.input_dev, ptr %296, i32 0, i32 9
  %297 = ptrtoint ptr %mscbit.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %mscbit.i, align 4
  %or.i262.i = or i32 %298, 32
  store i32 %or.i262.i, ptr %mscbit.i, align 4
  %299 = load ptr, ptr %imu_input.i, align 4
  %propbit.i = getelementptr inbounds %struct.input_dev, ptr %299, i32 0, i32 4
  %300 = ptrtoint ptr %propbit.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %propbit.i, align 4
  %or.i263.i = or i32 %301, 64
  store i32 %or.i263.i, ptr %propbit.i, align 4
  %302 = load ptr, ptr %imu_input.i, align 4
  %call156.i = call i32 @input_register_device(ptr noundef %302) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156.i)
  %tobool174.not = icmp eq i32 %call156.i, 0
  br i1 %tobool174.not, label %if.end180, label %joycon_input_create.exit.do.end178_crit_edge

joycon_input_create.exit.do.end178_crit_edge:     ; preds = %joycon_input_create.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end178

do.end178:                                        ; preds = %joycon_input_create.exit.do.end178_crit_edge, %if.end106.i.do.end178_crit_edge, %if.end96.i.do.end178_crit_edge, %sw.epilog.i.do.end178_crit_edge, %do.end.i362
  %retval.0.i368379 = phi i32 [ %call156.i, %joycon_input_create.exit.do.end178_crit_edge ], [ -12, %if.end106.i.do.end178_crit_edge ], [ %call103.i, %if.end96.i.do.end178_crit_edge ], [ -12, %sw.epilog.i.do.end178_crit_edge ], [ -22, %do.end.i362 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.58, i32 noundef %retval.0.i368379) #9
  br label %err_close

if.end180:                                        ; preds = %joycon_input_create.exit
  call void @__sanitizer_cov_trace_pc() #8
  %303 = ptrtoint ptr %ctlr_state to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 1, ptr %ctlr_state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nintendo_hid_probe.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nintendo_hid_probe, %if.then194)) #6
          to label %cleanup [label %if.then194], !srcloc !373

if.then194:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nintendo_hid_probe.__UNIQUE_ID_ddebug267, ptr noundef %dev3, ptr noundef nonnull @.str.60) #6
  br label %cleanup

err_mutex:                                        ; preds = %do.end153, %do.end145, %do.end137, %do.end129, %do.end104, %do.end94, %do.end86
  %ret.0 = phi i32 [ -110, %do.end104 ], [ %call3.i, %do.end129 ], [ %call3.i341, %do.end137 ], [ %call3.i348, %do.end145 ], [ %retval.0.i355.ph, %do.end153 ], [ %call.i308, %do.end86 ], [ %call.i318, %do.end94 ]
  call void @mutex_unlock(ptr noundef %output_mutex) #6
  br label %err_close

err_close:                                        ; preds = %err_mutex, %do.end178, %do.end170, %do.end162
  %ret.1 = phi i32 [ %ret.0, %err_mutex ], [ %call157, %do.end162 ], [ %retval.0.i359376, %do.end170 ], [ %retval.0.i368379, %do.end178 ]
  call void @hid_hw_close(ptr noundef %hdev) #6
  br label %err_stop

err_stop:                                         ; preds = %err_close, %do.end53
  %ret.2 = phi i32 [ %call48, %do.end53 ], [ %ret.1, %err_close ]
  call void @hid_hw_stop(ptr noundef %hdev) #6
  br label %err_wq

err_wq:                                           ; preds = %err_stop, %do.end45, %do.end37
  %ret.3 = phi i32 [ %call.i300, %do.end37 ], [ %call40, %do.end45 ], [ %ret.2, %err_stop ]
  %304 = ptrtoint ptr %rumble_queue to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %rumble_queue, align 4
  call void @destroy_workqueue(ptr noundef %305) #6
  br label %do.end203

do.end203:                                        ; preds = %err_wq, %if.end7.do.end203_crit_edge, %do.end.do.end203_crit_edge
  %ret.4 = phi i32 [ %ret.3, %err_wq ], [ -12, %do.end.do.end203_crit_edge ], [ -12, %if.end7.do.end203_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.62, i32 noundef %ret.4) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end203, %if.then194, %if.end180
  %retval.0 = phi i32 [ %ret.4, %do.end203 ], [ 0, %if.then194 ], [ 0, %if.end180 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nintendo_hid_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nintendo_hid_remove.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nintendo_hid_remove, %if.then)) #6
          to label %do.body5 [label %if.then], !srcloc !373

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nintendo_hid_remove.__UNIQUE_ID_ddebug268, ptr noundef %dev, ptr noundef nonnull @.str.168) #6
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 5
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %ctlr_state = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ctlr_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %ctlr_state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #6
  %rumble_queue = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 35
  %3 = ptrtoint ptr %rumble_queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rumble_queue, align 4
  tail call void @destroy_workqueue(ptr noundef %4) #6
  tail call void @hid_hw_close(ptr noundef %hdev) #6
  tail call void @hid_hw_stop(ptr noundef %hdev) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nintendo_hid_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readnone %report, ptr noundef %raw_data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size)
  %cmp = icmp slt i32 %size, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %output_mutex.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 11
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %output_mutex.i) #6
  br i1 %call.i, label %land.lhs.true.i, label %if.end.if.end36.i_crit_edge, !prof !375

if.end.if.end36.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

land.lhs.true.i:                                  ; preds = %if.end
  %msg_type.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %msg_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_type.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %3, label %land.lhs.true.i.if.end36.i_crit_edge [
    i32 2, label %sw.bb15.i
    i32 1, label %sw.bb.i
  ]

land.lhs.true.i.if.end36.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

sw.bb.i:                                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size)
  %cmp3.i = icmp ult i32 %size, 2
  br i1 %cmp3.i, label %sw.bb.i.if.end36.i_crit_edge, label %if.end.i

sw.bb.i.if.end36.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

if.end.i:                                         ; preds = %sw.bb.i
  %5 = ptrtoint ptr %raw_data to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %raw_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %6)
  %cmp5.i = icmp eq i8 %6, -127
  br i1 %cmp5.i, label %land.lhs.true7.i, label %if.end.i.if.end36.i_crit_edge

if.end.i.if.end36.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

land.lhs.true7.i:                                 ; preds = %if.end.i
  %arrayidx8.i = getelementptr i8, ptr %raw_data, i32 1
  %7 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx8.i, align 1
  %usb_ack_match.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %usb_ack_match.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %usb_ack_match.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp11.i = icmp eq i8 %8, %10
  br i1 %cmp11.i, label %land.lhs.true7.i.if.then31.i_crit_edge, label %land.lhs.true7.i.if.end36.i_crit_edge

land.lhs.true7.i.if.end36.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

land.lhs.true7.i.if.then31.i_crit_edge:           ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31.i

sw.bb15.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %size)
  %cmp16.i = icmp ult i32 %size, 49
  br i1 %cmp16.i, label %sw.bb15.i.if.end36.i_crit_edge, label %lor.lhs.false.i

sw.bb15.i.if.end36.i_crit_edge:                   ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

lor.lhs.false.i:                                  ; preds = %sw.bb15.i
  %11 = ptrtoint ptr %raw_data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %raw_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %12)
  %cmp20.not.i = icmp eq i8 %12, 33
  br i1 %cmp20.not.i, label %sw.epilog.i, label %lor.lhs.false.i.if.end36.i_crit_edge

lor.lhs.false.i.if.end36.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

sw.epilog.i:                                      ; preds = %lor.lhs.false.i
  %id.i = getelementptr inbounds %struct.joycon_input_report, ptr %raw_data, i32 0, i32 7, i32 0, i32 1
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %id.i, align 1
  %subcmd_ack_match.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 16
  %15 = ptrtoint ptr %subcmd_ack_match.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %subcmd_ack_match.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %16)
  %cmp26.i = icmp eq i8 %14, %16
  br i1 %cmp26.i, label %sw.epilog.i.if.then31.i_crit_edge, label %sw.epilog.i.if.end36.i_crit_edge

sw.epilog.i.if.end36.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

sw.epilog.i.if.then31.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31.i

if.then31.i:                                      ; preds = %sw.epilog.i.if.then31.i_crit_edge, %land.lhs.true7.i.if.then31.i_crit_edge
  %input_buf.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 12
  %17 = tail call i32 @llvm.smin.i32(i32 %size, i32 84) #6
  %18 = call ptr @memcpy(ptr %input_buf.i, ptr %raw_data, i32 %17)
  %19 = ptrtoint ptr %msg_type.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %msg_type.i, align 4
  %received_resp.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %received_resp.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %received_resp.i, align 4
  %wait.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %cleanup

if.end36.i:                                       ; preds = %sw.epilog.i.if.end36.i_crit_edge, %lor.lhs.false.i.if.end36.i_crit_edge, %sw.bb15.i.if.end36.i_crit_edge, %land.lhs.true7.i.if.end36.i_crit_edge, %if.end.i.if.end36.i_crit_edge, %sw.bb.i.if.end36.i_crit_edge, %land.lhs.true.i.if.end36.i_crit_edge, %if.end.if.end36.i_crit_edge
  %ctlr_state.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %ctlr_state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ctlr_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp37.i = icmp eq i32 %22, 1
  br i1 %cmp37.i, label %if.then39.i, label %if.end36.i.cleanup_crit_edge

if.end36.i.cleanup_crit_edge:                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then39.i:                                      ; preds = %if.end36.i
  %23 = ptrtoint ptr %raw_data to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %raw_data, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.187)
  switch i8 %24, label %if.then39.i.cleanup_crit_edge [
    i8 33, label %if.then39.i.if.then.i.i_crit_edge
    i8 48, label %if.then39.i.if.then.i.i_crit_edge3
    i8 49, label %if.then39.i.if.then.i.i_crit_edge4
  ]

if.then39.i.if.then.i.i_crit_edge4:               ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.then39.i.if.then.i.i_crit_edge3:               ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.then39.i.if.then.i.i_crit_edge:                ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.then39.i.cleanup_crit_edge:                    ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then39.i.if.then.i.i_crit_edge, %if.then39.i.if.then.i.i_crit_edge3, %if.then39.i.if.then.i.i_crit_edge4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %size)
  %cmp11.i.i = icmp ugt i32 %size, 11
  br i1 %cmp11.i.i, label %if.then13.i.i, label %if.then.i.i.cleanup_crit_edge

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13.i.i:                                    ; preds = %if.then.i.i
  %input.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %input.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %call.i.i.i = tail call i32 @jiffies_to_msecs(i32 noundef %28) #6
  %lock.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 5
  %call4.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i) #6
  %vibrator_report.i.i.i = getelementptr inbounds %struct.joycon_input_report, ptr %raw_data, i32 0, i32 6
  %29 = ptrtoint ptr %vibrator_report.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %vibrator_report.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i.i.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i.i.i, label %if.then13.i.i.if.end23.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then13.i.i.if.end23.i.i.i_crit_edge:           ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then13.i.i
  %rumble_msecs.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 37
  %31 = ptrtoint ptr %rumble_msecs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rumble_msecs.i.i.i, align 4
  %sub.i.i.i = sub i32 %call.i.i.i, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %sub.i.i.i)
  %cmp8.i.i.i = icmp ugt i32 %sub.i.i.i, 49
  br i1 %cmp8.i.i.i, label %land.lhs.true10.i.i.i, label %land.lhs.true.i.i.i.if.end23.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end23.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i.i.i

land.lhs.true10.i.i.i:                            ; preds = %land.lhs.true.i.i.i
  %rumble_queue_head.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 33
  %33 = ptrtoint ptr %rumble_queue_head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rumble_queue_head.i.i.i, align 4
  %rumble_queue_tail.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 34
  %35 = ptrtoint ptr %rumble_queue_tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rumble_queue_tail.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp11.not.i.i.i = icmp eq i32 %34, %36
  br i1 %cmp11.not.i.i.i, label %lor.lhs.false.i.i.i, label %land.lhs.true10.i.i.i.if.then.i.i.i_crit_edge

land.lhs.true10.i.i.i.if.then.i.i.i_crit_edge:    ; preds = %land.lhs.true10.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true10.i.i.i
  %rumble_zero_countdown.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 42
  %37 = ptrtoint ptr %rumble_zero_countdown.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %rumble_zero_countdown.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp14.not.i.i.i = icmp eq i16 %38, 0
  br i1 %cmp14.not.i.i.i, label %lor.lhs.false.i.i.i.if.end23.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge

lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

lor.lhs.false.i.i.i.if.end23.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, %land.lhs.true10.i.i.i.if.then.i.i.i_crit_edge
  %rumble_zero_countdown16.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 42
  %39 = ptrtoint ptr %rumble_zero_countdown16.i.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %rumble_zero_countdown16.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %cmp18.not.i.i.i = icmp eq i16 %40, 0
  br i1 %cmp18.not.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, label %if.then20.i.i.i

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

if.then20.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i.i.i = add i16 %40, -1
  %41 = ptrtoint ptr %rumble_zero_countdown16.i.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %dec.i.i.i, ptr %rumble_zero_countdown16.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then20.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %rumble_queue.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 35
  %42 = ptrtoint ptr %rumble_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rumble_queue.i.i.i, align 4
  %rumble_worker.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 36
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %rumble_worker.i.i.i) #6
  br label %if.end23.i.i.i

if.end23.i.i.i:                                   ; preds = %if.end.i.i.i, %lor.lhs.false.i.i.i.if.end23.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.end23.i.i.i_crit_edge, %if.then13.i.i.if.end23.i.i.i_crit_edge
  %bat_con.i.i.i = getelementptr inbounds %struct.joycon_input_report, ptr %raw_data, i32 0, i32 2
  %44 = ptrtoint ptr %bat_con.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bat_con.i.i.i, align 1
  %and.i.i.i = and i8 %45, 1
  %host_powered.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 31
  %46 = ptrtoint ptr %host_powered.i.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %and.i.i.i, ptr %host_powered.i.i.i, align 2
  %battery_charging.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 30
  %and27.i.i.i = lshr i8 %45, 4
  %and27.lobit.i.i.i = and i8 %and27.i.i.i, 1
  %47 = ptrtoint ptr %battery_charging.i.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %and27.lobit.i.i.i, ptr %battery_charging.i.i.i, align 1
  %48 = lshr i8 %45, 5
  %conv32.i.i.i = zext i8 %48 to i32
  %49 = zext i32 %conv32.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %conv32.i.i.i, label %sw.default.i.i.i [
    i32 0, label %sw.bb.i.i.i
    i32 1, label %sw.bb33.i.i.i
    i32 2, label %sw.bb35.i.i.i
    i32 3, label %sw.bb37.i.i.i
    i32 4, label %sw.bb39.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %battery_capacity.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 29
  %50 = ptrtoint ptr %battery_capacity.i.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %battery_capacity.i.i.i, align 4
  br label %sw.epilog.i.i.i

sw.bb33.i.i.i:                                    ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %battery_capacity34.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 29
  %51 = ptrtoint ptr %battery_capacity34.i.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 2, ptr %battery_capacity34.i.i.i, align 4
  br label %sw.epilog.i.i.i

sw.bb35.i.i.i:                                    ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %battery_capacity36.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 29
  %52 = ptrtoint ptr %battery_capacity36.i.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 3, ptr %battery_capacity36.i.i.i, align 4
  br label %sw.epilog.i.i.i

sw.bb37.i.i.i:                                    ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %battery_capacity38.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 29
  %53 = ptrtoint ptr %battery_capacity38.i.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 4, ptr %battery_capacity38.i.i.i, align 4
  br label %sw.epilog.i.i.i

sw.bb39.i.i.i:                                    ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %battery_capacity40.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 29
  %54 = ptrtoint ptr %battery_capacity40.i.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 5, ptr %battery_capacity40.i.i.i, align 4
  br label %sw.epilog.i.i.i

sw.default.i.i.i:                                 ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %battery_capacity41.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 29
  %55 = ptrtoint ptr %battery_capacity41.i.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %battery_capacity41.i.i.i, align 4
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %dev45.i.i.i = getelementptr inbounds %struct.hid_device, ptr %57, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev45.i.i.i, ptr noundef nonnull @.str.169) #9
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %sw.default.i.i.i, %sw.bb39.i.i.i, %sw.bb37.i.i.i, %sw.bb35.i.i.i, %sw.bb33.i.i.i, %sw.bb.i.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i, i32 noundef %call4.i.i.i) #6
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %button_status.i.i.i = getelementptr inbounds %struct.joycon_input_report, ptr %raw_data, i32 0, i32 3
  %call48.i.i.i = tail call i32 @hid_field_extract(ptr noundef %59, ptr noundef %button_status.i.i.i, i32 noundef 0, i32 noundef 24) #6
  %ctlr_type.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 8
  %60 = ptrtoint ptr %ctlr_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ctlr_type.i.i.i, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %61, label %sw.epilog.i.i.i.if.end114.i.i.i_crit_edge [
    i32 1, label %sw.epilog.i.i.i.if.then55.i.i.i_crit_edge
    i32 3, label %sw.epilog.i.i.i.if.then55.i.i.i_crit_edge5
  ]

sw.epilog.i.i.i.if.then55.i.i.i_crit_edge5:       ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55.i.i.i

sw.epilog.i.i.i.if.then55.i.i.i_crit_edge:        ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55.i.i.i

sw.epilog.i.i.i.if.end114.i.i.i_crit_edge:        ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114.i.i.i

if.then55.i.i.i:                                  ; preds = %sw.epilog.i.i.i.if.then55.i.i.i_crit_edge, %sw.epilog.i.i.i.if.then55.i.i.i_crit_edge5
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %left_stick.i.i.i = getelementptr inbounds %struct.joycon_input_report, ptr %raw_data, i32 0, i32 4
  %call58.i.i.i = tail call i32 @hid_field_extract(ptr noundef %64, ptr noundef %left_stick.i.i.i, i32 noundef 0, i32 noundef 12) #6
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr %struct.joycon_input_report, ptr %raw_data, i32 0, i32 4, i32 1
  %call63.i.i.i = tail call i32 @hid_field_extract(ptr noundef %66, ptr noundef %add.ptr.i.i.i, i32 noundef 4, i32 noundef 12) #6
  %conv65.i.i.i = and i32 %call58.i.i.i, 65535
  %center1.i.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 19, i32 2
  %67 = ptrtoint ptr %center1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %center1.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %conv65.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %68, %conv65.i.i.i
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.else.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then55.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %left_stick_cal_x.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 19
  %69 = ptrtoint ptr %left_stick_cal_x.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %left_stick_cal_x.i.i.i, align 4
  %sub.i.i.i.i = sub i32 %conv65.i.i.i, %68
  %mul.i.i.i.i = mul i32 %sub.i.i.i.i, 32767
  %sub4.i.i.i.i = sub i32 %70, %68
  %div.i.i.i.i = sdiv i32 %mul.i.i.i.i, %sub4.i.i.i.i
  br label %joycon_map_stick_val.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then55.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %min2.i.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 19, i32 1
  %71 = ptrtoint ptr %min2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %min2.i.i.i.i, align 4
  %sub5.i.i.i.i = sub i32 %68, %conv65.i.i.i
  %mul6.i.i.i.i = mul i32 %sub5.i.i.i.i, -32767
  %sub7.i.i.i.i = sub i32 %68, %72
  %div8.i.i.i.i = sdiv i32 %mul6.i.i.i.i, %sub7.i.i.i.i
  br label %joycon_map_stick_val.exit.i.i.i

joycon_map_stick_val.exit.i.i.i:                  ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i
  %new_val.0.i.i.i.i = phi i32 [ %div.i.i.i.i, %if.then.i.i.i.i ], [ %div8.i.i.i.i, %if.else.i.i.i.i ]
  %73 = tail call i32 @llvm.smax.i32(i32 %new_val.0.i.i.i.i, i32 -32767) #6
  %74 = tail call i32 @llvm.smin.i32(i32 %73, i32 32767) #6
  %conv67.i.i.i = and i32 %call63.i.i.i, 65535
  %center1.i308.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 20, i32 2
  %75 = ptrtoint ptr %center1.i308.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %center1.i308.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %conv67.i.i.i)
  %cmp.i309.i.i.i = icmp slt i32 %76, %conv67.i.i.i
  br i1 %cmp.i309.i.i.i, label %if.then.i314.i.i.i, label %if.else.i320.i.i.i

if.then.i314.i.i.i:                               ; preds = %joycon_map_stick_val.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %left_stick_cal_y.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 20
  %77 = ptrtoint ptr %left_stick_cal_y.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %left_stick_cal_y.i.i.i, align 4
  %sub.i310.i.i.i = sub i32 %conv67.i.i.i, %76
  %mul.i311.i.i.i = mul i32 %sub.i310.i.i.i, 32767
  %sub4.i312.i.i.i = sub i32 %78, %76
  %div.i313.i.i.i = sdiv i32 %mul.i311.i.i.i, %sub4.i312.i.i.i
  br label %joycon_map_stick_val.exit322.i.i.i

if.else.i320.i.i.i:                               ; preds = %joycon_map_stick_val.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %min2.i315.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 20, i32 1
  %79 = ptrtoint ptr %min2.i315.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %min2.i315.i.i.i, align 4
  %sub5.i316.i.i.i = sub i32 %76, %conv67.i.i.i
  %mul6.i317.i.i.i = mul i32 %sub5.i316.i.i.i, -32767
  %sub7.i318.i.i.i = sub i32 %76, %80
  %div8.i319.i.i.i = sdiv i32 %mul6.i317.i.i.i, %sub7.i318.i.i.i
  br label %joycon_map_stick_val.exit322.i.i.i

joycon_map_stick_val.exit322.i.i.i:               ; preds = %if.else.i320.i.i.i, %if.then.i314.i.i.i
  %new_val.0.i321.i.i.i = phi i32 [ %div.i313.i.i.i, %if.then.i314.i.i.i ], [ %div8.i319.i.i.i, %if.else.i320.i.i.i ]
  %81 = tail call i32 @llvm.smax.i32(i32 %new_val.0.i321.i.i.i, i32 -32767) #6
  %82 = tail call i32 @llvm.smin.i32(i32 %81, i32 32767) #6
  %sub69.i.i.i = sub nsw i32 0, %82
  tail call void @input_event(ptr noundef %27, i32 noundef 3, i32 noundef 0, i32 noundef %74) #6
  tail call void @input_event(ptr noundef %27, i32 noundef 3, i32 noundef 1, i32 noundef %sub69.i.i.i) #6
  %and70.i.i.i = lshr i32 %call48.i.i.i, 22
  %and70.lobit.i.i.i = and i32 %and70.i.i.i, 1
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 310, i32 noundef %and70.lobit.i.i.i) #6
  %and71.i.i.i = lshr i32 %call48.i.i.i, 23
  %and71.lobit.i.i.i = and i32 %and71.i.i.i, 1
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 312, i32 noundef %and71.lobit.i.i.i) #6
  %and72.i.i.i = lshr i32 %call48.i.i.i, 8
  %and72.lobit.i.i.i = and i32 %and72.i.i.i, 1
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 314, i32 noundef %and72.lobit.i.i.i) #6
  %and73.i.i.i = lshr i32 %call48.i.i.i, 11
  %and73.lobit.i.i.i = and i32 %and73.i.i.i, 1
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 317, i32 noundef %and73.lobit.i.i.i) #6
  %and74.i.i.i = lshr i32 %call48.i.i.i, 13
  %and74.lobit.i.i.i = and i32 %and74.i.i.i, 1
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 309, i32 noundef %and74.lobit.i.i.i) #6
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 4
  %product.i.i.i = getelementptr inbounds %struct.hid_device, ptr %84, i32 0, i32 11
  %85 = ptrtoint ptr %product.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %product.i.i.i, align 8
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %86, label %if.else.i.i.i [
    i32 8198, label %joycon_map_stick_val.exit322.i.i.i.if.then88.i.i.i_crit_edge
    i32 8199, label %joycon_map_stick_val.exit322.i.i.i.if.then88.i.i.i_crit_edge6
    i32 8206, label %joycon_map_stick_val.exit322.i.i.i.if.then88.i.i.i_crit_edge7
  ]

joycon_map_stick_val.exit322.i.i.i.if.then88.i.i.i_crit_edge7: ; preds = %joycon_map_stick_val.exit322.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then88.i.i.i

joycon_map_stick_val.exit322.i.i.i.if.then88.i.i.i_crit_edge6: ; preds = %joycon_map_stick_val.exit322.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then88.i.i.i

joycon_map_stick_val.exit322.i.i.i.if.then88.i.i.i_crit_edge: ; preds = %joycon_map_stick_val.exit322.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then88.i.i.i

if.then88.i.i.i:                                  ; preds = %joycon_map_stick_val.exit322.i.i.i.if.then88.i.i.i_crit_edge, %joycon_map_stick_val.exit322.i.i.i.if.then88.i.i.i_crit_edge6, %joycon_map_stick_val.exit322.i.i.i.if.then88.i.i.i_crit_edge7
  %and89.i.i.i = lshr i32 %call48.i.i.i, 21
  %and89.lobit.i.i.i = and i32 %and89.i.i.i, 1
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 311, i32 noundef %and89.lobit.i.i.i) #6
  %and90.i.i.i = lshr i32 %call48.i.i.i, 20
  %and90.lobit.i.i.i = and i32 %and90.i.i.i, 1
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 313, i32 noundef %and90.lobit.i.i.i) #6
  %and91.i.i.i = lshr i32 %call48.i.i.i, 16
  %and91.lobit.i.i.i = and i32 %and91.i.i.i, 1
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 545, i32 noundef %and91.lobit.i.i.i) #6
  %and92.i.i.i = lshr i32 %call48.i.i.i, 17
  %and92.lobit.i.i.i = and i32 %and92.i.i.i, 1
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 544, i32 noundef %and92.lobit.i.i.i) #6
  %and93.i.i.i = lshr i32 %call48.i.i.i, 18
  %and93.lobit.i.i.i = and i32 %and93.i.i.i, 1
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 547, i32 noundef %and93.lobit.i.i.i) #6
  %and94.i.i.i = lshr i32 %call48.i.i.i, 19
  %and94.lobit.i.i.i = and i32 %and94.i.i.i, 1
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 546, i32 noundef %and94.lobit.i.i.i) #6
  br label %if.end114.i.i.i

if.else.i.i.i:                                    ; preds = %joycon_map_stick_val.exit322.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and95.i.i.i = and i32 %call48.i.i.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i.i.i)
  %tobool96.not.i.i.i = icmp eq i32 %and95.i.i.i, 0
  %and99.i.i.i = lshr i32 %call48.i.i.i, 18
  %and99.lobit.i.i.i = and i32 %and99.i.i.i, 1
  %hatx.0.i.i.i = select i1 %tobool96.not.i.i.i, i32 %and99.lobit.i.i.i, i32 -1
  tail call void @input_event(ptr noundef %27, i32 noundef 3, i32 noundef 16, i32 noundef %hatx.0.i.i.i) #6
  %and104.i.i.i = and i32 %call48.i.i.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104.i.i.i)
  %tobool105.not.i.i.i = icmp eq i32 %and104.i.i.i, 0
  %and108.i.i.i = lshr i32 %call48.i.i.i, 16
  %and108.lobit.i.i.i = and i32 %and108.i.i.i, 1
  %haty.0.i.i.i = select i1 %tobool105.not.i.i.i, i32 %and108.lobit.i.i.i, i32 -1
  tail call void @input_event(ptr noundef %27, i32 noundef 3, i32 noundef 17, i32 noundef %haty.0.i.i.i) #6
  br label %if.end114.i.i.i

if.end114.i.i.i:                                  ; preds = %if.else.i.i.i, %if.then88.i.i.i, %sw.epilog.i.i.i.if.end114.i.i.i_crit_edge
  %88 = ptrtoint ptr %ctlr_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ctlr_type.i.i.i, align 4
  %90 = and i32 %89, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %90)
  %switch.i.i.i = icmp eq i32 %90, 2
  br i1 %switch.i.i.i, label %if.then122.i.i.i, label %if.end114.i.i.i.if.end169.i.i.i_crit_edge

if.end114.i.i.i.if.end169.i.i.i_crit_edge:        ; preds = %if.end114.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end169.i.i.i

if.then122.i.i.i:                                 ; preds = %if.end114.i.i.i
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 4
  %right_stick.i.i.i = getelementptr inbounds %struct.joycon_input_report, ptr %raw_data, i32 0, i32 5
  %call129.i.i.i = tail call i32 @hid_field_extract(ptr noundef %92, ptr noundef %right_stick.i.i.i, i32 noundef 0, i32 noundef 12) #6
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  %add.ptr134.i.i.i = getelementptr %struct.joycon_input_report, ptr %raw_data, i32 0, i32 5, i32 1
  %call135.i.i.i = tail call i32 @hid_field_extract(ptr noundef %94, ptr noundef %add.ptr134.i.i.i, i32 noundef 4, i32 noundef 12) #6
  %conv137.i.i.i = and i32 %call129.i.i.i, 65535
  %center1.i343.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 21, i32 2
  %95 = ptrtoint ptr %center1.i343.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %center1.i343.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %conv137.i.i.i)
  %cmp.i344.i.i.i = icmp slt i32 %96, %conv137.i.i.i
  br i1 %cmp.i344.i.i.i, label %if.then.i349.i.i.i, label %if.else.i355.i.i.i

if.then.i349.i.i.i:                               ; preds = %if.then122.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %right_stick_cal_x.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 21
  %97 = ptrtoint ptr %right_stick_cal_x.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %right_stick_cal_x.i.i.i, align 4
  %sub.i345.i.i.i = sub i32 %conv137.i.i.i, %96
  %mul.i346.i.i.i = mul i32 %sub.i345.i.i.i, 32767
  %sub4.i347.i.i.i = sub i32 %98, %96
  %div.i348.i.i.i = sdiv i32 %mul.i346.i.i.i, %sub4.i347.i.i.i
  br label %joycon_map_stick_val.exit357.i.i.i

if.else.i355.i.i.i:                               ; preds = %if.then122.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %min2.i350.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 21, i32 1
  %99 = ptrtoint ptr %min2.i350.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %min2.i350.i.i.i, align 4
  %sub5.i351.i.i.i = sub i32 %96, %conv137.i.i.i
  %mul6.i352.i.i.i = mul i32 %sub5.i351.i.i.i, -32767
  %sub7.i353.i.i.i = sub i32 %96, %100
  %div8.i354.i.i.i = sdiv i32 %mul6.i352.i.i.i, %sub7.i353.i.i.i
  br label %joycon_map_stick_val.exit357.i.i.i

joycon_map_stick_val.exit357.i.i.i:               ; preds = %if.else.i355.i.i.i, %if.then.i349.i.i.i
  %new_val.0.i356.i.i.i = phi i32 [ %div.i348.i.i.i, %if.then.i349.i.i.i ], [ %div8.i354.i.i.i, %if.else.i355.i.i.i ]
  %101 = tail call i32 @llvm.smax.i32(i32 %new_val.0.i356.i.i.i, i32 -32767) #6
  %102 = tail call i32 @llvm.smin.i32(i32 %101, i32 32767) #6
  %conv139.i.i.i = and i32 %call135.i.i.i, 65535
  %center1.i358.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 22, i32 2
  %103 = ptrtoint ptr %center1.i358.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %center1.i358.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %conv139.i.i.i)
  %cmp.i359.i.i.i = icmp slt i32 %104, %conv139.i.i.i
  br i1 %cmp.i359.i.i.i, label %if.then.i364.i.i.i, label %if.else.i370.i.i.i

if.then.i364.i.i.i:                               ; preds = %joycon_map_stick_val.exit357.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %right_stick_cal_y.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 22
  %105 = ptrtoint ptr %right_stick_cal_y.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %right_stick_cal_y.i.i.i, align 4
  %sub.i360.i.i.i = sub i32 %conv139.i.i.i, %104
  %mul.i361.i.i.i = mul i32 %sub.i360.i.i.i, 32767
  %sub4.i362.i.i.i = sub i32 %106, %104
  %div.i363.i.i.i = sdiv i32 %mul.i361.i.i.i, %sub4.i362.i.i.i
  br label %joycon_map_stick_val.exit372.i.i.i

if.else.i370.i.i.i:                               ; preds = %joycon_map_stick_val.exit357.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %min2.i365.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 22, i32 1
  %107 = ptrtoint ptr %min2.i365.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %min2.i365.i.i.i, align 4
  %sub5.i366.i.i.i = sub i32 %104, %conv139.i.i.i
  %mul6.i367.i.i.i = mul i32 %sub5.i366.i.i.i, -32767
  %sub7.i368.i.i.i = sub i32 %104, %108
  %div8.i369.i.i.i = sdiv i32 %mul6.i367.i.i.i, %sub7.i368.i.i.i
  br label %joycon_map_stick_val.exit372.i.i.i

joycon_map_stick_val.exit372.i.i.i:               ; preds = %if.else.i370.i.i.i, %if.then.i364.i.i.i
  %new_val.0.i371.i.i.i = phi i32 [ %div.i363.i.i.i, %if.then.i364.i.i.i ], [ %div8.i369.i.i.i, %if.else.i370.i.i.i ]
  %109 = tail call i32 @llvm.smax.i32(i32 %new_val.0.i371.i.i.i, i32 -32767) #6
  %110 = tail call i32 @llvm.smin.i32(i32 %109, i32 32767) #6
  %sub141.i.i.i = sub nsw i32 0, %110
  tail call void @input_event(ptr noundef %27, i32 noundef 3, i32 noundef 3, i32 noundef %102) #6
  tail call void @input_event(ptr noundef %27, i32 noundef 3, i32 noundef 4, i32 noundef %sub141.i.i.i) #6
  %and142.i.i.i = lshr i32 %call48.i.i.i, 6
  %and142.lobit.i.i.i = and i32 %and142.i.i.i, 1
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 311, i32 noundef %and142.lobit.i.i.i) #6
  %and143.i.i.i = lshr i32 %call48.i.i.i, 7
  %and143.lobit.i.i.i = and i32 %and143.i.i.i, 1
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 313, i32 noundef %and143.lobit.i.i.i) #6
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %1, align 4
  %product145.i.i.i = getelementptr inbounds %struct.hid_device, ptr %112, i32 0, i32 11
  %113 = ptrtoint ptr %product145.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %product145.i.i.i, align 8
  %115 = zext i32 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %114, label %joycon_map_stick_val.exit372.i.i.i.if.end161.i.i.i_crit_edge [
    i32 8198, label %joycon_map_stick_val.exit372.i.i.i.if.then158.i.i.i_crit_edge
    i32 8199, label %joycon_map_stick_val.exit372.i.i.i.if.then158.i.i.i_crit_edge8
    i32 8206, label %joycon_map_stick_val.exit372.i.i.i.if.then158.i.i.i_crit_edge9
  ]

joycon_map_stick_val.exit372.i.i.i.if.then158.i.i.i_crit_edge9: ; preds = %joycon_map_stick_val.exit372.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then158.i.i.i

joycon_map_stick_val.exit372.i.i.i.if.then158.i.i.i_crit_edge8: ; preds = %joycon_map_stick_val.exit372.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then158.i.i.i

joycon_map_stick_val.exit372.i.i.i.if.then158.i.i.i_crit_edge: ; preds = %joycon_map_stick_val.exit372.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then158.i.i.i

joycon_map_stick_val.exit372.i.i.i.if.end161.i.i.i_crit_edge: ; preds = %joycon_map_stick_val.exit372.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end161.i.i.i

if.then158.i.i.i:                                 ; preds = %joycon_map_stick_val.exit372.i.i.i.if.then158.i.i.i_crit_edge, %joycon_map_stick_val.exit372.i.i.i.if.then158.i.i.i_crit_edge8, %joycon_map_stick_val.exit372.i.i.i.if.then158.i.i.i_crit_edge9
  %and159.i.i.i = lshr i32 %call48.i.i.i, 5
  %and159.lobit.i.i.i = and i32 %and159.i.i.i, 1
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 310, i32 noundef %and159.lobit.i.i.i) #6
  %and160.i.i.i = lshr i32 %call48.i.i.i, 4
  %and160.lobit.i.i.i = and i32 %and160.i.i.i, 1
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 312, i32 noundef %and160.lobit.i.i.i) #6
  br label %if.end161.i.i.i

if.end161.i.i.i:                                  ; preds = %if.then158.i.i.i, %joycon_map_stick_val.exit372.i.i.i.if.end161.i.i.i_crit_edge
  %and162.i.i.i = lshr i32 %call48.i.i.i, 9
  %and162.lobit.i.i.i = and i32 %and162.i.i.i, 1
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 315, i32 noundef %and162.lobit.i.i.i) #6
  %and163.i.i.i = lshr i32 %call48.i.i.i, 10
  %and163.lobit.i.i.i = and i32 %and163.i.i.i, 1
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 318, i32 noundef %and163.lobit.i.i.i) #6
  %and164.i.i.i = lshr i32 %call48.i.i.i, 12
  %and164.lobit.i.i.i = and i32 %and164.i.i.i, 1
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 316, i32 noundef %and164.lobit.i.i.i) #6
  %and165.i.i.i = and i32 %call48.i.i.i, 1
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 308, i32 noundef %and165.i.i.i) #6
  %and166.i.i.i = lshr i32 %call48.i.i.i, 1
  %and166.lobit.i.i.i = and i32 %and166.i.i.i, 1
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 307, i32 noundef %and166.lobit.i.i.i) #6
  %and167.i.i.i = lshr i32 %call48.i.i.i, 3
  %and167.lobit.i.i.i = and i32 %and167.i.i.i, 1
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 305, i32 noundef %and167.lobit.i.i.i) #6
  %and168.i.i.i = lshr i32 %call48.i.i.i, 2
  %and168.lobit.i.i.i = and i32 %and168.i.i.i, 1
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef 304, i32 noundef %and168.lobit.i.i.i) #6
  br label %if.end169.i.i.i

if.end169.i.i.i:                                  ; preds = %if.end161.i.i.i, %if.end114.i.i.i.if.end169.i.i.i_crit_edge
  tail call void @input_event(ptr noundef %27, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %call170.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %output_mutex.i) #6
  br i1 %call170.i.i.i, label %do.body175.i.i.i, label %if.end169.i.i.i.if.end189.i.i.i_crit_edge, !prof !375

if.end169.i.i.i.if.end189.i.i.i_crit_edge:        ; preds = %if.end169.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end189.i.i.i

do.body175.i.i.i:                                 ; preds = %if.end169.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call183.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i) #6
  %received_input_report.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 17
  %116 = ptrtoint ptr %received_input_report.i.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %received_input_report.i.i.i, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i, i32 noundef %call183.i.i.i) #6
  %wait.i.i.i = getelementptr inbounds %struct.joycon_ctlr, ptr %1, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %wait.i.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end189.i.i.i

if.end189.i.i.i:                                  ; preds = %do.body175.i.i.i, %if.end169.i.i.i.if.end189.i.i.i_crit_edge
  %117 = ptrtoint ptr %raw_data to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %raw_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %118)
  %cmp191.i.i.i = icmp eq i8 %118, 48
  br i1 %cmp191.i.i.i, label %if.then193.i.i.i, label %if.end189.i.i.i.cleanup_crit_edge

if.end189.i.i.i.cleanup_crit_edge:                ; preds = %if.end189.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then193.i.i.i:                                 ; preds = %if.end189.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @joycon_parse_imu_report(ptr noundef %1, ptr noundef %raw_data) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then193.i.i.i, %if.end189.i.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge, %if.then39.i.cleanup_crit_edge, %if.end36.i.cleanup_crit_edge, %if.then31.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %if.then31.i ], [ 0, %if.end36.i.cleanup_crit_edge ], [ 0, %if.then39.i.cleanup_crit_edge ], [ 0, %if.then.i.i.cleanup_crit_edge ], [ 0, %if.end189.i.i.i.cleanup_crit_edge ], [ 0, %if.then193.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @joycon_rumble_worker(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2548
  %output_mutex = getelementptr i8, ptr %work, i32 -468
  %lock = getelementptr i8, ptr %work, i32 -536
  %ctlr_state = getelementptr i8, ptr %work, i32 -540
  %rumble_msecs = getelementptr i8, ptr %work, i32 44
  %rumble_queue_tail = getelementptr i8, ptr %work, i32 -8
  %rumble_queue_head = getelementptr i8, ptr %work, i32 -12
  br label %while.body

while.body:                                       ; preds = %if.then21, %entry
  tail call void @mutex_lock_nested(ptr noundef %output_mutex, i32 noundef 0) #6
  %call = tail call fastcc i32 @joycon_send_rumble_data(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %output_mutex) #6
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp8 = icmp sgt i32 %call, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call)
  %cmp10.not = icmp eq i32 %call, -19
  %or.cond = or i1 %cmp8, %cmp10.not
  br i1 %or.cond, label %while.body.if.end_crit_edge, label %land.lhs.true12

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true12:                                  ; preds = %while.body
  %0 = ptrtoint ptr %ctlr_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctlr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp13.not = icmp eq i32 %1, 2
  br i1 %cmp13.not, label %land.lhs.true12.if.end_crit_edge, label %do.end17

land.lhs.true12.if.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end17:                                         ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.64, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end17, %land.lhs.true12.if.end_crit_edge, %while.body.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %call18 = tail call i32 @jiffies_to_msecs(i32 noundef %4) #6
  %5 = ptrtoint ptr %rumble_msecs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call18, ptr %rumble_msecs, align 4
  %6 = ptrtoint ptr %rumble_queue_tail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rumble_queue_tail, align 4
  %8 = ptrtoint ptr %rumble_queue_head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rumble_queue_head, align 4
  %cmp19.not = icmp eq i32 %7, %9
  br i1 %cmp19.not, label %if.end28, label %if.then21

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %inc)
  %cmp23 = icmp sgt i32 %inc, 7
  %spec.store.select = select i1 %cmp23, i32 0, i32 %inc
  %10 = ptrtoint ptr %rumble_queue_tail to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.store.select, ptr %rumble_queue_tail, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #6
  br label %while.body

if.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @joycon_request_calibration(ptr noundef %ctlr) unnamed_addr #2 align 64 {
entry:
  %buffer.i.i5 = alloca [16 x i8], align 1
  %buffer.i.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @joycon_request_calibration.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@joycon_request_calibration, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !373

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctlr, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @joycon_request_calibration.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.79) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buffer.i.i) #6
  %2 = call ptr @memset(ptr %buffer.i.i, i32 0, i32 10)
  %subcmd_id.i.i = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %subcmd_id.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 16, ptr %subcmd_id.i.i, align 1
  %data1.i.i = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 276824064, ptr %data1.i.i, align 1
  %arrayidx.i.i = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer.i.i, i32 1, i32 2, i32 2
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %arrayidx.i.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @joycon_request_spi_flash_read.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@joycon_request_calibration, %if.then6.i.i)) #6
          to label %do.end.i.i [label %if.then6.i.i], !srcloc !373

if.then6.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctlr, align 4
  %dev.i.i = getelementptr inbounds %struct.hid_device, ptr %7, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @joycon_request_spi_flash_read.__UNIQUE_ID_ddebug229, ptr noundef %dev.i.i, ptr noundef nonnull @.str.99) #6
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then6.i.i, %do.end
  %call8.i.i = call fastcc i32 @joycon_send_subcmd(ptr noundef %ctlr, ptr noundef nonnull %buffer.i.i, i32 noundef 5, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end.i, label %joycon_request_spi_flash_read.exit.i

joycon_request_spi_flash_read.exit.i:             ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctlr, align 4
  %dev15.i.i = getelementptr inbounds %struct.hid_device, ptr %9, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15.i.i, ptr noundef nonnull @.str.100, i32 noundef %call8.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer.i.i) #6
  br label %do.end13

if.end.i:                                         ; preds = %do.end.i.i
  %arrayidx18.i.i = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer.i.i) #6
  %10 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx18.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -78, i8 %11)
  %cmp.not.i = icmp eq i8 %11, -78
  br i1 %cmp.not.i, label %joycon_check_for_cal_magic.exit, label %if.end.i.do.end13_crit_edge

if.end.i.do.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

joycon_check_for_cal_magic.exit:                  ; preds = %if.end.i
  %arrayidx2.i = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 21
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %13)
  %cmp4.i.not = icmp eq i8 %13, -95
  br i1 %cmp4.i.not, label %joycon_check_for_cal_magic.exit.if.end16_crit_edge, label %joycon_check_for_cal_magic.exit.do.end13_crit_edge

joycon_check_for_cal_magic.exit.do.end13_crit_edge: ; preds = %joycon_check_for_cal_magic.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

joycon_check_for_cal_magic.exit.if.end16_crit_edge: ; preds = %joycon_check_for_cal_magic.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.end13:                                         ; preds = %joycon_check_for_cal_magic.exit.do.end13_crit_edge, %if.end.i.do.end13_crit_edge, %joycon_request_spi_flash_read.exit.i
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %joycon_check_for_cal_magic.exit.if.end16_crit_edge
  %.str.83.sink = phi ptr [ @.str.83, %do.end13 ], [ @.str.80, %joycon_check_for_cal_magic.exit.if.end16_crit_edge ]
  %left_stick_addr.0 = phi i16 [ 24637, %do.end13 ], [ -32750, %joycon_check_for_cal_magic.exit.if.end16_crit_edge ]
  %14 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctlr, align 4
  %dev15 = getelementptr inbounds %struct.hid_device, ptr %15, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev15, ptr noundef nonnull %.str.83.sink) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buffer.i.i5) #6
  %16 = call ptr @memset(ptr %buffer.i.i5, i32 0, i32 10)
  %subcmd_id.i.i6 = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer.i.i5, i32 0, i32 3
  %17 = ptrtoint ptr %subcmd_id.i.i6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 16, ptr %subcmd_id.i.i6, align 1
  %data1.i.i7 = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer.i.i5, i32 0, i32 4
  %18 = ptrtoint ptr %data1.i.i7 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 461373440, ptr %data1.i.i7, align 1
  %arrayidx.i.i8 = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer.i.i5, i32 1, i32 2, i32 2
  %19 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %arrayidx.i.i8, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @joycon_request_spi_flash_read.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@joycon_request_calibration, %if.then6.i.i10)) #6
          to label %do.end.i.i13 [label %if.then6.i.i10], !srcloc !373

if.then6.i.i10:                                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctlr, align 4
  %dev.i.i9 = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @joycon_request_spi_flash_read.__UNIQUE_ID_ddebug229, ptr noundef %dev.i.i9, ptr noundef nonnull @.str.99) #6
  br label %do.end.i.i13

do.end.i.i13:                                     ; preds = %if.then6.i.i10, %if.end16
  %call8.i.i11 = call fastcc i32 @joycon_send_subcmd(ptr noundef %ctlr, ptr noundef nonnull %buffer.i.i5, i32 noundef 5, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i11)
  %tobool9.not.i.i12 = icmp eq i32 %call8.i.i11, 0
  br i1 %tobool9.not.i.i12, label %if.end.i18, label %joycon_request_spi_flash_read.exit.i15

joycon_request_spi_flash_read.exit.i15:           ; preds = %do.end.i.i13
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctlr, align 4
  %dev15.i.i14 = getelementptr inbounds %struct.hid_device, ptr %23, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15.i.i14, ptr noundef nonnull @.str.100, i32 noundef %call8.i.i11) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer.i.i5) #6
  br label %do.end28

if.end.i18:                                       ; preds = %do.end.i.i13
  %arrayidx18.i.i16 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer.i.i5) #6
  %24 = ptrtoint ptr %arrayidx18.i.i16 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx18.i.i16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -78, i8 %25)
  %cmp.not.i17 = icmp eq i8 %25, -78
  br i1 %cmp.not.i17, label %joycon_check_for_cal_magic.exit24, label %if.end.i18.do.end28_crit_edge

if.end.i18.do.end28_crit_edge:                    ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

joycon_check_for_cal_magic.exit24:                ; preds = %if.end.i18
  %arrayidx2.i19 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 21
  %26 = ptrtoint ptr %arrayidx2.i19 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx2.i19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %27)
  %cmp4.i20.not = icmp eq i8 %27, -95
  br i1 %cmp4.i20.not, label %joycon_check_for_cal_magic.exit24.if.end31_crit_edge, label %joycon_check_for_cal_magic.exit24.do.end28_crit_edge

joycon_check_for_cal_magic.exit24.do.end28_crit_edge: ; preds = %joycon_check_for_cal_magic.exit24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

joycon_check_for_cal_magic.exit24.if.end31_crit_edge: ; preds = %joycon_check_for_cal_magic.exit24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

do.end28:                                         ; preds = %joycon_check_for_cal_magic.exit24.do.end28_crit_edge, %if.end.i18.do.end28_crit_edge, %joycon_request_spi_flash_read.exit.i15
  br label %if.end31

if.end31:                                         ; preds = %do.end28, %joycon_check_for_cal_magic.exit24.if.end31_crit_edge
  %.str.89.sink = phi ptr [ @.str.89, %do.end28 ], [ @.str.86, %joycon_check_for_cal_magic.exit24.if.end31_crit_edge ]
  %right_stick_addr.0 = phi i16 [ 24646, %do.end28 ], [ -32739, %joycon_check_for_cal_magic.exit24.if.end31_crit_edge ]
  %28 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctlr, align 4
  %dev30 = getelementptr inbounds %struct.hid_device, ptr %29, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev30, ptr noundef nonnull %.str.89.sink) #9
  %left_stick_cal_x = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 19
  %left_stick_cal_y = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 20
  %call32 = call fastcc i32 @joycon_read_stick_calibration(ptr noundef %ctlr, i16 noundef zeroext %left_stick_addr.0, ptr noundef %left_stick_cal_x, ptr noundef %left_stick_cal_y, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end31.if.end49_crit_edge, label %do.end37

if.end31.if.end49_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctlr, align 4
  %dev39 = getelementptr inbounds %struct.hid_device, ptr %31, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev39, ptr noundef nonnull @.str.92, i32 noundef %call32) #9
  %center = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 19, i32 2
  %32 = ptrtoint ptr %center to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2000, ptr %center, align 4
  %33 = ptrtoint ptr %left_stick_cal_x to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3500, ptr %left_stick_cal_x, align 4
  %min = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 19, i32 1
  %34 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 500, ptr %min, align 4
  %center44 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 20, i32 2
  %35 = ptrtoint ptr %center44 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2000, ptr %center44, align 4
  %36 = ptrtoint ptr %left_stick_cal_y to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3500, ptr %left_stick_cal_y, align 4
  %min48 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 20, i32 1
  %37 = ptrtoint ptr %min48 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 500, ptr %min48, align 4
  br label %if.end49

if.end49:                                         ; preds = %do.end37, %if.end31.if.end49_crit_edge
  %right_stick_cal_x = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 21
  %right_stick_cal_y = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 22
  %call50 = call fastcc i32 @joycon_read_stick_calibration(ptr noundef %ctlr, i16 noundef zeroext %right_stick_addr.0, ptr noundef %right_stick_cal_x, ptr noundef %right_stick_cal_y, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end49.do.body71_crit_edge, label %do.end55

if.end49.do.body71_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body71

do.end55:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctlr, align 4
  %dev57 = getelementptr inbounds %struct.hid_device, ptr %39, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev57, ptr noundef nonnull @.str.95, i32 noundef %call50) #9
  %center59 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 21, i32 2
  %40 = ptrtoint ptr %center59 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2000, ptr %center59, align 4
  %41 = ptrtoint ptr %right_stick_cal_x to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3500, ptr %right_stick_cal_x, align 4
  %min63 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 21, i32 1
  %42 = ptrtoint ptr %min63 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 500, ptr %min63, align 4
  %center65 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 22, i32 2
  %43 = ptrtoint ptr %center65 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2000, ptr %center65, align 4
  %44 = ptrtoint ptr %right_stick_cal_y to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3500, ptr %right_stick_cal_y, align 4
  %min69 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 22, i32 1
  %45 = ptrtoint ptr %min69 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 500, ptr %min69, align 4
  br label %do.body71

do.body71:                                        ; preds = %do.end55, %if.end49.do.body71_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @joycon_request_calibration.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@joycon_request_calibration, %if.then83)) #6
          to label %do.end112 [label %if.then83], !srcloc !373

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctlr, align 4
  %dev85 = getelementptr inbounds %struct.hid_device, ptr %47, i32 0, i32 18
  %center87 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 19, i32 2
  %48 = ptrtoint ptr %center87 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %center87, align 4
  %50 = ptrtoint ptr %left_stick_cal_x to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %left_stick_cal_x, align 4
  %min91 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 19, i32 1
  %52 = ptrtoint ptr %min91 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %min91, align 4
  %center93 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 20, i32 2
  %54 = ptrtoint ptr %center93 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %center93, align 4
  %56 = ptrtoint ptr %left_stick_cal_y to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %left_stick_cal_y, align 4
  %min97 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 20, i32 1
  %58 = ptrtoint ptr %min97 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %min97, align 4
  %center99 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 21, i32 2
  %60 = ptrtoint ptr %center99 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %center99, align 4
  %62 = ptrtoint ptr %right_stick_cal_x to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %right_stick_cal_x, align 4
  %min103 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 21, i32 1
  %64 = ptrtoint ptr %min103 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %min103, align 4
  %center105 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 22, i32 2
  %66 = ptrtoint ptr %center105 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %center105, align 4
  %68 = ptrtoint ptr %right_stick_cal_y to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %right_stick_cal_y, align 4
  %min109 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 22, i32 1
  %70 = ptrtoint ptr %min109 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %min109, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @joycon_request_calibration.__UNIQUE_ID_ddebug231, ptr noundef %dev85, ptr noundef nonnull @.str.97, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %65, i32 noundef %67, i32 noundef %69, i32 noundef %71) #6
  br label %do.end112

do.end112:                                        ; preds = %if.then83, %do.body71
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @joycon_request_imu_calibration(ptr noundef %ctlr) unnamed_addr #2 align 64 {
entry:
  %buffer.i = alloca [16 x i8], align 1
  %buffer.i.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buffer.i.i) #6
  %0 = call ptr @memset(ptr %buffer.i.i, i32 0, i32 10)
  %subcmd_id.i.i = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %subcmd_id.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 16, ptr %subcmd_id.i.i, align 1
  %data1.i.i = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 645922816, ptr %data1.i.i, align 1
  %arrayidx.i.i = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer.i.i, i32 1, i32 2, i32 2
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %arrayidx.i.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @joycon_request_spi_flash_read.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@joycon_request_imu_calibration, %if.then6.i.i)) #6
          to label %do.end.i.i [label %if.then6.i.i], !srcloc !373

if.then6.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctlr, align 4
  %dev.i.i = getelementptr inbounds %struct.hid_device, ptr %5, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @joycon_request_spi_flash_read.__UNIQUE_ID_ddebug229, ptr noundef %dev.i.i, ptr noundef nonnull @.str.99) #6
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then6.i.i, %entry
  %call8.i.i = call fastcc i32 @joycon_send_subcmd(ptr noundef %ctlr, ptr noundef nonnull %buffer.i.i, i32 noundef 5, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end.i, label %joycon_request_spi_flash_read.exit.i

joycon_request_spi_flash_read.exit.i:             ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctlr, align 4
  %dev15.i.i = getelementptr inbounds %struct.hid_device, ptr %7, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15.i.i, ptr noundef nonnull @.str.100, i32 noundef %call8.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer.i.i) #6
  br label %do.end3

if.end.i:                                         ; preds = %do.end.i.i
  %arrayidx18.i.i = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer.i.i) #6
  %8 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx18.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -78, i8 %9)
  %cmp.not.i = icmp eq i8 %9, -78
  br i1 %cmp.not.i, label %joycon_check_for_cal_magic.exit, label %if.end.i.do.end3_crit_edge

if.end.i.do.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

joycon_check_for_cal_magic.exit:                  ; preds = %if.end.i
  %arrayidx2.i = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 21
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %11)
  %cmp4.i.not = icmp eq i8 %11, -95
  br i1 %cmp4.i.not, label %joycon_check_for_cal_magic.exit.do.body6_crit_edge, label %joycon_check_for_cal_magic.exit.do.end3_crit_edge

joycon_check_for_cal_magic.exit.do.end3_crit_edge: ; preds = %joycon_check_for_cal_magic.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

joycon_check_for_cal_magic.exit.do.body6_crit_edge: ; preds = %joycon_check_for_cal_magic.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6

do.end3:                                          ; preds = %joycon_check_for_cal_magic.exit.do.end3_crit_edge, %if.end.i.do.end3_crit_edge, %joycon_request_spi_flash_read.exit.i
  br label %do.body6

do.body6:                                         ; preds = %do.end3, %joycon_check_for_cal_magic.exit.do.body6_crit_edge
  %.str.103.sink = phi ptr [ @.str.106, %do.end3 ], [ @.str.103, %joycon_check_for_cal_magic.exit.do.body6_crit_edge ]
  %imu_cal_addr.0 = phi i32 [ 24608, %do.end3 ], [ 32808, %joycon_check_for_cal_magic.exit.do.body6_crit_edge ]
  %12 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctlr, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %13, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull %.str.103.sink) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @joycon_request_imu_calibration.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@joycon_request_imu_calibration, %if.then11)) #6
          to label %do.end16 [label %if.then11], !srcloc !373

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctlr, align 4
  %dev13 = getelementptr inbounds %struct.hid_device, ptr %15, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @joycon_request_imu_calibration.__UNIQUE_ID_ddebug232, ptr noundef %dev13, ptr noundef nonnull @.str.108) #6
  br label %do.end16

do.end16:                                         ; preds = %if.then11, %do.body6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buffer.i) #6
  %16 = call ptr @memset(ptr %buffer.i, i32 0, i32 10)
  %subcmd_id.i = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer.i, i32 0, i32 3
  %17 = ptrtoint ptr %subcmd_id.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 16, ptr %subcmd_id.i, align 1
  %data1.i = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer.i, i32 0, i32 4
  %18 = call i32 @llvm.bswap.i32(i32 %imu_cal_addr.0) #6
  %19 = ptrtoint ptr %data1.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %data1.i, align 1
  %arrayidx.i = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer.i, i32 1, i32 2, i32 2
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 24, ptr %arrayidx.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @joycon_request_spi_flash_read.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@joycon_request_imu_calibration, %if.then6.i)) #6
          to label %do.end.i [label %if.then6.i], !srcloc !373

if.then6.i:                                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctlr, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %22, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @joycon_request_spi_flash_read.__UNIQUE_ID_ddebug229, ptr noundef %dev.i, ptr noundef nonnull @.str.99) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.end16
  %call8.i = call fastcc i32 @joycon_send_subcmd(ptr noundef %ctlr, ptr noundef nonnull %buffer.i, i32 noundef 5, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %joycon_request_spi_flash_read.exit, label %do.end22

joycon_request_spi_flash_read.exit:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx18.i = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer.i) #6
  %accel_cal39 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 23
  %gyro_cal51 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 24
  %23 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %arrayidx18.i, align 1
  %25 = call i16 @llvm.bswap.i16(i16 %24) #6
  %26 = ptrtoint ptr %accel_cal39 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %accel_cal39, align 2
  %add.ptr43 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 26
  %27 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %add.ptr43, align 1
  %29 = call i16 @llvm.bswap.i16(i16 %28) #6
  %arrayidx47 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 23, i32 1, i32 0
  %30 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %arrayidx47, align 2
  %add.ptr49 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 32
  %31 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %add.ptr49, align 1
  %33 = call i16 @llvm.bswap.i16(i16 %32) #6
  %34 = ptrtoint ptr %gyro_cal51 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %gyro_cal51, align 2
  %add.ptr55 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 38
  %35 = ptrtoint ptr %add.ptr55 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %add.ptr55, align 1
  %37 = call i16 @llvm.bswap.i16(i16 %36) #6
  %arrayidx59 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 24, i32 1, i32 0
  %38 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %arrayidx59, align 2
  %add.ptr.1 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 22
  %39 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %add.ptr.1, align 1
  %41 = call i16 @llvm.bswap.i16(i16 %40) #6
  %arrayidx41.1 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 23, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx41.1 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %arrayidx41.1, align 2
  %add.ptr43.1 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 28
  %43 = ptrtoint ptr %add.ptr43.1 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %add.ptr43.1, align 1
  %45 = call i16 @llvm.bswap.i16(i16 %44) #6
  %arrayidx47.1 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 23, i32 1, i32 1
  %46 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %arrayidx47.1, align 2
  %add.ptr49.1 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 34
  %47 = ptrtoint ptr %add.ptr49.1 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %add.ptr49.1, align 1
  %49 = call i16 @llvm.bswap.i16(i16 %48) #6
  %arrayidx53.1 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 24, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx53.1 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %arrayidx53.1, align 2
  %add.ptr55.1 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 40
  %51 = ptrtoint ptr %add.ptr55.1 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %add.ptr55.1, align 1
  %53 = call i16 @llvm.bswap.i16(i16 %52) #6
  %arrayidx59.1 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 24, i32 1, i32 1
  %54 = ptrtoint ptr %arrayidx59.1 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %arrayidx59.1, align 2
  %add.ptr.2 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 24
  %55 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %add.ptr.2, align 1
  %57 = call i16 @llvm.bswap.i16(i16 %56) #6
  %arrayidx41.2 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 23, i32 0, i32 2
  %58 = ptrtoint ptr %arrayidx41.2 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %arrayidx41.2, align 2
  %add.ptr43.2 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 30
  %59 = ptrtoint ptr %add.ptr43.2 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %add.ptr43.2, align 1
  %61 = call i16 @llvm.bswap.i16(i16 %60) #6
  %arrayidx47.2 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 23, i32 1, i32 2
  %62 = ptrtoint ptr %arrayidx47.2 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %arrayidx47.2, align 2
  %add.ptr49.2 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 36
  %63 = ptrtoint ptr %add.ptr49.2 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %add.ptr49.2, align 1
  %65 = call i16 @llvm.bswap.i16(i16 %64) #6
  %arrayidx53.2 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 24, i32 0, i32 2
  %66 = ptrtoint ptr %arrayidx53.2 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %arrayidx53.2, align 2
  %add.ptr55.2 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 42
  %67 = ptrtoint ptr %add.ptr55.2 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %add.ptr55.2, align 1
  %69 = call i16 @llvm.bswap.i16(i16 %68) #6
  %arrayidx59.2 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 24, i32 1, i32 2
  %70 = ptrtoint ptr %arrayidx59.2 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %arrayidx59.2, align 2
  %conv.i187 = sext i16 %29 to i32
  %conv3.i188 = sext i16 %25 to i32
  %sub.i189 = sub nsw i32 %conv.i187, %conv3.i188
  %arrayidx4.i190 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 25, i32 0
  %71 = ptrtoint ptr %arrayidx4.i190 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %sub.i189, ptr %arrayidx4.i190, align 4
  %conv7.i192 = sext i16 %37 to i32
  %conv11.i193 = sext i16 %33 to i32
  %sub12.i194 = sub nsw i32 %conv7.i192, %conv11.i193
  %arrayidx13.i195 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 26, i32 0
  %72 = ptrtoint ptr %arrayidx13.i195 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %sub12.i194, ptr %arrayidx13.i195, align 4
  %conv.1.i197 = sext i16 %45 to i32
  %conv3.1.i199 = sext i16 %41 to i32
  %sub.1.i200 = sub nsw i32 %conv.1.i197, %conv3.1.i199
  %arrayidx4.1.i201 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 25, i32 1
  %73 = ptrtoint ptr %arrayidx4.1.i201 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %sub.1.i200, ptr %arrayidx4.1.i201, align 4
  %conv7.1.i203 = sext i16 %53 to i32
  %conv11.1.i205 = sext i16 %49 to i32
  %sub12.1.i206 = sub nsw i32 %conv7.1.i203, %conv11.1.i205
  %arrayidx13.1.i207 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 26, i32 1
  %74 = ptrtoint ptr %arrayidx13.1.i207 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %sub12.1.i206, ptr %arrayidx13.1.i207, align 4
  %conv.2.i209 = sext i16 %61 to i32
  %conv3.2.i211 = sext i16 %57 to i32
  %sub.2.i212 = sub nsw i32 %conv.2.i209, %conv3.2.i211
  %arrayidx4.2.i213 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 25, i32 2
  %75 = ptrtoint ptr %arrayidx4.2.i213 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub.2.i212, ptr %arrayidx4.2.i213, align 4
  %conv7.2.i215 = sext i16 %69 to i32
  %conv11.2.i217 = sext i16 %65 to i32
  %sub12.2.i218 = sub nsw i32 %conv7.2.i215, %conv11.2.i217
  %arrayidx13.2.i219 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 26, i32 2
  %76 = ptrtoint ptr %arrayidx13.2.i219 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %sub12.2.i218, ptr %arrayidx13.2.i219, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @joycon_request_imu_calibration.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@joycon_request_imu_calibration, %if.then75)) #6
          to label %cleanup [label %if.then75], !srcloc !373

do.end22:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ctlr, align 4
  %dev15.i = getelementptr inbounds %struct.hid_device, ptr %78, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15.i, ptr noundef nonnull @.str.100, i32 noundef %call8.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer.i) #6
  %79 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ctlr, align 4
  %dev24 = getelementptr inbounds %struct.hid_device, ptr %80, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev24, ptr noundef nonnull @.str.110, i32 noundef %call8.i) #9
  %accel_cal = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 23
  %gyro_cal = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 24
  %81 = ptrtoint ptr %accel_cal to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 0, ptr %accel_cal, align 2
  %arrayidx27 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 23, i32 1, i32 0
  %82 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 16384, ptr %arrayidx27, align 2
  %83 = ptrtoint ptr %gyro_cal to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %gyro_cal, align 2
  %arrayidx32 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 24, i32 1, i32 0
  %84 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 13371, ptr %arrayidx32, align 2
  %arrayidx.1 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 23, i32 0, i32 1
  %85 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %arrayidx.1, align 2
  %arrayidx27.1 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 23, i32 1, i32 1
  %86 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 16384, ptr %arrayidx27.1, align 2
  %arrayidx29.1 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 24, i32 0, i32 1
  %87 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %arrayidx29.1, align 2
  %arrayidx32.1 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 24, i32 1, i32 1
  %88 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 13371, ptr %arrayidx32.1, align 2
  %arrayidx.2 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 23, i32 0, i32 2
  %89 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 0, ptr %arrayidx.2, align 2
  %arrayidx27.2 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 23, i32 1, i32 2
  %90 = ptrtoint ptr %arrayidx27.2 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 16384, ptr %arrayidx27.2, align 2
  %arrayidx29.2 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 24, i32 0, i32 2
  %91 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 0, ptr %arrayidx29.2, align 2
  %arrayidx32.2 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 24, i32 1, i32 2
  %92 = ptrtoint ptr %arrayidx32.2 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 13371, ptr %arrayidx32.2, align 2
  %arrayidx4.i = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 25, i32 0
  %93 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 16384, ptr %arrayidx4.i, align 4
  %arrayidx13.i = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 26, i32 0
  %94 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 13371, ptr %arrayidx13.i, align 4
  %arrayidx4.1.i = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 25, i32 1
  %95 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 16384, ptr %arrayidx4.1.i, align 4
  %arrayidx13.1.i = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 26, i32 1
  %96 = ptrtoint ptr %arrayidx13.1.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 13371, ptr %arrayidx13.1.i, align 4
  %arrayidx4.2.i = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 25, i32 2
  %97 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 16384, ptr %arrayidx4.2.i, align 4
  %arrayidx13.2.i = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 26, i32 2
  %98 = ptrtoint ptr %arrayidx13.2.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 13371, ptr %arrayidx13.2.i, align 4
  br label %cleanup

if.then75:                                        ; preds = %joycon_request_spi_flash_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx10.2.i216 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 24, i32 0, i32 2
  %arrayidx2.2.i210 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 23, i32 0, i32 2
  %arrayidx10.1.i204 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 24, i32 0, i32 1
  %arrayidx2.1.i198 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 23, i32 0, i32 1
  %99 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ctlr, align 4
  %dev77 = getelementptr inbounds %struct.hid_device, ptr %100, i32 0, i32 18
  %101 = ptrtoint ptr %accel_cal39 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %accel_cal39, align 4
  %conv81 = sext i16 %102 to i32
  %103 = ptrtoint ptr %arrayidx2.1.i198 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx2.1.i198, align 2
  %conv85 = sext i16 %104 to i32
  %105 = ptrtoint ptr %arrayidx2.2.i210 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx2.2.i210, align 4
  %conv89 = sext i16 %106 to i32
  %107 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %arrayidx47, align 2
  %conv93 = sext i16 %108 to i32
  %109 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %arrayidx47.1, align 2
  %conv97 = sext i16 %110 to i32
  %111 = ptrtoint ptr %arrayidx47.2 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %arrayidx47.2, align 2
  %conv101 = sext i16 %112 to i32
  %113 = ptrtoint ptr %gyro_cal51 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %gyro_cal51, align 4
  %conv105 = sext i16 %114 to i32
  %115 = ptrtoint ptr %arrayidx10.1.i204 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %arrayidx10.1.i204, align 2
  %conv109 = sext i16 %116 to i32
  %117 = ptrtoint ptr %arrayidx10.2.i216 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %arrayidx10.2.i216, align 4
  %conv113 = sext i16 %118 to i32
  %119 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %arrayidx59, align 2
  %conv117 = sext i16 %120 to i32
  %121 = ptrtoint ptr %arrayidx59.1 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %arrayidx59.1, align 2
  %conv121 = sext i16 %122 to i32
  %123 = ptrtoint ptr %arrayidx59.2 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %arrayidx59.2, align 2
  %conv125 = sext i16 %124 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @joycon_request_imu_calibration.__UNIQUE_ID_ddebug233, ptr noundef %dev77, ptr noundef nonnull @.str.112, i32 noundef %conv81, i32 noundef %conv85, i32 noundef %conv89, i32 noundef %conv93, i32 noundef %conv97, i32 noundef %conv101, i32 noundef %conv105, i32 noundef %conv109, i32 noundef %conv113, i32 noundef %conv117, i32 noundef %conv121, i32 noundef %conv125) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then75, %do.end22, %joycon_request_spi_flash_read.exit
  ret i32 %call8.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @joycon_leds_create(ptr noundef %ctlr) unnamed_addr #2 align 64 {
entry:
  %buffer.i = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctlr, align 4
  %dev2 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  %init_name.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @joycon_input_num_mutex, i32 noundef 0) #6
  %output_mutex = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %output_mutex, i32 noundef 0) #6
  %6 = load i32, ptr @joycon_leds_create.input_num, align 4
  %sub = sub i32 4, %6
  %shr = lshr i32 15, %sub
  %conv = trunc i32 %shr to i8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buffer.i) #6
  %7 = call ptr @memset(ptr %buffer.i, i32 0, i32 10)
  %subcmd_id.i = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer.i, i32 0, i32 3
  %8 = ptrtoint ptr %subcmd_id.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 48, ptr %subcmd_id.i, align 1
  %data.i = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer.i, i32 0, i32 4
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %data.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @joycon_set_player_leds.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@joycon_leds_create, %if.then.i)) #6
          to label %joycon_set_player_leds.exit [label %if.then.i], !srcloc !373

if.then.i:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctlr, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %11, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @joycon_set_player_leds.__UNIQUE_ID_ddebug228, ptr noundef %dev.i, ptr noundef nonnull @.str.143) #6
  br label %joycon_set_player_leds.exit

joycon_set_player_leds.exit:                      ; preds = %if.then.i, %dev_name.exit
  %call5.i = call fastcc i32 @joycon_send_subcmd(ptr noundef %ctlr, ptr noundef nonnull %buffer.i, i32 noundef 1, i32 noundef 25) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buffer.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not = icmp eq i32 %call5.i, 0
  br i1 %tobool.not, label %joycon_set_player_leds.exit.if.end_crit_edge, label %do.end

joycon_set_player_leds.exit.if.end_crit_edge:     ; preds = %joycon_set_player_leds.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %joycon_set_player_leds.exit
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctlr, align 4
  %dev5 = getelementptr inbounds %struct.hid_device, ptr %13, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5, ptr noundef nonnull @.str.125, i32 noundef %call5.i) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %joycon_set_player_leds.exit.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %output_mutex) #6
  %call8 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev2, i32 noundef 3264, ptr noundef nonnull @.str.127, ptr noundef %retval.0.i, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.144) #6
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end.if.then10_crit_edge, label %if.end11

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.then10:                                        ; preds = %for.cond.3.if.then10_crit_edge, %for.cond.2.if.then10_crit_edge, %for.cond.1.if.then10_crit_edge, %if.end.if.then10_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @joycon_input_num_mutex) #6
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %arrayidx12 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 2, i32 0
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8, ptr %arrayidx12, align 4
  %15 = load i32, ptr @joycon_leds_create.input_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp14.not = icmp sgt i32 %15, 0
  %cond = zext i1 %cmp14.not to i32
  %brightness = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 2, i32 0, i32 1
  %16 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond, ptr %brightness, align 4
  %max_brightness = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 2, i32 0, i32 2
  %17 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %max_brightness, align 4
  %brightness_set_blocking = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 2, i32 0, i32 6
  %18 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @joycon_player_led_brightness_set, ptr %brightness_set_blocking, align 4
  %flags = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 2, i32 0, i32 3
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 589824, ptr %flags, align 4
  %call.i = call i32 @devm_led_classdev_register_ext(ptr noundef %dev2, ptr noundef %arrayidx12, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %for.cond.1, label %if.end11.do.end22_crit_edge

if.end11.do.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

for.cond.1:                                       ; preds = %if.end11
  %call8.1 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev2, i32 noundef 3264, ptr noundef nonnull @.str.127, ptr noundef %retval.0.i, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.145) #6
  %tobool9.not.1 = icmp eq ptr %call8.1, null
  br i1 %tobool9.not.1, label %for.cond.1.if.then10_crit_edge, label %if.end11.1

for.cond.1.if.then10_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.end11.1:                                       ; preds = %for.cond.1
  %arrayidx12.1 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call8.1, ptr %arrayidx12.1, align 4
  %21 = load i32, ptr @joycon_leds_create.input_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp14.not.1 = icmp sgt i32 %21, 1
  %cond.1 = zext i1 %cmp14.not.1 to i32
  %brightness.1 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 2, i32 1, i32 1
  %22 = ptrtoint ptr %brightness.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond.1, ptr %brightness.1, align 4
  %max_brightness.1 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 2, i32 1, i32 2
  %23 = ptrtoint ptr %max_brightness.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %max_brightness.1, align 4
  %brightness_set_blocking.1 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 2, i32 1, i32 6
  %24 = ptrtoint ptr %brightness_set_blocking.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @joycon_player_led_brightness_set, ptr %brightness_set_blocking.1, align 4
  %flags.1 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 2, i32 1, i32 3
  %25 = ptrtoint ptr %flags.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 589824, ptr %flags.1, align 4
  %call.i.1 = call i32 @devm_led_classdev_register_ext(ptr noundef %dev2, ptr noundef %arrayidx12.1, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool18.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool18.not.1, label %for.cond.2, label %if.end11.1.do.end22_crit_edge

if.end11.1.do.end22_crit_edge:                    ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

for.cond.2:                                       ; preds = %if.end11.1
  %call8.2 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev2, i32 noundef 3264, ptr noundef nonnull @.str.127, ptr noundef %retval.0.i, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.146) #6
  %tobool9.not.2 = icmp eq ptr %call8.2, null
  br i1 %tobool9.not.2, label %for.cond.2.if.then10_crit_edge, label %if.end11.2

for.cond.2.if.then10_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.end11.2:                                       ; preds = %for.cond.2
  %arrayidx12.2 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call8.2, ptr %arrayidx12.2, align 4
  %27 = load i32, ptr @joycon_leds_create.input_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp14.not.2 = icmp sgt i32 %27, 2
  %cond.2 = zext i1 %cmp14.not.2 to i32
  %brightness.2 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 2, i32 2, i32 1
  %28 = ptrtoint ptr %brightness.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond.2, ptr %brightness.2, align 4
  %max_brightness.2 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 2, i32 2, i32 2
  %29 = ptrtoint ptr %max_brightness.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %max_brightness.2, align 4
  %brightness_set_blocking.2 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 2, i32 2, i32 6
  %30 = ptrtoint ptr %brightness_set_blocking.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @joycon_player_led_brightness_set, ptr %brightness_set_blocking.2, align 4
  %flags.2 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 2, i32 2, i32 3
  %31 = ptrtoint ptr %flags.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 589824, ptr %flags.2, align 4
  %call.i.2 = call i32 @devm_led_classdev_register_ext(ptr noundef %dev2, ptr noundef %arrayidx12.2, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool18.not.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool18.not.2, label %for.cond.3, label %if.end11.2.do.end22_crit_edge

if.end11.2.do.end22_crit_edge:                    ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

for.cond.3:                                       ; preds = %if.end11.2
  %call8.3 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev2, i32 noundef 3264, ptr noundef nonnull @.str.127, ptr noundef %retval.0.i, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.147) #6
  %tobool9.not.3 = icmp eq ptr %call8.3, null
  br i1 %tobool9.not.3, label %for.cond.3.if.then10_crit_edge, label %if.end11.3

for.cond.3.if.then10_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.end11.3:                                       ; preds = %for.cond.3
  %arrayidx12.3 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 2, i32 3
  %32 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call8.3, ptr %arrayidx12.3, align 4
  %33 = load i32, ptr @joycon_leds_create.input_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp14.not.3 = icmp sgt i32 %33, 3
  %cond.3 = zext i1 %cmp14.not.3 to i32
  %brightness.3 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 2, i32 3, i32 1
  %34 = ptrtoint ptr %brightness.3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %cond.3, ptr %brightness.3, align 4
  %max_brightness.3 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 2, i32 3, i32 2
  %35 = ptrtoint ptr %max_brightness.3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %max_brightness.3, align 4
  %brightness_set_blocking.3 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 2, i32 3, i32 6
  %36 = ptrtoint ptr %brightness_set_blocking.3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @joycon_player_led_brightness_set, ptr %brightness_set_blocking.3, align 4
  %flags.3 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 2, i32 3, i32 3
  %37 = ptrtoint ptr %flags.3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 589824, ptr %flags.3, align 4
  %call.i.3 = call i32 @devm_led_classdev_register_ext(ptr noundef %dev2, ptr noundef %arrayidx12.3, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool18.not.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool18.not.3, label %for.end, label %if.end11.3.do.end22_crit_edge

if.end11.3.do.end22_crit_edge:                    ; preds = %if.end11.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

do.end22:                                         ; preds = %if.end11.3.do.end22_crit_edge, %if.end11.2.do.end22_crit_edge, %if.end11.1.do.end22_crit_edge, %if.end11.do.end22_crit_edge
  %arrayidx12.lcssa = phi ptr [ %arrayidx12, %if.end11.do.end22_crit_edge ], [ %arrayidx12.1, %if.end11.1.do.end22_crit_edge ], [ %arrayidx12.2, %if.end11.2.do.end22_crit_edge ], [ %arrayidx12.3, %if.end11.3.do.end22_crit_edge ]
  %call.i.lcssa = phi i32 [ %call.i, %if.end11.do.end22_crit_edge ], [ %call.i.1, %if.end11.1.do.end22_crit_edge ], [ %call.i.2, %if.end11.2.do.end22_crit_edge ], [ %call.i.3, %if.end11.3.do.end22_crit_edge ]
  %38 = ptrtoint ptr %arrayidx12.lcssa to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx12.lcssa, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.130, ptr noundef %39) #9
  call void @mutex_unlock(ptr noundef nonnull @joycon_input_num_mutex) #6
  br label %cleanup

for.end:                                          ; preds = %if.end11.3
  %40 = load i32, ptr @joycon_leds_create.input_num, align 4
  %inc26 = add i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc26)
  %cmp27 = icmp sgt i32 %inc26, 4
  %spec.store.select = select i1 %cmp27, i32 1, i32 %inc26
  store i32 %spec.store.select, ptr @joycon_leds_create.input_num, align 4
  call void @mutex_unlock(ptr noundef nonnull @joycon_input_num_mutex) #6
  %ctlr_type = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 8
  %41 = ptrtoint ptr %ctlr_type to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ctlr_type, align 4
  %43 = and i32 %42, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %switch = icmp eq i32 %43, 2
  br i1 %switch, label %if.then36, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then36:                                        ; preds = %for.end
  %call37 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev2, i32 noundef 3264, ptr noundef nonnull @.str.127, ptr noundef %retval.0.i, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133) #6
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.then36.cleanup_crit_edge, label %if.end40

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end40:                                         ; preds = %if.then36
  %home_led = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 3
  %44 = ptrtoint ptr %home_led to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call37, ptr %home_led, align 4
  %brightness42 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %brightness42 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %brightness42, align 4
  %max_brightness43 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 3, i32 2
  %46 = ptrtoint ptr %max_brightness43 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 15, ptr %max_brightness43, align 4
  %brightness_set_blocking44 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 3, i32 6
  %47 = ptrtoint ptr %brightness_set_blocking44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @joycon_home_led_brightness_set, ptr %brightness_set_blocking44, align 4
  %flags45 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 3, i32 3
  %48 = ptrtoint ptr %flags45 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 589824, ptr %flags45, align 4
  %call.i114 = call i32 @devm_led_classdev_register_ext(ptr noundef %dev2, ptr noundef %home_led, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %tobool48.not = icmp eq i32 %call.i114, 0
  br i1 %tobool48.not, label %if.end54, label %do.end52

do.end52:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.135) #9
  br label %cleanup

if.end54:                                         ; preds = %if.end40
  %call55 = call i32 @joycon_home_led_brightness_set(ptr noundef %home_led, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end54.cleanup_crit_edge, label %do.end60

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.138, i32 noundef %call55) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %if.end54.cleanup_crit_edge, %do.end52, %if.then36.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end22, %if.then10
  %retval.0 = phi i32 [ %call.i.lcssa, %do.end22 ], [ -12, %if.then10 ], [ %call.i114, %do.end52 ], [ %call55, %do.end60 ], [ -12, %if.then36.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.end54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @joycon_send_rumble_data(ptr noundef %ctlr) unnamed_addr #2 align 64 {
entry:
  %rumble_output = alloca %struct.joycon_rumble_output, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %rumble_output) #6
  %lock = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %ctlr_state = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 4
  %0 = ptrtoint ptr %ctlr_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctlr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp5 = icmp eq i32 %1, 2
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %rumble_data = getelementptr inbounds %struct.joycon_rumble_output, ptr %rumble_output, i32 0, i32 2
  %rumble_queue_tail = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 34
  %2 = ptrtoint ptr %rumble_queue_tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rumble_queue_tail, align 4
  %arrayidx = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 32, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %arrayidx, align 1
  %6 = ptrtoint ptr %rumble_data to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %rumble_data, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  %7 = ptrtoint ptr %rumble_output to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %rumble_output, align 1
  %subcmd_num = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 10
  %8 = ptrtoint ptr %subcmd_num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %subcmd_num, align 4
  %packet_num = getelementptr inbounds %struct.joycon_rumble_output, ptr %rumble_output, i32 0, i32 1
  %10 = ptrtoint ptr %packet_num to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %packet_num, align 1
  %inc = add i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %inc)
  %cmp13 = icmp ugt i8 %inc, 15
  %spec.select = select i1 %cmp13, i8 0, i8 %inc
  %11 = ptrtoint ptr %subcmd_num to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select, ptr %subcmd_num, align 4
  tail call fastcc void @joycon_enforce_subcmd_rate(ptr noundef %ctlr)
  %12 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctlr, align 4
  %call.i = call ptr @kmemdup(ptr noundef nonnull %rumble_output, i32 noundef 10, i32 noundef 3264) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = call i32 @hid_hw_output_report(ptr noundef %13, ptr noundef nonnull %call.i, i32 noundef 10) #6
  call void @kfree(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__joycon_hid_send.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@joycon_send_rumble_data, %if.then7.i)) #6
          to label %cleanup [label %if.then7.i], !srcloc !373

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %13, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__joycon_hid_send.__UNIQUE_ID_ddebug223, ptr noundef %dev.i, ptr noundef nonnull @.str.69, i32 noundef %call1.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then7.i, %do.body.i, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -19, %if.then ], [ -12, %if.end.cleanup_crit_edge ], [ %call1.i, %if.then7.i ], [ %call1.i, %if.end.i.cleanup_crit_edge ], [ %call1.i, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %rumble_output) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @joycon_enforce_subcmd_rate(ptr noundef %ctlr) unnamed_addr #2 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %0) #6
  %last_subcmd_sent_msecs = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 18
  %1 = ptrtoint ptr %last_subcmd_sent_msecs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %last_subcmd_sent_msecs, align 4
  %sub = sub i32 %call, %2
  %ctlr_state = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub)
  %cmp12 = icmp ult i32 %sub, 25
  br i1 %cmp12, label %land.rhs.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %lock.i = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 5
  %received_input_report.i = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 17
  %wait.i = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 13
  %3 = ptrtoint ptr %ctlr_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ctlr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp115 = icmp eq i32 %4, 1
  br i1 %cmp115, label %land.rhs.lr.ph.if.then.i_crit_edge, label %land.rhs.lr.ph.while.end_crit_edge

land.rhs.lr.ph.while.end_crit_edge:               ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.rhs.lr.ph.if.then.i_crit_edge:               ; preds = %land.rhs.lr.ph
  br label %if.then.i

land.rhs:                                         ; preds = %joycon_wait_for_input_report.exit
  %5 = ptrtoint ptr %ctlr_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctlr_state, align 4
  %cmp1 = icmp eq i32 %6, 1
  br i1 %cmp1, label %land.rhs.if.then.i_crit_edge, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.rhs.if.then.i_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %land.rhs.if.then.i_crit_edge, %land.rhs.lr.ph.if.then.i_crit_edge
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %7 = ptrtoint ptr %received_input_report.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %received_input_report.i, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #6
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 535) #6
  %8 = ptrtoint ptr %received_input_report.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %received_input_report.i, align 1, !range !374
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then23.i, label %if.then.i.joycon_wait_for_input_report.exit_crit_edge

if.then.i.joycon_wait_for_input_report.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %joycon_wait_for_input_report.exit

if.then23.i:                                      ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #6
  %10 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #6
  %call2581.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #6
  %11 = ptrtoint ptr %received_input_report.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %received_input_report.i, align 1, !range !374
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool28.not82.not.i = icmp eq i8 %12, 0
  br i1 %tobool28.not82.not.i, label %if.then23.i.cleanup.i_crit_edge, label %if.end50.thread.i

if.then23.i.cleanup.i_crit_edge:                  ; preds = %if.then23.i
  br label %cleanup.i

if.end50.thread.i:                                ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @finish_wait(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #6
  br label %joycon_wait_for_input_report.exit

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then23.i.cleanup.i_crit_edge
  %__ret24.184.i = phi i32 [ %__ret24.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 25, %if.then23.i.cleanup.i_crit_edge ]
  %call47.i = call i32 @schedule_timeout(i32 noundef %__ret24.184.i) #6
  %call25.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #6
  %13 = ptrtoint ptr %received_input_report.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %received_input_report.i, align 1, !range !374
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool28.not.i = icmp eq i8 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool33.not.i = icmp eq i32 %call47.i, 0
  %spec.store.select59.i = select i1 %tobool33.not.i, i32 1, i32 %call47.i
  %__ret24.1.i = select i1 %tobool28.not.i, i32 %call47.i, i32 %spec.store.select59.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret24.1.i)
  %tobool40.not.i = icmp eq i32 %__ret24.1.i, 0
  %not.tobool28.not.i = xor i1 %tobool28.not.i, true
  %15 = select i1 %not.tobool28.not.i, i1 true, i1 %tobool40.not.i
  br i1 %15, label %if.end50.i, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end50.i:                                       ; preds = %cleanup.i
  call void @finish_wait(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #6
  br i1 %tobool40.not.i, label %do.end56.i, label %if.end50.i.joycon_wait_for_input_report.exit_crit_edge

if.end50.i.joycon_wait_for_input_report.exit_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %joycon_wait_for_input_report.exit

do.end56.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctlr, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %17, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.66) #9
  br label %joycon_wait_for_input_report.exit

joycon_wait_for_input_report.exit:                ; preds = %do.end56.i, %if.end50.i.joycon_wait_for_input_report.exit_crit_edge, %if.end50.thread.i, %if.then.i.joycon_wait_for_input_report.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %call2 = call i32 @jiffies_to_msecs(i32 noundef %18) #6
  %19 = ptrtoint ptr %last_subcmd_sent_msecs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %last_subcmd_sent_msecs, align 4
  %sub4 = sub i32 %call2, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub4)
  %cmp = icmp ult i32 %sub4, 25
  br i1 %cmp, label %land.rhs, label %joycon_wait_for_input_report.exit.while.end_crit_edge

joycon_wait_for_input_report.exit.while.end_crit_edge: ; preds = %joycon_wait_for_input_report.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %joycon_wait_for_input_report.exit.while.end_crit_edge, %land.rhs.while.end_crit_edge, %land.rhs.lr.ph.while.end_crit_edge, %entry.while.end_crit_edge
  %current_ms.0.lcssa = phi i32 [ %call, %entry.while.end_crit_edge ], [ %call, %land.rhs.lr.ph.while.end_crit_edge ], [ %call2, %land.rhs.while.end_crit_edge ], [ %call2, %joycon_wait_for_input_report.exit.while.end_crit_edge ]
  %21 = ptrtoint ptr %last_subcmd_sent_msecs to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %current_ms.0.lcssa, ptr %last_subcmd_sent_msecs, align 4
  ret void
}

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
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_output_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @joycon_hid_send_sync(ptr noundef %ctlr, ptr noundef %data, i32 noundef %len, i32 noundef %timeout) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %received_resp = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool10.not = icmp eq i32 %timeout, 0
  %wait = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 13
  %input_buf75 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12
  call fastcc void @joycon_enforce_subcmd_rate(ptr noundef %ctlr)
  %0 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctlr, align 4
  %call.i148 = call ptr @kmemdup(ptr noundef %data, i32 noundef %len, i32 noundef 3264) #6
  %tobool.not.i149 = icmp eq ptr %call.i148, null
  br i1 %tobool.not.i149, label %entry.if.then_crit_edge, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.i:                                         ; preds = %if.end74.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %call.i151 = phi ptr [ %call.i, %if.end74.if.end.i_crit_edge ], [ %call.i148, %entry.if.end.i_crit_edge ]
  %2 = phi ptr [ %20, %if.end74.if.end.i_crit_edge ], [ %1, %entry.if.end.i_crit_edge ]
  %dec130150 = phi i32 [ %dec, %if.end74.if.end.i_crit_edge ], [ 1, %entry.if.end.i_crit_edge ]
  %call1.i = call i32 @hid_hw_output_report(ptr noundef %2, ptr noundef nonnull %call.i151, i32 noundef %len) #6
  call void @kfree(ptr noundef nonnull %call.i151) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__joycon_hid_send.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@joycon_hid_send_sync, %if.then7.i)) #6
          to label %if.then [label %if.then7.i], !srcloc !373

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %2, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__joycon_hid_send.__UNIQUE_ID_ddebug223, ptr noundef %dev.i, ptr noundef nonnull @.str.69, i32 noundef %call1.i) #6
  br label %if.then

if.then:                                          ; preds = %if.end74.if.then_crit_edge, %if.then7.i, %do.body.i, %entry.if.then_crit_edge
  %retval.0.i107110 = phi i32 [ %call1.i, %do.body.i ], [ %call1.i, %if.then7.i ], [ -12, %entry.if.then_crit_edge ], [ -12, %if.end74.if.then_crit_edge ]
  %3 = call ptr @memset(ptr %input_buf75, i32 0, i32 84)
  br label %cleanup79

if.end:                                           ; preds = %if.end.i
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 582) #6
  %4 = ptrtoint ptr %received_resp to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %received_resp, align 4, !range !374
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp ne i8 %5, 0
  %6 = or i1 %tobool10.not, %tobool4.not
  br i1 %6, label %if.end.if.end37_crit_edge, label %if.then12

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then12:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %7 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %call14121 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %8 = ptrtoint ptr %received_resp to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %received_resp, align 4, !range !374
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool17.not122.not = icmp eq i8 %9, 0
  br i1 %tobool17.not122.not, label %if.then12.cleanup_crit_edge, label %if.then12.for.end_crit_edge

if.then12.for.end_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then12.cleanup_crit_edge
  %__ret13.1128 = phi i32 [ %__ret13.1, %cleanup.cleanup_crit_edge ], [ %timeout, %if.then12.cleanup_crit_edge ]
  %call34 = call i32 @schedule_timeout(i32 noundef %__ret13.1128) #6
  %call14 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %10 = ptrtoint ptr %received_resp to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %received_resp, align 4, !range !374
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool17.not = icmp eq i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool21.not = icmp eq i32 %call34, 0
  %spec.store.select81 = select i1 %tobool21.not, i32 1, i32 %call34
  %__ret13.1 = select i1 %tobool17.not, i32 %call34, i32 %spec.store.select81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.1)
  %tobool27.not = icmp eq i32 %__ret13.1, 0
  %not.tobool17.not = xor i1 %tobool17.not, true
  %12 = select i1 %not.tobool17.not, i1 true, i1 %tobool27.not
  br i1 %12, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then12.for.end_crit_edge
  %__ret13.1.lcssa = phi i32 [ %timeout, %if.then12.for.end_crit_edge ], [ %__ret13.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end37

if.end37:                                         ; preds = %for.end, %if.end.if.end37_crit_edge
  %__ret.1 = phi i32 [ %timeout, %if.end.if.end37_crit_edge ], [ %__ret13.1.lcssa, %for.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %tobool39.not = icmp eq i32 %__ret.1, 0
  br i1 %tobool39.not, label %do.body41, label %if.end37.while.end_crit_edge

if.end37.while.end_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.body41:                                        ; preds = %if.end37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @joycon_hid_send_sync.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@joycon_hid_send_sync, %if.then49)) #6
          to label %do.end53 [label %if.then49], !srcloc !373

if.then49:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctlr, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %14, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @joycon_hid_send_sync.__UNIQUE_ID_ddebug224, ptr noundef %dev, ptr noundef nonnull @.str.76) #6
  br label %do.end53

do.end53:                                         ; preds = %if.then49, %do.body41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec130150)
  %tobool54.not = icmp eq i32 %dec130150, 0
  br i1 %tobool54.not, label %if.end74.thread, label %do.body56

if.end74.thread:                                  ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #8
  %15 = call ptr @memset(ptr %input_buf75, i32 0, i32 84)
  br label %while.end

do.body56:                                        ; preds = %do.end53
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @joycon_hid_send_sync.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@joycon_hid_send_sync, %if.then68)) #6
          to label %if.end74 [label %if.then68], !srcloc !373

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctlr, align 4
  %dev70 = getelementptr inbounds %struct.hid_device, ptr %17, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @joycon_hid_send_sync.__UNIQUE_ID_ddebug225, ptr noundef %dev70, ptr noundef nonnull @.str.77) #6
  br label %if.end74

if.end74:                                         ; preds = %if.then68, %do.body56
  %18 = call ptr @memset(ptr %input_buf75, i32 0, i32 84)
  %dec = add nsw i32 %dec130150, -1
  call fastcc void @joycon_enforce_subcmd_rate(ptr noundef %ctlr)
  %19 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctlr, align 4
  %call.i = call ptr @kmemdup(ptr noundef %data, i32 noundef %len, i32 noundef 3264) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end74.if.then_crit_edge, label %if.end74.if.end.i_crit_edge

if.end74.if.end.i_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end74.if.then_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

while.end:                                        ; preds = %if.end74.thread, %if.end37.while.end_crit_edge
  %ret.1 = phi i32 [ -110, %if.end74.thread ], [ 0, %if.end37.while.end_crit_edge ]
  %21 = ptrtoint ptr %received_resp to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %received_resp, align 4
  br label %cleanup79

cleanup79:                                        ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ %retval.0.i107110, %if.then ], [ %ret.1, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @joycon_read_stick_calibration(ptr noundef %ctlr, i16 noundef zeroext %cal_addr, ptr nocapture noundef %cal_x, ptr nocapture noundef %cal_y, i1 noundef zeroext %left_stick) unnamed_addr #2 align 64 {
entry:
  %buffer.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %cal_addr to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buffer.i) #6
  %0 = call ptr @memset(ptr %buffer.i, i32 0, i32 10)
  %subcmd_id.i = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer.i, i32 0, i32 3
  %1 = ptrtoint ptr %subcmd_id.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 16, ptr %subcmd_id.i, align 1
  %data1.i = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer.i, i32 0, i32 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv) #6
  %3 = ptrtoint ptr %data1.i to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %2, ptr %data1.i, align 1
  %arrayidx.i = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer.i, i32 1, i32 2, i32 2
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 9, ptr %arrayidx.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @joycon_request_spi_flash_read.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@joycon_read_stick_calibration, %if.then6.i)) #6
          to label %do.end.i [label %if.then6.i], !srcloc !373

if.then6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctlr, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %6, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @joycon_request_spi_flash_read.__UNIQUE_ID_ddebug229, ptr noundef %dev.i, ptr noundef nonnull @.str.99) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %entry
  %call8.i = call fastcc i32 @joycon_send_subcmd(ptr noundef %ctlr, ptr noundef nonnull %buffer.i, i32 noundef 5, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end, label %joycon_request_spi_flash_read.exit

joycon_request_spi_flash_read.exit:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctlr, align 4
  %dev15.i = getelementptr inbounds %struct.hid_device, ptr %8, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15.i, ptr noundef nonnull @.str.100, i32 noundef %call8.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer.i) #6
  br label %cleanup

if.end:                                           ; preds = %do.end.i
  %arrayidx18.i = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer.i) #6
  %9 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctlr, align 4
  %call3 = call i32 @hid_field_extract(ptr noundef %10, ptr noundef %arrayidx18.i, i32 noundef 0, i32 noundef 12) #6
  br i1 %left_stick, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctlr, align 4
  %add.ptr5 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 21
  %call6 = call i32 @hid_field_extract(ptr noundef %12, ptr noundef %add.ptr5, i32 noundef 4, i32 noundef 12) #6
  %13 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctlr, align 4
  %add.ptr8 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 23
  %call9 = call i32 @hid_field_extract(ptr noundef %14, ptr noundef %add.ptr8, i32 noundef 0, i32 noundef 12) #6
  %center = getelementptr inbounds %struct.joycon_stick_cal, ptr %cal_x, i32 0, i32 2
  %15 = ptrtoint ptr %center to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call9, ptr %center, align 4
  %16 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctlr, align 4
  %add.ptr11 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 24
  %call12 = call i32 @hid_field_extract(ptr noundef %17, ptr noundef %add.ptr11, i32 noundef 4, i32 noundef 12) #6
  %center13 = getelementptr inbounds %struct.joycon_stick_cal, ptr %cal_y, i32 0, i32 2
  %18 = ptrtoint ptr %center13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call12, ptr %center13, align 4
  %19 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctlr, align 4
  %add.ptr15 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 26
  %call16 = call i32 @hid_field_extract(ptr noundef %20, ptr noundef %add.ptr15, i32 noundef 0, i32 noundef 12) #6
  %21 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctlr, align 4
  %add.ptr18 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 27
  %call19 = call i32 @hid_field_extract(ptr noundef %22, ptr noundef %add.ptr18, i32 noundef 4, i32 noundef 12) #6
  br label %if.end40

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %center23 = getelementptr inbounds %struct.joycon_stick_cal, ptr %cal_x, i32 0, i32 2
  %23 = ptrtoint ptr %center23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call3, ptr %center23, align 4
  %24 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctlr, align 4
  %add.ptr25 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 21
  %call26 = call i32 @hid_field_extract(ptr noundef %25, ptr noundef %add.ptr25, i32 noundef 4, i32 noundef 12) #6
  %center27 = getelementptr inbounds %struct.joycon_stick_cal, ptr %cal_y, i32 0, i32 2
  %26 = ptrtoint ptr %center27 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call26, ptr %center27, align 4
  %27 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctlr, align 4
  %add.ptr29 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 23
  %call30 = call i32 @hid_field_extract(ptr noundef %28, ptr noundef %add.ptr29, i32 noundef 0, i32 noundef 12) #6
  %29 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctlr, align 4
  %add.ptr32 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 24
  %call33 = call i32 @hid_field_extract(ptr noundef %30, ptr noundef %add.ptr32, i32 noundef 4, i32 noundef 12) #6
  %31 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctlr, align 4
  %add.ptr35 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 26
  %call36 = call i32 @hid_field_extract(ptr noundef %32, ptr noundef %add.ptr35, i32 noundef 0, i32 noundef 12) #6
  %33 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctlr, align 4
  %add.ptr38 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 12, i32 27
  %call39 = call i32 @hid_field_extract(ptr noundef %34, ptr noundef %add.ptr38, i32 noundef 4, i32 noundef 12) #6
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then2
  %x_max_above.0 = phi i32 [ %call3, %if.then2 ], [ %call36, %if.else ]
  %x_min_below.0 = phi i32 [ %call16, %if.then2 ], [ %call30, %if.else ]
  %y_max_above.0 = phi i32 [ %call6, %if.then2 ], [ %call39, %if.else ]
  %y_min_below.0 = phi i32 [ %call19, %if.then2 ], [ %call33, %if.else ]
  %center41 = getelementptr inbounds %struct.joycon_stick_cal, ptr %cal_x, i32 0, i32 2
  %35 = ptrtoint ptr %center41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %center41, align 4
  %add = add i32 %36, %x_max_above.0
  %37 = ptrtoint ptr %cal_x to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add, ptr %cal_x, align 4
  %sub = sub i32 %36, %x_min_below.0
  %min = getelementptr inbounds %struct.joycon_stick_cal, ptr %cal_x, i32 0, i32 1
  %38 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub, ptr %min, align 4
  %center43 = getelementptr inbounds %struct.joycon_stick_cal, ptr %cal_y, i32 0, i32 2
  %39 = ptrtoint ptr %center43 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %center43, align 4
  %add44 = add i32 %40, %y_max_above.0
  %41 = ptrtoint ptr %cal_y to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add44, ptr %cal_y, align 4
  %sub47 = sub i32 %40, %y_min_below.0
  %min48 = getelementptr inbounds %struct.joycon_stick_cal, ptr %cal_y, i32 0, i32 1
  %42 = ptrtoint ptr %min48 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub47, ptr %min48, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %joycon_request_spi_flash_read.exit
  ret i32 %call8.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @joycon_send_subcmd(ptr noundef %ctlr, ptr noundef %subcmd, i32 noundef %data_len, i32 noundef %timeout) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %ctlr_state = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 4
  %0 = ptrtoint ptr %ctlr_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctlr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp5 = icmp eq i32 %1, 2
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %rumble_data = getelementptr inbounds %struct.joycon_subcmd_request, ptr %subcmd, i32 0, i32 2
  %rumble_queue_tail = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 34
  %2 = ptrtoint ptr %rumble_queue_tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rumble_queue_tail, align 4
  %arrayidx = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 32, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %arrayidx, align 1
  %6 = ptrtoint ptr %rumble_data to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %rumble_data, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  %7 = ptrtoint ptr %subcmd to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %subcmd, align 1
  %subcmd_num = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 10
  %8 = ptrtoint ptr %subcmd_num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %subcmd_num, align 4
  %packet_num = getelementptr inbounds %struct.joycon_subcmd_request, ptr %subcmd, i32 0, i32 1
  %10 = ptrtoint ptr %packet_num to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %packet_num, align 1
  %11 = load i8, ptr %subcmd_num, align 4
  %inc = add i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %inc)
  %cmp13 = icmp ugt i8 %inc, 15
  %spec.select = select i1 %cmp13, i8 0, i8 %inc
  %12 = ptrtoint ptr %subcmd_num to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %spec.select, ptr %subcmd_num, align 4
  %subcmd_id = getelementptr inbounds %struct.joycon_subcmd_request, ptr %subcmd, i32 0, i32 3
  %13 = ptrtoint ptr %subcmd_id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %subcmd_id, align 1
  %subcmd_ack_match = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 16
  %15 = ptrtoint ptr %subcmd_ack_match to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %subcmd_ack_match, align 2
  %msg_type = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 9
  %16 = ptrtoint ptr %msg_type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %msg_type, align 4
  %add = add i32 %data_len, 11
  %call18 = tail call fastcc i32 @joycon_hid_send_sync(ptr noundef %ctlr, ptr noundef %subcmd, i32 noundef %add, i32 noundef %timeout)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %do.body22, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @joycon_send_subcmd.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@joycon_send_subcmd, %if.then27)) #6
          to label %cleanup [label %if.then27], !srcloc !373

if.then27:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctlr, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %18, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @joycon_send_subcmd.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.102, i32 noundef %call18) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %do.body22, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -19, %if.then ], [ %call18, %if.then27 ], [ 0, %if.end.cleanup_crit_edge ], [ %call18, %do.body22 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_field_extract(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @joycon_player_led_brightness_set(ptr noundef readonly %led, i32 noundef %brightness) #2 align 64 {
entry:
  %buffer.i = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.led_classdev, ptr %led, i32 0, i32 11
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
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %for.cond

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.148) #9
  br label %cleanup

for.cond:                                         ; preds = %entry
  %arrayidx = getelementptr %struct.joycon_ctlr, ptr %5, i32 0, i32 2, i32 0
  %cmp3 = icmp eq ptr %arrayidx, %led
  br i1 %cmp3, label %for.cond.for.end_crit_edge, label %for.cond.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.1 = getelementptr %struct.joycon_ctlr, ptr %5, i32 0, i32 2, i32 1
  %cmp3.1 = icmp eq ptr %arrayidx.1, %led
  br i1 %cmp3.1, label %for.cond.1.for.end_crit_edge, label %for.cond.2

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.2 = getelementptr %struct.joycon_ctlr, ptr %5, i32 0, i32 2, i32 2
  %cmp3.2 = icmp eq ptr %arrayidx.2, %led
  br i1 %cmp3.2, label %for.cond.2.for.end_crit_edge, label %for.cond.3

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.3 = getelementptr %struct.joycon_ctlr, ptr %5, i32 0, i32 2, i32 3
  %cmp3.3 = icmp eq ptr %arrayidx.3, %led
  %spec.select = select i1 %cmp3.3, i1 false, i1 true
  br label %for.end

for.end:                                          ; preds = %for.cond.3, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge
  %cmp12.1 = phi i1 [ false, %for.cond.2.for.end_crit_edge ], [ true, %for.cond.1.for.end_crit_edge ], [ false, %for.cond.for.end_crit_edge ], [ false, %for.cond.3 ]
  %cmp12.2 = phi i1 [ true, %for.cond.2.for.end_crit_edge ], [ false, %for.cond.1.for.end_crit_edge ], [ false, %for.cond.for.end_crit_edge ], [ false, %for.cond.3 ]
  %cmp.lcssa = phi i1 [ false, %for.cond.2.for.end_crit_edge ], [ false, %for.cond.1.for.end_crit_edge ], [ false, %for.cond.for.end_crit_edge ], [ %spec.select, %for.cond.3 ]
  br i1 %cmp.lcssa, label %for.end.cleanup_crit_edge, label %if.end8

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %for.end
  %output_mutex = getelementptr inbounds %struct.joycon_ctlr, ptr %5, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %output_mutex, i32 noundef 0) #6
  br i1 %cmp3, label %for.inc20.1.thread62, label %for.inc20

for.inc20.1.thread62:                             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %brightness16.164 = getelementptr %struct.joycon_ctlr, ptr %5, i32 0, i32 2, i32 1, i32 1
  %6 = ptrtoint ptr %brightness16.164 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %brightness16.164, align 4
  br label %for.inc20.2.thread75

for.inc20:                                        ; preds = %if.end8
  %brightness16 = getelementptr %struct.joycon_ctlr, ptr %5, i32 0, i32 2, i32 0, i32 1
  %8 = ptrtoint ptr %brightness16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %brightness16, align 4
  br i1 %cmp12.1, label %for.inc20.for.inc20.2.thread75_crit_edge, label %for.inc20.1

for.inc20.for.inc20.2.thread75_crit_edge:         ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc20.2.thread75

for.inc20.1:                                      ; preds = %for.inc20
  %brightness16.1 = getelementptr %struct.joycon_ctlr, ptr %5, i32 0, i32 2, i32 1, i32 1
  %10 = ptrtoint ptr %brightness16.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %brightness16.1, align 4
  %shl.pn.1 = shl i32 %11, 1
  %val.1.1 = or i32 %shl.pn.1, %9
  br i1 %cmp12.2, label %for.inc20.1.if.else.3_crit_edge, label %for.inc20.2

for.inc20.1.if.else.3_crit_edge:                  ; preds = %for.inc20.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.3

for.inc20.2.thread75:                             ; preds = %for.inc20.for.inc20.2.thread75_crit_edge, %for.inc20.1.thread62
  %brightness.sink = phi i32 [ %7, %for.inc20.1.thread62 ], [ %brightness, %for.inc20.for.inc20.2.thread75_crit_edge ]
  %.sink = phi i32 [ %brightness, %for.inc20.1.thread62 ], [ %9, %for.inc20.for.inc20.2.thread75_crit_edge ]
  %shl.pn.157 = shl i32 %brightness.sink, 1
  %val.1.158 = or i32 %shl.pn.157, %.sink
  %brightness16.277 = getelementptr %struct.joycon_ctlr, ptr %5, i32 0, i32 2, i32 2, i32 1
  %12 = ptrtoint ptr %brightness16.277 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %brightness16.277, align 4
  br label %if.else.3

for.inc20.2:                                      ; preds = %for.inc20.1
  call void @__sanitizer_cov_trace_pc() #8
  %brightness16.2 = getelementptr %struct.joycon_ctlr, ptr %5, i32 0, i32 2, i32 2, i32 1
  %14 = ptrtoint ptr %brightness16.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %brightness16.2, align 4
  %shl.pn.2 = shl i32 %15, 2
  %val.1.2 = or i32 %shl.pn.2, %val.1.1
  br label %for.inc20.3

if.else.3:                                        ; preds = %for.inc20.2.thread75, %for.inc20.1.if.else.3_crit_edge
  %.sink81 = phi i32 [ %13, %for.inc20.2.thread75 ], [ %brightness, %for.inc20.1.if.else.3_crit_edge ]
  %val.1.158.sink = phi i32 [ %val.1.158, %for.inc20.2.thread75 ], [ %val.1.1, %for.inc20.1.if.else.3_crit_edge ]
  %shl.pn.278 = shl i32 %.sink81, 2
  %val.1.279 = or i32 %shl.pn.278, %val.1.158.sink
  %brightness16.3 = getelementptr %struct.joycon_ctlr, ptr %5, i32 0, i32 2, i32 3, i32 1
  %16 = ptrtoint ptr %brightness16.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %brightness16.3, align 4
  br label %for.inc20.3

for.inc20.3:                                      ; preds = %if.else.3, %for.inc20.2
  %val.1.274 = phi i32 [ %val.1.279, %if.else.3 ], [ %val.1.2, %for.inc20.2 ]
  %brightness.pn.3 = phi i32 [ %17, %if.else.3 ], [ %brightness, %for.inc20.2 ]
  %shl.pn.3 = shl i32 %brightness.pn.3, 3
  %val.1.3 = or i32 %shl.pn.3, %val.1.274
  %conv = trunc i32 %val.1.3 to i8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buffer.i) #6
  %18 = call ptr @memset(ptr %buffer.i, i32 0, i32 10)
  %subcmd_id.i = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer.i, i32 0, i32 3
  %19 = ptrtoint ptr %subcmd_id.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 48, ptr %subcmd_id.i, align 1
  %data.i = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer.i, i32 0, i32 4
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %data.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @joycon_set_player_leds.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@joycon_player_led_brightness_set, %if.then.i)) #6
          to label %joycon_set_player_leds.exit [label %if.then.i], !srcloc !373

if.then.i:                                        ; preds = %for.inc20.3
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %22, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @joycon_set_player_leds.__UNIQUE_ID_ddebug228, ptr noundef %dev.i, ptr noundef nonnull @.str.143) #6
  br label %joycon_set_player_leds.exit

joycon_set_player_leds.exit:                      ; preds = %if.then.i, %for.inc20.3
  %call5.i = call fastcc i32 @joycon_send_subcmd(ptr noundef nonnull %5, ptr noundef nonnull %buffer.i, i32 noundef 1, i32 noundef 25) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buffer.i) #6
  call void @mutex_unlock(ptr noundef %output_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %joycon_set_player_leds.exit, %for.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call5.i, %joycon_set_player_leds.exit ], [ -19, %do.end ], [ -22, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @joycon_home_led_brightness_set(ptr nocapture noundef readonly %led, i32 noundef %brightness) #2 align 64 {
entry:
  %buffer = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.led_classdev, ptr %led, i32 0, i32 11
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buffer) #6
  %4 = call ptr @memset(ptr %buffer, i32 0, i32 10)
  %driver_data.i.i = getelementptr i8, ptr %3, i32 164
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.148) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %subcmd_id = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer, i32 0, i32 3
  %7 = ptrtoint ptr %subcmd_id to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 56, ptr %subcmd_id, align 1
  %data3 = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer, i32 0, i32 4
  %8 = ptrtoint ptr %data3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %data3, align 1
  %shl = shl i32 %brightness, 4
  %conv = trunc i32 %shl to i8
  %arrayidx5 = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %arrayidx5, align 1
  %or = or i32 %shl, %brightness
  %conv7 = trunc i32 %or to i8
  %arrayidx8 = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv7, ptr %arrayidx8, align 1
  %arrayidx9 = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer, i32 1, i32 2, i32 1
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 17, ptr %arrayidx9, align 1
  %arrayidx10 = getelementptr inbounds %struct.joycon_subcmd_request, ptr %buffer, i32 1, i32 2, i32 2
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 17, ptr %arrayidx10, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @joycon_home_led_brightness_set.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@joycon_home_led_brightness_set, %if.then17)) #6
          to label %do.end21 [label %if.then17], !srcloc !373

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @joycon_home_led_brightness_set.__UNIQUE_ID_ddebug262, ptr noundef %3, ptr noundef nonnull @.str.151) #6
  br label %do.end21

do.end21:                                         ; preds = %if.then17, %if.end
  %output_mutex = getelementptr inbounds %struct.joycon_ctlr, ptr %6, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %output_mutex, i32 noundef 0) #6
  %call22 = call fastcc i32 @joycon_send_subcmd(ptr noundef nonnull %6, ptr noundef nonnull %buffer, i32 noundef 5, i32 noundef 25)
  call void @mutex_unlock(ptr noundef %output_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %do.end
  %retval.0 = phi i32 [ %call22, %do.end21 ], [ -19, %do.end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @joycon_battery_get_property(ptr noundef %supply, i32 noundef %prop, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %supply) #6
  %lock = getelementptr inbounds %struct.joycon_ctlr, ptr %call, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %battery_capacity = getelementptr inbounds %struct.joycon_ctlr, ptr %call, i32 0, i32 29
  %0 = ptrtoint ptr %battery_capacity to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %battery_capacity, align 4
  %battery_charging = getelementptr inbounds %struct.joycon_ctlr, ptr %call, i32 0, i32 30
  %2 = ptrtoint ptr %battery_charging to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %battery_charging, align 1, !range !374
  %host_powered = getelementptr inbounds %struct.joycon_ctlr, ptr %call, i32 0, i32 31
  %4 = ptrtoint ptr %host_powered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %host_powered, align 2, !range !374
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  %6 = zext i32 %prop to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.192)
  switch i32 %prop, label %entry.sw.epilog_crit_edge [
    i32 3, label %entry.sw.epilog.sink.split_crit_edge
    i32 66, label %sw.bb9
    i32 51, label %sw.bb10
    i32 0, label %sw.bb12
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv11 = zext i8 %1 to i32
  br label %sw.epilog.sink.split

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %sw.bb12.sw.epilog.sink.split_crit_edge

sw.bb12.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

if.else:                                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp15 = icmp ne i8 %1, 5
  %brmerge = select i1 %cmp15, i1 true, i1 %tobool6.not
  %. = select i1 %brmerge, i32 2, i32 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.else, %sw.bb12.sw.epilog.sink.split_crit_edge, %sw.bb10, %sw.bb9, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %conv11, %sw.bb10 ], [ 2, %sw.bb9 ], [ 1, %entry.sw.epilog.sink.split_crit_edge ], [ 1, %sw.bb12.sw.epilog.sink.split_crit_edge ], [ %., %if.else ]
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
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
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @joycon_play_effect(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %effect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %effect to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %effect, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %1)
  %cmp.not = icmp eq i16 %1, 80
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %4 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %weak_magnitude, align 2
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %u, align 4
  tail call fastcc void @joycon_set_rumble(ptr noundef %3, i16 noundef zeroext %5, i16 noundef zeroext %7, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @joycon_set_rumble(ptr noundef %ctlr, i16 noundef zeroext %amp_r, i16 noundef zeroext %amp_l, i1 noundef zeroext %schedule_now) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %rumble_rl_freq = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 40
  %0 = ptrtoint ptr %rumble_rl_freq to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rumble_rl_freq, align 4
  %rumble_rh_freq = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 41
  %2 = ptrtoint ptr %rumble_rh_freq to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rumble_rh_freq, align 2
  %rumble_ll_freq = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 38
  %4 = ptrtoint ptr %rumble_ll_freq to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rumble_ll_freq, align 4
  %rumble_lh_freq = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 39
  %6 = ptrtoint ptr %rumble_lh_freq to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rumble_lh_freq, align 2
  %conv5 = zext i16 %amp_l to i32
  %8 = or i16 %amp_l, %amp_r
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rumble_zero_countdown = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 42
  %10 = ptrtoint ptr %rumble_zero_countdown to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 5, ptr %rumble_zero_countdown, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  %conv12 = zext i16 %amp_r to i32
  %mul = mul nuw nsw i32 %conv12, 1003
  %div = udiv i32 %mul, 65535
  %conv13 = trunc i32 %div to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 41, i16 %1)
  %cmp.i.i = icmp ugt i16 %1, 41
  br i1 %cmp.i.i, label %if.end.for.body.i.i_crit_edge, label %if.end.joycon_find_rumble_freq.exit.i_crit_edge

if.end.joycon_find_rumble_freq.exit.i_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %joycon_find_rumble_freq.exit.i

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %i.030.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 1, %if.end.for.body.i.i_crit_edge ]
  %sub.i.i = add nsw i32 %i.030.i.i, -1
  %freq8.i.i = getelementptr %struct.joycon_rumble_freq_data, ptr @joycon_rumble_frequencies, i32 %sub.i.i, i32 2
  %11 = ptrtoint ptr %freq8.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %freq8.i.i, align 2, !noalias !376
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %1)
  %cmp10.i.i = icmp ult i16 %12, %1
  br i1 %cmp10.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %freq14.i.i = getelementptr %struct.joycon_rumble_freq_data, ptr @joycon_rumble_frequencies, i32 %i.030.i.i, i32 2
  %13 = ptrtoint ptr %freq14.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %freq14.i.i, align 2, !noalias !376
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %1)
  %cmp16.not.i.i = icmp ult i16 %14, %1
  br i1 %cmp16.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i.joycon_find_rumble_freq.exit.i_crit_edge

land.lhs.true.i.i.joycon_find_rumble_freq.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %joycon_find_rumble_freq.exit.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.030.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 158
  br i1 %exitcond.not.i.i, label %for.inc.i.i.joycon_find_rumble_freq.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.joycon_find_rumble_freq.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %joycon_find_rumble_freq.exit.i

joycon_find_rumble_freq.exit.i:                   ; preds = %for.inc.i.i.joycon_find_rumble_freq.exit.i_crit_edge, %land.lhs.true.i.i.joycon_find_rumble_freq.exit.i_crit_edge, %if.end.joycon_find_rumble_freq.exit.i_crit_edge
  %i.1.i.i = phi i32 [ 0, %if.end.joycon_find_rumble_freq.exit.i_crit_edge ], [ %i.030.i.i, %land.lhs.true.i.i.joycon_find_rumble_freq.exit.i_crit_edge ], [ 158, %for.inc.i.i.joycon_find_rumble_freq.exit.i_crit_edge ]
  %tmp.sroa.3.0.arrayidx20.i.sroa_idx.i = getelementptr %struct.joycon_rumble_freq_data, ptr @joycon_rumble_frequencies, i32 %i.1.i.i, i32 1
  %15 = ptrtoint ptr %tmp.sroa.3.0.arrayidx20.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %tmp.sroa.3.0.copyload.i = load i8, ptr %tmp.sroa.3.0.arrayidx20.i.sroa_idx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 41, i16 %3)
  %cmp.i37.i = icmp ugt i16 %3, 41
  br i1 %cmp.i37.i, label %joycon_find_rumble_freq.exit.i.for.body.i42.i_crit_edge, label %joycon_find_rumble_freq.exit.i.joycon_find_rumble_freq.exit51.i_crit_edge

joycon_find_rumble_freq.exit.i.joycon_find_rumble_freq.exit51.i_crit_edge: ; preds = %joycon_find_rumble_freq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %joycon_find_rumble_freq.exit51.i

joycon_find_rumble_freq.exit.i.for.body.i42.i_crit_edge: ; preds = %joycon_find_rumble_freq.exit.i
  br label %for.body.i42.i

for.body.i42.i:                                   ; preds = %for.inc.i48.i.for.body.i42.i_crit_edge, %joycon_find_rumble_freq.exit.i.for.body.i42.i_crit_edge
  %i.030.i38.i = phi i32 [ %inc.i46.i, %for.inc.i48.i.for.body.i42.i_crit_edge ], [ 1, %joycon_find_rumble_freq.exit.i.for.body.i42.i_crit_edge ]
  %sub.i39.i = add nsw i32 %i.030.i38.i, -1
  %freq8.i40.i = getelementptr %struct.joycon_rumble_freq_data, ptr @joycon_rumble_frequencies, i32 %sub.i39.i, i32 2
  %16 = ptrtoint ptr %freq8.i40.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %freq8.i40.i, align 2, !noalias !379
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %3)
  %cmp10.i41.i = icmp ult i16 %17, %3
  br i1 %cmp10.i41.i, label %land.lhs.true.i45.i, label %for.body.i42.i.for.inc.i48.i_crit_edge

for.body.i42.i.for.inc.i48.i_crit_edge:           ; preds = %for.body.i42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i48.i

land.lhs.true.i45.i:                              ; preds = %for.body.i42.i
  %freq14.i43.i = getelementptr %struct.joycon_rumble_freq_data, ptr @joycon_rumble_frequencies, i32 %i.030.i38.i, i32 2
  %18 = ptrtoint ptr %freq14.i43.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %freq14.i43.i, align 2, !noalias !379
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %3)
  %cmp16.not.i44.i = icmp ult i16 %19, %3
  br i1 %cmp16.not.i44.i, label %land.lhs.true.i45.i.for.inc.i48.i_crit_edge, label %land.lhs.true.i45.i.joycon_find_rumble_freq.exit51.i_crit_edge

land.lhs.true.i45.i.joycon_find_rumble_freq.exit51.i_crit_edge: ; preds = %land.lhs.true.i45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %joycon_find_rumble_freq.exit51.i

land.lhs.true.i45.i.for.inc.i48.i_crit_edge:      ; preds = %land.lhs.true.i45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i48.i

for.inc.i48.i:                                    ; preds = %land.lhs.true.i45.i.for.inc.i48.i_crit_edge, %for.body.i42.i.for.inc.i48.i_crit_edge
  %inc.i46.i = add nuw nsw i32 %i.030.i38.i, 1
  %exitcond.not.i47.i = icmp eq i32 %inc.i46.i, 158
  br i1 %exitcond.not.i47.i, label %for.inc.i48.i.joycon_find_rumble_freq.exit51.i_crit_edge, label %for.inc.i48.i.for.body.i42.i_crit_edge

for.inc.i48.i.for.body.i42.i_crit_edge:           ; preds = %for.inc.i48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i42.i

for.inc.i48.i.joycon_find_rumble_freq.exit51.i_crit_edge: ; preds = %for.inc.i48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %joycon_find_rumble_freq.exit51.i

joycon_find_rumble_freq.exit51.i:                 ; preds = %for.inc.i48.i.joycon_find_rumble_freq.exit51.i_crit_edge, %land.lhs.true.i45.i.joycon_find_rumble_freq.exit51.i_crit_edge, %joycon_find_rumble_freq.exit.i.joycon_find_rumble_freq.exit51.i_crit_edge
  %i.1.i49.i = phi i32 [ 0, %joycon_find_rumble_freq.exit.i.joycon_find_rumble_freq.exit51.i_crit_edge ], [ %i.030.i38.i, %land.lhs.true.i45.i.joycon_find_rumble_freq.exit51.i_crit_edge ], [ 158, %for.inc.i48.i.joycon_find_rumble_freq.exit51.i_crit_edge ]
  %arrayidx20.i50.i = getelementptr %struct.joycon_rumble_freq_data, ptr @joycon_rumble_frequencies, i32 %i.1.i49.i
  %20 = ptrtoint ptr %arrayidx20.i50.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %tmp1.sroa.0.0.copyload.i = load i16, ptr %arrayidx20.i50.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv13)
  %cmp.not.i.i = icmp eq i16 %conv13, 0
  br i1 %cmp.not.i.i, label %joycon_find_rumble_freq.exit51.i.joycon_encode_rumble.exit_crit_edge, label %joycon_find_rumble_freq.exit51.i.for.body.i55.i_crit_edge

joycon_find_rumble_freq.exit51.i.for.body.i55.i_crit_edge: ; preds = %joycon_find_rumble_freq.exit51.i
  br label %for.body.i55.i

joycon_find_rumble_freq.exit51.i.joycon_encode_rumble.exit_crit_edge: ; preds = %joycon_find_rumble_freq.exit51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %joycon_encode_rumble.exit

for.body.i55.i:                                   ; preds = %for.inc.i60.i.for.body.i55.i_crit_edge, %joycon_find_rumble_freq.exit51.i.for.body.i55.i_crit_edge
  %i.030.i52.i = phi i32 [ %inc.i58.i, %for.inc.i60.i.for.body.i55.i_crit_edge ], [ 1, %joycon_find_rumble_freq.exit51.i.for.body.i55.i_crit_edge ]
  %sub.i53.i = add nsw i32 %i.030.i52.i, -1
  %amp8.i.i = getelementptr %struct.joycon_rumble_amp_data, ptr @joycon_rumble_amplitudes, i32 %sub.i53.i, i32 2
  %21 = ptrtoint ptr %amp8.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %amp8.i.i, align 2, !noalias !382
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %conv13)
  %cmp10.i54.i = icmp ult i16 %22, %conv13
  br i1 %cmp10.i54.i, label %land.lhs.true.i57.i, label %for.body.i55.i.for.inc.i60.i_crit_edge

for.body.i55.i.for.inc.i60.i_crit_edge:           ; preds = %for.body.i55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i60.i

land.lhs.true.i57.i:                              ; preds = %for.body.i55.i
  %amp14.i.i = getelementptr %struct.joycon_rumble_amp_data, ptr @joycon_rumble_amplitudes, i32 %i.030.i52.i, i32 2
  %23 = ptrtoint ptr %amp14.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %amp14.i.i, align 2, !noalias !382
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %conv13)
  %cmp16.not.i56.i = icmp ult i16 %24, %conv13
  br i1 %cmp16.not.i56.i, label %land.lhs.true.i57.i.for.inc.i60.i_crit_edge, label %land.lhs.true.i57.i.joycon_encode_rumble.exit_crit_edge

land.lhs.true.i57.i.joycon_encode_rumble.exit_crit_edge: ; preds = %land.lhs.true.i57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %joycon_encode_rumble.exit

land.lhs.true.i57.i.for.inc.i60.i_crit_edge:      ; preds = %land.lhs.true.i57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i60.i

for.inc.i60.i:                                    ; preds = %land.lhs.true.i57.i.for.inc.i60.i_crit_edge, %for.body.i55.i.for.inc.i60.i_crit_edge
  %inc.i58.i = add nuw nsw i32 %i.030.i52.i, 1
  %exitcond.not.i59.i = icmp eq i32 %inc.i58.i, 100
  br i1 %exitcond.not.i59.i, label %for.inc.i60.i.joycon_encode_rumble.exit_crit_edge, label %for.inc.i60.i.for.body.i55.i_crit_edge

for.inc.i60.i.for.body.i55.i_crit_edge:           ; preds = %for.inc.i60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i55.i

for.inc.i60.i.joycon_encode_rumble.exit_crit_edge: ; preds = %for.inc.i60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %joycon_encode_rumble.exit

joycon_encode_rumble.exit:                        ; preds = %for.inc.i60.i.joycon_encode_rumble.exit_crit_edge, %land.lhs.true.i57.i.joycon_encode_rumble.exit_crit_edge, %joycon_find_rumble_freq.exit51.i.joycon_encode_rumble.exit_crit_edge
  %i.1.i61.i = phi i32 [ 0, %joycon_find_rumble_freq.exit51.i.joycon_encode_rumble.exit_crit_edge ], [ %i.030.i52.i, %land.lhs.true.i57.i.joycon_encode_rumble.exit_crit_edge ], [ 100, %for.inc.i60.i.joycon_encode_rumble.exit_crit_edge ]
  %arrayidx20.i62.i = getelementptr %struct.joycon_rumble_amp_data, ptr @joycon_rumble_amplitudes, i32 %i.1.i61.i
  %25 = ptrtoint ptr %arrayidx20.i62.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %tmp2.sroa.0.0.copyload.i = load i8, ptr %arrayidx20.i62.i, align 2
  %tmp2.sroa.463.0.arrayidx20.i62.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx20.i62.i, i32 2
  %26 = ptrtoint ptr %tmp2.sroa.463.0.arrayidx20.i62.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %tmp2.sroa.463.0.copyload.i = load i16, ptr %tmp2.sroa.463.0.arrayidx20.i62.sroa_idx.i, align 2
  %27 = lshr i16 %tmp1.sroa.0.0.copyload.i, 8
  %and6.i = trunc i16 %tmp1.sroa.0.0.copyload.i to i8
  %add.i = add i8 %tmp2.sroa.0.0.copyload.i, %and6.i
  %28 = lshr i16 %tmp2.sroa.463.0.copyload.i, 8
  %29 = trunc i16 %28 to i8
  %conv17.i = add i8 %tmp.sroa.3.0.copyload.i, %29
  %mul15 = mul nuw nsw i32 %conv5, 1003
  %div16 = udiv i32 %mul15, 65535
  %conv17 = trunc i32 %div16 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 41, i16 %5)
  %cmp.i.i1 = icmp ugt i16 %5, 41
  br i1 %cmp.i.i1, label %joycon_encode_rumble.exit.for.body.i.i6_crit_edge, label %joycon_encode_rumble.exit.joycon_find_rumble_freq.exit.i17_crit_edge

joycon_encode_rumble.exit.joycon_find_rumble_freq.exit.i17_crit_edge: ; preds = %joycon_encode_rumble.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %joycon_find_rumble_freq.exit.i17

joycon_encode_rumble.exit.for.body.i.i6_crit_edge: ; preds = %joycon_encode_rumble.exit
  br label %for.body.i.i6

for.body.i.i6:                                    ; preds = %for.inc.i.i12.for.body.i.i6_crit_edge, %joycon_encode_rumble.exit.for.body.i.i6_crit_edge
  %i.030.i.i2 = phi i32 [ %inc.i.i10, %for.inc.i.i12.for.body.i.i6_crit_edge ], [ 1, %joycon_encode_rumble.exit.for.body.i.i6_crit_edge ]
  %sub.i.i3 = add nsw i32 %i.030.i.i2, -1
  %freq8.i.i4 = getelementptr %struct.joycon_rumble_freq_data, ptr @joycon_rumble_frequencies, i32 %sub.i.i3, i32 2
  %30 = ptrtoint ptr %freq8.i.i4 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %freq8.i.i4, align 2, !noalias !385
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %5)
  %cmp10.i.i5 = icmp ult i16 %31, %5
  br i1 %cmp10.i.i5, label %land.lhs.true.i.i9, label %for.body.i.i6.for.inc.i.i12_crit_edge

for.body.i.i6.for.inc.i.i12_crit_edge:            ; preds = %for.body.i.i6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i12

land.lhs.true.i.i9:                               ; preds = %for.body.i.i6
  %freq14.i.i7 = getelementptr %struct.joycon_rumble_freq_data, ptr @joycon_rumble_frequencies, i32 %i.030.i.i2, i32 2
  %32 = ptrtoint ptr %freq14.i.i7 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %freq14.i.i7, align 2, !noalias !385
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %5)
  %cmp16.not.i.i8 = icmp ult i16 %33, %5
  br i1 %cmp16.not.i.i8, label %land.lhs.true.i.i9.for.inc.i.i12_crit_edge, label %land.lhs.true.i.i9.joycon_find_rumble_freq.exit.i17_crit_edge

land.lhs.true.i.i9.joycon_find_rumble_freq.exit.i17_crit_edge: ; preds = %land.lhs.true.i.i9
  call void @__sanitizer_cov_trace_pc() #8
  br label %joycon_find_rumble_freq.exit.i17

land.lhs.true.i.i9.for.inc.i.i12_crit_edge:       ; preds = %land.lhs.true.i.i9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i12

for.inc.i.i12:                                    ; preds = %land.lhs.true.i.i9.for.inc.i.i12_crit_edge, %for.body.i.i6.for.inc.i.i12_crit_edge
  %inc.i.i10 = add nuw nsw i32 %i.030.i.i2, 1
  %exitcond.not.i.i11 = icmp eq i32 %inc.i.i10, 158
  br i1 %exitcond.not.i.i11, label %for.inc.i.i12.joycon_find_rumble_freq.exit.i17_crit_edge, label %for.inc.i.i12.for.body.i.i6_crit_edge

for.inc.i.i12.for.body.i.i6_crit_edge:            ; preds = %for.inc.i.i12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i6

for.inc.i.i12.joycon_find_rumble_freq.exit.i17_crit_edge: ; preds = %for.inc.i.i12
  call void @__sanitizer_cov_trace_pc() #8
  br label %joycon_find_rumble_freq.exit.i17

joycon_find_rumble_freq.exit.i17:                 ; preds = %for.inc.i.i12.joycon_find_rumble_freq.exit.i17_crit_edge, %land.lhs.true.i.i9.joycon_find_rumble_freq.exit.i17_crit_edge, %joycon_encode_rumble.exit.joycon_find_rumble_freq.exit.i17_crit_edge
  %i.1.i.i13 = phi i32 [ 0, %joycon_encode_rumble.exit.joycon_find_rumble_freq.exit.i17_crit_edge ], [ %i.030.i.i2, %land.lhs.true.i.i9.joycon_find_rumble_freq.exit.i17_crit_edge ], [ 158, %for.inc.i.i12.joycon_find_rumble_freq.exit.i17_crit_edge ]
  %tmp.sroa.3.0.arrayidx20.i.sroa_idx.i14 = getelementptr %struct.joycon_rumble_freq_data, ptr @joycon_rumble_frequencies, i32 %i.1.i.i13, i32 1
  %34 = ptrtoint ptr %tmp.sroa.3.0.arrayidx20.i.sroa_idx.i14 to i32
  call void @__asan_load1_noabort(i32 %34)
  %tmp.sroa.3.0.copyload.i15 = load i8, ptr %tmp.sroa.3.0.arrayidx20.i.sroa_idx.i14, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 41, i16 %7)
  %cmp.i37.i16 = icmp ugt i16 %7, 41
  br i1 %cmp.i37.i16, label %joycon_find_rumble_freq.exit.i17.for.body.i42.i22_crit_edge, label %joycon_find_rumble_freq.exit.i17.joycon_find_rumble_freq.exit51.i33_crit_edge

joycon_find_rumble_freq.exit.i17.joycon_find_rumble_freq.exit51.i33_crit_edge: ; preds = %joycon_find_rumble_freq.exit.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %joycon_find_rumble_freq.exit51.i33

joycon_find_rumble_freq.exit.i17.for.body.i42.i22_crit_edge: ; preds = %joycon_find_rumble_freq.exit.i17
  br label %for.body.i42.i22

for.body.i42.i22:                                 ; preds = %for.inc.i48.i28.for.body.i42.i22_crit_edge, %joycon_find_rumble_freq.exit.i17.for.body.i42.i22_crit_edge
  %i.030.i38.i18 = phi i32 [ %inc.i46.i26, %for.inc.i48.i28.for.body.i42.i22_crit_edge ], [ 1, %joycon_find_rumble_freq.exit.i17.for.body.i42.i22_crit_edge ]
  %sub.i39.i19 = add nsw i32 %i.030.i38.i18, -1
  %freq8.i40.i20 = getelementptr %struct.joycon_rumble_freq_data, ptr @joycon_rumble_frequencies, i32 %sub.i39.i19, i32 2
  %35 = ptrtoint ptr %freq8.i40.i20 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %freq8.i40.i20, align 2, !noalias !388
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %7)
  %cmp10.i41.i21 = icmp ult i16 %36, %7
  br i1 %cmp10.i41.i21, label %land.lhs.true.i45.i25, label %for.body.i42.i22.for.inc.i48.i28_crit_edge

for.body.i42.i22.for.inc.i48.i28_crit_edge:       ; preds = %for.body.i42.i22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i48.i28

land.lhs.true.i45.i25:                            ; preds = %for.body.i42.i22
  %freq14.i43.i23 = getelementptr %struct.joycon_rumble_freq_data, ptr @joycon_rumble_frequencies, i32 %i.030.i38.i18, i32 2
  %37 = ptrtoint ptr %freq14.i43.i23 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %freq14.i43.i23, align 2, !noalias !388
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %7)
  %cmp16.not.i44.i24 = icmp ult i16 %38, %7
  br i1 %cmp16.not.i44.i24, label %land.lhs.true.i45.i25.for.inc.i48.i28_crit_edge, label %land.lhs.true.i45.i25.joycon_find_rumble_freq.exit51.i33_crit_edge

land.lhs.true.i45.i25.joycon_find_rumble_freq.exit51.i33_crit_edge: ; preds = %land.lhs.true.i45.i25
  call void @__sanitizer_cov_trace_pc() #8
  br label %joycon_find_rumble_freq.exit51.i33

land.lhs.true.i45.i25.for.inc.i48.i28_crit_edge:  ; preds = %land.lhs.true.i45.i25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i48.i28

for.inc.i48.i28:                                  ; preds = %land.lhs.true.i45.i25.for.inc.i48.i28_crit_edge, %for.body.i42.i22.for.inc.i48.i28_crit_edge
  %inc.i46.i26 = add nuw nsw i32 %i.030.i38.i18, 1
  %exitcond.not.i47.i27 = icmp eq i32 %inc.i46.i26, 158
  br i1 %exitcond.not.i47.i27, label %for.inc.i48.i28.joycon_find_rumble_freq.exit51.i33_crit_edge, label %for.inc.i48.i28.for.body.i42.i22_crit_edge

for.inc.i48.i28.for.body.i42.i22_crit_edge:       ; preds = %for.inc.i48.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i42.i22

for.inc.i48.i28.joycon_find_rumble_freq.exit51.i33_crit_edge: ; preds = %for.inc.i48.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %joycon_find_rumble_freq.exit51.i33

joycon_find_rumble_freq.exit51.i33:               ; preds = %for.inc.i48.i28.joycon_find_rumble_freq.exit51.i33_crit_edge, %land.lhs.true.i45.i25.joycon_find_rumble_freq.exit51.i33_crit_edge, %joycon_find_rumble_freq.exit.i17.joycon_find_rumble_freq.exit51.i33_crit_edge
  %i.1.i49.i29 = phi i32 [ 0, %joycon_find_rumble_freq.exit.i17.joycon_find_rumble_freq.exit51.i33_crit_edge ], [ %i.030.i38.i18, %land.lhs.true.i45.i25.joycon_find_rumble_freq.exit51.i33_crit_edge ], [ 158, %for.inc.i48.i28.joycon_find_rumble_freq.exit51.i33_crit_edge ]
  %arrayidx20.i50.i30 = getelementptr %struct.joycon_rumble_freq_data, ptr @joycon_rumble_frequencies, i32 %i.1.i49.i29
  %39 = ptrtoint ptr %arrayidx20.i50.i30 to i32
  call void @__asan_load2_noabort(i32 %39)
  %tmp1.sroa.0.0.copyload.i31 = load i16, ptr %arrayidx20.i50.i30, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv17)
  %cmp.not.i.i32 = icmp eq i16 %conv17, 0
  br i1 %cmp.not.i.i32, label %joycon_find_rumble_freq.exit51.i33.joycon_encode_rumble.exit58_crit_edge, label %joycon_find_rumble_freq.exit51.i33.for.body.i55.i38_crit_edge

joycon_find_rumble_freq.exit51.i33.for.body.i55.i38_crit_edge: ; preds = %joycon_find_rumble_freq.exit51.i33
  br label %for.body.i55.i38

joycon_find_rumble_freq.exit51.i33.joycon_encode_rumble.exit58_crit_edge: ; preds = %joycon_find_rumble_freq.exit51.i33
  call void @__sanitizer_cov_trace_pc() #8
  br label %joycon_encode_rumble.exit58

for.body.i55.i38:                                 ; preds = %for.inc.i60.i44.for.body.i55.i38_crit_edge, %joycon_find_rumble_freq.exit51.i33.for.body.i55.i38_crit_edge
  %i.030.i52.i34 = phi i32 [ %inc.i58.i42, %for.inc.i60.i44.for.body.i55.i38_crit_edge ], [ 1, %joycon_find_rumble_freq.exit51.i33.for.body.i55.i38_crit_edge ]
  %sub.i53.i35 = add nsw i32 %i.030.i52.i34, -1
  %amp8.i.i36 = getelementptr %struct.joycon_rumble_amp_data, ptr @joycon_rumble_amplitudes, i32 %sub.i53.i35, i32 2
  %40 = ptrtoint ptr %amp8.i.i36 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %amp8.i.i36, align 2, !noalias !391
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %conv17)
  %cmp10.i54.i37 = icmp ult i16 %41, %conv17
  br i1 %cmp10.i54.i37, label %land.lhs.true.i57.i41, label %for.body.i55.i38.for.inc.i60.i44_crit_edge

for.body.i55.i38.for.inc.i60.i44_crit_edge:       ; preds = %for.body.i55.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i60.i44

land.lhs.true.i57.i41:                            ; preds = %for.body.i55.i38
  %amp14.i.i39 = getelementptr %struct.joycon_rumble_amp_data, ptr @joycon_rumble_amplitudes, i32 %i.030.i52.i34, i32 2
  %42 = ptrtoint ptr %amp14.i.i39 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %amp14.i.i39, align 2, !noalias !391
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %conv17)
  %cmp16.not.i56.i40 = icmp ult i16 %43, %conv17
  br i1 %cmp16.not.i56.i40, label %land.lhs.true.i57.i41.for.inc.i60.i44_crit_edge, label %land.lhs.true.i57.i41.joycon_encode_rumble.exit58_crit_edge

land.lhs.true.i57.i41.joycon_encode_rumble.exit58_crit_edge: ; preds = %land.lhs.true.i57.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %joycon_encode_rumble.exit58

land.lhs.true.i57.i41.for.inc.i60.i44_crit_edge:  ; preds = %land.lhs.true.i57.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i60.i44

for.inc.i60.i44:                                  ; preds = %land.lhs.true.i57.i41.for.inc.i60.i44_crit_edge, %for.body.i55.i38.for.inc.i60.i44_crit_edge
  %inc.i58.i42 = add nuw nsw i32 %i.030.i52.i34, 1
  %exitcond.not.i59.i43 = icmp eq i32 %inc.i58.i42, 100
  br i1 %exitcond.not.i59.i43, label %for.inc.i60.i44.joycon_encode_rumble.exit58_crit_edge, label %for.inc.i60.i44.for.body.i55.i38_crit_edge

for.inc.i60.i44.for.body.i55.i38_crit_edge:       ; preds = %for.inc.i60.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i55.i38

for.inc.i60.i44.joycon_encode_rumble.exit58_crit_edge: ; preds = %for.inc.i60.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %joycon_encode_rumble.exit58

joycon_encode_rumble.exit58:                      ; preds = %for.inc.i60.i44.joycon_encode_rumble.exit58_crit_edge, %land.lhs.true.i57.i41.joycon_encode_rumble.exit58_crit_edge, %joycon_find_rumble_freq.exit51.i33.joycon_encode_rumble.exit58_crit_edge
  %i.1.i61.i45 = phi i32 [ 0, %joycon_find_rumble_freq.exit51.i33.joycon_encode_rumble.exit58_crit_edge ], [ %i.030.i52.i34, %land.lhs.true.i57.i41.joycon_encode_rumble.exit58_crit_edge ], [ 100, %for.inc.i60.i44.joycon_encode_rumble.exit58_crit_edge ]
  %arrayidx20.i62.i46 = getelementptr %struct.joycon_rumble_amp_data, ptr @joycon_rumble_amplitudes, i32 %i.1.i61.i45
  %44 = ptrtoint ptr %arrayidx20.i62.i46 to i32
  call void @__asan_load1_noabort(i32 %44)
  %tmp2.sroa.0.0.copyload.i47 = load i8, ptr %arrayidx20.i62.i46, align 2
  %tmp2.sroa.463.0.arrayidx20.i62.sroa_idx.i48 = getelementptr inbounds i8, ptr %arrayidx20.i62.i46, i32 2
  %45 = ptrtoint ptr %tmp2.sroa.463.0.arrayidx20.i62.sroa_idx.i48 to i32
  call void @__asan_load2_noabort(i32 %45)
  %tmp2.sroa.463.0.copyload.i49 = load i16, ptr %tmp2.sroa.463.0.arrayidx20.i62.sroa_idx.i48, align 2
  %46 = lshr i16 %tmp1.sroa.0.0.copyload.i31, 8
  %and6.i51 = trunc i16 %tmp1.sroa.0.0.copyload.i31 to i8
  %add.i52 = add i8 %tmp2.sroa.0.0.copyload.i47, %and6.i51
  %47 = lshr i16 %tmp2.sroa.463.0.copyload.i49, 8
  %48 = trunc i16 %47 to i8
  %conv17.i54 = add i8 %tmp.sroa.3.0.copyload.i15, %48
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %rumble_queue_head = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 33
  %49 = ptrtoint ptr %rumble_queue_head to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rumble_queue_head, align 4
  %inc = add i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %inc)
  %cmp33 = icmp sgt i32 %inc, 7
  %spec.select = select i1 %cmp33, i32 0, i32 %inc
  %51 = ptrtoint ptr %rumble_queue_head to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %spec.select, ptr %rumble_queue_head, align 4
  %arrayidx = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 32, i32 %spec.select
  %data.sroa.15.0.insert.ext = zext i8 %conv17.i to i64
  %data.sroa.15.0.insert.shift = shl nuw nsw i64 %data.sroa.15.0.insert.ext, 8
  %52 = and i16 %tmp2.sroa.463.0.copyload.i, 255
  %data.sroa.15.0.insert.mask = zext i16 %52 to i64
  %data.sroa.15.0.insert.insert = or i64 %data.sroa.15.0.insert.shift, %data.sroa.15.0.insert.mask
  %data.sroa.13.0.insert.ext = zext i8 %add.i to i64
  %data.sroa.13.0.insert.shift = shl nuw nsw i64 %data.sroa.13.0.insert.ext, 16
  %data.sroa.13.0.insert.insert = or i64 %data.sroa.15.0.insert.insert, %data.sroa.13.0.insert.shift
  %data.sroa.11.0.insert.ext = zext i16 %27 to i64
  %data.sroa.11.0.insert.shift = shl nuw nsw i64 %data.sroa.11.0.insert.ext, 24
  %data.sroa.11.0.insert.insert = or i64 %data.sroa.13.0.insert.insert, %data.sroa.11.0.insert.shift
  %data.sroa.9.0.insert.ext = zext i16 %tmp2.sroa.463.0.copyload.i49 to i64
  %data.sroa.9.0.insert.shift = shl nuw nsw i64 %data.sroa.9.0.insert.ext, 32
  %data.sroa.7.0.insert.ext = zext i8 %conv17.i54 to i64
  %data.sroa.7.0.insert.shift = shl nuw nsw i64 %data.sroa.7.0.insert.ext, 40
  %data.sroa.9.0.insert.shift.masked = and i64 %data.sroa.9.0.insert.shift, 1095216660480
  %data.sroa.7.0.insert.mask = or i64 %data.sroa.9.0.insert.shift.masked, %data.sroa.11.0.insert.insert
  %data.sroa.5.0.insert.ext = zext i8 %add.i52 to i64
  %data.sroa.5.0.insert.shift = shl nuw nsw i64 %data.sroa.5.0.insert.ext, 48
  %data.sroa.0.0.insert.ext = zext i16 %46 to i64
  %data.sroa.0.0.insert.shift = shl nuw i64 %data.sroa.0.0.insert.ext, 56
  %data.sroa.5.0.insert.mask.masked = or i64 %data.sroa.7.0.insert.shift, %data.sroa.7.0.insert.mask
  %data.sroa.0.0.insert.mask = or i64 %data.sroa.5.0.insert.shift, %data.sroa.0.0.insert.shift
  %data.sroa.0.0.insert.insert = or i64 %data.sroa.0.0.insert.mask, %data.sroa.5.0.insert.mask.masked
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %data.sroa.0.0.insert.insert, ptr %arrayidx, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call28) #6
  br i1 %schedule_now, label %if.then42, label %joycon_encode_rumble.exit58.if.end44_crit_edge

joycon_encode_rumble.exit58.if.end44_crit_edge:   ; preds = %joycon_encode_rumble.exit58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then42:                                        ; preds = %joycon_encode_rumble.exit58
  call void @__sanitizer_cov_trace_pc() #8
  %rumble_queue = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 35
  %54 = ptrtoint ptr %rumble_queue to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rumble_queue, align 4
  %rumble_worker = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 36
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %55, ptr noundef %rumble_worker) #6
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %joycon_encode_rumble.exit58.if.end44_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @joycon_parse_imu_report(ptr noundef %ctlr, ptr nocapture noundef readonly %rep) unnamed_addr #2 align 64 {
entry:
  %imu_data = alloca [3 x %struct.joycon_imu_data], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %imu_data) #6
  %imu_input = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 43
  %0 = ptrtoint ptr %imu_input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imu_input, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %2) #6
  %imu_last_pkt_ms = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 46
  %3 = ptrtoint ptr %imu_last_pkt_ms to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %imu_last_pkt_ms, align 4
  %5 = getelementptr inbounds %struct.joycon_input_report, ptr %rep, i32 0, i32 7
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %5, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #6
  %9 = ptrtoint ptr %imu_data to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %imu_data, align 2
  %add.ptr1.i = getelementptr %struct.joycon_input_report, ptr %rep, i32 0, i32 7, i32 0, i32 2
  %10 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %add.ptr1.i, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #6
  %accel_y.i = getelementptr inbounds %struct.joycon_imu_data, ptr %imu_data, i32 0, i32 1
  %13 = ptrtoint ptr %accel_y.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %accel_y.i, align 2
  %add.ptr3.i = getelementptr %struct.joycon_input_report, ptr %rep, i32 0, i32 7, i32 0, i32 4
  %14 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %add.ptr3.i, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #6
  %accel_z.i = getelementptr inbounds %struct.joycon_imu_data, ptr %imu_data, i32 0, i32 2
  %17 = ptrtoint ptr %accel_z.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %accel_z.i, align 2
  %add.ptr5.i = getelementptr %struct.joycon_input_report, ptr %rep, i32 0, i32 7, i32 0, i32 6
  %18 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %add.ptr5.i, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #6
  %gyro_x.i = getelementptr inbounds %struct.joycon_imu_data, ptr %imu_data, i32 0, i32 3
  %21 = ptrtoint ptr %gyro_x.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %gyro_x.i, align 2
  %add.ptr7.i = getelementptr %struct.joycon_input_report, ptr %rep, i32 0, i32 7, i32 0, i32 8
  %22 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %add.ptr7.i, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #6
  %gyro_y.i = getelementptr inbounds %struct.joycon_imu_data, ptr %imu_data, i32 0, i32 4
  %25 = ptrtoint ptr %gyro_y.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %gyro_y.i, align 2
  %add.ptr9.i = getelementptr %struct.joycon_input_report, ptr %rep, i32 0, i32 7, i32 0, i32 10
  %26 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %add.ptr9.i, align 1
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #6
  %gyro_z.i = getelementptr inbounds %struct.joycon_imu_data, ptr %imu_data, i32 0, i32 5
  %29 = ptrtoint ptr %gyro_z.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %gyro_z.i, align 2
  %add.ptr11.i = getelementptr %struct.joycon_input_report, ptr %rep, i32 0, i32 7, i32 0, i32 12
  %arrayidx.1.i = getelementptr inbounds %struct.joycon_imu_data, ptr %imu_data, i32 1
  %30 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %add.ptr11.i, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #6
  %33 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %arrayidx.1.i, align 2
  %add.ptr1.1.i = getelementptr %struct.joycon_input_report, ptr %rep, i32 0, i32 7, i32 0, i32 14
  %34 = ptrtoint ptr %add.ptr1.1.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %add.ptr1.1.i, align 1
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #6
  %accel_y.1.i = getelementptr inbounds %struct.joycon_imu_data, ptr %imu_data, i32 1, i32 1
  %37 = ptrtoint ptr %accel_y.1.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %accel_y.1.i, align 2
  %add.ptr3.1.i = getelementptr %struct.joycon_input_report, ptr %rep, i32 0, i32 7, i32 0, i32 16
  %38 = ptrtoint ptr %add.ptr3.1.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %add.ptr3.1.i, align 1
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #6
  %accel_z.1.i = getelementptr inbounds %struct.joycon_imu_data, ptr %imu_data, i32 1, i32 2
  %41 = ptrtoint ptr %accel_z.1.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %accel_z.1.i, align 2
  %add.ptr5.1.i = getelementptr %struct.joycon_input_report, ptr %rep, i32 0, i32 7, i32 0, i32 18
  %42 = ptrtoint ptr %add.ptr5.1.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %add.ptr5.1.i, align 1
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #6
  %gyro_x.1.i = getelementptr inbounds %struct.joycon_imu_data, ptr %imu_data, i32 1, i32 3
  %45 = ptrtoint ptr %gyro_x.1.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %gyro_x.1.i, align 2
  %add.ptr7.1.i = getelementptr %struct.joycon_input_report, ptr %rep, i32 0, i32 7, i32 0, i32 20
  %46 = ptrtoint ptr %add.ptr7.1.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %add.ptr7.1.i, align 1
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #6
  %gyro_y.1.i = getelementptr inbounds %struct.joycon_imu_data, ptr %imu_data, i32 1, i32 4
  %49 = ptrtoint ptr %gyro_y.1.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %gyro_y.1.i, align 2
  %add.ptr9.1.i = getelementptr %struct.joycon_input_report, ptr %rep, i32 0, i32 7, i32 0, i32 22
  %50 = ptrtoint ptr %add.ptr9.1.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %add.ptr9.1.i, align 1
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #6
  %gyro_z.1.i = getelementptr inbounds %struct.joycon_imu_data, ptr %imu_data, i32 1, i32 5
  %53 = ptrtoint ptr %gyro_z.1.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %gyro_z.1.i, align 2
  %add.ptr11.1.i = getelementptr %struct.joycon_input_report, ptr %rep, i32 0, i32 7, i32 0, i32 24
  %arrayidx.2.i = getelementptr inbounds %struct.joycon_imu_data, ptr %imu_data, i32 2
  %54 = ptrtoint ptr %add.ptr11.1.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %add.ptr11.1.i, align 1
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #6
  %57 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %arrayidx.2.i, align 2
  %add.ptr1.2.i = getelementptr %struct.joycon_input_report, ptr %rep, i32 0, i32 7, i32 0, i32 26
  %58 = ptrtoint ptr %add.ptr1.2.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %add.ptr1.2.i, align 1
  %60 = tail call i16 @llvm.bswap.i16(i16 %59) #6
  %accel_y.2.i = getelementptr inbounds %struct.joycon_imu_data, ptr %imu_data, i32 2, i32 1
  %61 = ptrtoint ptr %accel_y.2.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %accel_y.2.i, align 2
  %add.ptr3.2.i = getelementptr %struct.joycon_input_report, ptr %rep, i32 0, i32 7, i32 0, i32 28
  %62 = ptrtoint ptr %add.ptr3.2.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %add.ptr3.2.i, align 1
  %64 = tail call i16 @llvm.bswap.i16(i16 %63) #6
  %accel_z.2.i = getelementptr inbounds %struct.joycon_imu_data, ptr %imu_data, i32 2, i32 2
  %65 = ptrtoint ptr %accel_z.2.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %accel_z.2.i, align 2
  %add.ptr5.2.i = getelementptr %struct.joycon_input_report, ptr %rep, i32 0, i32 7, i32 0, i32 30
  %66 = ptrtoint ptr %add.ptr5.2.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %add.ptr5.2.i, align 1
  %68 = tail call i16 @llvm.bswap.i16(i16 %67) #6
  %gyro_x.2.i = getelementptr inbounds %struct.joycon_imu_data, ptr %imu_data, i32 2, i32 3
  %69 = ptrtoint ptr %gyro_x.2.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %gyro_x.2.i, align 2
  %add.ptr7.2.i = getelementptr %struct.joycon_input_report, ptr %rep, i32 0, i32 7, i32 0, i32 32
  %70 = ptrtoint ptr %add.ptr7.2.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %add.ptr7.2.i, align 1
  %72 = tail call i16 @llvm.bswap.i16(i16 %71) #6
  %gyro_y.2.i = getelementptr inbounds %struct.joycon_imu_data, ptr %imu_data, i32 2, i32 4
  %73 = ptrtoint ptr %gyro_y.2.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %gyro_y.2.i, align 2
  %add.ptr9.2.i = getelementptr %struct.joycon_input_report, ptr %rep, i32 0, i32 7, i32 0, i32 34
  %74 = ptrtoint ptr %add.ptr9.2.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %add.ptr9.2.i, align 1
  %76 = tail call i16 @llvm.bswap.i16(i16 %75) #6
  %gyro_z.2.i = getelementptr inbounds %struct.joycon_imu_data, ptr %imu_data, i32 2, i32 5
  %77 = ptrtoint ptr %gyro_z.2.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %gyro_z.2.i, align 2
  %imu_first_packet_received = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 44
  %78 = ptrtoint ptr %imu_first_packet_received to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %imu_first_packet_received, align 4, !range !374
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not = icmp eq i8 %79, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %imu_timestamp_us = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 45
  %80 = ptrtoint ptr %imu_timestamp_us to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %imu_timestamp_us, align 4
  %imu_delta_samples_count = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 47
  %81 = ptrtoint ptr %imu_delta_samples_count to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %imu_delta_samples_count, align 4
  %imu_delta_samples_sum = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 48
  %82 = ptrtoint ptr %imu_delta_samples_sum to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %imu_delta_samples_sum, align 4
  %imu_avg_delta_ms = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 49
  %83 = ptrtoint ptr %imu_avg_delta_ms to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 15, ptr %imu_avg_delta_ms, align 4
  %84 = ptrtoint ptr %imu_first_packet_received to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %imu_first_packet_received, align 4
  br label %if.end53

if.else:                                          ; preds = %entry
  %sub = sub i32 %call, %4
  %imu_delta_samples_sum2 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 48
  %85 = ptrtoint ptr %imu_delta_samples_sum2 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %imu_delta_samples_sum2, align 4
  %add = add i32 %86, %sub
  store i32 %add, ptr %imu_delta_samples_sum2, align 4
  %imu_delta_samples_count3 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 47
  %87 = ptrtoint ptr %imu_delta_samples_count3 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %imu_delta_samples_count3, align 4
  %inc = add i32 %88, 1
  store i32 %inc, ptr %imu_delta_samples_count3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 299, i32 %inc)
  %cmp = icmp ugt i32 %inc, 299
  br i1 %cmp, label %if.then5, label %if.else.do.body16_crit_edge

if.else.do.body16_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body16

if.then5:                                         ; preds = %if.else
  %div = udiv i32 %add, %inc
  %imu_avg_delta_ms8 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 49
  %89 = ptrtoint ptr %imu_avg_delta_ms8 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %div, ptr %imu_avg_delta_ms8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %add)
  %cmp10 = icmp ugt i32 %inc, %add
  br i1 %cmp10, label %if.then11, label %if.then5.if.end_crit_edge

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then11:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %imu_avg_delta_ms8 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %imu_avg_delta_ms8, align 4
  %91 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ctlr, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %92, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.171) #9
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then5.if.end_crit_edge
  %93 = ptrtoint ptr %imu_delta_samples_count3 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %imu_delta_samples_count3, align 4
  %94 = ptrtoint ptr %imu_delta_samples_sum2 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %imu_delta_samples_sum2, align 4
  br label %do.body16

do.body16:                                        ; preds = %if.end, %if.else.do.body16_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @joycon_parse_imu_report.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@joycon_parse_imu_report, %if.then21)) #6
          to label %do.end27 [label %if.then21], !srcloc !373

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ctlr, align 4
  %dev23 = getelementptr inbounds %struct.hid_device, ptr %96, i32 0, i32 18
  %imu_avg_delta_ms24 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 49
  %97 = ptrtoint ptr %imu_avg_delta_ms24 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %imu_avg_delta_ms24, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @joycon_parse_imu_report.__UNIQUE_ID_ddebug241, ptr noundef %dev23, ptr noundef nonnull @.str.173, i32 noundef %call, i32 noundef %4, i32 noundef %sub, i32 noundef %98) #6
  br label %do.end27

do.end27:                                         ; preds = %if.then21, %do.body16
  %imu_avg_delta_ms28 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 49
  %99 = ptrtoint ptr %imu_avg_delta_ms28 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %imu_avg_delta_ms28, align 4
  %mul = mul i32 %100, 3
  %div29405 = lshr i32 %mul, 1
  %101 = tail call i32 @llvm.usub.sat.i32(i32 %sub, i32 %div29405)
  %div34 = udiv i32 %101, %100
  %mul36 = mul i32 %100, 1000
  %imu_timestamp_us37 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 45
  %102 = ptrtoint ptr %imu_timestamp_us37 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %imu_timestamp_us37, align 4
  %add38 = add i32 %103, %mul36
  store i32 %add38, ptr %imu_timestamp_us37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div34)
  %cmp39 = icmp ugt i32 %div34, 3
  br i1 %cmp39, label %do.end43, label %do.end27.if.end53_crit_edge

do.end27.if.end53_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

do.end43:                                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  %104 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ctlr, align 4
  %dev45 = getelementptr inbounds %struct.hid_device, ptr %105, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev45, ptr noundef nonnull @.str.175, i32 noundef %div34) #9
  %106 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ctlr, align 4
  %dev50 = getelementptr inbounds %struct.hid_device, ptr %107, i32 0, i32 18
  %108 = ptrtoint ptr %imu_avg_delta_ms28 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %imu_avg_delta_ms28, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev50, ptr noundef nonnull @.str.178, i32 noundef %sub, i32 noundef %109) #9
  br label %if.end53

if.end53:                                         ; preds = %do.end43, %do.end27.if.end53_crit_edge, %if.then
  %110 = ptrtoint ptr %imu_last_pkt_ms to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %call, ptr %imu_last_pkt_ms, align 4
  %imu_timestamp_us56 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 45
  %gyro_cal = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 24
  %imu_cal_gyro_divisor = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 26
  %scale = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 24, i32 1
  %arrayidx95 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 24, i32 0, i32 1
  %arrayidx100 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 26, i32 1
  %arrayidx118 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 24, i32 1, i32 1
  %arrayidx136 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 24, i32 0, i32 2
  %arrayidx141 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 26, i32 2
  %arrayidx159 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 24, i32 1, i32 2
  %scale174 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 23, i32 1
  %imu_cal_accel_divisor = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 25
  %arrayidx185 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 23, i32 1, i32 1
  %arrayidx189 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 25, i32 1
  %arrayidx196 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 23, i32 1, i32 2
  %arrayidx200 = getelementptr %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 25, i32 2
  %ctlr_type = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 8
  %imu_avg_delta_ms294 = getelementptr inbounds %struct.joycon_ctlr, ptr %ctlr, i32 0, i32 49
  br label %for.body

for.body:                                         ; preds = %if.end287.for.body_crit_edge, %if.end53
  %i.0417 = phi i32 [ 0, %if.end53 ], [ %inc300, %if.end287.for.body_crit_edge ]
  %111 = ptrtoint ptr %imu_timestamp_us56 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %imu_timestamp_us56, align 4
  tail call void @input_event(ptr noundef %1, i32 noundef 4, i32 noundef 5, i32 noundef %112) #6
  %arrayidx = getelementptr [3 x %struct.joycon_imu_data], ptr %imu_data, i32 0, i32 %i.0417
  %gyro_x = getelementptr [3 x %struct.joycon_imu_data], ptr %imu_data, i32 0, i32 %i.0417, i32 3
  %113 = ptrtoint ptr %gyro_x to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %gyro_x, align 2
  %conv = sext i16 %114 to i32
  %115 = ptrtoint ptr %gyro_cal to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %gyro_cal, align 4
  %conv58 = sext i16 %116 to i32
  %sub59 = sub nsw i32 %conv, %conv58
  %mul60 = mul nsw i32 %sub59, 1000
  %117 = ptrtoint ptr %imu_cal_gyro_divisor to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %imu_cal_gyro_divisor, align 4
  %mul60.frozen = freeze i32 %mul60
  %.frozen = freeze i32 %118
  %div62 = sdiv i32 %mul60.frozen, %.frozen
  %119 = mul i32 %div62, %.frozen
  %rem74.decomposed = sub i32 %mul60.frozen, %119
  %120 = ptrtoint ptr %scale to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %scale, align 2
  %conv78 = sext i16 %121 to i32
  %mul79 = mul i32 %div62, %conv78
  %mul84 = mul i32 %rem74.decomposed, %conv78
  %div87 = sdiv i32 %mul84, %118
  %add88 = add i32 %mul79, %div87
  %gyro_y = getelementptr [3 x %struct.joycon_imu_data], ptr %imu_data, i32 0, i32 %i.0417, i32 4
  %122 = ptrtoint ptr %gyro_y to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %gyro_y, align 2
  %conv92 = sext i16 %123 to i32
  %124 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %arrayidx95, align 2
  %conv96 = sext i16 %125 to i32
  %sub97 = sub nsw i32 %conv92, %conv96
  %mul98 = mul nsw i32 %sub97, 1000
  %126 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx100, align 4
  %mul98.frozen = freeze i32 %mul98
  %.frozen423 = freeze i32 %127
  %div101 = sdiv i32 %mul98.frozen, %.frozen423
  %128 = mul i32 %div101, %.frozen423
  %rem114.decomposed = sub i32 %mul98.frozen, %128
  %129 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %arrayidx118, align 2
  %conv119 = sext i16 %130 to i32
  %mul120 = mul i32 %div101, %conv119
  %mul125 = mul i32 %rem114.decomposed, %conv119
  %div128 = sdiv i32 %mul125, %127
  %add129 = add i32 %mul120, %div128
  %gyro_z = getelementptr [3 x %struct.joycon_imu_data], ptr %imu_data, i32 0, i32 %i.0417, i32 5
  %131 = ptrtoint ptr %gyro_z to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %gyro_z, align 2
  %conv133 = sext i16 %132 to i32
  %133 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %arrayidx136, align 4
  %conv137 = sext i16 %134 to i32
  %sub138 = sub nsw i32 %conv133, %conv137
  %mul139 = mul nsw i32 %sub138, 1000
  %135 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx141, align 4
  %mul139.frozen = freeze i32 %mul139
  %.frozen424 = freeze i32 %136
  %div142 = sdiv i32 %mul139.frozen, %.frozen424
  %137 = mul i32 %div142, %.frozen424
  %rem155.decomposed = sub i32 %mul139.frozen, %137
  %138 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %arrayidx159, align 2
  %conv160 = sext i16 %139 to i32
  %mul161 = mul i32 %div142, %conv160
  %mul166 = mul i32 %rem155.decomposed, %conv160
  %div169 = sdiv i32 %mul166, %136
  %add170 = add i32 %mul161, %div169
  %140 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %arrayidx, align 2
  %conv173 = sext i16 %141 to i32
  %142 = ptrtoint ptr %scale174 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %scale174, align 2
  %conv176 = sext i16 %143 to i32
  %mul177 = mul nsw i32 %conv176, %conv173
  %144 = ptrtoint ptr %imu_cal_accel_divisor to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %imu_cal_accel_divisor, align 4
  %div179 = sdiv i32 %mul177, %145
  %accel_y = getelementptr [3 x %struct.joycon_imu_data], ptr %imu_data, i32 0, i32 %i.0417, i32 1
  %146 = ptrtoint ptr %accel_y to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %accel_y, align 2
  %conv182 = sext i16 %147 to i32
  %148 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %arrayidx185, align 2
  %conv186 = sext i16 %149 to i32
  %mul187 = mul nsw i32 %conv186, %conv182
  %150 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx189, align 4
  %div190 = sdiv i32 %mul187, %151
  %accel_z = getelementptr [3 x %struct.joycon_imu_data], ptr %imu_data, i32 0, i32 %i.0417, i32 2
  %152 = ptrtoint ptr %accel_z to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %accel_z, align 2
  %conv193 = sext i16 %153 to i32
  %154 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %arrayidx196, align 2
  %conv197 = sext i16 %155 to i32
  %mul198 = mul nsw i32 %conv197, %conv193
  %156 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx200, align 4
  %div201 = sdiv i32 %mul198, %157
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @joycon_parse_imu_report.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@joycon_parse_imu_report, %if.then215)) #6
          to label %do.body230 [label %if.then215], !srcloc !373

if.then215:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %158 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ctlr, align 4
  %dev217 = getelementptr inbounds %struct.hid_device, ptr %159, i32 0, i32 18
  %160 = ptrtoint ptr %gyro_x to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %gyro_x, align 2
  %conv220 = sext i16 %161 to i32
  %162 = ptrtoint ptr %gyro_y to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %gyro_y, align 2
  %conv223 = sext i16 %163 to i32
  %164 = ptrtoint ptr %gyro_z to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %gyro_z, align 2
  %conv226 = sext i16 %165 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @joycon_parse_imu_report.__UNIQUE_ID_ddebug244, ptr noundef %dev217, ptr noundef nonnull @.str.180, i32 noundef %conv220, i32 noundef %conv223, i32 noundef %conv226) #6
  br label %do.body230

do.body230:                                       ; preds = %if.then215, %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @joycon_parse_imu_report.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@joycon_parse_imu_report, %if.then242)) #6
          to label %do.end256 [label %if.then242], !srcloc !373

if.then242:                                       ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #8
  %166 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ctlr, align 4
  %dev244 = getelementptr inbounds %struct.hid_device, ptr %167, i32 0, i32 18
  %168 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %arrayidx, align 2
  %conv247 = sext i16 %169 to i32
  %170 = ptrtoint ptr %accel_y to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %accel_y, align 2
  %conv250 = sext i16 %171 to i32
  %172 = ptrtoint ptr %accel_z to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %accel_z, align 2
  %conv253 = sext i16 %173 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @joycon_parse_imu_report.__UNIQUE_ID_ddebug245, ptr noundef %dev244, ptr noundef nonnull @.str.181, i32 noundef %conv247, i32 noundef %conv250, i32 noundef %conv253) #6
  br label %do.end256

do.end256:                                        ; preds = %if.then242, %do.body230
  %174 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %ctlr, align 4
  %product = getelementptr inbounds %struct.hid_device, ptr %175, i32 0, i32 11
  %176 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %product, align 8
  %178 = zext i32 %177 to i64
  call void @__sanitizer_cov_trace_switch(i64 %178, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %177, label %do.end256.if.end287_crit_edge [
    i32 8198, label %do.end256.land.lhs.true_crit_edge
    i32 8199, label %do.end256.land.lhs.true_crit_edge425
    i32 8206, label %do.end256.land.lhs.true_crit_edge426
  ]

do.end256.land.lhs.true_crit_edge426:             ; preds = %do.end256
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

do.end256.land.lhs.true_crit_edge425:             ; preds = %do.end256
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

do.end256.land.lhs.true_crit_edge:                ; preds = %do.end256
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

do.end256.if.end287_crit_edge:                    ; preds = %do.end256
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end287

land.lhs.true:                                    ; preds = %do.end256.land.lhs.true_crit_edge, %do.end256.land.lhs.true_crit_edge425, %do.end256.land.lhs.true_crit_edge426
  %179 = ptrtoint ptr %ctlr_type to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %ctlr_type, align 4
  %181 = and i32 %180, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %181)
  %switch = icmp eq i32 %181, 2
  br i1 %switch, label %for.inc.4, label %land.lhs.true.if.end287_crit_edge

land.lhs.true.if.end287_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end287

for.inc.4:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %mul285 = sub i32 0, %add129
  %mul285.1 = sub i32 0, %add170
  %mul285.3 = sub nsw i32 0, %div190
  %mul285.4 = sub nsw i32 0, %div201
  br label %if.end287

if.end287:                                        ; preds = %for.inc.4, %land.lhs.true.if.end287_crit_edge, %do.end256.if.end287_crit_edge
  %value.sroa.25.1 = phi i32 [ %div201, %do.end256.if.end287_crit_edge ], [ %mul285.4, %for.inc.4 ], [ %div201, %land.lhs.true.if.end287_crit_edge ]
  %value.sroa.20.1 = phi i32 [ %div190, %do.end256.if.end287_crit_edge ], [ %mul285.3, %for.inc.4 ], [ %div190, %land.lhs.true.if.end287_crit_edge ]
  %value.sroa.10.1 = phi i32 [ %add170, %do.end256.if.end287_crit_edge ], [ %mul285.1, %for.inc.4 ], [ %add170, %land.lhs.true.if.end287_crit_edge ]
  %value.sroa.5.1 = phi i32 [ %add129, %do.end256.if.end287_crit_edge ], [ %mul285, %for.inc.4 ], [ %add129, %land.lhs.true.if.end287_crit_edge ]
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 3, i32 noundef %add88) #6
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 4, i32 noundef %value.sroa.5.1) #6
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 5, i32 noundef %value.sroa.10.1) #6
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 0, i32 noundef %div179) #6
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef %value.sroa.20.1) #6
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 2, i32 noundef %value.sroa.25.1) #6
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %182 = ptrtoint ptr %imu_avg_delta_ms294 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %imu_avg_delta_ms294, align 4
  %mul295 = mul i32 %183, 1000
  %div296 = udiv i32 %mul295, 3
  %184 = ptrtoint ptr %imu_timestamp_us56 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %imu_timestamp_us56, align 4
  %add298 = add i32 %div296, %185
  store i32 %add298, ptr %imu_timestamp_us56, align 4
  %inc300 = add nuw nsw i32 %i.0417, 1
  %exitcond.not = icmp eq i32 %inc300, 3
  br i1 %exitcond.not, label %for.end301, label %if.end287.for.body_crit_edge

if.end287.for.body_crit_edge:                     ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end301:                                       ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %imu_data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 178)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 178)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !24, !25, !27, !28, !30, !31, !33, !35, !36, !38, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !197, !198, !200, !201, !202, !204, !205, !207, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !226, !228, !230, !231, !232, !234, !236, !237, !238, !239, !241, !243, !245, !246, !247, !249, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !271, !273, !275, !277, !279, !280, !281, !282, !284, !285, !286, !288, !289, !291, !293, !294, !295, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !321, !322, !323, !325, !327, !329, !331, !333, !335, !336, !337, !339, !340, !341, !342, !344, !345, !346, !347, !349, !350, !352, !353, !354, !356, !357, !358, !360, !361, !363}
!llvm.module.flags = !{!364, !365, !366, !367, !368, !369, !370, !371}
!llvm.ident = !{!372}

!0 = !{ptr @__initcall__kmod_hid_nintendo__269_2323_nintendo_hid_driver_init6, !1, !"__initcall__kmod_hid_nintendo__269_2323_nintendo_hid_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-nintendo.c", i32 2323, i32 1}
!2 = !{ptr @__exitcall_nintendo_hid_driver_exit, !1, !"__exitcall_nintendo_hid_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file270, !4, !"__UNIQUE_ID_file270", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-nintendo.c", i32 2325, i32 1}
!5 = !{ptr @__UNIQUE_ID_license271, !4, !"__UNIQUE_ID_license271", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author272, !7, !"__UNIQUE_ID_author272", i1 false, i1 false}
!7 = !{!"../drivers/hid/hid-nintendo.c", i32 2326, i32 1}
!8 = !{ptr @__UNIQUE_ID_description273, !9, !"__UNIQUE_ID_description273", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-nintendo.c", i32 2327, i32 1}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-nintendo.c", i32 2317, i32 11}
!13 = !{ptr @nintendo_hid_driver, !14, !"nintendo_hid_driver", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-nintendo.c", i32 2316, i32 26}
!15 = !{ptr @nintendo_hid_devices, !16, !"nintendo_hid_devices", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-nintendo.c", i32 2301, i32 35}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-nintendo.c", i32 2113, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @nintendo_hid_probe.__UNIQUE_ID_ddebug265, !18, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!22 = !{ptr @nintendo_hid_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/hid/hid-nintendo.c", i32 2126, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @nintendo_hid_probe.__key.6, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-nintendo.c", i32 2127, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @nintendo_hid_probe.__key.8, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/hid/hid-nintendo.c", i32 2128, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hid/hid-nintendo.c", i32 2129, i32 39}
!33 = !{ptr @nintendo_hid_probe.__key.11, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/hid/hid-nintendo.c", i32 2135, i32 2}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hid/hid-nintendo.c", i32 2139, i32 3}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @nintendo_hid_probe._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @nintendo_hid_probe._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hid/hid-nintendo.c", i32 2154, i32 3}
!44 = !{ptr @nintendo_hid_probe._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @nintendo_hid_probe._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hid/hid-nintendo.c", i32 2160, i32 3}
!48 = !{ptr @nintendo_hid_probe._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @nintendo_hid_probe._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hid/hid-nintendo.c", i32 2171, i32 3}
!52 = !{ptr @nintendo_hid_probe.__UNIQUE_ID_ddebug266, !51, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hid/hid-nintendo.c", i32 2175, i32 4}
!55 = !{ptr @nintendo_hid_probe._entry.23, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @nintendo_hid_probe._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hid/hid-nintendo.c", i32 2181, i32 4}
!59 = !{ptr @nintendo_hid_probe._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @nintendo_hid_probe._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hid/hid-nintendo.c", i32 2190, i32 3}
!63 = !{ptr @nintendo_hid_probe._entry.29, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @nintendo_hid_probe._entry_ptr.31, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hid/hid-nintendo.c", i32 2202, i32 3}
!67 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @nintendo_hid_probe._entry.32, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @nintendo_hid_probe._entry_ptr.35, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hid/hid-nintendo.c", i32 2212, i32 3}
!72 = !{ptr @nintendo_hid_probe._entry.36, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @nintendo_hid_probe._entry_ptr.38, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hid/hid-nintendo.c", i32 2218, i32 3}
!76 = !{ptr @nintendo_hid_probe._entry.39, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @nintendo_hid_probe._entry_ptr.41, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hid/hid-nintendo.c", i32 2225, i32 3}
!80 = !{ptr @nintendo_hid_probe._entry.42, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @nintendo_hid_probe._entry_ptr.44, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hid/hid-nintendo.c", i32 2232, i32 3}
!84 = !{ptr @nintendo_hid_probe._entry.45, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @nintendo_hid_probe._entry_ptr.47, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.49, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hid/hid-nintendo.c", i32 2238, i32 3}
!88 = !{ptr @nintendo_hid_probe._entry.48, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @nintendo_hid_probe._entry_ptr.50, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.52, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hid/hid-nintendo.c", i32 2248, i32 3}
!92 = !{ptr @nintendo_hid_probe._entry.51, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @nintendo_hid_probe._entry_ptr.53, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.55, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hid/hid-nintendo.c", i32 2255, i32 3}
!96 = !{ptr @nintendo_hid_probe._entry.54, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @nintendo_hid_probe._entry_ptr.56, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.58, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hid/hid-nintendo.c", i32 2261, i32 3}
!100 = !{ptr @nintendo_hid_probe._entry.57, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @nintendo_hid_probe._entry_ptr.59, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.60, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hid/hid-nintendo.c", i32 2267, i32 2}
!104 = !{ptr @nintendo_hid_probe.__UNIQUE_ID_ddebug267, !103, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!105 = !{ptr @.str.62, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/hid/hid-nintendo.c", i32 2279, i32 2}
!107 = !{ptr @nintendo_hid_probe._entry.61, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @nintendo_hid_probe._entry_ptr.63, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.64, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/hid/hid-nintendo.c", i32 1428, i32 4}
!111 = !{ptr @.str.65, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @joycon_rumble_worker._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @joycon_rumble_worker._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = distinct !{null, !115, !"max_subcmd_rate_ms", i1 false, i1 false}
!115 = !{!"../drivers/hid/hid-nintendo.c", i32 549, i32 28}
!116 = !{ptr @.str.66, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hid/hid-nintendo.c", i32 538, i32 4}
!118 = !{ptr @.str.67, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @joycon_wait_for_input_report._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @joycon_wait_for_input_report._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.68, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hid/hid-nintendo.c", i32 514, i32 3}
!123 = !{ptr @.str.69, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @__joycon_hid_send.__UNIQUE_ID_ddebug223, !122, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!125 = !{ptr @.str.70, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../include/linux/hid.h", i32 963, i32 3}
!127 = !{ptr @.str.71, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.72, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @hid_device_io_start._entry, !126, !"_entry", i1 false, i1 false}
!130 = !{ptr @hid_device_io_start._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.73, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/hid/hid-nintendo.c", i32 612, i32 3}
!133 = !{ptr @.str.74, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @joycon_send_usb.__UNIQUE_ID_ddebug226, !132, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!135 = !{ptr @.str.75, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hid/hid-nintendo.c", i32 584, i32 4}
!137 = !{ptr @.str.76, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @joycon_hid_send_sync.__UNIQUE_ID_ddebug224, !136, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!139 = !{ptr @.str.77, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/hid/hid-nintendo.c", i32 587, i32 5}
!141 = !{ptr @joycon_hid_send_sync.__UNIQUE_ID_ddebug225, !140, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!142 = !{ptr @.str.78, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/hid/hid-nintendo.c", i32 776, i32 2}
!144 = !{ptr @.str.79, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @joycon_request_calibration.__UNIQUE_ID_ddebug230, !143, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!146 = !{ptr @.str.80, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/hid/hid-nintendo.c", i32 781, i32 3}
!148 = !{ptr @.str.81, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @joycon_request_calibration._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @joycon_request_calibration._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.83, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/hid/hid-nintendo.c", i32 783, i32 3}
!153 = !{ptr @joycon_request_calibration._entry.82, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @joycon_request_calibration._entry_ptr.84, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.86, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/hid/hid-nintendo.c", i32 787, i32 3}
!157 = !{ptr @joycon_request_calibration._entry.85, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @joycon_request_calibration._entry_ptr.87, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.89, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/hid/hid-nintendo.c", i32 789, i32 3}
!161 = !{ptr @joycon_request_calibration._entry.88, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @joycon_request_calibration._entry_ptr.90, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.92, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/hid/hid-nintendo.c", i32 798, i32 3}
!165 = !{ptr @joycon_request_calibration._entry.91, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @joycon_request_calibration._entry_ptr.93, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.95, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/hid/hid-nintendo.c", i32 817, i32 3}
!169 = !{ptr @joycon_request_calibration._entry.94, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @joycon_request_calibration._entry_ptr.96, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.97, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/hid/hid-nintendo.c", i32 830, i32 2}
!173 = !{ptr @joycon_request_calibration.__UNIQUE_ID_ddebug231, !172, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!174 = !{ptr @.str.98, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/hid/hid-nintendo.c", i32 684, i32 2}
!176 = !{ptr @.str.99, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @joycon_request_spi_flash_read.__UNIQUE_ID_ddebug229, !175, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!178 = !{ptr @.str.100, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/hid/hid-nintendo.c", i32 687, i32 3}
!180 = !{ptr @joycon_request_spi_flash_read._entry, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @joycon_request_spi_flash_read._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.101, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/hid/hid-nintendo.c", i32 646, i32 3}
!184 = !{ptr @.str.102, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @joycon_send_subcmd.__UNIQUE_ID_ddebug227, !183, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!186 = !{ptr @.str.103, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/hid/hid-nintendo.c", i32 882, i32 3}
!188 = !{ptr @.str.104, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @joycon_request_imu_calibration._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @joycon_request_imu_calibration._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.106, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/hid/hid-nintendo.c", i32 884, i32 3}
!193 = !{ptr @joycon_request_imu_calibration._entry.105, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @joycon_request_imu_calibration._entry_ptr.107, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.108, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/hid/hid-nintendo.c", i32 888, i32 2}
!197 = !{ptr @joycon_request_imu_calibration.__UNIQUE_ID_ddebug232, !196, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!198 = !{ptr @.str.110, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/hid/hid-nintendo.c", i32 892, i32 3}
!200 = !{ptr @joycon_request_imu_calibration._entry.109, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @joycon_request_imu_calibration._entry_ptr.111, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.112, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/hid/hid-nintendo.c", i32 918, i32 2}
!204 = !{ptr @joycon_request_imu_calibration.__UNIQUE_ID_ddebug233, !203, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!205 = distinct !{null, !206, !"DFLT_ACCEL_OFFSET", i1 false, i1 false}
!206 = !{!"../drivers/hid/hid-nintendo.c", i32 868, i32 18}
!207 = distinct !{null, !208, !"DFLT_GYRO_OFFSET", i1 false, i1 false}
!208 = !{!"../drivers/hid/hid-nintendo.c", i32 870, i32 18}
!209 = !{ptr @.str.113, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/hid/hid-nintendo.c", i32 948, i32 2}
!211 = !{ptr @.str.114, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @joycon_set_report_mode.__UNIQUE_ID_ddebug234, !210, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!213 = !{ptr @.str.115, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/hid/hid-nintendo.c", i32 961, i32 2}
!215 = !{ptr @.str.116, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @joycon_enable_rumble.__UNIQUE_ID_ddebug235, !214, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!217 = !{ptr @.str.117, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/hid/hid-nintendo.c", i32 974, i32 2}
!219 = !{ptr @.str.118, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @joycon_enable_imu.__UNIQUE_ID_ddebug236, !218, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!221 = !{ptr @.str.119, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/hid/hid-nintendo.c", i32 2008, i32 3}
!223 = !{ptr @.str.120, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @joycon_read_info._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @joycon_read_info._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.121, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/hid/hid-nintendo.c", i32 2018, i32 10}
!228 = !{ptr @.str.123, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/hid/hid-nintendo.c", i32 2027, i32 2}
!230 = !{ptr @joycon_read_info._entry.122, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @joycon_read_info._entry_ptr.124, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @joycon_leds_create.input_num, !233, !"input_num", i1 false, i1 false}
!233 = !{!"../drivers/hid/hid-nintendo.c", i32 1839, i32 13}
!234 = !{ptr @.str.125, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/hid/hid-nintendo.c", i32 1846, i32 3}
!236 = !{ptr @.str.126, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @joycon_leds_create._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @joycon_leds_create._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.127, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/hid/hid-nintendo.c", i32 1851, i32 42}
!241 = !{ptr @.str.128, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/hid/hid-nintendo.c", i32 1853, i32 11}
!243 = !{ptr @.str.130, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/hid/hid-nintendo.c", i32 1870, i32 4}
!245 = !{ptr @joycon_leds_create._entry.129, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @joycon_leds_create._entry_ptr.131, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.132, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/hid/hid-nintendo.c", i32 1884, i32 11}
!249 = !{ptr @.str.133, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/hid/hid-nintendo.c", i32 1885, i32 11}
!251 = !{ptr @.str.135, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/hid/hid-nintendo.c", i32 1897, i32 4}
!253 = !{ptr @joycon_leds_create._entry.134, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @joycon_leds_create._entry_ptr.136, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.138, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/hid/hid-nintendo.c", i32 1903, i32 4}
!257 = !{ptr @joycon_leds_create._entry.137, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @joycon_leds_create._entry_ptr.139, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.140, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/hid/hid-nintendo.c", i32 1829, i32 8}
!261 = !{ptr @.str.141, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @joycon_input_num_mutex, !260, !"joycon_input_num_mutex", i1 false, i1 false}
!263 = !{ptr @.str.142, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/hid/hid-nintendo.c", i32 662, i32 2}
!265 = !{ptr @.str.143, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @joycon_set_player_leds.__UNIQUE_ID_ddebug228, !264, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!267 = !{ptr @.str.144, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/hid/hid-nintendo.c", i32 408, i32 2}
!269 = !{ptr @.str.145, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/hid/hid-nintendo.c", i32 409, i32 2}
!271 = !{ptr @.str.146, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/hid/hid-nintendo.c", i32 410, i32 2}
!273 = !{ptr @.str.147, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/hid/hid-nintendo.c", i32 411, i32 2}
!275 = distinct !{null, !276, !"joycon_player_led_names", i1 false, i1 false}
!276 = !{!"../drivers/hid/hid-nintendo.c", i32 407, i32 27}
!277 = !{ptr @.str.148, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/hid/hid-nintendo.c", i32 1770, i32 3}
!279 = !{ptr @.str.149, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @joycon_player_led_brightness_set._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @joycon_player_led_brightness_set._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.150, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/hid/hid-nintendo.c", i32 1808, i32 3}
!284 = !{ptr @joycon_home_led_brightness_set._entry, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @joycon_home_led_brightness_set._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.151, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/hid/hid-nintendo.c", i32 1821, i32 2}
!288 = !{ptr @joycon_home_led_brightness_set.__UNIQUE_ID_ddebug262, !287, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!289 = !{ptr @.str.152, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/hid/hid-nintendo.c", i32 1966, i32 32}
!291 = !{ptr @.str.153, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/hid/hid-nintendo.c", i32 1990, i32 3}
!293 = !{ptr @.str.154, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @joycon_power_supply_create._entry, !292, !"_entry", i1 false, i1 false}
!295 = !{ptr @joycon_power_supply_create._entry_ptr, !292, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @joycon_battery_props, !297, !"joycon_battery_props", i1 false, i1 false}
!297 = !{!"../drivers/hid/hid-nintendo.c", i32 1955, i32 35}
!298 = !{ptr @.str.155, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/hid/hid-nintendo.c", i32 1603, i32 10}
!300 = !{ptr @.str.156, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/hid/hid-nintendo.c", i32 1604, i32 14}
!302 = !{ptr @.str.157, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/hid/hid-nintendo.c", i32 1608, i32 11}
!304 = !{ptr @.str.158, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/hid/hid-nintendo.c", i32 1609, i32 15}
!306 = !{ptr @.str.159, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/hid/hid-nintendo.c", i32 1611, i32 11}
!308 = !{ptr @.str.160, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/hid/hid-nintendo.c", i32 1612, i32 15}
!310 = !{ptr @.str.161, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/hid/hid-nintendo.c", i32 1616, i32 10}
!312 = !{ptr @.str.162, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/hid/hid-nintendo.c", i32 1617, i32 14}
!314 = !{ptr @.str.163, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/hid/hid-nintendo.c", i32 1620, i32 10}
!316 = !{ptr @.str.164, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/hid/hid-nintendo.c", i32 1621, i32 14}
!318 = !{ptr @.str.165, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/hid/hid-nintendo.c", i32 1624, i32 3}
!320 = !{ptr @.str.166, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @joycon_input_create._entry, !319, !"_entry", i1 false, i1 false}
!322 = !{ptr @joycon_input_create._entry_ptr, !319, !"_entry_ptr", i1 false, i1 false}
!323 = distinct !{null, !324, !"joycon_button_inputs_l", i1 false, i1 false}
!324 = !{!"../drivers/hid/hid-nintendo.c", i32 1573, i32 27}
!325 = !{ptr @joycon_dpad_inputs_jc, !326, !"joycon_dpad_inputs_jc", i1 false, i1 false}
!326 = !{!"../drivers/hid/hid-nintendo.c", i32 1587, i32 27}
!327 = distinct !{null, !328, !"joycon_button_inputs_r", i1 false, i1 false}
!328 = !{!"../drivers/hid/hid-nintendo.c", i32 1579, i32 27}
!329 = !{ptr @joycon_rumble_frequencies, !330, !"joycon_rumble_frequencies", i1 false, i1 false}
!330 = !{!"../drivers/hid/hid-nintendo.c", i32 197, i32 45}
!331 = !{ptr @joycon_rumble_amplitudes, !332, !"joycon_rumble_amplitudes", i1 false, i1 false}
!332 = !{!"../drivers/hid/hid-nintendo.c", i32 255, i32 44}
!333 = !{ptr @.str.167, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/hid/hid-nintendo.c", i32 2288, i32 2}
!335 = !{ptr @.str.168, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @nintendo_hid_remove.__UNIQUE_ID_ddebug268, !334, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!337 = !{ptr @.str.169, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/hid/hid-nintendo.c", i32 1262, i32 3}
!339 = !{ptr @.str.170, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @joycon_parse_report._entry, !338, !"_entry", i1 false, i1 false}
!341 = !{ptr @joycon_parse_report._entry_ptr, !338, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.171, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/hid/hid-nintendo.c", i32 1097, i32 5}
!344 = !{ptr @.str.172, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @joycon_parse_imu_report._entry, !343, !"_entry", i1 false, i1 false}
!346 = !{ptr @joycon_parse_imu_report._entry_ptr, !343, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.173, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/hid/hid-nintendo.c", i32 1105, i32 3}
!349 = !{ptr @joycon_parse_imu_report.__UNIQUE_ID_ddebug241, !348, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!350 = !{ptr @.str.175, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/hid/hid-nintendo.c", i32 1115, i32 4}
!352 = !{ptr @joycon_parse_imu_report._entry.174, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @joycon_parse_imu_report._entry_ptr.176, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.178, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/hid/hid-nintendo.c", i32 1118, i32 4}
!356 = !{ptr @joycon_parse_imu_report._entry.177, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @joycon_parse_imu_report._entry_ptr.179, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.180, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/hid/hid-nintendo.c", i32 1174, i32 3}
!360 = !{ptr @joycon_parse_imu_report.__UNIQUE_ID_ddebug244, !359, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!361 = !{ptr @.str.181, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/hid/hid-nintendo.c", i32 1177, i32 3}
!363 = !{ptr @joycon_parse_imu_report.__UNIQUE_ID_ddebug245, !362, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!364 = !{i32 1, !"wchar_size", i32 2}
!365 = !{i32 1, !"min_enum_size", i32 4}
!366 = !{i32 8, !"branch-target-enforcement", i32 0}
!367 = !{i32 8, !"sign-return-address", i32 0}
!368 = !{i32 8, !"sign-return-address-all", i32 0}
!369 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!370 = !{i32 7, !"uwtable", i32 1}
!371 = !{i32 7, !"frame-pointer", i32 2}
!372 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!373 = !{i64 2148893813, i64 2148893818, i64 2148893831, i64 2148893875, i64 2148893909, i64 2148893930}
!374 = !{i8 0, i8 2}
!375 = !{!"branch_weights", i32 1, i32 2000}
!376 = !{!377}
!377 = distinct !{!377, !378, !"joycon_find_rumble_freq: %agg.result"}
!378 = distinct !{!378, !"joycon_find_rumble_freq"}
!379 = !{!380}
!380 = distinct !{!380, !381, !"joycon_find_rumble_freq: %agg.result"}
!381 = distinct !{!381, !"joycon_find_rumble_freq"}
!382 = !{!383}
!383 = distinct !{!383, !384, !"joycon_find_rumble_amp: %agg.result"}
!384 = distinct !{!384, !"joycon_find_rumble_amp"}
!385 = !{!386}
!386 = distinct !{!386, !387, !"joycon_find_rumble_freq: %agg.result"}
!387 = distinct !{!387, !"joycon_find_rumble_freq"}
!388 = !{!389}
!389 = distinct !{!389, !390, !"joycon_find_rumble_freq: %agg.result"}
!390 = distinct !{!390, !"joycon_find_rumble_freq"}
!391 = !{!392}
!392 = distinct !{!392, !393, !"joycon_find_rumble_amp: %agg.result"}
!393 = distinct !{!393, !"joycon_find_rumble_amp"}
