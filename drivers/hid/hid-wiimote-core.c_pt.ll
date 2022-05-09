; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-wiimote-core.c_pt.bc'
source_filename = "../drivers/hid/hid-wiimote-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.56 }
%union.anon.56 = type { ptr }
%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.wiimod_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wiiproto_handler = type { i8, i32, ptr }
%struct.wiimote_data = type { ptr, ptr, %struct.work_struct, [4 x ptr], ptr, ptr, ptr, %struct.power_supply_desc, ptr, %struct.timer_list, ptr, %union.anon.69, %struct.wiimote_queue, %struct.wiimote_state, %struct.work_struct }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.anon.69 = type { ptr }
%struct.wiimote_queue = type { %struct.spinlock, %struct.work_struct, i8, i8, [32 x %struct.wiimote_buf] }
%struct.wiimote_buf = type { [16384 x i8], i32 }
%struct.wiimote_state = type { %struct.spinlock, i32, [2 x i8], i8, i8, i8, i8, %struct.mutex, %struct.completion, i32, i32, i8, i8, ptr, i8, [4 x [3 x i16]], [4 x i16], [7 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@wiiproto_req_rmem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 342, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid length %d rmem request\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wiiproto_req_rmem\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/hid/hid-wiimote-core.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wiiproto_req_rmem._entry_ptr = internal global ptr @wiiproto_req_rmem._entry, section ".printk_index", align 4
@wiimote_dpad_as_analog = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_str_dpad_as_analog = internal constant [27 x i8] c"hid_wiimote.dpad_as_analog\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_dpad_as_analog = internal constant %struct.kernel_param { ptr @__param_str_dpad_as_analog, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.56 { ptr @wiimote_dpad_as_analog } }, section "__param", align 4
@__UNIQUE_ID_dpad_as_analogtype236 = internal constant [41 x i8] c"hid_wiimote.parmtype=dpad_as_analog:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_dpad_as_analog237 = internal constant [63 x i8] c"hid_wiimote.parm=dpad_as_analog:Use D-Pad as main analog input\00", section ".modinfo", align 1
@__initcall__kmod_hid_wiimote__238_1883_wiimote_hid_driver_init6 = internal global ptr @wiimote_hid_driver_init, section ".initcall6.init", align 4
@wiimote_hid_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.13, ptr @wiimote_hid_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @wiimote_hid_probe, ptr @wiimote_hid_remove, ptr null, ptr @wiimote_hid_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wiimote_hid_driver_exit = internal global ptr @wiimote_hid_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file239 = internal constant [41 x i8] c"hid_wiimote.file=drivers/hid/hid-wiimote\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [24 x i8] c"hid_wiimote.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [58 x i8] c"hid_wiimote.author=David Herrmann <dh.herrmann@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [68 x i8] c"hid_wiimote.description=Driver for Nintendo Wii / Wii U peripherals\00", section ".modinfo", align 1
@wiimote_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 77, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Sending too large output report\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wiimote_queue\00", [18 x i8] zeroinitializer }, align 32
@wiimote_queue._entry_ptr = internal global ptr @wiimote_queue._entry, section ".printk_index", align 4
@wiimote_queue._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 105, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Output queue is full\00", [43 x i8] zeroinitializer }, align 32
@wiimote_queue._entry_ptr.9 = internal global ptr @wiimote_queue._entry.7, section ".printk_index", align 4
@wiiproto_req_wmem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 317, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid length %d wmem request\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wiiproto_req_wmem\00", [46 x i8] zeroinitializer }, align 32
@wiiproto_req_wmem._entry_ptr = internal global ptr @wiiproto_req_wmem._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hid_wiimote\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wiimote\00", [24 x i8] zeroinitializer }, align 32
@wiimote_hid_devices = internal constant { [3 x %struct.hid_device_id], [48 x i8] } { [3 x %struct.hid_device_id] [%struct.hid_device_id { i16 5, i16 0, i32 1406, i32 774, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1406, i32 816, i32 0 }, %struct.hid_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@wiimote_hid_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1792, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Can't alloc device\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wiimote_hid_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@wiimote_hid_probe._entry_ptr = internal global ptr @wiimote_hid_probe._entry, section ".printk_index", align 4
@wiimote_hid_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.2, i32 1798, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HID parse failed\0A\00", [46 x i8] zeroinitializer }, align 32
@wiimote_hid_probe._entry_ptr.19 = internal global ptr @wiimote_hid_probe._entry.17, section ".printk_index", align 4
@wiimote_hid_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.15, ptr @.str.2, i32 1804, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HW start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@wiimote_hid_probe._entry_ptr.22 = internal global ptr @wiimote_hid_probe._entry.20, section ".printk_index", align 4
@wiimote_hid_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.15, ptr @.str.2, i32 1810, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot start hardware I/O\0A\00", [37 x i8] zeroinitializer }, align 32
@wiimote_hid_probe._entry_ptr.25 = internal global ptr @wiimote_hid_probe._entry.23, section ".printk_index", align 4
@dev_attr_extension = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.98, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wiimote_ext_show, ptr @wiimote_ext_store }, [36 x i8] zeroinitializer }, align 32
@wiimote_hid_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.15, ptr @.str.2, i32 1816, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot create sysfs attribute\0A\00", [33 x i8] zeroinitializer }, align 32
@wiimote_hid_probe._entry_ptr.28 = internal global ptr @wiimote_hid_probe._entry.26, section ".printk_index", align 4
@dev_attr_devtype = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wiimote_dev_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@wiimote_hid_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.15, ptr @.str.2, i32 1822, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@wiimote_hid_probe._entry_ptr.30 = internal global ptr @wiimote_hid_probe._entry.29, section ".printk_index", align 4
@wiimote_hid_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.15, ptr @.str.2, i32 1830, ptr @.str.33, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"New device registered\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wiimote_hid_probe._entry_ptr.34 = internal global ptr @wiimote_hid_probe._entry.31, section ".printk_index", align 4
@wiimote_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&wdata->queue.lock\00", [45 x i8] zeroinitializer }, align 32
@wiimote_create.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&wdata->queue.worker)\00", [56 x i8] zeroinitializer }, align 32
@wiimote_create.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&wdata->state.lock\00", [45 x i8] zeroinitializer }, align 32
@wiimote_create.__key.40 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&wdata->state.sync\00", [45 x i8] zeroinitializer }, align 32
@wiimote_create.__key.42 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&wdata->init_worker)\00", [57 x i8] zeroinitializer }, align 32
@wiimote_create.__key.44 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(&wdata->timer)\00", [16 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wiimote_cmd_read_ext.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wiimote_cmd_read_ext\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"extension ID: %6phC\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Nintendo RVL-CNT-01\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Nintendo RVL-CNT-01-TR\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Nintendo RVL-WBC-01\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Nintendo RVL-CNT-01-UC\00", [41 x i8] zeroinitializer }, align 32
@wiimote_init_set_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 855, ptr @.str.33, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"cannot detect device; NAME: %s VID: %04x PID: %04x EXT: %04x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wiimote_init_set_type\00", [42 x i8] zeroinitializer }, align 32
@wiimote_init_set_type._entry_ptr = internal global ptr @wiimote_init_set_type._entry, section ".printk_index", align 4
@wiimote_init_set_type._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 858, ptr @.str.33, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"detected device: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@wiimote_init_set_type._entry_ptr.57 = internal global ptr @wiimote_init_set_type._entry.55, section ".printk_index", align 4
@wiimote_devtype_names = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Pending\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Generic\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Nintendo Wii Remote (Gen 1)\00", [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Nintendo Wii Remote Plus (Gen 2)\00", [63 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Nintendo Wii Balance Board\00", [37 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Nintendo Wii U Pro Controller\00", [34 x i8] zeroinitializer }, align 32
@wiimote_devtype_mods = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.compoundliteral, ptr @.compoundliteral.66, ptr @.compoundliteral.67, ptr @.compoundliteral.68, ptr @.compoundliteral.69, ptr @.compoundliteral.70, ptr @.compoundliteral.71], [36 x i8] zeroinitializer }, align 32
@wiimod_table = external dso_local local_unnamed_addr global [11 x ptr], align 4
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Nintendo Wii Remote\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\0B", [31 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\0B", [30 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\00\01\02\03\04\05\06\07\08\0B", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\00\01\02\03\04\05\06\07\08\0B", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\00\01\02\03\04\05\06\07\08\09\0B", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\02\03\0A\0B", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\02\03\04\05\06\0A\0B", [25 x i8] zeroinitializer }, align 32
@wiimote_init_check.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.72, ptr @.str.2, ptr @.str.73, i8 0, i8 -13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wiimote_init_check\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"state left: !EXT && MP\0A\00", [40 x i8] zeroinitializer }, align 32
@wiimote_init_check.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.72, ptr @.str.2, ptr @.str.74, i8 0, i8 -7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"state left: EXT && !MP\0A\00", [40 x i8] zeroinitializer }, align 32
@wiimote_init_check.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.72, ptr @.str.2, ptr @.str.75, i8 1, i8 0, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"state left: !EXT && !MP\0A\00", [39 x i8] zeroinitializer }, align 32
@wiimote_init_check.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.72, ptr @.str.2, ptr @.str.76, i8 1, i8 7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"state left: EXT && MP\0A\00", [41 x i8] zeroinitializer }, align 32
@wiimote_cmd_read_mp_mapped.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.77, ptr @.str.2, ptr @.str.78, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wiimote_cmd_read_mp_mapped\00", [37 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mapped motion plus ID: %6phC\0A\00", [34 x i8] zeroinitializer }, align 32
@wiimote_init_poll_mp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 922, ptr @.str.33, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"detected extension: Nintendo Wii Motion Plus\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wiimote_init_poll_mp\00", [43 x i8] zeroinitializer }, align 32
@wiimote_init_poll_mp._entry_ptr = internal global ptr @wiimote_init_poll_mp._entry, section ".printk_index", align 4
@wiimote_cmd_read_mp.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.81, ptr @.str.2, ptr @.str.82, i8 0, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wiimote_cmd_read_mp\00", [44 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"motion plus ID: %6phC\0A\00", [41 x i8] zeroinitializer }, align 32
@wiimote_cmd_read_mp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.2, i32 524, ptr @.str.33, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unknown motion plus ID: %6phC\0A\00", [33 x i8] zeroinitializer }, align 32
@wiimote_cmd_read_mp._entry_ptr = internal global ptr @wiimote_cmd_read_mp._entry, section ".printk_index", align 4
@wiimod_mp = external dso_local constant %struct.wiimod_ops, align 4
@wiimote_init_hotplug.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.84, ptr @.str.2, ptr @.str.85, i8 1, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wiimote_init_hotplug\00", [43 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"detect extensions..\0A\00", [43 x i8] zeroinitializer }, align 32
@wiimote_init_hotplug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.2, i32 1135, ptr @.str.33, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cannot detect extension; %6phC\0A\00", [32 x i8] zeroinitializer }, align 32
@wiimote_init_hotplug._entry_ptr = internal global ptr @wiimote_init_hotplug._entry, section ".printk_index", align 4
@wiimote_init_hotplug._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.84, ptr @.str.2, i32 1142, ptr @.str.33, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"detected extension: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@wiimote_init_hotplug._entry_ptr.89 = internal global ptr @wiimote_init_hotplug._entry.87, section ".printk_index", align 4
@wiimote_exttype_names = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.93, ptr @.str.59, ptr @.str.94, ptr @.str.95, ptr @.str.63, ptr @.str.64, ptr @.str.96, ptr @.str.97], [32 x i8] zeroinitializer }, align 32
@wiimote_init_hotplug._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.84, ptr @.str.2, i32 1151, ptr @.str.33, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@wiimote_init_hotplug._entry_ptr.91 = internal global ptr @wiimote_init_hotplug._entry.90, section ".printk_index", align 4
@wiimote_init_hotplug.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.84, ptr @.str.2, ptr @.str.92, i8 1, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"detected extensions: MP: %d EXT: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@wiimod_ext_table = external dso_local local_unnamed_addr global [8 x ptr], align 4
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Nintendo Wii Nunchuk\00", [43 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Nintendo Wii Classic Controller\00", [32 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Nintendo Wii Drums\00", [45 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Nintendo Wii Guitar\00", [44 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"extension\00", [22 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"none\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nunchuk\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"classic\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"balanceboard\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"procontroller\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"drums\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unknown\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"scan\00", [27 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devtype\00", [24 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"generic\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gen10\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gen20\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pending\0A\00", [23 x i8] zeroinitializer }, align 32
@wiimote_hid_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.2, i32 1858, ptr @.str.33, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Device removed\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wiimote_hid_remove\00", [45 x i8] zeroinitializer }, align 32
@wiimote_hid_remove._entry_ptr = internal global ptr @wiimote_hid_remove._entry, section ".printk_index", align 4
@handlers = internal constant { [25 x %struct.wiiproto_handler], [84 x i8] } { [25 x %struct.wiiproto_handler] [%struct.wiiproto_handler { i8 32, i32 6, ptr @handler_status }, %struct.wiiproto_handler { i8 32, i32 2, ptr @handler_status_K }, %struct.wiiproto_handler { i8 33, i32 21, ptr @handler_data }, %struct.wiiproto_handler { i8 33, i32 2, ptr @handler_generic_K }, %struct.wiiproto_handler { i8 34, i32 4, ptr @handler_return }, %struct.wiiproto_handler { i8 34, i32 2, ptr @handler_generic_K }, %struct.wiiproto_handler { i8 48, i32 2, ptr @handler_keys }, %struct.wiiproto_handler { i8 49, i32 5, ptr @handler_drm_KA }, %struct.wiiproto_handler { i8 49, i32 2, ptr @handler_generic_K }, %struct.wiiproto_handler { i8 50, i32 10, ptr @handler_drm_KE }, %struct.wiiproto_handler { i8 50, i32 2, ptr @handler_generic_K }, %struct.wiiproto_handler { i8 51, i32 17, ptr @handler_drm_KAI }, %struct.wiiproto_handler { i8 51, i32 2, ptr @handler_generic_K }, %struct.wiiproto_handler { i8 52, i32 21, ptr @handler_drm_KEE }, %struct.wiiproto_handler { i8 52, i32 2, ptr @handler_generic_K }, %struct.wiiproto_handler { i8 53, i32 21, ptr @handler_drm_KAE }, %struct.wiiproto_handler { i8 53, i32 2, ptr @handler_generic_K }, %struct.wiiproto_handler { i8 54, i32 21, ptr @handler_drm_KIE }, %struct.wiiproto_handler { i8 54, i32 2, ptr @handler_generic_K }, %struct.wiiproto_handler { i8 55, i32 21, ptr @handler_drm_KAIE }, %struct.wiiproto_handler { i8 55, i32 2, ptr @handler_generic_K }, %struct.wiiproto_handler { i8 61, i32 21, ptr @handler_drm_E }, %struct.wiiproto_handler { i8 62, i32 21, ptr @handler_drm_SKAI1 }, %struct.wiiproto_handler { i8 63, i32 21, ptr @handler_drm_SKAI2 }, %struct.wiiproto_handler zeroinitializer], [84 x i8] zeroinitializer }, align 32
@wiimote_hid_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 1640, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unhandled report %hhu size %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wiimote_hid_event\00", [46 x i8] zeroinitializer }, align 32
@wiimote_hid_event._entry_ptr = internal global ptr @wiimote_hid_event._entry, section ".printk_index", align 4
@handler_status.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.117, ptr @.str.2, ptr @.str.118, i8 1, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"handler_status\00", [17 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EXT hotplug: 1\0A\00", [16 x i8] zeroinitializer }, align 32
@handler_status.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.117, ptr @.str.2, ptr @.str.119, i8 1, i8 102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EXT hotplug: 0\0A\00", [16 x i8] zeroinitializer }, align 32
@handler_return._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.2, i32 1486, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Remote error %u on req %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"handler_return\00", [17 x i8] zeroinitializer }, align 32
@handler_return._entry_ptr = internal global ptr @handler_return._entry, section ".printk_index", align 4
@handler_ext.invalid = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [43 x i8] zeroinitializer }, align 32
@handler_ext.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.122, ptr @.str.2, ptr @.str.123, i8 1, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"handler_ext\00", [20 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MP hotplug: 1\0A\00", [17 x i8] zeroinitializer }, align 32
@handler_ext.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.122, ptr @.str.2, ptr @.str.124, i8 1, i8 76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MP hotplug: 0\0A\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 64, i64 128, i64 192]
@__sancov_gen_cov_switch_values.125 = internal global [5 x i64] [i64 3, i64 8, i64 64, i64 128, i64 192]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 5]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 16, i64 774, i64 816]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.129 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.130 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.132 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.133 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.134 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.135 = internal global [5 x i64] [i64 3, i64 8, i64 64, i64 128, i64 192]
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 342, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [23 x i8] c"wiimote_dpad_as_analog\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1870, i32 6 }
@___asan_gen_.157 = private unnamed_addr constant [19 x i8] c"wiimote_hid_driver\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1876, i32 26 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 77, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 105, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 317, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1883, i32 1 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1877, i32 10 }
@___asan_gen_.190 = private unnamed_addr constant [20 x i8] c"wiimote_hid_devices\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1862, i32 35 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1792, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1798, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1804, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1810, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [19 x i8] c"dev_attr_extension\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1816, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant [17 x i8] c"dev_attr_devtype\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1822, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1830, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1740, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1741, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1743, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1745, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1749, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1750, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 87, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 441, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 828, i32 20 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 831, i32 27 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 834, i32 27 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 837, i32 27 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 854, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 857, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant [22 x i8] c"wiimote_devtype_names\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 795, i32 20 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 796, i32 26 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 797, i32 26 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 798, i32 26 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 799, i32 24 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 800, i32 24 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 801, i32 32 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 802, i32 33 }
@___asan_gen_.346 = private unnamed_addr constant [21 x i8] c"wiimote_devtype_mods\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 558, i32 27 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 648, i32 24 }
@___asan_gen_.352 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.353 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.355 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.356 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.358 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 973, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 997, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1024, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1054, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 540, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 922, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 519, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 524, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1101, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1134, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1141, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant [22 x i8] c"wiimote_exttype_names\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1076, i32 20 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1151, i32 4 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1199, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1077, i32 23 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1079, i32 26 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1080, i32 37 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1083, i32 24 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1084, i32 25 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1693, i32 8 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1659, i32 23 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1661, i32 23 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1663, i32 23 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1665, i32 23 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1667, i32 23 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1669, i32 23 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1674, i32 23 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1684, i32 19 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1727, i32 8 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1710, i32 23 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1712, i32 23 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1714, i32 23 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1720, i32 23 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1858, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant [9 x i8] c"handlers\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1589, i32 38 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1639, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1427, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1433, i32 4 }
@___asan_gen_.515 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1485, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1302, i32 20 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1325, i32 5 }
@___asan_gen_.533 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.534 = private constant [34 x i8] c"../drivers/hid/hid-wiimote-core.c\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 1331, i32 5 }
@llvm.compiler.used = appending global [169 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_dpad_as_analog237, ptr @__UNIQUE_ID_dpad_as_analogtype236, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_wiimote_hid_driver_exit, ptr @__initcall__kmod_hid_wiimote__238_1883_wiimote_hid_driver_init6, ptr @__param_dpad_as_analog, ptr @handler_return._entry, ptr @handler_return._entry_ptr, ptr @wiimote_cmd_read_mp._entry, ptr @wiimote_cmd_read_mp._entry_ptr, ptr @wiimote_hid_driver_exit, ptr @wiimote_hid_event._entry, ptr @wiimote_hid_event._entry_ptr, ptr @wiimote_hid_probe._entry, ptr @wiimote_hid_probe._entry.17, ptr @wiimote_hid_probe._entry.20, ptr @wiimote_hid_probe._entry.23, ptr @wiimote_hid_probe._entry.26, ptr @wiimote_hid_probe._entry.29, ptr @wiimote_hid_probe._entry.31, ptr @wiimote_hid_probe._entry_ptr, ptr @wiimote_hid_probe._entry_ptr.19, ptr @wiimote_hid_probe._entry_ptr.22, ptr @wiimote_hid_probe._entry_ptr.25, ptr @wiimote_hid_probe._entry_ptr.28, ptr @wiimote_hid_probe._entry_ptr.30, ptr @wiimote_hid_probe._entry_ptr.34, ptr @wiimote_hid_remove._entry, ptr @wiimote_hid_remove._entry_ptr, ptr @wiimote_init_hotplug._entry, ptr @wiimote_init_hotplug._entry.87, ptr @wiimote_init_hotplug._entry.90, ptr @wiimote_init_hotplug._entry_ptr, ptr @wiimote_init_hotplug._entry_ptr.89, ptr @wiimote_init_hotplug._entry_ptr.91, ptr @wiimote_init_poll_mp._entry, ptr @wiimote_init_poll_mp._entry_ptr, ptr @wiimote_init_set_type._entry, ptr @wiimote_init_set_type._entry.55, ptr @wiimote_init_set_type._entry_ptr, ptr @wiimote_init_set_type._entry_ptr.57, ptr @wiimote_queue._entry, ptr @wiimote_queue._entry.7, ptr @wiimote_queue._entry_ptr, ptr @wiimote_queue._entry_ptr.9, ptr @wiiproto_req_rmem._entry, ptr @wiiproto_req_rmem._entry_ptr, ptr @wiiproto_req_wmem._entry, ptr @wiiproto_req_wmem._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @wiimote_dpad_as_analog, ptr @wiimote_hid_driver, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @wiimote_hid_devices, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @dev_attr_extension, ptr @.str.27, ptr @dev_attr_devtype, ptr @.str.32, ptr @.str.33, ptr @wiimote_create.__key, ptr @.str.35, ptr @wiimote_create.__key.36, ptr @.str.37, ptr @wiimote_create.__key.38, ptr @.str.39, ptr @wiimote_create.__key.40, ptr @.str.41, ptr @wiimote_create.__key.42, ptr @.str.43, ptr @wiimote_create.__key.44, ptr @.str.45, ptr @init_completion.__key, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @wiimote_devtype_names, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @wiimote_devtype_mods, ptr @.str.65, ptr @.compoundliteral, ptr @.compoundliteral.66, ptr @.compoundliteral.67, ptr @.compoundliteral.68, ptr @.compoundliteral.69, ptr @.compoundliteral.70, ptr @.compoundliteral.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @wiimote_exttype_names, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @handlers, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @handler_ext.invalid, ptr @.str.122, ptr @.str.123, ptr @.str.124], section "llvm.metadata"
@0 = internal global [138 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiiproto_req_rmem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_dpad_as_analog to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_hid_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_queue._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiiproto_req_wmem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_hid_devices to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_hid_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_hid_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_hid_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_hid_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_extension to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_hid_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_devtype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_hid_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_hid_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_create.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_create.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_create.__key.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_create.__key.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_create.__key.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_init_set_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_init_set_type._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_devtype_names to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_devtype_mods to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_init_poll_mp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_cmd_read_mp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_init_hotplug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_init_hotplug._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_exttype_names to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_init_hotplug._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_hid_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handlers to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiimote_hid_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handler_return._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handler_ext.invalid to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wiiproto_req_rumble(ptr noundef %wdata, i8 noundef zeroext %rumble) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rumble)
  %tobool = icmp ne i8 %rumble, 0
  %flags = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  %cmp = xor i1 %tobool, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = getelementptr inbounds [2 x i8], ptr %cmd, i32 0, i32 1
  %and15 = and i32 %1, -17
  %masksel = select i1 %tobool, i32 16, i32 0
  %storemerge = or i32 %and15, %masksel
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %storemerge, ptr %flags, align 4
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 16, ptr %cmd, align 1
  %spec.store.select = zext i1 %tobool to i8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %spec.store.select, ptr %4, align 1
  call fastcc void @wiimote_queue(ptr noundef %wdata, ptr noundef nonnull %cmd, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wiimote_queue(ptr noundef %wdata, ptr nocapture noundef readonly %buffer, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %queue16 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 12
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue16) #8
  %head = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 12, i32 2
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %head, align 4
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 12, i32 4, i32 %idxprom
  %2 = call ptr @memcpy(ptr %arrayidx, ptr %buffer, i32 %count)
  %3 = load i8, ptr %head, align 4
  %idxprom30 = zext i8 %3 to i32
  %size = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 12, i32 4, i32 %idxprom30, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %count, ptr %size, align 4
  %add = add i8 %3, 1
  %rem = and i8 %add, 31
  %tail = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 12, i32 3
  %5 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tail, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %6)
  %cmp41 = icmp eq i8 %3, %6
  br i1 %cmp41, label %if.then43, label %if.else

if.then43:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %head to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %rem, ptr %head, align 4
  %worker = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 12, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %worker) #8
  br label %out_unlock

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp1(i8 %rem, i8 %6)
  %cmp52.not = icmp eq i8 %rem, %6
  br i1 %cmp52.not, label %do.end60, label %if.then54

if.then54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %head to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %rem, ptr %head, align 4
  br label %out_unlock

do.end60:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wdata, align 4
  %dev62 = getelementptr inbounds %struct.hid_device, ptr %11, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev62, ptr noundef nonnull @.str.8) #11
  %cmd.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 9
  %12 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 64, ptr %cmd.i, align 4
  %ready.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 8
  tail call void @complete(ptr noundef %ready.i) #8
  br label %out_unlock

out_unlock:                                       ; preds = %do.end60, %if.then54, %if.then43
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue16, i32 noundef %call19) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wiiproto_req_leds(ptr noundef %wdata, i32 noundef %leds) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds [2 x i8], ptr %cmd, i32 0, i32 1
  %and = and i32 %leds, 15
  %flags = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and1 = and i32 %2, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and1, i32 %and)
  %cmp = icmp eq i32 %and1, %and
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and4 = and i32 %2, -16
  %or = or i32 %and4, %and
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or, ptr %flags, align 4
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 17, ptr %cmd, align 1
  %5 = trunc i32 %leds to i8
  %6 = shl i8 %5, 4
  %7 = and i8 %6, 48
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %0, align 1
  %and22 = and i32 %leds, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end.if.end29_crit_edge, label %if.then24

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %0, align 1
  %11 = or i8 %10, 64
  store i8 %11, ptr %0, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end.if.end29_crit_edge
  %and30 = and i32 %leds, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end37_crit_edge, label %if.then32

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %0, align 1
  %14 = or i8 %13, -128
  store i8 %14, ptr %0, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %if.end29.if.end37_crit_edge
  %and.i = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end37.wiiproto_keep_rumble.exit_crit_edge, label %if.then.i

if.end37.wiiproto_keep_rumble.exit_crit_edge:     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiiproto_keep_rumble.exit

if.then.i:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %0, align 1
  %17 = or i8 %16, 1
  store i8 %17, ptr %0, align 1
  br label %wiiproto_keep_rumble.exit

wiiproto_keep_rumble.exit:                        ; preds = %if.then.i, %if.end37.wiiproto_keep_rumble.exit_crit_edge
  call fastcc void @wiimote_queue(ptr noundef %wdata, ptr noundef nonnull %cmd, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %wiiproto_keep_rumble.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wiiproto_req_drm(ptr noundef %wdata, i8 noundef zeroext %drm) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds [3 x i8], ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %cmd, i32 0, i32 2
  %flags = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %drm2 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 3
  %4 = ptrtoint ptr %drm2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %drm2, align 2
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %drm)
  %cmp = icmp eq i8 %drm, 0
  br i1 %cmp, label %if.then4, label %if.else.if.end5_crit_edge

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.else
  %6 = and i32 %3, 4608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %.not.i = icmp eq i32 %6, 0
  %devtype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %7 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %devtype.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %8)
  %cmp.i = icmp eq i8 %8, 5
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %..i = select i1 %.not.i, i8 48, i8 52
  br label %if.end5

if.end.i:                                         ; preds = %if.then4
  %9 = trunc i32 %3 to i8
  %trunc.i = and i8 %9, -64
  %10 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %if.else33.i [
    i8 64, label %if.then16.i
    i8 -128, label %if.end.i.if.end5_crit_edge
    i8 -64, label %if.then32.i
  ]

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %and19.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %.56.i = select i1 %tobool20.not.i, i8 54, i8 55
  br label %if.end5

if.then32.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.else33.i:                                      ; preds = %if.end.i
  %and36.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.else42.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #10
  %.57.i = select i1 %.not.i, i8 49, i8 53
  br label %if.end5

if.else42.i:                                      ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #10
  %.58.i = select i1 %.not.i, i8 48, i8 52
  br label %if.end5

if.end5:                                          ; preds = %if.else42.i, %if.then38.i, %if.then32.i, %if.then16.i, %if.end.i.if.end5_crit_edge, %if.then.i, %if.else.if.end5_crit_edge, %if.then
  %drm.addr.0 = phi i8 [ %5, %if.then ], [ %drm, %if.else.if.end5_crit_edge ], [ 62, %if.then32.i ], [ %..i, %if.then.i ], [ %.56.i, %if.then16.i ], [ 51, %if.end.i.if.end5_crit_edge ], [ %.57.i, %if.then38.i ], [ %.58.i, %if.else42.i ]
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 18, ptr %cmd, align 1
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %0, align 1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %drm.addr.0, ptr %1, align 1
  %drm9 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 3
  %14 = ptrtoint ptr %drm9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %drm.addr.0, ptr %drm9, align 2
  %and.i = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end5.wiiproto_keep_rumble.exit_crit_edge, label %if.then.i19

if.end5.wiiproto_keep_rumble.exit_crit_edge:      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiiproto_keep_rumble.exit

if.then.i19:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %0, align 1
  br label %wiiproto_keep_rumble.exit

wiiproto_keep_rumble.exit:                        ; preds = %if.then.i19, %if.end5.wiiproto_keep_rumble.exit_crit_edge
  call fastcc void @wiimote_queue(ptr noundef %wdata, ptr noundef nonnull %cmd, i32 noundef 3)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %cmd) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wiiproto_req_status(ptr noundef %wdata) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds [2 x i8], ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 21, ptr %cmd, align 1
  %flags.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %4 = trunc i32 %3 to i8
  %5 = lshr i8 %4, 4
  %6 = and i8 %5, 1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %0, align 1
  call fastcc void @wiimote_queue(ptr noundef %wdata, ptr noundef nonnull %cmd, i32 noundef 2)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wiiproto_req_accel(ptr noundef %wdata, i8 noundef zeroext %accel) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %accel)
  %tobool = icmp ne i8 %accel, 0
  %flags = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  %cmp = xor i1 %tobool, %3
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %and15 = and i32 %1, -33
  %masksel = select i1 %tobool, i32 32, i32 0
  %storemerge = or i32 %and15, %masksel
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %storemerge, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %cmd.i) #8
  %5 = getelementptr inbounds [3 x i8], ptr %cmd.i, i32 0, i32 1
  %6 = getelementptr inbounds [3 x i8], ptr %cmd.i, i32 0, i32 2
  %and.i = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %drm2.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 3
  %7 = ptrtoint ptr %drm2.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %drm2.i, align 2
  br label %if.end5.i

if.else.i:                                        ; preds = %if.end
  %9 = and i32 %1, 4608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %.not.i.i = icmp eq i32 %9, 0
  %devtype.i.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %10 = ptrtoint ptr %devtype.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %devtype.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %11)
  %cmp.i.i = icmp eq i8 %11, 5
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %..i.i = select i1 %.not.i.i, i8 48, i8 52
  br label %if.end5.i

if.end.i.i:                                       ; preds = %if.else.i
  %12 = trunc i32 %1 to i8
  %trunc.i.i = and i8 %12, -64
  %13 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.125)
  switch i8 %trunc.i.i, label %if.else33.i.i [
    i8 64, label %if.then16.i.i
    i8 -128, label %if.end.i.i.if.end5.i_crit_edge
    i8 -64, label %if.then32.i.i
  ]

if.end.i.i.if.end5.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then16.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %.56.i.i = select i1 %tobool, i8 55, i8 54
  br label %if.end5.i

if.then32.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.else33.i.i:                                    ; preds = %if.end.i.i
  br i1 %tobool, label %if.then38.i.i, label %if.else42.i.i

if.then38.i.i:                                    ; preds = %if.else33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %.57.i.i = select i1 %.not.i.i, i8 49, i8 53
  br label %if.end5.i

if.else42.i.i:                                    ; preds = %if.else33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %.58.i.i = select i1 %.not.i.i, i8 48, i8 52
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else42.i.i, %if.then38.i.i, %if.then32.i.i, %if.then16.i.i, %if.end.i.i.if.end5.i_crit_edge, %if.then.i.i, %if.then.i
  %drm.addr.0.i = phi i8 [ %8, %if.then.i ], [ 62, %if.then32.i.i ], [ %..i.i, %if.then.i.i ], [ %.56.i.i, %if.then16.i.i ], [ 51, %if.end.i.i.if.end5.i_crit_edge ], [ %.57.i.i, %if.then38.i.i ], [ %.58.i.i, %if.else42.i.i ]
  %14 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 18, ptr %cmd.i, align 1
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %5, align 1
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %drm.addr.0.i, ptr %6, align 1
  %drm9.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 3
  %17 = ptrtoint ptr %drm9.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %drm.addr.0.i, ptr %drm9.i, align 2
  %and.i.i = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end5.i.wiiproto_req_drm.exit_crit_edge, label %if.then.i19.i

if.end5.i.wiiproto_req_drm.exit_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiiproto_req_drm.exit

if.then.i19.i:                                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %5, align 1
  br label %wiiproto_req_drm.exit

wiiproto_req_drm.exit:                            ; preds = %if.then.i19.i, %if.end5.i.wiiproto_req_drm.exit_crit_edge
  call fastcc void @wiimote_queue(ptr noundef %wdata, ptr noundef nonnull %cmd.i, i32 noundef 3) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %cmd.i) #8
  br label %return

return:                                           ; preds = %wiiproto_req_drm.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wiiproto_req_ir1(ptr noundef %wdata, i8 noundef zeroext %flags) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds [2 x i8], ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 19, ptr %cmd, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %flags, ptr %0, align 1
  %flags.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.wiiproto_keep_rumble.exit_crit_edge, label %if.then.i

entry.wiiproto_keep_rumble.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiiproto_keep_rumble.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = or i8 %flags, 1
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %0, align 1
  br label %wiiproto_keep_rumble.exit

wiiproto_keep_rumble.exit:                        ; preds = %if.then.i, %entry.wiiproto_keep_rumble.exit_crit_edge
  call fastcc void @wiimote_queue(ptr noundef %wdata, ptr noundef nonnull %cmd, i32 noundef 2)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wiiproto_req_ir2(ptr noundef %wdata, i8 noundef zeroext %flags) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds [2 x i8], ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 26, ptr %cmd, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %flags, ptr %0, align 1
  %flags.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.wiiproto_keep_rumble.exit_crit_edge, label %if.then.i

entry.wiiproto_keep_rumble.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiiproto_keep_rumble.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = or i8 %flags, 1
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %0, align 1
  br label %wiiproto_keep_rumble.exit

wiiproto_keep_rumble.exit:                        ; preds = %if.then.i, %entry.wiiproto_keep_rumble.exit_crit_edge
  call fastcc void @wiimote_queue(ptr noundef %wdata, ptr noundef nonnull %cmd, i32 noundef 2)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wiiproto_req_rmem(ptr noundef %wdata, i1 noundef zeroext %eeprom, i32 noundef %offset, i16 noundef zeroext %size) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds [7 x i8], ptr %cmd, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %size)
  %cmp = icmp eq i16 %size, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wdata, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %2, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef 0) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds [7 x i8], ptr %cmd, i32 0, i32 6
  %4 = getelementptr inbounds [7 x i8], ptr %cmd, i32 0, i32 5
  %5 = getelementptr inbounds [7 x i8], ptr %cmd, i32 0, i32 4
  %6 = getelementptr inbounds [7 x i8], ptr %cmd, i32 0, i32 3
  %7 = getelementptr inbounds [7 x i8], ptr %cmd, i32 0, i32 2
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 23, ptr %cmd, align 1
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %0, align 1
  %shr = lshr i32 %offset, 16
  %conv4 = trunc i32 %shr to i8
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv4, ptr %7, align 1
  %shr6 = lshr i32 %offset, 8
  %conv8 = trunc i32 %shr6 to i8
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv8, ptr %6, align 1
  %conv11 = trunc i32 %offset to i8
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv11, ptr %5, align 1
  %13 = lshr i16 %size, 8
  %conv16 = trunc i16 %13 to i8
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv16, ptr %4, align 1
  %conv20 = trunc i16 %size to i8
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv20, ptr %3, align 1
  br i1 %eeprom, label %if.end.if.end26_crit_edge, label %if.then22

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 4, ptr %0, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end.if.end26_crit_edge
  %flags.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end26.wiiproto_keep_rumble.exit_crit_edge, label %if.then.i

if.end26.wiiproto_keep_rumble.exit_crit_edge:     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiiproto_keep_rumble.exit

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %0, align 1
  %21 = or i8 %20, 1
  store i8 %21, ptr %0, align 1
  br label %wiiproto_keep_rumble.exit

wiiproto_keep_rumble.exit:                        ; preds = %if.then.i, %if.end26.wiiproto_keep_rumble.exit_crit_edge
  call fastcc void @wiimote_queue(ptr noundef %wdata, ptr noundef nonnull %cmd, i32 noundef 7)
  br label %cleanup

cleanup:                                          ; preds = %wiiproto_keep_rumble.exit, %do.end
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %cmd) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wiimote_cmd_write(ptr noundef %wdata, i32 noundef %offset, ptr nocapture noundef readonly %wmem, i8 noundef zeroext %size) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca [22 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %ready.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 8
  %0 = ptrtoint ptr %ready.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ready.i, align 4
  %cmd2.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 9
  %1 = ptrtoint ptr %cmd2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 22, ptr %cmd2.i, align 4
  %opt4.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 10
  %2 = ptrtoint ptr %opt4.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %opt4.i, align 4
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %cmd.i) #8
  %conv.i = zext i8 %size to i32
  %3 = add i8 %size, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %3)
  %4 = icmp ult i8 %3, -16
  br i1 %4, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wdata, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %6, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.10, i32 noundef %conv.i) #11
  br label %wiiproto_req_wmem.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = getelementptr inbounds [22 x i8], ptr %cmd.i, i32 0, i32 6
  %8 = getelementptr inbounds [22 x i8], ptr %cmd.i, i32 0, i32 5
  %9 = getelementptr inbounds [22 x i8], ptr %cmd.i, i32 0, i32 4
  %10 = getelementptr inbounds [22 x i8], ptr %cmd.i, i32 0, i32 3
  %11 = getelementptr inbounds [22 x i8], ptr %cmd.i, i32 0, i32 2
  %12 = getelementptr inbounds [22 x i8], ptr %cmd.i, i32 0, i32 1
  %13 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 22, ptr %cmd.i, align 1
  %shr.i = lshr i32 %offset, 16
  %conv6.i = trunc i32 %shr.i to i8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv6.i, ptr %11, align 1
  %shr8.i = lshr i32 %offset, 8
  %conv10.i = trunc i32 %shr8.i to i8
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv10.i, ptr %10, align 1
  %conv13.i = trunc i32 %offset to i8
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv13.i, ptr %9, align 1
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %size, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %size)
  %18 = icmp ugt i8 %size, 15
  %19 = sub nsw i32 16, %conv.i
  %20 = select i1 %18, i32 0, i32 %19
  %21 = getelementptr i8, ptr %7, i32 %conv.i
  %22 = call ptr @memset(ptr %21, i32 0, i32 %20)
  %23 = call ptr @memcpy(ptr %7, ptr %wmem, i32 %conv.i)
  %flags.i.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.store.select.i = select i1 %tobool.not.i.i, i8 4, i8 5
  %26 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %spec.store.select.i, ptr %12, align 1
  call fastcc void @wiimote_queue(ptr noundef %wdata, ptr noundef nonnull %cmd.i, i32 noundef 22) #8
  br label %wiiproto_req_wmem.exit

wiiproto_req_wmem.exit:                           ; preds = %if.end.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %cmd.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call2) #8
  %call.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %ready.i, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %wiiproto_req_wmem.exit.if.end_crit_edge, label %if.else.i

wiiproto_req_wmem.exit.if.end_crit_edge:          ; preds = %wiiproto_req_wmem.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else.i:                                        ; preds = %wiiproto_req_wmem.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.i, label %if.else.i.if.end_crit_edge, label %if.else3.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else3.i:                                       ; preds = %if.else.i
  %27 = ptrtoint ptr %cmd2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cmd2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp5.not.i = icmp eq i32 %28, 0
  br i1 %cmp5.not.i, label %land.lhs.true, label %if.else3.i.if.end_crit_edge

if.else3.i.if.end_crit_edge:                      ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_err = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 12
  %29 = ptrtoint ptr %cmd_err to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %cmd_err, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool10.not = icmp eq i8 %30, 0
  %spec.select = select i1 %tobool10.not, i32 0, i32 -5
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %if.else3.i.if.end_crit_edge, %if.else.i.if.end_crit_edge, %wiiproto_req_wmem.exit.if.end_crit_edge
  %ret.0 = phi i32 [ %spec.select, %land.lhs.true ], [ -5, %if.else3.i.if.end_crit_edge ], [ -5, %if.else.i.if.end_crit_edge ], [ -512, %wiiproto_req_wmem.exit.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wiimote_cmd_read(ptr noundef %wdata, i32 noundef %offset, ptr noundef %rmem, i8 noundef zeroext %size) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %cmd_read_size = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 14
  %0 = ptrtoint ptr %cmd_read_size to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %size, ptr %cmd_read_size, align 4
  %cmd_read_buf = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 13
  %1 = ptrtoint ptr %cmd_read_buf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %rmem, ptr %cmd_read_buf, align 4
  %and = and i32 %offset, 65535
  %ready.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 8
  %2 = ptrtoint ptr %ready.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ready.i, align 4
  %cmd2.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 9
  %3 = ptrtoint ptr %cmd2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 23, ptr %cmd2.i, align 4
  %opt4.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 10
  %4 = ptrtoint ptr %opt4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %opt4.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %cmd.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %size)
  %cmp.i = icmp eq i8 %size, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wdata, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %6, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str, i32 noundef 0) #11
  br label %wiiproto_req_rmem.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 1
  %8 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 6
  %9 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 5
  %10 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 4
  %11 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 3
  %12 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 2
  %13 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 23, ptr %cmd.i, align 1
  %shr.i = lshr i32 %offset, 16
  %conv4.i = trunc i32 %shr.i to i8
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv4.i, ptr %12, align 1
  %shr6.i = lshr i32 %offset, 8
  %conv8.i = trunc i32 %shr6.i to i8
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv8.i, ptr %11, align 1
  %conv11.i = trunc i32 %offset to i8
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv11.i, ptr %10, align 1
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %9, align 1
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %size, ptr %8, align 1
  %flags.i.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.store.select = select i1 %tobool.not.i.i, i8 4, i8 5
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %spec.store.select, ptr %7, align 1
  call fastcc void @wiimote_queue(ptr noundef %wdata, ptr noundef nonnull %cmd.i, i32 noundef 7) #8
  br label %wiiproto_req_rmem.exit

wiiproto_req_rmem.exit:                           ; preds = %if.end.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %cmd.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call2) #8
  %call.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %ready.i, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i56 = icmp slt i32 %call.i, 0
  br i1 %cmp.i56, label %wiiproto_req_rmem.exit.wiimote_cmd_wait.exit_crit_edge, label %if.else.i

wiiproto_req_rmem.exit.wiimote_cmd_wait.exit_crit_edge: ; preds = %wiiproto_req_rmem.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiimote_cmd_wait.exit

if.else.i:                                        ; preds = %wiiproto_req_rmem.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.i, label %if.else.i.wiimote_cmd_wait.exit_crit_edge, label %if.else3.i

if.else.i.wiimote_cmd_wait.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiimote_cmd_wait.exit

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %cmd2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cmd2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp5.not.i = icmp eq i32 %23, 0
  %spec.select59 = select i1 %cmp5.not.i, i32 0, i32 -5
  br label %wiimote_cmd_wait.exit

wiimote_cmd_wait.exit:                            ; preds = %if.else3.i, %if.else.i.wiimote_cmd_wait.exit_crit_edge, %wiiproto_req_rmem.exit.wiimote_cmd_wait.exit_crit_edge
  %retval.0.i = phi i32 [ -512, %wiiproto_req_rmem.exit.wiimote_cmd_wait.exit_crit_edge ], [ -5, %if.else.i.wiimote_cmd_wait.exit_crit_edge ], [ %spec.select59, %if.else3.i ]
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %24 = ptrtoint ptr %cmd_read_buf to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %cmd_read_buf, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %if.then, label %wiimote_cmd_wait.exit.if.end39_crit_edge

wiimote_cmd_wait.exit.if.end39_crit_edge:         ; preds = %wiimote_cmd_wait.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then:                                          ; preds = %wiimote_cmd_wait.exit
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %cmd_read_size to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cmd_read_size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp33 = icmp eq i8 %26, 0
  %conv32 = zext i8 %26 to i32
  %spec.select = select i1 %cmp33, i32 -5, i32 %conv32
  br label %if.end39

if.end39:                                         ; preds = %if.then, %wiimote_cmd_wait.exit.if.end39_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %wiimote_cmd_wait.exit.if.end39_crit_edge ], [ %spec.select, %if.then ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__wiimote_schedule(ptr noundef %wdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %init_worker = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %init_worker) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimote_hid_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @wiimote_hid_driver, ptr noundef null, ptr noundef nonnull @.str.12) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wiimote_hid_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hid_unregister_driver(ptr noundef nonnull @wiimote_hid_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimote_hid_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 34
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 8
  %or = or i32 %1, 536870912
  store i32 %or, ptr %quirks, align 8
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 525008, i32 noundef 3520, i32 noundef 8) #12
  %tobool.not.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool.not.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %hdev, ptr %call1.i.i.i.i, align 4096
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %3 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1.i.i.i.i, ptr %driver_data.i.i.i, align 4
  %queue.i = getelementptr inbounds %struct.wiimote_data, ptr %call1.i.i.i.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %queue.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @wiimote_create.__key, i16 noundef signext 3) #8
  %worker.i = getelementptr inbounds %struct.wiimote_data, ptr %call1.i.i.i.i, i32 0, i32 12, i32 1
  tail call void @__init_work(ptr noundef %worker.i, i32 noundef 0) #8
  %4 = ptrtoint ptr %worker.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %worker.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.wiimote_data, ptr %call1.i.i.i.i, i32 0, i32 12, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @wiimote_create.__key.36, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry11.i = getelementptr inbounds %struct.wiimote_data, ptr %call1.i.i.i.i, i32 0, i32 12, i32 1, i32 1
  %5 = ptrtoint ptr %entry11.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry11.i, ptr %entry11.i, align 16
  %prev.i.i = getelementptr inbounds %struct.wiimote_data, ptr %call1.i.i.i.i, i32 0, i32 12, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry11.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.wiimote_data, ptr %call1.i.i.i.i, i32 0, i32 12, i32 1, i32 2
  %7 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @wiimote_queue_worker, ptr %func.i, align 8
  %state.i = getelementptr inbounds %struct.wiimote_data, ptr %call1.i.i.i.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %state.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @wiimote_create.__key.38, i16 noundef signext 3) #8
  %ready.i = getelementptr inbounds %struct.wiimote_data, ptr %call1.i.i.i.i, i32 0, i32 13, i32 8
  %8 = ptrtoint ptr %ready.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ready.i, align 16
  %wait.i.i = getelementptr inbounds %struct.wiimote_data, ptr %call1.i.i.i.i, i32 0, i32 13, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @init_completion.__key) #8
  %sync.i = getelementptr inbounds %struct.wiimote_data, ptr %call1.i.i.i.i, i32 0, i32 13, i32 7
  tail call void @__mutex_init(ptr noundef %sync.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @wiimote_create.__key.40) #8
  %drm.i = getelementptr inbounds %struct.wiimote_data, ptr %call1.i.i.i.i, i32 0, i32 13, i32 3
  %9 = ptrtoint ptr %drm.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 48, ptr %drm.i, align 2
  %cmd_battery.i = getelementptr inbounds %struct.wiimote_data, ptr %call1.i.i.i.i, i32 0, i32 13, i32 11
  %10 = ptrtoint ptr %cmd_battery.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %cmd_battery.i, align 16
  %init_worker.i = getelementptr inbounds %struct.wiimote_data, ptr %call1.i.i.i.i, i32 0, i32 14
  tail call void @__init_work(ptr noundef %init_worker.i, i32 noundef 0) #8
  %11 = ptrtoint ptr %init_worker.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %init_worker.i, align 4
  %lockdep_map34.i = getelementptr inbounds %struct.wiimote_data, ptr %call1.i.i.i.i, i32 0, i32 14, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map34.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @wiimote_create.__key.42, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry36.i = getelementptr inbounds %struct.wiimote_data, ptr %call1.i.i.i.i, i32 0, i32 14, i32 1
  %12 = ptrtoint ptr %entry36.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry36.i, ptr %entry36.i, align 8
  %prev.i65.i = getelementptr inbounds %struct.wiimote_data, ptr %call1.i.i.i.i, i32 0, i32 14, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i65.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry36.i, ptr %prev.i65.i, align 4
  %func38.i = getelementptr inbounds %struct.wiimote_data, ptr %call1.i.i.i.i, i32 0, i32 14, i32 2
  %14 = ptrtoint ptr %func38.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @wiimote_init_worker, ptr %func38.i, align 16
  %timer.i = getelementptr inbounds %struct.wiimote_data, ptr %call1.i.i.i.i, i32 0, i32 9
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @wiimote_init_timeout, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @wiimote_create.__key.44) #8
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev7 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.18) #11
  br label %err

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %dev15 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.21) #11
  br label %err

if.end16:                                         ; preds = %if.end8
  %call17 = tail call i32 @hid_hw_open(ptr noundef %hdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  %dev25 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  br i1 %tobool18.not, label %if.end24, label %do.end22

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.24) #11
  br label %err_stop

if.end24:                                         ; preds = %if.end16
  %call26 = tail call i32 @device_create_file(ptr noundef %dev25, ptr noundef nonnull @dev_attr_extension) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.27) #11
  br label %err_close

if.end33:                                         ; preds = %if.end24
  %call35 = tail call i32 @device_create_file(ptr noundef %dev25, ptr noundef nonnull @dev_attr_devtype) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end42, label %do.end40

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.27) #11
  %15 = ptrtoint ptr %call1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call1.i.i.i.i, align 4096
  %dev52 = getelementptr inbounds %struct.hid_device, ptr %16, i32 0, i32 18
  tail call void @device_remove_file(ptr noundef %dev52, ptr noundef nonnull @dev_attr_extension) #8
  br label %err_close

if.end42:                                         ; preds = %if.end33
  %call43 = tail call i32 @wiidebug_init(ptr noundef nonnull %call1.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %do.end49, label %err_free

do.end49:                                         ; preds = %if.end42
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev25, ptr noundef nonnull @.str.32) #11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state.i) #8
  %flags.i.i = getelementptr inbounds %struct.wiimote_data, ptr %call1.i.i.i.i, i32 0, i32 13, i32 1
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %18, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.end49.wiimote_schedule.exit_crit_edge

do.end49.wiimote_schedule.exit_crit_edge:         ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiimote_schedule.exit

if.then.i.i:                                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %19 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %init_worker.i) #8
  br label %wiimote_schedule.exit

wiimote_schedule.exit:                            ; preds = %if.then.i.i, %do.end49.wiimote_schedule.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state.i, i32 noundef %call2.i) #8
  br label %cleanup

err_free:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @wiimote_destroy(ptr noundef nonnull %call1.i.i.i.i)
  br label %cleanup

err_close:                                        ; preds = %do.end40, %do.end31
  %ret.0 = phi i32 [ %call26, %do.end31 ], [ %call35, %do.end40 ]
  tail call void @hid_hw_close(ptr noundef %hdev) #8
  br label %err_stop

err_stop:                                         ; preds = %err_close, %do.end22
  %ret.1 = phi i32 [ %call17, %do.end22 ], [ %ret.0, %err_close ]
  tail call void @hid_hw_stop(ptr noundef %hdev) #8
  br label %err

err:                                              ; preds = %err_stop, %do.end14, %do.end6
  %ret.2 = phi i32 [ %call.i, %do.end6 ], [ %call9, %do.end14 ], [ %ret.1, %err_stop ]
  %ir = getelementptr inbounds %struct.wiimote_data, ptr %call1.i.i.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ir, align 8
  tail call void @input_free_device(ptr noundef %21) #8
  %accel = getelementptr inbounds %struct.wiimote_data, ptr %call1.i.i.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %accel, align 4
  tail call void @input_free_device(ptr noundef %23) #8
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %err_free, %wiimote_schedule.exit, %do.end
  %retval.0 = phi i32 [ %ret.2, %err ], [ %call43, %err_free ], [ 0, %wiimote_schedule.exit ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimote_hid_remove(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.113) #11
  tail call fastcc void @wiimote_destroy(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimote_hid_event(ptr noundef %hdev, ptr nocapture noundef readnone %report, ptr noundef %raw_data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size)
  %cmp = icmp slt i32 %size, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %raw_data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %raw_data, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %4 = phi i8 [ 32, %for.cond.preheader ], [ %8, %for.inc.for.body_crit_edge ]
  %i.048 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %3)
  %cmp5 = icmp eq i8 %4, %3
  br i1 %cmp5, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %size7 = getelementptr [25 x %struct.wiiproto_handler], ptr @handlers, i32 0, i32 %i.048, i32 1
  %5 = ptrtoint ptr %size7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %size)
  %cmp8 = icmp ult i32 %6, %size
  br i1 %cmp8, label %for.end, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.048, 1
  %arrayidx = getelementptr [25 x %struct.wiiproto_handler], ptr @handlers, i32 0, i32 %inc
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 4
  %exitcond = icmp eq i32 %inc, 24
  br i1 %exitcond, label %do.end28, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %func = getelementptr [25 x %struct.wiiproto_handler], ptr @handlers, i32 0, i32 %i.048, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %func, align 4
  %arrayidx18 = getelementptr i8, ptr %raw_data, i32 1
  tail call void %10(ptr noundef %1, ptr noundef %arrayidx18) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call15) #8
  br label %cleanup

do.end28:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %11 = ptrtoint ptr %raw_data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %raw_data, align 1
  %conv30 = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.115, i32 noundef %conv30, i32 noundef %size) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end28 ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wiidebug_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wiimote_destroy(ptr noundef %wdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @wiidebug_deinit(ptr noundef %wdata) #8
  %state = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %flags6 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags6, align 4
  %or = or i32 %1, 16384
  store i32 %or, ptr %flags6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call2) #8
  %init_worker = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 14
  %call9 = tail call zeroext i1 @cancel_work_sync(ptr noundef %init_worker) #8
  %timer = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 9
  %call10 = tail call i32 @del_timer_sync(ptr noundef %timer) #8
  %2 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wdata, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_devtype) #8
  %4 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wdata, align 4
  %dev12 = getelementptr inbounds %struct.hid_device, ptr %5, i32 0, i32 18
  tail call void @device_remove_file(ptr noundef %dev12, ptr noundef nonnull @dev_attr_extension) #8
  %mp.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 6
  %6 = ptrtoint ptr %mp.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mp.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.i = icmp ult i8 %7, 2
  br i1 %cmp.i, label %entry.wiimote_mp_unload.exit_crit_edge, label %if.end.i

entry.wiimote_mp_unload.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiimote_mp_unload.exit

if.end.i:                                         ; preds = %entry
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %8 = ptrtoint ptr %mp.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %mp.i, align 1
  %9 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags6, align 4
  %and.i = and i32 %10, -4097
  store i32 %and.i, ptr %flags6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call6.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.wiimod_ops, ptr @wiimod_mp, i32 0, i32 3) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.wiimod_ops, ptr @wiimod_mp, i32 0, i32 3), align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i.wiimote_mp_unload.exit_crit_edge, label %if.then15.i

if.end.i.wiimote_mp_unload.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiimote_mp_unload.exit

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %11(ptr noundef nonnull @wiimod_mp, ptr noundef %wdata) #8
  br label %wiimote_mp_unload.exit

wiimote_mp_unload.exit:                           ; preds = %if.then15.i, %if.end.i.wiimote_mp_unload.exit_crit_edge, %entry.wiimote_mp_unload.exit_crit_edge
  %exttype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 5
  %12 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %exttype.i, align 4
  %idxprom.i = zext i8 %13 to i32
  %arrayidx.i = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %16 = ptrtoint ptr %exttype.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %exttype.i, align 4
  %17 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags6, align 4
  %and.i31 = and i32 %18, -513
  store i32 %and.i31, ptr %flags6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call3.i) #8
  %remove.i = getelementptr inbounds %struct.wiimod_ops, ptr %15, i32 0, i32 3
  %19 = ptrtoint ptr %remove.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %remove.i, align 4
  %tobool.not.i32 = icmp eq ptr %20, null
  br i1 %tobool.not.i32, label %wiimote_mp_unload.exit.wiimote_ext_unload.exit_crit_edge, label %if.then.i

wiimote_mp_unload.exit.wiimote_ext_unload.exit_crit_edge: ; preds = %wiimote_mp_unload.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiimote_ext_unload.exit

if.then.i:                                        ; preds = %wiimote_mp_unload.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %20(ptr noundef %15, ptr noundef %wdata) #8
  br label %wiimote_ext_unload.exit

wiimote_ext_unload.exit:                          ; preds = %if.then.i, %wiimote_mp_unload.exit.wiimote_ext_unload.exit_crit_edge
  %devtype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %21 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %devtype.i, align 1
  %idxprom.i35 = zext i8 %22 to i32
  %arrayidx.i36 = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom.i35
  %23 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i36, align 4
  %call3.i37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %25 = ptrtoint ptr %devtype.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %devtype.i, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call3.i37) #8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %wiimote_ext_unload.exit
  %iter.0.i = phi ptr [ %24, %wiimote_ext_unload.exit ], [ %incdec.ptr.i, %for.cond.i.for.cond.i_crit_edge ]
  %26 = ptrtoint ptr %iter.0.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %iter.0.i, align 1
  %cmp11.not.i = icmp eq i8 %27, 11
  %incdec.ptr.i = getelementptr i8, ptr %iter.0.i, i32 1
  br i1 %cmp11.not.i, label %for.end.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %input.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 1
  %28 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %input.i, align 4
  %tobool.not.i38 = icmp eq ptr %29, null
  br i1 %tobool.not.i38, label %for.end.i.if.end.i39_crit_edge, label %input_get_device.exit.i

for.end.i.if.end.i39_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i39

input_get_device.exit.i:                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.i.i = getelementptr inbounds %struct.input_dev, ptr %29, i32 0, i32 40
  %call.i.i = tail call ptr @get_device(ptr noundef %dev1.i.i) #8
  %30 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %input.i, align 4
  tail call void @input_unregister_device(ptr noundef %31) #8
  br label %if.end.i39

if.end.i39:                                       ; preds = %input_get_device.exit.i, %for.end.i.if.end.i39_crit_edge
  %cmp18.not55.i = icmp eq ptr %iter.0.i, %24
  br i1 %cmp18.not55.i, label %if.end.i39.for.end27.i_crit_edge, label %if.end.i39.for.body20.i_crit_edge

if.end.i39.for.body20.i_crit_edge:                ; preds = %if.end.i39
  br label %for.body20.i

if.end.i39.for.end27.i_crit_edge:                 ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end27.i

for.body20.i:                                     ; preds = %if.end26.i.for.body20.i_crit_edge, %if.end.i39.for.body20.i_crit_edge
  %incdec.ptr1756.pn.i = phi ptr [ %incdec.ptr1756.i, %if.end26.i.for.body20.i_crit_edge ], [ %iter.0.i, %if.end.i39.for.body20.i_crit_edge ]
  %incdec.ptr1756.i = getelementptr i8, ptr %incdec.ptr1756.pn.i, i32 -1
  %32 = ptrtoint ptr %incdec.ptr1756.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %incdec.ptr1756.i, align 1
  %idxprom21.i = zext i8 %33 to i32
  %arrayidx22.i = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %idxprom21.i
  %34 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx22.i, align 4
  %remove.i40 = getelementptr inbounds %struct.wiimod_ops, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %remove.i40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %remove.i40, align 4
  %tobool23.not.i = icmp eq ptr %37, null
  br i1 %tobool23.not.i, label %for.body20.i.if.end26.i_crit_edge, label %if.then24.i

for.body20.i.if.end26.i_crit_edge:                ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then24.i:                                      ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %37(ptr noundef %35, ptr noundef %wdata) #8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %for.body20.i.if.end26.i_crit_edge
  %cmp18.not.i = icmp eq ptr %incdec.ptr1756.i, %24
  br i1 %cmp18.not.i, label %if.end26.i.for.end27.i_crit_edge, label %if.end26.i.for.body20.i_crit_edge

if.end26.i.for.body20.i_crit_edge:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body20.i

if.end26.i.for.end27.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end27.i

for.end27.i:                                      ; preds = %if.end26.i.for.end27.i_crit_edge, %if.end.i39.for.end27.i_crit_edge
  %38 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %input.i, align 4
  %tobool29.not.i = icmp eq ptr %39, null
  br i1 %tobool29.not.i, label %for.end27.i.wiimote_modules_unload.exit_crit_edge, label %input_put_device.exit.i

for.end27.i.wiimote_modules_unload.exit_crit_edge: ; preds = %for.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiimote_modules_unload.exit

input_put_device.exit.i:                          ; preds = %for.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.i53.i = getelementptr inbounds %struct.input_dev, ptr %39, i32 0, i32 40
  tail call void @put_device(ptr noundef %dev1.i53.i) #8
  %40 = ptrtoint ptr %input.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %input.i, align 4
  br label %wiimote_modules_unload.exit

wiimote_modules_unload.exit:                      ; preds = %input_put_device.exit.i, %for.end27.i.wiimote_modules_unload.exit_crit_edge
  %worker = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 12, i32 1
  %call13 = tail call zeroext i1 @cancel_work_sync(ptr noundef %worker) #8
  %41 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wdata, align 4
  tail call void @hid_hw_close(ptr noundef %42) #8
  %43 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wdata, align 4
  tail call void @hid_hw_stop(ptr noundef %44) #8
  tail call void @kfree(ptr noundef %wdata) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimote_queue_worker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -236
  %queue6 = getelementptr i8, ptr %work, i32 -44
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue6) #8
  %head = getelementptr i8, ptr %work, i32 44
  %tail = getelementptr i8, ptr %work, i32 45
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %head, align 4
  %2 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tail, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp14.not88 = icmp eq i8 %1, %3
  br i1 %cmp14.not88, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %outq = getelementptr i8, ptr %work, i32 48
  %state = getelementptr i8, ptr %work, i32 524464
  %cmd.i = getelementptr i8, ptr %work, i32 524668
  %ready.i = getelementptr i8, ptr %work, i32 524612
  br label %while.body

while.body:                                       ; preds = %do.body47.while.body_crit_edge, %while.body.lr.ph
  %flags.089 = phi i32 [ %call7, %while.body.lr.ph ], [ %call56, %do.body47.while.body_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue6, i32 noundef %flags.089) #8
  %4 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr3, align 4
  %6 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tail, align 1
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr [32 x %struct.wiimote_buf], ptr %outq, i32 0, i32 %idxprom
  %size = getelementptr inbounds %struct.wiimote_buf, ptr %arrayidx, i32 0, i32 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %ll_driver.i = getelementptr inbounds %struct.hid_device, ptr %5, i32 0, i32 20
  %10 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ll_driver.i, align 4
  %output_report.i = getelementptr inbounds %struct.hid_ll_driver, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %output_report.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %output_report.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %while.body.do.body31_crit_edge, label %if.end.i

while.body.do.body31_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body31

if.end.i:                                         ; preds = %while.body
  %call.i = tail call ptr @kmemdup(ptr noundef %arrayidx, i32 noundef %9, i32 noundef 3264) #8
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.i.do.body31_crit_edge, label %wiimote_hid_send.exit

if.end.i.do.body31_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body31

wiimote_hid_send.exit:                            ; preds = %if.end.i
  %call4.i = tail call i32 @hid_hw_output_report(ptr noundef %5, ptr noundef nonnull %call.i, i32 noundef %9) #8
  tail call void @kfree(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp28 = icmp slt i32 %call4.i, 0
  br i1 %cmp28, label %wiimote_hid_send.exit.do.body31_crit_edge, label %wiimote_hid_send.exit.do.body47_crit_edge

wiimote_hid_send.exit.do.body47_crit_edge:        ; preds = %wiimote_hid_send.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body47

wiimote_hid_send.exit.do.body31_crit_edge:        ; preds = %wiimote_hid_send.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body31

do.body31:                                        ; preds = %wiimote_hid_send.exit.do.body31_crit_edge, %if.end.i.do.body31_crit_edge, %while.body.do.body31_crit_edge
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %14 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 64, ptr %cmd.i, align 4
  tail call void @complete(ptr noundef %ready.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call39) #8
  br label %do.body47

do.body47:                                        ; preds = %do.body31, %wiimote_hid_send.exit.do.body47_crit_edge
  %call56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue6) #8
  %15 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tail, align 1
  %17 = add i8 %16, 1
  %18 = and i8 %17, 31
  store i8 %18, ptr %tail, align 1
  %19 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %head, align 4
  %cmp14.not = icmp eq i8 %20, %18
  br i1 %cmp14.not, label %do.body47.while.end_crit_edge, label %do.body47.while.body_crit_edge

do.body47.while.body_crit_edge:                   ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

do.body47.while.end_crit_edge:                    ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.body47.while.end_crit_edge, %entry.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call7, %entry.while.end_crit_edge ], [ %call56, %do.body47.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue6, i32 noundef %flags.0.lcssa) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimote_init_worker(ptr noundef %work) #0 align 64 {
entry:
  %wmem.i.i = alloca i8, align 1
  %cmd.i.i = alloca [2 x i8], align 1
  %extdata.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -524964
  %devtype = getelementptr i8, ptr %work, i32 -213
  %0 = ptrtoint ptr %devtype to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %devtype, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false.critedge

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %extdata.i) #8
  %sync.i.i = getelementptr i8, ptr %work, i32 -208
  %2 = call ptr @memset(ptr %extdata.i, i32 255, i32 6)
  tail call void @mutex_lock_nested(ptr noundef %sync.i.i, i32 noundef 0) #8
  %state.i = getelementptr i8, ptr %work, i32 -264
  tail call void @_raw_spin_lock_irq(ptr noundef %state.i) #8
  %3 = ptrtoint ptr %devtype to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %devtype, align 1
  %ready.i.i = getelementptr i8, ptr %work, i32 -116
  %4 = ptrtoint ptr %ready.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ready.i.i, align 4
  %cmd2.i.i = getelementptr i8, ptr %work, i32 -60
  %5 = ptrtoint ptr %cmd2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 21, ptr %cmd2.i.i, align 4
  %opt4.i.i = getelementptr i8, ptr %work, i32 -56
  %6 = ptrtoint ptr %opt4.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %opt4.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd.i.i) #8
  %7 = getelementptr inbounds [2 x i8], ptr %cmd.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 21, ptr %cmd.i.i, align 1
  %flags.i.i.i = getelementptr i8, ptr %work, i32 -220
  %9 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i.i.i, align 4
  %11 = trunc i32 %10 to i8
  %12 = lshr i8 %11, 4
  %13 = and i8 %12, 1
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %7, align 1
  call fastcc void @wiimote_queue(ptr noundef %add.ptr, ptr noundef nonnull %cmd.i.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i.i) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %state.i) #8
  %call.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %ready.i.i, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.out_release.thread.i_crit_edge, label %if.else.i.i

if.then.out_release.thread.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release.thread.i

if.else.i.i:                                      ; preds = %if.then
  %15 = ptrtoint ptr %cmd2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cmd2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not.i.i = icmp eq i32 %16, 0
  br i1 %cmp.not.i.i, label %if.end.i, label %if.else.i.i.out_release.thread.i_crit_edge

if.else.i.i.out_release.thread.i_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release.thread.i

if.end.i:                                         ; preds = %if.else.i.i
  tail call void @_raw_spin_lock_irq(ptr noundef %state.i) #8
  %17 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i.i.i, align 4
  %and.i = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  tail call void @_raw_spin_unlock_irq(ptr noundef %state.i) #8
  br i1 %tobool7.not.i, label %if.end.i.out_release.thread.i_crit_edge, label %if.end12.i

if.end.i.out_release.thread.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release.thread.i

if.end12.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wmem.i.i) #8
  %19 = ptrtoint ptr %wmem.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 85, ptr %wmem.i.i, align 1
  %call.i50.i = call i32 @wiimote_cmd_write(ptr noundef %add.ptr, i32 noundef 10748144, ptr noundef nonnull %wmem.i.i, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50.i)
  %tobool.not.i51.i = icmp eq i32 %call.i50.i, 0
  br i1 %tobool.not.i51.i, label %if.end.i.i, label %if.end12.i.out_release.i_crit_edge

if.end12.i.out_release.i_crit_edge:               ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release.i

if.end.i.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %wmem.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %wmem.i.i, align 1
  %call1.i.i = call i32 @wiimote_cmd_write(ptr noundef %add.ptr, i32 noundef 10748155, ptr noundef nonnull %wmem.i.i, i8 noundef zeroext 1) #8
  br label %out_release.i

out_release.thread.i:                             ; preds = %if.end.i.out_release.thread.i_crit_edge, %if.else.i.i.out_release.thread.i_crit_edge, %if.then.out_release.thread.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %sync.i.i) #8
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 4
  br label %if.end13.i.i

out_release.i:                                    ; preds = %if.end.i.i, %if.end12.i.out_release.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wmem.i.i) #8
  %call14.i = call fastcc zeroext i8 @wiimote_cmd_read_ext(ptr noundef %add.ptr, ptr noundef nonnull %extdata.i) #8
  call void @mutex_unlock(ptr noundef %sync.i.i) #8
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 4
  %conv7.i.i = zext i8 %call14.i to i32
  %25 = zext i8 %call14.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.126)
  switch i8 %call14.i, label %out_release.i.if.end13.i.i_crit_edge [
    i8 4, label %out_release.i.do.end58.i.i_crit_edge
    i8 5, label %if.then12.i.i
  ]

out_release.i.do.end58.i.i_crit_edge:             ; preds = %out_release.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end58.i.i

out_release.i.if.end13.i.i_crit_edge:             ; preds = %out_release.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i.i

if.then12.i.i:                                    ; preds = %out_release.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end58.i.i

if.end13.i.i:                                     ; preds = %out_release.i.if.end13.i.i_crit_edge, %out_release.thread.i
  %conv7.i63.i = phi i32 [ 0, %out_release.thread.i ], [ %conv7.i.i, %out_release.i.if.end13.i.i_crit_edge ]
  %26 = phi ptr [ %22, %out_release.thread.i ], [ %24, %out_release.i.if.end13.i.i_crit_edge ]
  %.in64.i = getelementptr inbounds %struct.hid_device, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %.in64.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %.in64.i, align 4
  %.in.i = getelementptr inbounds %struct.hid_device, ptr %26, i32 0, i32 11
  %29 = ptrtoint ptr %.in.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %.in.i, align 8
  %name6.i62.i = getelementptr inbounds %struct.hid_device, ptr %26, i32 0, i32 39
  %call.i53.i = call i32 @strcmp(ptr noundef %name6.i62.i, ptr noundef nonnull dereferenceable(20) @.str.49) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53.i)
  %tobool.not.i54.i = icmp eq i32 %call.i53.i, 0
  br i1 %tobool.not.i54.i, label %if.end13.i.i.do.end58.i.i_crit_edge, label %if.else15.i.i

if.end13.i.i.do.end58.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end58.i.i

if.else15.i.i:                                    ; preds = %if.end13.i.i
  %call16.i.i = call i32 @strcmp(ptr noundef %name6.i62.i, ptr noundef nonnull dereferenceable(23) @.str.50) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.else15.i.i.do.end58.i.i_crit_edge, label %if.else19.i.i

if.else15.i.i.do.end58.i.i_crit_edge:             ; preds = %if.else15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end58.i.i

if.else19.i.i:                                    ; preds = %if.else15.i.i
  %call20.i.i = call i32 @strcmp(ptr noundef %name6.i62.i, ptr noundef nonnull dereferenceable(20) @.str.51) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.else19.i.i.do.end58.i.i_crit_edge, label %if.else23.i.i

if.else19.i.i.do.end58.i.i_crit_edge:             ; preds = %if.else19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end58.i.i

if.else23.i.i:                                    ; preds = %if.else19.i.i
  %call24.i.i = call i32 @strcmp(ptr noundef %name6.i62.i, ptr noundef nonnull dereferenceable(23) @.str.52) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool25.not.i.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.else23.i.i.do.end58.i.i_crit_edge, label %if.end30.i.i

if.else23.i.i.do.end58.i.i_crit_edge:             ; preds = %if.else23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end58.i.i

if.end30.i.i:                                     ; preds = %if.else23.i.i
  %conv31.i.i = and i32 %28, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1406, i32 %conv31.i.i)
  %cmp32.i.i = icmp eq i32 %conv31.i.i, 1406
  br i1 %cmp32.i.i, label %if.then34.i.i, label %if.end30.i.i.do.end.i.i_crit_edge

if.end30.i.i.do.end.i.i_crit_edge:                ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

if.then34.i.i:                                    ; preds = %if.end30.i.i
  %trunc.i.i = trunc i32 %30 to i16
  %31 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.127)
  switch i16 %trunc.i.i, label %if.then34.i.i.do.end.i.i_crit_edge [
    i16 774, label %if.then34.i.i.do.end58.i.i_crit_edge
    i16 816, label %if.then43.i.i
  ]

if.then34.i.i.do.end58.i.i_crit_edge:             ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end58.i.i

if.then34.i.i.do.end.i.i_crit_edge:               ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

if.then43.i.i:                                    ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end58.i.i

do.end.i.i:                                       ; preds = %if.then34.i.i.do.end.i.i_crit_edge, %if.end30.i.i.do.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.hid_device, ptr %26, i32 0, i32 18
  %conv53.i.i = and i32 %30, 65535
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.53, ptr noundef %name6.i62.i, i32 noundef %conv31.i.i, i32 noundef %conv53.i.i, i32 noundef %conv7.i63.i) #11
  br label %if.end61.i.i

do.end58.i.i:                                     ; preds = %if.then43.i.i, %if.then34.i.i.do.end58.i.i_crit_edge, %if.else23.i.i.do.end58.i.i_crit_edge, %if.else19.i.i.do.end58.i.i_crit_edge, %if.else15.i.i.do.end58.i.i_crit_edge, %if.end13.i.i.do.end58.i.i_crit_edge, %if.then12.i.i, %out_release.i.do.end58.i.i_crit_edge
  %32 = phi ptr [ %26, %if.then34.i.i.do.end58.i.i_crit_edge ], [ %26, %if.else23.i.i.do.end58.i.i_crit_edge ], [ %26, %if.else19.i.i.do.end58.i.i_crit_edge ], [ %26, %if.else15.i.i.do.end58.i.i_crit_edge ], [ %26, %if.end13.i.i.do.end58.i.i_crit_edge ], [ %24, %out_release.i.do.end58.i.i_crit_edge ], [ %24, %if.then12.i.i ], [ %26, %if.then43.i.i ]
  %devtype.0.ph.i.i = phi i32 [ 3, %if.then34.i.i.do.end58.i.i_crit_edge ], [ 6, %if.else23.i.i.do.end58.i.i_crit_edge ], [ 5, %if.else19.i.i.do.end58.i.i_crit_edge ], [ 4, %if.else15.i.i.do.end58.i.i_crit_edge ], [ 3, %if.end13.i.i.do.end58.i.i_crit_edge ], [ 5, %out_release.i.do.end58.i.i_crit_edge ], [ 6, %if.then12.i.i ], [ 4, %if.then43.i.i ]
  %dev60.i.i = getelementptr inbounds %struct.hid_device, ptr %32, i32 0, i32 18
  %arrayidx.i.i = getelementptr [7 x ptr], ptr @wiimote_devtype_names, i32 0, i32 %devtype.0.ph.i.i
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev60.i.i, ptr noundef nonnull @.str.56, ptr noundef %34) #11
  br label %if.end61.i.i

if.end61.i.i:                                     ; preds = %do.end58.i.i, %do.end.i.i
  %devtype.082.i.i = phi i32 [ %devtype.0.ph.i.i, %do.end58.i.i ], [ 2, %do.end.i.i ]
  %arrayidx.i.i.i = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %devtype.082.i.i
  %35 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %38)
  %cmp.not131.i.i.i = icmp eq i8 %38, 11
  br i1 %cmp.not131.i.i.i, label %if.end61.i.i.for.end49.i.i.i_crit_edge, label %if.end61.i.i.for.body.i.i.i_crit_edge

if.end61.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end61.i.i
  br label %for.body.i.i.i

if.end61.i.i.for.end49.i.i.i_crit_edge:           ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end49.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %incdec.ptr.i.i.i = getelementptr i8, ptr %iter.0132.i.i.i, i32 1
  %39 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %incdec.ptr.i.i.i, align 1
  %cmp.not.i.i.i = icmp eq i8 %40, 11
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.if.end31.i.i.i_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.cond.i.i.i.if.end31.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %if.end61.i.i.for.body.i.i.i_crit_edge
  %41 = phi i8 [ %40, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ %38, %if.end61.i.i.for.body.i.i.i_crit_edge ]
  %iter.0132.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ %36, %if.end61.i.i.for.body.i.i.i_crit_edge ]
  %conv.i.i.i = zext i8 %41 to i32
  %arrayidx2.i.i.i = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i.i.i
  %42 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx2.i.i.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %43, align 4
  %46 = and i16 %45, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool.not.i.i.i = icmp eq i16 %46, 0
  br i1 %tobool.not.i.i.i, label %for.cond.i.i.i, label %if.then5.critedge.i.i.i

if.then5.critedge.i.i.i:                          ; preds = %for.body.i.i.i
  %call.i.i.i = call ptr @input_allocate_device() #8
  %input.i.i.i = getelementptr i8, ptr %work, i32 -524960
  %47 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i.i.i, ptr %input.i.i.i, align 4
  %tobool7.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool7.not.i.i.i, label %if.then5.critedge.i.i.i.wiimote_init_set_type.exit.i_crit_edge, label %if.end9.i.i.i

if.then5.critedge.i.i.i.wiimote_init_set_type.exit.i_crit_edge: ; preds = %if.then5.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiimote_init_set_type.exit.i

if.end9.i.i.i:                                    ; preds = %if.then5.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i.i, i32 0, i32 40, i32 8
  %48 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr, ptr %driver_data.i.i.i.i.i, align 4
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr, align 4
  %dev.i.i.i = getelementptr inbounds %struct.hid_device, ptr %50, i32 0, i32 18
  %51 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %input.i.i.i, align 4
  %parent.i.i.i = getelementptr inbounds %struct.input_dev, ptr %52, i32 0, i32 40, i32 1
  %53 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %dev.i.i.i, ptr %parent.i.i.i, align 8
  %54 = load ptr, ptr %add.ptr, align 4
  %bus.i.i.i = getelementptr inbounds %struct.hid_device, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %bus.i.i.i, align 8
  %57 = load ptr, ptr %input.i.i.i, align 4
  %id.i.i.i = getelementptr inbounds %struct.input_dev, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %56, ptr %id.i.i.i, align 4
  %59 = load ptr, ptr %add.ptr, align 4
  %vendor.i.i.i = getelementptr inbounds %struct.hid_device, ptr %59, i32 0, i32 10
  %60 = ptrtoint ptr %vendor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %vendor.i.i.i, align 4
  %conv16.i.i.i = trunc i32 %61 to i16
  %62 = load ptr, ptr %input.i.i.i, align 4
  %vendor19.i.i.i = getelementptr inbounds %struct.input_dev, ptr %62, i32 0, i32 3, i32 1
  %63 = ptrtoint ptr %vendor19.i.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv16.i.i.i, ptr %vendor19.i.i.i, align 2
  %64 = load ptr, ptr %add.ptr, align 4
  %product.i.i.i = getelementptr inbounds %struct.hid_device, ptr %64, i32 0, i32 11
  %65 = ptrtoint ptr %product.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %product.i.i.i, align 8
  %conv21.i.i.i = trunc i32 %66 to i16
  %67 = load ptr, ptr %input.i.i.i, align 4
  %product24.i.i.i = getelementptr inbounds %struct.input_dev, ptr %67, i32 0, i32 3, i32 2
  %68 = ptrtoint ptr %product24.i.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv21.i.i.i, ptr %product24.i.i.i, align 4
  %69 = load ptr, ptr %add.ptr, align 4
  %version.i.i.i = getelementptr inbounds %struct.hid_device, ptr %69, i32 0, i32 12
  %70 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %version.i.i.i, align 4
  %conv26.i.i.i = trunc i32 %71 to i16
  %72 = load ptr, ptr %input.i.i.i, align 4
  %version29.i.i.i = getelementptr inbounds %struct.input_dev, ptr %72, i32 0, i32 3, i32 3
  %73 = ptrtoint ptr %version29.i.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv26.i.i.i, ptr %version29.i.i.i, align 2
  %74 = load ptr, ptr %input.i.i.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.65, ptr %74, align 8
  br label %if.end31.i.i.i

if.end31.i.i.i:                                   ; preds = %if.end9.i.i.i, %for.cond.i.i.i.if.end31.i.i.i_crit_edge
  %76 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %76)
  %.pr.i.i.i = load i8, ptr %36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %.pr.i.i.i)
  %cmp34.not133.i.i.i = icmp eq i8 %.pr.i.i.i, 11
  br i1 %cmp34.not133.i.i.i, label %if.end31.i.i.i.for.end49.i.i.i_crit_edge, label %if.end31.i.i.i.for.body36.i.i.i_crit_edge

if.end31.i.i.i.for.body36.i.i.i_crit_edge:        ; preds = %if.end31.i.i.i
  br label %for.body36.i.i.i

if.end31.i.i.i.for.end49.i.i.i_crit_edge:         ; preds = %if.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end49.i.i.i

for.body36.i.i.i:                                 ; preds = %for.inc47.i.i.i.for.body36.i.i.i_crit_edge, %if.end31.i.i.i.for.body36.i.i.i_crit_edge
  %77 = phi i8 [ %83, %for.inc47.i.i.i.for.body36.i.i.i_crit_edge ], [ %.pr.i.i.i, %if.end31.i.i.i.for.body36.i.i.i_crit_edge ]
  %iter.1134.i.i.i = phi ptr [ %incdec.ptr48.i.i.i, %for.inc47.i.i.i.for.body36.i.i.i_crit_edge ], [ %36, %if.end31.i.i.i.for.body36.i.i.i_crit_edge ]
  %conv33.i.i.i = zext i8 %77 to i32
  %arrayidx38.i.i.i = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv33.i.i.i
  %78 = ptrtoint ptr %arrayidx38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx38.i.i.i, align 4
  %probe.i.i.i = getelementptr inbounds %struct.wiimod_ops, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %probe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %probe.i.i.i, align 4
  %tobool39.not.i.i.i = icmp eq ptr %81, null
  br i1 %tobool39.not.i.i.i, label %for.body36.i.i.i.for.inc47.i.i.i_crit_edge, label %if.end41.i.i.i

for.body36.i.i.i.for.inc47.i.i.i_crit_edge:       ; preds = %for.body36.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47.i.i.i

if.end41.i.i.i:                                   ; preds = %for.body36.i.i.i
  %call43.i.i.i = call i32 %81(ptr noundef %79, ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i.i.i)
  %tobool44.not.i.i.i = icmp eq i32 %call43.i.i.i, 0
  br i1 %tobool44.not.i.i.i, label %if.end41.i.i.i.for.inc47.i.i.i_crit_edge, label %if.end41.i.i.i.error.i.i.i_crit_edge

if.end41.i.i.i.error.i.i.i_crit_edge:             ; preds = %if.end41.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.i.i.i

if.end41.i.i.i.for.inc47.i.i.i_crit_edge:         ; preds = %if.end41.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47.i.i.i

for.inc47.i.i.i:                                  ; preds = %if.end41.i.i.i.for.inc47.i.i.i_crit_edge, %for.body36.i.i.i.for.inc47.i.i.i_crit_edge
  %incdec.ptr48.i.i.i = getelementptr i8, ptr %iter.1134.i.i.i, i32 1
  %82 = ptrtoint ptr %incdec.ptr48.i.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %incdec.ptr48.i.i.i, align 1
  %cmp34.not.i.i.i = icmp eq i8 %83, 11
  br i1 %cmp34.not.i.i.i, label %for.inc47.i.i.i.for.end49.i.i.i_crit_edge, label %for.inc47.i.i.i.for.body36.i.i.i_crit_edge

for.inc47.i.i.i.for.body36.i.i.i_crit_edge:       ; preds = %for.inc47.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body36.i.i.i

for.inc47.i.i.i.for.end49.i.i.i_crit_edge:        ; preds = %for.inc47.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end49.i.i.i

for.end49.i.i.i:                                  ; preds = %for.inc47.i.i.i.for.end49.i.i.i_crit_edge, %if.end31.i.i.i.for.end49.i.i.i_crit_edge, %if.end61.i.i.for.end49.i.i.i_crit_edge
  %iter.1.lcssa.i.i.i = phi ptr [ %36, %if.end31.i.i.i.for.end49.i.i.i_crit_edge ], [ %36, %if.end61.i.i.for.end49.i.i.i_crit_edge ], [ %incdec.ptr48.i.i.i, %for.inc47.i.i.i.for.end49.i.i.i_crit_edge ]
  %input50.i.i.i = getelementptr i8, ptr %work, i32 -524960
  %84 = ptrtoint ptr %input50.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %input50.i.i.i, align 4
  %tobool51.not.i.i.i = icmp eq ptr %85, null
  br i1 %tobool51.not.i.i.i, label %for.end49.i.i.i.if.end58.i.i.i_crit_edge, label %if.then52.i.i.i

for.end49.i.i.i.if.end58.i.i.i_crit_edge:         ; preds = %for.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i.i.i

if.then52.i.i.i:                                  ; preds = %for.end49.i.i.i
  %call54.i.i.i = call i32 @input_register_device(ptr noundef nonnull %85) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i.i.i)
  %tobool55.not.i.i.i = icmp eq i32 %call54.i.i.i, 0
  br i1 %tobool55.not.i.i.i, label %if.then52.i.i.i.if.end58.i.i.i_crit_edge, label %if.then52.i.i.i.error.i.i.i_crit_edge

if.then52.i.i.i.error.i.i.i_crit_edge:            ; preds = %if.then52.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.i.i.i

if.then52.i.i.i.if.end58.i.i.i_crit_edge:         ; preds = %if.then52.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i.i.i

if.end58.i.i.i:                                   ; preds = %if.then52.i.i.i.if.end58.i.i.i_crit_edge, %for.end49.i.i.i.if.end58.i.i.i_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %state.i) #8
  %conv59.i.i.i = trunc i32 %devtype.082.i.i to i8
  %86 = ptrtoint ptr %devtype to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv59.i.i.i, ptr %devtype, align 1
  call void @_raw_spin_unlock_irq(ptr noundef %state.i) #8
  br label %wiimote_init_set_type.exit.i

error.i.i.i:                                      ; preds = %if.then52.i.i.i.error.i.i.i_crit_edge, %if.end41.i.i.i.error.i.i.i_crit_edge
  %iter.1130.i.i.i = phi ptr [ %iter.1.lcssa.i.i.i, %if.then52.i.i.i.error.i.i.i_crit_edge ], [ %iter.1134.i.i.i, %if.end41.i.i.i.error.i.i.i_crit_edge ]
  %cmp66.not137.i.i.i = icmp eq ptr %iter.1130.i.i.i, %36
  br i1 %cmp66.not137.i.i.i, label %error.i.i.i.for.end75.i.i.i_crit_edge, label %error.i.i.i.for.body68.i.i.i_crit_edge

error.i.i.i.for.body68.i.i.i_crit_edge:           ; preds = %error.i.i.i
  br label %for.body68.i.i.i

error.i.i.i.for.end75.i.i.i_crit_edge:            ; preds = %error.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end75.i.i.i

for.body68.i.i.i:                                 ; preds = %if.end74.i.i.i.for.body68.i.i.i_crit_edge, %error.i.i.i.for.body68.i.i.i_crit_edge
  %incdec.ptr65138.pn.i.i.i = phi ptr [ %incdec.ptr65138.i.i.i, %if.end74.i.i.i.for.body68.i.i.i_crit_edge ], [ %iter.1130.i.i.i, %error.i.i.i.for.body68.i.i.i_crit_edge ]
  %incdec.ptr65138.i.i.i = getelementptr i8, ptr %incdec.ptr65138.pn.i.i.i, i32 -1
  %87 = ptrtoint ptr %incdec.ptr65138.i.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %incdec.ptr65138.i.i.i, align 1
  %idxprom69.i.i.i = zext i8 %88 to i32
  %arrayidx70.i.i.i = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %idxprom69.i.i.i
  %89 = ptrtoint ptr %arrayidx70.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx70.i.i.i, align 4
  %remove.i.i.i = getelementptr inbounds %struct.wiimod_ops, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %remove.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %remove.i.i.i, align 4
  %tobool71.not.i.i.i = icmp eq ptr %92, null
  br i1 %tobool71.not.i.i.i, label %for.body68.i.i.i.if.end74.i.i.i_crit_edge, label %if.then72.i.i.i

for.body68.i.i.i.if.end74.i.i.i_crit_edge:        ; preds = %for.body68.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74.i.i.i

if.then72.i.i.i:                                  ; preds = %for.body68.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void %92(ptr noundef %90, ptr noundef %add.ptr) #8
  br label %if.end74.i.i.i

if.end74.i.i.i:                                   ; preds = %if.then72.i.i.i, %for.body68.i.i.i.if.end74.i.i.i_crit_edge
  %cmp66.not.i.i.i = icmp eq ptr %incdec.ptr65138.i.i.i, %36
  br i1 %cmp66.not.i.i.i, label %if.end74.i.i.i.for.end75.i.i.i_crit_edge, label %if.end74.i.i.i.for.body68.i.i.i_crit_edge

if.end74.i.i.i.for.body68.i.i.i_crit_edge:        ; preds = %if.end74.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body68.i.i.i

if.end74.i.i.i.for.end75.i.i.i_crit_edge:         ; preds = %if.end74.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end75.i.i.i

for.end75.i.i.i:                                  ; preds = %if.end74.i.i.i.for.end75.i.i.i_crit_edge, %error.i.i.i.for.end75.i.i.i_crit_edge
  %input76.i.i.i = getelementptr i8, ptr %work, i32 -524960
  %93 = ptrtoint ptr %input76.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %input76.i.i.i, align 4
  %tobool77.not.i.i.i = icmp eq ptr %94, null
  br i1 %tobool77.not.i.i.i, label %for.end75.i.i.i.wiimote_init_set_type.exit.i_crit_edge, label %if.then78.i.i.i

for.end75.i.i.i.wiimote_init_set_type.exit.i_crit_edge: ; preds = %for.end75.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiimote_init_set_type.exit.i

if.then78.i.i.i:                                  ; preds = %for.end75.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @input_free_device(ptr noundef nonnull %94) #8
  %95 = ptrtoint ptr %input76.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %input76.i.i.i, align 4
  br label %wiimote_init_set_type.exit.i

wiimote_init_set_type.exit.i:                     ; preds = %if.then78.i.i.i, %for.end75.i.i.i.wiimote_init_set_type.exit.i_crit_edge, %if.end58.i.i.i, %if.then5.critedge.i.i.i.wiimote_init_set_type.exit.i_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %state.i) #8
  %96 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %flags.i.i.i, align 4
  %98 = and i32 %97, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %if.then25.i, label %wiimote_init_set_type.exit.i.wiimote_init_detect.exit_crit_edge

wiimote_init_set_type.exit.i.wiimote_init_detect.exit_crit_edge: ; preds = %wiimote_init_set_type.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiimote_init_detect.exit

if.then25.i:                                      ; preds = %wiimote_init_set_type.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %timer.i = getelementptr i8, ptr %work, i32 -524828
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %100 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %100, 400
  %call26.i = call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #8
  br label %wiimote_init_detect.exit

wiimote_init_detect.exit:                         ; preds = %if.then25.i, %wiimote_init_set_type.exit.i.wiimote_init_detect.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %state.i) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %extdata.i) #8
  call fastcc void @wiimote_init_hotplug(ptr noundef %add.ptr)
  %101 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %102, i32 0, i32 18
  %call7 = call i32 @kobject_uevent(ptr noundef %dev, i32 noundef 2) #8
  br label %if.end8

lor.lhs.false.critedge:                           ; preds = %entry
  %call = tail call fastcc zeroext i1 @wiimote_init_check(ptr noundef %add.ptr)
  br i1 %call, label %lor.lhs.false.critedge.if.end8_crit_edge, label %if.end8.critedge

lor.lhs.false.critedge.if.end8_crit_edge:         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8.critedge:                                 ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @wiimote_init_hotplug(ptr noundef %add.ptr)
  br label %if.end8

if.end8:                                          ; preds = %if.end8.critedge, %lor.lhs.false.critedge.if.end8_crit_edge, %wiimote_init_detect.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiimote_init_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr i8, ptr %t, i32 524564
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state.i) #8
  %flags.i.i = getelementptr i8, ptr %t, i32 524608
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.wiimote_schedule.exit_crit_edge

entry.wiimote_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiimote_schedule.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %init_worker.i.i = getelementptr i8, ptr %t, i32 524828
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %init_worker.i.i) #8
  br label %wiimote_schedule.exit

wiimote_schedule.exit:                            ; preds = %if.then.i.i, %entry.wiimote_schedule.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state.i, i32 noundef %call2.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_output_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @wiimote_init_check(ptr noundef %wdata) unnamed_addr #0 align 64 {
entry:
  %data = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data) #8
  %state = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13
  %0 = call ptr @memset(ptr %data, i32 255, i32 6)
  tail call void @_raw_spin_lock_irq(ptr noundef %state) #8
  %flags2 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %1 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags2, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %state) #8
  %sync.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 7
  tail call void @mutex_lock_nested(ptr noundef %sync.i, i32 noundef 0) #8
  %exttype = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 5
  %3 = ptrtoint ptr %exttype to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %exttype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.end55.thread

land.lhs.true:                                    ; preds = %entry
  %mp = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 6
  %5 = ptrtoint ptr %mp to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp9.not = icmp eq i8 %6, 0
  %and = and i32 %2, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp9.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.end55, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call fastcc zeroext i8 @wiimote_cmd_read_mp_mapped(ptr noundef %wdata)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call)
  %cmp13 = icmp eq i8 %call, 2
  tail call void @_raw_spin_lock_irq(ptr noundef %state) #8
  br i1 %cmp13, label %land.rhs, label %if.then.land.end41.thread_crit_edge

if.then.land.end41.thread_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end41.thread

land.rhs:                                         ; preds = %if.then
  %7 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags2, align 4
  %9 = and i32 %8, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %land.end41, label %land.rhs.land.end41.thread_crit_edge

land.rhs.land.end41.thread_crit_edge:             ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end41.thread

land.end41.thread:                                ; preds = %land.rhs.land.end41.thread_crit_edge, %if.then.land.end41.thread_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %state) #8
  br label %do.body

land.end41:                                       ; preds = %land.rhs
  %and39 = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  tail call void @_raw_spin_unlock_irq(ptr noundef %state) #8
  br i1 %tobool40.not, label %land.end41.do.body_crit_edge, label %land.end41.out_release_crit_edge

land.end41.out_release_crit_edge:                 ; preds = %land.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

land.end41.do.body_crit_edge:                     ; preds = %land.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %land.end41.do.body_crit_edge, %land.end41.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wiimote_init_check.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wiimote_init_check, %if.then53)) #8
          to label %out_release [label %if.then53], !srcloc !273

if.then53:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wdata, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %12, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wiimote_init_check.__UNIQUE_ID_ddebug226, ptr noundef %dev, ptr noundef nonnull @.str.73) #8
  br label %out_release

if.end55:                                         ; preds = %land.lhs.true
  br i1 %tobool.not, label %if.then127, label %if.end55.out_release_crit_edge

if.end55.out_release_crit_edge:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

if.end55.thread:                                  ; preds = %entry
  %and56386 = and i32 %2, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56386)
  %tobool57.not387 = icmp eq i32 %and56386, 0
  br i1 %tobool57.not387, label %if.then64, label %land.lhs.true201

if.then64:                                        ; preds = %if.end55.thread
  %call65 = call fastcc zeroext i8 @wiimote_cmd_read_ext(ptr noundef %wdata, ptr noundef nonnull %data)
  %13 = ptrtoint ptr %exttype to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %exttype, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %call65, i8 %14)
  %cmp70 = icmp eq i8 %call65, %14
  call void @_raw_spin_lock_irq(ptr noundef %state) #8
  br i1 %cmp70, label %land.rhs77, label %if.then64.land.end93.thread_crit_edge

if.then64.land.end93.thread_crit_edge:            ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end93.thread

land.rhs77:                                       ; preds = %if.then64
  %15 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags2, align 4
  %and80 = and i32 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %land.end93, label %land.rhs77.land.end93.thread_crit_edge

land.rhs77.land.end93.thread_crit_edge:           ; preds = %land.rhs77
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end93.thread

land.end93.thread:                                ; preds = %land.rhs77.land.end93.thread_crit_edge, %if.then64.land.end93.thread_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %state) #8
  br label %do.body99

land.end93:                                       ; preds = %land.rhs77
  %and91 = and i32 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  call void @_raw_spin_unlock_irq(ptr noundef %state) #8
  br i1 %tobool92.not, label %land.end93.do.body99_crit_edge, label %land.end93.out_release_crit_edge

land.end93.out_release_crit_edge:                 ; preds = %land.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

land.end93.do.body99_crit_edge:                   ; preds = %land.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body99

do.body99:                                        ; preds = %land.end93.do.body99_crit_edge, %land.end93.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wiimote_init_check.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wiimote_init_check, %if.then111)) #8
          to label %out_release [label %if.then111], !srcloc !273

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wdata, align 4
  %dev113 = getelementptr inbounds %struct.hid_device, ptr %18, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wiimote_init_check.__UNIQUE_ID_ddebug227, ptr noundef %dev113, ptr noundef nonnull @.str.74) #8
  br label %out_release

if.then127:                                       ; preds = %if.end55
  %call129 = call fastcc zeroext i8 @wiimote_cmd_read_ext(ptr noundef %wdata, ptr noundef nonnull %data)
  %19 = ptrtoint ptr %exttype to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %exttype, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %call129, i8 %20)
  %cmp134 = icmp eq i8 %call129, %20
  call void @_raw_spin_lock_irq(ptr noundef %state) #8
  br i1 %cmp134, label %land.rhs141, label %if.then127.land.end170.thread_crit_edge

if.then127.land.end170.thread_crit_edge:          ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end170.thread

land.rhs141:                                      ; preds = %if.then127
  %21 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags2, align 4
  %23 = and i32 %22, 9216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %land.end170, label %land.rhs141.land.end170.thread_crit_edge

land.rhs141.land.end170.thread_crit_edge:         ; preds = %land.rhs141
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end170.thread

land.end170.thread:                               ; preds = %land.rhs141.land.end170.thread_crit_edge, %if.then127.land.end170.thread_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %state) #8
  br label %do.body176

land.end170:                                      ; preds = %land.rhs141
  %and166 = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  call void @_raw_spin_unlock_irq(ptr noundef %state) #8
  br i1 %tobool167.not, label %land.end170.out_release_crit_edge, label %land.end170.do.body176_crit_edge

land.end170.do.body176_crit_edge:                 ; preds = %land.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body176

land.end170.out_release_crit_edge:                ; preds = %land.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

do.body176:                                       ; preds = %land.end170.do.body176_crit_edge, %land.end170.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wiimote_init_check.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wiimote_init_check, %if.then188)) #8
          to label %out_release [label %if.then188], !srcloc !273

if.then188:                                       ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wdata, align 4
  %dev190 = getelementptr inbounds %struct.hid_device, ptr %26, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wiimote_init_check.__UNIQUE_ID_ddebug228, ptr noundef %dev190, ptr noundef nonnull @.str.75) #8
  br label %out_release

land.lhs.true201:                                 ; preds = %if.end55.thread
  %mp203 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 6
  %27 = ptrtoint ptr %mp203 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %mp203, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp205.not = icmp eq i8 %28, 0
  br i1 %cmp205.not, label %land.lhs.true201.out_release_crit_edge, label %if.then210

land.lhs.true201.out_release_crit_edge:           ; preds = %land.lhs.true201
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

if.then210:                                       ; preds = %land.lhs.true201
  %call211 = tail call fastcc zeroext i8 @wiimote_cmd_read_mp_mapped(ptr noundef %wdata)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call211)
  %29 = icmp ugt i8 %call211, 1
  br i1 %29, label %land.rhs226, label %land.end241.critedge

land.rhs226:                                      ; preds = %if.then210
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call211)
  %cmp228.not = icmp eq i8 %call211, 2
  tail call void @_raw_spin_lock_irq(ptr noundef %state) #8
  br i1 %cmp228.not, label %land.rhs226.land.end259.thread_crit_edge, label %land.rhs236

land.rhs226.land.end259.thread_crit_edge:         ; preds = %land.rhs226
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end259.thread

land.rhs236:                                      ; preds = %land.rhs226
  %30 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags2, align 4
  %32 = and i32 %31, 1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %32)
  %33 = icmp eq i32 %32, 1280
  br i1 %33, label %land.end259, label %land.rhs236.land.end259.thread_crit_edge

land.rhs236.land.end259.thread_crit_edge:         ; preds = %land.rhs236
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end259.thread

land.end241.critedge:                             ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_lock_irq(ptr noundef %state) #8
  br label %land.end259.thread

land.end259.thread:                               ; preds = %land.end241.critedge, %land.rhs236.land.end259.thread_crit_edge, %land.rhs226.land.end259.thread_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %state) #8
  br label %do.body265

land.end259:                                      ; preds = %land.rhs236
  %and257 = and i32 %31, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and257)
  %tobool258.not = icmp eq i32 %and257, 0
  tail call void @_raw_spin_unlock_irq(ptr noundef %state) #8
  br i1 %tobool258.not, label %land.end259.do.body265_crit_edge, label %land.end259.out_release_crit_edge

land.end259.out_release_crit_edge:                ; preds = %land.end259
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release

land.end259.do.body265_crit_edge:                 ; preds = %land.end259
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body265

do.body265:                                       ; preds = %land.end259.do.body265_crit_edge, %land.end259.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wiimote_init_check.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wiimote_init_check, %if.then277)) #8
          to label %out_release [label %if.then277], !srcloc !273

if.then277:                                       ; preds = %do.body265
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wdata, align 4
  %dev279 = getelementptr inbounds %struct.hid_device, ptr %35, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wiimote_init_check.__UNIQUE_ID_ddebug229, ptr noundef %dev279, ptr noundef nonnull @.str.76) #8
  br label %out_release

out_release:                                      ; preds = %if.then277, %do.body265, %land.end259.out_release_crit_edge, %land.lhs.true201.out_release_crit_edge, %if.then188, %do.body176, %land.end170.out_release_crit_edge, %if.then111, %do.body99, %land.end93.out_release_crit_edge, %if.end55.out_release_crit_edge, %if.then53, %do.body, %land.end41.out_release_crit_edge
  %poll_mp.0.off0 = phi i1 [ false, %if.then53 ], [ false, %land.end41.out_release_crit_edge ], [ true, %if.then111 ], [ true, %land.end93.out_release_crit_edge ], [ true, %if.then188 ], [ true, %land.end170.out_release_crit_edge ], [ false, %if.then277 ], [ false, %land.end259.out_release_crit_edge ], [ true, %land.lhs.true201.out_release_crit_edge ], [ false, %do.body ], [ true, %do.body99 ], [ true, %do.body176 ], [ true, %if.end55.out_release_crit_edge ], [ false, %do.body265 ]
  %ret.0.shrunk = phi i1 [ false, %if.then53 ], [ true, %land.end41.out_release_crit_edge ], [ false, %if.then111 ], [ true, %land.end93.out_release_crit_edge ], [ false, %if.then188 ], [ true, %land.end170.out_release_crit_edge ], [ false, %if.then277 ], [ true, %land.end259.out_release_crit_edge ], [ false, %land.lhs.true201.out_release_crit_edge ], [ false, %do.body ], [ false, %do.body99 ], [ false, %do.body176 ], [ false, %if.end55.out_release_crit_edge ], [ false, %do.body265 ]
  call void @mutex_unlock(ptr noundef %sync.i) #8
  %brmerge372.not = and i1 %poll_mp.0.off0, %ret.0.shrunk
  %and291 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and291)
  %tobool292.not = icmp eq i32 %and291, 0
  %or.cond373 = select i1 %brmerge372.not, i1 %tobool292.not, i1 false
  %and294 = and i32 %2, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and294)
  %tobool295.not = icmp eq i32 %and294, 0
  %or.cond374 = select i1 %or.cond373, i1 %tobool295.not, i1 false
  br i1 %or.cond374, label %if.then296, label %out_release.if.end297_crit_edge

out_release.if.end297_crit_edge:                  ; preds = %out_release
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end297

if.then296:                                       ; preds = %out_release
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @wiimote_init_poll_mp(ptr noundef %wdata)
  br label %if.end297

if.end297:                                        ; preds = %if.then296, %out_release.if.end297_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data) #8
  ret i1 %ret.0.shrunk
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wiimote_init_hotplug(ptr noundef %wdata) unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca [2 x i8], align 1
  %wmem.i251 = alloca i8, align 1
  %wmem.i221 = alloca i8, align 1
  %wmem.i = alloca i8, align 1
  %extdata = alloca [6 x i8], align 1
  %mpdata = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %extdata) #8
  %0 = call ptr @memset(ptr %extdata, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mpdata) #8
  %1 = getelementptr inbounds [6 x i8], ptr %mpdata, i32 0, i32 5
  %2 = call ptr @memset(ptr %mpdata, i32 255, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wiimote_init_hotplug.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wiimote_init_hotplug, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !273

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wdata, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %4, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wiimote_init_hotplug.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.85) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sync.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 7
  tail call void @mutex_lock_nested(ptr noundef %sync.i, i32 noundef 0) #8
  %state = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13
  tail call void @_raw_spin_lock_irq(ptr noundef %state) #8
  %flags4 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %5 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags4, align 4
  %and9 = and i32 %6, -9217
  store i32 %and9, ptr %flags4, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %state) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wmem.i) #8
  %7 = ptrtoint ptr %wmem.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 85, ptr %wmem.i, align 1
  %call.i = call i32 @wiimote_cmd_write(ptr noundef %wdata, i32 noundef 10748144, ptr noundef nonnull %wmem.i, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.wiimote_cmd_init_ext.exit_crit_edge

do.end.wiimote_cmd_init_ext.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiimote_cmd_init_ext.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %wmem.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %wmem.i, align 1
  %call1.i = call i32 @wiimote_cmd_write(ptr noundef %wdata, i32 noundef 10748155, ptr noundef nonnull %wmem.i, i8 noundef zeroext 1) #8
  br label %wiimote_cmd_init_ext.exit

wiimote_cmd_init_ext.exit:                        ; preds = %if.end.i, %do.end.wiimote_cmd_init_ext.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wmem.i) #8
  %and13 = and i32 %6, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else, label %wiimote_cmd_init_ext.exit.if.end19_crit_edge

wiimote_cmd_init_ext.exit.if.end19_crit_edge:     ; preds = %wiimote_cmd_init_ext.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.else:                                          ; preds = %wiimote_cmd_init_ext.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wmem.i221) #8
  %9 = ptrtoint ptr %wmem.i221 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 85, ptr %wmem.i221, align 1
  %call.i222 = call i32 @wiimote_cmd_write(ptr noundef %wdata, i32 noundef 10879216, ptr noundef nonnull %wmem.i221, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i222)
  %tobool.not.i223 = icmp eq i32 %call.i222, 0
  br i1 %tobool.not.i223, label %if.end.i225, label %if.else.wiimote_cmd_init_mp.exit_crit_edge

if.else.wiimote_cmd_init_mp.exit_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiimote_cmd_init_mp.exit

if.end.i225:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %wmem.i221 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %wmem.i221, align 1
  %call1.i224 = call i32 @wiimote_cmd_write(ptr noundef %wdata, i32 noundef 10879227, ptr noundef nonnull %wmem.i221, i8 noundef zeroext 1) #8
  br label %wiimote_cmd_init_mp.exit

wiimote_cmd_init_mp.exit:                         ; preds = %if.end.i225, %if.else.wiimote_cmd_init_mp.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wmem.i221) #8
  %call.i226 = call i32 @wiimote_cmd_read(ptr noundef %wdata, i32 noundef 10879226, ptr noundef nonnull %mpdata, i8 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i226)
  %cmp.not.i = icmp eq i32 %call.i226, 6
  br i1 %cmp.not.i, label %do.body.i, label %wiimote_cmd_init_mp.exit.if.end19_crit_edge

wiimote_cmd_init_mp.exit.if.end19_crit_edge:      ; preds = %wiimote_cmd_init_mp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.body.i:                                        ; preds = %wiimote_cmd_init_mp.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wiimote_cmd_read_mp.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wiimote_init_hotplug, %if.then4.i)) #8
          to label %do.end.i [label %if.then4.i], !srcloc !273

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wdata, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %12, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wiimote_cmd_read_mp.__UNIQUE_ID_ddebug224, ptr noundef %dev.i, ptr noundef nonnull @.str.82, ptr noundef nonnull %mpdata) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then4.i, %do.body.i
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %14)
  %cmp6.i = icmp eq i8 %14, 5
  br i1 %cmp6.i, label %do.end.i.if.end19_crit_edge, label %do.end12.i

do.end.i.if.end19_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.end12.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wdata, align 4
  %dev14.i = getelementptr inbounds %struct.hid_device, ptr %16, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev14.i, ptr noundef nonnull @.str.83, ptr noundef nonnull %mpdata) #11
  br label %if.end19

if.end19:                                         ; preds = %do.end12.i, %do.end.i.if.end19_crit_edge, %wiimote_cmd_init_mp.exit.if.end19_crit_edge, %wiimote_cmd_init_ext.exit.if.end19_crit_edge
  %mp.0.off0 = phi i1 [ false, %wiimote_cmd_init_ext.exit.if.end19_crit_edge ], [ false, %do.end12.i ], [ false, %wiimote_cmd_init_mp.exit.if.end19_crit_edge ], [ true, %do.end.i.if.end19_crit_edge ]
  %call21 = call fastcc zeroext i8 @wiimote_cmd_read_ext(ptr noundef %wdata, ptr noundef nonnull %extdata)
  call void @mutex_unlock(ptr noundef %sync.i) #8
  %conv = zext i8 %call21 to i32
  %exttype23 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 5
  %17 = ptrtoint ptr %exttype23 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %exttype23, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %call21, i8 %18)
  %cmp.not = icmp eq i8 %call21, %18
  br i1 %cmp.not, label %if.end19.if.end57_crit_edge, label %if.then26

if.end19.if.end57_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then26:                                        ; preds = %if.end19
  %idxprom.i = zext i8 %18 to i32
  %arrayidx.i229 = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i
  %19 = ptrtoint ptr %arrayidx.i229 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i229, align 4
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %21 = ptrtoint ptr %exttype23 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %exttype23, align 4
  %22 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags4, align 4
  %and.i = and i32 %23, -513
  store i32 %and.i, ptr %flags4, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call3.i) #8
  %remove.i = getelementptr inbounds %struct.wiimod_ops, ptr %20, i32 0, i32 3
  %24 = ptrtoint ptr %remove.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %remove.i, align 4
  %tobool.not.i230 = icmp eq ptr %25, null
  br i1 %tobool.not.i230, label %if.then26.wiimote_ext_unload.exit_crit_edge, label %if.then.i

if.then26.wiimote_ext_unload.exit_crit_edge:      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiimote_ext_unload.exit

if.then.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  call void %25(ptr noundef %20, ptr noundef %wdata) #8
  br label %wiimote_ext_unload.exit

wiimote_ext_unload.exit:                          ; preds = %if.then.i, %if.then26.wiimote_ext_unload.exit_crit_edge
  %26 = zext i8 %call21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.128)
  switch i8 %call21, label %do.end51 [
    i8 1, label %do.end33
    i8 0, label %if.then41
  ]

do.end33:                                         ; preds = %wiimote_ext_unload.exit
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wdata, align 4
  %dev35 = getelementptr inbounds %struct.hid_device, ptr %28, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev35, ptr noundef nonnull @.str.86, ptr noundef nonnull %extdata) #11
  br label %if.end57

if.then41:                                        ; preds = %wiimote_ext_unload.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_lock_irq(ptr noundef %state) #8
  %29 = ptrtoint ptr %exttype23 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %exttype23, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %state) #8
  br label %if.end57

do.end51:                                         ; preds = %wiimote_ext_unload.exit
  %30 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wdata, align 4
  %dev53 = getelementptr inbounds %struct.hid_device, ptr %31, i32 0, i32 18
  %arrayidx = getelementptr [8 x ptr], ptr @wiimote_exttype_names, i32 0, i32 %conv
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev53, ptr noundef nonnull @.str.88, ptr noundef %33) #11
  %arrayidx.i232 = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %conv
  %34 = ptrtoint ptr %arrayidx.i232 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i232, align 4
  %probe.i = getelementptr inbounds %struct.wiimod_ops, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %probe.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %probe.i, align 4
  %tobool.not.i233 = icmp eq ptr %37, null
  br i1 %tobool.not.i233, label %do.end51.wiimote_ext_load.exit_crit_edge, label %if.then.i235

do.end51.wiimote_ext_load.exit_crit_edge:         ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiimote_ext_load.exit

if.then.i235:                                     ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  %call.i234 = call i32 %37(ptr noundef %35, ptr noundef %wdata) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234)
  %tobool2.not.i = icmp eq i32 %call.i234, 0
  %spec.select.i = select i1 %tobool2.not.i, i8 %call21, i8 1
  br label %wiimote_ext_load.exit

wiimote_ext_load.exit:                            ; preds = %if.then.i235, %do.end51.wiimote_ext_load.exit_crit_edge
  %ext.addr.0.i = phi i8 [ %call21, %do.end51.wiimote_ext_load.exit_crit_edge ], [ %spec.select.i, %if.then.i235 ]
  %call7.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %38 = ptrtoint ptr %exttype23 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %ext.addr.0.i, ptr %exttype23, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call7.i) #8
  br label %if.end57

if.end57:                                         ; preds = %wiimote_ext_load.exit, %if.then41, %do.end33, %if.end19.if.end57_crit_edge
  %mp61 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 6
  %39 = ptrtoint ptr %mp61 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mp61, align 1
  br i1 %mp.0.off0, label %if.then59, label %if.else70

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool62.not = icmp eq i8 %40, 0
  br i1 %tobool62.not, label %do.end66, label %if.then59.if.end76_crit_edge

if.then59.if.end76_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

do.end66:                                         ; preds = %if.then59
  %41 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wdata, align 4
  %dev68 = getelementptr inbounds %struct.hid_device, ptr %42, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev68, ptr noundef nonnull @.str.79) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.wiimod_ops, ptr @wiimod_mp, i32 0, i32 2) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.wiimod_ops, ptr @wiimod_mp, i32 0, i32 2), align 4
  %tobool.not.i238 = icmp eq ptr %43, null
  br i1 %tobool.not.i238, label %do.end66.wiimote_mp_load.exit_crit_edge, label %if.then.i242

do.end66.wiimote_mp_load.exit_crit_edge:          ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiimote_mp_load.exit

if.then.i242:                                     ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #10
  %call.i239 = call i32 %43(ptr noundef nonnull @wiimod_mp, ptr noundef %wdata) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i239)
  %tobool2.not.i240 = icmp eq i32 %call.i239, 0
  %spec.select.i241 = select i1 %tobool2.not.i240, i8 2, i8 1
  br label %wiimote_mp_load.exit

wiimote_mp_load.exit:                             ; preds = %if.then.i242, %do.end66.wiimote_mp_load.exit_crit_edge
  %mode.0.i = phi i8 [ 2, %do.end66.wiimote_mp_load.exit_crit_edge ], [ %spec.select.i241, %if.then.i242 ]
  %call7.i244 = call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %44 = ptrtoint ptr %mp61 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %mode.0.i, ptr %mp61, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call7.i244) #8
  br label %if.end76

if.else70:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %40)
  %switch = icmp ult i8 %40, 2
  br i1 %switch, label %if.else70.if.else85_crit_edge, label %if.end.i249

if.else70.if.else85_crit_edge:                    ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else85

if.end.i249:                                      ; preds = %if.else70
  %call6.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %45 = ptrtoint ptr %mp61 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %mp61, align 1
  %46 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags4, align 4
  %and.i247 = and i32 %47, -4097
  store i32 %and.i247, ptr %flags4, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call6.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.wiimod_ops, ptr @wiimod_mp, i32 0, i32 3) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.wiimod_ops, ptr @wiimod_mp, i32 0, i32 3), align 4
  %tobool.not.i248 = icmp eq ptr %48, null
  br i1 %tobool.not.i248, label %if.end.i249.if.else85_crit_edge, label %if.then15.i

if.end.i249.if.else85_crit_edge:                  ; preds = %if.end.i249
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else85

if.then15.i:                                      ; preds = %if.end.i249
  call void @__sanitizer_cov_trace_pc() #10
  call void %48(ptr noundef nonnull @wiimod_mp, ptr noundef %wdata) #8
  br label %if.else85

if.end76:                                         ; preds = %wiimote_mp_load.exit, %if.then59.if.end76_crit_edge
  %and77 = and i32 %6, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp ne i32 %and77, 0
  %spec.select = and i1 %tobool78.not, %mp.0.off0
  br i1 %spec.select, label %if.then82, label %if.end76.if.else85_crit_edge

if.end76.if.else85_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else85

if.then82:                                        ; preds = %if.end76
  call void @mutex_lock_nested(ptr noundef %sync.i, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wmem.i251) #8
  %49 = zext i8 %call21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.129)
  switch i8 %call21, label %sw.default.i [
    i8 3, label %if.then82.sw.bb.i_crit_edge
    i8 6, label %if.then82.sw.bb.i_crit_edge259
    i8 7, label %if.then82.sw.bb.i_crit_edge260
    i8 2, label %sw.bb1.i
  ]

if.then82.sw.bb.i_crit_edge260:                   ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.then82.sw.bb.i_crit_edge259:                   ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.then82.sw.bb.i_crit_edge:                      ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then82.sw.bb.i_crit_edge, %if.then82.sw.bb.i_crit_edge259, %if.then82.sw.bb.i_crit_edge260
  %50 = ptrtoint ptr %wmem.i251 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 7, ptr %wmem.i251, align 1
  br label %wiimote_cmd_map_mp.exit

sw.bb1.i:                                         ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %wmem.i251 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 5, ptr %wmem.i251, align 1
  br label %wiimote_cmd_map_mp.exit

sw.default.i:                                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %wmem.i251 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 4, ptr %wmem.i251, align 1
  br label %wiimote_cmd_map_mp.exit

wiimote_cmd_map_mp.exit:                          ; preds = %sw.default.i, %sw.bb1.i, %sw.bb.i
  %call.i252 = call i32 @wiimote_cmd_write(ptr noundef %wdata, i32 noundef 10879230, ptr noundef nonnull %wmem.i251, i8 noundef zeroext 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wmem.i251) #8
  call void @mutex_unlock(ptr noundef %sync.i) #8
  %timer = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 9
  %call84 = call i32 @del_timer_sync(ptr noundef %timer) #8
  call void @_raw_spin_lock_irq(ptr noundef %state) #8
  %53 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags4, align 4
  %or = or i32 %54, 8192
  %55 = ptrtoint ptr %exttype23 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %exttype23, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp104 = icmp eq i8 %56, 0
  br i1 %cmp104, label %if.then106, label %if.else113

if.else85:                                        ; preds = %if.end76.if.else85_crit_edge, %if.then15.i, %if.end.i249.if.else85_crit_edge, %if.else70.if.else85_crit_edge
  %and86 = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp ne i32 %and86, 0
  %tobool14.not.not = xor i1 %tobool14.not, true
  %brmerge = select i1 %tobool87.not, i1 true, i1 %tobool14.not.not
  br i1 %brmerge, label %if.else85.if.else124_crit_edge, label %if.then90

if.else85.if.else124_crit_edge:                   ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else124

if.then90:                                        ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #10
  %timer91 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %57, 400
  %call92 = call i32 @mod_timer(ptr noundef %timer91, i32 noundef %add) #8
  br label %if.else124

if.then106:                                       ; preds = %wiimote_cmd_map_mp.exit
  call void @__sanitizer_cov_trace_pc() #10
  %and112 = and i32 %or, -2305
  br label %if.end135.sink.split

if.else113:                                       ; preds = %wiimote_cmd_map_mp.exit
  call void @__sanitizer_cov_trace_pc() #10
  %and116 = and i32 %or, -3329
  %or122 = or i32 %and116, 3072
  br label %if.end135.sink.split

if.else124:                                       ; preds = %if.then90, %if.else85.if.else124_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %state) #8
  %58 = ptrtoint ptr %exttype23 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %exttype23, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp128.not = icmp eq i8 %59, 0
  br i1 %cmp128.not, label %if.else124.if.end135_crit_edge, label %if.then130

if.else124.if.end135_crit_edge:                   ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

if.then130:                                       ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags4, align 4
  %or133 = or i32 %61, 1024
  br label %if.end135.sink.split

if.end135.sink.split:                             ; preds = %if.then130, %if.else113, %if.then106
  %or133.sink = phi i32 [ %or133, %if.then130 ], [ %and112, %if.then106 ], [ %or122, %if.else113 ]
  %62 = ptrtoint ptr %flags4 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or133.sink, ptr %flags4, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.end135.sink.split, %if.else124.if.end135_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd.i) #8
  %63 = getelementptr inbounds [2 x i8], ptr %cmd.i, i32 0, i32 1
  %64 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 21, ptr %cmd.i, align 1
  %65 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags4, align 4
  %67 = trunc i32 %66 to i8
  %68 = lshr i8 %67, 4
  %69 = and i8 %68, 1
  %70 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %63, align 1
  call fastcc void @wiimote_queue(ptr noundef %wdata, ptr noundef nonnull %cmd.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i) #8
  call void @_raw_spin_unlock_irq(ptr noundef %state) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wiimote_init_hotplug.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wiimote_init_hotplug, %if.then150)) #8
          to label %do.end161 [label %if.then150], !srcloc !273

if.then150:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %wdata, align 4
  %dev152 = getelementptr inbounds %struct.hid_device, ptr %72, i32 0, i32 18
  %mp154 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 6
  %73 = ptrtoint ptr %mp154 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %mp154, align 1
  %conv155 = zext i8 %74 to i32
  %75 = ptrtoint ptr %exttype23 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %exttype23, align 4
  %conv158 = zext i8 %76 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wiimote_init_hotplug.__UNIQUE_ID_ddebug231, ptr noundef %dev152, ptr noundef nonnull @.str.92, i32 noundef %conv155, i32 noundef %conv158) #8
  br label %do.end161

do.end161:                                        ; preds = %if.then150, %if.end135
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mpdata) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %extdata) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @wiimote_cmd_read_ext(ptr noundef %wdata, ptr noundef %rmem) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wiimote_cmd_read(ptr noundef %wdata, i32 noundef 10748154, ptr noundef %rmem, i8 noundef zeroext 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call)
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wiimote_cmd_read_ext.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wiimote_cmd_read_ext, %if.then4)) #8
          to label %do.end [label %if.then4], !srcloc !273

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdata, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wiimote_cmd_read_ext.__UNIQUE_ID_ddebug223, ptr noundef %dev, ptr noundef nonnull @.str.48, ptr noundef %rmem) #8
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %2 = ptrtoint ptr %rmem to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rmem, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp6 = icmp eq i8 %3, -1
  br i1 %cmp6, label %land.lhs.true, label %do.end.if.end33_crit_edge

do.end.if.end33_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

land.lhs.true:                                    ; preds = %do.end
  %arrayidx8 = getelementptr i8, ptr %rmem, i32 1
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp10 = icmp eq i8 %5, -1
  br i1 %cmp10, label %land.lhs.true12, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

land.lhs.true12:                                  ; preds = %land.lhs.true
  %arrayidx13 = getelementptr i8, ptr %rmem, i32 2
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp15 = icmp eq i8 %7, -1
  br i1 %cmp15, label %land.lhs.true17, label %land.lhs.true12.if.end33_crit_edge

land.lhs.true12.if.end33_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

land.lhs.true17:                                  ; preds = %land.lhs.true12
  %arrayidx18 = getelementptr i8, ptr %rmem, i32 3
  %8 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp20 = icmp eq i8 %9, -1
  br i1 %cmp20, label %land.lhs.true22, label %land.lhs.true17.if.end33_crit_edge

land.lhs.true17.if.end33_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

land.lhs.true22:                                  ; preds = %land.lhs.true17
  %arrayidx23 = getelementptr i8, ptr %rmem, i32 4
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp25 = icmp eq i8 %11, -1
  br i1 %cmp25, label %land.lhs.true27, label %land.lhs.true22.if.end33_crit_edge

land.lhs.true22.if.end33_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

land.lhs.true27:                                  ; preds = %land.lhs.true22
  %arrayidx28 = getelementptr i8, ptr %rmem, i32 5
  %12 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp30 = icmp eq i8 %13, -1
  br i1 %cmp30, label %land.lhs.true27.cleanup_crit_edge, label %land.lhs.true27.if.end33_crit_edge

land.lhs.true27.if.end33_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

land.lhs.true27.cleanup_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33:                                         ; preds = %land.lhs.true27.if.end33_crit_edge, %land.lhs.true22.if.end33_crit_edge, %land.lhs.true17.if.end33_crit_edge, %land.lhs.true12.if.end33_crit_edge, %land.lhs.true.if.end33_crit_edge, %do.end.if.end33_crit_edge
  %arrayidx34 = getelementptr i8, ptr %rmem, i32 4
  %14 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx34, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.130)
  switch i8 %15, label %if.end33.if.end77_crit_edge [
    i8 0, label %land.lhs.true38
    i8 1, label %land.lhs.true49
    i8 4, label %land.lhs.true60
  ]

if.end33.if.end77_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

land.lhs.true38:                                  ; preds = %if.end33
  %arrayidx39 = getelementptr i8, ptr %rmem, i32 5
  %17 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp41 = icmp eq i8 %18, 0
  br i1 %cmp41, label %land.lhs.true38.cleanup_crit_edge, label %land.lhs.true38.if.end77_crit_edge

land.lhs.true38.if.end77_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

land.lhs.true38.cleanup_crit_edge:                ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true49:                                  ; preds = %if.end33
  %arrayidx50 = getelementptr i8, ptr %rmem, i32 5
  %19 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp52 = icmp eq i8 %20, 1
  br i1 %cmp52, label %land.lhs.true49.cleanup_crit_edge, label %land.lhs.true71

land.lhs.true49.cleanup_crit_edge:                ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true60:                                  ; preds = %if.end33
  %arrayidx61 = getelementptr i8, ptr %rmem, i32 5
  %21 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp63 = icmp eq i8 %22, 2
  br i1 %cmp63, label %land.lhs.true60.cleanup_crit_edge, label %land.lhs.true60.if.end77_crit_edge

land.lhs.true60.if.end77_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

land.lhs.true60.cleanup_crit_edge:                ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true71:                                  ; preds = %land.lhs.true49
  %23 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %24)
  %cmp74 = icmp eq i8 %24, 32
  br i1 %cmp74, label %land.lhs.true71.cleanup_crit_edge, label %land.lhs.true71.if.end77_crit_edge

land.lhs.true71.if.end77_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

land.lhs.true71.cleanup_crit_edge:                ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end77:                                         ; preds = %land.lhs.true71.if.end77_crit_edge, %land.lhs.true60.if.end77_crit_edge, %land.lhs.true38.if.end77_crit_edge, %if.end33.if.end77_crit_edge
  %cmp47146150152 = phi i1 [ false, %land.lhs.true71.if.end77_crit_edge ], [ true, %land.lhs.true38.if.end77_crit_edge ], [ true, %land.lhs.true60.if.end77_crit_edge ], [ true, %if.end33.if.end77_crit_edge ]
  %25 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.131)
  switch i8 %3, label %if.end77.if.end119_crit_edge [
    i8 1, label %land.lhs.true82
    i8 0, label %land.lhs.true103
  ]

if.end77.if.end119_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

land.lhs.true82:                                  ; preds = %if.end77
  %arrayidx83 = getelementptr i8, ptr %rmem, i32 1
  %26 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx83, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp85 = icmp ne i8 %27, 0
  %brmerge = or i1 %cmp47146150152, %cmp85
  br i1 %brmerge, label %land.lhs.true82.if.end119_crit_edge, label %land.lhs.true92

land.lhs.true82.if.end119_crit_edge:              ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

land.lhs.true92:                                  ; preds = %land.lhs.true82
  %arrayidx93 = getelementptr i8, ptr %rmem, i32 5
  %28 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx93, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %29)
  %cmp95 = icmp eq i8 %29, 3
  br i1 %cmp95, label %land.lhs.true92.cleanup_crit_edge, label %land.lhs.true92.if.end119_crit_edge

land.lhs.true92.if.end119_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

land.lhs.true92.cleanup_crit_edge:                ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true103:                                 ; preds = %if.end77
  %arrayidx104 = getelementptr i8, ptr %rmem, i32 1
  %30 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx104, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp106 = icmp ne i8 %31, 0
  %brmerge159 = or i1 %cmp47146150152, %cmp106
  br i1 %brmerge159, label %land.lhs.true103.if.end119_crit_edge, label %land.lhs.true113

land.lhs.true103.if.end119_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

land.lhs.true113:                                 ; preds = %land.lhs.true103
  %arrayidx114 = getelementptr i8, ptr %rmem, i32 5
  %32 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx114, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %33)
  %cmp116 = icmp eq i8 %33, 3
  br i1 %cmp116, label %land.lhs.true113.cleanup_crit_edge, label %land.lhs.true113.if.end119_crit_edge

land.lhs.true113.if.end119_crit_edge:             ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

land.lhs.true113.cleanup_crit_edge:               ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end119:                                        ; preds = %land.lhs.true113.if.end119_crit_edge, %land.lhs.true103.if.end119_crit_edge, %land.lhs.true92.if.end119_crit_edge, %land.lhs.true82.if.end119_crit_edge, %if.end77.if.end119_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end119, %land.lhs.true113.cleanup_crit_edge, %land.lhs.true92.cleanup_crit_edge, %land.lhs.true71.cleanup_crit_edge, %land.lhs.true60.cleanup_crit_edge, %land.lhs.true49.cleanup_crit_edge, %land.lhs.true38.cleanup_crit_edge, %land.lhs.true27.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %if.end119 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true27.cleanup_crit_edge ], [ 2, %land.lhs.true38.cleanup_crit_edge ], [ 3, %land.lhs.true49.cleanup_crit_edge ], [ 4, %land.lhs.true60.cleanup_crit_edge ], [ 5, %land.lhs.true71.cleanup_crit_edge ], [ 6, %land.lhs.true92.cleanup_crit_edge ], [ 7, %land.lhs.true113.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @wiimote_cmd_read_mp_mapped(ptr noundef %wdata) unnamed_addr #0 align 64 {
entry:
  %rmem = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %rmem) #8
  %0 = getelementptr inbounds [6 x i8], ptr %rmem, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %rmem, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %rmem, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %rmem, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %rmem, i32 0, i32 5
  %5 = call ptr @memset(ptr %rmem, i32 255, i32 6)
  %call = call i32 @wiimote_cmd_read(ptr noundef %wdata, i32 noundef 10748154, ptr noundef nonnull %rmem, i8 noundef zeroext 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call)
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wiimote_cmd_read_mp_mapped.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wiimote_cmd_read_mp_mapped, %if.then4)) #8
          to label %do.end [label %if.then4], !srcloc !273

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wdata, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %7, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wiimote_cmd_read_mp_mapped.__UNIQUE_ID_ddebug225, ptr noundef %dev, ptr noundef nonnull @.str.78, ptr noundef nonnull %rmem) #8
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %8 = ptrtoint ptr %rmem to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rmem, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp7 = icmp eq i8 %9, -1
  br i1 %cmp7, label %land.lhs.true, label %do.end.if.end34thread-pre-split_crit_edge

do.end.if.end34thread-pre-split_crit_edge:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34thread-pre-split

land.lhs.true:                                    ; preds = %do.end
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp11 = icmp eq i8 %11, -1
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true.if.end34thread-pre-split_crit_edge

land.lhs.true.if.end34thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34thread-pre-split

land.lhs.true13:                                  ; preds = %land.lhs.true
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp16 = icmp eq i8 %13, -1
  br i1 %cmp16, label %land.lhs.true18, label %land.lhs.true13.if.end34thread-pre-split_crit_edge

land.lhs.true13.if.end34thread-pre-split_crit_edge: ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34thread-pre-split

land.lhs.true18:                                  ; preds = %land.lhs.true13
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp21 = icmp eq i8 %15, -1
  br i1 %cmp21, label %land.lhs.true23, label %land.lhs.true18.if.end34thread-pre-split_crit_edge

land.lhs.true18.if.end34thread-pre-split_crit_edge: ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34thread-pre-split

land.lhs.true23:                                  ; preds = %land.lhs.true18
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp26 = icmp eq i8 %17, -1
  br i1 %cmp26, label %land.lhs.true28, label %land.lhs.true23.if.end34_crit_edge

land.lhs.true23.if.end34_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

land.lhs.true28:                                  ; preds = %land.lhs.true23
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp31 = icmp eq i8 %19, -1
  br i1 %cmp31, label %land.lhs.true28.cleanup_crit_edge, label %land.lhs.true28.if.end68_crit_edge

land.lhs.true28.if.end68_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34thread-pre-split:                         ; preds = %land.lhs.true18.if.end34thread-pre-split_crit_edge, %land.lhs.true13.if.end34thread-pre-split_crit_edge, %land.lhs.true.if.end34thread-pre-split_crit_edge, %do.end.if.end34thread-pre-split_crit_edge
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %.pr = load i8, ptr %3, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.end34thread-pre-split, %land.lhs.true23.if.end34_crit_edge
  %21 = phi i8 [ %.pr, %if.end34thread-pre-split ], [ %17, %land.lhs.true23.if.end34_crit_edge ]
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.132)
  switch i8 %21, label %if.end34.if.end68_crit_edge [
    i8 4, label %land.lhs.true39
    i8 5, label %land.lhs.true49
    i8 7, label %land.lhs.true60
  ]

if.end34.if.end68_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

land.lhs.true39:                                  ; preds = %if.end34
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %24)
  %cmp42 = icmp eq i8 %24, 5
  br i1 %cmp42, label %land.lhs.true39.cleanup_crit_edge, label %land.lhs.true39.if.end68_crit_edge

land.lhs.true39.if.end68_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

land.lhs.true39.cleanup_crit_edge:                ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true49:                                  ; preds = %if.end34
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %26)
  %cmp52 = icmp eq i8 %26, 5
  br i1 %cmp52, label %land.lhs.true49.cleanup_crit_edge, label %land.lhs.true49.if.end68_crit_edge

land.lhs.true49.if.end68_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

land.lhs.true49.cleanup_crit_edge:                ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true60:                                  ; preds = %if.end34
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %28)
  %cmp63 = icmp eq i8 %28, 5
  br i1 %cmp63, label %land.lhs.true60.cleanup_crit_edge, label %land.lhs.true60.if.end68_crit_edge

land.lhs.true60.if.end68_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

land.lhs.true60.cleanup_crit_edge:                ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end68:                                         ; preds = %land.lhs.true60.if.end68_crit_edge, %land.lhs.true49.if.end68_crit_edge, %land.lhs.true39.if.end68_crit_edge, %if.end34.if.end68_crit_edge, %land.lhs.true28.if.end68_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %land.lhs.true60.cleanup_crit_edge, %land.lhs.true49.cleanup_crit_edge, %land.lhs.true39.cleanup_crit_edge, %land.lhs.true28.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %if.end68 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true28.cleanup_crit_edge ], [ 2, %land.lhs.true39.cleanup_crit_edge ], [ 3, %land.lhs.true49.cleanup_crit_edge ], [ 4, %land.lhs.true60.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %rmem) #8
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wiimote_init_poll_mp(ptr noundef %wdata) unnamed_addr #0 align 64 {
entry:
  %wmem.i = alloca i8, align 1
  %mpdata = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mpdata) #8
  %0 = getelementptr inbounds [6 x i8], ptr %mpdata, i32 0, i32 5
  %sync.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 7
  %1 = call ptr @memset(ptr %mpdata, i32 255, i32 6)
  tail call void @mutex_lock_nested(ptr noundef %sync.i, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wmem.i) #8
  %2 = ptrtoint ptr %wmem.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 85, ptr %wmem.i, align 1
  %call.i = call i32 @wiimote_cmd_write(ptr noundef %wdata, i32 noundef 10879216, ptr noundef nonnull %wmem.i, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.wiimote_cmd_init_mp.exit_crit_edge

entry.wiimote_cmd_init_mp.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiimote_cmd_init_mp.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %wmem.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %wmem.i, align 1
  %call1.i = call i32 @wiimote_cmd_write(ptr noundef %wdata, i32 noundef 10879227, ptr noundef nonnull %wmem.i, i8 noundef zeroext 1) #8
  br label %wiimote_cmd_init_mp.exit

wiimote_cmd_init_mp.exit:                         ; preds = %if.end.i, %entry.wiimote_cmd_init_mp.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wmem.i) #8
  %call.i21 = call i32 @wiimote_cmd_read(ptr noundef %wdata, i32 noundef 10879226, ptr noundef nonnull %mpdata, i8 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i21)
  %cmp.not.i = icmp eq i32 %call.i21, 6
  br i1 %cmp.not.i, label %do.body.i, label %wiimote_cmd_init_mp.exit.if.else_crit_edge

wiimote_cmd_init_mp.exit.if.else_crit_edge:       ; preds = %wiimote_cmd_init_mp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

do.body.i:                                        ; preds = %wiimote_cmd_init_mp.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wiimote_cmd_read_mp.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wiimote_init_poll_mp, %if.then4.i)) #8
          to label %do.end.i [label %if.then4.i], !srcloc !273

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wdata, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %5, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wiimote_cmd_read_mp.__UNIQUE_ID_ddebug224, ptr noundef %dev.i, ptr noundef nonnull @.str.82, ptr noundef nonnull %mpdata) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then4.i, %do.body.i
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %cmp6.i = icmp eq i8 %7, 5
  br i1 %cmp6.i, label %if.then, label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wdata, align 4
  %dev14.i = getelementptr inbounds %struct.hid_device, ptr %9, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev14.i, ptr noundef nonnull @.str.83, ptr noundef nonnull %mpdata) #11
  br label %if.else

if.then:                                          ; preds = %do.end.i
  call void @mutex_unlock(ptr noundef %sync.i) #8
  %mp2 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 6
  %10 = ptrtoint ptr %mp2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mp2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %do.end, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.end:                                           ; preds = %if.then
  %12 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wdata, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %13, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.79) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.wiimod_ops, ptr @wiimod_mp, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.wiimod_ops, ptr @wiimod_mp, i32 0, i32 2), align 4
  %tobool.not.i23 = icmp eq ptr %14, null
  br i1 %tobool.not.i23, label %do.end.wiimote_mp_load.exit_crit_edge, label %if.then.i

do.end.wiimote_mp_load.exit_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiimote_mp_load.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i24 = call i32 %14(ptr noundef nonnull @wiimod_mp, ptr noundef %wdata) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool2.not.i = icmp eq i32 %call.i24, 0
  %spec.select.i = select i1 %tobool2.not.i, i8 2, i8 1
  br label %wiimote_mp_load.exit

wiimote_mp_load.exit:                             ; preds = %if.then.i, %do.end.wiimote_mp_load.exit_crit_edge
  %mode.0.i = phi i8 [ 2, %do.end.wiimote_mp_load.exit_crit_edge ], [ %spec.select.i, %if.then.i ]
  %state.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13
  %call7.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %state.i) #8
  %15 = ptrtoint ptr %mp2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %mode.0.i, ptr %mp2, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %state.i, i32 noundef %call7.i) #8
  br label %if.end10

if.else:                                          ; preds = %do.end12.i, %wiimote_cmd_init_mp.exit.if.else_crit_edge
  call void @mutex_unlock(ptr noundef %sync.i) #8
  %mp6 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 6
  %16 = ptrtoint ptr %mp6 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mp6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %switch = icmp ult i8 %17, 2
  br i1 %switch, label %if.else.if.end10_crit_edge, label %if.end.i28

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end.i28:                                       ; preds = %if.else
  %state.i26 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13
  %call6.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %state.i26) #8
  %18 = ptrtoint ptr %mp6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %mp6, align 1
  %flags12.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %19 = ptrtoint ptr %flags12.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags12.i, align 4
  %and.i = and i32 %20, -4097
  store i32 %and.i, ptr %flags12.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %state.i26, i32 noundef %call6.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.wiimod_ops, ptr @wiimod_mp, i32 0, i32 3) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.wiimod_ops, ptr @wiimod_mp, i32 0, i32 3), align 4
  %tobool.not.i27 = icmp eq ptr %21, null
  br i1 %tobool.not.i27, label %if.end.i28.if.end10_crit_edge, label %if.then15.i

if.end.i28.if.end10_crit_edge:                    ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then15.i:                                      ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #10
  call void %21(ptr noundef nonnull @wiimod_mp, ptr noundef %wdata) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then15.i, %if.end.i28.if.end10_crit_edge, %if.else.if.end10_crit_edge, %wiimote_mp_load.exit, %if.then.if.end10_crit_edge
  %timer = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %22, 400
  %call11 = call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mpdata) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimote_ext_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %exttype = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 5
  %2 = ptrtoint ptr %exttype to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %exttype, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call4) #8
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.133)
  switch i8 %3, label %sw.default [
    i8 0, label %sw.bb
    i8 2, label %sw.bb12
    i8 3, label %sw.bb14
    i8 4, label %sw.bb16
    i8 5, label %sw.bb18
    i8 6, label %sw.bb20
    i8 7, label %sw.bb22
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.99, i32 6)
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = call ptr @memcpy(ptr %buf, ptr @.str.100, i32 9)
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = call ptr @memcpy(ptr %buf, ptr @.str.101, i32 9)
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.102, i32 14)
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.103, i32 15)
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = call ptr @memcpy(ptr %buf, ptr @.str.104, i32 7)
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 7454980706753710592, ptr %buf, align 1
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = call ptr @memcpy(ptr %buf, ptr @.str.106, i32 9)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb
  %retval.0 = phi i32 [ 8, %sw.default ], [ 7, %sw.bb22 ], [ 6, %sw.bb20 ], [ 14, %sw.bb18 ], [ 13, %sw.bb16 ], [ 8, %sw.bb14 ], [ 8, %sw.bb12 ], [ 5, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimote_ext_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.107) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state.i) #8
  %flags.i.i = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.wiimote_schedule.exit_crit_edge

if.then.wiimote_schedule.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiimote_schedule.exit

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %init_worker.i.i = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %init_worker.i.i) #8
  br label %wiimote_schedule.exit

wiimote_schedule.exit:                            ; preds = %if.then.i.i, %if.then.wiimote_schedule.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state.i, i32 noundef %call2.i) #8
  %call2 = tail call i32 @strnlen(ptr noundef %buf, i32 noundef 4096) #14
  br label %cleanup

cleanup:                                          ; preds = %wiimote_schedule.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %wiimote_schedule.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiimote_dev_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state) #8
  %devtype = getelementptr inbounds %struct.wiimote_data, ptr %1, i32 0, i32 13, i32 4
  %2 = ptrtoint ptr %devtype to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %devtype, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state, i32 noundef %call4) #8
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.134)
  switch i8 %3, label %sw.default [
    i8 2, label %sw.bb
    i8 3, label %sw.bb12
    i8 4, label %sw.bb14
    i8 5, label %sw.bb16
    i8 6, label %sw.bb18
    i8 0, label %sw.bb20
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.109, i32 9)
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = call ptr @memcpy(ptr %buf, ptr @.str.110, i32 7)
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = call ptr @memcpy(ptr %buf, ptr @.str.111, i32 7)
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.102, i32 14)
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.103, i32 15)
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = call ptr @memcpy(ptr %buf, ptr @.str.112, i32 9)
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = call ptr @memcpy(ptr %buf, ptr @.str.106, i32 9)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb
  %retval.0 = phi i32 [ 8, %sw.default ], [ 8, %sw.bb20 ], [ 14, %sw.bb18 ], [ 13, %sw.bb16 ], [ 6, %sw.bb14 ], [ 6, %sw.bb12 ], [ 8, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiidebug_deinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handler_status(ptr noundef %wdata, ptr noundef %payload) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @handler_status_K(ptr noundef %wdata, ptr noundef %payload)
  %arrayidx = getelementptr i8, ptr %payload, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %flags12 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %3 = ptrtoint ptr %flags12 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags12, align 4
  %and13 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool14.not, label %do.body, label %if.then.if.end46_crit_edge

if.then.if.end46_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handler_status.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handler_status, %if.then7)) #8
          to label %do.end [label %if.then7], !srcloc !273

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wdata, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %6, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handler_status.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.118) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %7 = ptrtoint ptr %flags12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags12, align 4
  %or = or i32 %8, 256
  store i32 %or, ptr %flags12, align 4
  %and.i = and i32 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.if.end46.sink.split_crit_edge, label %do.end.if.end46_crit_edge

do.end.if.end46_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

do.end.if.end46.sink.split_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.sink.split

if.else:                                          ; preds = %entry
  br i1 %tobool14.not, label %if.else.if.end46_crit_edge, label %do.body16

if.else.if.end46_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

do.body16:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handler_status.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handler_status, %if.then28)) #8
          to label %do.end32 [label %if.then28], !srcloc !273

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wdata, align 4
  %dev30 = getelementptr inbounds %struct.hid_device, ptr %10, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handler_status.__UNIQUE_ID_ddebug235, ptr noundef %dev30, ptr noundef nonnull @.str.119) #8
  br label %do.end32

do.end32:                                         ; preds = %if.then28, %do.body16
  %11 = ptrtoint ptr %flags12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags12, align 4
  %and44 = and i32 %12, -11521
  store i32 %and44, ptr %flags12, align 4
  %and.i72 = and i32 %12, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i72)
  %tobool.not.i73 = icmp eq i32 %and.i72, 0
  br i1 %tobool.not.i73, label %do.end32.if.end46.sink.split_crit_edge, label %do.end32.if.end46_crit_edge

do.end32.if.end46_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

do.end32.if.end46.sink.split_crit_edge:           ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.sink.split

if.end46.sink.split:                              ; preds = %do.end32.if.end46.sink.split_crit_edge, %do.end.if.end46.sink.split_crit_edge
  %init_worker.i74 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %13 = load ptr, ptr @system_wq, align 4
  %call.i.i.i75 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %init_worker.i74) #8
  br label %if.end46

if.end46:                                         ; preds = %if.end46.sink.split, %do.end32.if.end46_crit_edge, %if.else.if.end46_crit_edge, %do.end.if.end46_crit_edge, %if.then.if.end46_crit_edge
  %arrayidx47 = getelementptr i8, ptr %payload, i32 5
  %14 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx47, align 1
  %cmd_battery = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 11
  %16 = ptrtoint ptr %cmd_battery to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %cmd_battery, align 4
  %cmd1.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 9
  %17 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cmd1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %18)
  %cmp.i = icmp eq i32 %18, 21
  br i1 %cmp.i, label %wiimote_cmd_pending.exit, label %if.end46.if.end51_crit_edge

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

wiimote_cmd_pending.exit:                         ; preds = %if.end46
  %opt3.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 10
  %19 = ptrtoint ptr %opt3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %opt3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp4.i = icmp eq i32 %20, 0
  br i1 %cmp4.i, label %if.then50, label %wiimote_cmd_pending.exit.if.end51_crit_edge

wiimote_cmd_pending.exit.if.end51_crit_edge:      ; preds = %wiimote_cmd_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then50:                                        ; preds = %wiimote_cmd_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %cmd1.i, align 4
  %ready.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 8
  tail call void @complete(ptr noundef %ready.i) #8
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %wiimote_cmd_pending.exit.if.end51_crit_edge, %if.end46.if.end51_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handler_status_K(ptr noundef %wdata, ptr noundef %payload) #0 align 64 {
entry:
  %cmd.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %exttype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 5
  %0 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %exttype.i, align 4
  %idxprom.i = zext i8 %1 to i32
  %arrayidx.i = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %in_keys.i = getelementptr inbounds %struct.wiimod_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %in_keys.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_keys.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup.sink.split.i_crit_edge

entry.cleanup.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %entry
  %devtype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %6 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %devtype.i, align 1
  %idxprom3.i = zext i8 %7 to i32
  %arrayidx4.i = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom3.i
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %11)
  %cmp.not25.i = icmp eq i8 %11, 11
  br i1 %cmp.not25.i, label %if.end.i.handler_keys.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.handler_keys.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_keys.exit

for.cond.i:                                       ; preds = %for.body.i
  %incdec.ptr.i = getelementptr i8, ptr %iter.026.i, i32 1
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr.i, align 1
  %cmp.not.i = icmp eq i8 %13, 11
  br i1 %cmp.not.i, label %for.cond.i.handler_keys.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.handler_keys.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_keys.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %14 = phi i8 [ %13, %for.cond.i.for.body.i_crit_edge ], [ %11, %if.end.i.for.body.i_crit_edge ]
  %iter.026.i = phi ptr [ %incdec.ptr.i, %for.cond.i.for.body.i_crit_edge ], [ %9, %if.end.i.for.body.i_crit_edge ]
  %conv.i = zext i8 %14 to i32
  %arrayidx7.i = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx7.i, align 4
  %in_keys8.i = getelementptr inbounds %struct.wiimod_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %in_keys8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %in_keys8.i, align 4
  %tobool9.not.i = icmp eq ptr %18, null
  br i1 %tobool9.not.i, label %for.cond.i, label %for.body.i.cleanup.sink.split.i_crit_edge

for.body.i.cleanup.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.body.i.cleanup.sink.split.i_crit_edge, %entry.cleanup.sink.split.i_crit_edge
  %.lcssa.sink.i = phi ptr [ %5, %entry.cleanup.sink.split.i_crit_edge ], [ %18, %for.body.i.cleanup.sink.split.i_crit_edge ]
  tail call void %.lcssa.sink.i(ptr noundef %wdata, ptr noundef %payload) #8
  br label %handler_keys.exit

handler_keys.exit:                                ; preds = %cleanup.sink.split.i, %for.cond.i.handler_keys.exit_crit_edge, %if.end.i.handler_keys.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %cmd.i) #8
  %19 = getelementptr inbounds [3 x i8], ptr %cmd.i, i32 0, i32 1
  %20 = getelementptr inbounds [3 x i8], ptr %cmd.i, i32 0, i32 2
  %flags.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %22, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i2 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i2, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %handler_keys.exit
  call void @__sanitizer_cov_trace_pc() #10
  %drm2.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 3
  %23 = ptrtoint ptr %drm2.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %drm2.i, align 2
  br label %if.end5.i

if.else.i:                                        ; preds = %handler_keys.exit
  %25 = and i32 %22, 4608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %.not.i.i = icmp eq i32 %25, 0
  %devtype.i.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %26 = ptrtoint ptr %devtype.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %devtype.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %27)
  %cmp.i.i = icmp eq i8 %27, 5
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %..i.i = select i1 %.not.i.i, i8 48, i8 52
  br label %if.end5.i

if.end.i.i:                                       ; preds = %if.else.i
  %28 = trunc i32 %22 to i8
  %trunc.i.i = and i8 %28, -64
  %29 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.135)
  switch i8 %trunc.i.i, label %if.else33.i.i [
    i8 64, label %if.then16.i.i
    i8 -128, label %if.end.i.i.if.end5.i_crit_edge
    i8 -64, label %if.then32.i.i
  ]

if.end.i.i.if.end5.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then16.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %and19.i.i = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool20.not.i.i = icmp eq i32 %and19.i.i, 0
  %.56.i.i = select i1 %tobool20.not.i.i, i8 54, i8 55
  br label %if.end5.i

if.then32.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.else33.i.i:                                    ; preds = %if.end.i.i
  %and36.i.i = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i)
  %tobool37.not.i.i = icmp eq i32 %and36.i.i, 0
  br i1 %tobool37.not.i.i, label %if.else42.i.i, label %if.then38.i.i

if.then38.i.i:                                    ; preds = %if.else33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %.57.i.i = select i1 %.not.i.i, i8 49, i8 53
  br label %if.end5.i

if.else42.i.i:                                    ; preds = %if.else33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %.58.i.i = select i1 %.not.i.i, i8 48, i8 52
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else42.i.i, %if.then38.i.i, %if.then32.i.i, %if.then16.i.i, %if.end.i.i.if.end5.i_crit_edge, %if.then.i.i, %if.then.i
  %drm.addr.0.i = phi i8 [ %24, %if.then.i ], [ 62, %if.then32.i.i ], [ %..i.i, %if.then.i.i ], [ %.56.i.i, %if.then16.i.i ], [ 51, %if.end.i.i.if.end5.i_crit_edge ], [ %.57.i.i, %if.then38.i.i ], [ %.58.i.i, %if.else42.i.i ]
  %30 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 18, ptr %cmd.i, align 1
  %31 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %19, align 1
  %32 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %drm.addr.0.i, ptr %20, align 1
  %drm9.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 3
  %33 = ptrtoint ptr %drm9.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %drm.addr.0.i, ptr %drm9.i, align 2
  %and.i.i = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end5.i.wiiproto_req_drm.exit_crit_edge, label %if.then.i19.i

if.end5.i.wiiproto_req_drm.exit_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiiproto_req_drm.exit

if.then.i19.i:                                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %19, align 1
  br label %wiiproto_req_drm.exit

wiiproto_req_drm.exit:                            ; preds = %if.then.i19.i, %if.end5.i.wiiproto_req_drm.exit_crit_edge
  call fastcc void @wiimote_queue(ptr noundef %wdata, ptr noundef nonnull %cmd.i, i32 noundef 3) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %cmd.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handler_data(ptr noundef %wdata, ptr noundef %payload) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %payload, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx1 = getelementptr i8, ptr %payload, i32 4
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  %arrayidx4 = getelementptr i8, ptr %payload, i32 2
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  %6 = lshr i8 %5, 4
  %add = add nuw nsw i8 %6, 1
  %exttype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 5
  %7 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %exttype.i, align 4
  %idxprom.i = zext i8 %8 to i32
  %arrayidx.i = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %in_keys.i = getelementptr inbounds %struct.wiimod_ops, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %in_keys.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %in_keys.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup.sink.split.i_crit_edge

entry.cleanup.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %entry
  %devtype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %13 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %devtype.i, align 1
  %idxprom3.i = zext i8 %14 to i32
  %arrayidx4.i = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom3.i
  %15 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx4.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %18)
  %cmp.not25.i = icmp eq i8 %18, 11
  br i1 %cmp.not25.i, label %if.end.i.handler_keys.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.handler_keys.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_keys.exit

for.cond.i:                                       ; preds = %for.body.i
  %incdec.ptr.i = getelementptr i8, ptr %iter.026.i, i32 1
  %19 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %incdec.ptr.i, align 1
  %cmp.not.i = icmp eq i8 %20, 11
  br i1 %cmp.not.i, label %for.cond.i.handler_keys.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.handler_keys.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_keys.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %21 = phi i8 [ %20, %for.cond.i.for.body.i_crit_edge ], [ %18, %if.end.i.for.body.i_crit_edge ]
  %iter.026.i = phi ptr [ %incdec.ptr.i, %for.cond.i.for.body.i_crit_edge ], [ %16, %if.end.i.for.body.i_crit_edge ]
  %conv.i = zext i8 %21 to i32
  %arrayidx7.i = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i
  %22 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx7.i, align 4
  %in_keys8.i = getelementptr inbounds %struct.wiimod_ops, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %in_keys8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %in_keys8.i, align 4
  %tobool9.not.i = icmp eq ptr %25, null
  br i1 %tobool9.not.i, label %for.cond.i, label %for.body.i.cleanup.sink.split.i_crit_edge

for.body.i.cleanup.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.body.i.cleanup.sink.split.i_crit_edge, %entry.cleanup.sink.split.i_crit_edge
  %.lcssa.sink.i = phi ptr [ %12, %entry.cleanup.sink.split.i_crit_edge ], [ %25, %for.body.i.cleanup.sink.split.i_crit_edge ]
  tail call void %.lcssa.sink.i(ptr noundef %wdata, ptr noundef %payload) #8
  br label %handler_keys.exit

handler_keys.exit:                                ; preds = %cleanup.sink.split.i, %for.cond.i.handler_keys.exit_crit_edge, %if.end.i.handler_keys.exit_crit_edge
  %cmd1.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 9
  %26 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cmd1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %27)
  %cmp.i = icmp eq i32 %27, 23
  br i1 %cmp.i, label %wiimote_cmd_pending.exit, label %handler_keys.exit.if.end29_crit_edge

handler_keys.exit.if.end29_crit_edge:             ; preds = %handler_keys.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

wiimote_cmd_pending.exit:                         ; preds = %handler_keys.exit
  %opt3.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 10
  %28 = ptrtoint ptr %opt3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %opt3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %or)
  %cmp4.i = icmp eq i32 %29, %or
  br i1 %cmp4.i, label %if.then, label %wiimote_cmd_pending.exit.if.end29_crit_edge

wiimote_cmd_pending.exit.if.end29_crit_edge:      ; preds = %wiimote_cmd_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then:                                          ; preds = %wiimote_cmd_pending.exit
  %30 = and i8 %5, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not = icmp eq i8 %30, 0
  br i1 %tobool.not, label %if.else, label %if.then.if.end18_crit_edge

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_read_size = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 14
  %31 = ptrtoint ptr %cmd_read_size to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %cmd_read_size, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %32)
  %cmp.not = icmp ult i8 %6, %32
  %spec.select = select i1 %cmp.not, i8 %add, i8 %32
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then.if.end18_crit_edge
  %size.0 = phi i8 [ 0, %if.then.if.end18_crit_edge ], [ %spec.select, %if.else ]
  %cmd_read_size20 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 14
  %33 = ptrtoint ptr %cmd_read_size20 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %size.0, ptr %cmd_read_size20, align 4
  %cmd_read_buf = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 13
  %34 = ptrtoint ptr %cmd_read_buf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cmd_read_buf, align 4
  %tobool22.not = icmp eq ptr %35, null
  br i1 %tobool22.not, label %if.end18.if.end28_crit_edge, label %if.then23

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx26 = getelementptr i8, ptr %payload, i32 5
  %conv27 = zext i8 %size.0 to i32
  %36 = call ptr @memcpy(ptr %35, ptr %arrayidx26, i32 %conv27)
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.end18.if.end28_crit_edge
  %37 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %cmd1.i, align 4
  %ready.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 8
  tail call void @complete(ptr noundef %ready.i) #8
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %wiimote_cmd_pending.exit.if.end29_crit_edge, %handler_keys.exit.if.end29_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handler_generic_K(ptr noundef %wdata, ptr noundef %payload) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %exttype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 5
  %0 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %exttype.i, align 4
  %idxprom.i = zext i8 %1 to i32
  %arrayidx.i = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %in_keys.i = getelementptr inbounds %struct.wiimod_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %in_keys.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_keys.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup.sink.split.i_crit_edge

entry.cleanup.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %entry
  %devtype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %6 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %devtype.i, align 1
  %idxprom3.i = zext i8 %7 to i32
  %arrayidx4.i = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom3.i
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %11)
  %cmp.not25.i = icmp eq i8 %11, 11
  br i1 %cmp.not25.i, label %if.end.i.handler_keys.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.handler_keys.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_keys.exit

for.cond.i:                                       ; preds = %for.body.i
  %incdec.ptr.i = getelementptr i8, ptr %iter.026.i, i32 1
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr.i, align 1
  %cmp.not.i = icmp eq i8 %13, 11
  br i1 %cmp.not.i, label %for.cond.i.handler_keys.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.handler_keys.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_keys.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %14 = phi i8 [ %13, %for.cond.i.for.body.i_crit_edge ], [ %11, %if.end.i.for.body.i_crit_edge ]
  %iter.026.i = phi ptr [ %incdec.ptr.i, %for.cond.i.for.body.i_crit_edge ], [ %9, %if.end.i.for.body.i_crit_edge ]
  %conv.i = zext i8 %14 to i32
  %arrayidx7.i = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx7.i, align 4
  %in_keys8.i = getelementptr inbounds %struct.wiimod_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %in_keys8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %in_keys8.i, align 4
  %tobool9.not.i = icmp eq ptr %18, null
  br i1 %tobool9.not.i, label %for.cond.i, label %for.body.i.cleanup.sink.split.i_crit_edge

for.body.i.cleanup.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.body.i.cleanup.sink.split.i_crit_edge, %entry.cleanup.sink.split.i_crit_edge
  %.lcssa.sink.i = phi ptr [ %5, %entry.cleanup.sink.split.i_crit_edge ], [ %18, %for.body.i.cleanup.sink.split.i_crit_edge ]
  tail call void %.lcssa.sink.i(ptr noundef %wdata, ptr noundef %payload) #8
  br label %handler_keys.exit

handler_keys.exit:                                ; preds = %cleanup.sink.split.i, %for.cond.i.handler_keys.exit_crit_edge, %if.end.i.handler_keys.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handler_return(ptr noundef %wdata, ptr noundef %payload) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %payload, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %arrayidx1 = getelementptr i8, ptr %payload, i32 2
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %exttype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 5
  %4 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %exttype.i, align 4
  %idxprom.i = zext i8 %5 to i32
  %arrayidx.i = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %in_keys.i = getelementptr inbounds %struct.wiimod_ops, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %in_keys.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %in_keys.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup.sink.split.i_crit_edge

entry.cleanup.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %entry
  %devtype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %10 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %devtype.i, align 1
  %idxprom3.i = zext i8 %11 to i32
  %arrayidx4.i = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom3.i
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %15)
  %cmp.not25.i = icmp eq i8 %15, 11
  br i1 %cmp.not25.i, label %if.end.i.handler_keys.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.handler_keys.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_keys.exit

for.cond.i:                                       ; preds = %for.body.i
  %incdec.ptr.i = getelementptr i8, ptr %iter.026.i, i32 1
  %16 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %incdec.ptr.i, align 1
  %cmp.not.i = icmp eq i8 %17, 11
  br i1 %cmp.not.i, label %for.cond.i.handler_keys.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.handler_keys.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_keys.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %18 = phi i8 [ %17, %for.cond.i.for.body.i_crit_edge ], [ %15, %if.end.i.for.body.i_crit_edge ]
  %iter.026.i = phi ptr [ %incdec.ptr.i, %for.cond.i.for.body.i_crit_edge ], [ %13, %if.end.i.for.body.i_crit_edge ]
  %conv.i = zext i8 %18 to i32
  %arrayidx7.i = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i
  %19 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx7.i, align 4
  %in_keys8.i = getelementptr inbounds %struct.wiimod_ops, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %in_keys8.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %in_keys8.i, align 4
  %tobool9.not.i = icmp eq ptr %22, null
  br i1 %tobool9.not.i, label %for.cond.i, label %for.body.i.cleanup.sink.split.i_crit_edge

for.body.i.cleanup.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.body.i.cleanup.sink.split.i_crit_edge, %entry.cleanup.sink.split.i_crit_edge
  %.lcssa.sink.i = phi ptr [ %9, %entry.cleanup.sink.split.i_crit_edge ], [ %22, %for.body.i.cleanup.sink.split.i_crit_edge ]
  tail call void %.lcssa.sink.i(ptr noundef %wdata, ptr noundef %payload) #8
  br label %handler_keys.exit

handler_keys.exit:                                ; preds = %cleanup.sink.split.i, %for.cond.i.handler_keys.exit_crit_edge, %if.end.i.handler_keys.exit_crit_edge
  %conv = zext i8 %3 to i32
  %cmd1.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 9
  %23 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cmd1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv)
  %cmp.i = icmp eq i32 %24, %conv
  br i1 %cmp.i, label %wiimote_cmd_pending.exit, label %handler_keys.exit.if.else_crit_edge

handler_keys.exit.if.else_crit_edge:              ; preds = %handler_keys.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

wiimote_cmd_pending.exit:                         ; preds = %handler_keys.exit
  %opt3.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 10
  %25 = ptrtoint ptr %opt3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %opt3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp4.i = icmp eq i32 %26, 0
  br i1 %cmp4.i, label %if.then, label %wiimote_cmd_pending.exit.if.else_crit_edge

wiimote_cmd_pending.exit.if.else_crit_edge:       ; preds = %wiimote_cmd_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %wiimote_cmd_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_err = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 12
  %27 = ptrtoint ptr %cmd_err to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %1, ptr %cmd_err, align 1
  %28 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %cmd1.i, align 4
  %ready.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 8
  tail call void @complete(ptr noundef %ready.i) #8
  br label %if.end5

if.else:                                          ; preds = %wiimote_cmd_pending.exit.if.else_crit_edge, %handler_keys.exit.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else.if.end5_crit_edge, label %do.end

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wdata, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %30, i32 0, i32 18
  %conv3 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.120, i32 noundef %conv3, i32 noundef %conv) #11
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.else.if.end5_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handler_keys(ptr noundef %wdata, ptr noundef %payload) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %exttype = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 5
  %0 = ptrtoint ptr %exttype to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %exttype, align 4
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %in_keys = getelementptr inbounds %struct.wiimod_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %in_keys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_keys, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %devtype = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %6 = ptrtoint ptr %devtype to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %devtype, align 1
  %idxprom3 = zext i8 %7 to i32
  %arrayidx4 = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom3
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %11)
  %cmp.not25 = icmp eq i8 %11, 11
  br i1 %cmp.not25, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %incdec.ptr = getelementptr i8, ptr %iter.026, i32 1
  %12 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr, align 1
  %cmp.not = icmp eq i8 %13, 11
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %14 = phi i8 [ %13, %for.cond.for.body_crit_edge ], [ %11, %if.end.for.body_crit_edge ]
  %iter.026 = phi ptr [ %incdec.ptr, %for.cond.for.body_crit_edge ], [ %9, %if.end.for.body_crit_edge ]
  %conv = zext i8 %14 to i32
  %arrayidx7 = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx7, align 4
  %in_keys8 = getelementptr inbounds %struct.wiimod_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %in_keys8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %in_keys8, align 4
  %tobool9.not = icmp eq ptr %18, null
  br i1 %tobool9.not, label %for.cond, label %for.body.cleanup.sink.split_crit_edge

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.body.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.lcssa.sink = phi ptr [ %5, %entry.cleanup.sink.split_crit_edge ], [ %18, %for.body.cleanup.sink.split_crit_edge ]
  tail call void %.lcssa.sink(ptr noundef %wdata, ptr noundef %payload) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handler_drm_KA(ptr noundef %wdata, ptr noundef %payload) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %exttype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 5
  %0 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %exttype.i, align 4
  %idxprom.i = zext i8 %1 to i32
  %arrayidx.i = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %in_keys.i = getelementptr inbounds %struct.wiimod_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %in_keys.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_keys.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup.sink.split.i_crit_edge

entry.cleanup.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %entry
  %devtype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %6 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %devtype.i, align 1
  %idxprom3.i = zext i8 %7 to i32
  %arrayidx4.i = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom3.i
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %11)
  %cmp.not25.i = icmp eq i8 %11, 11
  br i1 %cmp.not25.i, label %if.end.i.handler_keys.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.handler_keys.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_keys.exit

for.cond.i:                                       ; preds = %for.body.i
  %incdec.ptr.i = getelementptr i8, ptr %iter.026.i, i32 1
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr.i, align 1
  %cmp.not.i = icmp eq i8 %13, 11
  br i1 %cmp.not.i, label %for.cond.i.handler_keys.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.handler_keys.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_keys.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %14 = phi i8 [ %13, %for.cond.i.for.body.i_crit_edge ], [ %11, %if.end.i.for.body.i_crit_edge ]
  %iter.026.i = phi ptr [ %incdec.ptr.i, %for.cond.i.for.body.i_crit_edge ], [ %9, %if.end.i.for.body.i_crit_edge ]
  %conv.i = zext i8 %14 to i32
  %arrayidx7.i = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx7.i, align 4
  %in_keys8.i = getelementptr inbounds %struct.wiimod_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %in_keys8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %in_keys8.i, align 4
  %tobool9.not.i = icmp eq ptr %18, null
  br i1 %tobool9.not.i, label %for.cond.i, label %for.body.i.cleanup.sink.split.i_crit_edge

for.body.i.cleanup.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.body.i.cleanup.sink.split.i_crit_edge, %entry.cleanup.sink.split.i_crit_edge
  %.lcssa.sink.i = phi ptr [ %5, %entry.cleanup.sink.split.i_crit_edge ], [ %18, %for.body.i.cleanup.sink.split.i_crit_edge ]
  tail call void %.lcssa.sink.i(ptr noundef %wdata, ptr noundef %payload) #8
  br label %handler_keys.exit

handler_keys.exit:                                ; preds = %cleanup.sink.split.i, %for.cond.i.handler_keys.exit_crit_edge, %if.end.i.handler_keys.exit_crit_edge
  %19 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %exttype.i, align 4
  %idxprom.i4 = zext i8 %20 to i32
  %arrayidx.i5 = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i4
  %21 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i5, align 4
  %in_accel.i = getelementptr inbounds %struct.wiimod_ops, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %in_accel.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %in_accel.i, align 4
  %tobool.not.i6 = icmp eq ptr %24, null
  br i1 %tobool.not.i6, label %if.end.i11, label %handler_keys.exit.cleanup.sink.split.i21_crit_edge

handler_keys.exit.cleanup.sink.split.i21_crit_edge: ; preds = %handler_keys.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i21

if.end.i11:                                       ; preds = %handler_keys.exit
  %devtype.i7 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %25 = ptrtoint ptr %devtype.i7 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %devtype.i7, align 1
  %idxprom3.i8 = zext i8 %26 to i32
  %arrayidx4.i9 = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom3.i8
  %27 = ptrtoint ptr %arrayidx4.i9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx4.i9, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %30)
  %cmp.not25.i10 = icmp eq i8 %30, 11
  br i1 %cmp.not25.i10, label %if.end.i11.handler_accel.exit_crit_edge, label %if.end.i11.for.body.i19_crit_edge

if.end.i11.for.body.i19_crit_edge:                ; preds = %if.end.i11
  br label %for.body.i19

if.end.i11.handler_accel.exit_crit_edge:          ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_accel.exit

for.cond.i14:                                     ; preds = %for.body.i19
  %incdec.ptr.i12 = getelementptr i8, ptr %iter.026.i15, i32 1
  %31 = ptrtoint ptr %incdec.ptr.i12 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %incdec.ptr.i12, align 1
  %cmp.not.i13 = icmp eq i8 %32, 11
  br i1 %cmp.not.i13, label %for.cond.i14.handler_accel.exit_crit_edge, label %for.cond.i14.for.body.i19_crit_edge

for.cond.i14.for.body.i19_crit_edge:              ; preds = %for.cond.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i19

for.cond.i14.handler_accel.exit_crit_edge:        ; preds = %for.cond.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_accel.exit

for.body.i19:                                     ; preds = %for.cond.i14.for.body.i19_crit_edge, %if.end.i11.for.body.i19_crit_edge
  %33 = phi i8 [ %32, %for.cond.i14.for.body.i19_crit_edge ], [ %30, %if.end.i11.for.body.i19_crit_edge ]
  %iter.026.i15 = phi ptr [ %incdec.ptr.i12, %for.cond.i14.for.body.i19_crit_edge ], [ %28, %if.end.i11.for.body.i19_crit_edge ]
  %conv.i16 = zext i8 %33 to i32
  %arrayidx7.i17 = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i16
  %34 = ptrtoint ptr %arrayidx7.i17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx7.i17, align 4
  %in_accel8.i = getelementptr inbounds %struct.wiimod_ops, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %in_accel8.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %in_accel8.i, align 4
  %tobool9.not.i18 = icmp eq ptr %37, null
  br i1 %tobool9.not.i18, label %for.cond.i14, label %for.body.i19.cleanup.sink.split.i21_crit_edge

for.body.i19.cleanup.sink.split.i21_crit_edge:    ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i21

cleanup.sink.split.i21:                           ; preds = %for.body.i19.cleanup.sink.split.i21_crit_edge, %handler_keys.exit.cleanup.sink.split.i21_crit_edge
  %.lcssa.sink.i20 = phi ptr [ %24, %handler_keys.exit.cleanup.sink.split.i21_crit_edge ], [ %37, %for.body.i19.cleanup.sink.split.i21_crit_edge ]
  tail call void %.lcssa.sink.i20(ptr noundef %wdata, ptr noundef %payload) #8
  br label %handler_accel.exit

handler_accel.exit:                               ; preds = %cleanup.sink.split.i21, %for.cond.i14.handler_accel.exit_crit_edge, %if.end.i11.handler_accel.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handler_drm_KE(ptr noundef %wdata, ptr noundef %payload) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %exttype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 5
  %0 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %exttype.i, align 4
  %idxprom.i = zext i8 %1 to i32
  %arrayidx.i = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %in_keys.i = getelementptr inbounds %struct.wiimod_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %in_keys.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_keys.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup.sink.split.i_crit_edge

entry.cleanup.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %entry
  %devtype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %6 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %devtype.i, align 1
  %idxprom3.i = zext i8 %7 to i32
  %arrayidx4.i = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom3.i
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %11)
  %cmp.not25.i = icmp eq i8 %11, 11
  br i1 %cmp.not25.i, label %if.end.i.handler_keys.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.handler_keys.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_keys.exit

for.cond.i:                                       ; preds = %for.body.i
  %incdec.ptr.i = getelementptr i8, ptr %iter.026.i, i32 1
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr.i, align 1
  %cmp.not.i = icmp eq i8 %13, 11
  br i1 %cmp.not.i, label %for.cond.i.handler_keys.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.handler_keys.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_keys.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %14 = phi i8 [ %13, %for.cond.i.for.body.i_crit_edge ], [ %11, %if.end.i.for.body.i_crit_edge ]
  %iter.026.i = phi ptr [ %incdec.ptr.i, %for.cond.i.for.body.i_crit_edge ], [ %9, %if.end.i.for.body.i_crit_edge ]
  %conv.i = zext i8 %14 to i32
  %arrayidx7.i = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx7.i, align 4
  %in_keys8.i = getelementptr inbounds %struct.wiimod_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %in_keys8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %in_keys8.i, align 4
  %tobool9.not.i = icmp eq ptr %18, null
  br i1 %tobool9.not.i, label %for.cond.i, label %for.body.i.cleanup.sink.split.i_crit_edge

for.body.i.cleanup.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.body.i.cleanup.sink.split.i_crit_edge, %entry.cleanup.sink.split.i_crit_edge
  %.lcssa.sink.i = phi ptr [ %5, %entry.cleanup.sink.split.i_crit_edge ], [ %18, %for.body.i.cleanup.sink.split.i_crit_edge ]
  tail call void %.lcssa.sink.i(ptr noundef %wdata, ptr noundef %payload) #8
  br label %handler_keys.exit

handler_keys.exit:                                ; preds = %cleanup.sink.split.i, %for.cond.i.handler_keys.exit_crit_edge, %if.end.i.handler_keys.exit_crit_edge
  %arrayidx = getelementptr i8, ptr %payload, i32 2
  tail call fastcc void @handler_ext(ptr noundef %wdata, ptr noundef %arrayidx, i32 noundef 8)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handler_drm_KAI(ptr noundef %wdata, ptr noundef %payload) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %exttype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 5
  %0 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %exttype.i, align 4
  %idxprom.i = zext i8 %1 to i32
  %arrayidx.i = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %in_keys.i = getelementptr inbounds %struct.wiimod_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %in_keys.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_keys.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup.sink.split.i_crit_edge

entry.cleanup.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %entry
  %devtype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %6 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %devtype.i, align 1
  %idxprom3.i = zext i8 %7 to i32
  %arrayidx4.i = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom3.i
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %11)
  %cmp.not25.i = icmp eq i8 %11, 11
  br i1 %cmp.not25.i, label %if.end.i.handler_keys.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.handler_keys.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_keys.exit

for.cond.i:                                       ; preds = %for.body.i
  %incdec.ptr.i = getelementptr i8, ptr %iter.026.i, i32 1
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr.i, align 1
  %cmp.not.i = icmp eq i8 %13, 11
  br i1 %cmp.not.i, label %for.cond.i.handler_keys.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.handler_keys.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_keys.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %14 = phi i8 [ %13, %for.cond.i.for.body.i_crit_edge ], [ %11, %if.end.i.for.body.i_crit_edge ]
  %iter.026.i = phi ptr [ %incdec.ptr.i, %for.cond.i.for.body.i_crit_edge ], [ %9, %if.end.i.for.body.i_crit_edge ]
  %conv.i = zext i8 %14 to i32
  %arrayidx7.i = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx7.i, align 4
  %in_keys8.i = getelementptr inbounds %struct.wiimod_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %in_keys8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %in_keys8.i, align 4
  %tobool9.not.i = icmp eq ptr %18, null
  br i1 %tobool9.not.i, label %for.cond.i, label %for.body.i.cleanup.sink.split.i_crit_edge

for.body.i.cleanup.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.body.i.cleanup.sink.split.i_crit_edge, %entry.cleanup.sink.split.i_crit_edge
  %.lcssa.sink.i = phi ptr [ %5, %entry.cleanup.sink.split.i_crit_edge ], [ %18, %for.body.i.cleanup.sink.split.i_crit_edge ]
  tail call void %.lcssa.sink.i(ptr noundef %wdata, ptr noundef %payload) #8
  br label %handler_keys.exit

handler_keys.exit:                                ; preds = %cleanup.sink.split.i, %for.cond.i.handler_keys.exit_crit_edge, %if.end.i.handler_keys.exit_crit_edge
  %19 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %exttype.i, align 4
  %idxprom.i15 = zext i8 %20 to i32
  %arrayidx.i16 = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i15
  %21 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i16, align 4
  %in_accel.i = getelementptr inbounds %struct.wiimod_ops, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %in_accel.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %in_accel.i, align 4
  %tobool.not.i17 = icmp eq ptr %24, null
  br i1 %tobool.not.i17, label %if.end.i22, label %handler_keys.exit.cleanup.sink.split.i32_crit_edge

handler_keys.exit.cleanup.sink.split.i32_crit_edge: ; preds = %handler_keys.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i32

if.end.i22:                                       ; preds = %handler_keys.exit
  %devtype.i18 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %25 = ptrtoint ptr %devtype.i18 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %devtype.i18, align 1
  %idxprom3.i19 = zext i8 %26 to i32
  %arrayidx4.i20 = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom3.i19
  %27 = ptrtoint ptr %arrayidx4.i20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx4.i20, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %30)
  %cmp.not25.i21 = icmp eq i8 %30, 11
  br i1 %cmp.not25.i21, label %if.end.i22.handler_accel.exit_crit_edge, label %if.end.i22.for.body.i30_crit_edge

if.end.i22.for.body.i30_crit_edge:                ; preds = %if.end.i22
  br label %for.body.i30

if.end.i22.handler_accel.exit_crit_edge:          ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_accel.exit

for.cond.i25:                                     ; preds = %for.body.i30
  %incdec.ptr.i23 = getelementptr i8, ptr %iter.026.i26, i32 1
  %31 = ptrtoint ptr %incdec.ptr.i23 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %incdec.ptr.i23, align 1
  %cmp.not.i24 = icmp eq i8 %32, 11
  br i1 %cmp.not.i24, label %for.cond.i25.handler_accel.exit_crit_edge, label %for.cond.i25.for.body.i30_crit_edge

for.cond.i25.for.body.i30_crit_edge:              ; preds = %for.cond.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i30

for.cond.i25.handler_accel.exit_crit_edge:        ; preds = %for.cond.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_accel.exit

for.body.i30:                                     ; preds = %for.cond.i25.for.body.i30_crit_edge, %if.end.i22.for.body.i30_crit_edge
  %33 = phi i8 [ %32, %for.cond.i25.for.body.i30_crit_edge ], [ %30, %if.end.i22.for.body.i30_crit_edge ]
  %iter.026.i26 = phi ptr [ %incdec.ptr.i23, %for.cond.i25.for.body.i30_crit_edge ], [ %28, %if.end.i22.for.body.i30_crit_edge ]
  %conv.i27 = zext i8 %33 to i32
  %arrayidx7.i28 = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i27
  %34 = ptrtoint ptr %arrayidx7.i28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx7.i28, align 4
  %in_accel8.i = getelementptr inbounds %struct.wiimod_ops, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %in_accel8.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %in_accel8.i, align 4
  %tobool9.not.i29 = icmp eq ptr %37, null
  br i1 %tobool9.not.i29, label %for.cond.i25, label %for.body.i30.cleanup.sink.split.i32_crit_edge

for.body.i30.cleanup.sink.split.i32_crit_edge:    ; preds = %for.body.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i32

cleanup.sink.split.i32:                           ; preds = %for.body.i30.cleanup.sink.split.i32_crit_edge, %handler_keys.exit.cleanup.sink.split.i32_crit_edge
  %.lcssa.sink.i31 = phi ptr [ %24, %handler_keys.exit.cleanup.sink.split.i32_crit_edge ], [ %37, %for.body.i30.cleanup.sink.split.i32_crit_edge ]
  tail call void %.lcssa.sink.i31(ptr noundef %wdata, ptr noundef %payload) #8
  br label %handler_accel.exit

handler_accel.exit:                               ; preds = %cleanup.sink.split.i32, %for.cond.i25.handler_accel.exit_crit_edge, %if.end.i22.handler_accel.exit_crit_edge
  %arrayidx = getelementptr i8, ptr %payload, i32 5
  %38 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %exttype.i, align 4
  %idxprom.i34 = zext i8 %39 to i32
  %arrayidx.i35 = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i34
  %40 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i35, align 4
  %in_ir.i = getelementptr inbounds %struct.wiimod_ops, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %in_ir.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %in_ir.i, align 4
  %tobool.not.i36 = icmp eq ptr %43, null
  br i1 %tobool.not.i36, label %if.end.i38, label %handler_accel.exit.cleanup.sink.split.i45_crit_edge

handler_accel.exit.cleanup.sink.split.i45_crit_edge: ; preds = %handler_accel.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i45

if.end.i38:                                       ; preds = %handler_accel.exit
  %devtype.i37 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %44 = ptrtoint ptr %devtype.i37 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %devtype.i37, align 1
  %idxprom4.i = zext i8 %45 to i32
  %arrayidx5.i = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom4.i
  %46 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx5.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %49)
  %cmp.not29.i = icmp eq i8 %49, 11
  br i1 %cmp.not29.i, label %if.end.i38.handler_ir.exit_crit_edge, label %if.end.i38.for.body.i43_crit_edge

if.end.i38.for.body.i43_crit_edge:                ; preds = %if.end.i38
  br label %for.body.i43

if.end.i38.handler_ir.exit_crit_edge:             ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit

for.cond.i41:                                     ; preds = %for.body.i43
  %incdec.ptr.i39 = getelementptr i8, ptr %iter.030.i, i32 1
  %50 = ptrtoint ptr %incdec.ptr.i39 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %incdec.ptr.i39, align 1
  %cmp.not.i40 = icmp eq i8 %51, 11
  br i1 %cmp.not.i40, label %for.cond.i41.handler_ir.exit_crit_edge, label %for.cond.i41.for.body.i43_crit_edge

for.cond.i41.for.body.i43_crit_edge:              ; preds = %for.cond.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i43

for.cond.i41.handler_ir.exit_crit_edge:           ; preds = %for.cond.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit

for.body.i43:                                     ; preds = %for.cond.i41.for.body.i43_crit_edge, %if.end.i38.for.body.i43_crit_edge
  %52 = phi i8 [ %51, %for.cond.i41.for.body.i43_crit_edge ], [ %49, %if.end.i38.for.body.i43_crit_edge ]
  %iter.030.i = phi ptr [ %incdec.ptr.i39, %for.cond.i41.for.body.i43_crit_edge ], [ %47, %if.end.i38.for.body.i43_crit_edge ]
  %conv.i42 = zext i8 %52 to i32
  %arrayidx8.i = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i42
  %53 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx8.i, align 4
  %in_ir9.i = getelementptr inbounds %struct.wiimod_ops, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %in_ir9.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %in_ir9.i, align 4
  %tobool10.not.i = icmp eq ptr %56, null
  br i1 %tobool10.not.i, label %for.cond.i41, label %for.body.i43.cleanup.sink.split.i45_crit_edge

for.body.i43.cleanup.sink.split.i45_crit_edge:    ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i45

cleanup.sink.split.i45:                           ; preds = %for.body.i43.cleanup.sink.split.i45_crit_edge, %handler_accel.exit.cleanup.sink.split.i45_crit_edge
  %.lcssa.sink.i44 = phi ptr [ %43, %handler_accel.exit.cleanup.sink.split.i45_crit_edge ], [ %56, %for.body.i43.cleanup.sink.split.i45_crit_edge ]
  tail call void %.lcssa.sink.i44(ptr noundef %wdata, ptr noundef %arrayidx, i1 noundef zeroext false, i32 noundef 0) #8
  br label %handler_ir.exit

handler_ir.exit:                                  ; preds = %cleanup.sink.split.i45, %for.cond.i41.handler_ir.exit_crit_edge, %if.end.i38.handler_ir.exit_crit_edge
  %arrayidx1 = getelementptr i8, ptr %payload, i32 8
  %57 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %exttype.i, align 4
  %idxprom.i47 = zext i8 %58 to i32
  %arrayidx.i48 = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i47
  %59 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i48, align 4
  %in_ir.i49 = getelementptr inbounds %struct.wiimod_ops, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %in_ir.i49 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %in_ir.i49, align 4
  %tobool.not.i50 = icmp eq ptr %62, null
  br i1 %tobool.not.i50, label %if.end.i55, label %handler_ir.exit.cleanup.sink.split.i66_crit_edge

handler_ir.exit.cleanup.sink.split.i66_crit_edge: ; preds = %handler_ir.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i66

if.end.i55:                                       ; preds = %handler_ir.exit
  %devtype.i51 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %63 = ptrtoint ptr %devtype.i51 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %devtype.i51, align 1
  %idxprom4.i52 = zext i8 %64 to i32
  %arrayidx5.i53 = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom4.i52
  %65 = ptrtoint ptr %arrayidx5.i53 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx5.i53, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %66, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %68)
  %cmp.not29.i54 = icmp eq i8 %68, 11
  br i1 %cmp.not29.i54, label %if.end.i55.handler_ir.exit67_crit_edge, label %if.end.i55.for.body.i64_crit_edge

if.end.i55.for.body.i64_crit_edge:                ; preds = %if.end.i55
  br label %for.body.i64

if.end.i55.handler_ir.exit67_crit_edge:           ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit67

for.cond.i58:                                     ; preds = %for.body.i64
  %incdec.ptr.i56 = getelementptr i8, ptr %iter.030.i59, i32 1
  %69 = ptrtoint ptr %incdec.ptr.i56 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %incdec.ptr.i56, align 1
  %cmp.not.i57 = icmp eq i8 %70, 11
  br i1 %cmp.not.i57, label %for.cond.i58.handler_ir.exit67_crit_edge, label %for.cond.i58.for.body.i64_crit_edge

for.cond.i58.for.body.i64_crit_edge:              ; preds = %for.cond.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i64

for.cond.i58.handler_ir.exit67_crit_edge:         ; preds = %for.cond.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit67

for.body.i64:                                     ; preds = %for.cond.i58.for.body.i64_crit_edge, %if.end.i55.for.body.i64_crit_edge
  %71 = phi i8 [ %70, %for.cond.i58.for.body.i64_crit_edge ], [ %68, %if.end.i55.for.body.i64_crit_edge ]
  %iter.030.i59 = phi ptr [ %incdec.ptr.i56, %for.cond.i58.for.body.i64_crit_edge ], [ %66, %if.end.i55.for.body.i64_crit_edge ]
  %conv.i60 = zext i8 %71 to i32
  %arrayidx8.i61 = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i60
  %72 = ptrtoint ptr %arrayidx8.i61 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx8.i61, align 4
  %in_ir9.i62 = getelementptr inbounds %struct.wiimod_ops, ptr %73, i32 0, i32 6
  %74 = ptrtoint ptr %in_ir9.i62 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %in_ir9.i62, align 4
  %tobool10.not.i63 = icmp eq ptr %75, null
  br i1 %tobool10.not.i63, label %for.cond.i58, label %for.body.i64.cleanup.sink.split.i66_crit_edge

for.body.i64.cleanup.sink.split.i66_crit_edge:    ; preds = %for.body.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i66

cleanup.sink.split.i66:                           ; preds = %for.body.i64.cleanup.sink.split.i66_crit_edge, %handler_ir.exit.cleanup.sink.split.i66_crit_edge
  %.lcssa.sink.i65 = phi ptr [ %62, %handler_ir.exit.cleanup.sink.split.i66_crit_edge ], [ %75, %for.body.i64.cleanup.sink.split.i66_crit_edge ]
  tail call void %.lcssa.sink.i65(ptr noundef %wdata, ptr noundef %arrayidx1, i1 noundef zeroext false, i32 noundef 1) #8
  br label %handler_ir.exit67

handler_ir.exit67:                                ; preds = %cleanup.sink.split.i66, %for.cond.i58.handler_ir.exit67_crit_edge, %if.end.i55.handler_ir.exit67_crit_edge
  %arrayidx2 = getelementptr i8, ptr %payload, i32 11
  %76 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %exttype.i, align 4
  %idxprom.i69 = zext i8 %77 to i32
  %arrayidx.i70 = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i69
  %78 = ptrtoint ptr %arrayidx.i70 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i70, align 4
  %in_ir.i71 = getelementptr inbounds %struct.wiimod_ops, ptr %79, i32 0, i32 6
  %80 = ptrtoint ptr %in_ir.i71 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %in_ir.i71, align 4
  %tobool.not.i72 = icmp eq ptr %81, null
  br i1 %tobool.not.i72, label %if.end.i77, label %handler_ir.exit67.cleanup.sink.split.i88_crit_edge

handler_ir.exit67.cleanup.sink.split.i88_crit_edge: ; preds = %handler_ir.exit67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i88

if.end.i77:                                       ; preds = %handler_ir.exit67
  %devtype.i73 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %82 = ptrtoint ptr %devtype.i73 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %devtype.i73, align 1
  %idxprom4.i74 = zext i8 %83 to i32
  %arrayidx5.i75 = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom4.i74
  %84 = ptrtoint ptr %arrayidx5.i75 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx5.i75, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %85, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %87)
  %cmp.not29.i76 = icmp eq i8 %87, 11
  br i1 %cmp.not29.i76, label %if.end.i77.handler_ir.exit89_crit_edge, label %if.end.i77.for.body.i86_crit_edge

if.end.i77.for.body.i86_crit_edge:                ; preds = %if.end.i77
  br label %for.body.i86

if.end.i77.handler_ir.exit89_crit_edge:           ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit89

for.cond.i80:                                     ; preds = %for.body.i86
  %incdec.ptr.i78 = getelementptr i8, ptr %iter.030.i81, i32 1
  %88 = ptrtoint ptr %incdec.ptr.i78 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %incdec.ptr.i78, align 1
  %cmp.not.i79 = icmp eq i8 %89, 11
  br i1 %cmp.not.i79, label %for.cond.i80.handler_ir.exit89_crit_edge, label %for.cond.i80.for.body.i86_crit_edge

for.cond.i80.for.body.i86_crit_edge:              ; preds = %for.cond.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i86

for.cond.i80.handler_ir.exit89_crit_edge:         ; preds = %for.cond.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit89

for.body.i86:                                     ; preds = %for.cond.i80.for.body.i86_crit_edge, %if.end.i77.for.body.i86_crit_edge
  %90 = phi i8 [ %89, %for.cond.i80.for.body.i86_crit_edge ], [ %87, %if.end.i77.for.body.i86_crit_edge ]
  %iter.030.i81 = phi ptr [ %incdec.ptr.i78, %for.cond.i80.for.body.i86_crit_edge ], [ %85, %if.end.i77.for.body.i86_crit_edge ]
  %conv.i82 = zext i8 %90 to i32
  %arrayidx8.i83 = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i82
  %91 = ptrtoint ptr %arrayidx8.i83 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx8.i83, align 4
  %in_ir9.i84 = getelementptr inbounds %struct.wiimod_ops, ptr %92, i32 0, i32 6
  %93 = ptrtoint ptr %in_ir9.i84 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %in_ir9.i84, align 4
  %tobool10.not.i85 = icmp eq ptr %94, null
  br i1 %tobool10.not.i85, label %for.cond.i80, label %for.body.i86.cleanup.sink.split.i88_crit_edge

for.body.i86.cleanup.sink.split.i88_crit_edge:    ; preds = %for.body.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i88

cleanup.sink.split.i88:                           ; preds = %for.body.i86.cleanup.sink.split.i88_crit_edge, %handler_ir.exit67.cleanup.sink.split.i88_crit_edge
  %.lcssa.sink.i87 = phi ptr [ %81, %handler_ir.exit67.cleanup.sink.split.i88_crit_edge ], [ %94, %for.body.i86.cleanup.sink.split.i88_crit_edge ]
  tail call void %.lcssa.sink.i87(ptr noundef %wdata, ptr noundef %arrayidx2, i1 noundef zeroext false, i32 noundef 2) #8
  br label %handler_ir.exit89

handler_ir.exit89:                                ; preds = %cleanup.sink.split.i88, %for.cond.i80.handler_ir.exit89_crit_edge, %if.end.i77.handler_ir.exit89_crit_edge
  %arrayidx3 = getelementptr i8, ptr %payload, i32 14
  %95 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %exttype.i, align 4
  %idxprom.i91 = zext i8 %96 to i32
  %arrayidx.i92 = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i91
  %97 = ptrtoint ptr %arrayidx.i92 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.i92, align 4
  %in_ir.i93 = getelementptr inbounds %struct.wiimod_ops, ptr %98, i32 0, i32 6
  %99 = ptrtoint ptr %in_ir.i93 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %in_ir.i93, align 4
  %tobool.not.i94 = icmp eq ptr %100, null
  br i1 %tobool.not.i94, label %if.end.i99, label %handler_ir.exit89.cleanup.sink.split.i110_crit_edge

handler_ir.exit89.cleanup.sink.split.i110_crit_edge: ; preds = %handler_ir.exit89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i110

if.end.i99:                                       ; preds = %handler_ir.exit89
  %devtype.i95 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %101 = ptrtoint ptr %devtype.i95 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %devtype.i95, align 1
  %idxprom4.i96 = zext i8 %102 to i32
  %arrayidx5.i97 = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom4.i96
  %103 = ptrtoint ptr %arrayidx5.i97 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx5.i97, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %104, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %106)
  %cmp.not29.i98 = icmp eq i8 %106, 11
  br i1 %cmp.not29.i98, label %if.end.i99.handler_ir.exit111_crit_edge, label %if.end.i99.for.body.i108_crit_edge

if.end.i99.for.body.i108_crit_edge:               ; preds = %if.end.i99
  br label %for.body.i108

if.end.i99.handler_ir.exit111_crit_edge:          ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit111

for.cond.i102:                                    ; preds = %for.body.i108
  %incdec.ptr.i100 = getelementptr i8, ptr %iter.030.i103, i32 1
  %107 = ptrtoint ptr %incdec.ptr.i100 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %incdec.ptr.i100, align 1
  %cmp.not.i101 = icmp eq i8 %108, 11
  br i1 %cmp.not.i101, label %for.cond.i102.handler_ir.exit111_crit_edge, label %for.cond.i102.for.body.i108_crit_edge

for.cond.i102.for.body.i108_crit_edge:            ; preds = %for.cond.i102
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i108

for.cond.i102.handler_ir.exit111_crit_edge:       ; preds = %for.cond.i102
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit111

for.body.i108:                                    ; preds = %for.cond.i102.for.body.i108_crit_edge, %if.end.i99.for.body.i108_crit_edge
  %109 = phi i8 [ %108, %for.cond.i102.for.body.i108_crit_edge ], [ %106, %if.end.i99.for.body.i108_crit_edge ]
  %iter.030.i103 = phi ptr [ %incdec.ptr.i100, %for.cond.i102.for.body.i108_crit_edge ], [ %104, %if.end.i99.for.body.i108_crit_edge ]
  %conv.i104 = zext i8 %109 to i32
  %arrayidx8.i105 = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i104
  %110 = ptrtoint ptr %arrayidx8.i105 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx8.i105, align 4
  %in_ir9.i106 = getelementptr inbounds %struct.wiimod_ops, ptr %111, i32 0, i32 6
  %112 = ptrtoint ptr %in_ir9.i106 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %in_ir9.i106, align 4
  %tobool10.not.i107 = icmp eq ptr %113, null
  br i1 %tobool10.not.i107, label %for.cond.i102, label %for.body.i108.cleanup.sink.split.i110_crit_edge

for.body.i108.cleanup.sink.split.i110_crit_edge:  ; preds = %for.body.i108
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i110

cleanup.sink.split.i110:                          ; preds = %for.body.i108.cleanup.sink.split.i110_crit_edge, %handler_ir.exit89.cleanup.sink.split.i110_crit_edge
  %.lcssa.sink.i109 = phi ptr [ %100, %handler_ir.exit89.cleanup.sink.split.i110_crit_edge ], [ %113, %for.body.i108.cleanup.sink.split.i110_crit_edge ]
  tail call void %.lcssa.sink.i109(ptr noundef %wdata, ptr noundef %arrayidx3, i1 noundef zeroext false, i32 noundef 3) #8
  br label %handler_ir.exit111

handler_ir.exit111:                               ; preds = %cleanup.sink.split.i110, %for.cond.i102.handler_ir.exit111_crit_edge, %if.end.i99.handler_ir.exit111_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handler_drm_KEE(ptr noundef %wdata, ptr noundef %payload) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %exttype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 5
  %0 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %exttype.i, align 4
  %idxprom.i = zext i8 %1 to i32
  %arrayidx.i = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %in_keys.i = getelementptr inbounds %struct.wiimod_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %in_keys.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_keys.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup.sink.split.i_crit_edge

entry.cleanup.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %entry
  %devtype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %6 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %devtype.i, align 1
  %idxprom3.i = zext i8 %7 to i32
  %arrayidx4.i = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom3.i
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %11)
  %cmp.not25.i = icmp eq i8 %11, 11
  br i1 %cmp.not25.i, label %if.end.i.handler_keys.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.handler_keys.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_keys.exit

for.cond.i:                                       ; preds = %for.body.i
  %incdec.ptr.i = getelementptr i8, ptr %iter.026.i, i32 1
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr.i, align 1
  %cmp.not.i = icmp eq i8 %13, 11
  br i1 %cmp.not.i, label %for.cond.i.handler_keys.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.handler_keys.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_keys.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %14 = phi i8 [ %13, %for.cond.i.for.body.i_crit_edge ], [ %11, %if.end.i.for.body.i_crit_edge ]
  %iter.026.i = phi ptr [ %incdec.ptr.i, %for.cond.i.for.body.i_crit_edge ], [ %9, %if.end.i.for.body.i_crit_edge ]
  %conv.i = zext i8 %14 to i32
  %arrayidx7.i = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx7.i, align 4
  %in_keys8.i = getelementptr inbounds %struct.wiimod_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %in_keys8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %in_keys8.i, align 4
  %tobool9.not.i = icmp eq ptr %18, null
  br i1 %tobool9.not.i, label %for.cond.i, label %for.body.i.cleanup.sink.split.i_crit_edge

for.body.i.cleanup.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.body.i.cleanup.sink.split.i_crit_edge, %entry.cleanup.sink.split.i_crit_edge
  %.lcssa.sink.i = phi ptr [ %5, %entry.cleanup.sink.split.i_crit_edge ], [ %18, %for.body.i.cleanup.sink.split.i_crit_edge ]
  tail call void %.lcssa.sink.i(ptr noundef %wdata, ptr noundef %payload) #8
  br label %handler_keys.exit

handler_keys.exit:                                ; preds = %cleanup.sink.split.i, %for.cond.i.handler_keys.exit_crit_edge, %if.end.i.handler_keys.exit_crit_edge
  %arrayidx = getelementptr i8, ptr %payload, i32 2
  tail call fastcc void @handler_ext(ptr noundef %wdata, ptr noundef %arrayidx, i32 noundef 19)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handler_drm_KAE(ptr noundef %wdata, ptr noundef %payload) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %exttype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 5
  %0 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %exttype.i, align 4
  %idxprom.i = zext i8 %1 to i32
  %arrayidx.i = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %in_keys.i = getelementptr inbounds %struct.wiimod_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %in_keys.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_keys.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup.sink.split.i_crit_edge

entry.cleanup.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %entry
  %devtype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %6 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %devtype.i, align 1
  %idxprom3.i = zext i8 %7 to i32
  %arrayidx4.i = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom3.i
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %11)
  %cmp.not25.i = icmp eq i8 %11, 11
  br i1 %cmp.not25.i, label %if.end.i.handler_keys.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.handler_keys.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_keys.exit

for.cond.i:                                       ; preds = %for.body.i
  %incdec.ptr.i = getelementptr i8, ptr %iter.026.i, i32 1
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr.i, align 1
  %cmp.not.i = icmp eq i8 %13, 11
  br i1 %cmp.not.i, label %for.cond.i.handler_keys.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.handler_keys.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_keys.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %14 = phi i8 [ %13, %for.cond.i.for.body.i_crit_edge ], [ %11, %if.end.i.for.body.i_crit_edge ]
  %iter.026.i = phi ptr [ %incdec.ptr.i, %for.cond.i.for.body.i_crit_edge ], [ %9, %if.end.i.for.body.i_crit_edge ]
  %conv.i = zext i8 %14 to i32
  %arrayidx7.i = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx7.i, align 4
  %in_keys8.i = getelementptr inbounds %struct.wiimod_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %in_keys8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %in_keys8.i, align 4
  %tobool9.not.i = icmp eq ptr %18, null
  br i1 %tobool9.not.i, label %for.cond.i, label %for.body.i.cleanup.sink.split.i_crit_edge

for.body.i.cleanup.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.body.i.cleanup.sink.split.i_crit_edge, %entry.cleanup.sink.split.i_crit_edge
  %.lcssa.sink.i = phi ptr [ %5, %entry.cleanup.sink.split.i_crit_edge ], [ %18, %for.body.i.cleanup.sink.split.i_crit_edge ]
  tail call void %.lcssa.sink.i(ptr noundef %wdata, ptr noundef %payload) #8
  br label %handler_keys.exit

handler_keys.exit:                                ; preds = %cleanup.sink.split.i, %for.cond.i.handler_keys.exit_crit_edge, %if.end.i.handler_keys.exit_crit_edge
  %19 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %exttype.i, align 4
  %idxprom.i6 = zext i8 %20 to i32
  %arrayidx.i7 = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i6
  %21 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i7, align 4
  %in_accel.i = getelementptr inbounds %struct.wiimod_ops, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %in_accel.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %in_accel.i, align 4
  %tobool.not.i8 = icmp eq ptr %24, null
  br i1 %tobool.not.i8, label %if.end.i13, label %handler_keys.exit.cleanup.sink.split.i23_crit_edge

handler_keys.exit.cleanup.sink.split.i23_crit_edge: ; preds = %handler_keys.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i23

if.end.i13:                                       ; preds = %handler_keys.exit
  %devtype.i9 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %25 = ptrtoint ptr %devtype.i9 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %devtype.i9, align 1
  %idxprom3.i10 = zext i8 %26 to i32
  %arrayidx4.i11 = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom3.i10
  %27 = ptrtoint ptr %arrayidx4.i11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx4.i11, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %30)
  %cmp.not25.i12 = icmp eq i8 %30, 11
  br i1 %cmp.not25.i12, label %if.end.i13.handler_accel.exit_crit_edge, label %if.end.i13.for.body.i21_crit_edge

if.end.i13.for.body.i21_crit_edge:                ; preds = %if.end.i13
  br label %for.body.i21

if.end.i13.handler_accel.exit_crit_edge:          ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_accel.exit

for.cond.i16:                                     ; preds = %for.body.i21
  %incdec.ptr.i14 = getelementptr i8, ptr %iter.026.i17, i32 1
  %31 = ptrtoint ptr %incdec.ptr.i14 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %incdec.ptr.i14, align 1
  %cmp.not.i15 = icmp eq i8 %32, 11
  br i1 %cmp.not.i15, label %for.cond.i16.handler_accel.exit_crit_edge, label %for.cond.i16.for.body.i21_crit_edge

for.cond.i16.for.body.i21_crit_edge:              ; preds = %for.cond.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i21

for.cond.i16.handler_accel.exit_crit_edge:        ; preds = %for.cond.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_accel.exit

for.body.i21:                                     ; preds = %for.cond.i16.for.body.i21_crit_edge, %if.end.i13.for.body.i21_crit_edge
  %33 = phi i8 [ %32, %for.cond.i16.for.body.i21_crit_edge ], [ %30, %if.end.i13.for.body.i21_crit_edge ]
  %iter.026.i17 = phi ptr [ %incdec.ptr.i14, %for.cond.i16.for.body.i21_crit_edge ], [ %28, %if.end.i13.for.body.i21_crit_edge ]
  %conv.i18 = zext i8 %33 to i32
  %arrayidx7.i19 = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i18
  %34 = ptrtoint ptr %arrayidx7.i19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx7.i19, align 4
  %in_accel8.i = getelementptr inbounds %struct.wiimod_ops, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %in_accel8.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %in_accel8.i, align 4
  %tobool9.not.i20 = icmp eq ptr %37, null
  br i1 %tobool9.not.i20, label %for.cond.i16, label %for.body.i21.cleanup.sink.split.i23_crit_edge

for.body.i21.cleanup.sink.split.i23_crit_edge:    ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i23

cleanup.sink.split.i23:                           ; preds = %for.body.i21.cleanup.sink.split.i23_crit_edge, %handler_keys.exit.cleanup.sink.split.i23_crit_edge
  %.lcssa.sink.i22 = phi ptr [ %24, %handler_keys.exit.cleanup.sink.split.i23_crit_edge ], [ %37, %for.body.i21.cleanup.sink.split.i23_crit_edge ]
  tail call void %.lcssa.sink.i22(ptr noundef %wdata, ptr noundef %payload) #8
  br label %handler_accel.exit

handler_accel.exit:                               ; preds = %cleanup.sink.split.i23, %for.cond.i16.handler_accel.exit_crit_edge, %if.end.i13.handler_accel.exit_crit_edge
  %arrayidx = getelementptr i8, ptr %payload, i32 5
  tail call fastcc void @handler_ext(ptr noundef %wdata, ptr noundef %arrayidx, i32 noundef 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handler_drm_KIE(ptr noundef %wdata, ptr noundef %payload) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %exttype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 5
  %0 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %exttype.i, align 4
  %idxprom.i = zext i8 %1 to i32
  %arrayidx.i = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %in_keys.i = getelementptr inbounds %struct.wiimod_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %in_keys.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_keys.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup.sink.split.i_crit_edge

entry.cleanup.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %entry
  %devtype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %6 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %devtype.i, align 1
  %idxprom3.i = zext i8 %7 to i32
  %arrayidx4.i = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom3.i
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %11)
  %cmp.not25.i = icmp eq i8 %11, 11
  br i1 %cmp.not25.i, label %if.end.i.handler_keys.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.handler_keys.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_keys.exit

for.cond.i:                                       ; preds = %for.body.i
  %incdec.ptr.i = getelementptr i8, ptr %iter.026.i, i32 1
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr.i, align 1
  %cmp.not.i = icmp eq i8 %13, 11
  br i1 %cmp.not.i, label %for.cond.i.handler_keys.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.handler_keys.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_keys.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %14 = phi i8 [ %13, %for.cond.i.for.body.i_crit_edge ], [ %11, %if.end.i.for.body.i_crit_edge ]
  %iter.026.i = phi ptr [ %incdec.ptr.i, %for.cond.i.for.body.i_crit_edge ], [ %9, %if.end.i.for.body.i_crit_edge ]
  %conv.i = zext i8 %14 to i32
  %arrayidx7.i = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx7.i, align 4
  %in_keys8.i = getelementptr inbounds %struct.wiimod_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %in_keys8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %in_keys8.i, align 4
  %tobool9.not.i = icmp eq ptr %18, null
  br i1 %tobool9.not.i, label %for.cond.i, label %for.body.i.cleanup.sink.split.i_crit_edge

for.body.i.cleanup.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.body.i.cleanup.sink.split.i_crit_edge, %entry.cleanup.sink.split.i_crit_edge
  %.lcssa.sink.i = phi ptr [ %5, %entry.cleanup.sink.split.i_crit_edge ], [ %18, %for.body.i.cleanup.sink.split.i_crit_edge ]
  tail call void %.lcssa.sink.i(ptr noundef %wdata, ptr noundef %payload) #8
  br label %handler_keys.exit

handler_keys.exit:                                ; preds = %cleanup.sink.split.i, %for.cond.i.handler_keys.exit_crit_edge, %if.end.i.handler_keys.exit_crit_edge
  %arrayidx = getelementptr i8, ptr %payload, i32 2
  %19 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %exttype.i, align 4
  %idxprom.i16 = zext i8 %20 to i32
  %arrayidx.i17 = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i16
  %21 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i17, align 4
  %in_ir.i = getelementptr inbounds %struct.wiimod_ops, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %in_ir.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %in_ir.i, align 4
  %tobool.not.i18 = icmp eq ptr %24, null
  br i1 %tobool.not.i18, label %if.end.i20, label %handler_keys.exit.cleanup.sink.split.i27_crit_edge

handler_keys.exit.cleanup.sink.split.i27_crit_edge: ; preds = %handler_keys.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i27

if.end.i20:                                       ; preds = %handler_keys.exit
  %devtype.i19 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %25 = ptrtoint ptr %devtype.i19 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %devtype.i19, align 1
  %idxprom4.i = zext i8 %26 to i32
  %arrayidx5.i = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom4.i
  %27 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx5.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %30)
  %cmp.not29.i = icmp eq i8 %30, 11
  br i1 %cmp.not29.i, label %if.end.i20.handler_ir.exit_crit_edge, label %if.end.i20.for.body.i25_crit_edge

if.end.i20.for.body.i25_crit_edge:                ; preds = %if.end.i20
  br label %for.body.i25

if.end.i20.handler_ir.exit_crit_edge:             ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit

for.cond.i23:                                     ; preds = %for.body.i25
  %incdec.ptr.i21 = getelementptr i8, ptr %iter.030.i, i32 1
  %31 = ptrtoint ptr %incdec.ptr.i21 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %incdec.ptr.i21, align 1
  %cmp.not.i22 = icmp eq i8 %32, 11
  br i1 %cmp.not.i22, label %for.cond.i23.handler_ir.exit_crit_edge, label %for.cond.i23.for.body.i25_crit_edge

for.cond.i23.for.body.i25_crit_edge:              ; preds = %for.cond.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i25

for.cond.i23.handler_ir.exit_crit_edge:           ; preds = %for.cond.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit

for.body.i25:                                     ; preds = %for.cond.i23.for.body.i25_crit_edge, %if.end.i20.for.body.i25_crit_edge
  %33 = phi i8 [ %32, %for.cond.i23.for.body.i25_crit_edge ], [ %30, %if.end.i20.for.body.i25_crit_edge ]
  %iter.030.i = phi ptr [ %incdec.ptr.i21, %for.cond.i23.for.body.i25_crit_edge ], [ %28, %if.end.i20.for.body.i25_crit_edge ]
  %conv.i24 = zext i8 %33 to i32
  %arrayidx8.i = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i24
  %34 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx8.i, align 4
  %in_ir9.i = getelementptr inbounds %struct.wiimod_ops, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %in_ir9.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %in_ir9.i, align 4
  %tobool10.not.i = icmp eq ptr %37, null
  br i1 %tobool10.not.i, label %for.cond.i23, label %for.body.i25.cleanup.sink.split.i27_crit_edge

for.body.i25.cleanup.sink.split.i27_crit_edge:    ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i27

cleanup.sink.split.i27:                           ; preds = %for.body.i25.cleanup.sink.split.i27_crit_edge, %handler_keys.exit.cleanup.sink.split.i27_crit_edge
  %.lcssa.sink.i26 = phi ptr [ %24, %handler_keys.exit.cleanup.sink.split.i27_crit_edge ], [ %37, %for.body.i25.cleanup.sink.split.i27_crit_edge ]
  tail call void %.lcssa.sink.i26(ptr noundef %wdata, ptr noundef %arrayidx, i1 noundef zeroext false, i32 noundef 0) #8
  br label %handler_ir.exit

handler_ir.exit:                                  ; preds = %cleanup.sink.split.i27, %for.cond.i23.handler_ir.exit_crit_edge, %if.end.i20.handler_ir.exit_crit_edge
  %arrayidx1 = getelementptr i8, ptr %payload, i32 4
  %38 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %exttype.i, align 4
  %idxprom.i29 = zext i8 %39 to i32
  %arrayidx.i30 = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i29
  %40 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i30, align 4
  %in_ir.i31 = getelementptr inbounds %struct.wiimod_ops, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %in_ir.i31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %in_ir.i31, align 4
  %tobool.not.i32 = icmp eq ptr %43, null
  br i1 %tobool.not.i32, label %if.end.i37, label %handler_ir.exit.cleanup.sink.split.i48_crit_edge

handler_ir.exit.cleanup.sink.split.i48_crit_edge: ; preds = %handler_ir.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i48

if.end.i37:                                       ; preds = %handler_ir.exit
  %devtype.i33 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %44 = ptrtoint ptr %devtype.i33 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %devtype.i33, align 1
  %idxprom4.i34 = zext i8 %45 to i32
  %arrayidx5.i35 = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom4.i34
  %46 = ptrtoint ptr %arrayidx5.i35 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx5.i35, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %49)
  %cmp.not29.i36 = icmp eq i8 %49, 11
  br i1 %cmp.not29.i36, label %if.end.i37.handler_ir.exit49_crit_edge, label %if.end.i37.for.body.i46_crit_edge

if.end.i37.for.body.i46_crit_edge:                ; preds = %if.end.i37
  br label %for.body.i46

if.end.i37.handler_ir.exit49_crit_edge:           ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit49

for.cond.i40:                                     ; preds = %for.body.i46
  %incdec.ptr.i38 = getelementptr i8, ptr %iter.030.i41, i32 1
  %50 = ptrtoint ptr %incdec.ptr.i38 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %incdec.ptr.i38, align 1
  %cmp.not.i39 = icmp eq i8 %51, 11
  br i1 %cmp.not.i39, label %for.cond.i40.handler_ir.exit49_crit_edge, label %for.cond.i40.for.body.i46_crit_edge

for.cond.i40.for.body.i46_crit_edge:              ; preds = %for.cond.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i46

for.cond.i40.handler_ir.exit49_crit_edge:         ; preds = %for.cond.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit49

for.body.i46:                                     ; preds = %for.cond.i40.for.body.i46_crit_edge, %if.end.i37.for.body.i46_crit_edge
  %52 = phi i8 [ %51, %for.cond.i40.for.body.i46_crit_edge ], [ %49, %if.end.i37.for.body.i46_crit_edge ]
  %iter.030.i41 = phi ptr [ %incdec.ptr.i38, %for.cond.i40.for.body.i46_crit_edge ], [ %47, %if.end.i37.for.body.i46_crit_edge ]
  %conv.i42 = zext i8 %52 to i32
  %arrayidx8.i43 = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i42
  %53 = ptrtoint ptr %arrayidx8.i43 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx8.i43, align 4
  %in_ir9.i44 = getelementptr inbounds %struct.wiimod_ops, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %in_ir9.i44 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %in_ir9.i44, align 4
  %tobool10.not.i45 = icmp eq ptr %56, null
  br i1 %tobool10.not.i45, label %for.cond.i40, label %for.body.i46.cleanup.sink.split.i48_crit_edge

for.body.i46.cleanup.sink.split.i48_crit_edge:    ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i48

cleanup.sink.split.i48:                           ; preds = %for.body.i46.cleanup.sink.split.i48_crit_edge, %handler_ir.exit.cleanup.sink.split.i48_crit_edge
  %.lcssa.sink.i47 = phi ptr [ %43, %handler_ir.exit.cleanup.sink.split.i48_crit_edge ], [ %56, %for.body.i46.cleanup.sink.split.i48_crit_edge ]
  tail call void %.lcssa.sink.i47(ptr noundef %wdata, ptr noundef %arrayidx1, i1 noundef zeroext true, i32 noundef 1) #8
  br label %handler_ir.exit49

handler_ir.exit49:                                ; preds = %cleanup.sink.split.i48, %for.cond.i40.handler_ir.exit49_crit_edge, %if.end.i37.handler_ir.exit49_crit_edge
  %arrayidx2 = getelementptr i8, ptr %payload, i32 7
  %57 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %exttype.i, align 4
  %idxprom.i51 = zext i8 %58 to i32
  %arrayidx.i52 = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i51
  %59 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i52, align 4
  %in_ir.i53 = getelementptr inbounds %struct.wiimod_ops, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %in_ir.i53 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %in_ir.i53, align 4
  %tobool.not.i54 = icmp eq ptr %62, null
  br i1 %tobool.not.i54, label %if.end.i59, label %handler_ir.exit49.cleanup.sink.split.i70_crit_edge

handler_ir.exit49.cleanup.sink.split.i70_crit_edge: ; preds = %handler_ir.exit49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i70

if.end.i59:                                       ; preds = %handler_ir.exit49
  %devtype.i55 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %63 = ptrtoint ptr %devtype.i55 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %devtype.i55, align 1
  %idxprom4.i56 = zext i8 %64 to i32
  %arrayidx5.i57 = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom4.i56
  %65 = ptrtoint ptr %arrayidx5.i57 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx5.i57, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %66, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %68)
  %cmp.not29.i58 = icmp eq i8 %68, 11
  br i1 %cmp.not29.i58, label %if.end.i59.handler_ir.exit71_crit_edge, label %if.end.i59.for.body.i68_crit_edge

if.end.i59.for.body.i68_crit_edge:                ; preds = %if.end.i59
  br label %for.body.i68

if.end.i59.handler_ir.exit71_crit_edge:           ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit71

for.cond.i62:                                     ; preds = %for.body.i68
  %incdec.ptr.i60 = getelementptr i8, ptr %iter.030.i63, i32 1
  %69 = ptrtoint ptr %incdec.ptr.i60 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %incdec.ptr.i60, align 1
  %cmp.not.i61 = icmp eq i8 %70, 11
  br i1 %cmp.not.i61, label %for.cond.i62.handler_ir.exit71_crit_edge, label %for.cond.i62.for.body.i68_crit_edge

for.cond.i62.for.body.i68_crit_edge:              ; preds = %for.cond.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i68

for.cond.i62.handler_ir.exit71_crit_edge:         ; preds = %for.cond.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit71

for.body.i68:                                     ; preds = %for.cond.i62.for.body.i68_crit_edge, %if.end.i59.for.body.i68_crit_edge
  %71 = phi i8 [ %70, %for.cond.i62.for.body.i68_crit_edge ], [ %68, %if.end.i59.for.body.i68_crit_edge ]
  %iter.030.i63 = phi ptr [ %incdec.ptr.i60, %for.cond.i62.for.body.i68_crit_edge ], [ %66, %if.end.i59.for.body.i68_crit_edge ]
  %conv.i64 = zext i8 %71 to i32
  %arrayidx8.i65 = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i64
  %72 = ptrtoint ptr %arrayidx8.i65 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx8.i65, align 4
  %in_ir9.i66 = getelementptr inbounds %struct.wiimod_ops, ptr %73, i32 0, i32 6
  %74 = ptrtoint ptr %in_ir9.i66 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %in_ir9.i66, align 4
  %tobool10.not.i67 = icmp eq ptr %75, null
  br i1 %tobool10.not.i67, label %for.cond.i62, label %for.body.i68.cleanup.sink.split.i70_crit_edge

for.body.i68.cleanup.sink.split.i70_crit_edge:    ; preds = %for.body.i68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i70

cleanup.sink.split.i70:                           ; preds = %for.body.i68.cleanup.sink.split.i70_crit_edge, %handler_ir.exit49.cleanup.sink.split.i70_crit_edge
  %.lcssa.sink.i69 = phi ptr [ %62, %handler_ir.exit49.cleanup.sink.split.i70_crit_edge ], [ %75, %for.body.i68.cleanup.sink.split.i70_crit_edge ]
  tail call void %.lcssa.sink.i69(ptr noundef %wdata, ptr noundef %arrayidx2, i1 noundef zeroext false, i32 noundef 2) #8
  br label %handler_ir.exit71

handler_ir.exit71:                                ; preds = %cleanup.sink.split.i70, %for.cond.i62.handler_ir.exit71_crit_edge, %if.end.i59.handler_ir.exit71_crit_edge
  %arrayidx3 = getelementptr i8, ptr %payload, i32 9
  %76 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %exttype.i, align 4
  %idxprom.i73 = zext i8 %77 to i32
  %arrayidx.i74 = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i73
  %78 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i74, align 4
  %in_ir.i75 = getelementptr inbounds %struct.wiimod_ops, ptr %79, i32 0, i32 6
  %80 = ptrtoint ptr %in_ir.i75 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %in_ir.i75, align 4
  %tobool.not.i76 = icmp eq ptr %81, null
  br i1 %tobool.not.i76, label %if.end.i81, label %handler_ir.exit71.cleanup.sink.split.i92_crit_edge

handler_ir.exit71.cleanup.sink.split.i92_crit_edge: ; preds = %handler_ir.exit71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i92

if.end.i81:                                       ; preds = %handler_ir.exit71
  %devtype.i77 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %82 = ptrtoint ptr %devtype.i77 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %devtype.i77, align 1
  %idxprom4.i78 = zext i8 %83 to i32
  %arrayidx5.i79 = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom4.i78
  %84 = ptrtoint ptr %arrayidx5.i79 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx5.i79, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %85, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %87)
  %cmp.not29.i80 = icmp eq i8 %87, 11
  br i1 %cmp.not29.i80, label %if.end.i81.handler_ir.exit93_crit_edge, label %if.end.i81.for.body.i90_crit_edge

if.end.i81.for.body.i90_crit_edge:                ; preds = %if.end.i81
  br label %for.body.i90

if.end.i81.handler_ir.exit93_crit_edge:           ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit93

for.cond.i84:                                     ; preds = %for.body.i90
  %incdec.ptr.i82 = getelementptr i8, ptr %iter.030.i85, i32 1
  %88 = ptrtoint ptr %incdec.ptr.i82 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %incdec.ptr.i82, align 1
  %cmp.not.i83 = icmp eq i8 %89, 11
  br i1 %cmp.not.i83, label %for.cond.i84.handler_ir.exit93_crit_edge, label %for.cond.i84.for.body.i90_crit_edge

for.cond.i84.for.body.i90_crit_edge:              ; preds = %for.cond.i84
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i90

for.cond.i84.handler_ir.exit93_crit_edge:         ; preds = %for.cond.i84
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit93

for.body.i90:                                     ; preds = %for.cond.i84.for.body.i90_crit_edge, %if.end.i81.for.body.i90_crit_edge
  %90 = phi i8 [ %89, %for.cond.i84.for.body.i90_crit_edge ], [ %87, %if.end.i81.for.body.i90_crit_edge ]
  %iter.030.i85 = phi ptr [ %incdec.ptr.i82, %for.cond.i84.for.body.i90_crit_edge ], [ %85, %if.end.i81.for.body.i90_crit_edge ]
  %conv.i86 = zext i8 %90 to i32
  %arrayidx8.i87 = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i86
  %91 = ptrtoint ptr %arrayidx8.i87 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx8.i87, align 4
  %in_ir9.i88 = getelementptr inbounds %struct.wiimod_ops, ptr %92, i32 0, i32 6
  %93 = ptrtoint ptr %in_ir9.i88 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %in_ir9.i88, align 4
  %tobool10.not.i89 = icmp eq ptr %94, null
  br i1 %tobool10.not.i89, label %for.cond.i84, label %for.body.i90.cleanup.sink.split.i92_crit_edge

for.body.i90.cleanup.sink.split.i92_crit_edge:    ; preds = %for.body.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i92

cleanup.sink.split.i92:                           ; preds = %for.body.i90.cleanup.sink.split.i92_crit_edge, %handler_ir.exit71.cleanup.sink.split.i92_crit_edge
  %.lcssa.sink.i91 = phi ptr [ %81, %handler_ir.exit71.cleanup.sink.split.i92_crit_edge ], [ %94, %for.body.i90.cleanup.sink.split.i92_crit_edge ]
  tail call void %.lcssa.sink.i91(ptr noundef %wdata, ptr noundef %arrayidx3, i1 noundef zeroext true, i32 noundef 3) #8
  br label %handler_ir.exit93

handler_ir.exit93:                                ; preds = %cleanup.sink.split.i92, %for.cond.i84.handler_ir.exit93_crit_edge, %if.end.i81.handler_ir.exit93_crit_edge
  %arrayidx4 = getelementptr i8, ptr %payload, i32 12
  tail call fastcc void @handler_ext(ptr noundef %wdata, ptr noundef %arrayidx4, i32 noundef 9)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handler_drm_KAIE(ptr noundef %wdata, ptr noundef %payload) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %exttype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 5
  %0 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %exttype.i, align 4
  %idxprom.i = zext i8 %1 to i32
  %arrayidx.i = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %in_keys.i = getelementptr inbounds %struct.wiimod_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %in_keys.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_keys.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup.sink.split.i_crit_edge

entry.cleanup.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %entry
  %devtype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %6 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %devtype.i, align 1
  %idxprom3.i = zext i8 %7 to i32
  %arrayidx4.i = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom3.i
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %11)
  %cmp.not25.i = icmp eq i8 %11, 11
  br i1 %cmp.not25.i, label %if.end.i.handler_keys.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.handler_keys.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_keys.exit

for.cond.i:                                       ; preds = %for.body.i
  %incdec.ptr.i = getelementptr i8, ptr %iter.026.i, i32 1
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr.i, align 1
  %cmp.not.i = icmp eq i8 %13, 11
  br i1 %cmp.not.i, label %for.cond.i.handler_keys.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.handler_keys.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_keys.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %14 = phi i8 [ %13, %for.cond.i.for.body.i_crit_edge ], [ %11, %if.end.i.for.body.i_crit_edge ]
  %iter.026.i = phi ptr [ %incdec.ptr.i, %for.cond.i.for.body.i_crit_edge ], [ %9, %if.end.i.for.body.i_crit_edge ]
  %conv.i = zext i8 %14 to i32
  %arrayidx7.i = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx7.i, align 4
  %in_keys8.i = getelementptr inbounds %struct.wiimod_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %in_keys8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %in_keys8.i, align 4
  %tobool9.not.i = icmp eq ptr %18, null
  br i1 %tobool9.not.i, label %for.cond.i, label %for.body.i.cleanup.sink.split.i_crit_edge

for.body.i.cleanup.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.body.i.cleanup.sink.split.i_crit_edge, %entry.cleanup.sink.split.i_crit_edge
  %.lcssa.sink.i = phi ptr [ %5, %entry.cleanup.sink.split.i_crit_edge ], [ %18, %for.body.i.cleanup.sink.split.i_crit_edge ]
  tail call void %.lcssa.sink.i(ptr noundef %wdata, ptr noundef %payload) #8
  br label %handler_keys.exit

handler_keys.exit:                                ; preds = %cleanup.sink.split.i, %for.cond.i.handler_keys.exit_crit_edge, %if.end.i.handler_keys.exit_crit_edge
  %19 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %exttype.i, align 4
  %idxprom.i18 = zext i8 %20 to i32
  %arrayidx.i19 = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i18
  %21 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i19, align 4
  %in_accel.i = getelementptr inbounds %struct.wiimod_ops, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %in_accel.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %in_accel.i, align 4
  %tobool.not.i20 = icmp eq ptr %24, null
  br i1 %tobool.not.i20, label %if.end.i25, label %handler_keys.exit.cleanup.sink.split.i35_crit_edge

handler_keys.exit.cleanup.sink.split.i35_crit_edge: ; preds = %handler_keys.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i35

if.end.i25:                                       ; preds = %handler_keys.exit
  %devtype.i21 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %25 = ptrtoint ptr %devtype.i21 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %devtype.i21, align 1
  %idxprom3.i22 = zext i8 %26 to i32
  %arrayidx4.i23 = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom3.i22
  %27 = ptrtoint ptr %arrayidx4.i23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx4.i23, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %30)
  %cmp.not25.i24 = icmp eq i8 %30, 11
  br i1 %cmp.not25.i24, label %if.end.i25.handler_accel.exit_crit_edge, label %if.end.i25.for.body.i33_crit_edge

if.end.i25.for.body.i33_crit_edge:                ; preds = %if.end.i25
  br label %for.body.i33

if.end.i25.handler_accel.exit_crit_edge:          ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_accel.exit

for.cond.i28:                                     ; preds = %for.body.i33
  %incdec.ptr.i26 = getelementptr i8, ptr %iter.026.i29, i32 1
  %31 = ptrtoint ptr %incdec.ptr.i26 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %incdec.ptr.i26, align 1
  %cmp.not.i27 = icmp eq i8 %32, 11
  br i1 %cmp.not.i27, label %for.cond.i28.handler_accel.exit_crit_edge, label %for.cond.i28.for.body.i33_crit_edge

for.cond.i28.for.body.i33_crit_edge:              ; preds = %for.cond.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i33

for.cond.i28.handler_accel.exit_crit_edge:        ; preds = %for.cond.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_accel.exit

for.body.i33:                                     ; preds = %for.cond.i28.for.body.i33_crit_edge, %if.end.i25.for.body.i33_crit_edge
  %33 = phi i8 [ %32, %for.cond.i28.for.body.i33_crit_edge ], [ %30, %if.end.i25.for.body.i33_crit_edge ]
  %iter.026.i29 = phi ptr [ %incdec.ptr.i26, %for.cond.i28.for.body.i33_crit_edge ], [ %28, %if.end.i25.for.body.i33_crit_edge ]
  %conv.i30 = zext i8 %33 to i32
  %arrayidx7.i31 = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i30
  %34 = ptrtoint ptr %arrayidx7.i31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx7.i31, align 4
  %in_accel8.i = getelementptr inbounds %struct.wiimod_ops, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %in_accel8.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %in_accel8.i, align 4
  %tobool9.not.i32 = icmp eq ptr %37, null
  br i1 %tobool9.not.i32, label %for.cond.i28, label %for.body.i33.cleanup.sink.split.i35_crit_edge

for.body.i33.cleanup.sink.split.i35_crit_edge:    ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i35

cleanup.sink.split.i35:                           ; preds = %for.body.i33.cleanup.sink.split.i35_crit_edge, %handler_keys.exit.cleanup.sink.split.i35_crit_edge
  %.lcssa.sink.i34 = phi ptr [ %24, %handler_keys.exit.cleanup.sink.split.i35_crit_edge ], [ %37, %for.body.i33.cleanup.sink.split.i35_crit_edge ]
  tail call void %.lcssa.sink.i34(ptr noundef %wdata, ptr noundef %payload) #8
  br label %handler_accel.exit

handler_accel.exit:                               ; preds = %cleanup.sink.split.i35, %for.cond.i28.handler_accel.exit_crit_edge, %if.end.i25.handler_accel.exit_crit_edge
  %arrayidx = getelementptr i8, ptr %payload, i32 5
  %38 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %exttype.i, align 4
  %idxprom.i37 = zext i8 %39 to i32
  %arrayidx.i38 = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i37
  %40 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i38, align 4
  %in_ir.i = getelementptr inbounds %struct.wiimod_ops, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %in_ir.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %in_ir.i, align 4
  %tobool.not.i39 = icmp eq ptr %43, null
  br i1 %tobool.not.i39, label %if.end.i41, label %handler_accel.exit.cleanup.sink.split.i48_crit_edge

handler_accel.exit.cleanup.sink.split.i48_crit_edge: ; preds = %handler_accel.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i48

if.end.i41:                                       ; preds = %handler_accel.exit
  %devtype.i40 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %44 = ptrtoint ptr %devtype.i40 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %devtype.i40, align 1
  %idxprom4.i = zext i8 %45 to i32
  %arrayidx5.i = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom4.i
  %46 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx5.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %49)
  %cmp.not29.i = icmp eq i8 %49, 11
  br i1 %cmp.not29.i, label %if.end.i41.handler_ir.exit_crit_edge, label %if.end.i41.for.body.i46_crit_edge

if.end.i41.for.body.i46_crit_edge:                ; preds = %if.end.i41
  br label %for.body.i46

if.end.i41.handler_ir.exit_crit_edge:             ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit

for.cond.i44:                                     ; preds = %for.body.i46
  %incdec.ptr.i42 = getelementptr i8, ptr %iter.030.i, i32 1
  %50 = ptrtoint ptr %incdec.ptr.i42 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %incdec.ptr.i42, align 1
  %cmp.not.i43 = icmp eq i8 %51, 11
  br i1 %cmp.not.i43, label %for.cond.i44.handler_ir.exit_crit_edge, label %for.cond.i44.for.body.i46_crit_edge

for.cond.i44.for.body.i46_crit_edge:              ; preds = %for.cond.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i46

for.cond.i44.handler_ir.exit_crit_edge:           ; preds = %for.cond.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit

for.body.i46:                                     ; preds = %for.cond.i44.for.body.i46_crit_edge, %if.end.i41.for.body.i46_crit_edge
  %52 = phi i8 [ %51, %for.cond.i44.for.body.i46_crit_edge ], [ %49, %if.end.i41.for.body.i46_crit_edge ]
  %iter.030.i = phi ptr [ %incdec.ptr.i42, %for.cond.i44.for.body.i46_crit_edge ], [ %47, %if.end.i41.for.body.i46_crit_edge ]
  %conv.i45 = zext i8 %52 to i32
  %arrayidx8.i = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i45
  %53 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx8.i, align 4
  %in_ir9.i = getelementptr inbounds %struct.wiimod_ops, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %in_ir9.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %in_ir9.i, align 4
  %tobool10.not.i = icmp eq ptr %56, null
  br i1 %tobool10.not.i, label %for.cond.i44, label %for.body.i46.cleanup.sink.split.i48_crit_edge

for.body.i46.cleanup.sink.split.i48_crit_edge:    ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i48

cleanup.sink.split.i48:                           ; preds = %for.body.i46.cleanup.sink.split.i48_crit_edge, %handler_accel.exit.cleanup.sink.split.i48_crit_edge
  %.lcssa.sink.i47 = phi ptr [ %43, %handler_accel.exit.cleanup.sink.split.i48_crit_edge ], [ %56, %for.body.i46.cleanup.sink.split.i48_crit_edge ]
  tail call void %.lcssa.sink.i47(ptr noundef %wdata, ptr noundef %arrayidx, i1 noundef zeroext false, i32 noundef 0) #8
  br label %handler_ir.exit

handler_ir.exit:                                  ; preds = %cleanup.sink.split.i48, %for.cond.i44.handler_ir.exit_crit_edge, %if.end.i41.handler_ir.exit_crit_edge
  %arrayidx1 = getelementptr i8, ptr %payload, i32 7
  %57 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %exttype.i, align 4
  %idxprom.i50 = zext i8 %58 to i32
  %arrayidx.i51 = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i50
  %59 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i51, align 4
  %in_ir.i52 = getelementptr inbounds %struct.wiimod_ops, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %in_ir.i52 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %in_ir.i52, align 4
  %tobool.not.i53 = icmp eq ptr %62, null
  br i1 %tobool.not.i53, label %if.end.i58, label %handler_ir.exit.cleanup.sink.split.i69_crit_edge

handler_ir.exit.cleanup.sink.split.i69_crit_edge: ; preds = %handler_ir.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i69

if.end.i58:                                       ; preds = %handler_ir.exit
  %devtype.i54 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %63 = ptrtoint ptr %devtype.i54 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %devtype.i54, align 1
  %idxprom4.i55 = zext i8 %64 to i32
  %arrayidx5.i56 = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom4.i55
  %65 = ptrtoint ptr %arrayidx5.i56 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx5.i56, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %66, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %68)
  %cmp.not29.i57 = icmp eq i8 %68, 11
  br i1 %cmp.not29.i57, label %if.end.i58.handler_ir.exit70_crit_edge, label %if.end.i58.for.body.i67_crit_edge

if.end.i58.for.body.i67_crit_edge:                ; preds = %if.end.i58
  br label %for.body.i67

if.end.i58.handler_ir.exit70_crit_edge:           ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit70

for.cond.i61:                                     ; preds = %for.body.i67
  %incdec.ptr.i59 = getelementptr i8, ptr %iter.030.i62, i32 1
  %69 = ptrtoint ptr %incdec.ptr.i59 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %incdec.ptr.i59, align 1
  %cmp.not.i60 = icmp eq i8 %70, 11
  br i1 %cmp.not.i60, label %for.cond.i61.handler_ir.exit70_crit_edge, label %for.cond.i61.for.body.i67_crit_edge

for.cond.i61.for.body.i67_crit_edge:              ; preds = %for.cond.i61
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i67

for.cond.i61.handler_ir.exit70_crit_edge:         ; preds = %for.cond.i61
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit70

for.body.i67:                                     ; preds = %for.cond.i61.for.body.i67_crit_edge, %if.end.i58.for.body.i67_crit_edge
  %71 = phi i8 [ %70, %for.cond.i61.for.body.i67_crit_edge ], [ %68, %if.end.i58.for.body.i67_crit_edge ]
  %iter.030.i62 = phi ptr [ %incdec.ptr.i59, %for.cond.i61.for.body.i67_crit_edge ], [ %66, %if.end.i58.for.body.i67_crit_edge ]
  %conv.i63 = zext i8 %71 to i32
  %arrayidx8.i64 = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i63
  %72 = ptrtoint ptr %arrayidx8.i64 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx8.i64, align 4
  %in_ir9.i65 = getelementptr inbounds %struct.wiimod_ops, ptr %73, i32 0, i32 6
  %74 = ptrtoint ptr %in_ir9.i65 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %in_ir9.i65, align 4
  %tobool10.not.i66 = icmp eq ptr %75, null
  br i1 %tobool10.not.i66, label %for.cond.i61, label %for.body.i67.cleanup.sink.split.i69_crit_edge

for.body.i67.cleanup.sink.split.i69_crit_edge:    ; preds = %for.body.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i69

cleanup.sink.split.i69:                           ; preds = %for.body.i67.cleanup.sink.split.i69_crit_edge, %handler_ir.exit.cleanup.sink.split.i69_crit_edge
  %.lcssa.sink.i68 = phi ptr [ %62, %handler_ir.exit.cleanup.sink.split.i69_crit_edge ], [ %75, %for.body.i67.cleanup.sink.split.i69_crit_edge ]
  tail call void %.lcssa.sink.i68(ptr noundef %wdata, ptr noundef %arrayidx1, i1 noundef zeroext true, i32 noundef 1) #8
  br label %handler_ir.exit70

handler_ir.exit70:                                ; preds = %cleanup.sink.split.i69, %for.cond.i61.handler_ir.exit70_crit_edge, %if.end.i58.handler_ir.exit70_crit_edge
  %arrayidx2 = getelementptr i8, ptr %payload, i32 10
  %76 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %exttype.i, align 4
  %idxprom.i72 = zext i8 %77 to i32
  %arrayidx.i73 = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i72
  %78 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i73, align 4
  %in_ir.i74 = getelementptr inbounds %struct.wiimod_ops, ptr %79, i32 0, i32 6
  %80 = ptrtoint ptr %in_ir.i74 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %in_ir.i74, align 4
  %tobool.not.i75 = icmp eq ptr %81, null
  br i1 %tobool.not.i75, label %if.end.i80, label %handler_ir.exit70.cleanup.sink.split.i91_crit_edge

handler_ir.exit70.cleanup.sink.split.i91_crit_edge: ; preds = %handler_ir.exit70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i91

if.end.i80:                                       ; preds = %handler_ir.exit70
  %devtype.i76 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %82 = ptrtoint ptr %devtype.i76 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %devtype.i76, align 1
  %idxprom4.i77 = zext i8 %83 to i32
  %arrayidx5.i78 = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom4.i77
  %84 = ptrtoint ptr %arrayidx5.i78 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx5.i78, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %85, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %87)
  %cmp.not29.i79 = icmp eq i8 %87, 11
  br i1 %cmp.not29.i79, label %if.end.i80.handler_ir.exit92_crit_edge, label %if.end.i80.for.body.i89_crit_edge

if.end.i80.for.body.i89_crit_edge:                ; preds = %if.end.i80
  br label %for.body.i89

if.end.i80.handler_ir.exit92_crit_edge:           ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit92

for.cond.i83:                                     ; preds = %for.body.i89
  %incdec.ptr.i81 = getelementptr i8, ptr %iter.030.i84, i32 1
  %88 = ptrtoint ptr %incdec.ptr.i81 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %incdec.ptr.i81, align 1
  %cmp.not.i82 = icmp eq i8 %89, 11
  br i1 %cmp.not.i82, label %for.cond.i83.handler_ir.exit92_crit_edge, label %for.cond.i83.for.body.i89_crit_edge

for.cond.i83.for.body.i89_crit_edge:              ; preds = %for.cond.i83
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i89

for.cond.i83.handler_ir.exit92_crit_edge:         ; preds = %for.cond.i83
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit92

for.body.i89:                                     ; preds = %for.cond.i83.for.body.i89_crit_edge, %if.end.i80.for.body.i89_crit_edge
  %90 = phi i8 [ %89, %for.cond.i83.for.body.i89_crit_edge ], [ %87, %if.end.i80.for.body.i89_crit_edge ]
  %iter.030.i84 = phi ptr [ %incdec.ptr.i81, %for.cond.i83.for.body.i89_crit_edge ], [ %85, %if.end.i80.for.body.i89_crit_edge ]
  %conv.i85 = zext i8 %90 to i32
  %arrayidx8.i86 = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i85
  %91 = ptrtoint ptr %arrayidx8.i86 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx8.i86, align 4
  %in_ir9.i87 = getelementptr inbounds %struct.wiimod_ops, ptr %92, i32 0, i32 6
  %93 = ptrtoint ptr %in_ir9.i87 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %in_ir9.i87, align 4
  %tobool10.not.i88 = icmp eq ptr %94, null
  br i1 %tobool10.not.i88, label %for.cond.i83, label %for.body.i89.cleanup.sink.split.i91_crit_edge

for.body.i89.cleanup.sink.split.i91_crit_edge:    ; preds = %for.body.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i91

cleanup.sink.split.i91:                           ; preds = %for.body.i89.cleanup.sink.split.i91_crit_edge, %handler_ir.exit70.cleanup.sink.split.i91_crit_edge
  %.lcssa.sink.i90 = phi ptr [ %81, %handler_ir.exit70.cleanup.sink.split.i91_crit_edge ], [ %94, %for.body.i89.cleanup.sink.split.i91_crit_edge ]
  tail call void %.lcssa.sink.i90(ptr noundef %wdata, ptr noundef %arrayidx2, i1 noundef zeroext false, i32 noundef 2) #8
  br label %handler_ir.exit92

handler_ir.exit92:                                ; preds = %cleanup.sink.split.i91, %for.cond.i83.handler_ir.exit92_crit_edge, %if.end.i80.handler_ir.exit92_crit_edge
  %arrayidx3 = getelementptr i8, ptr %payload, i32 12
  %95 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %exttype.i, align 4
  %idxprom.i94 = zext i8 %96 to i32
  %arrayidx.i95 = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i94
  %97 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.i95, align 4
  %in_ir.i96 = getelementptr inbounds %struct.wiimod_ops, ptr %98, i32 0, i32 6
  %99 = ptrtoint ptr %in_ir.i96 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %in_ir.i96, align 4
  %tobool.not.i97 = icmp eq ptr %100, null
  br i1 %tobool.not.i97, label %if.end.i102, label %handler_ir.exit92.cleanup.sink.split.i113_crit_edge

handler_ir.exit92.cleanup.sink.split.i113_crit_edge: ; preds = %handler_ir.exit92
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i113

if.end.i102:                                      ; preds = %handler_ir.exit92
  %devtype.i98 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %101 = ptrtoint ptr %devtype.i98 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %devtype.i98, align 1
  %idxprom4.i99 = zext i8 %102 to i32
  %arrayidx5.i100 = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom4.i99
  %103 = ptrtoint ptr %arrayidx5.i100 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx5.i100, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %104, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %106)
  %cmp.not29.i101 = icmp eq i8 %106, 11
  br i1 %cmp.not29.i101, label %if.end.i102.handler_ir.exit114_crit_edge, label %if.end.i102.for.body.i111_crit_edge

if.end.i102.for.body.i111_crit_edge:              ; preds = %if.end.i102
  br label %for.body.i111

if.end.i102.handler_ir.exit114_crit_edge:         ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit114

for.cond.i105:                                    ; preds = %for.body.i111
  %incdec.ptr.i103 = getelementptr i8, ptr %iter.030.i106, i32 1
  %107 = ptrtoint ptr %incdec.ptr.i103 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %incdec.ptr.i103, align 1
  %cmp.not.i104 = icmp eq i8 %108, 11
  br i1 %cmp.not.i104, label %for.cond.i105.handler_ir.exit114_crit_edge, label %for.cond.i105.for.body.i111_crit_edge

for.cond.i105.for.body.i111_crit_edge:            ; preds = %for.cond.i105
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i111

for.cond.i105.handler_ir.exit114_crit_edge:       ; preds = %for.cond.i105
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit114

for.body.i111:                                    ; preds = %for.cond.i105.for.body.i111_crit_edge, %if.end.i102.for.body.i111_crit_edge
  %109 = phi i8 [ %108, %for.cond.i105.for.body.i111_crit_edge ], [ %106, %if.end.i102.for.body.i111_crit_edge ]
  %iter.030.i106 = phi ptr [ %incdec.ptr.i103, %for.cond.i105.for.body.i111_crit_edge ], [ %104, %if.end.i102.for.body.i111_crit_edge ]
  %conv.i107 = zext i8 %109 to i32
  %arrayidx8.i108 = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i107
  %110 = ptrtoint ptr %arrayidx8.i108 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx8.i108, align 4
  %in_ir9.i109 = getelementptr inbounds %struct.wiimod_ops, ptr %111, i32 0, i32 6
  %112 = ptrtoint ptr %in_ir9.i109 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %in_ir9.i109, align 4
  %tobool10.not.i110 = icmp eq ptr %113, null
  br i1 %tobool10.not.i110, label %for.cond.i105, label %for.body.i111.cleanup.sink.split.i113_crit_edge

for.body.i111.cleanup.sink.split.i113_crit_edge:  ; preds = %for.body.i111
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i113

cleanup.sink.split.i113:                          ; preds = %for.body.i111.cleanup.sink.split.i113_crit_edge, %handler_ir.exit92.cleanup.sink.split.i113_crit_edge
  %.lcssa.sink.i112 = phi ptr [ %100, %handler_ir.exit92.cleanup.sink.split.i113_crit_edge ], [ %113, %for.body.i111.cleanup.sink.split.i113_crit_edge ]
  tail call void %.lcssa.sink.i112(ptr noundef %wdata, ptr noundef %arrayidx3, i1 noundef zeroext true, i32 noundef 3) #8
  br label %handler_ir.exit114

handler_ir.exit114:                               ; preds = %cleanup.sink.split.i113, %for.cond.i105.handler_ir.exit114_crit_edge, %if.end.i102.handler_ir.exit114_crit_edge
  %arrayidx4 = getelementptr i8, ptr %payload, i32 15
  tail call fastcc void @handler_ext(ptr noundef %wdata, ptr noundef %arrayidx4, i32 noundef 6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handler_drm_E(ptr noundef %wdata, ptr noundef %payload) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @handler_ext(ptr noundef %wdata, ptr noundef %payload, i32 noundef 21)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handler_drm_SKAI1(ptr noundef %wdata, ptr noundef %payload) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %exttype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 5
  %0 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %exttype.i, align 4
  %idxprom.i = zext i8 %1 to i32
  %arrayidx.i = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %in_keys.i = getelementptr inbounds %struct.wiimod_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %in_keys.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_keys.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup.sink.split.i_crit_edge

entry.cleanup.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %entry
  %devtype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %6 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %devtype.i, align 1
  %idxprom3.i = zext i8 %7 to i32
  %arrayidx4.i = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom3.i
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %11)
  %cmp.not25.i = icmp eq i8 %11, 11
  br i1 %cmp.not25.i, label %if.end.i.handler_keys.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.handler_keys.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_keys.exit

for.cond.i:                                       ; preds = %for.body.i
  %incdec.ptr.i = getelementptr i8, ptr %iter.026.i, i32 1
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr.i, align 1
  %cmp.not.i = icmp eq i8 %13, 11
  br i1 %cmp.not.i, label %for.cond.i.handler_keys.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.handler_keys.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_keys.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %14 = phi i8 [ %13, %for.cond.i.for.body.i_crit_edge ], [ %11, %if.end.i.for.body.i_crit_edge ]
  %iter.026.i = phi ptr [ %incdec.ptr.i, %for.cond.i.for.body.i_crit_edge ], [ %9, %if.end.i.for.body.i_crit_edge ]
  %conv.i = zext i8 %14 to i32
  %arrayidx7.i = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx7.i, align 4
  %in_keys8.i = getelementptr inbounds %struct.wiimod_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %in_keys8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %in_keys8.i, align 4
  %tobool9.not.i = icmp eq ptr %18, null
  br i1 %tobool9.not.i, label %for.cond.i, label %for.body.i.cleanup.sink.split.i_crit_edge

for.body.i.cleanup.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.body.i.cleanup.sink.split.i_crit_edge, %entry.cleanup.sink.split.i_crit_edge
  %.lcssa.sink.i = phi ptr [ %5, %entry.cleanup.sink.split.i_crit_edge ], [ %18, %for.body.i.cleanup.sink.split.i_crit_edge ]
  tail call void %.lcssa.sink.i(ptr noundef %wdata, ptr noundef %payload) #8
  br label %handler_keys.exit

handler_keys.exit:                                ; preds = %cleanup.sink.split.i, %for.cond.i.handler_keys.exit_crit_edge, %if.end.i.handler_keys.exit_crit_edge
  %arrayidx = getelementptr i8, ptr %payload, i32 2
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %accel_split = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 2
  %21 = ptrtoint ptr %accel_split to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %accel_split, align 4
  %22 = ptrtoint ptr %payload to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %payload, align 1
  %24 = lshr i8 %23, 1
  %25 = and i8 %24, 48
  %arrayidx6 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 2, i32 1
  %26 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx6, align 1
  %arrayidx7 = getelementptr i8, ptr %payload, i32 1
  %27 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx7, align 1
  %shl = shl i8 %28, 1
  %and9 = and i8 %shl, -64
  %or = or i8 %and9, %25
  store i8 %or, ptr %arrayidx6, align 1
  %arrayidx15 = getelementptr i8, ptr %payload, i32 3
  %29 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %exttype.i, align 4
  %idxprom.i28 = zext i8 %30 to i32
  %arrayidx.i29 = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i28
  %31 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i29, align 4
  %in_ir.i = getelementptr inbounds %struct.wiimod_ops, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %in_ir.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %in_ir.i, align 4
  %tobool.not.i30 = icmp eq ptr %34, null
  br i1 %tobool.not.i30, label %if.end.i32, label %handler_keys.exit.cleanup.sink.split.i39_crit_edge

handler_keys.exit.cleanup.sink.split.i39_crit_edge: ; preds = %handler_keys.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i39

if.end.i32:                                       ; preds = %handler_keys.exit
  %devtype.i31 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %35 = ptrtoint ptr %devtype.i31 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %devtype.i31, align 1
  %idxprom4.i = zext i8 %36 to i32
  %arrayidx5.i = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom4.i
  %37 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx5.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %40)
  %cmp.not29.i = icmp eq i8 %40, 11
  br i1 %cmp.not29.i, label %if.end.i32.handler_ir.exit_crit_edge, label %if.end.i32.for.body.i37_crit_edge

if.end.i32.for.body.i37_crit_edge:                ; preds = %if.end.i32
  br label %for.body.i37

if.end.i32.handler_ir.exit_crit_edge:             ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit

for.cond.i35:                                     ; preds = %for.body.i37
  %incdec.ptr.i33 = getelementptr i8, ptr %iter.030.i, i32 1
  %41 = ptrtoint ptr %incdec.ptr.i33 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %incdec.ptr.i33, align 1
  %cmp.not.i34 = icmp eq i8 %42, 11
  br i1 %cmp.not.i34, label %for.cond.i35.handler_ir.exit_crit_edge, label %for.cond.i35.for.body.i37_crit_edge

for.cond.i35.for.body.i37_crit_edge:              ; preds = %for.cond.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i37

for.cond.i35.handler_ir.exit_crit_edge:           ; preds = %for.cond.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit

for.body.i37:                                     ; preds = %for.cond.i35.for.body.i37_crit_edge, %if.end.i32.for.body.i37_crit_edge
  %43 = phi i8 [ %42, %for.cond.i35.for.body.i37_crit_edge ], [ %40, %if.end.i32.for.body.i37_crit_edge ]
  %iter.030.i = phi ptr [ %incdec.ptr.i33, %for.cond.i35.for.body.i37_crit_edge ], [ %38, %if.end.i32.for.body.i37_crit_edge ]
  %conv.i36 = zext i8 %43 to i32
  %arrayidx8.i = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i36
  %44 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx8.i, align 4
  %in_ir9.i = getelementptr inbounds %struct.wiimod_ops, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %in_ir9.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %in_ir9.i, align 4
  %tobool10.not.i = icmp eq ptr %47, null
  br i1 %tobool10.not.i, label %for.cond.i35, label %for.body.i37.cleanup.sink.split.i39_crit_edge

for.body.i37.cleanup.sink.split.i39_crit_edge:    ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i39

cleanup.sink.split.i39:                           ; preds = %for.body.i37.cleanup.sink.split.i39_crit_edge, %handler_keys.exit.cleanup.sink.split.i39_crit_edge
  %.lcssa.sink.i38 = phi ptr [ %34, %handler_keys.exit.cleanup.sink.split.i39_crit_edge ], [ %47, %for.body.i37.cleanup.sink.split.i39_crit_edge ]
  tail call void %.lcssa.sink.i38(ptr noundef %wdata, ptr noundef %arrayidx15, i1 noundef zeroext false, i32 noundef 0) #8
  br label %handler_ir.exit

handler_ir.exit:                                  ; preds = %cleanup.sink.split.i39, %for.cond.i35.handler_ir.exit_crit_edge, %if.end.i32.handler_ir.exit_crit_edge
  %arrayidx16 = getelementptr i8, ptr %payload, i32 12
  %48 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %exttype.i, align 4
  %idxprom.i41 = zext i8 %49 to i32
  %arrayidx.i42 = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i41
  %50 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i42, align 4
  %in_ir.i43 = getelementptr inbounds %struct.wiimod_ops, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %in_ir.i43 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %in_ir.i43, align 4
  %tobool.not.i44 = icmp eq ptr %53, null
  br i1 %tobool.not.i44, label %if.end.i49, label %handler_ir.exit.cleanup.sink.split.i60_crit_edge

handler_ir.exit.cleanup.sink.split.i60_crit_edge: ; preds = %handler_ir.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i60

if.end.i49:                                       ; preds = %handler_ir.exit
  %devtype.i45 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %54 = ptrtoint ptr %devtype.i45 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %devtype.i45, align 1
  %idxprom4.i46 = zext i8 %55 to i32
  %arrayidx5.i47 = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom4.i46
  %56 = ptrtoint ptr %arrayidx5.i47 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx5.i47, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %59)
  %cmp.not29.i48 = icmp eq i8 %59, 11
  br i1 %cmp.not29.i48, label %if.end.i49.handler_ir.exit61_crit_edge, label %if.end.i49.for.body.i58_crit_edge

if.end.i49.for.body.i58_crit_edge:                ; preds = %if.end.i49
  br label %for.body.i58

if.end.i49.handler_ir.exit61_crit_edge:           ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit61

for.cond.i52:                                     ; preds = %for.body.i58
  %incdec.ptr.i50 = getelementptr i8, ptr %iter.030.i53, i32 1
  %60 = ptrtoint ptr %incdec.ptr.i50 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %incdec.ptr.i50, align 1
  %cmp.not.i51 = icmp eq i8 %61, 11
  br i1 %cmp.not.i51, label %for.cond.i52.handler_ir.exit61_crit_edge, label %for.cond.i52.for.body.i58_crit_edge

for.cond.i52.for.body.i58_crit_edge:              ; preds = %for.cond.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i58

for.cond.i52.handler_ir.exit61_crit_edge:         ; preds = %for.cond.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit61

for.body.i58:                                     ; preds = %for.cond.i52.for.body.i58_crit_edge, %if.end.i49.for.body.i58_crit_edge
  %62 = phi i8 [ %61, %for.cond.i52.for.body.i58_crit_edge ], [ %59, %if.end.i49.for.body.i58_crit_edge ]
  %iter.030.i53 = phi ptr [ %incdec.ptr.i50, %for.cond.i52.for.body.i58_crit_edge ], [ %57, %if.end.i49.for.body.i58_crit_edge ]
  %conv.i54 = zext i8 %62 to i32
  %arrayidx8.i55 = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i54
  %63 = ptrtoint ptr %arrayidx8.i55 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx8.i55, align 4
  %in_ir9.i56 = getelementptr inbounds %struct.wiimod_ops, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %in_ir9.i56 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %in_ir9.i56, align 4
  %tobool10.not.i57 = icmp eq ptr %66, null
  br i1 %tobool10.not.i57, label %for.cond.i52, label %for.body.i58.cleanup.sink.split.i60_crit_edge

for.body.i58.cleanup.sink.split.i60_crit_edge:    ; preds = %for.body.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i60

cleanup.sink.split.i60:                           ; preds = %for.body.i58.cleanup.sink.split.i60_crit_edge, %handler_ir.exit.cleanup.sink.split.i60_crit_edge
  %.lcssa.sink.i59 = phi ptr [ %53, %handler_ir.exit.cleanup.sink.split.i60_crit_edge ], [ %66, %for.body.i58.cleanup.sink.split.i60_crit_edge ]
  tail call void %.lcssa.sink.i59(ptr noundef %wdata, ptr noundef %arrayidx16, i1 noundef zeroext false, i32 noundef 1) #8
  br label %handler_ir.exit61

handler_ir.exit61:                                ; preds = %cleanup.sink.split.i60, %for.cond.i52.handler_ir.exit61_crit_edge, %if.end.i49.handler_ir.exit61_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handler_drm_SKAI2(ptr noundef %wdata, ptr noundef %payload) #0 align 64 {
entry:
  %buf = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #8
  %0 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 4
  %exttype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 5
  %4 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %exttype.i, align 4
  %idxprom.i = zext i8 %5 to i32
  %arrayidx.i = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %in_keys.i = getelementptr inbounds %struct.wiimod_ops, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %in_keys.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %in_keys.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup.sink.split.i_crit_edge

entry.cleanup.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %entry
  %devtype.i = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %10 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %devtype.i, align 1
  %idxprom3.i = zext i8 %11 to i32
  %arrayidx4.i = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom3.i
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %15)
  %cmp.not25.i = icmp eq i8 %15, 11
  br i1 %cmp.not25.i, label %if.end.i.handler_keys.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.handler_keys.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_keys.exit

for.cond.i:                                       ; preds = %for.body.i
  %incdec.ptr.i = getelementptr i8, ptr %iter.026.i, i32 1
  %16 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %incdec.ptr.i, align 1
  %cmp.not.i = icmp eq i8 %17, 11
  br i1 %cmp.not.i, label %for.cond.i.handler_keys.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.handler_keys.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_keys.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %18 = phi i8 [ %17, %for.cond.i.for.body.i_crit_edge ], [ %15, %if.end.i.for.body.i_crit_edge ]
  %iter.026.i = phi ptr [ %incdec.ptr.i, %for.cond.i.for.body.i_crit_edge ], [ %13, %if.end.i.for.body.i_crit_edge ]
  %conv.i = zext i8 %18 to i32
  %arrayidx7.i = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i
  %19 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx7.i, align 4
  %in_keys8.i = getelementptr inbounds %struct.wiimod_ops, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %in_keys8.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %in_keys8.i, align 4
  %tobool9.not.i = icmp eq ptr %22, null
  br i1 %tobool9.not.i, label %for.cond.i, label %for.body.i.cleanup.sink.split.i_crit_edge

for.body.i.cleanup.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.body.i.cleanup.sink.split.i_crit_edge, %entry.cleanup.sink.split.i_crit_edge
  %.lcssa.sink.i = phi ptr [ %9, %entry.cleanup.sink.split.i_crit_edge ], [ %22, %for.body.i.cleanup.sink.split.i_crit_edge ]
  tail call void %.lcssa.sink.i(ptr noundef %wdata, ptr noundef %payload) #8
  br label %handler_keys.exit

handler_keys.exit:                                ; preds = %cleanup.sink.split.i, %for.cond.i.handler_keys.exit_crit_edge, %if.end.i.handler_keys.exit_crit_edge
  %23 = ptrtoint ptr %payload to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %payload, align 1
  %25 = lshr i8 %24, 5
  %26 = and i8 %25, 3
  %accel_split = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 2
  %arrayidx1 = getelementptr %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 2, i32 1
  %27 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx1, align 1
  %or40 = or i8 %26, %28
  store i8 %or40, ptr %arrayidx1, align 1
  %arrayidx4 = getelementptr i8, ptr %payload, i32 1
  %29 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx4, align 1
  %31 = lshr i8 %30, 3
  %32 = and i8 %31, 12
  %or1241 = or i8 %32, %or40
  store i8 %or1241, ptr %arrayidx1, align 1
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %buf, align 1
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %0, align 1
  %35 = ptrtoint ptr %accel_split to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %accel_split, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %1, align 1
  %arrayidx20 = getelementptr i8, ptr %payload, i32 2
  %38 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx20, align 1
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %2, align 1
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %or1241, ptr %3, align 1
  %42 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %exttype.i, align 4
  %idxprom.i43 = zext i8 %43 to i32
  %arrayidx.i44 = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i43
  %44 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i44, align 4
  %in_accel.i = getelementptr inbounds %struct.wiimod_ops, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %in_accel.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %in_accel.i, align 4
  %tobool.not.i45 = icmp eq ptr %47, null
  br i1 %tobool.not.i45, label %if.end.i50, label %handler_keys.exit.cleanup.sink.split.i60_crit_edge

handler_keys.exit.cleanup.sink.split.i60_crit_edge: ; preds = %handler_keys.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i60

if.end.i50:                                       ; preds = %handler_keys.exit
  %devtype.i46 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %48 = ptrtoint ptr %devtype.i46 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %devtype.i46, align 1
  %idxprom3.i47 = zext i8 %49 to i32
  %arrayidx4.i48 = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom3.i47
  %50 = ptrtoint ptr %arrayidx4.i48 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx4.i48, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %53)
  %cmp.not25.i49 = icmp eq i8 %53, 11
  br i1 %cmp.not25.i49, label %if.end.i50.handler_accel.exit_crit_edge, label %if.end.i50.for.body.i58_crit_edge

if.end.i50.for.body.i58_crit_edge:                ; preds = %if.end.i50
  br label %for.body.i58

if.end.i50.handler_accel.exit_crit_edge:          ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_accel.exit

for.cond.i53:                                     ; preds = %for.body.i58
  %incdec.ptr.i51 = getelementptr i8, ptr %iter.026.i54, i32 1
  %54 = ptrtoint ptr %incdec.ptr.i51 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %incdec.ptr.i51, align 1
  %cmp.not.i52 = icmp eq i8 %55, 11
  br i1 %cmp.not.i52, label %for.cond.i53.handler_accel.exit_crit_edge, label %for.cond.i53.for.body.i58_crit_edge

for.cond.i53.for.body.i58_crit_edge:              ; preds = %for.cond.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i58

for.cond.i53.handler_accel.exit_crit_edge:        ; preds = %for.cond.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_accel.exit

for.body.i58:                                     ; preds = %for.cond.i53.for.body.i58_crit_edge, %if.end.i50.for.body.i58_crit_edge
  %56 = phi i8 [ %55, %for.cond.i53.for.body.i58_crit_edge ], [ %53, %if.end.i50.for.body.i58_crit_edge ]
  %iter.026.i54 = phi ptr [ %incdec.ptr.i51, %for.cond.i53.for.body.i58_crit_edge ], [ %51, %if.end.i50.for.body.i58_crit_edge ]
  %conv.i55 = zext i8 %56 to i32
  %arrayidx7.i56 = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i55
  %57 = ptrtoint ptr %arrayidx7.i56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx7.i56, align 4
  %in_accel8.i = getelementptr inbounds %struct.wiimod_ops, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %in_accel8.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %in_accel8.i, align 4
  %tobool9.not.i57 = icmp eq ptr %60, null
  br i1 %tobool9.not.i57, label %for.cond.i53, label %for.body.i58.cleanup.sink.split.i60_crit_edge

for.body.i58.cleanup.sink.split.i60_crit_edge:    ; preds = %for.body.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i60

cleanup.sink.split.i60:                           ; preds = %for.body.i58.cleanup.sink.split.i60_crit_edge, %handler_keys.exit.cleanup.sink.split.i60_crit_edge
  %.lcssa.sink.i59 = phi ptr [ %47, %handler_keys.exit.cleanup.sink.split.i60_crit_edge ], [ %60, %for.body.i58.cleanup.sink.split.i60_crit_edge ]
  call void %.lcssa.sink.i59(ptr noundef %wdata, ptr noundef nonnull %buf) #8
  br label %handler_accel.exit

handler_accel.exit:                               ; preds = %cleanup.sink.split.i60, %for.cond.i53.handler_accel.exit_crit_edge, %if.end.i50.handler_accel.exit_crit_edge
  %arrayidx26 = getelementptr i8, ptr %payload, i32 3
  %61 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %exttype.i, align 4
  %idxprom.i62 = zext i8 %62 to i32
  %arrayidx.i63 = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i62
  %63 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i63, align 4
  %in_ir.i = getelementptr inbounds %struct.wiimod_ops, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %in_ir.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %in_ir.i, align 4
  %tobool.not.i64 = icmp eq ptr %66, null
  br i1 %tobool.not.i64, label %if.end.i66, label %handler_accel.exit.cleanup.sink.split.i73_crit_edge

handler_accel.exit.cleanup.sink.split.i73_crit_edge: ; preds = %handler_accel.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i73

if.end.i66:                                       ; preds = %handler_accel.exit
  %devtype.i65 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %67 = ptrtoint ptr %devtype.i65 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %devtype.i65, align 1
  %idxprom4.i = zext i8 %68 to i32
  %arrayidx5.i = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom4.i
  %69 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx5.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %70, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %72)
  %cmp.not29.i = icmp eq i8 %72, 11
  br i1 %cmp.not29.i, label %if.end.i66.handler_ir.exit_crit_edge, label %if.end.i66.for.body.i71_crit_edge

if.end.i66.for.body.i71_crit_edge:                ; preds = %if.end.i66
  br label %for.body.i71

if.end.i66.handler_ir.exit_crit_edge:             ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit

for.cond.i69:                                     ; preds = %for.body.i71
  %incdec.ptr.i67 = getelementptr i8, ptr %iter.030.i, i32 1
  %73 = ptrtoint ptr %incdec.ptr.i67 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %incdec.ptr.i67, align 1
  %cmp.not.i68 = icmp eq i8 %74, 11
  br i1 %cmp.not.i68, label %for.cond.i69.handler_ir.exit_crit_edge, label %for.cond.i69.for.body.i71_crit_edge

for.cond.i69.for.body.i71_crit_edge:              ; preds = %for.cond.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i71

for.cond.i69.handler_ir.exit_crit_edge:           ; preds = %for.cond.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit

for.body.i71:                                     ; preds = %for.cond.i69.for.body.i71_crit_edge, %if.end.i66.for.body.i71_crit_edge
  %75 = phi i8 [ %74, %for.cond.i69.for.body.i71_crit_edge ], [ %72, %if.end.i66.for.body.i71_crit_edge ]
  %iter.030.i = phi ptr [ %incdec.ptr.i67, %for.cond.i69.for.body.i71_crit_edge ], [ %70, %if.end.i66.for.body.i71_crit_edge ]
  %conv.i70 = zext i8 %75 to i32
  %arrayidx8.i = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i70
  %76 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx8.i, align 4
  %in_ir9.i = getelementptr inbounds %struct.wiimod_ops, ptr %77, i32 0, i32 6
  %78 = ptrtoint ptr %in_ir9.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %in_ir9.i, align 4
  %tobool10.not.i = icmp eq ptr %79, null
  br i1 %tobool10.not.i, label %for.cond.i69, label %for.body.i71.cleanup.sink.split.i73_crit_edge

for.body.i71.cleanup.sink.split.i73_crit_edge:    ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i73

cleanup.sink.split.i73:                           ; preds = %for.body.i71.cleanup.sink.split.i73_crit_edge, %handler_accel.exit.cleanup.sink.split.i73_crit_edge
  %.lcssa.sink.i72 = phi ptr [ %66, %handler_accel.exit.cleanup.sink.split.i73_crit_edge ], [ %79, %for.body.i71.cleanup.sink.split.i73_crit_edge ]
  call void %.lcssa.sink.i72(ptr noundef %wdata, ptr noundef %arrayidx26, i1 noundef zeroext false, i32 noundef 2) #8
  br label %handler_ir.exit

handler_ir.exit:                                  ; preds = %cleanup.sink.split.i73, %for.cond.i69.handler_ir.exit_crit_edge, %if.end.i66.handler_ir.exit_crit_edge
  %arrayidx27 = getelementptr i8, ptr %payload, i32 12
  %80 = ptrtoint ptr %exttype.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %exttype.i, align 4
  %idxprom.i75 = zext i8 %81 to i32
  %arrayidx.i76 = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom.i75
  %82 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i76, align 4
  %in_ir.i77 = getelementptr inbounds %struct.wiimod_ops, ptr %83, i32 0, i32 6
  %84 = ptrtoint ptr %in_ir.i77 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %in_ir.i77, align 4
  %tobool.not.i78 = icmp eq ptr %85, null
  br i1 %tobool.not.i78, label %if.end.i83, label %handler_ir.exit.cleanup.sink.split.i94_crit_edge

handler_ir.exit.cleanup.sink.split.i94_crit_edge: ; preds = %handler_ir.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i94

if.end.i83:                                       ; preds = %handler_ir.exit
  %devtype.i79 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %86 = ptrtoint ptr %devtype.i79 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %devtype.i79, align 1
  %idxprom4.i80 = zext i8 %87 to i32
  %arrayidx5.i81 = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom4.i80
  %88 = ptrtoint ptr %arrayidx5.i81 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx5.i81, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %89, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %91)
  %cmp.not29.i82 = icmp eq i8 %91, 11
  br i1 %cmp.not29.i82, label %if.end.i83.handler_ir.exit95_crit_edge, label %if.end.i83.for.body.i92_crit_edge

if.end.i83.for.body.i92_crit_edge:                ; preds = %if.end.i83
  br label %for.body.i92

if.end.i83.handler_ir.exit95_crit_edge:           ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit95

for.cond.i86:                                     ; preds = %for.body.i92
  %incdec.ptr.i84 = getelementptr i8, ptr %iter.030.i87, i32 1
  %92 = ptrtoint ptr %incdec.ptr.i84 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %incdec.ptr.i84, align 1
  %cmp.not.i85 = icmp eq i8 %93, 11
  br i1 %cmp.not.i85, label %for.cond.i86.handler_ir.exit95_crit_edge, label %for.cond.i86.for.body.i92_crit_edge

for.cond.i86.for.body.i92_crit_edge:              ; preds = %for.cond.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i92

for.cond.i86.handler_ir.exit95_crit_edge:         ; preds = %for.cond.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_ir.exit95

for.body.i92:                                     ; preds = %for.cond.i86.for.body.i92_crit_edge, %if.end.i83.for.body.i92_crit_edge
  %94 = phi i8 [ %93, %for.cond.i86.for.body.i92_crit_edge ], [ %91, %if.end.i83.for.body.i92_crit_edge ]
  %iter.030.i87 = phi ptr [ %incdec.ptr.i84, %for.cond.i86.for.body.i92_crit_edge ], [ %89, %if.end.i83.for.body.i92_crit_edge ]
  %conv.i88 = zext i8 %94 to i32
  %arrayidx8.i89 = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv.i88
  %95 = ptrtoint ptr %arrayidx8.i89 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx8.i89, align 4
  %in_ir9.i90 = getelementptr inbounds %struct.wiimod_ops, ptr %96, i32 0, i32 6
  %97 = ptrtoint ptr %in_ir9.i90 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %in_ir9.i90, align 4
  %tobool10.not.i91 = icmp eq ptr %98, null
  br i1 %tobool10.not.i91, label %for.cond.i86, label %for.body.i92.cleanup.sink.split.i94_crit_edge

for.body.i92.cleanup.sink.split.i94_crit_edge:    ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i94

cleanup.sink.split.i94:                           ; preds = %for.body.i92.cleanup.sink.split.i94_crit_edge, %handler_ir.exit.cleanup.sink.split.i94_crit_edge
  %.lcssa.sink.i93 = phi ptr [ %85, %handler_ir.exit.cleanup.sink.split.i94_crit_edge ], [ %98, %for.body.i92.cleanup.sink.split.i94_crit_edge ]
  call void %.lcssa.sink.i93(ptr noundef %wdata, ptr noundef %arrayidx27, i1 noundef zeroext false, i32 noundef 3) #8
  br label %handler_ir.exit95

handler_ir.exit95:                                ; preds = %cleanup.sink.split.i94, %for.cond.i86.handler_ir.exit95_crit_edge, %if.end.i83.handler_ir.exit95_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handler_ext(ptr noundef %wdata, ptr noundef %payload, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bcmp = tail call i32 @bcmp(ptr %payload, ptr nonnull @handler_ext.invalid, i32 %len) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end3.if.end66_crit_edge, label %if.then5

if.end3.if.end66_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then5:                                         ; preds = %if.end3
  %arrayidx = getelementptr i8, ptr %payload, i32 5
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool7.not = icmp eq i8 %4, 0
  br i1 %tobool7.not, label %if.end9, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.then5
  %arrayidx10 = getelementptr i8, ptr %payload, i32 4
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx10, align 1
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool13.not = icmp eq i8 %7, 0
  %and31 = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end9
  br i1 %tobool32.not, label %do.body, label %if.then14.if.end59_crit_edge

if.then14.if.end59_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

do.body:                                          ; preds = %if.then14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handler_ext.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handler_ext, %if.then24)) #8
          to label %do.end [label %if.then24], !srcloc !273

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wdata, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %9, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handler_ext.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.123) #8
  br label %do.end

do.end:                                           ; preds = %if.then24, %do.body
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %or = or i32 %11, 2048
  store i32 %or, ptr %flags, align 4
  %and.i = and i32 %11, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.if.end59.sink.split_crit_edge, label %do.end.if.end59_crit_edge

do.end.if.end59_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

do.end.if.end59.sink.split_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.sink.split

if.else:                                          ; preds = %if.end9
  br i1 %tobool32.not, label %if.else.if.end59_crit_edge, label %do.body34

if.else.if.end59_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

do.body34:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handler_ext.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handler_ext, %if.then46)) #8
          to label %do.end51 [label %if.then46], !srcloc !273

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wdata, align 4
  %dev48 = getelementptr inbounds %struct.hid_device, ptr %13, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handler_ext.__UNIQUE_ID_ddebug233, ptr noundef %dev48, ptr noundef nonnull @.str.124) #8
  br label %do.end51

do.end51:                                         ; preds = %if.then46, %do.body34
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and57 = and i32 %15, -3073
  store i32 %and57, ptr %flags, align 4
  %and.i190 = and i32 %15, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i190)
  %tobool.not.i191 = icmp eq i32 %and.i190, 0
  br i1 %tobool.not.i191, label %do.end51.if.end59.sink.split_crit_edge, label %do.end51.if.end59_crit_edge

do.end51.if.end59_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

do.end51.if.end59.sink.split_crit_edge:           ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.sink.split

if.end59.sink.split:                              ; preds = %do.end51.if.end59.sink.split_crit_edge, %do.end.if.end59.sink.split_crit_edge
  %init_worker.i192 = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i.i193 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %init_worker.i192) #8
  br label %if.end59

if.end59:                                         ; preds = %if.end59.sink.split, %do.end51.if.end59_crit_edge, %if.else.if.end59_crit_edge, %do.end.if.end59_crit_edge, %if.then14.if.end59_crit_edge
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %19 = and i8 %18, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool63 = icmp ne i8 %19, 0
  br label %if.end66

if.end66:                                         ; preds = %if.end59, %if.end3.if.end66_crit_edge
  %is_mp.0.off0 = phi i1 [ %tobool63, %if.end59 ], [ false, %if.end3.if.end66_crit_edge ]
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %and69 = and i32 %21, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp ne i32 %and69, 0
  %brmerge = select i1 %tobool70.not, i1 true, i1 %is_mp.0.off0
  br i1 %brmerge, label %if.end73, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end73:                                         ; preds = %if.end66
  %exttype = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 5
  %22 = ptrtoint ptr %exttype to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %exttype, align 4
  %idxprom = zext i8 %23 to i32
  %arrayidx75 = getelementptr [8 x ptr], ptr @wiimod_ext_table, i32 0, i32 %idxprom
  %24 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx75, align 4
  br i1 %is_mp.0.off0, label %land.lhs.true78, label %land.lhs.true84.critedge

land.lhs.true78:                                  ; preds = %if.end73
  %in_mp = getelementptr inbounds %struct.wiimod_ops, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %in_mp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %in_mp, align 4
  %tobool79.not = icmp eq ptr %27, null
  br i1 %tobool79.not, label %land.lhs.true92.critedge, label %land.lhs.true78.cleanup.sink.split_crit_edge

land.lhs.true78.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true84.critedge:                         ; preds = %if.end73
  %in_ext.i = getelementptr inbounds %struct.wiimod_ops, ptr %25, i32 0, i32 8
  %28 = ptrtoint ptr %in_ext.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %in_ext.i, align 4
  %tobool.not.i196 = icmp eq ptr %29, null
  br i1 %tobool.not.i196, label %land.lhs.true84.critedge.land.lhs.true99.critedge_crit_edge, label %if.end.i

land.lhs.true84.critedge.land.lhs.true99.critedge_crit_edge: ; preds = %land.lhs.true84.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true99.critedge

if.end.i:                                         ; preds = %land.lhs.true84.critedge
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %25, align 4
  %32 = and i16 %31, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool1.not.i = icmp ne i16 %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len)
  %cmp.i = icmp ult i32 %len, 8
  %or.cond.i = and i1 %cmp.i, %tobool1.not.i
  br i1 %or.cond.i, label %if.end.i.land.lhs.true99.critedge_crit_edge, label %valid_ext_handler.exit

if.end.i.land.lhs.true99.critedge_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true99.critedge

valid_ext_handler.exit:                           ; preds = %if.end.i
  %33 = and i16 %31, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool8.not.i = icmp eq i16 %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %len)
  %cmp10.i = icmp ugt i32 %len, 15
  %not.or.cond17.i = or i1 %cmp10.i, %tobool8.not.i
  br i1 %not.or.cond17.i, label %valid_ext_handler.exit.cleanup.sink.split_crit_edge, label %valid_ext_handler.exit.land.lhs.true99.critedge_crit_edge

valid_ext_handler.exit.land.lhs.true99.critedge_crit_edge: ; preds = %valid_ext_handler.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true99.critedge

valid_ext_handler.exit.cleanup.sink.split_crit_edge: ; preds = %valid_ext_handler.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true92.critedge:                         ; preds = %land.lhs.true78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.wiimod_ops, ptr @wiimod_mp, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.wiimod_ops, ptr @wiimod_mp, i32 0, i32 7), align 4
  %tobool94.not = icmp eq ptr %34, null
  br i1 %tobool94.not, label %land.lhs.true92.critedge.if.end105_crit_edge, label %land.lhs.true92.critedge.cleanup.sink.split_crit_edge

land.lhs.true92.critedge.cleanup.sink.split_crit_edge: ; preds = %land.lhs.true92.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true92.critedge.if.end105_crit_edge:     ; preds = %land.lhs.true92.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

land.lhs.true99.critedge:                         ; preds = %valid_ext_handler.exit.land.lhs.true99.critedge_crit_edge, %if.end.i.land.lhs.true99.critedge_crit_edge, %land.lhs.true84.critedge.land.lhs.true99.critedge_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.wiimod_ops, ptr @wiimod_mp, i32 0, i32 8) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.wiimod_ops, ptr @wiimod_mp, i32 0, i32 8), align 4
  %tobool.not.i198 = icmp eq ptr %35, null
  br i1 %tobool.not.i198, label %land.lhs.true99.critedge.if.end105_crit_edge, label %if.end.i202

land.lhs.true99.critedge.if.end105_crit_edge:     ; preds = %land.lhs.true99.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.end.i202:                                      ; preds = %land.lhs.true99.critedge
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @wiimod_mp to i32))
  %36 = load i16, ptr @wiimod_mp, align 4
  %37 = and i16 %36, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool1.not.i199 = icmp ne i16 %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len)
  %cmp.i200 = icmp ult i32 %len, 8
  %or.cond.i201 = and i1 %cmp.i200, %tobool1.not.i199
  br i1 %or.cond.i201, label %if.end.i202.if.end105_crit_edge, label %valid_ext_handler.exit208

if.end.i202.if.end105_crit_edge:                  ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

valid_ext_handler.exit208:                        ; preds = %if.end.i202
  %38 = and i16 %36, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool8.not.i203 = icmp eq i16 %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %len)
  %cmp10.i204 = icmp ugt i32 %len, 15
  %not.or.cond17.i205 = or i1 %cmp10.i204, %tobool8.not.i203
  br i1 %not.or.cond17.i205, label %valid_ext_handler.exit208.cleanup.sink.split_crit_edge, label %valid_ext_handler.exit208.if.end105_crit_edge

valid_ext_handler.exit208.if.end105_crit_edge:    ; preds = %valid_ext_handler.exit208
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

valid_ext_handler.exit208.cleanup.sink.split_crit_edge: ; preds = %valid_ext_handler.exit208
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end105:                                        ; preds = %valid_ext_handler.exit208.if.end105_crit_edge, %if.end.i202.if.end105_crit_edge, %land.lhs.true99.critedge.if.end105_crit_edge, %land.lhs.true92.critedge.if.end105_crit_edge
  %devtype = getelementptr inbounds %struct.wiimote_data, ptr %wdata, i32 0, i32 13, i32 4
  %39 = ptrtoint ptr %devtype to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %devtype, align 1
  %idxprom107 = zext i8 %40 to i32
  %arrayidx108 = getelementptr [7 x ptr], ptr @wiimote_devtype_mods, i32 0, i32 %idxprom107
  %41 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx108, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %44)
  %cmp110.not227 = icmp eq i8 %44, 11
  br i1 %cmp110.not227, label %if.end105.cleanup_crit_edge, label %for.body.lr.ph

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len)
  %cmp.i212 = icmp ult i32 %len, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %len)
  %cmp10.i216 = icmp ugt i32 %len, 15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %45 = phi i8 [ %44, %for.body.lr.ph ], [ %57, %for.inc.for.body_crit_edge ]
  %iter.0228 = phi ptr [ %42, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %conv109 = zext i8 %45 to i32
  %arrayidx113 = getelementptr [11 x ptr], ptr @wiimod_table, i32 0, i32 %conv109
  %46 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx113, align 4
  br i1 %is_mp.0.off0, label %land.lhs.true116, label %land.lhs.true123.critedge

land.lhs.true116:                                 ; preds = %for.body
  %in_mp117 = getelementptr inbounds %struct.wiimod_ops, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %in_mp117 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %in_mp117, align 4
  %tobool118.not = icmp eq ptr %49, null
  br i1 %tobool118.not, label %land.lhs.true116.for.inc_crit_edge, label %land.lhs.true116.cleanup.sink.split_crit_edge

land.lhs.true116.cleanup.sink.split_crit_edge:    ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true116.for.inc_crit_edge:               ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true123.critedge:                        ; preds = %for.body
  %in_ext.i209 = getelementptr inbounds %struct.wiimod_ops, ptr %47, i32 0, i32 8
  %50 = ptrtoint ptr %in_ext.i209 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %in_ext.i209, align 4
  %tobool.not.i210 = icmp eq ptr %51, null
  br i1 %tobool.not.i210, label %land.lhs.true123.critedge.for.inc_crit_edge, label %if.end.i214

land.lhs.true123.critedge.for.inc_crit_edge:      ; preds = %land.lhs.true123.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i214:                                      ; preds = %land.lhs.true123.critedge
  %52 = ptrtoint ptr %47 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %47, align 4
  %54 = and i16 %53, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool1.not.i211 = icmp ne i16 %54, 0
  %or.cond.i213 = and i1 %cmp.i212, %tobool1.not.i211
  br i1 %or.cond.i213, label %if.end.i214.for.inc_crit_edge, label %valid_ext_handler.exit220

if.end.i214.for.inc_crit_edge:                    ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

valid_ext_handler.exit220:                        ; preds = %if.end.i214
  %55 = and i16 %53, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool8.not.i215 = icmp eq i16 %55, 0
  %not.or.cond17.i217 = or i1 %cmp10.i216, %tobool8.not.i215
  br i1 %not.or.cond17.i217, label %valid_ext_handler.exit220.cleanup.sink.split_crit_edge, label %valid_ext_handler.exit220.for.inc_crit_edge

valid_ext_handler.exit220.for.inc_crit_edge:      ; preds = %valid_ext_handler.exit220
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

valid_ext_handler.exit220.cleanup.sink.split_crit_edge: ; preds = %valid_ext_handler.exit220
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.inc:                                          ; preds = %valid_ext_handler.exit220.for.inc_crit_edge, %if.end.i214.for.inc_crit_edge, %land.lhs.true123.critedge.for.inc_crit_edge, %land.lhs.true116.for.inc_crit_edge
  %incdec.ptr = getelementptr i8, ptr %iter.0228, i32 1
  %56 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %incdec.ptr, align 1
  %cmp110.not = icmp eq i8 %57, 11
  br i1 %cmp110.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %valid_ext_handler.exit220.cleanup.sink.split_crit_edge, %land.lhs.true116.cleanup.sink.split_crit_edge, %valid_ext_handler.exit208.cleanup.sink.split_crit_edge, %land.lhs.true92.critedge.cleanup.sink.split_crit_edge, %valid_ext_handler.exit.cleanup.sink.split_crit_edge, %land.lhs.true78.cleanup.sink.split_crit_edge
  %.lcssa.sink = phi ptr [ %27, %land.lhs.true78.cleanup.sink.split_crit_edge ], [ %29, %valid_ext_handler.exit.cleanup.sink.split_crit_edge ], [ %34, %land.lhs.true92.critedge.cleanup.sink.split_crit_edge ], [ %35, %valid_ext_handler.exit208.cleanup.sink.split_crit_edge ], [ %49, %land.lhs.true116.cleanup.sink.split_crit_edge ], [ %51, %valid_ext_handler.exit220.cleanup.sink.split_crit_edge ]
  tail call void %.lcssa.sink(ptr noundef %wdata, ptr noundef %payload) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %if.end105.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 138)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 138)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !15, !17, !18, !20, !21, !23, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !40, !41, !43, !45, !47, !49, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !74, !75, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !102, !104, !106, !108, !110, !112, !113, !114, !115, !117, !118, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !186, !187, !189, !191, !193, !195, !197, !199, !201, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !223, !225, !227, !229, !231, !233, !234, !235, !236, !238, !239, !240, !241, !243, !245, !246, !247, !249, !250, !252, !253, !254, !255, !257, !259, !260, !261, !263}
!llvm.module.flags = !{!264, !265, !266, !267, !268, !269, !270, !271}
!llvm.ident = !{!272}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-wiimote-core.c", i32 342, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @wiiproto_req_rmem._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @wiiproto_req_rmem._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @wiimote_dpad_as_analog, !9, !"wiimote_dpad_as_analog", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1870, i32 6}
!10 = !{ptr @__param_dpad_as_analog, !11, !"__param_dpad_as_analog", i1 false, i1 false}
!11 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1871, i32 1}
!12 = !{ptr @__UNIQUE_ID_dpad_as_analogtype236, !11, !"__UNIQUE_ID_dpad_as_analogtype236", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_dpad_as_analog237, !14, !"__UNIQUE_ID_dpad_as_analog237", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1872, i32 1}
!15 = !{ptr @__initcall__kmod_hid_wiimote__238_1883_wiimote_hid_driver_init6, !16, !"__initcall__kmod_hid_wiimote__238_1883_wiimote_hid_driver_init6", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1883, i32 1}
!17 = !{ptr @__exitcall_wiimote_hid_driver_exit, !16, !"__exitcall_wiimote_hid_driver_exit", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_file239, !19, !"__UNIQUE_ID_file239", i1 false, i1 false}
!19 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1885, i32 1}
!20 = !{ptr @__UNIQUE_ID_license240, !19, !"__UNIQUE_ID_license240", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_author241, !22, !"__UNIQUE_ID_author241", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1886, i32 1}
!23 = !{ptr @__UNIQUE_ID_description242, !24, !"__UNIQUE_ID_description242", i1 false, i1 false}
!24 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1887, i32 1}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-wiimote-core.c", i32 77, i32 3}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @wiimote_queue._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @wiimote_queue._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hid/hid-wiimote-core.c", i32 105, i32 3}
!32 = !{ptr @wiimote_queue._entry.7, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @wiimote_queue._entry_ptr.9, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hid/hid-wiimote-core.c", i32 317, i32 3}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @wiiproto_req_wmem._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @wiiproto_req_wmem._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @__param_str_dpad_as_analog, !11, !"__param_str_dpad_as_analog", i1 false, i1 false}
!40 = !{ptr @.str.12, !16, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1877, i32 10}
!43 = !{ptr @wiimote_hid_driver, !44, !"wiimote_hid_driver", i1 false, i1 false}
!44 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1876, i32 26}
!45 = !{ptr @wiimote_hid_devices, !46, !"wiimote_hid_devices", i1 false, i1 false}
!46 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1862, i32 35}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1792, i32 3}
!49 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @wiimote_hid_probe._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @wiimote_hid_probe._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1798, i32 3}
!55 = !{ptr @wiimote_hid_probe._entry.17, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @wiimote_hid_probe._entry_ptr.19, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1804, i32 3}
!59 = !{ptr @wiimote_hid_probe._entry.20, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @wiimote_hid_probe._entry_ptr.22, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1810, i32 3}
!63 = !{ptr @wiimote_hid_probe._entry.23, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @wiimote_hid_probe._entry_ptr.25, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1816, i32 3}
!67 = !{ptr @wiimote_hid_probe._entry.26, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @wiimote_hid_probe._entry_ptr.28, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @wiimote_hid_probe._entry.29, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1822, i32 3}
!71 = !{ptr @wiimote_hid_probe._entry_ptr.30, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1830, i32 2}
!74 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @wiimote_hid_probe._entry.31, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @wiimote_hid_probe._entry_ptr.34, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @wiimote_create.__key, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1740, i32 2}
!79 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @wiimote_create.__key.36, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1741, i32 2}
!82 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @wiimote_create.__key.38, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1743, i32 2}
!85 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @wiimote_create.__key.40, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1745, i32 2}
!88 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @wiimote_create.__key.42, !90, !"__key", i1 false, i1 false}
!90 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1749, i32 2}
!91 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @wiimote_create.__key.44, !93, !"__key", i1 false, i1 false}
!93 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1750, i32 2}
!94 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @init_completion.__key, !96, !"__key", i1 false, i1 false}
!96 = !{!"../include/linux/completion.h", i32 87, i32 2}
!97 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hid/hid-wiimote-core.c", i32 441, i32 2}
!100 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @wiimote_cmd_read_ext.__UNIQUE_ID_ddebug223, !99, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hid/hid-wiimote-core.c", i32 828, i32 20}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hid/hid-wiimote-core.c", i32 831, i32 27}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hid/hid-wiimote-core.c", i32 834, i32 27}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hid/hid-wiimote-core.c", i32 837, i32 27}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hid/hid-wiimote-core.c", i32 854, i32 3}
!112 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @wiimote_init_set_type._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @wiimote_init_set_type._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hid/hid-wiimote-core.c", i32 857, i32 3}
!117 = !{ptr @wiimote_init_set_type._entry.55, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @wiimote_init_set_type._entry_ptr.57, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hid/hid-wiimote-core.c", i32 796, i32 26}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hid/hid-wiimote-core.c", i32 797, i32 26}
!123 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hid/hid-wiimote-core.c", i32 798, i32 26}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/hid/hid-wiimote-core.c", i32 799, i32 24}
!127 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/hid/hid-wiimote-core.c", i32 800, i32 24}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/hid/hid-wiimote-core.c", i32 801, i32 32}
!131 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/hid/hid-wiimote-core.c", i32 802, i32 33}
!133 = !{ptr @wiimote_devtype_names, !134, !"wiimote_devtype_names", i1 false, i1 false}
!134 = !{!"../drivers/hid/hid-wiimote-core.c", i32 795, i32 20}
!135 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hid/hid-wiimote-core.c", i32 648, i32 24}
!137 = !{ptr @wiimote_devtype_mods, !138, !"wiimote_devtype_mods", i1 false, i1 false}
!138 = !{!"../drivers/hid/hid-wiimote-core.c", i32 558, i32 27}
!139 = !{ptr @.str.72, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/hid/hid-wiimote-core.c", i32 973, i32 4}
!141 = !{ptr @.str.73, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @wiimote_init_check.__UNIQUE_ID_ddebug226, !140, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!143 = !{ptr @.str.74, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/hid/hid-wiimote-core.c", i32 997, i32 4}
!145 = !{ptr @wiimote_init_check.__UNIQUE_ID_ddebug227, !144, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!146 = !{ptr @.str.75, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1024, i32 4}
!148 = !{ptr @wiimote_init_check.__UNIQUE_ID_ddebug228, !147, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!149 = !{ptr @.str.76, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1054, i32 4}
!151 = !{ptr @wiimote_init_check.__UNIQUE_ID_ddebug229, !150, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!152 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/hid/hid-wiimote-core.c", i32 540, i32 2}
!154 = !{ptr @.str.78, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @wiimote_cmd_read_mp_mapped.__UNIQUE_ID_ddebug225, !153, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!156 = !{ptr @.str.79, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/hid/hid-wiimote-core.c", i32 922, i32 4}
!158 = !{ptr @.str.80, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @wiimote_init_poll_mp._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @wiimote_init_poll_mp._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.81, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/hid/hid-wiimote-core.c", i32 519, i32 2}
!163 = !{ptr @.str.82, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @wiimote_cmd_read_mp.__UNIQUE_ID_ddebug224, !162, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!165 = !{ptr @.str.83, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/hid/hid-wiimote-core.c", i32 524, i32 2}
!167 = !{ptr @wiimote_cmd_read_mp._entry, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @wiimote_cmd_read_mp._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.84, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1101, i32 2}
!171 = !{ptr @.str.85, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @wiimote_init_hotplug.__UNIQUE_ID_ddebug230, !170, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!173 = !{ptr @.str.86, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1134, i32 4}
!175 = !{ptr @wiimote_init_hotplug._entry, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @wiimote_init_hotplug._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.88, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1141, i32 4}
!179 = !{ptr @wiimote_init_hotplug._entry.87, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @wiimote_init_hotplug._entry_ptr.89, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @wiimote_init_hotplug._entry.90, !182, !"_entry", i1 false, i1 false}
!182 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1151, i32 4}
!183 = !{ptr @wiimote_init_hotplug._entry_ptr.91, !182, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.92, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1199, i32 2}
!186 = !{ptr @wiimote_init_hotplug.__UNIQUE_ID_ddebug231, !185, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!187 = !{ptr @.str.93, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1077, i32 23}
!189 = !{ptr @.str.94, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1079, i32 26}
!191 = !{ptr @.str.95, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1080, i32 37}
!193 = !{ptr @.str.96, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1083, i32 24}
!195 = !{ptr @.str.97, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1084, i32 25}
!197 = !{ptr @wiimote_exttype_names, !198, !"wiimote_exttype_names", i1 false, i1 false}
!198 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1076, i32 20}
!199 = !{ptr @.str.98, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1693, i32 8}
!201 = !{ptr @dev_attr_extension, !200, !"dev_attr_extension", i1 false, i1 false}
!202 = !{ptr @.str.99, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1659, i32 23}
!204 = !{ptr @.str.100, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1661, i32 23}
!206 = !{ptr @.str.101, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1663, i32 23}
!208 = !{ptr @.str.102, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1665, i32 23}
!210 = !{ptr @.str.103, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1667, i32 23}
!212 = !{ptr @.str.104, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1669, i32 23}
!214 = distinct !{null, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1671, i32 23}
!216 = !{ptr @.str.106, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1674, i32 23}
!218 = !{ptr @.str.107, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1684, i32 19}
!220 = !{ptr @.str.108, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1727, i32 8}
!222 = !{ptr @dev_attr_devtype, !221, !"dev_attr_devtype", i1 false, i1 false}
!223 = !{ptr @.str.109, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1710, i32 23}
!225 = !{ptr @.str.110, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1712, i32 23}
!227 = !{ptr @.str.111, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1714, i32 23}
!229 = !{ptr @.str.112, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1720, i32 23}
!231 = !{ptr @.str.113, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1858, i32 2}
!233 = !{ptr @.str.114, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @wiimote_hid_remove._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @wiimote_hid_remove._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.115, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1639, i32 3}
!238 = !{ptr @.str.116, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @wiimote_hid_event._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @wiimote_hid_event._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @handlers, !242, !"handlers", i1 false, i1 false}
!242 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1589, i32 38}
!243 = !{ptr @.str.117, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1427, i32 4}
!245 = !{ptr @.str.118, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @handler_status.__UNIQUE_ID_ddebug234, !244, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!247 = !{ptr @.str.119, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1433, i32 4}
!249 = !{ptr @handler_status.__UNIQUE_ID_ddebug235, !248, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!250 = !{ptr @.str.120, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1485, i32 3}
!252 = !{ptr @.str.121, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @handler_return._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @handler_return._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @handler_ext.invalid, !256, !"invalid", i1 false, i1 false}
!256 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1302, i32 20}
!257 = !{ptr @.str.122, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1325, i32 5}
!259 = !{ptr @.str.123, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @handler_ext.__UNIQUE_ID_ddebug232, !258, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!261 = !{ptr @.str.124, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/hid/hid-wiimote-core.c", i32 1331, i32 5}
!263 = !{ptr @handler_ext.__UNIQUE_ID_ddebug233, !262, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!264 = !{i32 1, !"wchar_size", i32 2}
!265 = !{i32 1, !"min_enum_size", i32 4}
!266 = !{i32 8, !"branch-target-enforcement", i32 0}
!267 = !{i32 8, !"sign-return-address", i32 0}
!268 = !{i32 8, !"sign-return-address-all", i32 0}
!269 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!270 = !{i32 7, !"uwtable", i32 1}
!271 = !{i32 7, !"frame-pointer", i32 2}
!272 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!273 = !{i64 2148363554, i64 2148363559, i64 2148363572, i64 2148363616, i64 2148363650, i64 2148363671}
